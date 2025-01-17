#include <SFML/Graphics.hpp>
#define SCREENW 2560u
#define SCREENH 1600u

class circle{
public:
    int x = 0;
    int y = 0;
    int vx = 1;
    int vy = 1;
    int r = 100;
    auto drawCircle(){
        sf::CircleShape shape(100);
        shape.setFillColor(sf::Color(100,250,50));
        shape.setPosition(sf::Vector2f(x,y));
        return shape;
    }
};

void collisions(circle *c){
    if(c->y + c->r >= SCREENH){
        c->vy *= -1;
    }
    if(c->y < 0u){
        c->vy *= -1;
    }
//    if(c->x + c->r >= SCREENW){
//        c->vx *= -1;
//    }
//    if(c->x < 0u){
//        c->vx *= -1;
//    }
}

int main()
{
    circle c;

    auto window = sf::RenderWindow(sf::VideoMode({SCREENW, SCREENH}), "CMake SFML Project");
    window.setFramerateLimit(144);

    while (window.isOpen())
    {
        while (const std::optional event = window.pollEvent())
        {
            if (event->is<sf::Event::Closed>())
            {
                window.close();
            }
        }



        window.clear();
//        sf::CircleShape shape(100);
//        shape.setFillColor(sf::Color(100,250,50));
//        shape.setPosition(sf::Vector2f(1000,1000));
        window.draw(c.drawCircle());
        c.x = c.x + 2*c.vx;
        c.y = c.y + 2*c.vy;
        collisions(&c);

        window.display();
    }
}
