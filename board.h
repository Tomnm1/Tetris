#ifndef TETRIS_PO_BOARD_H
#define TETRIS_PO_BOARD_H
#include <iostream>
#include <fstream>
#include <SFML/audio.hpp>
#include <SFML/Graphics.hpp>
#include <SFML/Graphics/Text.hpp>
#include <SFML/Graphics/Font.hpp>
#include "score.h"
#include "point.h"
#include "figure.h"

class Board{
private:
    sf::Texture t1, t2, t3, t4;
    sf::Clock clock;
    sf::Music music;
    sf::Font font;
    Score score;
    Score bestScore;
    int field[20][10] = {0};
    Point points[4];
    Point points_old[4];
    Point points_next[4];
    Figure figures[7] =
            {
            Figure(1,3,5,7), // I
            Figure(2,4,5,7), // Z
            Figure(3,5,4,6), // S
            Figure(3,5,4,7), // T
            Figure(2,3,5,7), // L
            Figure(3,5,7,6), // J
            Figure(2,3,4,5), // O
            };
    float timer=0;
    float delay=0.4;
    int color_num;
    int color_next;
    int n;
    int howManyLines = 0;
    int level = 0;
    bool paused=false;
    bool GAME_OVER=false;
    std::fstream file;
public:
    Board();
    bool check();
    float delayFun();
    void key_catcher(auto);
    void pause_game();
    void do_rotate();
    void do_move(int);
    void generate_new();
    void tick();
    void check_lines();
    void game_over();
    void display_current(auto, auto*);
    void display_next(auto, auto*);
    void run();
    void text_options(auto*);
    int checkRotate();

};

#endif //TETRIS_PO_BOARD_H
