@echo off
set cursor=TOS Folder:
set comment = Add your own things here :) that happen on startup.
set comment = You can change cursor on startup, everything!
set comment = Good Luck! ;)
set ver=0.4.0
set titled=TOS %ver% Stable

title %titled%
echo.
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
if %cmdl%==start3p goto start3p
if %cmdl%==launch3p goto launch3p

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
echo %titled% 2021-2021
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
echo cls - Clears screen.
echo echo - Displays text.
echo delete - Delete file.
echo rename - Rename file.
echo start3p - Launch in new window your own/3rd party bat/exe program. Works the best with bat files.
echo launch3p - Launch in TOS window your own/3rd party bat/exe program. Works the best with exe files.
echo Warning! You have risk of restarting TOS! If you are launching bat file, add in the end (or in the exit script)
echo "TOS" command.
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
mplayer
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
echo Starting Command Line... Please Wait...
echo.
cmd
goto cmdlr
exit

:echo
set /p et=Type text to display:
echo %et%
goto cmdlr

:cmd2
echo Starting Command Line... Please Wait...
cmd
exit

:cshrtcut
title TOS %ver% Shortcut Creator
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

:start3p
set /p s3pfyw=What file you want to open?:
echo Launching Custom Program...
start %s3pfyw%
echo You Exited from Custom Program.
goto cmdlr

:launch3p
set /p l3pfyw=What file you want to open?:
echo Launching Custom Program...
%l3pfyw%
echo You Exited from Custom Program.
goto cmdlr