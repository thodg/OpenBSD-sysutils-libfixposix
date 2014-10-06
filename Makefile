# $OpenBSD $

COMMENT =	thin wrapper over POSIX syscalls

V =		0.3.0
PKGNAME =	libfixposix-${V}
CATEGORIES =	sysutils

MASTER_SITES =	https://github.com/sionescu/libfixposix/archive/
DISTNAME =	v${V}

HOMEPAGE =	https://github.com/sionescu/libfixposix
MAINTAINER =	Thomas de Grivel <thomas@lowh.net>

SHARED_LIBS +=  fixposix                   3.0

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/${PKGNAME}
CONFIGURE_STYLE =	gnu

pre-configure:
	cd ${WRKDIST} && autoreconf -i

.include <bsd.port.mk>
