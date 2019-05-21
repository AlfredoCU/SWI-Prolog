% Circuitos lógicos.
% Alfredo CU.
% Mayo 2019.
% Inteligencia Artificial I.

% Compuertas Logicas.

% compAND(E1,E2,S1).
compAND(E1,E2,S1):-S1 is E1 * E2.
% compOR(E1,E2,S1).
compOR(E1,E2,S1):-(E1 + E2 > 1,S1 is 1); S1 is E1 + E2.
% compXOR(E1,E2,S1).
compXOR(E1,E2,S1):- S1 is ((1 - E1) * E2) + (E1 * (1 - E2)).
% compNAND(E1,E2,S1).
compNAND(E1,E2,S1):-compAND(E1,E2,A1),compNOT(A1,S1).
% compNOR(E1,E2,S1).
compNOR(E1,E2,S1):-compOR(E1,E2,A1),compNOT(A1,S1).
% compXNOR(E1,E2,S1).
compXNOR(E1,E2,S1):-compXOR(E1,E2,A1),compNOT(A1,S1).
% compNOT(E,S).
compNOT(E,S):-S is 1 - E.

% Circuitos.

% Sumador.
sumador(E1,E2,E3,S1,S2):-compXOR(E1,E2,X1),
                         compXOR(X1,E3,S1),
                         compAND(E1,E2,A1),
                         compAND(X1,E3,A2),
                         compOR(A2,A1,S2).
