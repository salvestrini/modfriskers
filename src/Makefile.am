##
## Input file for automake
##
## Copyright (C) 2008, 2009 Francesco Salvestrini
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License along
## with this program; if not, write to the Free Software Foundation, Inc.,
## 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
##

include $(top_srcdir)/Makefile.sub

EXTRA_DIST  =
bin_SCRIPTS =					\
        perl-autofrisk				\
	python-autofrisk

perl-autofrisk: $(srcdir)/perl-autofrisk.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/perl-autofrisk.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}
EXTRA_DIST += perl-autofrisk.in

python-autofrisk: $(srcdir)/python-autofrisk.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/python-autofrisk.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}
EXTRA_DIST += python-autofrisk.in

m4dir = $(datadir)/aclocal

m4_DATA =					\
        python-autofrisk.m4			\
        perl-autofrisk.m4

##
## Maintainer related targets
##
update-local: Makefile

maintainer-check-parameters: Makefile $(bin_SCRIPTS)
	for i in $(bin_SCRIPTS) ; do \
		echo @ECHO_N@ "Checking standard parameters for $$i... " ; \
		if ( ./$$i -h 2>&1 > /dev/null ) ; then \
			echo "@ECHO_T@ok" ; \
		else \
			echo "@ECHO_T@error" ; \
			exit 1 ; \
		fi ; \
	done

maintainer-check-whitespaces: Makefile $(bin_SCRIPTS)
	$(WHITESPACE_DETECT) $(bin_SCRIPTS)

maintainer-check-local: Makefile maintainer-check-whitespaces maintainer-check-parameters
