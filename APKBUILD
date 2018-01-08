# Contributor: Sasha Gerrand <alpine-pkgs@sgerrand.com>
# Maintainer: Sasha Gerrand <alpine-pkgs@sgerrand.com>
pkgname=node-bower
_pkgrealname=bower
pkgver=1.8.2
pkgrel=0
pkgdesc="A package manager for the web"
url="https://bower.io"
arch="noarch"
license="MIT"
depends="nodejs"
depends_dev=""
makedepends="$depends_dev git"
install=""
source="$pkgname-$pkgver.tar.gz::https://github.com/$_pkgrealname/$_pkgrealname/archive/$pkgver.tar.gz
		10-npm-package-no-prepublish.patch"

builddir="$srcdir"/$_pkgrealname-$pkgver

prepare() {
	local i
	cd "$builddir"
	for i in $source; do
	    case $i in
		    *.patch) msg $i; patch -p1 -i "$srcdir"/$i || return 1;;
	    esac
	done
}

build() {
	return 0
}

package() {
	cd "$builddir"
	npm install -g --user root --prefix "$pkgdir"/usr "$srcdir"/$pkgname-$pkgver.tar.gz
	rm -r "$pkgdir"/usr/etc
	install -D -m644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}

sha512sums="f77fcbd4df9617d1ff136311ebdad701dd0ed25d44a9c6a11dd5f0bf40dbd1b0dd5b30c4001fa8f6c19dd2ceea626c7686150f9e2e885d67876ccf9d63156a02  node-bower-1.8.2.tar.gz
b906612821e87cbfe8a5f4f350fd7c67df17c99eb64d816658fd25aea9ff3aeaea2a8a62aec2d29d99785c9c0feea7c3cbfe7dfcd15e166a3d5191a365b1fa7f  10-npm-package-no-prepublish.patch"
