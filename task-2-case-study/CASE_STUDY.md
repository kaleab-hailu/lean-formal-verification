CASE STUDY: Choosing one use case and testing it in python and lean
Preventing Division by Zero

Overview
One of the common programming errors is dividing by zero. In this case study we implemented safe division function in python and Lean 4 to compare traditional testing method (in python) with formal verification (in Lean 4).

Python Implementation

The function safe_divide checks whether the denominator is zero at runtime. If the denominator is zero, the function raises ValueError to prevent invalid operation. The division by zero is gracefully handled.

We have checked the values using several tests to increase confidence, but only those specific cases are tested. If the runtime check is removed or forgotten it is possible for another part of the program to call the function with invalid denominator.

Lean 4 Implementation

The function safeDivide, when taking arguments a and b, requires a proof that the denominator is not zero (b ≠ 0) before the function can be called.

If the denominator is 0, the proof 0≠0 cannot exist. So, Lean rejects any attempt to call safeDivide with zero denominator during compilation. As a result, the program cannot even be built if such an invalid call exists.

Additionally, we proved a second property, safeDivide_correct, showing that for any valid a and b, the result of division multiplied back by b never exceeds a. A guarantee that holds for all possible inputs simultaneously, not just the specific cases we happened to test.

The need for Formal Verification

The traditional testing method checks only a limited number of inputs and cannot guarantee for every possible execution to be handled gracefully.

In this example, Python detects division by zero only when the program runs, whereas Lean prevents the invalid program from compiling at all. This eliminates an entire class of bugs before the software is executed.

Conclusion
This case study shows the advantage of formal verification over testing. While our python implementation checks on runtime, Lean provides mathematical guarantees that invalid operations, such as division by zero, cannot occur.
