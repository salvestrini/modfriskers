(h2 "DESCRIPTION")
(p "Grammar Extractors is a suite of scripts "
   "useful for extracting grammar descriptions from "
   (i "Yacc") ", " (i "Yapp") " and " (i "Bison")
   " input files. "
   "The output should be suitable for "
   "later processing via others utilities or scripts.")

(p "The following extractors are currently available:")
(ul
 (li "yacc-to-grammar")
 (li "yapp-to-grammar")
 (li "bison-to-grammar")
 )

(p "Each extractor has the following invocation convention:")
(pre (@ (class "terminal"))
     "$ <extractor> INFILE OUTFILE")

(h2 "COPYING")
(p "The project is licensed under the "
   (a (@ (href "http://www.gnu.org/licenses/licenses.html"))
      "GNU General Public License, version 2"))

(h2 "MAINTAINERS")
(p "Francesco Salvestrini <salvestrini AT gmail DOT com>")

(h2 "AUTHORS")
(p "Francesco Salvestrini <salvestrini AT gmail DOT com>")
(p "Alessandro Massignan <ff0000 DOT it AT gmail DOT com>")

(h2 "MAILING LISTS")
(p "The project has a single moderated mailing list, with an archive. "
   "In order to post a message to the mailing list you must be subscribed. "
   "Please consult the "
   (a (@ (href "http://lists.nongnu.org/mailman/listinfo/grmrextractors-generic"))
      "mailing list page")
   " for more information on subscribing to the mailing list.")

(h2 "REPORT A BUG")
(p "If you think you have found a bug then please send as complete a report "
   "as possible to "
   "<grmrextractors-generic AT nongnu DOT org>. "
   "An easy way to collect all the required information, such as platform and "
   "compiler, is to include in your report the config.log file available at "
   "the end of the configuration procedure.")
(p "If you have a patch for a bug that hasn't yet been fixed in "
   "the latest repository sources, please be so kind to create it using the "
   "repository sources, not the release sources.")
