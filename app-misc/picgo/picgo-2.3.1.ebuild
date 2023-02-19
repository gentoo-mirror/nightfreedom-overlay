# Copyright 2023 ChatGPT <chatgpt@example.com>
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit nodejs

DESCRIPTION="A simple and beautiful image uploader for Windows, macOS and Linux"
HOMEPAGE="https://github.com/Molunerfinn/PicGo"
SRC_URI="https://github.com/Molunerfinn/PicGo/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
    >=dev-lang/nodejs-10.0.0
    >=dev-util/yarn-1.0.0
"

src_install() {
    nodejs_src_install
    # install the picgo binary to /usr/bin
    dobin bin/picgo
}
