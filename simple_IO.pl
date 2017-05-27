/* simple_IO.pl

   http://www.anselm.edu/homepage/mmalita/culpro/files.html
   http://www.swi-prolog.org/pldoc/doc_for?object=root

   RSa test on grolog v.1.3.0, 2017-04-20: OK!
   RSa test on SWI Prolog v.7.4.2, 2017-04-20: OK!

   run program: ?- concatenate.
   using predicates: write(), read(), see(), seen, get_char()  */

concatenate :-
          write('File name = '), /* write <Term> to the current output */
          read(File),            /* File is a Variable name in Prolog */
                                 /* read the next Prolog term from the current input stream and unify it with File */
          see(File),             /* open File for reading and make it the current input */
          process,
          seen.                  /* close the current input stream */

process :- get_char(C), process2(C). /* read the current input stream and unify C with the next character
                                        as a one-character atom. 
                                        On end-of-file, C is unified to the atom end_of_file */

process2(end_of_file) :- !.       /* end_of_file represents a cut which is written as !.
                                     to explicitly "cut out" backtracking choicepoints */
process2(C) :- write(C), process.

/* end of simple_IO.pl */
