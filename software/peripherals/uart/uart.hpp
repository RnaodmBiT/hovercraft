#pragma once
#include <cstdint>
#include <cstdbool>


class Uart {
public:
    static void Initialize(int baud = 115200);

    static void Write(char byte);
    static void Write(const char* string);
    static void Write(const char* data, int length);

    template <int N>
    static void Write(const char (&data)[N]) {
        Write(data, N);
    }

    static char Read();

    static bool HasData();
};

