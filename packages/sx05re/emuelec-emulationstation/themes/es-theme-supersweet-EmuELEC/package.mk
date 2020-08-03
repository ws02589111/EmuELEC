# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="es-theme-supersweet-EmuELEC"
PKG_VERSION="89fd3334888050b7495ac616c45eb83e2fb87113"
PKG_SHA256="2bb8c7e98af627fd3b7e007b1a9736dde2d09becad5dc614f819f54482a50ee4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/EmuELEC/es-theme-supersweet-EmuELEC"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="emuelec"
PKG_SHORTDESC="es-theme-supersweet-EmuELEC"
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
PKG_TOOLCHAIN="manual"

make_target() {
  : not
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/config/emulationstation/themes/es-theme-supersweet-EmuELEC
    cp -r * $INSTALL/usr/config/emulationstation/themes/es-theme-supersweet-EmuELEC
}
