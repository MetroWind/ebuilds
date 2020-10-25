# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Dwarf management tool for Dwarf Fortress"
HOMEPAGE="https://github.com/Dwarf-Therapist/Dwarf-Therapist"
SRC_URI="https://github.com/Dwarf-Therapist/Dwarf-Therapist/archive/v41.1.7.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND} dev-util/cmake dev-qt/qtdeclarative dev-qt/qtgui dev-qt/qtwidgets
                   dev-qt/qtconcurrent"
BDEPEND=""

src_unpack()
{
    default
    mv $WORKDIR/{Dwarf-Therapist,${PN}}-${PV}
}
