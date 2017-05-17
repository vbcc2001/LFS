@echo off
set PROJECT_PATH=B:\LFS\LFS_Web_Java
set APP_HOME=%PROJECT_PATH%\target
set APP_PORT=3000
set JAVA_HOME=%PROJECT_PATH%\target\jdk1.8.0_121\jre
set RESIN_HOME=%PROJECT_PATH%\target\resin-pro-3.1.12
set APP_NAME=LFS_Web_Java
title %APP_NAME%
%JAVA_HOME%\bin\java -Dfile.encoding=UTF-8 -Dapp.name=%APP_NAME% -Dapp.home=%APP_HOME% -Dapp.port=%APP_PORT% -jar %RESIN_HOME%\lib\resin.jar -resin-home %RESIN_HOME% -conf %APP_HOME%\resin.xml -server %APP_NAME%
