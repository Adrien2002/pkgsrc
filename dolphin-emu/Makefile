# $NetBSD$

GITHUB_PROJECT=	dolphin
DISTNAME=	5.0
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	wip
MASTER_SITES=	${MASTER_SITE_GITHUB:=dolphin-emu/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	adrien_fernandes2@hotmail.com
HOMEPAGE=	https://github.com/dolphin-emu/dolphin/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

WRKSRC=		${WRKDIR}/dolphin-5.0
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++
EXTRACT_USING=	gtar

PKGCONFIG_OVERRIDE+=	Externals/enet/libenet.pc.in

.include "../../x11/libXrandr/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../audio/openal-soft/buildlink3.mk"
.include "../../audio/soundtouch/buildlink3.mk"
.include "../../audio/portaudio-devel/buildlink3.mk"
.include "../../audio/libao/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../multimedia/ffmpeg3/buildlink3.mk"
.include "../../devel/libusb1/buildlink3.mk"
.include "../../security/mbedtls/buildlink3.mk"
.include "../../wip/soil/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
