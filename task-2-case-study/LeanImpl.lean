--goal is safe division can never be called incorrectly with a zero denominator.
--not just handling gracefully

def safeDivide (a b : Nat) (_h : b ≠ 0) : Nat := a / b

#eval safeDivide 10 3 (by decide)   -- 3

theorem safeDivide_correct (a b : Nat) (h : b ≠ 0) :
    safeDivide a b h * b <=  a := by -- goal
  unfold safeDivide --swaps safeDivide a b h for what it actually equals (a / b) so the goal becomes plain arithmetic.
  exact Nat.div_mul_le_self a b -- ready made proof

theorem safeDivide_prevents_zero : ¬ (0 ≠ 0) := by --it is impossible for something to legitimately claim that 0 = 0 leads to False.
  intro h
  exact h rfl --There can never exist a proof that 0 is not equal to 0.i
