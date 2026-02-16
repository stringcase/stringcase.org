+++
title = "Segmentation"
weight = 11
+++

The process of decomposing an identifier into a list of words is called _segmentation_.  Segmentation is dependent on a set of _boundaries_, which describe where to split an identifier.

Take for example, the identifier `MyVar_name`.  We could segment the word around the underscore, removing it in the output.  This would yield `MyVar` and `name`.  Or we could split based on when a lowercase letter is followed immediately by an uppercase letter.  This would yield `My` and `Var_name`.  Or if we considered both, it would yield `My`, `Var`, and `name`.

Intuitively, boundaries do the following:
* test conditions about a series on consecutive characters
* on successful conditions, the string is split into three consecutive strings
* the second string, which could be empty, is discarded
* the first and last string is the result

We then iteratively perform this segmenting on the last string, testing for more boundaries and segmenting further, until we have tested all conditions across all characters.

## Empty Words

What happens if the segmentation process produces empty words?  For instance, splitting `my__var` based on underscores produces `["my", "", "var"]`.  Should those empty words be dropped?

If there's to be a rationale to all this, there should be some assertion that I can use that is intuitive on its own but then enforces particular behavior for these edge-cases.

For instance, it might be something like "converting from a case X to another case X should always produce the same string".  That may not be the right assertion, but if there were some guiding expectations on behavior, it might make these edge cases easy to solve.
