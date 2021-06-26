#include "network.h"

int main(){
    client c = client();
    c.connect_to("127.0.0.1", 42069);
    int samples = 1000;
    int16_t* data = new int16_t[samples];
    c.get_frame(data, 0, 0, samples, 0);
    for (int i = 0; i < samples; i++){
        printf("%d\n",data[i]);
    }
    delete[] data;

    return 0;
}