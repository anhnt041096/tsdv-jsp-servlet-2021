package com.tsdv.homework4;

public class Factorial {

    public long calcFactorial(int number) {
        if (number > 0) {
            return number * calcFactorial(number - 1);
        } else {
            return 1;
        }
    }
}
