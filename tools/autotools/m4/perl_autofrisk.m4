#
# Autogenerated file, DO NOT EDIT
#

#
# Files matching regexps:
#
#  /home/francesco/Sviluppo/modfriskers/modfriskers/perl-autofrisk
#  /home/francesco/Sviluppo/modfriskers/modfriskers/python-autofrisk
#

AC_DEFUN([PERL_AUTOFRISK_CHECKS],[
    #AX_PROG_PERL_MODULES([warnings],[],[])
    #AX_PROG_PERL_MODULES([strict],[],[])
    AX_PROG_PERL_MODULES([File::Find],[],[
        AC_MSG_ERROR([cannot find perl module File::Find])
    ])
    AX_PROG_PERL_MODULES([File::Spec],[],[
        AC_MSG_ERROR([cannot find perl module File::Spec])
    ])
    AX_PROG_PERL_MODULES([Cwd],[],[
        AC_MSG_ERROR([cannot find perl module Cwd])
    ])
    AX_PROG_PERL_MODULES([File::stat],[],[
        AC_MSG_ERROR([cannot find perl module File::stat])
    ])
])

AC_DEFUN([PERL_AUTOFRISK_SUMMARY],[
])