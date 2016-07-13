# Contributor: Sasha Gerrand <alpine-pkgs@sgerrand.com>
# Maintainer: Sasha Gerrand <alpine-pkgs@sgerrand.com>
pkgname=node-bower
_pkgrealname=bower
pkgver=1.7.9
pkgrel=0
pkgdesc="A package manager for the web"
url="https://bower.io"
arch="noarch"
license="MIT"
depends="nodejs"
depends_dev=""
makedepends="$depends_dev git"
install=""
source="$pkgname-$pkgver.tar.gz::https://github.com/$_pkgrealname/$_pkgrealname/archive/v$pkgver.tar.gz
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

md5sums="d5b0e85eb23ee6721d1ba623f162c6a7  node-bower-1.7.9.tar.gz
0bd85677e70f75ba0ac22c2ce7e566ef  10-npm-package-no-prepublish.patch"
sha256sums="55ff05b6e86a767c04ef5bf3408438bee565862070e13ee0b327af5b76e446f8  node-bower-1.7.9.tar.gz
5b818f118f80b811308dceef6b9d8f3e054a35828b2e61a5a4684d9a05f11d74  10-npm-package-no-prepublish.patch"
sha512sums="23a24825d04ac829f3869ca9663f4e70bb0ec46068b99be53a19346dde7ac1be13f28a8f1b7205d71fc6c3d4c938bf2cb8579a6b1266a23a3e118a46b5e64064  node-bower-1.7.9.tar.gz
b906612821e87cbfe8a5f4f350fd7c67df17c99eb64d816658fd25aea9ff3aeaea2a8a62aec2d29d99785c9c0feea7c3cbfe7dfcd15e166a3d5191a365b1fa7f  10-npm-package-no-prepublish.patch"
