#
# SYNOPSIS
#
#   PERL_AUTOFRISK_MODULES(MODULES,[ACTION-IF-TRUE],[ACTION-IF-FALSE])
#
# This macro looks if the supplied MODULES are available under the perl
# interpreter supplied into the PERL environment variable.
# All log message will be dumped to config.log.
#
# COPYLEFT
#
#  Copyright (c) 2008 Francesco Salvestrini <salvestrini@users.sourceforge.net>
#
#   This program is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License as
#   published by the Free Software Foundation; either version 2 of the
#   License, or (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful, but
#   WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
#   General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
#   02111-1307, USA.

AC_DEFUN([PERL_AUTOFRISK_MODULES],[
  pa_perl_modules="$1"

  AS_IF([test -n "$PERL"],[
    pa_perl_modules_failed=0
    for pa_perl_module in $pa_perl_modules; do
      AC_MSG_CHECKING(for perl module $pa_perl_module)

      # Perform check and log its output to config.log
      AS_IF([AC_TRY_COMMAND($PERL "-M$pa_perl_module" -e exit 1>&AS_MESSAGE_LOG_FD)],[
        AC_MSG_RESULT([yes]);
      ],[
        AC_MSG_RESULT([no]);
        pa_perl_modules_failed=1
      ])
    done

    AS_IF([test "$pa_perl_modules_failed" = 0],[
      :
      $2
    ],[
      :
      $3
    ])
  ],[
    :
    $3
  ])
])
