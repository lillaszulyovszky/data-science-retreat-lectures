import gym
import numpy as np

env = gym.make("CartPole-v0")
 print("ghgh")

env.reset()
reward_sum = 0
terminated = False
while not terminated:
  action = np.random.randint(0,2)
  s_prime, reward, terminated, info = env.step(action)
  print(reward,terminated)
  reward_sum += reward

print("total reqard: ", reward_sum)

