# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8

DESCRIPTION="A simple & beautiful tool for pictures uploading built by electron-vue"
HOMEPAGE="https://github.com/Molunerfinn/PicGo"
SRC_URI="https://github.com/Molunerfinn/PicGo/releases/download/v{PV}/PicGo-{PV}.AppImage"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""

QA_PREBUILT="/opt/${PN}/${PN}.AppImage"

src_install() {
	insinto /opt/${PN}
	doins "${P}.AppImage"
	dosym "/opt/${PN}/${PN}.AppImage" "/usr/bin/${PN}"
}

pkg_postinst() {
	elog "PicGo has been installed to /opt/PicGo."
	elog "You can start it by running 'PicGo' in the command line or by clicking on the icon in your desktop environment."
}

pkg_postrm() {
	if [[ -f "/usr/bin/${PN}" ]] && ! qlist -Iv "${PN}" &> /dev/null; then
	elog "Removing the symlink to /usr/bin/${PN}."
	rm -f "/usr/bin/${PN}"
	fi
}

pkg_prerm() {
	if [[ -f "/usr/bin/${PN}" ]] && ! qlist -Iv "${PN}" &> /dev/null; then
	elog "Removing the symlink to /usr/bin/${PN}."
	rm -f "/usr/bin/${PN}"
	fi
}

pkg_config() {
	fowners root:root /opt/${PN}
	fperms 0755 /opt/${PN}/${PN}.AppImage
}
