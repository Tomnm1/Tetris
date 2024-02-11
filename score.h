#ifndef TETRIS_PO_SCORE_H
#define TETRIS_PO_SCORE_H
#include <SFML/Graphics.hpp>
class Score{
private:
    int value=0;
    sf::Texture t;
    sf::Sprite s;
public:
    Score();
    Score(int);
    void SetScore(int);
    int GetScore() const;
    void ScoreUp(int, int);
    sf::Sprite ScoreGet(int);


};

#endif //TETRIS_PO_SCORE_H
