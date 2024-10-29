# Eenvoudige principes

## Duiventil

Als we n identieke objecten verdelen over k dozen met n > k, dan is er minstens **1 doos met minstens twee objecten**. 

> [!abstract] Bewijs
> Uit het ongerijmde (U.H.O.) 
> Veronderstel van niet. Dan is er in elke doos hoogstens 1 object. Zij m het aantal lege dozen (met nul objecten dus). Dan zijn er in totaal k − m dozen met elk juist ´e´en object. Vermits alle objecten verdeeld werden, geldt 
> $$n = k − m ≤ k < n$$
> en dat is een tegenspraak

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
Zijn $A_1, A_2, ... , A_k$ twee aan twee **disjuncte** eindige verzamelingen. Dan geldt:
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
> De dodecaëder heeft 12 zijvlakken met elk 5 ribben. Elke ribbe ligt op 2 zijvlakken, dus we kunnen de koppels (ribbe, zijvlak) op twee manieren tellen (dubbeltelling):
> 1. Vanuit het aantal ribben: $\text{\# ribben} \times 2$
 >2. Vanuit het aantal zijvlakken:  $12 \times 5$
> 
> Deze gelijkstellen geeft:
> $\text{\# ribben} \times 2 = 12 \times 5$
> 
> Hieruit volgt:
> $\text{\# ribben} = \frac{12 \times 5}{2} = 30$
> 
> Dus, de dodecaëder heeft 30 ribben.

## Teltechnieken met producten

|                   | **Teruglegging**                         | **Zonder teruglegging**          |
| ----------------- | ---------------------------------------- | -------------------------------- |
| **Volgorde**      | Woorden $n^m$                            | Permutaties $\frac{n!}{(n-m)!}$  |
| **Geen volgorde** | Herhalingscombinaties $\binom{n+k-1}{k}$ | Deelverzamelingen $\binom{n}{k}$ |

### Woorden
Zijn X , Y eindige verzamelingen, met |X | = m en |Y | = n. Dan geldt:
$$\#\{\text{functies} :X\longrightarrow Y\}=n^{m}.$$

> [!Abstract] Bewijs
> Elke functie komt overeen met een m-tupel van Y en we weten:
> $$|Y^{m}|=|Y\times Y\times\cdots\times Y|=|Y|^{m}.$$
> 

Met **teruglegging** en **volgorde** is van belang

> [!Voorbeeld]-
> **Voorbeeld**: Het aantal woorden van lengte 3 in ons alfabet is $26^3$.
> **Voorbeeld**: Het aantal deelverzamelingen van een verzameling met n elementen is $2^n$.

### Injecties tellen
Als we **geen herhaling toelaten**, bekijken we woorden waarin de functie $[m] → Y$ **injectief** is.

$$n(n-1)(n-2)\cdot\cdot\cdot\cdot(n-m+1).$$

> [!Abstract] Bewijs
> Om een woord van lengte $m$ te vormen, kiezen we achtereenvolgens $m$ verschillende elementen uit $Y$. Voor de eerste letter zijn er $n$ keuzes, voor de tweede $n - 1$, voor de derde $n - 2$, enzovoort, tot we de laatste letter kiezen uit $n - m + 1$ overblijvende opties.

Het aantal keuzes is:
$${\frac{n!}{(n-m)!}}$$

Met **zonder teruglegging** en **volgorde** is van belang

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
Als **$n = m$**, dan kunnen we $n$ objecten op **$n!$** verschillende manieren ordenen. Dit betekent dat we bijecties $[n] \leftrightarrow Y$ tellen. 

Als $f : [n] \to Y$ injectief is en $|Y| = n$, dan is $f$ een bijectie.
**permutatie:** $f : Y \to Y$ 
$$n! \ \text{als} \ (n = k)$$

Met **zonder teruglegging** en **volgorde** is van belang
### Deelverzamelingen tellen
Zij $A$ een verzameling en $k ∈ \mathbb{N}$. Een k-deelverzameling van $A$ is een deelverzameling met $k$ elementen.
$$\binom{n}{k} = \frac{n!}{(n-k)!k!}$$

> [!Abstract] Bewijs
> $|A| = n$, kies k-elementen uit A met ordening, dan eenzelfde deelverzameling meerdere keren voorkomen.
> $$S=\{({ B},f)\mid B\subset A,|B|=k\ \mathrm{en~}F\ \mathrm{een~ordening~van~}B\}$$
> $|S|$ tellen op 2 manieren:
> 1. $|S|=x\times k!$
> 	$x$ is het **aantal k-deelverzamelingen**
> 	$k!$ is het **aantal ordeningen** van een $k$-deelverzamelingen
> 
> 2. $|S|={\bf1}\times\frac{n!}{(n-k)!}$
> 	$\frac{n!}{(n − k)!}$ **manieren $k$ elementen kiezen** uit $A$ met volgorde
> 
> We hebben dus
> $$x={\frac{n!}{(n-k)!\ k!}}= \binom{n}{k}.$$

$${\binom{n}{n-k}}={\binom{n}{k}}$$
Met **zonder teruglegging** en **geen volgorde**

### de driehoek van Pascal

![[02 VUB/Semester 1/Discrete Wiskunde/Permenant/Img/Capture.png]]

> [!Abstract] Bewijs
> $\binom{n}{k} =$ aantal k-deelverzameling in $A$ met $n$ elementen
> kies $a \in A$
> 
> $$D_{\in}:=\{B\in{\binom{A}{k}}\mid d\in B\}\;{\mathrm{~en~}}\;D_{\not{\in}}:=\{B\in{\binom{A}{k}}\mid a\not\in B\}.$$
> - $D_{\in}$: disjuncte unie met $A$
> - $D_{\not{\in}}$: *disjuncte unie zonder $A$*
> 
> We hebben dus ${\binom{n}{k}}=\left|\binom{A}{k}\right|=|D_{\epsilon}|+|D_{\not{\epsilon}}|.$
> $$|D_{\in}| = A \backslash  \{a\} + a \rightarrow \binom{n-1}{k-1} \ \text{manieren}$$
> - $A \backslash  \{a\}$: verzameling **k-1 elementen**
> 
> $$|D_{\not{\in}}| = A \backslash  \{a\} \rightarrow \binom{n-1}{k} \ \text{manieren}$$
> 

### Herhalingscombinaties
Een voorstelling van aabbcdd is •• | •• | • | ••
aantal streepjes: **$n-1$**
aantal plaatsen: **$n+k-1$**

We weten **${\binom{n+k-1}{n-1}} = \binom{n+ k - 1}{k}$** zodat het aantal herhalingscombinaties van k objecten uit n gelijk is aan:

$$\binom{n+ k - 1}{k} = \frac{(n + k - 1)!}{(n-1)!k!}$$

Met **teruglegging** en **geen volgorde**
## Binomium van Newton
...

## Inclusie en exclusie
Zijn $A_1, A_2, . . . , A_n$ eindige verzamelingen en stel $A = \{A_1, A_2, ... , A_n\}$. Dan hebben we
$$\left|\bigcup A\right|=\left|A_{1}\cup A_{2}\cup\dotsb\cup A_{n}\right|=\alpha_{1}-\alpha_{2}+\alpha_{3}-\dotsb+(-1)^{n-1}\alpha_{n}$$
met
$$\alpha_{i}=\sum_{B\in{\binom{A}{i}}}\left|\bigcap B\right|.$$
![[Inclusion-exclusion.svg.png]]

> [!Example] Bewijs
> Zij $x ∈ ⋃ A$, dan $∃k ∈ \mathbb{N}_0$ zodat x behoort tot juist k van de n verzamelingen in A.
> $$\begin{array}{r l}{k}&{{}{\mathrm{~in~}}\ \alpha_{1}=|A_{1}|+|A_{2}|+\cdots+|A_{n}|}\\ {\binom{k}{2}}&{{}{\mathrm{~in~}}\ \ \alpha_{2}}\\ \vdots & \vdots\end{array}$$
> $${\binom{k}{1}}-{\binom{k}{2}}+{\binom{k}{3}}-\cdots+(-1)^{k-1}{\binom{k}{k}}=1.$$
> 
> > [!Abstract]- 
> > - **$\binom{k}{1}$**: telt het element in elke verzameling.
> > - **$-\binom{k}{2}$**: corrigeert voor dubbel tellen in twee verzamelingen.
> > - **$+\binom{k}{3}$**: herstelt de correctie voor drie verzamelingen, enz.
> > 
> > De term $\binom{k}{1}$ (ook geschreven als k) geeft het aantal manieren waarop een element kan **voorkomen** in precies **één van de k verzamelingen**. Dit betekent dat we voor elk van de k verzamelingen afzonderlijk tellen of het element daarin voorkomt.
> 
