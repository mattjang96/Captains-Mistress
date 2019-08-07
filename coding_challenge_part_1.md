iOffer Coding Challenge
=======================

Welcome to the iOffer coding challenge!

This challenge will be split into two parts. In Part One you will build a
simple terminal-based application in Ruby. In Part Two you will be asked to
extend the application in various ways.

The total time taken for both parts should be around five hours.

Part One
--------

Your task is to implement the game "Captain's Mistress", also known as "Connect
Four" (which is a registered trademark of the Milton Bradley Company). In the
game two human players take turns dropping discs into the top of a rectangular
board seven columns wide by six rows high. The player that creates a streak of
four or more discs horizontally, vertically, or diagonally wins. The game ends
in a draw if there are no more available moves. More details can be found
[here](https://en.wikipedia.org/wiki/Connect_Four).

Your implementation of the game should meet the following criteria:

*   Players place their discs by entering a column number on the command line.
*   The board should be rendered after each turn.
*   If a winning move is played, the winning board should be rendered and the
    winner should be displayed.

Attached you'll find a simple gem skeleton in a Git repository for your use. It
includes an executable that you can run with:

    ruby -Ilib exe/captains_mistress

When building your implementation, we'd like you to focus on keeping things
simple and elegant. We'd like to see an understanding of OOP principles and
clean, maintainable code. We have purposely kept the spec a bit vague to allow
you to make some decisions. Try to optimize your algorithm that checks for
winnings moves, and include some simple tests to make sure it's correct.

When you are done with Part One, make sure you've committed all changes, then
package the directory into a single file (with zip, tar, or the like) and
submit via email. You will then receive instructions for Part Two of this
challenge.

Good luck! And remember: it's a game, so have fun!
