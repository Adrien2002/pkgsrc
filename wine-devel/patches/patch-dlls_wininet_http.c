--- dlls/wininet/http.c.orig	2016-06-10 16:04:01.000000000 +0200
+++ dlls/wininet/http.c	2016-06-19 03:18:59.000000000 +0200
@@ -29,6 +29,12 @@
 
 #include "config.h"
 
+#include <stdarg.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <time.h>
+#include <assert.h>
+
 #ifdef HAVE_ZLIB
 #  include <zlib.h>
 #endif
@@ -36,11 +42,6 @@
 #include "winsock2.h"
 #include "ws2ipdef.h"
 
-#include <stdarg.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <time.h>
-#include <assert.h>
 #include "windef.h"
 #include "winbase.h"
 #include "wininet.h"
