int main(int argc, const char * argv[]) {
    
    // Import data
    int data[] = { 176,  46,  16,   9,   7,   8,  16,  15,  11,  12,  13,  15,  15,  17,  12,  24,  43,  55, 120, 246, 255, 252, 175
};
    // Get array size of Data
    const int sizeData = sizeof(data) / sizeof(data[0]);
    // Allocate data for new array
    int newData[sizeData];
    // Do image segmenting
    for (int i = 0; i < sizeData; i++) {
        newData[i] = data[i] < 100 ? data[i] : 255;
    }    return 0;
}
