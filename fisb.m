%per prima cosa, identifichiamo la specialità. questo si fa dalla selezione
%in app
specialita = 'singolo'; %ma in base alla casella selezionata, può essere anche =coppia =piccola o =grande

%definiamo le variabili dell'elemento "composizione". ogni variabile
%corrisponde a un tasto selezionato, il valore corrisponde a quante volte è
%stato selezionato il tasto corrispondente
b1 = 0;
b2 = 0;
b3 = 0;
b4 = 0;
b5 = 0;

c1 = 0;
c2 = 0;
c3 = 0;
c4 = 0;
c5 = 0;

a1 = 0;
a2 = 0;
a3 = 0;
a4 = 0;

ar1 = 0;
ar2 = 0;
ar3 = 0;
ar4 = 0;
ar5 = 0;

cc1 = 0;
cc2 = 0;


%in questi valori, le lettere indicano la tipologia di elemento selezionata
%nella casella, mentre il numero indica la parte dell'esibizione in cui è
%stato fatto (1:parte1, 2=parte2,...)

if specialita == 'singolo'
    Mb1=3;
    Mb2=3;
    Mb3=4;
    Mb4=3;
    Mb5=1;

    Mc1=1;
    Mc2=2;
    Mc3=4;
    Mc4=4;
    Mc5=3;

    Ma1=0;
    Ma2=0;
    Ma3=0;
    Ma4=0;

    Mar1=4;
    Mar2=3;
    Mar3=2;
    Mar4=1;
    Mar5=1;

    Mcc1=0;
    Mcc2=0;

    bonus1 = 55;
    bonus2 = 50;
    bonus3 = 45;
    bonus4 = 30;
    bonus5 = 20;

elseif specialita == 'coppia'
    Mb1=2;
    Mb2=1;
    Mb3=3;
    Mb4=1;
    Mb5=0;

    Mc1=1;
    Mc2=3;
    Mc3=2;
    Mc4=1;
    Mc5=0;

    Ma1=2;
    Ma2=4;
    Ma3=3;
    Ma4=3;

    Mar1=1;
    Mar2=4;
    Mar3=2;
    Mar4=1;
    Mar5=0;

    Mcc1=2;
    Mcc2=2;

    bonus1 = 70;
    bonus2 = 55;
    bonus3 = 40;
    bonus4 = 25;
    bonus5 = 0;

elseif specialita == 'piccola'
    Mb1=2;
    Mb2=2;
    Mb3=2;
    Mb4=0;
    Mb5=0;

    Mc1=4;
    Mc2=3;
    Mc3=3;
    Mc4=0;
    Mc5=0;

    Ma1=3;
    Ma2=4;
    Ma3=2;
    Ma4=0;

    Mar1=4;
    Mar2=5;
    Mar3=3;
    Mar4=0;
    Mar5=0;

    Mcc1=3;
    Mcc2=3;

    bonus1 = 100;
    bonus2 = 60;
    bonus3 = 20;
    bonus4 = 0;
    bonus5 = 0;

elseif specialita == 'grande'
    Mb1=4;
    Mb2=2;
    Mb3=0;
    Mb4=0;
    Mb5=0;

    Mc1=5;
    Mc2=4;
    Mc3=0;
    Mc4=0;
    Mc5=0;

    Ma1=8;
    Ma2=5;
    Ma3=0;
    Ma4=0;

    Mar1=5;
    Mar2=5;
    Mar3=0;
    Mar4=0;
    Mar5=0;

    Mcc1=3;
    Mcc2=3;

    bonus1 = 90;
    bonus2 = 110;
    bonus3 = 0;
    bonus4 = 0;
    bonus5 = 0;


end

%questi valori rappresentano i massimi per ottenere il bonus di punteggio
%indicato. Questi valori sono fissi per tutte le gare e tutte
%le manifestazioni, vengono definiti qua e non sono mmodificbili dall'app



bb1 = min(Mb1,b1);
bb2 = min(Mb2,b1);
bb3 = min(Mb3,b1);
bb4 = min(Mb4,b1);
bb5 = min(Mb5,b1);

bc1 = min(Mc1,b1);
bc2 = min(Mc2,b1);
bc3 = min(Mc3,b1);
bc4 = min(Mc4,b1);
bc5 = min(Mc5,b1);

ba1 = min(Ma1,b1);
ba2 = min(Ma2,b1);
ba3 = min(Ma3,b1);
ba4 = min(Ma4,b1);

bar1 = min(Mar1,b1);
bar2 = min(Mar2,b1);
bar3 = min(Mar3,b1);
bar4 = min(Mar4,b1);
bar5 = min(Mar5,b1);

bcc1 = min(Mcc1,b1);
bcc2 = min(Mcc2,b1);
% qui si definiscono i valori che contribuiscono al bonus che ora
% calcoliamo per ottenere il punteggio

spett_coreo = min(8,0); %numero di spettacolari di coreografia, conteggiati tramite pulsante in app, che determinano il secondo numero del minimo, 8 è fisso
spett_ist = min(10,0); %numero spettacolari istantantei, secondo valore selezionabile in app, 10 è fisso
spett_sinc = min(7,0); %spettacolari di sincronismo, secondo valore selezionabile in app, 7 fisso
spett_diff = 0; %spettacolari di passaggio, selezionabili in app
stelle = 0; %selezionabile in app


%% calcolo del punteggio composizione

punteggio_compo_1 = bb1+bc1*2+ba1*2+bar1+bcc1*4;
punteggio_compo_2 = bb2+bc2*2+ba2*2+bar2+bcc2*4;
punteggio_compo_3 = bb3+bc3*2+ba3*2+bar3;
punteggio_compo_4 = bb4+bc4*2+ba4*2+bar4;
punteggio_compo_5 = bb5+bc5*2+bar5;

punteggio_bonus_1 = punteggio_compo_1/(Mb1+Mc1*2+Ma1*2+Mar1+Mcc1*4)*bonus1;
punteggio_bonus_2 = punteggio_compo_2/(Mb2+Mc2*2+Ma2*2+Mar2+Mcc2*4)*bonus2;
punteggio_bonus_3 = punteggio_compo_3/(Mb3+Mc3*2+Ma3*2+Mar3)*bonus3;
punteggio_bonus_4 = punteggio_compo_4/(Mb4+Mc4*2+Ma4*2+Mar4)*bonus4;
punteggio_bonus_5 = punteggio_compo_5/(Mb5+Mc5*2+Mar5)*bonus5;

punteggio_bonus = punteggio_bonus_1+punteggio_bonus_2+punteggio_bonus_3+punteggio_bonus_4+punteggio_bonus_5;

if specialita == 'grande'
    punteggio_spettacolari = spett_coreo*3+spett_ist*1.5+spett_sinc*3+min(70,spett_diff*4);
else
    punteggio_spettacolari = spett_coreo*3+spett_ist*1.5+spett_sinc*3+min(40,spett_diff*4)+stelle*16;
end

if specialita == 'coppia'
punteggio_compo_base = bb1+bc1*2+ba1*2+bb2+bc2*2+ba2*2+bb3+bc3*2+ba3*2+bb4+bc4*2+ba4*2+bb5+bc5*2+...
    +min(10,ar1+ar2+ar3+ar4+ar5)+min(4,cc1+cc2)*4;
else
punteggio_compo_base = bb1+bc1*2+ba1*2+bb2+bc2*2+ba2*2+bb3+bc3*2+ba3*2+bb4+bc4*2+ba4*2+bb5+bc5*2+...
+min(10,ar1+ar2+ar3+ar4+ar5)+min(6,cc1+cc2)*4;
end

if specialita == 'grande'
    punteggio_presentazione = 0;
end
% per la specialità grande, devono essere presenti i tasti di completamento presentazione 
% (che attribuisce 7 punti) e della sua spettacolarità (che attribuisce 3 punti)



punteggio_compo = punteggio_compo_base + punteggio_bonus + punteggio_spettacolari + punteggio_presentazione;
%questo è il punteggio ottenuto dalla selezione delle caselle durante la
%valutazione di un esercizio
%a questo punto si calcola il punteggio in trentesimi
 if specialita == 'singolo'
     massimale_compo = 275;
 elseif specialita == 'coppia'
     massimale_compo =240;
 elseif specialita == 'piccola'
     massimale_compo = 260;
 elseif specialita == 'grande'
     massimale_compo = 310;
 end
%nell'app, voglio che questi valori di massimale siano impostati come
%default (a seconda della specialità), ma che possano essere personalizzati
%nella schermata della singola gara

 massimale_gara_compo = max(massimale_compo,punteggio_compo);
 %se il punteggio composizione di una qualsiasi esibizione nella stessa gara supera il massimale, il nuovo massimale
 %diventa il punteggio realizzato.


 if specialita == 'singolo'
     traslazione_fascia_compo = massimale_gara_compo-massimale_compo;
     if punteggio_compo<(60+traslazione_fascia_compo)
         punteggio_trentesimi_compo = punteggio_compo/(60+traslazione_fascia_compo)*0.5;
     elseif punteggio_compo>(60+traslazione_fascia_compo) && punteggio_compo<(125+traslazione_fascia_compo)
         punteggio_trentesimi_compo = 0.5+(punteggio_compo-(60+traslazione_fascia_compo))/(125-60.01)*1.5;
     elseif punteggio_compo>(125+traslazione_fascia_compo) && punteggio_compo<(195+traslazione_fascia_compo)
         punteggio_trentesimi_compo = 2+(punteggio_compo-(125+traslazione_fascia_compo))/(195-125.01)*2.5;
     elseif punteggio_compo>(195+traslazione_fascia_compo)
         punteggio_trentesimi_compo = 4.5+(punteggio_compo-(195+traslazione_fascia_compo))/(massimale_compo-195.01)*3.5;
     end

 elseif specialita == 'coppia'
     traslazione_fascia_compo = massimale_gara_compo-massimale_compo;
     if punteggio_compo<(65+traslazione_fascia_compo)
         punteggio_trentesimi_compo = punteggio_compo/(65+traslazione_fascia_compo)*1.5;
     elseif punteggio_compo>(65+traslazione_fascia_compo) && punteggio_compo<(135+traslazione_fascia_compo)
         punteggio_trentesimi_compo = 1.5+(punteggio_compo-(65+traslazione_fascia_compo))/(135-65.01)*2;
     elseif punteggio_compo>(135+traslazione_fascia_compo) && punteggio_compo<(205+traslazione_fascia_compo)
         punteggio_trentesimi_compo = 3.5+(punteggio_compo-(135+traslazione_fascia_compo))/(205-135.01)*2.5;
     elseif punteggio_compo>(205+traslazione_fascia_compo)
         punteggio_trentesimi_compo = 6+(punteggio_compo-(205+traslazione_fascia_compo))/(massimale_compo-205.01)*3;
     end

 elseif specialita == 'piccola'
     punteggio_trentesimi_compo = punteggio_compo/massimale_gara_compo*11;
 elseif specialita == 'grande'
     punteggio_trentesimi_compo = punteggio_compo/massimale_gara_compo*11;
 end

 %all'interno di una stessa gara, finchè non è finita il punteggio in
 %trentesimi può variare aggiungendo nuove valutazioni. Questo succede
 %quando una performance sfora il massimale impostato di default e fissa il
 %massimale gara. In altre parole, il punteggio compo rimane invariato ed è
 %determinato per ogni singola performance. Il punteggio in trentesimi
 %invece può cambiare qualora il massimale di default venga sforato. Quindi
 %man mano che si aggiungono valutazioni nell'app, si deve generare una
 %classifica parziale.

%% difficoltà
%ora definiamo le quantità per la valutazione della difficoltà

numero_atleti = 16; %per la specialità grande, voglio che venga richiesto per ogni valutazione il numero atleti, che può variare da 7 a 16

D1 = 0;
C1 = 0;
B1 = 0;
A1 = 0;
AA1 = 0;
piu_1 = 0;
meno_1 = 0;

D2 = 0;
C2 = 0;
B2 = 0;
A2 = 0;
AA2 = 0;
piu_2 = 0;
meno_2 = 0;

D3 = 0;
C3 = 0;
B3 = 0;
A3 = 0;
AA3 = 0;
piu_3 = 0;
meno_3 = 0;

D4 = 0;
C4 = 0;
B4 = 0;
A4 = 0;
AA4 = 0;
piu_4 = 0;
meno_4 = 0;

D5 = 0;
C5 = 0;
B5 = 0;
A5 = 0;
AA5 = 0;
piu_5 = 0;
meno_5 = 0;

%questi valori corrispondono al numero di selezioni dei tasti D,C,B,A,AA
%nella parte a 1,2,3,4 e 5. piu e meno corrispondono ai segni grafici + e
%-, selezionabili nella valutazione della prova.

lanci_totale = D1+C1+B1+A1+AA1+D2+C2+B2+A2+AA2+D3+C3+B3+A3+AA3+D4+C4+B4+A4+AA4+D5+C5+B5+A5+AA5;

pD1 = 10;
pC1 = 20;
pB1 = 30;
pA1 = 40;
pAA1 = 50;
ppiu_1 = 5;
pmeno_1 = 5;

pD2 = 15;
pC2 = 30;
pB2 = 45;
ppiu_2 = 7.5;
pmeno_2 = 7.5;

pD3 = 30;
pC3 = 60;
pB3 = 90;
ppiu_3 = 15;
pmeno_3 = 15;

ppiu_4 = 22.5;
pmeno_4 = 22.5;

ppiu_5 = 30;
pmeno_5 = 30;


if specialita == 'singolo' | specialita == 'coppia'

    pA2 = 60;
    pAA2 = 75;

    pA3 = 120;
    pAA3 = 180;

    pD4 = 45;
    pC4 = 90;
    pB4 = 135;
    pA4 = 180;
    pAA4 = 270;

    pD5 = 60;
    pC5 = 120;
    pB5 = 180;
    pA5 = 240;
    pAA5 = 360;
elseif specialita == 'piccola' | specialita == 'grande'
    pA2 = 75;
    pAA2 = 60;

    pA3 = 150;
    pAA3 = 120;

    pD4 = 0;
    pC4 = 0;
    pB4 = 0;
    pA4 = 0;
    pAA4 = 0;

    pD5 = 0;
    pC5 = 0;
    pB5 = 0;
    pA5 = 0;
    pAA5 = 0;
end
%questi sono i valori in punti di ogni casella

%ora definiamo il massimo di passaggi per ogni casella
if specialita == 'singolo' | specialita == 'coppia' | specialita == 'piccola'
    maxC1 = 6;
    maxB1 = 5;
    maxA1 = 4;
    maxAA1 = 4;

    maxC2 = 6;
    maxB2 = 5;
    maxA2 = 4;
    maxAA2 = 4;

    maxD3 = 5;
    maxC3 = 5;
    maxB3 = 5;
    maxA3 = 5;
    maxAA3 = 5;

    maxD4 = 4;
    maxC4 = 4;
    maxB4 = 4;
    maxA4 = 4;
    maxAA4 = 4;

    maxD5 = 3;
    maxC5 = 3;
    maxB5 = 3;
    maxA5 = 3;
    maxAA5 = 3;
elseif specialita == 'grande'
    if numero_atleti == 15 |numero_atleti == 16
    maxC1 = 6;
    maxB1 = 6;
    maxA1 = 3;
    maxAA1 = 3;

    maxC2 = 6;
    maxB2 = 5;
    maxA2 = 3;
    maxAA2 = 3;

    elseif numero_atleti == 14 | numero_atleti == 13
    maxC1 = 6;
    maxB1 = 6;
    maxA1 = 3;
    maxAA1 = 3;

    maxC2 = 6;
    maxB2 = 5;
    maxA2 = 4;
    maxAA2 = 3;

    elseif numero_atleti == 12 | numero_atleti == 11
    maxC1 = 6;
    maxB1 = 6;
    maxA1 = 4;
    maxAA1 = 3;

    maxC2 = 6;
    maxB2 = 6;
    maxA2 = 4;
    maxAA2 = 3;

    elseif numero_atleti == 10 | numero_atleti == 9 | numero_atleti == 8 | numero_atleti == 7
    maxC1 = 6;
    maxB1 = 6;
    maxA1 = 3;
    maxAA1 = 4;

    maxC2 = 6;
    maxB2 = 6;
    maxA2 = 5;
    maxAA2 = 3;  
    end
end

%a questo punto, bisogna fare la verifica sul numero di lanci totale
%indicato in totale_lanci. Se questo valore è superiore a 23 nel singolo,
%18 nella coppia, 19 nella piccola e 20 nella grande, scarta una selezione
%del valore maggiore fra quelli selezionati finchè il numero totale di
%lanci non è nei limiti indicati. Ad esempio nel caso singolo con 2 AA5, se
%ci sono 24 lanci, scarta 1 AA5, ma se AA5 non è presente, scarta il
%passaggio selezionato con valore più alto. Nel caso di esempio, se ci sono
%26 lanci, scarta entrambi gli AA5 e scarta il lancio di valore più alto
%successivo.

% ora calcoliamo il punteggio totale relativo ai lanci
totale_valore_difficolta = D1*pD1 + D2*pD2 + min(D3,maxD3)*pD3 + min(D4,maxD4)*pD4 + min(D5,maxD5)*pD5 +...
    + min(C1,maxC1)*pC1 + min(C2,maxC2)*pC2 + min(C3,maxC3)*pC3 + min(C4,maxC4)*pC4 + min(C5,maxC5)*pC5 +...
    + min(B1,maxB1)*pB1 + min(B2,maxB2)*pB2 + min(B3,maxB3)*pB3 + min(B4,maxB4)*pB4 + min(B5,maxB5)*pB5 +...
    + min(A1,maxA1)*pA1 + min(A2,maxA2)*pA2 + min(A3,maxA3)*pA3 + min(A4,maxA4)*pA4 + min(A5,maxA5)*pA5 +...
    + min(AA1,maxAA1)*pAA1 + min(AA2,maxAA2)*pAA2 + min(AA3,maxAA3)*pAA3 + min(AA4,maxAA4)*pAA4 + min(AA5,maxAA5)*pAA5 +...
    + piu_1*ppiu_1 + piu_2*ppiu_2 + piu_3*ppiu_3 + piu_4*ppiu_4 + piu_5*ppiu_5 + ...
    - meno_1*pmeno_1 - meno_2*pmeno_2 - meno_3*pmeno_3 - meno_4*pmeno_4 - meno_5*pmeno_5;


altezza_lanci = 0; %al termine della valutazione, va selezionata un'altezza lanci da 0 a 10 (passo 0.1), che finisce qua

if specialita == 'singolo'
    totale_difficolta_lanci = totale_valore_difficolta/2;
    p_altezza = altezza_lanci/10*150;
elseif specialita == 'coppia'
    totale_difficolta_lanci = totale_valore_difficolta;
    p_altezza = altezza_lanci/10*200;
elseif specialita == 'piccola'
    totale_difficolta_lanci = totale_valore_difficolta*2;
    p_altezza = altezza_lanci/10*250;
elseif specialita == 'grande'
    totale_difficolta_lanci = totale_valore_difficolta*4;
    p_altezza = altezza_lanci/10*300;
end

punteggio_diff = totale_difficolta_lanci+p_altezza;

%% conversione in trentesimi
% la conversione del punteggio in trentesimi è fatta con la stessa logica
% della composizione, quindi con il massimale sforabile che fa sì che ci
% possano essere cambiamenti nel punteggio in trentesimi aggiungendo
% giudizi di nuove esibizioni. il punteggio punteggio_diff resta invece
% costante

 if specialita == 'singolo'
     massimale_diff = 2200;
 elseif specialita == 'coppia'
     massimale_diff =2800;
 elseif specialita == 'piccola'
     massimale_diff = 3450;
 elseif specialita == 'grande'
     massimale_diff = 4000;
 end
%nell'app, voglio che questi valori di massimale siano impostati come
%default (a seconda della specialità), ma che possano essere personalizzati
%nella schermata della singola gara

 massimale_gara_diff = max(massimale_diff,punteggio_diff);
 %se il punteggio composizione di una qualsiasi esibizione nella stessa gara supera il massimale, il nuovo massimale
 %diventa il punteggio realizzato.


 if specialita == 'singolo'
     traslazione_fascia_diff = massimale_gara_diff-massimale_diff;
     if punteggio_diff<(550+traslazione_fascia_diff)
         punteggio_trentesimi_diff = punteggio_diff/(550+traslazione_fascia_diff)*2;
     elseif punteggio_diff>(550+traslazione_fascia_diff) && punteggio_diff<(1100+traslazione_fascia_diff)
         punteggio_trentesimi_diff = 2+(punteggio_diff-(550+traslazione_fascia_diff))/(1100-550.01)*2.5;
     elseif punteggio_diff>(1100+traslazione_fascia_diff) && punteggio_diff<(1700+traslazione_fascia_diff)
         punteggio_trentesimi_diff = 4.5+(punteggio_diff-(1100+traslazione_fascia_diff))/(1700-1100.01)*3;
     elseif punteggio_diff>(1700+traslazione_fascia_diff)
         punteggio_trentesimi_diff = 7.5+(punteggio_diff-(1700+traslazione_fascia_diff))/(massimale_diff-1700.01)*3.5;
     end

 elseif specialita == 'coppia'
     traslazione_fascia_diff = massimale_gara_diff-massimale_diff;
     if punteggio_diff<(580+traslazione_fascia_diff)
         punteggio_trentesimi_diff = punteggio_diff/(580+traslazione_fascia_diff)*1;
     elseif punteggio_diff>(580+traslazione_fascia_diff) && punteggio_diff<(1330+traslazione_fascia_diff)
         punteggio_trentesimi_diff = 1+(punteggio_diff-(580+traslazione_fascia_diff))/(1330-580.01)*2;
     elseif punteggio_diff>(1330+traslazione_fascia_diff) && punteggio_diff<(2130+traslazione_fascia_diff)
         punteggio_trentesimi_diff = 3+(punteggio_diff-(1330+traslazione_fascia_diff))/(2130-1330.01)*3;
     elseif punteggio_diff>(2130+traslazione_fascia_diff)
         punteggio_trentesimi_diff = 6+(punteggio_diff-(2130+traslazione_fascia_diff))/(massimale_diff-2130.01)*3;
     end

 elseif specialita == 'piccola'
     punteggio_trentesimi_diff = punteggio_diff/massimale_gara_diff*10;
 elseif specialita == 'grande'
     punteggio_trentesimi_diff = punteggio_diff/massimale_gara_diff*9;
 end

 %% esecuzione e portamento
%per l'esecuzione, non si distingue fra le diverse fasi dell'esibizione
%(1,2,3,4,5), si sommano in modo uguale le penalità associate a ogni
%casella, presentate di seguito
lieve = 0;
media = 0;
alta = 0;
grave = 0;
speciale = 0;
lieve_B = 0;
media_B = 0;
grave_B = 0;

%ognuna di queste pensalità corrisponde a una casella

if specialita == 'singolo'| specialita == 'coppia'
    p_lieve = 0.15;
    p_media = 0.3;
    p_alta = 0.6;
elseif specialita == 'piccola'| specialita == 'grande'
    p_lieve = 0.1;
    p_media = 0.2;
    p_alta = 0.45;
end

p_grave = 1;
p_speciale = 2.5;
p_lieve_B = 0.4;
p_media_B = 0.9;
p_grave_B = 1.5;

totale_penalita = lieve*p_lieve + media*p_media + alta*p_alta + grave*p_grave + speciale*p_speciale+...
    +lieve_B*p_lieve_B + media_B*p_media_B + grave_B*p_grave_B;

if specialita == 'singolo'| specialita == 'coppia'
    totale_esecuzione = 9.5-totale_penalita;
    if totale_esecuzione < 0 
        totale_esecuzione = 0;
    end
elseif specialita == 'piccola'
    totale_esecuzione = 7.5-totale_penalita;
    if totale_esecuzione < 0 
        totale_esecuzione = 0;
    end
elseif specialita== 'grande'
    totale_esecuzione = 8.5-totale_penalita;
    if totale_esecuzione < 0 
        totale_esecuzione = 0;
    end
end

portamento_stat = 0.125*0;
portamento_din = 0.125*0;
portamento_marz = 0.125*0;
portamento_eleg = 0.125*0;
totale_portamento = portamento_stat + portamento_din + portamento_marz + portamento_eleg;

%il portamento richiede una valutazione da 0 a 3 per statico, dinamico,
%marzialità e eleganza. il valore selezionato in app è il secondo numero
%nella moltiplicazione qui sopra

punteggio_esecuzione = totale_esecuzione + totale_portamento;
%il punteggio esecuzione+portamento è assoluto, è espresso in trentesimi e
%non dipende dalle altre esibizioni



%% calcolo punteggio totale
Punteggio = punteggio_trentesimi_compo + punteggio_trentesimi_diff + punteggio_esecuzione;
