#include "point.h"

void Point::setPoint(int a,int b) {
    x = a;
    y = b;
}

std::pair<int, int> Point::getPoint(){
    return std::make_pair(x, y);
}