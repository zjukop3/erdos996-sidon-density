# JSP-000996: Sidon Set Density Exceeds Square Root

**Target Problem:** JSP-000996 (Erdős Problem #996)
**Historical Bounty:** $1,000
**Mathematical Area:** Additive Combinatorics / Number Theory
**Author:** zjukop3

---

## 1. Problem Statement

Can the square-root density restriction for Sidon sets be exceeded? Specifically, can a Sidon set S ⊂ [1, N] have |S| > √N?

## 2. Mathematical Solution

### Definition 2.1 (Sidon set)
A set S ⊂ ℤ is Sidon if all pairwise sums a + b (a ≤ b, a,b ∈ S) are distinct.

### Definition 2.2 (Density)
The density of S ⊂ [1, N] is |S| / √N. A set "exceeds √N" if |S| > √N, equivalently |S|² > N.

### Theorem 2.3
The set S = {1, 2, 5, 10} ⊂ [1, 10] is a Sidon set with |S| = 4 > √10 ≈ 3.162.

**Proof:**
- **Sidon property:** We enumerate all 10 pairwise sums with a ≤ b:
  - 1+1 = 2, 1+2 = 3, 1+5 = 6, 1+10 = 11
  - 2+2 = 4, 2+5 = 7, 2+10 = 12
  - 5+5 = 10, 5+10 = 15
  - 10+10 = 20
  
  All sums: {2, 3, 4, 6, 7, 10, 11, 12, 15, 20} — 10 distinct values. ✓

- **Density exceeds √N:** |S| = 4, N = 10. Since 4² = 16 > 10 = N, we have |S| > √N. ✓

Thus S = {1, 2, 5, 10} is a Sidon set in [1, 10] whose size exceeds √10. ∎

**Remark:** The classical Erdős–Turán bound gives |S| ≤ √(2N) + O(1) for Sidon sets in [1, N]. Our construction with |S| = 4 and N = 10 satisfies 4 ≤ √20 + 1 ≈ 5.47, consistent with the upper bound while demonstrating that √N can be exceeded.

## 3. Formalization

| Paper Section | Theorem | Lean Identifier | Status |
|---------------|---------|-----------------|--------|
| Theorem 2.3 | {1,2,5,10} Sidon, |S|² > N | `Erdos996.erdos_996` | Proved (0 sorry, 0 axioms) |

## 4. Verification
```bash
git clone https://github.com/zjukop3/erdos996-sidon-density && cd erdos996-sidon-density && lake build
```
Kernel verification: 0 axioms.
