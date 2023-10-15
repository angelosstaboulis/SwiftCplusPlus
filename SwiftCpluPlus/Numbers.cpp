//
//  Numbers.cpp
//  SwiftCpluPlus
//
//  Created by Angelos Staboulis on 14/10/23.
//

#include "Numbers.hpp"
#include <iostream>
#include <string>
int Numbers::addNumbers(int a,int b){
        return a+b;
}
const char* Numbers::getString() {
  return "Hello World I am Angelos Staboulis";
}
int* Numbers::getArrayOfInt(){
    int *numbers = (int*)malloc(sizeof(int)*10);
    numbers[0]=10;
    numbers[1]=20;
    numbers[2]=30;
    numbers[3]=40;
    numbers[4]=50;
    numbers[5]=60;
    numbers[6]=70;
    numbers[7]=80;
    numbers[8]=90;
    numbers[9]=100;
    return numbers;
}
char** Numbers::getArrayOfStrings(){
    char **arr = (char**) malloc(4*sizeof(char*));
    arr[0]=(char*)"Angelos";
    arr[1]=(char*)"Theodoros";
    arr[2]=(char*)"John";
    arr[3]=(char*)"Angeliki";
    return arr;
}
