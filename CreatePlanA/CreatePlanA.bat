@ECHO OFF
set/a curDate = 0
set /a newWeek = 0
set /a param1 = 0
set /p daysInMonth="Days in this Month: "
set /a daysRemaining = %daysInMonth%
set /p monthNumber="This Month is (number): "
set /p monthStartDay="The first Day is (i.e. Monday): "
REM set /p wtime="Available Time - Weekends: "
REM set /p otime="Available Time - WeekDays: "
if /I "%monthStartDay%" EQU "Monday" ( set /a day1 = 1)
if /I "%monthStartDay%" EQU "Tuesday" ( set /a day1 = 2 )
if /I "%monthStartDay%" EQU "Wednesday" ( set /a day1 = 3 )
if /I "%monthStartDay%" EQU "Thursday" ( set /a day1 = 4 )
if /I "%monthStartDay%" EQU "Friday" ( set /a day1 = 5 )
if /I "%monthStartDay%" EQU "Saturday" ( set /a day1 = 6 )
if /I "%monthStartDay%" EQU "Sunday" ( set /a day1 = 7 )

if %day1% EQU 1 ( set curDay=Monday )
if %day1% EQU 2 ( set curDay=Tuesday )
if %day1% EQU 3 ( set curDay=Wednesday )
if %day1% EQU 4 ( set curDay=Thursday )
if %day1% EQU 5 ( set curDay=Friday )
if %day1% EQU 6 ( set curDay=Saturday )
if %day1% EQU 7 ( set curDay=Sunday )

:loop
set /a curDate = curDate+1
set /a daysRemaining = daysRemaining-1
REM if "%curDay%" EQU "Sunday" (set %atime%=%wtime%)
REM if "%curDay%" EQU "Saturday" (set %atime%=%wtime%)
REM if "%curDay%" EQU "Monday" (set %atime%=%otime%)
REM if "%curDay%" EQU "Tuesday" (set %atime%=%otime%)
REM if "%curDay%" EQU "Wednesday" (set %atime%=%otime%)
REM if "%curDay%" EQU "Thursday" (set %atime%=%otime%)
REM if "%curDay%" EQU "Friday" (set %atime%=%otime%)
echo	--%monthNumber%/%curDate% - %curDay% ---------------------------------------- >>PlanA.txt
echo	                               ( Tt_A=6h ,Tt_R=__, Tt_S=__ ) >>PlanA.txt
echo	^> >>PlanA.txt
set /a day1 = day1+1
if %day1% GTR 7 ( set /a day1=1 )
if %day1% EQU 1 ( set curDay=Monday )
if %day1% EQU 2 ( set curDay=Tuesday )
if %day1% EQU 3 ( set curDay=Wednesday )
if %day1% EQU 4 ( set curDay=Thursday )
if %day1% EQU 5 ( set curDay=Friday )
if %day1% EQU 6 ( set curDay=Saturday )
if %day1% EQU 7 ( set curDay=Sunday )
if %daysRemaining% GTR 0 ( GOTO :loop )

ECHO Success!
pause
