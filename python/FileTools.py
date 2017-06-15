
"""
The MIT License (MIT)

Copyright (c) 2017 J.Patrick Farrell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


FileTools.py
------------

Written by: J. Patrick Farrell
Copyright 2017

File tools for getting information about a file, result returned in a dictionary.

"""

import datetime
import os

class FileTools():

	@staticmethod
	def getDateTimeObject(fileDateTime):

		date_time = {}

		try:
			date_time["year"] = str(fileDateTime.year)
			date_time["month"] = str(fileDateTime.month)
			date_time["day"] = str(fileDateTime.day)
			date_time["hour"] = str(fileDateTime.hour)
			date_time["minute"] = str(fileDateTime.minute)
			date_time["second"] = str(fileDateTime.second)

			return date_time
		except:
			print "Couldn't extra fileDateTime, returning None"
			return None

	@staticmethod
	def getFileDateTime(filePath):
		"""
		Gets the creation time of a file
		"""

		# First check if the file specified by filePath exists
		if not os.path.exists(filePath):
			return None


		file_name = os.path.basename(filePath)

		file_info = {}
		file_info["filename"] = file_name
		file_info["filepath"] = filePath

		try:
			file_datetime = datetime.datetime.fromtimestamp(os.path.getctime(filePath))

			file_info["datetime"] = file_datetime

			return file_info
		except:
			print "couldn't get the file (media) datetime"
			return None

if __name__ == "__main__":

	file_info = FileTools.getFileDateTime("/Volumes/ElectricalScience/repo/tm1/tm1ws/Dockerfile")
	print file_info

	date_time = FileTools.getDateTimeObject(file_info["datetime"])
	print date_time

