# Code Golf challenge: 15th August '17

## Correct change

Write a program that given an item price, and a cash amount, can successfully output the following three things:

1. how much change is needed **(1 point)**
2. which notes/coin values make up the change **(1 point)**
3. how many items of change make up the change **(1 point)**

The program can be written in a language of your choice.

Two winners will be selected and will be:  
&nbsp;&nbsp;&nbsp;&nbsp;• the program with the least amount of characters, and  
&nbsp;&nbsp;&nbsp;&nbsp;• the program that runs the fastest

Currency is in Australian dollars and **price must be rounded up or down to the nearest 5c** as per normal.  

Testing will be done on the same machine for consistency

Some example values and outputs:

| Item price $AU | Cash Amount | Change Needed | Change Items | Change Count |
| -------------- | :---------: | :-----------: | :----------: | -----------: |
| $6.35          | $20         | $13.65        | $10, $2, $1, 50c, 10c, 5c | 6 |
| $15.15         | $120        | $104.85       | $100, $2, $2, 50c, 20c, 10c, 5c | 7 |
| $33.72         | $50         | $16.30        | $10, $5, $1, 20c, 10c | 5 |
| $1.94          | $5          | $3.05         | $2, $1, 5c | 3 |  
