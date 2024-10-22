# Gehele Getallen

## Ringen
+ + : R × R → R
	+ optelling van 2 reele getallen is een reel getal

bewerking: functie van een cartesis product

(R, +) is een **commutatieve groep:**
- associatief
- neutraal element
- invers of symmetrische element
	- n = neutraal element 
	- ∀a ∈ R : ∃b ∈ R : a + b = n = b + a
- commutatief
	- orde van operaties

(R, .) is **een monoide:**
- associatief
- neutraal element 

De vermenigvuldiging is **distributief** t.o.v. de optelling:
- ${}a.(b+c)=a.b+a.c$
- $(a+b).c=a.c+b.c$

We zeggen dat (R, +, .) een **ring met eenheid** is. Wanneer ook de vermenigvuldiging commutatief is, spreken we van een **commutatieve ring met eenheid**.

notatie: $a − b$ voor $a + (−b)$
De symmetrische en neutrale elementen zijn **uniek**.

∀m, n ∈ R : m − (−n) = m + n. 
Bewijs. Als we bewijzen dat −(−n) = n is het in orde, want m − (−n) = m + (−(−n)). Maar vermits symmetrische elementen uniek zijn is dit duidelijk want n + (−n) = 0.

### Ring van gehele getallen
De verzameling van alle gehele getallen uitgerust met + en · is een commutatieve ring met 0 als neutraal element voor de optelling en 1 als neutraal element voor de vermenigvuldiging die we noteren als (Z, +, ·).

## Veeltermen
De verzameling van veeltermen met gehele co¨effici¨enten en onbekende X is
$$\mathbb{Z}[X]:=\left\{\sum_{i=0}^{n}a_{i}X^{i}\mid n\in\mathbb{N},\forall i\in[0...n]:a_{i}\in\mathbb{Z}\right\}.$$

### Welorde
De elementen van Z zijn ook geordend door de relatie ≤:
- ≤ is reflexief
	- $\forall a\in\mathbb{Z}:a\leq a$
- ≤ is antisymmetrisch
	- (a ≤ b) ∧ (b ≤ a) ⇒ (a = b)
- ≤ is transitief
	- (a ≤ b) ∧ (b ≤ c) ⇒ (a ≤ c)
- Bovendien geldt: 
	- ∀a, b, c ∈ Z : a ≤ b ⇒ a + c ≤ b + c 
	- ∀a, b ∈ Z, ∀**c ∈ N** : a ≤ b ⇒ a.c ≤ b.c
- Als a ≤ b, dan −b ≤ −a.

Definitie. 
Zij S ⊂ Z. x ∈ Z heet een **ondergrens** van S indien ∀s ∈ S : x ≤ s. Het **infimum** van S is de **grootste ondergrens** van S. 

Voorbeeld. S = {−5, 3, 10, 20} heeft vele ondergrenzen, bijvoorbeeld −6, −200, −5, . . .. Het **infimum is −5**. Merk op dat in dit voorbeeld het infimum van S zelf tot S behoort.

Indien het infimum van een verzameling S zelf tot S behoort, dan noemen we het **een minimum**. 
De volgende bijzondere eigenschap van Z is in feite een **axioma (aanvaarde bewering**. Principe van de Welgeordendheid. Elke niet-lege deelverzameling van Z die een ondergrens heeft, heeft ook een minimum.
## Bewijs per inductie

Zij P(n) een eigenschap die we willen bewijzen voor alle n ∈ N.
- **Basis van de inductie**. Zij P(0) waar (of P(1) of P(n0), met n0 het kleinste natuurlijke getal waarvoor P zin heeft).
- Onderstel dat de **inductiehypothese** geldt, i.e. wanneer P(k) waar is voor een willekeurige k ∈ N, dan is P(k + 1) dat ook (deze stap heet de **inductiestap**). 
Dan is P(n) waar voor alle n ∈ N.

==Mogelijke examen vraag==
**Bewijs**. Onderstel van niet. Zij S = {n ∈ N | ¬P(n) waar}, dan is deze verzameling niet leeg. Vermits S ⊂ N heeft S een ondergrens (bijvoorbeeld −1). Door de welgeordendheid van de gehele getallen heeft S een minimum, m. Door de basis van de inductie weten we dat 0 6 ∈ S en dus m ≥ 1. Omdat m een minimum is, hebben we zeker (m − 1) 6 ∈ S zodat P(m − 1) waar is, maar de inductiestap verzekert dan dat P(m) ook waar is, een tegenspraak.

> [!Voorbeeld]-
> ![[Pasted image 20241009114118.png]]

## Quotiënt en rest


## Grootste gemene deler


## Euclidisch algoritme

## Priemgetal

## De $\varphi$-functie van Euler

## De chinese reststelling
$$ x \equiv a_1 M_1 y_1 + \dots + a_n M_n y_n \mod m $$
 > [!Abstract]- Definitie uitleg
 > - **$x$**: Gezochte oplossing of waarde.
 > - **$a_1, ..., a_n$​**: Coëfficiënten van de congruenties.
 > - **$M_1, ..., M_n$​**: Waarden gerelateerd aan de modulus van de congruenties.
>  - **$y_1, ..., y_n$​**: Inverses van de MMM waarden modulo een specifieke modulus.
 > - **$m$**: Modulus waar de uitdrukking modulo wordt genomen.

> [!Voorbeeld]-
> 
> $$\begin{array}{r l}{x\equiv2{\pmod{3}}}\\ {x\equiv3{\pmod{5}}}\\ {x\equiv2{\pmod{7}}}\end{array}$$
> 
> **Bepaal het totale product van de moduli**:  $$ m = 3 \cdot 5 \cdot 7 = 105 $$
> **Bereken $M_k$**  $$ M_1 = \frac{105}{3} = 35, \quad M_2 = \frac{105}{5} = 21, \quad M_3 = \frac{105}{7} = 15 $$
> **Zoek de inverses $y_k$**: 
> - $y_1 = 2$ (omdat $35 \cdot 2 \equiv 1 \mod 3$) 
> - $y_2 = 1$ (omdat $21 \cdot 1 \equiv 1 \mod 5$) 
> - $y_3 = 1$ (omdat $15 \cdot 1 \equiv 1 \mod 7$)
> 
> **De formule is**: 
> $$ x \equiv a_1 M_1 y_1 + a_2 M_2 y_2 + a_3 M_3 y_3 \mod m $$
> 
> Hieruit krijgen we: $$ x \equiv 2 \cdot 35 \cdot 2 + 3 \cdot 21 \cdot 1 + 2 \cdot 15 \cdot 1 $$ Wat ons uiteindelijk leidt tot: $$ x \equiv 233 \mod 105 \equiv 23 $$

## Public key cryptography


> [!Voorbeeld]-
> 
> Je onderschept een geheime boodschap **c = 2** en je weet dat de publieke sleutel van de ontvanger de waarden **n = 55** en **e = 7** heeft. Ontcijfer het bericht!
> 
> 1. **Vind $p$ en $q$**
> We hebben $n = 55$. We moeten $n$ ontbinden in zijn priemfactoren $p$ en $q$.
> 
> $$
> n = 55 = 5 \times 11
> $$
> 
> Dus $p = 5$ en $q = 11$.
> 
> 2. **Bereken $b$**
> 
> Nu berekenen we $b = (p-1)(q-1)$:
> $$
> b = (5-1)(11-1) = 4 \times 10 = 40
> $$
> 
> 3. **Controleer $\text{ggd}(c, b) = 1$**
> 
> We moeten controleren of de grootste gemene deler (ggd) van $ c $ en $ b $ gelijk is aan 1:
> 
> $$
> \text{ggd}(2, 40) = 2 \quad (\text{niet gelijk aan } 1)
> $$
> 
> Aangezien de ggd niet gelijk is aan 1, moeten we ervoor zorgen dat $ c $ een geldig bericht is. In het geval van RSA moet $ c $ altijd voldoen aan $ \text{ggd}(c, b) = 1 $. Hier kunnen we echter doorgaan met de ontcijfering door de inverse modulo $ b $ te berekenen, omdat de RSA-structuur aangeeft dat we het bericht nog steeds kunnen ontcijferen.
> 
> 4. **Vind $d$**
> 
> Nu moeten we $d$ vinden als de multiplicatieve inverse van $e$ modulo $b$. We moeten dus $d$ zodanig vinden dat:
> 
> $$
> d \cdot e \equiv 1 \mod b
> $$
> 
> Hier betekent dit dat we $7d \equiv 1 \mod 40$ moeten oplossen.
> 
> We gebruiken het uitgebreide Euclidische algoritme om $d$ te vinden:
> 
> $$
> 40 = 5 \cdot 7 + 5
> $$
> $$
> 7 = 1 \cdot 5 + 2
> $$
> $$
> 5 = 2 \cdot 2 + 1
> $$
> $$
> 2 = 2 \cdot 1 + 0
> $$
> 
> Nu, terugwerkend:
> 
> $$
> 1 = 5 - 2 \cdot 2
> $$
> $$
> 1 = 5 - 2 \cdot (7 - 1 \cdot 5) = 3 \cdot 5 - 2 \cdot 7
> $$
> $$
> 1 = 3 \cdot (40 - 5 \cdot 7) - 2 \cdot 7
> $$
> $$
> 1 = 3 \cdot 40 - 17 \cdot 7
> $$
> 
> Dus, $d \equiv -17 \mod 40$ of $d \equiv 23 \mod 40$ (omdat we negatieve waarden kunnen omzetten naar positieve waarden door 40 op te tellen).
> 
> **5. Ontcijfer het Bericht**
> 
> Nu kunnen we het bericht $ m $ vinden met behulp van de formule:
> 
> $$
> m \equiv c^d \mod n
> $$
> 
> Daarom berekenen we:
> 
> $$
> m \equiv 2^{23} \mod 55
> $$
> 
> We kunnen dit stapsgewijs doen, of via exponentiële reductie:
> 
> 1. Bereken $2^1 = 2$
> 2. Bereken $2^2 = 4$
> 3. Bereken $2^4 = 16$
> 4. Bereken $2^8 = 256 \equiv 36 \mod 55$
> 5. Bereken $2^{16} = 36^2 = 1296 \equiv 31 \mod 55$
> 
> Nu combineren we:
> 
> $$
> 2^{23} = 2^{16} \cdot 2^4 \cdot 2^2 \cdot 2^1 \equiv 31 \cdot 16 \cdot 4 \cdot 2 \mod 55
> $$
> 
> Bereken stap voor stap:
> 
> 1. $31 \cdot 16 = 496 \equiv 1 \mod 55$
> 2. $1 \cdot 4 = 4 \mod 55$
> 3. $4 \cdot 2 = 8 \mod 55$
> 
> **Resultaat**
> Het ontcijferde bericht $m$ is: $\boxed{8}$
> 
> 
