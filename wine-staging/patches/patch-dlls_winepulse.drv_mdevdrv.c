--- dlls/winepulse.drv/mmdevdrv.c.orig	2016-06-22 01:45:06.000000000 +0200
+++ dlls/winepulse.drv/mmdevdrv.c	2016-06-22 01:45:58.000000000 +0200
@@ -98,7 +98,6 @@
         DisableThreadLibraryCalls(dll);
 
         pthread_mutexattr_init(&attr);
-        pthread_mutexattr_setprotocol(&attr, PTHREAD_PRIO_INHERIT);
 
         if (pthread_mutex_init(&pulse_lock, &attr) != 0)
             pthread_mutex_init(&pulse_lock, NULL);
