#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>
#include "menu.h"
#include <cstdlib>

    Menu::Menu(){
        sf::RenderWindow main_menu(sf::VideoMode(300, 400), "Tetris - menu");
        t.loadFromFile("../source/logo.png");
        btn.loadFromFile("../source/btn.png");
        system("ls");
        s.setTexture(t);
        ss.setTexture(btn);
        ss.scale(0.5, 0.5);
        ss.setPosition(68,210);
        auto p = &main_menu;
        run(p);
    }

    void Menu::run(auto menu){
        while (menu -> isOpen())
        {
            sf::Event event;
            while (menu -> pollEvent(event))
            {
                if (event.type == sf::Event::Closed)
                    menu -> close();
                if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
                {
                    Board bo;
                    menu -> close();
                }
            }
            menu -> clear(sf::Color::White);
            menu -> draw(s);
            menu -> draw(ss);
            menu -> display();
        }
    }

