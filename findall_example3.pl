/* findall_example3.pl

   source: http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse49

   test on grolog v.1.3.0, 2017-04-20: OK
   test on SWI Prolog v.7.4.2, 2017-04-20: OK!   

   run program alt.1: ?- main1.
   run program alt.2: ?- main2.
   run program alt.3: ?- main3.

   using (built-in) predicates: append(), findall(), bagof() */

mySolution(X, Y) :- append(X, Y, [a, b, c]).

main1 :- findall( (X, Y), mySolution(X, Y), L), write_solutions1(L).
write_solutions1(L) :- write('L = '), write(L).

main2 :- bagof( (X, Y), mySolution(X, Y), L), write_solutions2(L).
write_solutions2(L) :- write('L = '), write(L).

main3 :- setof( (X, Y), mySolution(X, Y), L), write_solutions3(L).
write_solutions3(L) :- write('L = '), write(L).

/* output is the same in each main<N> case:
L = [([],[a,b,c]),([a],[b,c]),([a,b],[c]),([a,b,c],[])]

yes
*/

/* end of findall_example3.pl */
