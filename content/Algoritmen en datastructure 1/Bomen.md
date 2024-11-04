# Bomen
#Alogritmenendatastructure1
## Structuur van bomen
De ariteit van een node is het aantal kinderen

Een complete boom heeft **geen gaten** wanneer we hem van links naar rechts lezen, laag per laag

- Expressiebomen
- Gelinkte Representatie
- Vectoriële Representatie
- Dubbelgelinkte Bomen (makkelijk om vader te krijgen)
- Threaded Trees (right attribute om 'rechtse' node te krijgen)
## Doorlopen van bomen
![[Pasted image 20240201222444.png]]![[Pasted image 20240201222820.png]]

## Binaire zoekbomen
BST (binaire searchtree)

Een **binaire zoekboom** is een binaire boom zodat voor elke node n geldt: de elementen in de linkerdeelboom van n zijn allen kleiner dan n en de elementen in de rechterdeelboom van n zijn allen groter dan n.

Links kleiner, rechts grooter, moet niet compleet zijn

![[Pasted image 20240201223334.png]]

### Delete
![[Pasted image 20240201224127.png]]

## AVL bomen
Een AVL-boom is een zoekboom waarbij het hoogteverschil tussen beide subbomen van elke node maximaal 1 is.

Gedegenereerde Bomen 
![[Pasted image 20240201224201.png]]

## Gebalanceerde Bomen
![[Pasted image 20240201224252.png]]
Een complete boom is **perfect gebalanceerd**
Perfect balanceren na elke insert&delete is **duur**