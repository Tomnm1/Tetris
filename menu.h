#ifndef TETRIS_PO_MENU_H
#define TETRIS_PO_MENU_H
#include "board.h"
class Menu{
private:
    sf::Texture t, btn;
    sf::Sprite s, ss;
public:
    Menu();
    void run(auto);
};

#endif //TETRIS_PO_MENU_H
