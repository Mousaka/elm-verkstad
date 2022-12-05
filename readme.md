# Instructions

Follow these instructions to install the programs necessary for the code workshop. You will install the following programs:

- Elm compiler - the program that inteprets your code and translates it to a runnable program in your web browser.
- Elm format - A program that helps tidy up the code you write in terms of removing unecessary tabs and spaces and such.
- Visual Studio Code (VScode) - The code editor we will be using to type our code in. This is like Word with spellchecking, but for code.

### On Windows

1. Download the zip-file: [Windows-zip](https://github.com/Mousaka/elm-verkstad/raw/main/elm-workshop-windows.zip)
2. Unzip them somewhere on your computer. This will be the project folder for the workshop. This folder contains the elm compiler and elm format, some configuration for VScode, and a code template.
3. Install Visual Studio Code (also called VScode) in Microsoft App store if you are on Windowsd.
4. Open VScode and open the folder you unzipped previously from VScode `File -> Open` then select the folder.
5. When asked if you want to install the Elm extension for VScode press yes.
6. Open the Terminal in VScode from the menu `View -> Terminal`
7. Start developer environment by entering `./start` in the terminal.
8. ctrl-click on the link displayed in the terminal. This should open a page in your browswer. Press on `src` then on `Main.elm` on the page in the browser. You should now see the text "Hello world!". If you do, you are done with the setup!

### On Mac

After the first time you save a file a new popup will say that `elm-format` is not a trusted program. Press cancel and go to security and privacy settings and allow it. Restart VScode.

1. Download the zip-file: [Mac-zip](https://github.com/Mousaka/elm-verkstad/raw/main/elm-workshop-macos.zip)
2. Unzip them somewhere on your computer. This will be the project folder for the workshop. This folder contains the elm compiler and elm format, some configuration for VScode, and a code template.
3. Right click on the folder you just unzipped and select "New terminal at folder".
4. Run this command in the terminal to allow your computer to be able to run the Elm compiler and Elm Formatter `xattr -dr com.apple.quarantine node_modules/.bin`
5. Install Visual Studio Code (also called VScode) from [here](https://code.visualstudio.com/download).
6. Open VScode and open the folder you unzipped previously from VScode `File -> Open` then select the folder.
7. When asked if you want to install the Elm extension for VScode press yes.
8. Open the Terminal in VScode from the menu `View -> Terminal`
9. Start developer environment by entering `./start` in the terminal.
10. ⌘-click on the link displayed in the terminal. This should open a page in your browswer. Press on `src` then on `Main.elm`. You should now see the text "Hello world!". If you do, you are done with the setup!
