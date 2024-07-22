# Microsoft Developer Studio Project File - Name="WPDS" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=WPDS - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "WPDS.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "WPDS.mak" CFG="WPDS - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "WPDS - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "WPDS - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "WPDS - Win32 Purify" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "WPDS - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "WPDS - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "WPDS - Win32 Purify"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "WPDS___Win32_Purify"
# PROP BASE Intermediate_Dir "WPDS___Win32_Purify"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "WPDS___Win32_Purify"
# PROP Intermediate_Dir "WPDS___Win32_Purify"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /w /W0 /GR /GX /Zi /Od /D "_LIB" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "PURIFY" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "WPDS - Win32 Release"
# Name "WPDS - Win32 Debug"
# Name "WPDS - Win32 Purify"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\common.cpp
# End Source File
# Begin Source File

SOURCE=..\dictionary.cpp
# End Source File
# Begin Source File

SOURCE=..\key_source.cpp
# End Source File
# Begin Source File

SOURCE=..\keys.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Group "ewpds"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\ewpds\confluence_functions.h
# End Source File
# Begin Source File

SOURCE=..\ewpds\ERule.h
# End Source File
# Begin Source File

SOURCE=..\ewpds\ERuleExtender.h
# End Source File
# Begin Source File

SOURCE=..\ewpds\ESaturationProcess.h
# End Source File
# Begin Source File

SOURCE=..\ewpds\EWPDS.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\ca.h
# End Source File
# Begin Source File

SOURCE=..\catransition.h
# End Source File
# Begin Source File

SOURCE=..\common.h
# End Source File
# Begin Source File

SOURCE=..\dictionary.h
# End Source File
# Begin Source File

SOURCE=..\HashMap.h
# End Source File
# Begin Source File

SOURCE=..\hm_hash.h
# End Source File
# Begin Source File

SOURCE=..\inst_counter.h
# End Source File
# Begin Source File

SOURCE=..\key_source.h
# End Source File
# Begin Source File

SOURCE=..\keys.h
# End Source File
# Begin Source File

SOURCE=..\myallocator.h
# End Source File
# Begin Source File

SOURCE=..\ref_ptr.h
# End Source File
# Begin Source File

SOURCE=..\Rule.h
# End Source File
# Begin Source File

SOURCE=..\RuleExtender.h
# End Source File
# Begin Source File

SOURCE=..\SaturationProcess.h
# End Source File
# Begin Source File

SOURCE=..\Schema.h
# End Source File
# Begin Source File

SOURCE=..\semiring.h
# End Source File
# Begin Source File

SOURCE=..\Traits.h
# End Source File
# Begin Source File

SOURCE=..\Witness.h
# End Source File
# Begin Source File

SOURCE=..\WPDS.h
# End Source File
# End Group
# Begin Source File

SOURCE=".\top-defines.txt"
# End Source File
# End Target
# End Project
