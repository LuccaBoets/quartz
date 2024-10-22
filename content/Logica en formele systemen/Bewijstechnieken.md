# Bewijstechnieken

## Direct bewijs

## Contrapositie

## Bewijs uit het ongerijmde

## Beweringen met kwantoren

## Bewijzen van equivalenties

Veronderstel dat $x$ een geheel getal is. Er geldt $x$ is even als en slechts als $x^2$ even is.

**Bewijs**
![[Pasted image 20241022131236.png]]

## Gevallenonderzoek
Stel m en n zijn gehele getallen. Als mn even is, dan is m even of n even.

Bewijs.

geval 1: m is even **In dit geval is er niets te bewijzen**.

geval 2: m is oneven We moeten aantonen dat in dit geval n even is. Aangezien m oneven is, bestaat er **k E Z zodat m = 2k +1**. Er is ook gegeven dat $mn$ even is en dus bestaat er **j E Z zodat mn = 2j**. Er volgt
$$2j=mn=2kn+n$$
en dus
$$n=2j-2kn=2(j-kn).$$
Omdat **j - kn € Z** kunnen we besluiten dat n even is.

## Bewijs per inductie
Bewijstechniek om beweringen over natuurlijke getallen te bewijzen.

- **Basisstap**: Bewijs 𝑃(0) 
- **Inductiestap**: Veronderstel (inductiehypothese) 𝑃(𝑘) en bewijs 𝑃(𝑘 + 1)

#### Voorbeeld 1

Voor elk natuurlijk getal n geldt dat

$$2^0+2^{1 +}... +2^n = 2n+1 -1$$

**Basisstap:** $P(0): 2^0 = 1 = 2$ 

**Inductiestap:** Onderstel (**inductiehypothese**) dat $P(k)$ geldt voor een *k ≥ 0*:
$$2^{0}+2^{1}+\ldots+2^{k}=2^{k+1}-1$$

We tonen dat $P(k+1)$:
$$2^{0}+2^{1}+\dots+2^{k+1}=2^{k+2}-1.$$

ook geldt.
Dit volgt vrij eenvoudig:
$$\begin{array}{l l}& 2^{0}+2^{1}+\ldots+2^{k+1}\\{{=}}&{{2^{0}+2^{1}+\dots+2^{k}+2^{k}+2^{k+1}}}\\ {{=}}&{{2^{k+1}-1+2^{k+1}\,\left(\mathrm{inductiehypothese}\right)}}\\ {{=}}&{{2\cdot2^{k+1}-1}}\\ {{=}}&{{2^{k+2}-1}}\end{array}$$
#### Voorbeeld 2
Voor elk natuurlijk getal n ≥ 5 geldt dat 2n > n2.

**Basisstap** Als n = 5, dan

$$2^n=32> 25 = n^2.$$

**Inductiestap** Onderstel (**inductiehypothese**)

$$2^k > k^2.$$

voor een **k ≥ 5**. We bewijzen dat

$$\begin{array}{r l}&2^{k+1}\\{={}}&{{}2\cdot2^{k}}\\ {\gt {}}&{{}2k^{2}\left({\mathrm{inductiehypothese}}\right)}\\ {\geq{}}&{{}k^{2}+2k+1}\\ {={}}&{{}(k+1)^{2}}\end{array}$$


waar we gebruiken maken van het feit dat $2k^2 ≥ k^2 + 2k + 1$ als $k ≥ 5$.

## Bewijs door sterke inductie

Bewijstechniek om beweringen over natuurlijke getallen te bewijzen.

*bewijs voor alle stappen kleiner dan k*

- **Basistap**
- **Inductiestap**: Veronderstel (inductiehypothese) **𝑃(𝑚) voor 𝑚 < 𝑘**. Bewijs 𝑃(𝑘).

#### Voorbeeld
Stel n E N, definieer $a_{n}$ alsvolgt:
$a_0 = 1, a_1 = 3$ en $a_{n} = 2a_{n-1} - a_{n-2}$ voor $n ≥ 2$
Er geldt voor alle $n E N: an = 2n + 1.$

We bewijzen dit via **sterke inductie**.
**Basisstappen**:
- $n=0;a_{0}=1=2\cdot0+1$
- $n=1\colon a_{1}=3=2\cdot1+1$

**Inductiestap**: Veronderstel dat voor alle 0 ≤ m < k er geldt dat am = 2m + 1 (inductiehypothese). We bewijzen ak = 2k+ 1.

$$\begin{array}{l}{{a_{k}=2a_{k-1}-a_{k-2}}}\\ {{=_{IH} 2(2(k-1)+1)~-(2(k-2)+1)}}\\ {{=2(2k-2+1)~-(2k-4+1)}}\\ {{=2(2k-1)-(2k-3)=4k-2~-2k+3=2k+1}}\end{array}$$