/* graph_4coloring_Germany.pl */
/* source: https://bernardopires.com/2013/10/try-logic-programming-a-gentle-introduction-to-prolog/ */
/* test on gprolog, 2017-04-19: OK! => many solutions... */
/* Q: how many solutions are there? */
/* query: germany(SH, MV, ....). ? a */
color(red).
color(green).
color(blue).
color(yellow).
neighbor(StateAColor, StateBColor) :- color(StateAColor), color(StateBColor),
StateAColor \= StateBColor. /* \= is the negated explicit unification operator */
germany(SH, MV, HH, HB, NI, ST, BE, BB, SN, NW, HE, TH, RP, SL, BW, BY) :- 
neighbor(SH, NI),
neighbor(SH, HH),
neighbor(SH, MV),
neighbor(HH, NI),
neighbor(MV, NI),
neighbor(MV, BB),
neighbor(NI, HB),
neighbor(NI, BB),
neighbor(NI, ST),
neighbor(NI, TH),
neighbor(NI, HE),
neighbor(NI, NW),
neighbor(ST, BB),
neighbor(ST, SN),
neighbor(ST, TH),
neighbor(BB, BE),
neighbor(BB, SN),
neighbor(NW, HE),
neighbor(NW, RP),
neighbor(SN, TH),
neighbor(SN, BY),
neighbor(RP, SL),
neighbor(RP, HE),
neighbor(RP, BW),
neighbor(HE, BW),
neighbor(HE, TH),
neighbor(HE, BY),
neighbor(TH, BY),
neighbor(BW, BY).
/* ?- germany(SH, MV, HH, HB, NI, ST, BE, BB, SN, NW, HE, TH, RP, SL, BW, BY). */
