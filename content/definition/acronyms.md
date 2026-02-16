---
title: Acronyms
---

In English phrases can be represented using an _acronym_ or a shorter representation of the larger phrase.  This is typically done in uppercase letters.

Should the words "XML" and "Request" in Pascal case be formatted as `XMLRequest` or as `XmlRequest`?

What about `IOStream` versus `IoStream`?

## Existing Conventions

Many programming language style guides comment on the behavior or acronyms.  Rust API guidelines[^1] state the following:

> In `UpperCamelCase`, acronyms and contractions of compound words count as one word: use `Uuid` rather than `UUID`, `Usize` rather than `USize` or `Stdin` rather than `StdIn`. In `snake_case`, acronyms and contractions are lower-cased: `is_xid_start`.

[^1]: [Rust API Guidelines: Naming](https://rust-lang.github.io/api-guidelines/naming.html)

Kotlin's docs on coding conventions[^2] on the other hand distinguish two letters as a special case.

> When using an acronym as part of a declaration name, follow these rules:
> * For two-letter acronyms, use uppercase for both letters. For example, IOStream.
> * For acronyms longer than two letters, capitalize only the first letter. For example, XmlFormatter or HttpInputStream.

[^2]: [Kotlin: Coding Conventions](https://kotlinlang.org/docs/coding-conventions.html#naming-rules)

## Implementation

Splitting on acronyms is relatively easy, since the definition of boundary is robust enough to detect when two uppercase letters are followed by a lowercase letter, and can split between the first two uppercase letters.

Mutation is harder, since we have defined mutation as only taking a list of words as input.  How would we know if any word is an acronym?  If the word started as any uppercase pattern case, then all words could be interpreted as acronyms.

What if we altered the definition of splitting and mutation, so that we tagged each word with a boolean signaling if it were an acronym or not?  Then mutation step could act on that information.

But recall when this acronym behavior occurs: camel case and Pascal case identifiers.  If converting _from_ any other case, there would be no acronym information present.  If converting _to_ any other case, then there would be no change in the output to signal an acronym.  So this logic would be for converting camel case into Pascal case or vice versa.

Suppose we convert `IOStream` into camel.  We split on `OS`, and mutate using camel pattern to produce `ioStream`.  That's correct.  Lets consider the converse: `ioStream` into Pascal would be parsed as `IoStream`. We can't assume that `io` is an acronym.  If it were `isStream` it would be identically cased but have the opposite behavior.

The simplest solution is simply to ignore acronyms on mutation.  Then the behavior is consistent.  The choice of using acronyms is a stylistic one, and the primary focus of case conversion I would say is consistency.

If acronyms are important for producing camel and Pascal case identifiers, then it should be at the user's explicit discretion at the time of conversion.  A general solution to hook in the acronym information is unclear to me.

A final point on ignoring acronyms: in the case of multiple acronyms together, such as `XML`, `HTTP`, and `Request`, the final identifier might be `XMLHTTPRequest` which in itself has less information than `XmlHttpRequest`.  This type of ambiguity is some reasoning for why people argue against using camel case or Pascal case at all.