

namespace Exercises
variable (A B C D I L M P Q R : Prop) --all the variables of type propositions are hoisted here so no need of redeclaring
theorem T51 (h1 : P) (h2 : P → Q) : P ∧ Q := by
 -- · exact ⟨h1, h2 h1 ⟩
  constructor
  · exact h1
  · exact h2 h1

theorem T52 (h1 : P ∧ Q → R) (h2 : Q → P) (h3 : Q) : R := by
  · exact h1 ⟨h2 h3, h3⟩

theorem T53 (h1 : P → Q) (h2 : Q → R) : P → (Q ∧ R) := by
  intro hp
  · exact ⟨h1 hp, h2 (h1 hp)⟩
--or
-- constructor
--   · exact h1 hp  --Q
--   · exact h2 (h1 hp)--R
theorem T54 (h1 : P) : Q → P := by
  intro hq
  exact h1

theorem T55 (h1 : P → Q) (h2 : ¬Q) : ¬P := by
  intro hp
  exact h2 (h1 hp)

theorem T56 (h1 : P → (Q → R)) : Q → (P → R) := by
  intro hq
  intro hp
  exact h1 hp hq

theorem T57 (h1 : P ∨ (Q ∧ R)) : P ∨ Q := by
 cases h1 with
      | inl hp => left; exact hp
      | inr hqr => right; exact hqr.1

theorem T58 (h1 : (L ∧ M) → ¬P) (h2 : I → P) (h3 : M) (h4 : I) : ¬L := by
  intro hl
  exact h1 ⟨hl, h3⟩ (h2 h4)
  -- have hlm : L ∧ M := ⟨hl, h3⟩
  -- have hnp : ¬P := h1 hlm
  -- have hp : P := h2 h4
  -- exact hnp hp

theorem T59 : P → P := by
  intro hp
  exact hp

 theorem T510 : ¬ (P ∧ ¬P) := by
  intro hp
  exact hp.2 hp.1
end Exercises
