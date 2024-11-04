# Sorteren
#Alogritmenendatastructure1
## Simpele sorteeralgortimen 
### Bubblesort
> Bubble 2 numbers en swap

Bubble-sort is makkelijk te herschrijven voor **gelinkte lijsten**
Bubble sort is **stabiel** als je een strikte ongelijkheid kiest
Bubble sort is duidelijk **in-place**
![[Pasted image 20240131180703.png]]
### Insertion Sort
> insert into local sorted array

Insertion-sort is makkelijk te herschrijven voor **gelinkte lijsten**
Insertion sort is **stabiel** als je een strikte ongelijkheid kies
Insertion sort is duidelijk **in-place**
### Selection Sort
> selection of minimum

Selection sort is **niet stabiel**
	
Selection sort is duidelijk **in-place**
Selection-sort is makkelijk te herschrijven voor **gelinkte lijsten**

### Algemene

![[Pasted image 20240201171605.png]]
## Geavanceerde sorteeralgoritmen 
Verdeel & Heers Algoritmen
1. Divide
2. Conquer
3. Combine
### QuickSort
> pivot move to end
> item from left & right (swap if needed)

Soms eens een goede pivot. Soms eens een slechte. **Evenveel goede als slechte**.

Ga vanaf een bepaalde grootte (bvb. n=10) over naar insertion sort of selection sort

Randomized Quicksort
Mediaan van 3 QuickSort

Quicksort is helemaal niet stabiel
Quicksort (basisvariante) werkt wel goed op **dubbel gelinkte lijsten** maar niet op andere lijsten.
Quicksort is duidelijk **niet in-place**: minstens **Ω(log(n)) geheugen**
### Heapsort
> Gooi alle elementen op een heap.
> Pas n keer delete! toe op de heap en vul zo de vector opnieuw.

**Heapify** is in O(n). Nadien doet extract n keer delete! wat in O(log(n)) is.
Dus: O(n) + O(n.log(n)) = O(n.log(n))
Heapsort is **niet stabiel**.

Stelling: geen enkel algoritme dat gebaseerd is op vergelijkingen alleen kan sneller dan n.log(n)
- Voor ieder algoritme kan je een **beslissingsboom** tekenen die alle mogelijke executies visualiseert
- Iedere uitvoering van een algoritme produceert één van de **n! mogelijke permutaties** van de inputvector
- De **hoogte** van iedere beslissingsboom kan niet kleiner zijn dan **n.log(n)**
### Mergesort
> split array and merge sort them

![[Pasted image 20240201173133.png]]
We dalen recursief af en doen al het eigenlijke werk tijdens het **backtracken**

Mergesort is **stabiel** als je een niet-strikte ongelijkheid kiest
Mergesort is duidelijk **niet in-place**
 Mergesort werkt extreem goed op **lijsten**. Het is de basis van **externe sorteeralgoritmen**.

### Algemene
Vermijd bubble sort
Insertion sort is iets beter dan selection sort, behalve als verplaatsen duur is.
Quicksort wordt **onperformant** voor kleine vectoren.
Mergesort is de beste om lijsten te sorteren. Zie **external sort**
## Lineaire sorteeralgoritmen
### Radixsort
> Radix = Grondtal
> sort op digites

Radix Sort is **stabiel**. Stabiliteit van elke fase is **cruciaal**.
Radix Sort is **niet in-place**. De bins zijn nodig en de lijsten. Voor die laatste zou je cdr pointers kunnen hergebruiken.
O(k.n) (k is aantal digites)
### Bucket Sort
> De bins heten ook “buckets”. Bucket Sort is 1 pass van de Radix Sort. O(n)

Dit kan gebruikt worden: 
- als je geen perfecte sort nodig hebt. 
- als **preprocessing fase** voor een insertion sort.


### Counting Sort
![[Pasted image 20240201221347.png]]
Counting Sort telt hoeveel keer iedere key voorkomt en stopt de getallen in een vector entry per key. 
Dan worden de accumulatieve sommen berekend van die getallen die dan nadien per key als index dienen.

Alles samen O(n + k)
- Het tellen duurt O(n)
- De sommen berekenen duurt O(k)
- Het spreiden duurt opnieuw O(n)

Counting Sort is **stabiel**
Counting Sort is niet **in-place**