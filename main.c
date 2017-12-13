// Program to create a simple calculator
// Performs addition, subtraction, multiplication or division depending the input from user

# include <stdio.h>
#include "mathLib/mathFunc.h"

int main() {

    char operator;
    double firstNumber,secondNumber, res;

    printf("Enter an operator (+, -, *, /): ");
    scanf("%c", &operator);

    printf("Enter two operands: ");
    scanf("%lf %lf",&firstNumber, &secondNumber);

    switch(operator)
    {
        case '+':
            res = add(firstNumber, secondNumber);
            break;
        case '-':
            res = sub(firstNumber, secondNumber);
            break;

        case '*':
            res = firstNumber*secondNumber;
            break;

        case '/':
            res = firstNumber/firstNumber;
            break;

        // operator is doesn't match any case constant (+, -, *, /)
        default:
            printf("Error! operator is not correct");
    }
    printf("%.1lf + %.1lf = %.1lf",firstNumber, secondNumber, res);
    return 0;
}
