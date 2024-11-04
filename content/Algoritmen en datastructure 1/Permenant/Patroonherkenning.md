# Patroonherkenning
#Alogritmenendatastructure1

match: 
(string string -> number ∪ {#f})

t: tekst
n-t: lengte van tekst
p: patroon
n-p: lengte van patroon

Si->j: deelstring

string s die uit 2 delen u en v bestaan: s = u.v
u: prefix
v: suffix

## Brutekracht algoritme
Een “brutekracht algoritme” is een algoritme dat een probleem oplost door **alle combinaties uit te proberen**.
![[Pasted image 20240123151742.png]]
#### Performantie
body: 1
aantal recursies: n-t.n-p
O(n-t.n-p)

## Quicksearch algoritme 

![[Pasted image 20240123151921.png]]
#WIP 

#### Performantie
O(n-t.n-p) even slecht als brute kracht
in de praktijk lineair en sneller dan al de rest
vertoont soms eair gedrag:
![[Pasted image 20240123161614.png]]

## Knuth-Morris-Pratt algoritme
Naïef idee: begin met het patroon op de plaats waar het misliep (overshoot als de patroon herhaling heeft)

![[Pasted image 20240123161843.png]]

failure-function table (σ (sigma)):
![[Pasted image 20240123162009.png]]

lalala down in lalaland 
lalala**n**d
k: 4 (aantal keer terrug)

#### Performantie

σ: O(n-p)
KMP: O(n-t)
O(n-p + n-t)