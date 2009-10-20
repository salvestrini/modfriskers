# Process this file with autoconf to produce a configure script.

#
# configure.ac for grammar-extractors
#
# Copyright (C) 2008, 2009 Francesco Salvestrini
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

AC_INIT([ModFriskers],
        m4_esyscmd([tools/maint/git-version-gen .tarball-version]),
        [salvestrini@gmail.com],
        [modfriskers],
        [http://github.com/salvestrini/modfriskers])

# Check for a recent version of autoconf
AC_PREREQ([2.64])

# Place/find all autotools related files in the following directories
AC_CONFIG_AUX_DIR([tools/autotools])
AC_CONFIG_MACRO_DIR([tools/autotools/m4])
AC_CONFIG_SRCDIR([src/perl-autofrisk.in])

#
# For automake options (AM_INIT_AUTOMAKE options) see Makefile.am
# file, AUTOMAKE_OPTIONS variable
#
AM_INIT_AUTOMAKE([1.10 foreign std-options -Wall])

#
# Build related programs
#
AC_PROG_INSTALL
AC_PROG_MAKE_SET
AC_PROG_LN_S
AC_PROG_MKDIR_P
AC_PROG_GREP
AC_PROG_SED
AC_PROG_AWK

AX_PATH_MISSING([HELP2MAN], [help2man])
AX_PATH_MISSING([WGET],     [wget])
AX_PATH_MISSING([DNT],      [dnt])

#
# Runtime related programs
#
AX_WITH_PERL
AS_IF([test -z "$PERL"],[
        have_perl=no
        AC_MSG_ERROR([Missing required Perl interpreter])
],[
        have_perl=yes
        AX_PROG_PERL_VERSION([5.8.0],[],[
                AC_MSG_ERROR([Missing required Perl interpreter version >= 5.8.0])
        ])

        # Add module checks
        AX_PROG_PERL_MODULES([strict warnings File::Find File::Spec File::stat Cwd],[],[
            AC_MSG_ERROR([cannot find a required perl module])
        ])
])

AX_WITH_PYTHON
AS_IF([test -z "$PYTHON"],[
        have_python=no
],[
        have_python=yes
        AX_PROG_PYTHON_VERSION([2.5.0],[],[
                AC_MSG_ERROR([Missing required Perl interpreter version >= 2.5.0])
        ])
])

AM_CONDITIONAL([HAVE_PERL],  [ test "$have_perl"   = "yes"])
AM_CONDITIONAL([HAVE_PYTHON],[ test "$have_python" = "yes"])

AX_SPLIT_VERSION($PACKAGE_VERSION, AX_MAJOR_VERSION, AX_MINOR_VERSION, AX_MICRO_VERSION, AX_EXTRA_VERSION)

AC_SUBST([PACKAGE_API],[${AX_MAJOR_VERSION}"."${AX_MINOR_VERSION}])

# Versioned directories, defined here for convenience
AC_SUBST(pkgvdir,     ["\${datadir}/${PACKAGE}-${PACKAGE_API}"])
AC_SUBST(pkgvbindir,  ["\${datadir}/${PACKAGE}-${PACKAGE_API}/bin"])
AC_SUBST(pkgvlibsdir, ["\${datadir}/${PACKAGE}-${PACKAGE_API}/libs"])

AC_CONFIG_FILES([
        Makefile

        src/Makefile
        man/Makefile

        tests/Makefile

        tools/Makefile
        tools/maint/Makefile
        tools/autotools/Makefile
        tools/autotools/m4/Makefile
])

AC_CONFIG_FILES([tools/maint/fetch],               [chmod +x tools/maint/fetch])
AC_CONFIG_FILES([tools/maint/whitespace-detect],   [chmod +x tools/maint/whitespace-detect])
AC_CONFIG_FILES([tools/maint/gitlog-to-committers],[chmod +x tools/maint/gitlog-to-committers])
AC_CONFIG_FILES([tools/maint/gittag-to-date],      [chmod +x tools/maint/gittag-to-date])

AC_OUTPUT
