iOffer Coding Challenge
=======================

Part Two
--------

Welcome to Part Two of the coding challenge!

So far you've built a working Captain's Mistress game according to the original
specs. We've shown your work to the client and they love it. Good work!

However, they want to extend the game in a variety of ways. To achieve this,
you'll need to support command-line options to the executable script, and pass
the options through to the application.

Please choose two of the following features to implement:

### Adjustable Board

The height and width of the board can be specified using the --width and
--height options, with a default of 7 and 6, respectively.

### Adjustable Streak Length

The streak length necessary to win can be specified using the --length
option, with a default of 4.

### Strict Streak Length

Only an exact number of discs in a streak counts for a match. In other words,
you can't drop a disc in the middle of a streak to create a streak of five
or more long when the winning streak length is four. Specified with the
--strict option.

### Party Time

The number of players can be specified using the --num-players option with a
default of 2.

### Cylinder Mode

A winning streak can wrap around the left and right edges. Specified with the
--cylinder option.

### Infinite Height

The height of each column expands as discs are dropped in. Specified with the
--infinite option.

### Pyramid Mode

Make the size of each column configurable with the --columns options. For
example, you could make a pyramid shaped board with `--columns 1,2,3,4,3,2,1`.

### Pop Out

On her turn a player can choose to either drop in a disc according to the
traditional rules, or may alternately pop out a disc from the bottom. Discs
above the popped-out disc descend one space. Specified with the --pop-out
option.

### Skynet

Allow computer players. Specify with the --computer option, where the computer
players are listed as integers starting at zero. For example, to start a game
where the first player is human and the second is a computer you would use
"--computer 1". To make the computer play against itself you would use
"--computer 0,1".

Don't worry about the computer's strategy, it can be random if you want.

### Non-alternating Turns

Make the pattern of turns configurable. For example, let's say we want to give
the first player an advantage by having twice as many turns. That would be
specified as "--pattern 0,0,1".

### En Passant

Normally you must complete a streak by dropping a piece to land in the
streak. In this variant, you can also win by having the piece drop *through*
a winning streak. Specify with --en-passant.
