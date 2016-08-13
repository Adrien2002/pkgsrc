--- server/scheduler.c.orig	2016-06-25 17:58:45.000000000 +0200
+++ server/scheduler.c	2016-07-05 22:20:27.000000000 +0200
@@ -24,6 +24,7 @@
 #define _GNU_SOURCE  /* for SCHED_BATCH, SCHED_IDLE */
 #include <assert.h>
 #include <stdio.h>
+#include <stdarg.h>
 #ifdef HAVE_SYS_RESOURCE_H
 # include <sys/resource.h>
 #endif
