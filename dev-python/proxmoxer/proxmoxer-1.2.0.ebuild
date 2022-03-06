EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} pypy3  )
inherit distutils-r1

DESCRIPTION="Python wrapper for Proxmox API v2"
HOMEPAGE="https://github.com/proxmoxer/proxmoxer"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="dev-python/requests"
DEPEND="${RDEPEND} dev-python/setuptools"
BDEPEND=""

distutils_enable_tests pytest
