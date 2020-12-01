# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PATCH_VER="4"

inherit toolchain

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"

RDEPEND=""
BDEPEND="${CATEGORY}/binutils"

src_prepare() {
	has_version '>=sys-libs/glibc-2.32-r1' && rm -v "${WORKDIR}/patch/23_all_disable-riscv32-ABIs.patch"
	toolchain_src_prepare
	eapply "${FILESDIR}"/0002-posix_memalign.patch
	eapply "${FILESDIR}"/0008-s390x-muslldso.patch
	eapply "${FILESDIR}"/020_all_msgfmt-libstdc++-link.patch
	eapply "${FILESDIR}"/202-ibm-ldbl.patch
	eapply "${FILESDIR}"/205-nopie.patch
	eapply "${FILESDIR}"/320-libffi-gnulinux.patch
	eapply "${FILESDIR}"/330-gccgo-link-to-ucontext.patch
	eapply "${FILESDIR}"/331-gccgo-use-real-off_t-type.patch
	eapply "${FILESDIR}"/332-gccgo-sysinfo.patch
	eapply "${FILESDIR}"/334-gccgo-signal-shell.patch
	eapply "${FILESDIR}"/337-gccgo-signal-sig34.patch
	eapply "${FILESDIR}"/340-gccgo-time64-stat.patch
	eapply "${FILESDIR}"/ada-shared.patch
	eapply "${FILESDIR}"/add-classic_table-support.patch
	eapply "${FILESDIR}"/gcc-4.9-musl-fortify.patch
	eapply "${FILESDIR}"/gcc-5.4.0-locale.patch
}
