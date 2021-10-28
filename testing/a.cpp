#include<iostream>
#include<omp.h>
#include<chrono>

typedef std::chrono::high_resolution_clock::time_point TimeVar;

#define duration(a) std::chrono::duration_cast<std::chrono::nanoseconds>(a).count()
#define timeNow() std::chrono::high_resolution_clock::now()

using namespace std;

void init(int *a,int *b,int *sw,int size){
    for(int i=0;i<size;i++){
        a[i]=rand();
        b[i] = rand();
    }
}

void parallel(int *a,int *b,int *sw,int size){
    #pragma omp parallel for 
    for(int i=0;i<size;i++)
        sw[i] = a[i] + b[i];
}

void sequential(int *a, int *b, int *sw, int size){
    for (int i = 0; i < size; i++)
        sw[i] = a[i] + b[i];
}

int main(){

    int n = (int)(1e7);
    int *a = new int[n];
    int *b = new int[n];
    int *sw = new int[n];
    TimeVar start = timeNow();
    init(a,b,sw,n);
    TimeVar end=timeNow();
    cout << "Initialisation took : " << duration(end - start) / 1000 << " microseconds" << endl;

    start=timeNow();
    sequential(a,b,sw,n);
    end = timeNow();
    cout << "Sequential took : " << duration(end-start)/1000 <<" microseconds"<<endl;

    start=timeNow();
    parallel(a,b,sw,n);
    end=timeNow();
    cout << "Parallel took : " << duration(end - start) / 1000 << " microseconds" << endl;

    return 0;
}