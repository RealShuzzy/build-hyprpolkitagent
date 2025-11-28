pkgname=hyprpolkitagent-shuzzyos
pkgver=0.1.3
pkgrel=3
pkgdesc='Simple polkit authentication agent for Hyprland, written in QT/QML'
arch=(x86_64 aarch64)
url="https://github.com/hyprwm/hyprpolkitagent"
license=(BSD-3-Clause)
depends=(gcc-libs # libgcc_s.so libstdc++.so
         glibc # libc.so libm.so
         hyprland-qt-support
         hyprutils libhyprutils.so
         polkit-qt6 # libpolkit-qt6-core-1.so libpolkit-qt6-agent-1.so
         qt6-base # libQt6Widgets.so libQt6Gui.so libQt6Qml.so libQt6Core.so
         qt6-declarative) # libQt6QuickControls2.so
makedepends=(cmake)
_archive="hyprpolkitagent-$pkgver"
source=("$url/archive/v$pkgver/$_archive.tar.gz")
sha256sums=('SKIP')

build() {
	cd "$_archive"

	rsync -r --delete "../../qml/" qml/

	cmake -B build \
		-D CMAKE_INSTALL_PREFIX=/usr \
		-D CMAKE_INSTALL_LIBEXECDIR=lib/$pkgname \
		-D CMAKE_BUILD_TYPE=Release
	cmake --build build
}

package() {
	cd "$_archive"
	DESTDIR="$pkgdir" cmake --install build
	install -Dm0644 -t "$pkgdir/usr/share/licenses/$pkgname" LICENSE
}


