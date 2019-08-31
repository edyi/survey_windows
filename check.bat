@echo off
echo PLEASE WAIT......

set KEKKA=result.txt
set yyyymmdd=%date:~0,4%%date:~5,2%%date:~8,2%

rem 実行した日付
echo %date% %time% > %KEKKA%
echo;

echo ///////////////////////////////////////////////////////////// >> %KEKKA%
rem ユーザー名
echo %USERNAME% >>%KEKKA%
echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
rem OS情報
systeminfo | findstr /C:"OS" >>%KEKKA%
echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
rem IP情報
ipconfig /all >> %KEKKA%
echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
echo www.yahoo.co.jp >> %KEKKA%
rem ping確認
ping www.yahoo.co.jp >> %KEKKA%
echo;


REM echo ///////////////////////////////////////////////////////////// >> %KEKKA%
REM echo Google_DNS >> %KEKKA%
REM rem ping確認
REM ping 8.8.8.8 >> %KEKKA%
REM echo;


REM echo ///////////////////////////////////////////////////////////// >> %KEKKA%
REM echo Gateway_router >> %KEKKA%
REM rem ping確認
REM ping 192.168.200.254 >> %KEKKA%
REM echo;


REM echo ///////////////////////////////////////////////////////////// >> %KEKKA%
REM echo NAS >> %KEKKA%
REM rem ping確認
REM ping 192.168.200.200 >> %KEKKA%
REM echo;


REM echo ///////////////////////////////////////////////////////////// >> %KEKKA%
REM echo Printer >> %KEKKA%
REM rem ping確認
REM ping 192.168.200.100 >> %KEKKA%
REM echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
rem getmac /NH
getmac /NH >> %KEKKA%
echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
rem history
doskey /h >> %KEKKA%
echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
rem ネットワーク
control net connections >>%KEKKA%


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
rem システムログ
wmic ntevent where "(logfile='system' and timegenerated >= '%yyyymmdd%000000.0+540' and type='error')" list brief /format:list >> %KEKKA%


rem rename
rename %KEKKA% %yyyymmdd%_%KEKKA%



