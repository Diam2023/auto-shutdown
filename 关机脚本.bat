@echo off

:_START

shutdown /a 2> nul
set ResultCancelShutdown=%ERRORLEVEL%
if %ResultCancelShutdown% equ 0 (
echo 成功取消上一次的自动关机信息！
goto _END
)

SET /P TimeOfShutdown=请输入要在多少分钟（1分钟及以上）后执行关机（回车确认）：
if %TimeOfShutdown% lss 1 (
echo 您输入了%TimeOfShutdown%分钟 小于 1分钟！
echo 请重新输入！
goto _START
)
SET /A SecTimeOfShutdown=%TimeOfShutdown%*60

shutdown /s /t %SecTimeOfShutdown%
set ResultSetShutdown=%ERRORLEVEL%
if %ResultSetShutdown% equ 0 (
echo 您的系统将在%TimeOfShutdown%分钟后关机！
goto _END
) else (
echo 设置自动关机失败！
)

goto _END

:_END
echo 拜拜！按任意键退出脚本！

pause
