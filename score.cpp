#include "score.h"

    Score::Score(){
        t.loadFromFile("../source/digits.png");
        s.setTexture(t);
    }
    Score::Score(int x):value(x){
        t.loadFromFile("../source/digits.png");
        s.setTexture(t);
    }
    void Score::SetScore(int x){
        value=x;
    }
    int Score::GetScore() const{
        return value;
    }
    void Score::ScoreUp(int level,int lines){
        if(level>8) level=8;
        int tmp = level/2;
        int v;
        v = (tmp+1)*(lines*lines);
        value+=v*100;
    }
    sf::Sprite Score::ScoreGet(int digit){
        int tab[6] = {0};
        if (value != 0) {
            tab[0] = value / 100000;
            tab[1] = (value % 100000) / 10000;
            tab[2] = (value % 10000) / 1000;
            tab[3] = (value % 1000) / 100;
            tab[4] = (value % 100) / 10;
            tab[5] = value % 10;
        }
        s.setTextureRect(sf::IntRect(tab[digit]*16,0,16,32));
        return s;
    }


