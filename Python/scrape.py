from bs4 import BeautifulSoup
import warnings
warnings.filterwarnings("ignore")
import requests
import sys
import os


url = sys.argv[1]
if (len(sys.argv) > 2): output = sys.argv[2]
else: output = url

try: 
	response = requests.get(url)
except requests.exceptions.SSLError:
	print("HTTP Error with " + url)
	sys.exit(0)
except requests.exceptions.ConnectionError:
	print("Connection error, please try again later")
	sys.exit(0)

out = BeautifulSoup(response.text, 'html.parser')

fin = out.get_text();

output= output.replace("/", "")
output= output.replace(".", "")
output= output.replace("-", "")
output= output.replace(":", "")

with open("../Lavender_Buds/" + output+".txt", "w") as file:
	file.write(fin);
