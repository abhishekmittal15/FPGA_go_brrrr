#include<iostream>
#include<chrono>

using namespace std;

int main(){
    auto start = chrono::high_resolution_clock::now();

    for (int i = 0; i < 3487000; i++)
    {
        int a = 1;
    }
    auto end = chrono::high_resolution_clock::now();
    auto duration=chrono::duration_cast<chrono::microseconds>(end-start);
    cout << duration.count() << endl;
    return 0;
}

// #include <iostream>
// #include <chrono>
// #include <ratio>
// // #include <thread>

// void f()
// {
//     for (int i = 0; i < 100000; i++)
//     {
//         int a = 1;
//     }
// }

// int main()
// {
//     auto t1 = std::chrono::high_resolution_clock::now();
//     f();
//     auto t2 = std::chrono::high_resolution_clock::now();

//     // floating-point duration: no duration_cast needed
//     std::chrono::duration<double, std::micro> fp_ms = t2 - t1;

//     // integral duration: requires duration_cast
//     auto int_ms = std::chrono::duration_cast<std::chrono::microseconds>(t2 - t1);

//     // converting integral duration to integral duration of shorter divisible time unit:
//     // no duration_cast needed
//     std::chrono::duration<long, std::micro> int_usec = int_ms;

//     std::cout << "f() took " << fp_ms.count() << " ms, "
//               << "or " << int_ms.count() << " whole milliseconds "
//               << "(which is " << int_usec.count() << " whole microseconds)" << std::endl;
// }