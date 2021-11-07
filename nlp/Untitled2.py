#!/usr/bin/env python
# coding: utf-8


import os
import glob
import random
import shutil
import tensorflow as tf
from tensorflow.keras import preprocessing
from tensorflow.keras import models, layers
from tqdm import tqdm


get_ipython().system('rm -rf dataset')

# where the text files are going to live
dataset_path = "dataset"
dataset_path_all = os.path.join(dataset_path, "all")
dataset_path_train = os.path.join(dataset_path, "train")
dataset_path_valid = os.path.join(dataset_path, "valid")

# just use 20 files
file_number = 20

# gather the corpus if it has not been gathered yet
if not os.path.exists(dataset_path):

  # create all folders
  for path in [dataset_path, dataset_path_all, dataset_path_train, dataset_path_valid]:
    if not os.path.exists(path):
      os.mkdir(path)

  # clone the repo
  get_ipython().system('git clone https://github.com/vilmibm/lovecraftcorpus')

  # find all the files
  paths_all = glob.glob(os.path.join("lovecraftcorpus/*.txt"))

  # do not use all
  paths_all = paths_all[:file_number]

  # split 80/20
  split_index = int(len(paths_all) * 0.8)
  paths_train = paths_all[:split_index]
  paths_valid = paths_all[split_index:]

   # comment files
  def lilla_copy(paths, destination):
    for path in paths:
      shutil.copy2(path, destination)
  lilla_copy(paths_all, dataset_path_all)
  lilla_copy(paths_train, dataset_path_train)
  lilla_copy(paths_valid, dataset_path_valid)

  # delete repo
  get_ipython().system('rm -rf lovecraftcorpus')

  # done
  print("Corpus downloaded.")



batch_size = 32
seed = 42

def create_dataset(dataset_path):
  dataset = preprocessing.text_dataset_from_directory(
      dataset_path,
      labels=None,
      batch_size=batch_size,
      seed=seed
  )
  return dataset



dataset_original_all = create_dataset(dataset_path_all)
dataset_original_train = create_dataset(dataset_path_train)
dataset_original_valid = create_dataset(dataset_path_valid)


for batch in dataset_original_all:
  for sample in batch[:4]:
    sample = sample.numpy()
    print(sample[:200])



vocabulary_size = 10000
encoder = layers.TextVectorization(
    max_tokens=vocabulary_size,
    standardize="lower_and_strip_punctuation",
    split="whitespace",
    pad_to_max_tokens="multi_hot",
    output_mode="int"
)
# learning
encoder.adapt(dataset_original_all)

vocabulary = encoder.get_vocabulary()
print(f"Vocabulary size: {len(vocabulary)}")
print(f"Vocabulary: {vocabulary}")



sequence_length = 32

def create_dataset_for_autoregression(dataset):
  x_inputs = []
  y_outputs = []
  for batch in dataset:
    batch = encoder(batch).numpy()
    for sample in tqdm(batch):
        # pad at the beginning
        padding_token_id = 0
        padding = [padding_token_id] * sequence_length
        sample = padding + list(sample)

        # map all to input output pairs
        for start_index in range(0, len(sample) - sequence_length):
          x = sample[start_index:start_index + sequence_length]
          y = sample[start_index + sequence_length]
          if y == 0:
            break
          x_inputs += [x]
          y_outputs += [y]

  return tf.data.Dataset.from_tensor_slices((x_inputs, y_outputs))

dataset_train = create_dataset_for_autoregression(dataset_original_train)
dataset_valid = create_dataset_for_autoregression(dataset_original_valid)



embedding_size = 128

model = models.Sequential()

#don't need textvectorizer anymore
model.add(layers.Embedding(vocabulary_size, embedding_size, input_length=sequence_length))
model.add(layers.LSTM(512, return_sequences=True))
model.add(layers.Dropout(0.4))
model.add(layers.LSTM(1024))#should be bigger than the first LSTM
model.add(layers.Dropout(0.5)) #grows from layer to layer
model.add(layers.Dense(vocabulary_size, activation="softmax")) # classifier that picks one word from 

model.compile(
    optimizer="adam",
    loss="sparse_categorical_crossentropy",
    metrics=["accuracy"]
)

history = model.fit(
    dataset_train.shuffle(10000).batch(1024), # batch size for speeding up things and rendering?
    validation_data=dataset_valid.batch(1024),
    epochs=10
)

render_history(history)

model.summary()

import matplotlib.pyplot as plt

def render_history(history):
  plt.title("Losses")
  plt.plot(history.history["loss"], label="loss")
  plt.plot(history.history["val_loss"], label="val_loss")
  plt.legend()
  plt.show()
  plt.close()

  plt.title("Accuracies")
  plt.plot(history.history["accuracy"], label="accurary")
  plt.plot(history.history["val_accuracy"], label="val_accuracy")
  plt.legend()
  plt.show()
  plt.close()



