# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="dosbox-pure"
PKG_VERSION="96837aca8b547a484603917cfd5a3b81c94cd5bc"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/schellingb/dosbox-pure"
PKG_URL="$PKG_SITE.git"
PKG_DEPENDS_TARGET="toolchain linux glibc glib systemd dbus alsa-lib SDL2-git SDL2_net SDL_sound libpng zlib libvorbis flac libogg fluidsynth-git munt opusfile"
PKG_LONGDESC="DOSBox Pure is a new fork of DOSBox built for RetroArch/Libretro aiming for simplicity and ease of use. "
PKG_TOOLCHAIN="make"
PKG_BUILD_FLAGS="+lto"


pre_configure_target() {

if [ "$PROJECT" == "Amlogic" ]; then
	PKG_MAKE_OPTS_TARGET=" platform=emuelec"
elif [ "$PROJECT" == "Amlogic-ng" ]; then
	PKG_MAKE_OPTS_TARGET=" platform=emuelec-ng"
else
	PKG_MAKE_OPTS_TARGET=" platform=emuelec-hh"
fi	
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp dosbox_pure_libretro.so $INSTALL/usr/lib/libretro/dosbox_pure_libretro.so
  cp dosbox_pure_libretro.info $INSTALL/usr/lib/libretro/dosbox_pure_libretro.info
  
}
