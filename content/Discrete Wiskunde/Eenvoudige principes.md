# Eenvoudige principes

## Duiventil

Als we n identieke objecten verdelen over k dozen met n > k, dan is er minstens **1 doos met minstens twee objecten**. 

Bewijs. Uit het ongerijmde (U.H.O.) 
Veronderstel van niet. Dan is er in elke doos hoogstens ´e´en object. Zij m het aantal lege dozen (met nul objecten dus). Dan zijn er in totaal k − m dozen met elk juist ´e´en object. Vermits alle objecten verdeeld werden, geldt 
$$n = k − m ≤ k < n$$
en dat is een tegenspraak

> [!Voorbeeld]-
> **Voorbeeld 1:**
> In de eerste 2013 elementen van de rij $7, 77, 777, 7777, \dots$ zit minstens één veelvoud van 2013.
> 
> 1. Voor elk $a_i$ in de rij $a_1 = 7, a_2 = 77, \dots$, bepaal de rest $r_i$ bij deling door 2013: $a_i = 2013q_i + r_i$.
> 2. Als een rest $r_i = 0$, dan is $a_i$ deelbaar door 2013.
> 3. Veronderstel dat geen enkele $r_i = 0$. De resten $r_1, r_2, \dots, r_{2013}$ zijn dan een deelverzameling van $\{1, 2, \dots, 2012\}$. Volgens het **duiventilprincipe** zijn minstens twee resten gelijk: $r_i = r_j$ voor $i \neq j$.
> 4. Het verschil $a_i - a_j$ is enerzijds een veelvoud van 2013 en anderzijds $a_{i-j} \times 10^j$, waarbij 10 en 2013 geen gemeenschappelijke delers hebben.
> 5. Conclusie: $a_{i-j}$ moet een veelvoud van 2013 zijn, wat leidt tot een tegenspraak met de aanname dat geen enkele rest nul is.
> 
> Er is dus minstens één veelvoud van 2013 in de eerste 2013 elementen van de rij.
> 
> **Voorbeeld 2:**
> ![[Pasted image 20241002110951.png]]

## Eenvoudige teltechnieken

**Notatie.** **\[n] := {1, 2, . . . , n}**. Meer algemeen is \[0..n] = {0, 1, . . . , n} en \[−k..l] = {−k, −k + 1, . . . , l − 1, l}.

Een verzameling A heeft $n \in N$ elementen indien er een bijectie bestaat van **\[n]** naar A. We noteren |A| = n. Zulk een bijectie bepaalt een **ordening of nummering** van A

**Stelling:** 
Voor elke eindige verzameling X geldt
$$|P(X)|=2^{|X|}$$
### Somprincipe
Zijn A1, A2, . . . , Ak twee aan twee **disjuncte** eindige verzamelingen. Dan geldt:
$$|A_{1}\cup A_{2}\cup\dotsb\cup A_{k}|=|A_{1}|+|A_{2}|+\dotsb+|A_{k}|$$

> [!Abstract] Bewijs
> Bewijs: Ze hebben bijecties $f_i : [ n_i ] \rightarrow A_i$ voor $i \in [k]$. Nu is
> $$[\sum_{i=1}^{k}n_{i}]=[1..n_{1}]\cup[(n_{1}+1)..(n_{1}+n_{2})]\cup\cdot\cdot\cup[(\sum_{i=1}^{k-1}n_{i})+1...\sum_{i=1}^{k}n_{i}].$$
> Definieer
> $$f(i)=f_{j}(i-\sum_{l=1}^{j-1}n_{l})\;\;\;{\mathrm{als}}\;\;\;i\in[(\sum_{l=1}^{j-1}n_{l})+1...\sum_{l=1}^{j}n_{l}].$$
> Door
> $$f(i)=f_{j}(i-\sum_{l=1}^{j-1}n_{l})\;\;\;{\mathrm{als}}\;\;\;i\in[(\sum_{l=1}^{j-1}n_{l})+1...\sum_{l=1}^{j}n_{l}].$$
> 

> [!Voorbeeld]-
> Stel $k = 3$, met $n_1 = 3$, $n_2 = 2$, $n_3 = 4$. De unie van de indexen is:
> 
> \[
> [1, 9] = [1, 3] \cup [4, 5] \cup [6, 9]
> \]
> 
> Bijecties:
> - $f_1 : \{1, 2, 3\} \to A_1$, bijvoorbeeld $f_1(1) = a_1$, $f_1(2) = a_2$, $f_1(3) = a_3$.
> - $f_2 : \{1, 2\} \to A_2$, bijvoorbeeld $f_2(1) = b_1$, $f_2(2) = b_2$.
> - $f_3 : \{1, 2, 3, 4\} \to A_3$, bijvoorbeeld $f_3(1) = c_1$, $f_3(2) = c_2$, $f_3(3) = c_3$, $f_3(4) = c_4$.
> 
> Definitie van $f$:
> 
> - Voor $i \in [1, 3]$: $f(i) = f_1(i)$ $\rightarrow f(1) = a_1, f(2) = a_2, f(3) = a_3$
> - Voor $i \in [4, 5]$: $f(i) = f_2(i - 3)$ $\rightarrow f(4) = b_1, f(5) = b_2$
> - Voor $i \in [6, 9]$: $f(i) = f_3(i - 5)$ $\rightarrow f(6) = c_1, f(7) = c_2, f(8) = c_3, f(9) = c_4$
> 
> Dit levert een bijectie $f$ van $[1, 9]$ naar $A_1 \cup A_2 \cup A_3$.

### Dubbeltelling

Zij $A$ en $B$ twee (eindige) verzamelingen. Zij $S \subset A \times B$. 
Stel voor elke $a \in A$: $k_a := | \{ (a, b) \mid b \in B \text{ en } (a, b) \in S \} |$ en voor elke $b \in B$: $r_b := | \{ (a, b) \mid a \in A \text{ en } (a, b) \in S \} |.$

Dan geldt:

$$\sum_{s\in A}k_{s}=|S|=\sum_{b\in B}r_{b}.$$
Iets in 2 richting tellen geeft het zelfde antwoord.

> [!Abstract] Bewijs
> Stel $K_{a}:=\{(a,b)\mid b\in B{\mathrm{~en~}}(a,b)\in S\}.$. De verzamelingen $(K_a)_{a∈A}$ zijn disjunct. Dus
> $$|S|=|\bigcup_{a\in A}K_{a}|=\sum_{a\in A}k_{a}.$$
> Analoog met $R_b := \dots$ voor de rijen.

> [!Voorbeeld]-
> ![[Pasted image 20241002114912.png]]


## Teltechnieken met producten
### Woorden


...
> [!Voorbeeld]-
> Voorbeeld: Het aantal woorden van lengte 3 in ons alfabet is 263.
> Voorbeeld: Het aantal deelverzamelingen van een verzameling met n elementen is 2n.

### Injecties tellen
cties tellen Als we geen herhaling toelaten, bekijken we woorden waarin de functie $[m] → Y$ injectief is. Hoe tellen we het aantal injectieve functies?

Het aantal **geordende keuzes** van m objecten uit n **zonder herhaling** is
$$n(n-1)(n-2)\cdot\cdot\cdot\cdot(n-m+1).$$

Bewijs. Om een woord van lengte $m$ te vormen, kiezen we achtereenvolgens $m$ verschillende elementen uit $Y$. Voor de eerste letter zijn er $n$ keuzes, voor de tweede $n - 1$, voor de derde $n - 2$, enzovoort, tot we de laatste letter kiezen uit $n - m + 1$ overblijvende opties.

Het aantal keuzes in voorgaande stelling is bijgevolg kort te noteren als 
$${\frac{n!}{(n-m)!}}$$

> [!Voorbeeld]-
> Op hoeveel manieren kan ik 6 studenten uit een klas van 20 kinderen kiezen en in een rij tegen het bord zetten?
> 
> Zij $n = 20$ het aantal studenten in de klas en $m = 6$.
> Het totale aantal manieren om 6 studenten te kiezen en te rangschikken is dus:
> 
> $$
> 20 \cdot 19 \cdot 18 \cdot 17 \cdot 16 \cdot 15 = \frac{20!}{(20 - 6)!} = \frac{20!}{14!}
> $$
> 
> De berekening levert het totale aantal manieren op om 6 studenten uit 20 te kiezen en in een rij te zetten.

### Bijecties tellen
Als $n = m$, dan kunnen we $n$ objecten op $n!$ verschillende manieren ordenen, waarbij de volgorde van belang is. Dit betekent dat we bijecties $[n] \leftrightarrow Y$ tellen. 

Als $f : [n] \to Y$ injectief is en $|Y| = n$, dan is $f$ een bijectie. Het selecteren van $n$ objecten uit $n$ kan worden gezien als een permutatie van die objecten. Een 

bijectie $f : Y \to Y$ die een verzameling naar zichzelf afbeeldt, wordt een permutatie genoemd. Met $|Y| = n$ hebben we een bijectie $g : [n] \to Y$. 

De samenstelling $f \circ g : [n] \to Y$ is ook een ordening van $Y$. Twee bijecties $f$ en $g$ leiden tot een permutatie $g \circ f^{-1} : Y \to Y$, omdat bijecties inverteerbaar zijn.

### Deelverzamelingen tellen
...

### Herhalingscombinaties
...


## Binomium van Newton
...

## Inclusie en exclusie