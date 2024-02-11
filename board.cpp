#include <iostream>
#include <random>
#include <fstream>
#include <string>
#include "board.h"

std::random_device rd;
std::uniform_int_distribution<int> distribution(0, 6);

Board::Board() {
    font.loadFromFile("../source/LDFComicSans.ttf");
    if (!music.openFromFile("../source/tetris.ogg")) std::cerr << "music error" << std::endl;
    music.setLoop(true);
    music.play();
    file.open("db.txt", std::fstream::in | std::fstream::out);
    if (!file) file.open("db.txt", std::fstream::in | std::fstream::out | std::fstream::trunc);
    if (file.is_open()) {
        std::string tmp;
        while (getline(file, tmp)) {
            bestScore.SetScore(stoi(tmp));
            std::cout << bestScore.GetScore();
        }
        file.close();
    }
    color_num = distribution(rd) + 1;
    n = distribution(rd);
    for (int i = 0; i < 4; i++) {
        points[i].setPoint(figures[n].getFigure(i) % 2 + 4, figures[n].getFigure(i) / 2);
    }
    n = distribution(rd);
    color_next = distribution(rd) + 1;
    for (int i = 0; i < 4; i++) {
        points_next[i].setPoint(figures[n].getFigure(i) % 2 + 4, figures[n].getFigure(i) / 2);
    }
    run();
}


bool Board::check() {
    for (auto &i: points) {
        if (i.getPoint().first < 0 || i.getPoint().first >= 10 || i.getPoint().second >= 20) return false;
        if (field[i.getPoint().second][i.getPoint().first]) return false;
    }
    return true;
}

float Board::delayFun() {
    return 0.4 - (level / 2) * 0.04;
}

void Board::key_catcher(auto e) {
    if ((e.key.code == sf::Keyboard::Space) && (!GAME_OVER)) pause_game();
    if ((e.key.code == sf::Keyboard::Up) && (!paused)) do_rotate();
    if ((e.key.code == sf::Keyboard::Right) && (!paused)) do_move(1);
    if ((e.key.code == sf::Keyboard::Left) && (!paused)) do_move(-1);
    if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Down)) && (!paused)) delay = 0.01;
}

void Board::pause_game() {
    paused = !paused;
}
int Board::checkRotate() {
    int m=0;
    for (auto &i: points) {
        if (i.getPoint().second >= 20) return 0;
        if (i.getPoint().first < 0 ){
            if(i.getPoint().first<m) m = i.getPoint().first;
        }
        if (i.getPoint().first >= 10){
            if(i.getPoint().first>m) m = i.getPoint().first;
        }
        if (field[i.getPoint().second][i.getPoint().first]) return 0;
    }
    if(m>0)return m;
    else if(m<0) return m;
    return 4;
}
void Board::do_rotate() {
    Point p = points[1];
    for (auto &point: points) {
        int x = point.getPoint().second - p.getPoint().second;
        int y = point.getPoint().first - p.getPoint().first;
//        std::cout <<"Punkt point:"<< point.getPoint().first << " - " << point.getPoint().second << std::endl;
//        std::cout <<"Punkt p:"<< p.getPoint().first << " - " << p.getPoint().second << std::endl;
        point.setPoint(p.getPoint().first - x, p.getPoint().second + y);
//        std::cout <<"Punkt po rotacji:"<< point.getPoint().first << " - " << point.getPoint().second << std::endl;
    }
    int match = checkRotate();
    if (match==0) for (int i = 0; i < 4; i++) points[i] = points_old[i];
    if ((match>0) && (match!=4)) for (int i = 0; i < 4; i++) points[i].setPoint(points[i].getPoint().first+(9-match),points[i].getPoint().second) ;
    if (match<0) for (int i = 0; i < 4; i++) points[i].setPoint(points[i].getPoint().first-match,points[i].getPoint().second) ;
    if(!check()) for(int i =0;i<4;i++) points[i] = points_old[i];
}


void Board::do_move(int direction) {
    for (int i = 0; i < 4; i++) {
        points_old[i] = points[i];
        points[i].setPoint(points[i].getPoint().first + direction, points[i].getPoint().second);
    }
    if (!check()) {
        for (int i = 0; i < 4; i++) {
            points[i] = points_old[i];
        }
    }
}

void Board::generate_new() {
//    std::cout << points_old[0].getPoint().second << " - " << points_old[0].getPoint().first << std::endl;
    for (auto &i: points_old) {
        field[i.getPoint().second][i.getPoint().first] = color_num;
    }
    color_num = color_next;
    int n = distribution(rd);
//    std::cout << "n: " << n << std::endl;
    for (int i = 0; i < 4; i++) {
        points[i].setPoint(points_next[i].getPoint().first, points_next[i].getPoint().second);
    }
    color_next = distribution(rd) + 1;
//    std::cout << "color: " << color_next << std::endl;
    for (int i = 0; i < 4; i++) {
        points_next[i].setPoint(figures[n].getFigure(i) % 2 + 4, figures[n].getFigure(i) / 2);
    }
}

void Board::tick() {
    if ((timer > delay) && (!paused)) {
        for (int i = 0; i < 4; i++) {
            points_old[i] = points[i];
            points[i].setPoint(points[i].getPoint().first, points[i].getPoint().second + 1);
        }
        if (!check()) {
            generate_new();
        }
        timer = 0;
    }
}

void Board::check_lines() {
    int k = 19;
    int linesTotal = 0;
    for (int i = 19; i > 0; i--) {
        int count = 0;
        for (int j = 0; j < 10; j++) {
            if (field[i][j]) count++;
            field[k][j] = field[i][j];
        }
        if (count < 10) k--;
        if (count == 10) {
            linesTotal++;
            howManyLines++;
            //std::cout << "How many:" << howManyLines << std::endl;
            if (howManyLines == 10) {
                level++;
                howManyLines = 0;
            }
        }
    }
    score.ScoreUp(level, linesTotal);

}

void Board::game_over() {
    if (!GAME_OVER) {
        for (int i = 0; i < 10; i++) {
            if (field[1][i] != 0) {
                if (score.GetScore() > bestScore.GetScore()) {
                    file.open("db.txt", std::fstream::in | std::fstream::out);
                    if (file.is_open()) {
                        file << score.GetScore();
                        file.close();
                    }
                }
                GAME_OVER = true;
            }
        }
    }
}

void Board::display_current(auto s, auto *window) {
    for (auto &point: points) {
        s.setTextureRect(sf::IntRect(color_num * 32, 0, 32, 32));
        s.setPosition(point.getPoint().first * 32, point.getPoint().second * 32);
        s.move(32, 32); //offset
        window->draw(s);
    }
}

void Board::display_next(auto s, auto *window) {
    for (auto &i: points_next) {
        s.setTextureRect(sf::IntRect(color_next * 32, 0, 32, 32));
        s.setPosition(i.getPoint().first * 32, i.getPoint().second * 32);
        s.move(280, 225); //offset
        window->draw(s);
    }
}

void Board::text_options(auto *txt){
    txt->setCharacterSize(24);
    txt->setStyle(sf::Text::Regular);
    txt->setFillColor(sf::Color::Magenta);
}

void Board::run() {
    sf::RenderWindow window(sf::VideoMode(512, 744), "Tetris!");
    sf::RenderWindow *pointer = &window;
    t1.loadFromFile("./source/tiles.png");
    t2.loadFromFile("../source/background.png");
    t3.loadFromFile("../source/game_over.jpeg");
    t4.loadFromFile("../source/pause.png");
    sf::Text text1("Level", font);
    text_options(&text1);
    text1.setPosition(360, 10);
    sf::Text text2("Best score", font);
    text_options(&text2);
    text2.setPosition(360, 50);
    sf::Text text3("Current score", font);
    text_options(&text3);
    text3.setPosition(360, 120);
    sf::Text text4("Next figure", font);
    text_options(&text4);
    text4.setPosition(360, 190);
    sf::Sprite s(t1), background(t2), endGame(t3), img_pause(t4);
    s.setTextureRect(sf::IntRect(0, 0, 32, 32));
    while (window.isOpen()) {
        float time = clock.getElapsedTime().asSeconds();
        clock.restart();
        timer += time;

        sf::Event e{};
        while (window.pollEvent(e)) {
            if (e.type == sf::Event::Closed) window.close();
            if (e.type == sf::Event::KeyPressed) key_catcher(e);
        }
        //std::cout<<points[0].y<<" - "<<points[0].x<< std::endl;
        tick();
        check_lines();
        game_over();
        delay = delayFun();
        //std::cout<<delay<<std::endl;
        window.draw(background);
        window.draw(text1);
        window.draw(text2);
        window.draw(text3);
        window.draw(text4);
        for (int i = 0; i < 20; i++) {
            for (int j = 0; j < 10; j++) {
                if (field[i][j] == 0)continue;
                s.setTextureRect(sf::IntRect(field[i][j] * 32, 0, 32, 32));
                s.setPosition(j * 32, i * 32);
                s.move(32, 32);
                window.draw(s);
            }
        }

        display_current(s, pointer);
        display_next(s, pointer);
        //best Score
        for (int i = 0; i < 6; i++) {
            sf::Sprite spkt = bestScore.ScoreGet(i);
            spkt.setPosition(400 + i * 16, 80);
            window.draw(spkt);
        }
        // Score
        for (int i = 0; i < 6; i++) {
            sf::Sprite spkt = score.ScoreGet(i);
            spkt.setPosition(400 + i * 16, 150);
            window.draw(spkt);
        }
        // LEVEL
        for (int i = 5; i > 3; i--) {
            Score l(level);
            sf::Sprite spkt = l.ScoreGet(i);
            spkt.setPosition(400 + i * 16, 10);
            window.draw(spkt);
        }
        // END GAME
        if (GAME_OVER) {
            endGame.setTextureRect(sf::IntRect(150, -50, 512, 400));
            window.draw(endGame);
            paused = true;
        }
        if ((paused) && (!GAME_OVER)) {
            img_pause.setPosition(128, 200);
            window.draw(img_pause);
        }
        window.display();
    }
}

