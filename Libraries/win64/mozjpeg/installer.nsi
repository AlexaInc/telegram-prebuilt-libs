!include x64.nsh
Name "mozjpeg SDK for Visual C++ 64-bit"
OutFile "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}mozjpeg-4.1.5-vc64.exe"
InstallDir "c:\mozjpeg64"

SetCompressor bzip2

Page directory
Page instfiles

UninstPage uninstConfirm
UninstPage instfiles

Section "mozjpeg SDK for Visual C++ 64-bit (required)"
!ifdef WIN64
	${If} ${RunningX64}
	${DisableX64FSRedirection}
	${Endif}
!endif
	SectionIn RO
!ifdef GCC
	IfFileExists $SYSDIR/libturbojpeg.dll exists 0
!else
	IfFileExists $SYSDIR/turbojpeg.dll exists 0
!endif
	goto notexists
	exists:
!ifdef GCC
	MessageBox MB_OK "An existing version of the mozjpeg SDK for Visual C++ 64-bit is already installed.  Please uninstall it first."
!else
	MessageBox MB_OK "An existing version of the mozjpeg SDK for Visual C++ 64-bit or the TurboJPEG SDK is already installed.  Please uninstall it first."
!endif
	quit

	notexists:
	SetOutPath $SYSDIR
!ifdef GCC
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\libturbojpeg.dll"
!else
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}turbojpeg.dll"
!endif
	SetOutPath $INSTDIR\bin
!ifdef GCC
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\libturbojpeg.dll"
!else
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}turbojpeg.dll"
!endif
!ifdef GCC
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\libjpeg-8.dll"
!else
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}jpeg8.dll"
!endif
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}cjpeg.exe"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}djpeg.exe"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}jpegtran.exe"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}tjbench.exe"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}rdjpgcom.exe"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}wrjpgcom.exe"
	SetOutPath $INSTDIR\lib
!ifdef GCC
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\libturbojpeg.dll.a"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\libturbojpeg.a"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\libjpeg.dll.a"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\libjpeg.a"
!else
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}turbojpeg.lib"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}turbojpeg-static.lib"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}jpeg.lib"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\${BUILDDIR}jpeg-static.lib"
!endif
	SetOutPath $INSTDIR\lib\pkgconfig
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\pkgscripts\libjpeg.pc"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\pkgscripts\libturbojpeg.pc"
	SetOutPath $INSTDIR\lib\cmake\mozjpeg
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\pkgscripts\mozjpegConfig.cmake"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\pkgscripts\mozjpegConfigVersion.cmake"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\win\mozjpegTargets.cmake"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\win\mozjpegTargets-release.cmake"
!ifdef JAVA
	SetOutPath $INSTDIR\classes
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\java\turbojpeg.jar"
!endif
	SetOutPath $INSTDIR\include
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\jconfig.h"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\jerror.h"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\jmorecfg.h"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\jpeglib.h"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\turbojpeg.h"
	SetOutPath $INSTDIR\doc
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\README.ijg"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\README.md"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\LICENSE.md"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\example.txt"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\libjpeg.txt"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\structure.txt"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\usage.txt"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\wizard.txt"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\tjexample.c"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\java\TJExample.java"
!ifdef GCC
	SetOutPath $INSTDIR\man\man1
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\cjpeg.1"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\djpeg.1"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\jpegtran.1"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\rdjpgcom.1"
	File "D:/a/telegram-prebuilt-libs/telegram-prebuilt-libs/Libraries/win64/mozjpeg\wrjpgcom.1"
!endif

	WriteRegStr HKLM "SOFTWARE\mozjpeg64 4.1.5" "Install_Dir" "$INSTDIR"

	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\mozjpeg64 4.1.5" "DisplayName" "mozjpeg SDK v4.1.5 for Visual C++ 64-bit"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\mozjpeg64 4.1.5" "UninstallString" '"$INSTDIR\uninstall_4.1.5.exe"'
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\mozjpeg64 4.1.5" "NoModify" 1
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\mozjpeg64 4.1.5" "NoRepair" 1
	WriteUninstaller "uninstall_4.1.5.exe"
SectionEnd

Section "Uninstall"
!ifdef WIN64
	${If} ${RunningX64}
	${DisableX64FSRedirection}
	${Endif}
!endif

	SetShellVarContext all

	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\mozjpeg64 4.1.5"
	DeleteRegKey HKLM "SOFTWARE\mozjpeg64 4.1.5"

!ifdef GCC
	Delete $INSTDIR\bin\libjpeg-8.dll
	Delete $INSTDIR\bin\libturbojpeg.dll
	Delete $SYSDIR\libturbojpeg.dll
	Delete $INSTDIR\lib\libturbojpeg.dll.a
	Delete $INSTDIR\lib\libturbojpeg.a
	Delete $INSTDIR\lib\libjpeg.dll.a
	Delete $INSTDIR\lib\libjpeg.a
!else
	Delete $INSTDIR\bin\jpeg8.dll
	Delete $INSTDIR\bin\turbojpeg.dll
	Delete $SYSDIR\turbojpeg.dll
	Delete $INSTDIR\lib\jpeg.lib
	Delete $INSTDIR\lib\jpeg-static.lib
	Delete $INSTDIR\lib\turbojpeg.lib
	Delete $INSTDIR\lib\turbojpeg-static.lib
!endif
	Delete $INSTDIR\lib\pkgconfig\libjpeg.pc
	Delete $INSTDIR\lib\pkgconfig\libturbojpeg.pc
	Delete $INSTDIR\lib\cmake\mozjpeg\mozjpegConfig.cmake
	Delete $INSTDIR\lib\cmake\mozjpeg\mozjpegConfigVersion.cmake
	Delete $INSTDIR\lib\cmake\mozjpeg\mozjpegTargets.cmake
	Delete $INSTDIR\lib\cmake\mozjpeg\mozjpegTargets-release.cmake
!ifdef JAVA
	Delete $INSTDIR\classes\turbojpeg.jar
!endif
	Delete $INSTDIR\bin\cjpeg.exe
	Delete $INSTDIR\bin\djpeg.exe
	Delete $INSTDIR\bin\jpegtran.exe
	Delete $INSTDIR\bin\tjbench.exe
	Delete $INSTDIR\bin\rdjpgcom.exe
	Delete $INSTDIR\bin\wrjpgcom.exe
	Delete $INSTDIR\include\jconfig.h
	Delete $INSTDIR\include\jerror.h
	Delete $INSTDIR\include\jmorecfg.h
	Delete $INSTDIR\include\jpeglib.h
	Delete $INSTDIR\include\turbojpeg.h
	Delete $INSTDIR\uninstall_4.1.5.exe
	Delete $INSTDIR\doc\README.ijg
	Delete $INSTDIR\doc\README.md
	Delete $INSTDIR\doc\LICENSE.md
	Delete $INSTDIR\doc\example.txt
	Delete $INSTDIR\doc\libjpeg.txt
	Delete $INSTDIR\doc\structure.txt
	Delete $INSTDIR\doc\usage.txt
	Delete $INSTDIR\doc\wizard.txt
	Delete $INSTDIR\doc\tjexample.c
	Delete $INSTDIR\doc\TJExample.java
!ifdef GCC
	Delete $INSTDIR\man\man1\cjpeg.1
	Delete $INSTDIR\man\man1\djpeg.1
	Delete $INSTDIR\man\man1\jpegtran.1
	Delete $INSTDIR\man\man1\rdjpgcom.1
	Delete $INSTDIR\man\man1\wrjpgcom.1
!endif

	RMDir "$INSTDIR\include"
	RMDir "$INSTDIR\lib\pkgconfig"
	RMDir "$INSTDIR\lib\cmake\mozjpeg"
	RMDir "$INSTDIR\lib\cmake"
	RMDir "$INSTDIR\lib"
	RMDir "$INSTDIR\doc"
!ifdef GCC
	RMDir "$INSTDIR\man\man1"
	RMDir "$INSTDIR\man"
!endif
!ifdef JAVA
	RMDir "$INSTDIR\classes"
!endif
	RMDir "$INSTDIR\bin"
	RMDir "$INSTDIR"

SectionEnd
