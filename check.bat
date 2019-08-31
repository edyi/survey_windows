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


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
echo Google_DNS >> %KEKKA%
rem ping確認
ping 8.8.8.8 >> %KEKKA%
echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
echo Gateway_router >> %KEKKA%
rem ping確認
ping 192.168.200.254 >> %KEKKA%
echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
echo NAS >> %KEKKA%
rem ping確認
ping 192.168.200.200 >> %KEKKA%
echo;


echo ///////////////////////////////////////////////////////////// >> %KEKKA%
echo Printer >> %KEKKA%
rem ping確認
ping 192.168.200.100 >> %KEKKA%
echo;


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



