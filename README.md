Linux Translator
================
The project is developed during a seminar in St. Petersburg, Russia, at ITMO University within the course "Linux/Unix in Info communication" organized by Professor Oleg Sadov. 25.05.2015-05.06.2015.


General description
-------------------
The program successfully translated an English word to Macedonian language, using an online Swadesh dictionary (http://semes-olla.rhcloud.com). A script is taking all of the English words from the dictionary and lists them in a gdialog --menu. The user is supposed to click on a word and the translated word will appear. 


Instalation
-----------
make install

Features
--------
1) Pooling words from an online dictionary.
2) gdialog GUI.
	The program runs when the script "linuxtranslate_ui" is executed.
3) Networked client-service implementation
	Executing "linuxtranslate_ui" will run locally, while executing the command "linuxtranslate_ui --network" will run  the program in the network.
4) Localization on Macedonian language
	Executing the command "LC_ALL=mk_MK.UTF-8 linuxtranslate_ui" will run the GUI with Macedonian language.


