from calculator.calculator import add, divide, multiply, subtract

def test_addition():
    assert add(2, 3) == 5

def test_subtraction():
    assert subtract(10, 5) == 5

def test_multiplication():
    assert multiply(4, 6) == 24

def test_division():
    assert divide(10, 2) == 5