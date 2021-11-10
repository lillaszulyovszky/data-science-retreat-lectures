'''
 * ************************************************************
 *      Program: Speech Recognition Transcriber
 *      Type: Python
 *      Author: David Velasco Garcia @davidvelascogarcia
 * ************************************************************
'''

# Libraries
import configparser
import datetime
from fpdf import FPDF
from halo import Halo
import os
import platform
from pydub import AudioSegment
from pydub.silence import split_on_silence
from pydub.utils import make_chunks
import speech_recognition as sr
import shutil
import time


class SpeechRecognitionTranscriber:

    # Function: Constructor
    def __init__(self):

        # Build Halo spinner
        self.systemResponse = Halo(spinner='dots')

    # Function: getSystemPlatform
    def getSystemPlatform(self):

        # Get system configuration
        print("\nDetecting system and release version ...\n")
        systemPlatform = platform.system()
        systemRelease = platform.release()

        print("**************************************************************************")
        print("Configuration detected:")
        print("**************************************************************************")
        print("\nPlatform:")
        print(systemPlatform)
        print("Release:")
        print(systemRelease)

        return systemPlatform, systemRelease

    # Function: getAuthenticationData
    def getAuthenticationData(self):

        print("\n**************************************************************************")
        print("Authentication:")
        print("**************************************************************************\n")

        loopControlFileExists = 0

        while int(loopControlFileExists) == 0:
            try:
                # Get authentication data
                print("\nGetting authentication data ...\n")

                authenticationData = configparser.ConfigParser()
                authenticationData.read('../config/languages.ini')
                authenticationData.sections()

                inputLanguage = authenticationData['Languages']['input-language']

                print("Input language: " + str(inputLanguage))

                # Exit loop
                loopControlFileExists = 1

            except:
                systemResponseMessage = "\n[ERROR] Sorry, languages.ini not founded, waiting 4 seconds to the next check ...\n"
                self.systemResponse.text_color = "red"
                self.systemResponse.fail(systemResponseMessage)
                time.sleep(4)

        systemResponseMessage = "\n[INFO] Data obtained correctly.\n"
        self.systemResponse.text_color = "green"
        self.systemResponse.succeed(systemResponseMessage)

        return inputLanguage

    # Function: getTargetFile
    def getTargetFile(self):

        print("\n**************************************************************************")
        print("Enter target file:")
        print("**************************************************************************\n")

        loopControlFileExists = 0

        while int(loopControlFileExists) == 0:
            try:
                print("\nEnter target file with absolute or relative path:\n")

                # Get target file
                targetFile = input()

                # Target path
                targetPath = targetFile

                # Read target file and set one channel to check files it´s ok
                targetFile = AudioSegment.from_file(targetFile)
                targetFile = targetFile.set_channels(1)

                # Exit loop
                loopControlFileExists = 1

            except:
                systemResponseMessage = "\n[ERROR] Sorry, target file not founded, waiting 4 seconds to the next check ...\n"
                self.systemResponse.text_color = "red"
                self.systemResponse.fail(systemResponseMessage)
                time.sleep(4)

        systemResponseMessage = "\n[INFO] Target file obtained correctly.\n"
        self.systemResponse.text_color = "green"
        self.systemResponse.succeed(systemResponseMessage)

        return targetFile, targetPath

    # Function: getTargetName
    def getTargetName(self, targetPath):

        # Extract target name
        targetName = str(targetPath)
        targetName = targetName.replace(".mp4", "")
        targetName = targetName.replace(".mkv", "")
        targetName = targetName.replace(".avi", "")
        targetName = targetName.replace(".ogg", "")
        targetName = targetName.replace(".mp3", "")
        targetName = targetName.replace(".wav", "")
        targetName = targetName.replace(".aif", "")
        targetName = targetName.replace(".wma", "")
        targetName = targetName.replace(".amr", "")
        targetName = targetName.replace(".midi", "")
        targetName = targetName.replace(".mpeg", "")
        targetName = targetName.replace(".flv", "")
        targetName = targetName.replace(".mpeg4", "")
        targetName = targetName.replace(".mpg", "")

        return targetName

    # Function: wavConversion
    def wavConversion(self, targetFile):

        self.systemResponse.text = "[INFO] Converting target file to audio file .wav ..."
        self.systemResponse.text_color = "blue"
        self.systemResponse.start()

        # Convert to wav
        targetFile.export("audioFile.wav", format="wav")
        targetFile = "audioFile.wav"

        self.systemResponse.stop()

        systemResponseMessage = "\n[INFO] Target file converted to audio file .wav.\n"
        self.systemResponse.text_color = "green"
        self.systemResponse.succeed(systemResponseMessage)

        return targetFile

    # Function: readAudioFile
    def readAudioFile(self, targetFile):

        # Convert to wav
        dataToSolve = AudioSegment.from_wav(targetFile)

        return dataToSolve

    # Function: selectSplitMode
    def selectSplitMode(self):

        print("\n**************************************************************************")
        print("Select split mode:")
        print("**************************************************************************\n")

        loopControlFileExists = 0

        while int(loopControlFileExists) == 0:
            try:
                print("\nDo you want to make split by time or by silence method?\n")
                print("1. By silence")
                print("2. By time")
                print("\nEnter your split selection:\n")

                splitMode = input()

                if int(splitMode) == 1 or int(splitMode) == 2:
                    # Exit loop
                    loopControlFileExists = 1

            except:
                systemResponseMessage = "\n[ERROR] Sorry, option not supported, enter supported option.\n"
                self.systemResponse.text_color = "red"
                self.systemResponse.fail(systemResponseMessage)

        return splitMode

    # Function: splitTarget
    def splitTarget(self, dataToSolve, splitMode):

        if int(splitMode) == 1:
            fragments = split_on_silence(dataToSolve, min_silence_len=500, silence_thresh=-45)

        else:
            slpitTime = 1000 * 55
            fragments = make_chunks(dataToSolve, slpitTime)

        return fragments

    # Function: buildTempDir
    def buildTempDir(self):

        try:
            # Build temp dir and move to it
            os.mkdir('temp')
            os.chdir('temp')

        except:
            # Show error temp dir
            systemResponseMessage = "\n[ERROR] Error in temp dir.\n"
            self.systemResponse.text_color = "red"
            self.systemResponse.fail(systemResponseMessage)

    # Function: removeTempData
    def removeTempData(self):

        try:
            os.remove("audioFile.wav")
            shutil.rmtree('temp')

        except:
            # Show error temp dir
            systemResponseMessage = "\n[ERROR] Error removing temp data.\n"
            self.systemResponse.text_color = "red"
            self.systemResponse.fail(systemResponseMessage)

    # Function: buildEngine
    def buildEngine(self):

        print("\nBuilding engine ...\n")

        # Build engine
        engine = sr.Recognizer()

        systemResponseMessage = "\n[INFO] Engine built correctly.\n"
        self.systemResponse.text_color = "green"
        self.systemResponse.succeed(systemResponseMessage)

        return engine

    # Function: processRequest
    def processRequests(self, engine, inputLanguage, fragments, targetName):

        # Create output file
        transcribedFileName = targetName + ".txt"
        transcribedFile = open(str(transcribedFileName), "w+")

        # Count number of fragments
        fragmentNum = 0

        for fragment in fragments:

            # Build and initial and end silence to improve speech recognition
            fragmentSilent = AudioSegment.silent(duration=10)

            # Prepare full fragment
            audioFragment = fragmentSilent + fragment + fragmentSilent

            # Save in temp dir as .wav
            audioFragment.export("./audioFragment{0}.wav".format(fragmentNum), bitrate='192k', format="wav")
            audioFragmentFile = 'audioFragment' + str(fragmentNum) + '.wav'

            with sr.AudioFile(audioFragmentFile) as dataToSolve:

                # Adjust ambient noise
                engine.adjust_for_ambient_noise(dataToSolve, duration=0.2)
                dataToSolve = engine.record(dataToSolve, duration=55)

            try:
                # Show recognizing
                self.systemResponse.text = "[INFO] Recognizing ..."
                self.systemResponse.text_color = "blue"
                self.systemResponse.start()

                dataSolved = engine.recognize_google(dataToSolve, language=str(inputLanguage))

                self.systemResponse.stop()

                # Show dataSolved
                systemResponseMessage = "\n[INFO] Results: " + str(dataSolved) + "...\n"
                self.systemResponse.text_color = "green"
                self.systemResponse.succeed(systemResponseMessage)

                # Append transcribed text
                transcribedFile.write(dataSolved + ".\n")

            except sr.RequestError as e:
                # Show request error
                systemResponseMessage = "\n[ERROR] Error, request Google Speech API fail.\n"
                self.systemResponse.text_color = "red"
                self.systemResponse.fail(systemResponseMessage)

            except sr.UnknownValueError:
                # Show request error
                systemResponseMessage = "\n[ERROR] Error, unknown error.\n"
                self.systemResponse.text_color = "red"
                self.systemResponse.fail(systemResponseMessage)

            # Increase fragmentNum
            fragmentNum = fragmentNum + 1

            # Wait 3 secs to next request
            time.sleep(3)

        # Close transcribedFile
        transcribedFile.close()

        # Go to root path
        os.chdir('..')

        return transcribedFileName

    # Function: pdfExportation
    def pdfExportation(self, targetName, transcribedFileName):

        try:

            # Show recognizing
            self.systemResponse.text = "[INFO] Exporting to PDF ..."
            self.systemResponse.text_color = "blue"
            self.systemResponse.start()

            # Build PDF file
            pdfFile = FPDF('P', 'mm', 'A4')

            # Add page
            pdfFile.add_page()

            # Set font and size
            pdfFile.set_font('Times', size=12)

            # Set margins
            pdfFile.set_margins(20, 20, 20)

            # Get title
            title = targetName
            title = str(title).upper()

            # Clean title
            title = title.replace("_", " ")
            title = title.replace("-", " ")

            # Set title
            pdfFile.set_font('Times', 'B', size=18)
            pdfFile.cell(0, 0, str(title), align='C')

            # Add new page
            pdfFile.add_page()

            # Re-set font and size
            pdfFile.set_font('Times', size=12)

            # Adjust transcribedFileName path
            transcribedFileName = "./temp/" + transcribedFileName

            # Open transcribedFile
            transcribedFile = open(str(transcribedFileName), "r")

            # For each line write into PDF file
            for fileLine in transcribedFile:
                pdfFile.multi_cell(157, 10, str(fileLine), 0, 'J', 0)

            # Close transcribedFile
            transcribedFile.close()

            # Prepare output PDF name and export
            pdfName = targetName + ".pdf"
            pdfFile.output(str(pdfName))

            self.systemResponse.stop()

            # Show PDF exportation finished
            systemResponseMessage = "\n[INFO] PDF exportation done correctly.\n"
            self.systemResponse.text_color = "green"
            self.systemResponse.succeed(systemResponseMessage)

        except:
            # Show error exporting to PDF
            systemResponseMessage = "\n[ERROR] Error exporting to PDF file.\n"
            self.systemResponse.text_color = "red"
            self.systemResponse.fail(systemResponseMessage)


# Function: main
def main():

    print("**************************************************************************")
    print("**************************************************************************")
    print("               Program: Speech Recognition Transcriber                    ")
    print("                     Author: David Velasco Garcia                         ")
    print("                             @davidvelascogarcia                          ")
    print("**************************************************************************")
    print("**************************************************************************")

    print("\nLoading Speech Recognition Transcriber engine ...\n")

    # Build speechRecognitionTranscriber object
    speechRecognitionTranscriber = SpeechRecognitionTranscriber()

    # Get system platform
    systemPlatform, systemRelease = speechRecognitionTranscriber.getSystemPlatform()

    # Get input language
    inputLanguage = speechRecognitionTranscriber.getAuthenticationData()

    # Get target file
    targetFile, targetPath = speechRecognitionTranscriber.getTargetFile()

    # Get target name
    targetName = speechRecognitionTranscriber.getTargetName(targetPath)

    # Convert to audio file
    targetFile = speechRecognitionTranscriber.wavConversion(targetFile)

    # Read audio file
    dataToSolve = speechRecognitionTranscriber.readAudioFile(targetFile)

    # Select spit mode
    splitMode = speechRecognitionTranscriber.selectSplitMode()

    # Split target audio file in multiple chunks
    fragments = speechRecognitionTranscriber.splitTarget(dataToSolve, splitMode)

    # Build temp dir
    speechRecognitionTranscriber.buildTempDir()

    # Build engine
    engine = speechRecognitionTranscriber.buildEngine()

    # Process input requests
    transcribedFileName = speechRecognitionTranscriber.processRequests(engine, inputLanguage, fragments, targetName)

    # Export to PDF
    speechRecognitionTranscriber.pdfExportation(targetName, transcribedFileName)

    # Remove temp data
    speechRecognitionTranscriber.removeTempData()

    print("**************************************************************************")
    print("Program finished")
    print("**************************************************************************")
    print("\nspeechRecognitionTranscriber program finished correctly.\n")


if __name__ == "__main__":

    # Call main function
    main()