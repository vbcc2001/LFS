@echo off
set JAVA_HOME=D:\Java\jdk1.8.0_45
set RESIN_HOME=D:\resin-pro-3.1.12
set APP_HOME=D:\LFS\LFS_Kafka
set APP_NAME=LFS_Kafka
title %APP_NAME%
%JAVA_HOME%\bin\java -Dfile.encoding=GBK -Dapp.name=%APP_NAME% -Dapp.home=%APP_HOME% -jar %RESIN_HOME%\lib\resin.jar -resin-home %RESIN_HOME% -conf %APP_HOME%\resin.xml -server %APP_NAME% 
