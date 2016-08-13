--- Externals/SFML/include/SFML/Config.hpp.orig	2016-08-13 16:29:50.019949400 +0200
+++ Externals/SFML/include/SFML/Config.hpp	2016-08-13 16:30:35.140316418 +0200
@@ -54,10 +54,10 @@
     // MacOS
     #define SFML_SYSTEM_MACOS
 
-#elif defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
+#elif defined(__NetBSD__) || defined(__NetBSD_kernel__)
 
-    // FreeBSD
-    #define SFML_SYSTEM_FREEBSD
+    // NetBSD
+    #define SFML_SYSTEM_NETBSD
 
 #else
 
@@ -95,7 +95,7 @@
 
         #endif
 
-    #else // Linux, FreeBSD, Mac OS X
+    #else // Linux, NetBSD, Mac OS X
 
         #if __GNUC__ >= 4
 
