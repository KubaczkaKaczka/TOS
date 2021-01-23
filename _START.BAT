@echo off
set cursor=TOS Folder:
set comment = Add your own things here :) that happen on startup.
set comment = You can change cursor on startup, everything!
set comment = Good Luck! ;)

title TOS 0.2.1 (Build 01.23.2021)
echo TOS 0.2.1 (Build 01.23.2021) 2021-2021
echo Type "help" to get help.
:cmdlr
set /p cmdl=%cursor%/
set comment = Here is a list of commands. You can add them.
if %cmdl%==help goto help
if %cmdl%==cursor goto cursor
if %cmdl%==mplayer goto mplayer
if %cmdl%==edit goto edit
if %cmdl%==dir goto dir
if %cmdl%==cmd goto cmd
if %cmdl%==info goto info
if %cmdl%==echo goto echo

:wc
set comment = Here's a message if you put wrong command! You can change it!
echo.
echo You typed wrong command!
echo Type "help" to get list of commands.
echo.
goto cmdlr

:info
set comment = Here's a information about Operating System.
echo.
echo TOS 0.2.1 (Build 01.23.2021) 2021-2021
echo.
goto cmdlr

:help
echo.
set comment = Here is help command data. You can change them!
echo help - Show commands.
echo mplayer - Launch Music Player.
echo edit - Launch Text Editor.
echo cursor - Change cursor (prefix of line).
echo dir - Shows all files.
echo echo - Displays text.
echo cmd - Launch Default Windows Command Line. (Warning! You must after this relaunch TOS!)
echo info - Check information about version (You must update manually)
echo.
echo Sorry for no directories, i work on it...
echo.
goto cmdlr

set comment = Here's what commands do!
:cursor
echo.
set /p cursor=Now type text that now it's a prefix (you can't delete /, it generates automaticly):
echo Congratulations! You set cursor to "%cursor%"!
echo.
goto cmdlr

:mplayer
echo.
echo Entering Music Player... Please Wait...
start "TOS 0.2 [MPLAYER]" MPLAYER.EXE
echo Entered Music Player.
echo.
goto cmdlr

:edit
echo Entering Text Editor... Please Wait...
start EDIT.EXE
echo Entered Text Editor.
echo.
goto cmdlr

:dir
dir /p
goto cmdlr

:cmd
echo Warning! It automaticly close TOS (If you want to open it from cmd, type TOS)! You are sure?
set /p cmdyn=(Y/N):
if %cmdyn%==N goto cmdl
echo Entering Command Line... Please Wait...
start cmd 
exit

:echo
set /p et=Type text to display:
echo %et%
goto cmdlr
