# Instructions

Follow these instructions to install the programs necessary for the code workshop. You will install the following programs:

- NodeJs - A javascript runner and packet manager needed to install and run parts of Elm
- Elm compiler - the program that inteprets your code and translates it to a runnable program in your web browser.
- Elm format - A program that helps tidy up the code you write in terms of removing unecessary tabs and spaces and such.
- Visual Studio Code (VScode) - The code editor we will be using to type our code in. This is like Word with spellchecking, but for code.

1. Install [NodeJs](https://nodejs.org/en/) by downloading the installer and running it. If install options are shown in the installer, uncheck all extra features.
1. Download the project zip-file: [zip](https://github.com/Mousaka/elm-verkstad/archive/refs/heads/main.zip)
1. Unzip them somewhere on your computer. This will be the project folder for the workshop. This folder contains some configuration for VScode, and a code template.
1. Install Visual Studio Code (also called VScode) in Microsoft App store if you are on Windows. If you are on Mac install from their webpage [here](https://code.visualstudio.com/download).
1. When asked if you want to install the Elm extension for VScode press yes.
1. Open VScode and open the folder you unzipped previously from VScode `File -> Open` then select the folder.
1. Open the Terminal in VScode from the menu `View -> Terminal`
1. Install elm programs by entering this in the terminal: `npm install -g elm elm-format`
1. Start developer environment by entering `elm repl` in the terminal.
1. If the terminal displays something like this you are now done with the setup:
   ```
   ---- Elm 0.19.1 ----------------------------------------------------------------
   Say :help for help and :exit to exit! More at <https://elm-lang.org/0.19.1/repl>
   --------------------------------------------------------------------------------
   >
   ```

## Commands

Thes commands can be run in the Visual Studio Code terminal when you have opened the unzipped folder in the editor.

### Starting the REPL

Write this in your terminal to start Elm's REPL

```
elm repl
```

### Starting your local elm server

This command starts Elm's local development server. "local" in this context means "runs on your computer".

```
elm reactor
```
