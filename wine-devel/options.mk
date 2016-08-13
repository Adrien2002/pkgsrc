# $NetBSD: options.mk,v 1.2 2016/06/19 17:04:44 Chips Exp $

PKG_OPTIONS_VAR=        PKG_OPTIONS.wine
PKG_SUPPORTED_OPTIONS= alsa capi cms coreaudio cups curses dbus fontconfig freetype gettext gettextpo gphoto glu gnutls gsm gstreamer hal jpeg ldap mpg123 netapi openal opencl opengl osmesa oss pcap png pthread pulse sane tiff v4l xcomposite xcursor xinerama xinput xinput2 xml xrandr xrender xhape xshm xslt xxf86vm zlib x
PKG_SUGGESTED_OPTIONS= cms curses dbus fontconfig freetype gettext gettextpo gphoto glu gnutls gsm gstreamer hal jpeg ldap mpg123 netapi openal opengl oss pcap png pthread tiff xcomposite xcursor xinerama xinput xinput2 xml xrender xhape xshm xslt xxf86vm zlib x

.include "../../mk/bsd.options.mk"

# No need to include a package to it because ALSA is for GNU/Linux and they already have it by default. NetBSD doesn't have it.
.if !empty(PKG_OPTIONS:Malsa)
CONFIGURE_ARGS+= --with-alsa
.else
CONFIGURE_ARGS+= --without-alsa
.endif

# There is no include yet because there is no package for capi, maybe later if necessary.
.if !empty(PKG_OPTIONS:Mcapi)
CONFIGURE_ARGS+= --with-capi
.else
CONFIGURE_ARGS+= --without-capi
.endif

.if !empty(PKG_OPTIONS:Mcms)
CONFIGURE_ARGS+= --with-cms
.include "../../graphics/lcms2/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-cms
.endif

# No need to include a package to it because CoreAudio is a part of Apple Mac OS X. It is already included in the OS X operating system. NetBSD doesn't have it.
.if !empty(PKG_OPTIONS:Mcoreaudio)
CONFIGURE_ARGS+= --with-coreaudio
.else
CONFIGURE_ARGS+= --without-coreaudio
.endif

.if !empty(PKG_OPTIONS:Mcups)
CONFIGURE_ARGS+= --with-cups
.include "../../print/cups/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-cups
.endif

.if !empty(PKG_OPTIONS:Mcurses)
USE_NCURSES= yes
CONFIGURE_ARGS+= --with-curses
.include "../../devel/ncurses/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-curses
.endif

.if !empty(PKG_OPTIONS:Mdbus)
CONFIGURE_ARGS+= --with-dbus
.include "../../sysutils/dbus/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-dbus
.endif

.if !empty(PKG_OPTIONS:Mfontconfig)
CONFIGURE_ARGS+= --with-fontconfig
.include "../../fonts/fontconfig/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-fontconfig
.endif

.if !empty(PKG_OPTIONS:Mfreetype)
CONFIGURE_ARGS+= --with-freetype
.include "../../graphics/freetype2/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-freetype
.endif

# There is no buildlink3.mk in devel/gettext.
.if !empty(PKG_OPTIONS:Mgettext)
CONFIGURE_ARGS+= --with-gettext
.else
CONFIGURE_ARGS+= --without-gettext
.endif

.if !empty(PKG_OPTIONS:Mgettextpo)
CONFIGURE_ARGS+= --with-gettextpo
.include "../../devel/gettext-tools/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-gettextpo
.endif

.if !empty(PKG_OPTIONS:Mgnutls)
CONFIGURE_ARGS+= --with-gnutls
.include "../../security/gnutls/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-gnutls
.endif

.if !empty(PKG_OPTIONS:Mgphoto)
CONFIGURE_ARGS+= --with-gphoto
.include "../../devel/libgphoto2/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-gphoto
.endif

.if !empty(PKG_OPTIONS:Mglu)
CONFIGURE_ARGS+= --with-glu
.include "../../graphics/glu/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-glu
.endif

.if !empty(PKG_OPTIONS:Mgsm)
CONFIGURE_ARGS+= --with-gsm
.include "../../audio/gsm/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-gsm
.endif

.if !empty(PKG_OPTIONS:Mgstreamer)
CONFIGURE_ARGS+= --with-gstreamer
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-gstreamer
.endif

.if !empty(PKG_OPTIONS:Mhal)
CONFIGURE_ARGS+= --with-hal
.include "../../sysutils/hal/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-hal
.endif

.if !empty(PKG_OPTIONS:Mjpeg)
CONFIGURE_ARGS+= --with-jpeg
.include "../../graphics/jpeg/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-jpeg
.endif

.if !empty(PKG_OPTIONS:Mldap)
CONFIGURE_ARGS+= --with-ldap
.include "../../databases/openldap-client/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-ldap
.endif

.if !empty(PKG_OPTIONS:Mmpg123)
CONFIGURE_ARGS+= --with-mpg123
.include "../../audio/mpg123/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-mpg123
.endif

.if !empty(PKG_OPTIONS:Mnetapi)
CONFIGURE_ARGS+= --with-netapi
.include "../../net/samba/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-netapi
.endif

.if !empty(PKG_OPTIONS:Mopenal)
CONFIGURE_ARGS+= --with-openal
.include "../../audio/openal-soft/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-openal
.endif

# Where is OpenCL ???
.if !empty(PKG_OPTIONS:Mopencl)
CONFIGURE_ARGS+= --with-opencl
.else
CONFIGURE_ARGS+= --without-opencl
.endif

# How to add OpenGL correctly ?
.if !empty(PKG_OPTIONS:Mopengl)
CONFIGURE_ARGS+= --with-opengl
.else
CONFIGURE_ARGS+= --without-opengl
.endif

# Is OSMesa too old ?
.if !empty(PKG_OPTIONS:Mosmesa)
CONFIGURE_ARGS+= --with-osmesa
.else
CONFIGURE_ARGS+= --without-osmesa
.endif

.if !empty(PKG_OPTIONS:Moss)
CONFIGURE_ARGS+= --with-oss
.include "../../mk/oss.buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-oss
.endif

.if !empty(PKG_OPTIONS:Mpcap)
CONFIGURE_ARGS+= --with-pcap
.include "../../net/libpcap/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-pcap
.endif

.if !empty(PKG_OPTIONS:Mpng)
CONFIGURE_ARGS+= --with-png
.include "../../graphics/png/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-png
.endif

.if !empty(PKG_OPTIONS:Mpthread)
CONFIGURE_ARGS+= --with-pthread
.include "../../mk/pthread.buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-pthread
.endif

.if !empty(PKG_OPTIONS:Mpulse)
CONFIGURE_ARGS+= --with-pulse
.include "../../audio/pulseaudio/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-pulse
.endif

.if !empty(PKG_OPTIONS:Msane)
CONFIGURE_ARGS+= --with-sane
.include "../../graphics/sane-backends/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-sane
.endif

.if !empty(PKG_OPTIONS:Mtiff)
CONFIGURE_ARGS+= --with-tiff
.include "../../graphics/tiff/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-tiff
.endif

.if !empty(PKG_OPTIONS:Mv4l)
CONFIGURE_ARGS+= --with-v4l
.include "../../graphics/libv4l/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-v4l
.endif

.if !empty(PKG_OPTIONS:Mx)
CONFIGURE_ARGS+= --with-x
.include "../../x11/libX11/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-x
.endif

.if !empty(PKG_OPTIONS:Mxcomposite)
CONFIGURE_ARGS+= --with-xcomposite
.include "../../x11/libXcomposite/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xcomposite
.endif

.if !empty(PKG_OPTIONS:Mxcursor)
CONFIGURE_ARGS+= --with-xcursor
.include "../../x11/libXcursor/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xcursor
.endif

.if !empty(PKG_OPTIONS:Mxinerama)
CONFIGURE_ARGS+= --with-xinerama
.include "../../x11/libXinerama/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xinerama
.endif

.if !empty(PKG_OPTIONS:Mxinput)
CONFIGURE_ARGS+= --with-xinput
.include "../../x11/libXi/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xinput
.endif

.if !empty(PKG_OPTIONS:Mxinput2)
CONFIGURE_ARGS+= --with-xinput2
.include "../../x11/inputproto/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xinput2
.endif

.if !empty(PKG_OPTIONS:Mxml)
CONFIGURE_ARGS+= --with-xml
.include "../../textproc/libxml2/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xml
.endif

.if !empty(PKG_OPTIONS:Mxrandr)
CONFIGURE_ARGS+= --with-xrandr
.include "../../x11/libXrandr/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xrandr
.endif

.if !empty(PKG_OPTIONS:Mxrender)
CONFIGURE_ARGS+= --with-xrender
.include "../../x11/libXrender/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xrender
.endif

.if !empty(PKG_OPTIONS:Mxshape)
CONFIGURE_ARGS+= --with-xshape
.include "../../x11/libXext/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xshape
.endif

.if !empty(PKG_OPTIONS:Mxshm)
CONFIGURE_ARGS+= --with-xshm
.include "../../x11/libXext/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xshm
.endif

.if !empty(PKG_OPTIONS:Mxslt)
CONFIGURE_ARGS+= --with-xslt
.include "../../textproc/libxslt/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xslt
.endif

.if !empty(PKG_OPTIONS:Mxxf86vm)
CONFIGURE_ARGS+= --with-xxf86vm
.include "../../x11/libXxf86vm/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-xxf86vm
.endif

.if !empty(PKG_OPTIONS:Mzlib)
CONFIGURE_ARGS+= --with-zlib
.include "../../devel/zlib/buildlink3.mk"
.else
CONFIGURE_ARGS+= --without-zlib
.endif
