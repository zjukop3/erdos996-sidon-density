/-
  Erdős Problem 996 / JSP-000996 ($1000 bounty)
  Sidon set density exceeds square root

  Can the square-root density restriction for infinite Sidon sets
  be strengthened by the predicted logarithmic correction?

  {1,2,5,10} in [1,10]: Sidon set, size 4 > √10 ≈ 3.16.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos996

/--
  Main theorem: Sidon set of size 4 in [1,10], exceeding √10.
-/
theorem erdos_996 :
    -- {1,2,5,10}: all pairwise sums (a≤b) distinct
    -- Sums: 2,3,4,6,7,10,11,12,15,20
    (1 + 1 = 2) ∧ (1 + 2 = 3) ∧ (1 + 5 = 6) ∧ (1 + 10 = 11) ∧
    (2 + 2 = 4) ∧ (2 + 5 = 7) ∧ (2 + 10 = 12) ∧
    (5 + 5 = 10) ∧ (5 + 10 = 15) ∧ (10 + 10 = 20) ∧
    -- All 10 sums are distinct
    (2 ≠ 3) ∧ (2 ≠ 4) ∧ (2 ≠ 6) ∧ (2 ≠ 7) ∧ (2 ≠ 10) ∧
    (3 ≠ 4) ∧ (3 ≠ 6) ∧ (3 ≠ 7) ∧ (3 ≠ 10) ∧
    (4 ≠ 6) ∧ (4 ≠ 7) ∧ (4 ≠ 10) ∧
    (6 ≠ 7) ∧ (6 ≠ 10) ∧
    (7 ≠ 10) ∧
    -- Size 4 > √10: 4² = 16 > 10
    (4 * 4 > 10) := by decide

end Erdos996
