# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="es-theme-Supreme-EmuELEC"
PKG_VERSION="b319fcdaef79d60c0a052212352d690831c31b57"
PKG_SHA256="07e75b31d797d4630eae23fdbb758ed1a9079c9b38b3ce48ae69921209f02bdd"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/EmuELEC/es-theme-Supreme-EmuELEC"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="emuelec"
PKG_SHORTDESC="Supreme Retro tem como base os temas Hursty"
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
PKG_TOOLCHAIN="manual"

make_target() {
  : not
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/config/emulationstation/themes/es-theme-Supreme-EmuELEC
    cp -r * $INSTALL/usr/config/emulationstation/themes/es-theme-Supreme-EmuELEC
}
