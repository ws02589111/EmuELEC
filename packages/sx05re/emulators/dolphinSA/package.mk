# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="dolphinSA"
PKG_VERSION="1fe0953bd50088891df03c38b27cc3fd2a5196ff"
PKG_SHA256="d6b9744b2209ee9fa1693d59875ea41697b86e75cbd07831e32314899ebdc21f"
PKG_ARCH="aarch64"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/dolphin-emu/dolphin"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain qt-everywhere libevdev"
PKG_LONGDESC="Dolphin is a GameCube / Wii emulator, allowing you to play games for these two platforms on PC with improvements. "
PKG_BUILD_FLAGS="-lto"

PKG_CMAKE_OPTS_TARGET=" -DENABLE_LTO=on -DDISTRIBUTOR='EmuELEC' -DBUILD_SHARED_LIBS=OFF -DTHREADS_PTHREAD_ARG=OFF -DENABLE_FBDEV=ON -DENABLE_EGL=ON -DENABLE_X11=OFF -DENABLE_NOGUI=ON -DUSE_DISCORD_PRESENCE=OFF -DCMAKE_BUILD_TYPE=Release"

makeinstall_target() {
export CXXFLAGS="`echo $CXXFLAGS | sed -e "s|-O.|-O2|g"`"
mkdir -p $INSTALL/usr/bin
cp -rf $PKG_BUILD/.${TARGET_NAME}/Binaries/dolphin-emu-nogui $INSTALL/usr/bin
cp -rf $PKG_DIR/scripts/* $INSTALL/usr/bin

mkdir -p $INSTALL/usr/config/emuelec/configs/dolphin-emu
cp -rf $PKG_BUILD/Data/Sys/* $INSTALL/usr/config/emuelec/configs/dolphin-emu
cp -rf $PKG_DIR/config/* $INSTALL/usr/config/emuelec/configs/dolphin-emu
}
