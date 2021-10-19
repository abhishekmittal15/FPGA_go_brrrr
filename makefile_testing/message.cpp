#include<iostream>
#include "message.hpp"

Message::Message(){
    std::cout << "Constructor called" << std::endl;
}

void Message::print_message(){
    std::cout << "Printed something else" << std::endl;
}

Message::~Message(){
    std::cout << "Destructor Called" << std::endl;
}