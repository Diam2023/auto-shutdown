@echo off

:_START

shutdown /a 2> nul
set ResultCancelShutdown=%ERRORLEVEL%
if %ResultCancelShutdown% equ 0 (
echo �ɹ�ȡ����һ�ε��Զ��ػ���Ϣ��
goto _END
)

SET /P TimeOfShutdown=������Ҫ�ڶ��ٷ��ӣ�1���Ӽ����ϣ���ִ�йػ����س�ȷ�ϣ���
if %TimeOfShutdown% lss 1 (
echo ��������%TimeOfShutdown%���� С�� 1���ӣ�
echo ���������룡
goto _START
)
SET /A SecTimeOfShutdown=%TimeOfShutdown%*60

shutdown /s /t %SecTimeOfShutdown%
set ResultSetShutdown=%ERRORLEVEL%
if %ResultSetShutdown% equ 0 (
echo ����ϵͳ����%TimeOfShutdown%���Ӻ�ػ���
goto _END
) else (
echo �����Զ��ػ�ʧ�ܣ�
)

goto _END

:_END
echo �ݰݣ���������˳��ű���

pause
