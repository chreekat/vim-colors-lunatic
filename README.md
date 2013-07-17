# The Lunatic Colorscheme

See important experimentation notes below. Please.

***Don't like Solarized? Then you should probably just move along. No hard
feelings.***

Install this with Vundle or Pathogen or by copying colors/ into ~/.vim, and then:

![C++ screen shot](http://i.imgur.com/WiqJMEm.png)

### What the Dingles?

<!-- Comments are cool. -->

This theme assumes you've done the Solarized bold-color hack on your terminal to
get 16 different colors in an 8-color palette. For gnome-terminal, you can use
the included `solarize` script^[1].

Next, this theme turns off a whole mess of colors.

### But but...

Syntax highlighting means different things to different people. I find much of
it unnecessary. This colorscheme is an experiment in minimizing the amount of
colors on the screen.

---

[1]: A couple things about `solarize`:

* It munges the "Default" theme, which is hardcoded. If you know a way around
  hardcoding that value, that would be sweet.
* Yes, it toggles between light and dark, (cool huh?) but only if the current
  theme already *is* solarized!

## Experimentation notes

Kindly note that (ahem) *the* Solarized theme breaks a lot of filetype-plugin
highlight links. An example from Haskell is hsImport. Originally linked to
Include, Solarized breaks that link and gives hsImport its own colors.

That's cool and all, but if you plan on flipping back and forth between
Solarized and Lunatic, you *will not get the whole effect* unless you restart
vim. Or, you know, figure out the *right* way of reloading filetype plugins. I
myself know no other way of repairing those links. (I thought unletting
b:current_syntax might do it, but alas.)

## License etc.

This work-in-progress is licensed under the WTFPL, which you can find in the
LICENSE file.

Whether or not this license is the best one to use is completely beyond me. I
have obviously used colors from Ethan Schoovener in my `solarized` script.  So,
thanks, Ethan!
