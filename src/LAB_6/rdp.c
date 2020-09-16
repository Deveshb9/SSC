/*
Devesh Bhogre
PB47
SSC LAB-6
*/

#include<stdio.h>
#include<string.h>
#include<ctype.h>


char input[10];

int itr, error;

/*Following grammar will be used
 E –> E + T | T
 T –> T * F | F
 F –> ( E ) | id
 Since the grammar is left recursive we structure code as follows
 E –> T E’
 E’ –> + T E’ | e
 T –> F T’
 T’ –> * F T’ | e
 F –> ( E ) | id
*/

void E();
void T();
void E_Dash();
void T_Dash();
void F();

void F() {
    // F –> ( E ) | id
    if(isalnum(input[itr])){
        itr++;
    }
    else if (input[itr] == '(') {
        itr++;
        E();
        if (input[itr] == ')') {
            itr++;
        }
        else {
            error++;
        }
    }
    else {
        error++;
    }   
}


//Functions for each type of symbols 
void E() {
    //E –> T E’
    T();
    E_Dash();
}

void E_Dash() {
    // E’ –> + T E’ | e
    if (input[itr]=='+') {
        itr++;
        T();
        E_Dash();
    }
}

void T() {
    // T –> F T’
    F();
    T_Dash();
}

void T_Dash() {
    // T’ –> * F T’ | e
    if (input[itr] == '*') {
        itr++;
        F();
        T_Dash();
    }
}



int main() {

    itr = 0;
    error=0;
    printf("Enter the input sequence to start:");
    scanf("%s", input);
    printf("Sequence you have entered: ");
    printf(input);
    E();
    if(itr == strlen(input)&&error==0) {
        printf("\nString was accepted!");
    }
    else {
        printf("\nString could not be accepted!");
    }   
    printf("\n");
    return 0;
}

