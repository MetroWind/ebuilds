# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3

DESCRIPTION="A Qt5-based IM client for Matrix"
HOMEPAGE="https://github.com/quotient-im/Quaternion"
EGIT_REPO_URI="https://github.com/quotient-im/Quaternion.git"

LICENSE="GPL-3"
KEYWORDS="~amd64"
IUSE="+keychain"
SLOT="0"

RDEPEND=""
DEPEND="
	dev-qt/qtwidgets:5=
	dev-qt/qtnetwork:5=
	dev-qt/qtquickcontrols:5=
	dev-qt/qtquickcontrols2:5=
	dev-qt/qtscript:5=
	dev-qt/qtgui:5=
	dev-qt/linguist-tools:5=
	dev-qt/qtmultimedia:5=
	>=net-libs/libqmatrixclient-0.5.1:=
	keychain? ( dev-libs/qtkeychain:= )
"
BDEPEND=""

src_prepare() {
	# I wouldn't be surprised that Qt on a Ubuntu PPA is broken
	# https://github.com/quotient-im/Quaternion/pull/484/files#r256167611
	sed -i 's/Multimedia DBus)/Multimedia)/' CMakeLists.txt || die "Failed removing hard-dep on QtDbus"

	default
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DUSE_KEYCHAIN=$(usex keychain)
	)

	cmake_src_configure
}
