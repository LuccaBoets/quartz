## Logisch equivalent

Twee formules 𝜑 en 𝜓 zijn **logisch equivalent** als de formule $(𝜑 \iff 𝜓)$ een tautologie is.

Formules 𝜑 en 𝜓 zijn logisch equivalent als 
- $(𝜑 \iff 𝜓)$ een tautologie is 
- voor elke waardering 𝑉 geldt $𝑉 ((𝜑 \iff 𝜓))$ = 1 
- voor elke waardering 𝑉 geldt $𝑉(𝜑) = 𝑉(𝜓)$

**Veel gebruikte** logische equivalenties:
- 𝜑 en ¬¬𝜑
- **De wetten van De Morgan**:
    - ¬(𝜑 ∧ 𝜓) en (¬𝜑 ∨ ¬𝜓)
    - ¬(𝜑 ∨ 𝜓) en (¬𝜑 ∧ ¬𝜓)
- **De principes van de distributiviteit**:
    - 𝜑 ∧ 𝜓 ∨ 𝜒 en (𝜑 ∧ 𝜓) ∨ (𝜑 ∧ 𝜒)
    - 𝜑 ∨ 𝜓 ∧ 𝜒 en (𝜑 ∨ 𝜓) ∧ (𝜑 ∨ 𝜒)
- **Contrapositie**:
	- (𝜑 → 𝜓) en (¬𝜓 → ¬𝜑)
	- (𝜑 → 𝜓) en (¬𝜑 ∨ 𝜓)
	- (𝜑 ∧ 𝜓) en (𝜑 → 𝜓) ∧ (𝜓 → 𝜑)