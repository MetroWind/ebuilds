EAPI=7

inherit cmake git-r3

DESCRIPTION="Brother laser printer driver"
HOMEPAGE="https://github.com/pdewacht/brlaser"
EGIT_REPO_URI="https://github.com/pdewacht/brlaser"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""


DEPEND="net-print/cups"
RDEPEND="
	${DEPEND}
	app-text/ghostscript-gpl"
