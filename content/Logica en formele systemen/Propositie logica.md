# Propositie logica


**Definitie:**
1. Elke propositieletter is een formule 
2. Als 𝜑 en 𝜓 formules zijn, dan zijn ¬𝜑, 𝜑 ∧ 𝜓 , 𝜑 ∨ 𝜓 , 𝜑 → 𝜓 en 𝜑 𝜓 ook formules 
 3. Niets anders is een formule

verschillen met natuurlijke taal

![[Substitutie]]

![[Constructieboom]]

![[Waarheidswaarden]]


![[Model]]
![[Logisch equivalent]]
![[Functioneel volledig]]

## Geldig gevolg

Een formule 𝜓 heet een geldig gevolg van een **verzameling formules** Σ als elk model van Σ ook een model is van 𝜓. 

Notatie: $Σ ⊨ 𝜓$
Alternatieve notatie: de gevolgtrekking $Σ ∕ 𝜓$ is geldig 

Als $Σ = \{𝜑1, … 𝜑𝑛\}$ schrijven we ook $𝜑1, … 𝜑𝑛 ⊨ 𝜓$
$𝜑1, … 𝜑𝑛$ moet het zelfde model hebben als $𝜓$

> [!Voorbeeld]-
> ![[Pasted image 20241007164254.png]]
> ![[Pasted image 20241007164322.png]]

### Lege verzameling
Wat als Σ = ∅? 
- Elke waardering is een model van ∅. 
- ⊨ 𝜓 betekent dat 𝜓 een tautologie is (waar voor elke waardering)


### Tegenvoorbeeld

Indien 𝜓 **niet een geldig gevolg** is van Σ noteren we dit als $$Σ ⊭ 𝜓 $$
Er bestaat dan een model 𝑉 van Σ dat geen model is van 𝜓. Het model 𝑉 heet dan een tegenvoorbeeld van Σ ⊨ 𝜓.

### Bekende geldige gevolgen
![[Pasted image 20241007164611.png]]

## Semantische tableaus

we zoeken naar **een tegenvoorbeeld**. Als we geen tegenvoorbeeld vinden, is het een geldig gevolg.

Een **sequent** is een rijtje van de vorm $𝜑_1, … , 𝜑_𝑛 ∘ 𝜓_1, … , 𝜓_𝑚$ met $𝜑_1, … , 𝜑_𝑛, 𝜓_1, … , 𝜓_𝑚$ formules.

**Eigenschap:**
Een segment $𝜑_1, … , 𝜑_𝑛 ∘ 𝜓_1, … , 𝜓_𝑚$ waarbij er 𝑖 en 𝑗 bestaan zodat $𝜑 𝑖 = 𝜓𝑗$ heeft geen tegenvoorbeelden.

> [!Voorbeeld]-
> ![[Pasted image 20241008135334.png]]
> ![[Pasted image 20241008140118.png]]

### Reductieregels
Een sequent wordt gereduceerd met behulp van reductieregels.

![[Pasted image 20241008135520.png]]


### Open of Gesloten
 Een tak heet gesloten indien links en rechts in het sequent dezelfde formule optreedt. 
 Een tableau heet gesloten indien **alle takken gesloten** zijn. 

 Een tak heet open wanneer de tak niet gesloten is en er geen reductieregels meer toegepast kunnen worden. 
 Een tableau heet open indien er **minstens 1 tak open** is.

### Semantisch consistent
Een formuleverzameling Σ is (semantisch) consistent als Σ een model heeft. 

Een formuleverzameling die niet consistent is heet **inconsistent**.

![[Pasted image 20241008140917.png]]

### Tautologie 

![[Pasted image 20241008141125.png]]

notities van issam

### Adequaatheidsstelling

𝜑1, … , 𝜑𝑛 ⊨ 𝜓 desda er bestaat een gesloten tableau voor 𝜑1, … , 𝜑𝑛 ∘ 𝜓

## Afleidingen
bewijzen of afleiden van de conclusie uit de aannames.
![[Pasted image 20241008141538.png]]

### Afleidingsregels

![[Pasted image 20241008141755.png]]

conjunctie:
![[Pasted image 20241008141904.png]]

implicatie:
![[Pasted image 20241008142100.png]]

disjunctie:
![[Pasted image 20241008144154.png]]

## Formule-inductie

Hoe bewijzen we dat iets geldt voor alle formules uit de propositielogica?

Basisstap: Bewering geldt voor de propositieletters.
Inductiestap: Als bewering geldt voor p en y
(inductiehypothese) dan geldt ze ook voor $\neg\psi, \psi \wedge \phi, \psi \lor \phi, \varphi\to\psi,\,\varphi\,\longleftrightarrow\psi$

> [!Voorbeeld]- 
> 
> Definieer voor elke formule p:
> - **subf(q)** als het aantal subformules in p
> - **length(p)** als het aantal symbolen in o (de hulpsymbolen "(" en ")" niet meegerekend)
> 
> Stelling: Voor elke formule p geldt: **subf (q) = length(q)**
> 
> **Basisstap**: Stel o = p (propositieletter). Dan geldt subf(q) = 1 = length(q)
> 
> **Inductiestap**:
> **Inductiehypothese**: Voor formules a en ß geldt: subf(a) = length(a) en subf(ß) = length(ß).
> Er volgt:
> - $s u b f(\neg\alpha)=1+s u b f(\alpha)=_{I H}1+l e n g t h(\alpha)=l e n g t h(\neg\alpha)$
> - subf(a Aß)=subf(a)+1+ subf(ß) =IH length(a)+1+length(ß) = length(a Aß)
> - subf(a V ß)=subf(a)+1+ subf(ß)=1H length(a)+1+ length(ß) = length(a V ß)
> - subf(a->ß)=subf(a)+1+subf(ß)=IH length(a)+1+ length(ß) = length(a->ß)
> - subf(a > ß) = subf(a) + 1+ subf(ß) =IH length(a) + 1+ length(ß) = length(a = )

## Functionele volledigheid

De verzameling {¬, ∧} is functioneel volledig.



Stelling: De verzameling {¬, ∧} is functioneel volledig.
Bewijs: We bewijzen voor elke formule: er bestaat formule p' die logisch equivalent is met p (laten we dit noteren als ($\varphi\equiv\varphi^{\prime}$) die enkel connectieven uit {¬, ∧} bevat. 

**Basisstap**: Als $\varphi = p$, neem dan $\varphi' = p$. De formule $\varphi'$ bevat geen connectieven en $\varphi\equiv\varphi^{\prime}$.

**Inductiestap**: Veronderstel dat er $\varphi'$ en $\psi'$ bestaan die enkel connectieven uit {¬, ∧} bevatten zodat $\varphi \equiv \varphi'$ en $\psi \equiv \psi'$ (inductiehypothese).

- $\lnot\varphi \equiv_{IH}\lnot\varphi^{\prime}$
- $\left(\varphi\wedge\psi\right)\equiv_{IH}\,\left(\varphi^{\prime}\wedge\psi^{\prime}\right)$
- (𝜑 ∨ 𝜓) ≡ ¬¬𝜑 ∧ ¬𝜓 ≡ (by IH) ¬(¬𝜑' ∧ ¬𝜓') 
- (𝜑 → 𝜓) ≡ (¬𝜑 ∨ 𝜓) ≡ ¬(𝜑 ∧ ¬𝜓) ≡ (by IH) ¬𝜑' ∧ ¬𝜓' 
- (𝜑 ↔ 𝜓) ≡ (𝜑 → 𝜓 ∧ 𝜓 → 𝜑) ≡ (¬𝜑' ∧ ¬𝜓' ∧ ¬𝜓' ∧ ¬𝜑')
