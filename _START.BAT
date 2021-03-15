@echo off
set cursor=TOS Folder:
set comment = Add your own things here :) that happen on startup.
set comment = You can change cursor on startup, everything!
set comment = Good Luck! ;)
set ver=0.3.2
set titled=TOS %ver% (Build 03.15.2021)

title %titled%
echo %titled% 2021-2021
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
if %cmdl%==cshrtcut goto cshrtcut
if %cmdl%==delete goto delete
if %cmdl%==rename goto rename
if %cmdl%==clock goto clock
if %cmdl%==cls goto cls

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
echo TOS %ver% (Build 03.15.2021) 2021-2021
echo.
goto cmdlr

:help
echo.
set comment = Here is help command data. You can change them!
echo help - Show commands.
echo mplayer - Launch Music Player.
echo edit - Launch Text Editor.
echo cursor - Change cursor (prefix of line).
echo clock - Show clock.
echo dir - Shows all files.
edtit cls - Clears screen.
echo echo - Displays text.
echo delete - Delete file.
echo rename - Rename file.
echo cmd - Launch Default Windows Command Line. (Warning! You must after this relaunch TOS!)
echo cshrtcut - Shortcut Creator
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
start MPLAYER.EXE
echo Entered Music Player.
echo.
goto cmdlr

:edit
echo Entering Text Editor... Please Wait...
edit
echo Entered Text Editor.
echo.
goto cmdlr

:dir
dir /p
goto cmdlr

:cmd
echo Warning! It automaticly close TOS (If you want to open it from cmd, type TOS)! You are sure?
set /p cmdyn=(Y/N):
if %cmdyn%==Y goto cmd2
if %cmdyn%==y goto cmd2
goto cmdlr
exit

:echo
set /p et=Type text to display:
echo %et%
goto cmdlr

:cmd2
echo Starting Command Line... Please Wait...
start cmd 
exit

:cshrtcut
title TOS %ver% Shortcut Creator (Version 0.1)
cls
echo Welcome to TOS Shortcut Creator!
set /p cshrtctname=First, Select name of shortcut (no spaces):
set /p cshrtctdest=Now, select destination (file to open):
cls
echo Creating shortcut...
echo @echo off > %cshrtctname%.bat
echo start %cshrtctdest% > %cshrtctname%.bat
echo Shortcut created!
pause
title %titled%
goto cmdlr

:delete
set /p wftdel=What file you want to delete?:
del %wftdel%
echo File deleted.
echo.
goto cmdlr

:rename
set /p renfle=What file you want to rename?:
set /p rennam=What name you want on this file?:
ren %renfle% %rennam%
echo File renamed.
echo.
goto cmdlr

:clock
echo Date:
echo  %date%
echo.
echo Time:
echo %time%
echo.
goto cmdlr

:cls
cls
goto cmdlr