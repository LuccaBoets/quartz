# Inleiding
#Alogritmenendatastructure1

##  Terminologie

![[Pasted image 20240124134110.png]]
### Samengestelde data
dataconstructor: Geheugen reserveren + Onderdelen initialiseren: cons, vector, list, ...

### Proceduretypes
car: (pair -> any)
\+ (number ... number -> number)

Hogere-Orde Procedures:
((number -> number) number -> number )

## Opslagdatastructuur
Een datastructuur die dient om datawaarden op te slaan met als bedoeling die later weer op te kunnen vragen noemen we een **opslagdatastructuur**.

## Snelheid en geheugengebruik van algoritmen

### De experimentele benadering
meten met een stopwatch
zeer slecht

### De analytische benadering
aantal computationele stappen bij een invoer van **grootte n**

dit geeft **performantiekarakteristiek** van algoritme

 - worst-case analyse
 - best-case analyse
 - average-case analyse
 - amortised analyse (niet belangrijk)

![[Pasted image 20240123143926.png]]

### Grote Θ (theta)
Average analyse
"Sandwichen" 

![[Pasted image 20240123144553.png]]
### Grote O
Worst analyse

![[Pasted image 20240123144611.png]]
### Grote Ω (Omega)
Best analyse

![[Pasted image 20240123144622.png]]

### Eigenschappen

Enkel dominante termen tellen mee
waarbij: $1 < log(n) < √n < n < n.log(n) < n^k < 2^n < n!$

Constanten mogen verandert worden (mogen weg)

Θ, Ω en O zijn enkel nuttig om functies van **verschillende orde te vergelijken**. Eén algoritme van O(n) kan toch véél sneller zijn dan een ander van O(n).

### Analyse

voor **niet-recursieve procedures**: 
Bepaal O/Ω voor alle deelexpressies van de body en neem de som, d.w.z. het maximum/minimum.

voor een **recursieve procedure**:
bepaal je O(body) en bepaal je O(aantal recursies). De procedure is dan O(**body.aantal recursies**)

Voor een **recursieve procedure met geneste lussen**:
bepaal je O(aantal recursies). Verder bepaal je O(body) voor de i’de keer dat de body wordt uitgevoerd. De volledige procedure is dan
$$O(\Sigma_{i=0}^{\mathsf{n}}\operatorname{b}(i))$$

