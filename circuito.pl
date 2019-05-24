% Circuitos lógicos.
% Alfredo CU.
% Mayo 2019.
% Inteligencia Artificial I.

% Compuertas Logicas.

% compAND(E1,E2,S1).
compAND(E1,E2,S1):-S1 is E1 * E2.
% compOR(E1,E2,S1).
compOR(E1,E2,S1):-S1 is E1 + E2 - E1 * E2.
% compXOR(E1,E2,S1).
compXOR(E1,E2,S1):-S1 is abs(E1-E2).
% compNAND(E1,E2,S1).
compNAND(E1,E2,S1):-compAND(E1,E2,A1),compNOT(A1,S1).
% compNOR(E1,E2,S1).
compNOR(E1,E2,S1):-compOR(E1,E2,A1),compNOT(A1,S1).
% compXNOR(E1,E2,S1).
compXNOR(E1,E2,S1):-compXOR(E1,E2,A1),compNOT(A1,S1).
% compNOT(E,S).
compNOT(E,S):-S is 1 - E.

% Circuitos.

% Circuito.
circuito(E1,E2,E3,S1,S2):-compAND(E1,E3,X1),
                          compNOR(E2,E3,X2),
                          compNOT(E3,X4),
                          compNAND(X1,X2,X3),
                          compOR(X4,E2,X5),
                          compXOR(X3,X5,X6),
                          compXNOR(X5,E1,S2),
                          compAND(X6,X5,S1).

