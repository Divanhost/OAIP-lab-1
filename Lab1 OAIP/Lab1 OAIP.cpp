// Lab1 OAIP.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include "pch.h"
#include <iostream>
#include <malloc.h>
#include <math.h>


long factorial(int a) {
	int fact =1;
	while (a > 0) {
		fact *= a;
		a--;
	}
	return fact;
}


int main()
{
	std::cout << "Hello World!\n";
	float d[5][5] = {
		{1,-7,1,1,1},
		{1,5,1,1,1},
		{1,1,-12.7,1,1},
		{1,-8,-7.1,1,1},
		{1,-3,1,-9,1},
	};
	float t[6][6] = {
		{3,4,-8.7,-9,-12,1},
		{-4,-23,-8.5,-1,-33,-4},
		{-7,-5,-9,-2.2,-1,0},
		{6,7,2,2,3,1.67},
		{1,12.12,-4,1,-1.9,1},
		{1,5,1,21,-4.4,11},
	};
	float l[7][7] = {
		{-1.5,6,-4.56,-8.9,5,7,12},
		{-5,-8.9,-0.62,8,6.5,2.3,-1},
		{-2.69,56,3.5,-2.69,-0.99,56,2},
		{2.56,9.96,0.25,6.98,-8.96,-7,-5.55},
		{35.2,13.2,-0.25,3.69,-2.35,-4.44,-6.65},
		{1,-1.5,-6.3,10,6,5.1,-5.1},
		{11,1.5,1.6,-1.8,-5.1,-8.1,1},
	};
	int a=0; // целая часть модуля суммы отрицательных эл-тов D
	int k=0; // количество отрицательных эл-тов D
	int b=0; // целая часть модуля суммы отрицательных эл-тов t
	int m=0; // количество отрицательных эл-тов t
	int c=0; // целая часть модуля суммы отрицательных эл-тов l
	int n=0; // количество отрицательных эл-тов l
	float tmp=0;
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			if(i+j>=4 )break;
			if (d[i][j] < 0) {
				k++;
				tmp += d[i][j];
			}
		}
	}
	a = abs(tmp);
	tmp=0;
	for (int i = 0; i < 6; i++) {
		for (int j = 0; j < 6; j++) {
			if (i + j >= 5)break;
			if (t[i][j] < 0) {
				m++;
				tmp += d[i][j];
			}
		}
	}
	b = abs(tmp);
	tmp=0;
	for (int i = 0; i < 7; i++) {
		for (int j = 0; j < 7; j++) {
			if (i + j >= 6)break;
			if (l[i][j] < 0) {
				n++;
				tmp += l[i][j];
			}
		}
	}
	c = abs(tmp);
	long aFact = factorial(a);
	long aMbfact = factorial(abs(a - b));
	long cMaMb = factorial(abs(c - a - b));
	float y[20];
	int i = 0;
	for (float x = 0, h = 0.5; x < 10; x += h) {
		y[i] = (2 * aFact*x + 2 * aMbfact*pow(x, m)) / (cMaMb*pow(x,n));
		i++;
	}
}


