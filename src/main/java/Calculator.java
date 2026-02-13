package main.java;
public class Calculator {
    
    public double add(double a, double b) {
        return a + b;
    }
    
    public double subtract(double a, double b) {
        return a - b;
    }
    
    public double multiply(double a, double b) {
        return a * b;
    }
    
    public double divide(double a, double b) {
        if (b == 0) {
            throw new IllegalArgumentException("Division by zero not allowed");
        }
        return a / b;
    }
    
    public double modulo(double a, double b) {
        if (b == 0) {
            throw new IllegalArgumentException("Modulo by zero not allowed");
        }
        return a % b;
    }
    
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        System.out.println("Calculator loaded: 5 + 3 = " + calc.add(5, 3));
    }
}
