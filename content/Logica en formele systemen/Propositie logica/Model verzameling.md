### Model verzameling

Een waardering 𝑉 heet **een model van een formuleverzameling** Σ als 𝑉 een model is van elke formule $𝜑 \ 𝜖 \ Σ$.

> [!Voorbeeld]-
> Modellenverzameling van $\Sigma = \{ p \land q, p \lor r \}$
> 
> | $( p )$ | $( q )$ | $( r )$ | $( p \land q )$ | $( p \lor r )$ |
> | :-----: | :-----: | :-----: | :-------------: | :------------: |
> |    T    |    T    |    T    |      **T**      |     **T**      |
> |    T    |    T    |    F    |      **T**      |     **T**      |
> |    T    |    F    |    T    |        F        |       T        |
> |    T    |    F    |    F    |        F        |       T        |
> |    F    |    T    |    T    |        F        |       T        |
> |    F    |    T    |    F    |        F        |       F        |
> |    F    |    F    |    T    |        F        |       T        |
> |    F    |    F    |    F    |        F        |       F        |
> Modellenverzameling van Σ:
> - V₁(p = T, q = T, r = T)
> - V₂(p = T, q = T, r = F)