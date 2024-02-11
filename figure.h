#ifndef TETRIS_PO_FIGURE_H
#define TETRIS_PO_FIGURE_H

class Figure{
private:
    const int tab[4];
public:
    Figure(int,int,int,int);
    int getFigure(int);
};

#endif //TETRIS_PO_FIGURE_H
