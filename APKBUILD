# Contributor: Sasha Gerrand <alpine-pkgs@sgerrand.com>
# Maintainer: Sasha Gerrand <alpine-pkgs@sgerrand.com>
pkgname=node-bower
_pkgrealname=bower
pkgver=1.8.0
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

md5sums="34c26bee216aa5da65671626b87d0524  node-bower-1.8.0.tar.gz
0bd85677e70f75ba0ac22c2ce7e566ef  10-npm-package-no-prepublish.patch"
sha256sums="1db61bf2605dfb67f16cd4d88f22f290dd0bf4c26ccc71bcd405fbdd9faf05fe  node-bower-1.8.0.tar.gz
5b818f118f80b811308dceef6b9d8f3e054a35828b2e61a5a4684d9a05f11d74  10-npm-package-no-prepublish.patch"
sha512sums="8bc3e1d44396c47bed872168798cc36f41b57f45bd43a7b4f8ac1c09c48322357b8d707d6aa53f9cec1d6e3fe82dea24fca45cd083d92b08bcba5cdb79c01707  node-bower-1.8.0.tar.gz
b906612821e87cbfe8a5f4f350fd7c67df17c99eb64d816658fd25aea9ff3aeaea2a8a62aec2d29d99785c9c0feea7c3cbfe7dfcd15e166a3d5191a365b1fa7f  10-npm-package-no-prepublish.patch"
