--- Source/Core/Common/MemoryUtil.cpp.orig	2016-08-13 19:54:08.340034026 +0200
+++ Source/Core/Common/MemoryUtil.cpp	2016-08-13 19:54:28.388684133 +0200
@@ -20,7 +20,7 @@
 #include <stdio.h>
 #include <sys/mman.h>
 #include <sys/types.h>
-#if defined __APPLE__ || defined __FreeBSD__
+#if defined __APPLE__ || defined __NetBSD__
 #include <sys/sysctl.h>
 #else
 #include <sys/sysinfo.h>
@@ -249,13 +249,13 @@
 	memInfo.dwLength = sizeof(MEMORYSTATUSEX);
 	GlobalMemoryStatusEx(&memInfo);
 	return memInfo.ullTotalPhys;
-#elif defined __APPLE__ || defined __FreeBSD__
+#elif defined __APPLE__ || defined __NetBSD__
 	int mib[2];
 	size_t physical_memory;
 	mib[0] = CTL_HW;
 #ifdef __APPLE__
 	mib[1] = HW_MEMSIZE;
-#elif defined __FreeBSD__
+#elif defined __NetBSD__
 	mib[1] = HW_REALMEM;
 #endif
 	size_t length = sizeof(size_t);
