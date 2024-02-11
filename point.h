#ifndef TETRIS_PO_POINT_H
#define TETRIS_PO_POINT_H
#include <iostream>

class Point{
private:
    int x;
    int y;
public:
    void setPoint(int, int);
    std::pair<int, int> getPoint();

};

#endif //TETRIS_PO_POINT_H
