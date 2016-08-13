--- dlls/kernel32/computername.c.orig	2016-06-10 16:04:01.000000000 +0200
+++ dlls/kernel32/computername.c	2016-06-23 17:19:53.000000000 +0200
@@ -71,7 +71,7 @@
  *
  *  Wine can use this technique only if the thread-safe gethostbyname_r is available.
  */
-#ifdef  HAVE_LINUX_GETHOSTBYNAME_R_6
+#if 0
 static BOOL dns_gethostbyname ( char *name, int *size )
 {
     struct hostent* host = NULL;
