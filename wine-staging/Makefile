# $NetBSD: options.mk,v 1.7 2016/06/19 17:04:44 Chips Exp $

DISTNAME=	staging-1.9.14
CATEGORIES=	wip
MASTER_SITES=	https://github.com/wine-compholio/wine-patched/archive/
EXTRACT_SUFX=	.tar.gz
WRKSRC=		${WRKDIR}/wine-patched-staging-1.9.14

MAINTAINER=	adrien_fernandes2@hotmail.com
HOMEPAGE=	https://www.winehq.org/
COMMENT=	A compatibility layer capable of running Windows applications on several POSIX-compliant operating systems, such as Linux, Mac OSX, & BSD.
LICENSE=	gnu-lgpl-v2.1

USE_LANGUAGES=		c c++
EXTRACT_USING=		gtar
GNU_CONFIGURE=		yes

.include "options.mk"

.include "../../mk/bsd.pkg.mk"
