/*
compile using the command:

gcc smallest-change.c -lm -osmallest-change

run using the command:

./smallest-change

*/
#include <stdio.h>
#include <math.h>
#include <time.h>

void calculate(float price, float cash);
float round_incoming_price(float price);

int main()
{
    float price, cash;
    clock_t before, after;
    int msec;

    printf("Enter item price ($AU):\n");
    scanf("%f", &price);
    printf("Enter cash amount ($AU):\n");
    scanf("%f", &cash);

    before = clock();
    calculate(price, cash);
    after = clock();

    msec = after - before;
    printf("Time taken: %d seconds %d milliseconds\n", msec / 1000, msec % 1000);

    return 0;
}

void calculate(float original_price, float cash)
{
    float change, price, c;
    float denominations[] = {100.00, 50.00, 20.00, 10.00, 5.00, 2.00, 1.00, 0.50, 0.20, 0.10, 0.05};
    int count = 0,
        num_denominations = (int)(sizeof(denominations) / sizeof(float)),
        i, j, k, m;

    price = round_incoming_price(original_price);
    change = cash * 100 - price * 100;

    if (change < 0)
    {
        printf("Insufficient cash given\n");
    }
    else
    {
        printf("Entered original price ($%'.2f) and cash amount ($%.2f)\n", original_price, cash);
        printf("Rounded price: ($%'.2f)\n", price);
        printf("Change needed: ($%'.2f)\n", change / 100);

        for (i = 0; i < num_denominations; ++i)
        {
            j = (int)change;
            k = (int)(denominations[i] * 100);
            m = j % k;
            c = (int)((j - m) / k);
            change -= c * denominations[i] * 100;
            count += c;
            if (c > 0)
            {
                printf("$%'.2f - %i\n", denominations[i], (int)c);
            }
        }

        printf("Change count: %d\n", count);
        printf("Debug change (should == 0): %'.2f\n", change);
    }
}

float round_incoming_price(float price)
{
    float rounded_price_to_tenth;
    int hundredth_decimal;
    rounded_price_to_tenth = ((int)(price * 10)) / 10.0;
    hundredth_decimal = (int)((price - rounded_price_to_tenth) * 100);

    if (hundredth_decimal <= 2 || hundredth_decimal == 5)
    {
        price = rounded_price_to_tenth;
    }
    else if (hundredth_decimal <= 7)
    {
        price = rounded_price_to_tenth + 0.05;
    }
    else
    {
        price = rounded_price_to_tenth + 0.10;
    }

    return price;
}