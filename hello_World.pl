/* hello_World.pl
   not: Hello_World.pl
     =>
      uncaught exception: error(instantiation_error,consult/1) | ?- consult(Hello_World).
      or
      uncaught exception: error(instantiation_error,top_level/0)  when: $ gprolog --query-goal Hello_World

   => DO NOT HAVE source code files with INITIAL Capital letter ("Hello_World.pl")
     => INITIAL Capital letters are ONLY FOR VARIABLES!

   RSa test on grolog v.1.3.0, 2017-04-22: OK

   run program: ?- main.

   using (built-in) predicates: write
*/

main :- write('Hello, World!').

/* end of hello_World.pl */
