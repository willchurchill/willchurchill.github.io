---
title: "9 ball problem - Solving a logic puzzle with Javascript"
date: 2022-11-24T10:00:00+00:00
description: "Carrying on with my 'coding for the fun of it' series, I'm looking at a classic logic problem, and seeing whether we can write code to solve it."
content-type: coding
subject: "logic puzzle"
tags: ["logic puzzle","javascript","problem solving"]
image: "assets/images/articles/code.jpg"
---

It's been a while since I've done coding for the fun of it, so I thought I'd get back into the game, and bring you along for the ride. There isn't really a point to these, except to show some of the practical (and non-practical) uses for actual coding.

[Last time round]({{site.url}}/articles/counterfeit=coins-logic-puzzle/), I looked at the classic "Counterfeit Coins" problem. In this post, I'm going back to the world of weight-based logic problems for another classic: quality controlling balls.

The logic puzzle in question is the following:

> You have 9 seemingly identical balls. They are all the same size and shape, however one of them is heavier than the others. You have a pair of balance scales that you can only use twice, and you have no counterweights. How do you determine which is the erroneous ball?

Let's get to work.

## Addressing the logic

Before we jump into the coding, let's think through the logic of this. We can only use the scales twice, and we have no counterweights. So logically the only thing we can do is weigh a subset of the balls against another subset. We can do this only twice, so a "brute force" approach of just weighing everything isn't possible.

9 is an interesting number though, and that gives us somewhere to start. Let's split our balls up into three sets of three. To do that, we're going to create three arrays, and give each ball an arbitrary weight of 5 units, with the exception of the rogue ball, which can be 6 units. We're aiming for a proof of concept here, so it doesn't matter that we know the rogue ball.

```javascript

group_one = [5,5,5];
group_two = [5,5,5];
group_three = [6,5,5];

```

Ok, so now lets do the only thing available to us. Let's weigh two of these groups against each other. We know that one of three outcomes is going to happen, and that gives us a good start:

1. **Both groups will weigh the same.** If that happens, then we know that the rogue ball is in the third group.
2. **Group 1 weighs more than Group 2.** If that happens, we know that the rogue ball is in the first group.
3. **Group 1 weighs less than Group 2.** If that happens, we know that the rogue ball is in the second group.

## Creating our scales

To do this, we need to know the total weight of each array, compare them, and then instruct our script what to do with each scenario. That's a lot to conceptualise at once, so let's start with the basics. We're going to create our scales as a function, taking two inputs and comparing them. We need to know what the outcome is, so we'll tell the scales to return one of 3 values based on which is heavier.

```javascript

function balance_scales( one, two ){

    let sum_one = 0;
    for (const value of one){
        sum_one += value;
    }

    let sum_two = 0;
    for (const value of two){
        sum_two += value;
    }

    if( sum_one == sum_two ){
        return 0;
    }else if( sum_one > sum_two ){
        return 1;
    }else if( sum_one < sum_two ){
        return 2;
    }else{
        return 999;
    }

}

```

For those who read the [Counterfeit Coins post]({{site.url}}/articles/counterfeit=coins-logic-puzzle/) you might recognise this as an adaptation of our scales function from last time. To walk through it section by section, we're taking the first inputted array (or `one` as the function understands it) iterating through it to find the total value, summing as we go. Then it does the same for the second inputted array (`two` as the function understands it). Finally, it compares the two values (`sum_one` and `sum_two`) and does one of 3 things:

1. If the values are the same - meaning that the groups weigh the same - it gives us a value of `0`.
2. If the first array has a higher value than the second array - meaning that the first group weighs more than the second - it gives a value of `1`.
3. If the first array has a lower value than the second array - meaning that the first group weighs less than the second - it gives a value of `2`.

The observant of you will notice I lied. This function actually does one of 4 things. The final condition - captured by the `else` parameter, gives a value of 999. This is a little flag I've put in for myself to test if the code is working. If/else if statements work well in smaller scenarios like this where you can be reasonably confident that you've thought through all the outcomes. But code will do *exactly* what you tell it to, nothing more and nothing less. If there was an outcome that we hadn't anticipated, and we didn't tell the code what to do with that outcome, it won't do anything. At best this will leave you with no output, at worst it could break your code completely. Here the `else` parameter - with no additional "if" stipulations - captures all the other eventualities and outputs a number so high that we as the end user will know something is wrong. It's not really necessary in this code, but it's a habit I got into when I was self-teaching, and I've stuck with it.

Anyway! We have our scales. If we wanted to, we can test them just by putting in different numbers and seeing what comes out

```javascript

console.log( balance_scales(1,3) );
console.log( balance_scales(1,1) );
console.log( balance_scales(6,3) );

// This should output, respectively: 1, 0, 2

```

## Weigh-in the first

We have everything we need for our first weigh-in. All we need to do is construct the logic around it. What we haven't thought through yet is what happens after we know which of the groups the rogue ball is in, so for now we'll just output some text to the console to show us the code works as expected. And to make this neat we'll call the scales function and store it in a variable, and wrap the whole thing in a function of its own.

```javascript

function first_weigh(){

    let scales_result = balance_scales( group_one, group_two );

    if( scales_result == 0 ){
        console.log("we know the ball is in group 3");
    }else if( scales_result == 1 ){
        console.log("we know the ball is in group 1");
    }else if( scales_result == 2 ){
        console.log("we know the ball is in group 2");
    }else{
        console.log("something else has gone wrong");
    }

}

```

So, because we know that the faulty ball is in group three, and therefore groups one and two weigh the same, the console should give us the message "we know the ball is in group 3".

## Weigh-in the second

So, we have the group, but not the specific ball. The good news is that because the groups only contain three balls each, we can use the same thought process to solve this. In the second weigh in, we only need to weigh two of the balls against each other. If they're the same weight then the rogue ball is the one we didn't weigh. Otherwise, it's whichever one is heavier.

In a stroke of luck / genius, because we've captured the weights of the balls in the arrays, we actually don't need our fancy JS Scales of Justice (patent-pending) for the second weigh-in. We can just compare the values of the balls we want to weigh. Again, for now, let's spit out the result to the console.

```javascript

function second_weigh( chosen_array ){

    if( chosen_array[0] == chosen_array[1] ){
        console.log("ball 3 is the rogue ball");
    }else if( chosen_array[0] > chosen_array[1] ){
        console.log("ball 1 is the rogue ball");
    }else if( chosen_array[0] < chosen_array[1] ){
        console.log("ball 2 is the rogue ball");
    }else{
        console.log("something else has gone wrong");
    }

}

```

Because we're proof-of-concepting, we know that ball 1 is the rogue one, and the output to the console confirms this.

## Bringing it all together

So, we have arrived at our answer. Now we need to put this all together. Specifically, we need the script to call our second weighing function after it determines the first. And, at the end of it all, we want the result to be displayed on the page so we don't have to follow the console. To do that last bit, we're just going to create a string that we will append information to as the script runs.

Here's what it looks like.

```javascript

// start the output string
var script_output = "The heavy ball is ";

// create the balls and put them into groups
group_one = [5,5,5];
group_two = [5,5,5];
group_three = [6,5,5];

// build our scales function
function balance_scales( one, two ){

    let sum_one = 0;
    for (const value of one){
        sum_one += value;
    }

    let sum_two = 0;
    for (const value of two){
        sum_two += value;
    }

    if( sum_one == sum_two ){
        return 0;
    }else if( sum_one > sum_two ){
        return 1;
    }else if( sum_one < sum_two ){
        return 2;
    }else{
        return 999;
    }

}

// build the first weigh function
function first_weigh(){

    let scales_result = balance_scales( group_one, group_two );

    if( scales_result == 0 ){
        script_output += "Group 3 ";
        second_weigh( group_three );
    }else if( scales_result == 1 ){
        script_output += "Group 1 ";
        second_weigh( group_one );
    }else if( scales_result == 2 ){
        script_output += "Group 2 ";
        second_weigh( group_two );
    }else{
        console.log("something went wrong with the first weigh");
    }

}

// build the second weigh function
function second_weigh( chosen_array ){

    if( chosen_array[0] == chosen_array[1] ){
        script_output += "Ball 3 ";
    }else if( chosen_array[0] > chosen_array[1] ){
        script_output += "Ball 1 ";
    }else if( chosen_array[0] < chosen_array[1] ){
        script_output += "Ball 2 ";
    }else{
        console.log("something went wrong with the second weigh");
    }

}

// finally, call the first weighing function, and then display the output on the page
first_weigh( group_one, group_two );
document.write( script_output );

```

## Variations on a theme

### What if there are only 8 balls

This works just as well. From a thought-process point of view, you still split the balls into three groups - this time two groups of three and a group of two. You weigh the groups of three against each other and then carry on as planned. From a coding point of view, you don't actually have to change anything, as the code never interacts with the third ball of the third group.

### What if the rogue ball is lighter?

All the logic still holds - we're looking for the outliers in all cases. All we need to do in this case is swap the more than `>` and less than `<` symbols throughout.

## Final Thoughts

Much like with our Counterfeit Coins puzzle, it might seem like a pointless exercise because we know the answer going in. I find these exercises helpful though for a number of reasons. Chief among them is the constant reminder that even when you know the answer going in, it's never as straightforward as just coding it out. You need to understand the logic that goes into it, and be able to deal with those unexpected things that happen because you've made a little mistake somewhere.
