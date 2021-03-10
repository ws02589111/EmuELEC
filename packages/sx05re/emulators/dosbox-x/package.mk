# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="dosbox-x"
PKG_VERSION="556c084d42516e2f81df805e06ece24f2ecaed9e"
PKG_SHA256="b8a724b1f57fb9d0cba445ea1b535c135383b9cd25b6ad6415560a440eb456ce"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/joncampbell123/dosbox-x"
PKG_URL="$PKG_SITE/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain linux glibc glib systemd dbus alsa-lib SDL2-git SDL2_net SDL_sound libpng zlib libvorbis flac libogg fluidsynth-git munt"
PKG_LONGDESC="DOSBox-X fork of the DOSBox project."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="+lto"

pre_configure_target() {
  cd ${PKG_BUILD}
  rm -rf .${TARGET_NAME}

  PKG_CONFIGURE_OPTS_TARGET="--prefix=/usr \
                             --enable-core-inline \
                             --enable-dynrec \
                             --enable-unaligned_memory \
                             --disable-sdl \
							 --enable-sdl2 \
							 --enable-mt32 \
                             --with-sdl2-prefix=${SYSROOT_PREFIX}/usr"
}

pre_make_target() {
  # Define DOSBox version
  sed -e "s/SVN/SDL2/" -i ${PKG_BUILD}/config.h
}

post_makeinstall_target() {
  # Create config directory & install config
  mkdir -p ${INSTALL}/usr/config/emuelec/configs/dosbox-x/
  cp -a ${PKG_DIR}/scripts/* ${INSTALL}/usr/bin/
  cp -a ${PKG_DIR}/config/*  ${INSTALL}/usr/config/emuelec/configs/dosbox-x/
}
