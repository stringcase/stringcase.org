+++
title = "Case Boundaries"
weight = 20
math = true
+++

After converting words "Var" and "Name" into a kebab case identifier "var-name", we natural ask how we can return the identifier back into words, knowing that it is already kebab case?

There is a natural association between cases and boundaries that would split the identifier.  We will call these _case boundaries_ and can be considered an additional part of the case definition.

$$\text{case} \coloneqq (\text{pattern}, \text{delimiter}, \text{boundaries})$$

This additional information allows us not only to define **generation** in terms of a case, but also **segmentation**.  For instance, segmenting identifier `my-var_name` based on snake case would involve splitting upon and removing the underscore only, yielding `my-var` and `name`.

## Todo: integrate this instead

We define the _associated boundaries_ to a case as the boundaries that when used to split a string of case $c$ and then mutated and joined with the pattern and delimiter of that case $c$, will give back the original string.

Example: camel case's associated boundaries are lowercase-uppercase, because any camel case identifier like `camelCase` when split by lowercase-uppercase, and then mutated and joined via camel case, gives back the original string `camelCase`.

c.boundaries := { boundaries | join(mutate(split(s, boundaries), c.pattern), c.delim) = s }

Another way of thinking about it:

First, we start with a list of words.  We can apply a case to those list of words to get a single string.  The associated boundaries are those boundaries that split the single string back into the same words.  I guess I would need to apply the pattern again for consistency?

So you start with words $W$.  Then associated boundaries are such that $mutate(split(join(mutate(W)))) = mutate(W)$.  Or, $mutate(split(join(W'))) = W'$.

This definition might help motivate what it means to _be_ a case _is_case_.
