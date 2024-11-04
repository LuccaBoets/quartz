# Hashing
#Alogritmenendatastructure1
Een **collision** doet zich voor als h(k) = h(k’)
Een **collision resolution strategie** is nodig om een collision op te lossen
Een **perfecte hashfunctie** is een hashfunctie die geen collisions veroorzaakt

**Funneling** is het fenomeen waarbij een deel van de keys in een deel van de tabel komt.

### Collision Resolution Strategieën
#### External chaining 
**External chaining** bestaat erin van gelinkte lijsten bij te houden als meerdere keys op hetzelfde home adres terecht komen. Deze lijsten noemen we **buckets**.

worst-case: alle keys hashen naar hetzelfde home adres. Dat geeft O(n) voor alle operaties.
Best-case: als de hash functie de keys uniform spreidt, heeft elke bucket 1/M kans. Met n aanwezige sleutels, geeft dat lijsten met een gemiddelde lengte α. Dus O(α).

#### Open addressing
**Open addressing** bestaat erin van botsende keys te **herhashen** in de hoop een vrije plaats te vinden.
De rij van probeersels die leidt naar een vrije plaats heet een **probe sequence**.
Elk probeersel noemen we een **probe**.

##### Lineaire Probing
Opeenvolgende probes
Dus we “springen rond” in γ-vouden en slaan andere locaties over!

Probleem: Verwijderen
Oplossing: de Tombstone
‘deleted is deel van probe sequences. Dus verder zoeken!

##### Clustering

primary clustering
secondary clustering

##### Kwadratische Probing
Primary clustering wordt vermeden

##### Dubbel Rehashing
2 Hashfuncties
 Secondary clustering wordt vermeden
### OA vs. Extern Chainen
De tombstone genereert veel afval die **probe sequences langer** maakt! Dus is de **performantie** niet meer enkel afhankelijk van α

Lijsten kunnen wel de overhand krijgen. Andere datastructuren wegen niet op.

Bij extern chainen kan α>1 worden. Het volledig herhashen van de tabel is nooit nodig

## Perfecte Hashfuncties
 snel te kunnen evalueren
 
 Een goede hashfunctie is **simpel** zodat je het funneling **en clustering gedrag kan onderzoeken**
 
Een goede hashfunctie is **snel** zodat de hashfunctie niet de overhand krijgt boven de hashalgoritmiek.

Een goede hashfunctie is **sterk** wat wil zeggen dat elke locatie evenveel kans maakt.

### Folding
![[Pasted image 20240201231752.png]]
slechte resultaten

### Digit Selection
![[Pasted image 20240201231815.png]]
Let op welke digits je selecteert. Doe een digit analyse op een groot stuk random data.

atte droom = “achieve avalanche”. Elke gekozen digit met waarden \[0..N] deelt alle sleutels in N groepen.

### Division
![[Pasted image 20240201231930.png]]
Zeer populair. Let op dat M priem is of een 2-macht is!
Nadeel **2-machten**: je selecteert enkel de **minst significante** bits van de binaire voorstelling.

Nadeel **priemgetallen**: hersizen van de tabel wordt lastig omdat **priemgetallen vinden** lastig is.
#### Multiplication
![[Pasted image 20240201231955.png]]

Een goede C genereert de distributie
De keuze van M wordt minder kritiek. **2-machten** doen het dus goed.

### Conclusie
Is nogal “artisanaal”
Zeer kleine wijzigingen in de hashfunctie kunnen grote gevolgen hebben voor funneling en clustering
Goede hashfuncties vind je op het net. Maar ook zeer veel slechte. Let op!