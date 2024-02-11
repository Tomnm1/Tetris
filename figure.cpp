#include "figure.h"

Figure::Figure(const int a, const int b, const int c, const int d):tab{a,b,c,d}{}

int Figure::getFigure(int x) {
    return tab[x];
}