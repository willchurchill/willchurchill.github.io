---
title: "Counterfeit coins - Solving a logic puzzle with Javascript"
date: 2022-11-08T10:00:00+00:00
description: "Solving a logic puzzle using Javascript"
content-type: coding
subject: "javascript"
tags: ["logic puzzle","javascript"]
image: "assets/images/articles/code.jpg"
---

***It's been a while since I've done coding for the fun of it, so I thought I'd get back into the game, and bring you along for the ride. In a series of these posts, I'll be solving problems with code. Sort of like doing a crossword puzzle for nerds. There isn't really a point to these, except to show some of the practical (and non-practical) uses for actual coding.***

[Last time]({{site.url}}/articles/function-check-nested-brackets/), I looked at creating a function for checking nested brackets. In this post, I'll be walking through how to write some code to demonstrate a solution to a logic puzzle.

The logic puzzle in question is the following:

> You have 10 piles of 10 coins. The coins in 9 of these piles are genuine. All of the coins in the remaining pile are counterfeit. You can tell a counterfeit coin by its weight - it is heavier than a genuine coin. Real coins weigh 10 units, and fake ones weigh 11. In as few measurements as possible, determine which is the counterfeit pile?

Let's get to work.

## Setting up the problem

For this exercise, I'm going to use the WebDev staple Javascript to do a series of checks. To start, I'm going to create my piles of coins. For this first stage, I'm arbitrarily going to set the 6th pile to be the counterfeit, but once I'm done it won't matter. I'm going to create each pile as an array, with the value of each element equal to the weight. In this case, real coins weigh 10 units, and fake ones weigh 11:

```javascript

P1 = [10,10,10,10,10,10,10,10,10,10];
P2 = [10,10,10,10,10,10,10,10,10,10];
P3 = [10,10,10,10,10,10,10,10,10,10];
P4 = [10,10,10,10,10,10,10,10,10,10];
P5 = [10,10,10,10,10,10,10,10,10,10];
P6 = [11,11,11,11,11,11,11,11,11,11];
P7 = [10,10,10,10,10,10,10,10,10,10];
P8 = [10,10,10,10,10,10,10,10,10,10];
P9 = [10,10,10,10,10,10,10,10,10,10];
P10 = [10,10,10,10,10,10,10,10,10,10];

```

The array gives us the option to easily analyse both the pile as a whole, and also the individual coins in that pile.

## Thinking through the logic

Pretty much all coding is dealing with logic problems. You want an end result, so how do you get there. Computers are logic engines, that's it. They will do exactly what you tell them to, but in a monkey paw sort of way, they will do *exactly* what you tell them to. So you need to understand what that means.

Anyway, soap box back away, let's think about this problem. Let's revisit the things we know:

1. We know the total number of coins is 100
2. We know that 10 of them are fake
3. We know all the fake coins are in the same pile
4. We know all the piles have 10 coins
5. We know the weight of a real coin, and the weight of a fake coin

So, based on this we can make some further assumptions:

- A pile of real coins will weigh `10*10`, or 100 units. 
- We also know that the fake pile of coins will weigh `10*11`, or 110 units.

So, clearly one way we can find out which pile is which is to weigh each pile. It's arduous, but we know we'll get the right answer. Let's start there.

## Iterating through the arrays

Let's write some code that iterates through each of the arrays and gives us the weight. For ease, we'll create it as a function so that we can reuse it:

```javascript

function weigh_pile( pile ){
    let sum = 0;
    for( const value of pile ){
        sum += value;
    }
    return sum;
}

```

It's a pretty simple function. We're creating a variable called `sum` and as we iterate through the array we're adding the value of the iteration to that variable. At the end of the function, we spit out the total value of the variable.

So, let's put it to work. Now, this is Javascript, so we need to display this data somewhere. For now we'll put it into a browser console using the `console.log()` function:

```javascript

console.log( "P1 weight: " + weigh_pile( P1 ) );
console.log( "P2 weight: " + weigh_pile( P2 ) );
console.log( "P3 weight: " + weigh_pile( P3 ) );
...
console.log( "P10 weight: " + weigh_pile( P10 ) );

```

So, after we review the log we see that Pile 6 weighs more than the others - in fact it weighs 110 units - so that is the counterfeit pile. Congratulations, we've solved the problem. There's definitely some room for improvement here though - for starters this requires 10 separate weighs. Really, the only way we could have made this longer is if we'd weighed each individual coin.

## Maths to the rescue

We actually have all we need to make this process much simpler. Because we know all the coins are in one pile, and because we know the weights of both the real and fake coins, we can create a new pile with a mixture of coins. If we take one coin from the first pile, two coins from the second, three from the third, etc all the way to the 10th pile, we can create a stack that gives us all we need to know.

Let's create a new array, this time with increasing numbers of coins from each pile. (And remember that arrays in Javascript start on 0):

```javascript

new_pile = [
    P1[0],
    P2[0],P2[1],
    P3[0],P3[1],P3[2],
    P4[0],P4[1],P4[2],P4[3],
    P5[0],P5[1],P5[2],P5[3],P5[4],
    P6[0],P6[1],P6[2],P6[3],P6[4],P6[5],
    P7[0],P7[1],P7[2],P7[3],P7[4],P7[5],P7[6],
    P8[0],P8[1],P8[2],P8[3],P8[4],P8[5],P8[6],P8[7],
    P9[0],P9[1],P9[2],P9[3],P9[4],P9[5],P9[6],P9[7],P9[8],
    P10[0],P10[1],P10[2],P10[3],P10[4],P10[5],P10[6],P10[7],P10[8],P10[9]
];

```

Now, we need to know the weight of this pile. Luckily we created a function earlier that will do just that, so let's pop it in and show the result in the console.

```javascript

console.log( weigh_pile( new_pile ) );

```

There's one more thing we need to know - or rather one more thing we need our script to know. We have a pile of 55 coins, and we know that if those coins were all genuine the pile should weigh `55*10`, or 550 units. So let's make sure we have that, and capture it in a variable.

```javascript

legit_coins_weight = new_pile.length * 10;

```

I could have just stored the number 550 as a variable, but where would the fun be in that? Here I've asked the script to take the `length` of the array - in other words how many elements it has - and multiplied that by `10`.

Right! We have everything we need, and we've actually only used our scales once. If you haven't worked out how all this helps us yet, go grab a cup of tea and let it percolate for a bit.

## The solution

Because we know the weights of the coins, and because we know how many coins from each pile we have, we can simply take the difference in the weights of our new pile, and the expected weight of the pile, and get our answer. 

So let's do that.

```javascript

weight_difference = new_pile_weight - legit_coins_weight;
console.log( weight_difference );

```

This tells us that the stack weighs six units more than it should. Because the real and fake coin weights only differ by one, we know that there are 6 fake coins in this pile, and that must mean that OG pile 6 is the counterfeit one.

## Tidying up the code

Let's bring this all together, and remove the need to view the console by writing the result directly to the viewport.

```javascript

// create arrays with the coin weights
P1 = [10,10,10,10,10,10,10,10,10,10];
P2 = [10,10,10,10,10,10,10,10,10,10];
P3 = [10,10,10,10,10,10,10,10,10,10];
P4 = [10,10,10,10,10,10,10,10,10,10];
P5 = [10,10,10,10,10,10,10,10,10,10];
P6 = [11,11,11,11,11,11,11,11,11,11];
P7 = [10,10,10,10,10,10,10,10,10,10];
P8 = [10,10,10,10,10,10,10,10,10,10];
P9 = [10,10,10,10,10,10,10,10,10,10];
P10 = [10,10,10,10,10,10,10,10,10,10];

// create a new pile that takes one coin from the first pile, two from the second...
new_pile = [
    P1[0],
    P2[0],P2[1],
    P3[0],P3[1],P3[2],
    P4[0],P4[1],P4[2],P4[3],
    P5[0],P5[1],P5[2],P5[3],P5[4],
    P6[0],P6[1],P6[2],P6[3],P6[4],P6[5],
    P7[0],P7[1],P7[2],P7[3],P7[4],P7[5],P7[6],
    P8[0],P8[1],P8[2],P8[3],P8[4],P8[5],P8[6],P8[7],
    P9[0],P9[1],P9[2],P9[3],P9[4],P9[5],P9[6],P9[7],P9[8],
    P10[0],P10[1],P10[2],P10[3],P10[4],P10[5],P10[6],P10[7],P10[8],P10[9]
];

// build our scales to weigh the piles
function weigh_pile( pile ){
    let sum = 0;
    for( const value of pile ){
        sum += value;
    }
    return sum;
}

// calculate the expected weight of the new pile, assuming all coins weigh 10 units
legit_coins_weight = new_pile.length * 10;

// calculate the actual weight of the new pile
new_pile_weight = weigh_coins(new_pile);

// calculate the difference
// fake coins weigh 1 unit more than real ones, so the difference will tell us how many of the fake coins are in the pile, and therefore what pile they are in
weight_difference = new_pile_weight - legit_coins_weight;

// give the result directly in the page
document.write( "Coins are in pile " + weight_difference );

```

You can test the code works by changing the initial arrays to give a different pile the coins that weigh 11 units.

## Variations and limitations

### Variation: Fake coins weigh more than 11 units

What happens if we know the weights of the coins, but they weigh more than one unit more? Well we just need to add some instructions to take this into account. Again, maths is our friend here. What we are actually looking for is the difference in weight between the two piles, divided by the weight difference between the real and fake coins. We just missed this step last time because the weight difference was one. So let's add that in.

```javascript

real_coin_weight = 10;
fake_coin_weight = 11;

difference_in_coin_weight = fake_coin_weight - real_coin_weight;

pile_number = weight_difference / difference_in_coin_weight;

document.write( "Coins are in pile P" + pile_number );

```

This code should come after the `weight_difference` calculation, and replace the `document.write()` command in the previous code. The `real_coin_weight` and `fake_coin_weight` variables can be changed as necessary, and the code will still hold.

### Limitation: There are more than 10 piles

The current setup is contingent us being able to take a different number of coins from each pile. At 10 piles of 10 coins, we're at the top end of what this solution can do for us. Our solution breaks if we try to put in an 11th pile with 10 coins.

## Final thoughts

It might seem like a weird exercise to do - by the nature of the thing, we know which pile is heavier going in. For me though, this wasn't really about the problem. Solving the problem happened "off the keyboard" as it where. I enjoyed the exercise of building something that would follow the logic through.
