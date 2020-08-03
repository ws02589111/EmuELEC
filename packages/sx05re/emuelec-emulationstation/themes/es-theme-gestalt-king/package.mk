# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="es-theme-gestalt-king"
PKG_VERSION="e07080f0e45d500d67686336a49fad943eb1d446"
PKG_SHA256="eb7f4e3578c6a9a4cc2327e3eeab92f5e2225e65aa70c9c0f1215682956c7129"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/ws02589111/es-theme-gestalt-king"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="emuelec"
PKG_SHORTDESC="The EmulationStation theme gestalt king"
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
PKG_TOOLCHAIN="manual"

make_target() {
  : not
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/config/emulationstation/themes/es-theme-gestalt-king
    cp -r * $INSTALL/usr/config/emulationstation/themes/es-theme-gestalt-king
}
