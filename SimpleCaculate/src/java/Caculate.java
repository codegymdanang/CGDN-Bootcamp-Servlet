/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Trung
 */
public class Caculate {

    //Phuong thuc tinh toan cho Simple Caculate
    public double ResultCaculate(double a, double b, char operator) throws Exception {
        switch (operator) {
            case '+':
                return a + b;
            case '-':
                return a - b;
            case '*':
                return a * b;
            case '/':
                if (b != 0) {
                    return a / b;
                } else {
                    throw new Exception("Can not division 0");
                }
            default:
                throw new Exception("Can not caculate. Invalid!!");
        }
    }
}
