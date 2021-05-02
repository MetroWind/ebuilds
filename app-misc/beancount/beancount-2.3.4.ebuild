EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} pypy3  )
inherit distutils-r1

DESCRIPTION="Double-entry accounting from text files"
HOMEPAGE="http://furius.ca/beancount/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="dev-python/python-dateutil dev-python/ply dev-python/google-api-python-client dev-python/click"
DEPEND="${RDEPEND} dev-python/setuptools"
BDEPEND=""

distutils_enable_tests pytest
