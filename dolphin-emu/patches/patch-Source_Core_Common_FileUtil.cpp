--- Source/Core/Common/FileUtil.cpp.orig	2016-08-13 19:49:24.279489845 +0200
+++ Source/Core/Common/FileUtil.cpp	2016-08-13 19:49:43.377874106 +0200
@@ -45,7 +45,7 @@
 #define S_ISDIR(m)  (((m)&S_IFMT) == S_IFDIR)
 #endif
 
-#if defined BSD4_4 || defined __FreeBSD__
+#if defined BSD4_4 || defined __NetBSD__
 #define stat64 stat
 #define fstat64 fstat
 #endif
