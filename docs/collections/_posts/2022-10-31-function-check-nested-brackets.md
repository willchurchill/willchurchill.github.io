---
title: "Crossword Puzzle for Nerds: Checking if brackets are nested"
date: 2022-10-31T08:00:00+00:00
description: "Wherein I write a function to check if brackets are properly nested, just because."
content-type: coding
subject: "javascript"
tags: ["javascript"]
image: "assets/images/articles/code.jpg"
---

***It's been a while since I've done coding for the fun of it, so I thought I'd get back into the game, and bring you along for the ride. In a series of these posts, I'll be solving problems with code. Sort of like doing a crossword puzzle for nerds.***

In this post, I'll be writing a function that takes an input and decides if it is well structured. Here's the criteria:

> The input can contain any number of any type of bracket - round (), square [], or curly {}.
> Open brackets must have a corresponding closed bracket.
> Brackets must be properly nested - (so [this]) would be fine, [but (this]) would not.

This particular puzzle was given to me as part of an exercise in front of other developers. Full disclosure, this is not the solution I came up with in the room, but rather one I arrived at immediately after the pressure was off, and has been influenced by the help they offered.

Let's get to work.

## Looping through the input

For this problem I'm going to use Javascript to take an input string and run some checks on it. The first thing I'll need to do is to isolate any brackets. I'm going to use a `for` loop to iterate through the input string, analysing each character. For now, I'm just going to spit the brackets out to the console. Let's see what that might look like:

```

function parse_input( input_string ){

    for( i=0; i < input_string.length; i++ ){
            if( input_string[i] == "{" || input_string[i] == "}" || input_string[i] == "(" || input_string[i] == ")" || input_string[i] == "[" || input_string[i] == "]"  ){
                console.log( input_string[i] );
            }
        }

}

```

Ok, so this works. But even at this stage I feel like I'm going to be running a lot of checks, and frankly this notation is giving me a headache. What I want is a way to group things together to make them easier to analyse.

## Arrays for days

I'm going to start by creating an array with all the bracket options in it. That way, rather than my lengthy notation that compares every character in the input string to each option, I'll just check if it's in the bracket array.

Then, because all I'm actually interested in are the brackets, I'm going to push them all out to a new array so I can manipulate that, rather than the whole string.

So, let's rework our code a little bit.

```

all_brackets = ["(",")","[","]","{","}"];
capture_brackets = [];

function parse_input( input_string ){

    for( i=0; i < input_string.length; i++ ){
            if( all_brackets.includes( input_string[i] ) ){
                capture_brackets.push( input_string[i] );
            }
        }

}

```

There, much neater.

## Let's go back to the problem

So far, we've got a function that takes out all our brackets and makes it easier to manipulate. That's good, but what are we actually trying to achieve?

Because we now have our `capture_brackets[]` array, we can iterate through that and check that we have proper nesting. How do we do that? Well, we know that for the input string to be valid, if I open a bracket I have to either close it with the same bracket, or else open another bracket. If I take an open bracket and then next one in the sequence is the wrong closed bracket, then I know the input string is not valid.

Let's spitball what that might look like:

```

function check_nesting( capture_brackets ){

    for( i=0; i < capture_brackets.length-1; i++ ){

        if( capture_brackets[i] == "(" ){
                
            if( capture_brackets[i+1] == "}" || capture_brackets[i+1] == "]" ){

                console.log("invalid input string");

            }

        }else if( capture_brackets[i] == "{" ){
                
            if( capture_brackets[i+1] == ")" || capture_brackets[i+1] == "]" ){

                console.log("invalid input string");

            }

        }else if( capture_brackets[i] == "[" ){
                
            if( capture_brackets[i+1] == "}" || capture_brackets[i+1] == ")" ){

                console.log("invalid input string");

            }

        }

    }

}

```

So, this looks like a promising start, but there are several problems. And, I'll be honest with you, this little rabbit hole is one I spent a little longer down than I should have. I did need a little nudge from the other devs to get out of this. 

The fundamental problem with this method is that it has no "memory". In other words, if I have an input string that looks like this `[]{}]` where I have a trailing closed bracket with no corresponding open bracket, it won't flag because all this function is looking at is the immediate character and the one after.

So, let's rethink this slightly...

## Sail array with me, honey

So far we've been looking at this problem linearly. In other words, we've been looking for opening brackets and then checking that the next one in the sequence matches. What if instead we looked for closed brackets and then worked backwards? If we assume a perfectly nested input - something like `{([])}` then the first closed bracket we hit will have to be immediately preceeded by the corresponding opening bracket. We just need our function to "remember" what the opening brackets are.

So now the problem is "memory". We know how to solve memory problems - our old friend arrays! As we iterate through out `capture_bracket[]` array, when we hit an open bracket we can push that to a new array and then carry on. When we hit a closed bracket, we need to check the last opening bracket of the new array. If they don't match, we have a problem. If they do match, then we can remove the last open bracket from the new array, and then move on.

Let's map this out:

```

open_brackets = ["(","[","{"];
closed_brackets = [")","]","}"];
capture_open_brackets = [];

function check_nesting( capture_brackets ){

    for( i=0; i < capture_brackets.length; i++ ){
                    
        if( open_brackets.includes( capture_brackets[i] )  ){
            
            capture_open_brackets.push( capture_brackets[i] );

        }else if( closed_brackets.includes( capture_brackets[i] )  ){
            
            last_bracket = capture_open_brackets.slice(-1);
            
            if( capture_brackets[i] == ")" ){
                if( last_bracket == "(" ){
                    capture_open_brackets.pop();
                }else{
                    console.log("input invalid");
                }
            }else if( capture_brackets[i] == "]" ){
                if( last_bracket == "[" ){
                    capture_open_brackets.pop();
                }else{
                    console.log("input invalid");
                }
            }else if( capture_brackets[i] == "}" ){
                if( last_bracket == "{" ){
                    capture_open_brackets.pop();
                }else{
                    console.log("input invalid");
                }
            }else{ 
                console.log("something went wrong with the check");
            }
        }else{
            console.log("something went wrong");
        }
    }

}

```

So, going through this bit by bit, what we're doing is iterating through the `capture_brackets` input and saying that if we hit an open bracket, push that into the new `capture_open_brackets[]` array. If we hit a closed bracket, then take the last open bracket we saw (using `capture_open_brackets.slice(-1)`) and then run some checks on that. Those checks essentially try to match the pairs. If the check is successful, remove that last open bracket from the array (using `capture_open_brackets.pop()`) and carry on. If the check fails, send a message to the console. I've also added some `console.log()` functions in there, just incase I've failed to account for something.

I think we've got our component parts. Let's start to bring them together.

## Linking the functions

So, thinking back to the original problem statement, we need a way for inputted text to be checked and, presumably, the inputter to be told whether their input is valid. So far we've been working in the abstract, so before we go any further let's create a very basic input/output on a webpage. I'm not going to bother here with full HTML notation - but don't let my laziness rub off on you.

```

<html>

<input id="input_code">
<button onclick="parse_input()">Check</button>
<p id="response_text"></p>

</html>

```

Nothing overly complex here - just an input box, a button, and a place for the function to give a verdict. The button calls the `parse_input()` function, and we've given the input field an id, so we'll just need to tweak that function to pull the code from there rather than assuming it's been passed the string.

We're also going to call the `check_nesting()` function from within the first function, and for that we need `check_nesting()` to give us back a verdict, rather than spit it out to the console. So we'll be replacing the `console.log()` with `return` function in the if/else statements. We'll use `return 1` if the check was successful, and `return 0` if it wasn't.

Finally, that output will be assessed, and then converted into a message for the user.

Let's see what that all looks like:

```

<html>

<script>

    all_brackets = ["(",")","[","]","{","}"];
    open_brackets = ["(","[","{"];
    closed_brackets = [")","]","}"];

    capture_brackets = [];
    capture_open_brackets = [];

    function parse_input(){
        
        input_string = document.getElementById("input_code").value;

        for( i=0; i < input_string.length; i++ ){
            if( all_brackets.includes( input_string[i] )  ){
                capture_brackets.push( input_string[i] );
            }
        }

        output = check_nesting( capture_brackets );

        if( output == 1 ){
            document.getElementById("response_text").innerHTML = "This code is fine.";
        }else{
            document.getElementById("response_text").innerHTML = "This code sucks.";
        }

        clear_capture_arrays();

    }

    function check_nesting( capture_brackets ){

        for( i=0; i < capture_brackets.length; i++ ){
                        
            if( open_brackets.includes( capture_brackets[i] )  ){
                
                capture_open_brackets.push( capture_brackets[i] );

            }else if( closed_brackets.includes( capture_brackets[i] )  ){
                
                last_bracket = capture_open_brackets.slice(-1);
                
                if( capture_brackets[i] == ")" ){
                    if( last_bracket == "(" ){
                        capture_open_brackets.pop();
                    }else{
                        return 0;
                    }
                }else if( capture_brackets[i] == "]" ){
                    if( last_bracket == "[" ){
                        capture_open_brackets.pop();
                    }else{
                        return 0;
                    }
                }else if( capture_brackets[i] == "}" ){
                    if( last_bracket == "{" ){
                        capture_open_brackets.pop();
                    }else{
                        return 0;
                    }
                }else{ console.log("something went wrong with the check"); }
            }else{
                console.log("something went wrong");
            }
        }

        return 1;

    }

    function clear_capture_arrays(){
        capture_brackets = [];
        capture_open_brackets = [];
    }

</script>

<input id="input_code"><button onclick="parse_input();">Check</button>
<p id="response_text"></p>

</html>

```

There's just one more thing I'd added to that code. You may have noticed the `clear_capture_arrays[]` call and function. Because we've got an input field on a webpage, the user can add and readd code to continually check. In order to make sure we don't contaminate future runs, we just need to clear out all the arrays at the end of the calculations.

## Final thoughts

That's it! We've solved the problem. I never doubted us.

Of course, this is by no means the only way to do this - even just using Javascript. One thing I'm always relearning is that a lot of the time, being a developer is more about thinking your way around problems than it is actually writing code. For me, this was a great exercise in that. I'm challengin myself to take on more of these "crossword puzzles for nerds" and I'll share my journey with you.
