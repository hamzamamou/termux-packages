TERMUX_PKG_HOMEPAGE=https://luarocks.org/
TERMUX_PKG_DESCRIPTION="Deployment and management system for Lua modules"
TERMUX_PKG_VERSION=2.4.3
TERMUX_PKG_SHA256=4d414d32fed5bb121c72d3ff1280b7f2dc9027a9bc012e41dfbffd5b519b362e
TERMUX_PKG_SRCURL=https://luarocks.org/releases/luarocks-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_DEPENDS="curl, lua"
TERMUX_PKG_BUILD_DEPENDS="liblua-dev"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_PLATFORM_INDEPENDENT=yes

termux_step_configure () {
	./configure --prefix=$TERMUX_PREFIX \
		--with-lua=$TERMUX_PREFIX \
		--lua-version=5.3
}
