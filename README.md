
# MBI5024
MBI5024 LED Driver Chip Support Files

# Datasheet
http://belchip.by/sitedocs/00006155.pdf

# How to use
*(Mac OSX specific, but should be similar for other platforms)*

In the root folder of your kicad project
```
git submodule add git@github.com:mattsoftwareElectronics/MBI5024.git MBI5024
```
In kicad
* Go into the symbol library editor
* Preferences -> Manage symbol library
* Project Specific Library tab
* Browse libraries -> select the new MBI5024 folder in the project directory -> Select the MBI5024.lib file -> Open
* OK -> Close window
* Go into the footprint library editor
* Preferences -> Manage footprint library
* Project Specific Library tab
* Browse Libraries -> Select the MBI5024 folder in the project directory -> Select the MBI5024.pretty folder -> Open
* OK -> Close window

