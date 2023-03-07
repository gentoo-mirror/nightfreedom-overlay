# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop xdg-utils

_APPIMAGE="${P}.AppImage"
_APPHOME="${EPREFIX}/opt/${PN}"
_EXEC="${EPREFIX}/usr/bin/${PN}"
_DESKTOP_DIR="${EPREFIX}/usr/share/applications"

_ICONS_CONTEXT="apps"
_ICONS_THEME="hicolor"

_APPROOT="squashfs-root"
_DESKTOP="${_APPROOT}/picgo.desktop"
_USR_DIR="${_APPROOT}/usr"
_ICONS_DIR="${_USR_DIR}/share/icons"

DESCRIPTION="A simple & beautiful tool for pictures uploading built by electron-vue"
HOMEPAGE="https://github.com/Molunerfinn/PicGo"
SRC_URI="https://github.com/Molunerfinn/PicGo/releases/download/v${PV}/PicGo-${PV}.AppImage -> ${_APPIMAGE}"
LICENSE="MIT"
RESTRICT="strip bindist mirror"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
	${DEPEND}
	dev-libs/glib
	dev-libs/nss
	app-accessibility/at-spi2-core
	media-libs/alsa-lib
"
BDEPEND="
	sys-fs/fuse:0
"
S="${WORKDIR}"

src_unpack() {
	cp "${DISTDIR}/${_APPIMAGE}" "${WORKDIR}/"
	chmod +x "${_APPIMAGE}"
	./"${_APPIMAGE}" --appimage-extract
}

src_prepare() {
	# Adjust .desktop so it will work outside of AppImage container
	sed -i -E "s|Exec=AppRun|Exec=env DESKTOPINTEGRATION=false ${_EXEC}|" "${_DESKTOP}"
	# Fix permissions; .AppImage permissions are 700 for all directories
	chmod -R a-x+rX "${_USR_DIR}"

	eapply_user
}

src_install() {
	# AppImage
	insinto "${_APPHOME}"
	doins "${_APPIMAGE}"
	chmod 755 "${D}/${_APPHOME}/${_APPIMAGE}"

	# Symlink executable
	dosym "${_APPHOME}/${_APPIMAGE}" "${_EXEC}"

	# Icons
	for icons_dir in "${_ICONS_DIR}/${_ICONS_THEME}/"*; do
		size="${icons_dir##*/*x}"
		newicon -s "${size}" -c "${_ICONS_CONTEXT}" -t "${_ICONS_THEME}" "${icons_dir}/${_ICONS_CONTEXT}/picgo.png" "${PN}.png"
	done

	# Desktop
	insinto "${_DESKTOP_DIR}"
	doins "${_DESKTOP}"
}

pkg_postinst() {
	xdg_icon_cache_update
	xdg_desktop_database_update
}
