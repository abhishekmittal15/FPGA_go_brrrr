#include<iostream>
#include<fstream>
#include "event_timer.hpp"
using std::cout;
using std::endl;

int main(){

    // EventTimer et;

    // et.add("Hey there");
    // cout<<"Hey there"<<endl;
    // et.finish();

    // et.add("Bye there");
    // cout<<"Bye there"<<endl;
    // et.finish();

    // et.print();

    std::ofstream file;
    file.open("file.txt",std::ios_base::out);
    std::string str = "Hey there ";
    std::string str2 = "Hey there again";
    file << str;
    file << str2;

    return EXIT_SUCCESS;
}