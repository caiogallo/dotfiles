#!/bin/python

import os
from os.path import expanduser

home = expanduser('~')
currentm2 = os.path.realpath(home + '/.m2/settings.xml')
currentpath = os.path.abspath('')

print('Current m2 file: ' + currentm2[currentm2.rfind('/'):]);

availablem2 = []

for file in os.listdir('.'):
	if(file[:2] == 'm2'):
		availablem2.append(file)

message = '{}. {}'
print('\nAvailable options:')
print(message.format('0', 'Default'));
for num, name in enumerate(availablem2, start=1):
	print(message.format(num, name))

choice = input('select m2:')

defaultsettingsm2 = home + '/.m2/settings.xml'

if(int(choice) == 0):
	print('setting default')
	if(os.path.islink(defaultsettingsm2)):
		os.remove(defaultsettingsm2)
else:
	if(os.path.islink(defaultsettingsm2)):
		os.remove(defaultsettingsm2)
	selected = currentpath + '/' + availablem2[int(choice) - 1]
	os.symlink(selected, defaultsettingsm2)
	print('symlink ' + selected + ' created')
