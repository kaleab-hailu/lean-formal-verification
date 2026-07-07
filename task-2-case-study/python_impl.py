import pytest 
def safe_divide(a, b):
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a // b

def test_normal_division():
    assert safe_divide(10, 2) == 5

def test_division_by_zero():
    with pytest.raises(ValueError):
        safe_divide(10, 0)

def test_zero_dividend():
    assert safe_divide(0, 5) == 0

def test_floor_behavior():
    assert safe_divide(7, 2) == 3 