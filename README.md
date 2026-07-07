# Formal Verification with Lean 4

Name: Kaleab Hailu

This repository contains two tasks for the formal verification assignment, how Lean 4 can be used to mathematically prove code correctness, in contrast to traditional testing.

## Repository Structure

├── README.md
├── task-1-logic-proofs/
│ └── Logic.lean
└── task-2-case-study/
├── python_impl.py
├── LeanImpl.lean
└── CASE_STUDY.md

## Task 1 — Propositional Logic Proofs

This task focuses on proving propositions using Lean 4.

The file Logic.lean contains ten completed propositional logic theorems. Each theorem has been proven demonstrating basic proof techniques such as implication, conjunction, disjunction, and negation.

Concepts demonstrated:
Implication (→)
Conjunction (∧)
Disjunction (∨)
Negation (¬)
Direct proofs
Proof by contradiction
Case analysis

## Task 2 – Formal Verification Case Study

Case Study: Preventing Division by Zero

This task compares the same problem in Python and Lean 4.

## Python Implementation

The Python program implements a safe_divide function that performs integer division while checking at runtime whether the denominator is zero. Unit tests written with pytest verify several scenarios, including:
Normal division
Division by zero
Zero dividend
Integer floor division

Although these tests improve confidence in the implementation, they cannot guarantee correctness for every possible input.

## Lean 4 Implementation

The Lean implementation defines a safeDivide function that requires a mathematical proof that the denominator is not zero (b ≠ 0) before the function can be called.
The project also includes formal proofs showing that:
Integer division satisfies a mathematical correctness property.
It is impossible to construct a proof that 0 ≠ 0, meaning division by zero cannot occur.
Unlike Python, Lean prevents invalid programs from compiling rather than detecting errors only during execution.

## Conclusion

This repository demonstrates the key difference between traditional software testing and formal verification. While Python relies on runtime checks and unit tests to detect errors, Lean 4 uses mathematical proofs to guarantee correctness before the program is executed. This makes formal verification particularly valuable for software where correctness and reliability are essential.
