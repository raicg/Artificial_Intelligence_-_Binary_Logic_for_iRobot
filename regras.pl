perto(Dist):-Dist<0.7.
longe(Dist):-Dist>=0.7.
medio(Dist):-Dist>=0.7 , Dist=<1.7.
distante(Dist):-Dist>1.7.

%sensor frontal = S1
%sensor direita = S2
%sensor esquerda = S3

%Regras do sistema

regra(Vd,Ve,S1,S2,S3):-perto(S1), perto(S2), perto(S3), Vd is -0.4, Ve is 0.4.

regra(Vd,Ve,S1,S2,S3):-perto(S1), perto(S2), longe(S3), Vd is 0.2, Ve is 0.0.
regra(Vd,Ve,S1,S2,S3):-perto(S1), longe(S2), perto(S3), Vd is 0.0, Ve is 0.2.

regra(Vd,Ve,S1,S2,S3):-longe(S1), perto(S2), perto(S3), Vd is 0.3, Ve is 0.3.

regra(Vd,Ve,S1,S2,S3):-perto(S1), medio(S2), distante(S3), Vd is 0.1, Ve is -0.1.
regra(Vd,Ve,S1,S2,S3):-perto(S1), distante(S2), medio(S3), Vd is 0.1, Ve is -0.1.
regra(Vd,Ve,S1,S2,S3):-perto(S1), distante(S2), distante(S3), Vd is -0.1, Ve is 0.1.

regra(Vd,Ve,S1,S2,S3):-perto(S1), medio(S2), medio(S3), Vd is -0.1, Ve is 0.1.


regra(Vd,Ve,S1,S2,S3):-longe(S1), perto(S2), longe(S3), Vd is 0.2, Ve is 0.1.
regra(Vd,Ve,S1,S2,S3):-longe(S1), longe(S2), perto(S3), Vd is 0.1, Ve is 0.2.

regra(Vd,Ve,S1,S2,S3):-longe(S1), longe(S2), longe(S3), Vd is 0.3, Ve is 0.3.
