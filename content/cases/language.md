+++
title = "Case by Language Construct"
+++

General resources:
* Google style guides: https://google.github.io/styleguide/
* Naming conventions on Rosetta Code: https://rosettacode.org/wiki/Naming_conventions

Keep these headers alphabetized.

## Bash

Google shell style guide: https://google.github.io/styleguide/shellguide.html#naming-conventions

feature | case
--- | ---
functions | snake
variables | snake
constants | constant
environment variables | constant
readonly variables | constant
filenames | snake or flat

## C

GNU standards for C code: https://www.gnu.org/prep/standards/html_node/Names.html#Names

feature | case
--- | ---
macros | constant
enums variants | constant
varables | snake
functions | snake

Linux kernel: https://www.kernel.org/doc/html/v4.10/process/coding-style.html

feature | case
--- | ---
macro constants | constant
enum labels | constant
macros | constant or flat

## C++

Google style guide: https://google.github.io/styleguide/cppguide.html

feature | case
--- | ---
files | snake or kebab or flat
types | Pascal
concepts | Pascal
variables | snake
constants | camel (Pascal with prefix)
functions | Pascal
namespace | snake
enum variants | camel (Pascal with prefix)
macros | constant

## C#

Microsoft: https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/identifier-names

feature | case
--- | ---
types | Pascal
namespaces | Pascal
public members | Pascal
classes | Pascal
interfaces | Pascal
structs | Pascal
delegate | Pascal
variables | camel
private members | camel

## CSS

feature | case
--- | ---
identifiers | kebab

## Dart

Effective dart: https://dart.dev/effective-dart/style

feature | case
--- | ---
classes | Pascal
enums | Pascal
typedefs | Pascal
type parameters | Pascal
extensions | Pascal
packages | snake
files | snake
directories | snake
import prefixes | snake
members | camel
variables | camel
named parameters | camel
constants | camel or constant

Dart has a similar ruling on acronyms like Kotlin: https://dart.dev/effective-dart/style#do-capitalize-acronyms-and-abbreviations-longer-than-two-letters-like-words

## Go

Effective Go: https://go.dev/doc/effective_go

feature | case
--- | ---
packages | flat
public items | Pascal
private items | camel
files | snake

## HTML

feature | case
--- | ---
tags | flat
attributes | flat
data attribute | kebab

## Java

Google style guide: https://google.github.io/styleguide/javaguide.html#s5.2-specific-identifier-names

feature | case
--- | ---
classes | Pascal
methods | camel
constants | constant
non-constant fields | camel
parameters | camel
local variables | camel
types | Pascal

## JavaScript

Google style guide: https://google.github.io/styleguide/jsguide.html#naming-rules-by-identifier-type 

feature | case
--- | ---
files | kebab or snake
packages | camel
classes | Pascal
methods | camel
enums | Pascal
enum variants | constant
constants | constant
non-constant fields | camel
parameters | camel
local variables | camel
template paramaters | upper flat

## Kotlin

Kotlin coding conventions: https://kotlinlang.org/docs/coding-conventions.html#naming-rules

feature | case
--- | ---
packages | camel (single word prefered)
classes | Pascal
objects | Pascal
functions | camel
test methods | [no case?](https://kotlinlang.org/docs/coding-conventions.html#names-for-test-methods)
constants | constant
mutable collections | camel
singletons | Pascal
enum variants | constant or Pascal

The docs explicitly make a rule about when you capitalize acronyms.  Two letters are an exception.

> When using an acronym as part of a declaration name, follow these rules:
> * For two-letter acronyms, use uppercase for both letters. For example, IOStream.
> * For acronyms longer than two letters, capitalize only the first letter. For example, XmlFormatter or HttpInputStream.

## Lisp

Assuming, for now, there isn't much difference between dialects.

Common lisp style guide: https://lisp-lang.org/style-guide/#naming

feature | case
--- | ---
identifiers | kebab
files | kebab

## Lua

[Lua Style Guide from LuaRocks, a lua package manager](https://github.com/luarocks/lua-style-guide)

feature | case
--- | ---
variables | snake
functions | snake
classes | Pascal
methods | snake
constants | constant

It should be noted that the standard library uses flat case for functions.

## .NET (and VBA)

[Capitalization Conventions from Microsoft](https://learn.microsoft.com/en-us/dotnet/standard/design-guidelines/capitalization-conventions#capitalization-rules-for-identifiers)

feature | case
--- | ---
namespaces | Pascal
types | Pascal
interfaces | Pascal
methods | Pascal
properties | Pascal
events | Pascal
fields | Pascal
enum variants | Pascal
parameters | camel

Also suggests the 2 letter capitalization convention.

## Nim

Nim standard library style guide: https://nim-lang.org/docs/nep1.html

feature | case
--- | ---
types | Pascal
non-pure enum values | camel
pure enum values | Pascal
other identifiers | camel

## Pascal

From the GNU Pascal Coding Standards: https://www.gnu-pascal.de/h-gpcs-en.html

Flat here often implies that the identifier is only composed of a single word.  **Maybe "flat" should be distinguished here and instead cite that it should be a single word?** But maybe not.  Reserved words are already a fixed list that doesn't change.

feature | case
--- | ---
reserved words | flat
identifiers | Pascal
local variables | Pascal or flat
compiler directives | kebab

## Perl

Official documentation: https://perldoc.perl.org/perlstyle

feature | case
--- | ---
constants | constant
globals | Ada
locals | snake
functions | snake
methods | snake
modules | Pascal(?)

## PHP

This doesn't look comprehensive: https://www.php.net/manual/en/userlandnaming.rules.php

There's this too: https://www.php-fig.org/psr/psr-1/ and https://infinum.com/handbook/wordpress/coding-standards/php-coding-standards/naming

feature | case
--- | ---
functions | snake
classes | camel or Pascal
constants | constant
methods | camel
files | kebab or Pascal

## Python

PEP8 of course: https://peps.python.org/pep-0008/#descriptive-naming-styles

feature | case
--- | ---
modules | snake
packages | flat or snake
classes | Pascal
types | Pascal
globals | snake
functions | snake
variables | snake
arguments | snake
methods | snake
constants | constant

## PowerShell

[Poshcode unofficial style guide](https://poshcode.gitbook.io/powershell-practice-and-style)

feature | case
--- | ---
identifiers | Pascal


[Strongly Encouraged Development Guidelines from Microsoft](https://learn.microsoft.com/en-us/powershell/scripting/developer/cmdlet/strongly-encouraged-development-guidelines?view=powershell-7.4)
looks to be specifically about developing cmdlets.

feature | case
--- | ---
cmdlet | train
verbs | Pascal
nouns | Pascal
parameters | Pascal

Microsoft capitalizes Pascal.

## R

This looks the most official, given that google forked it: https://style.tidyverse.org/

features | case
--- | ---
files | snake or kebab
variables | snake

It should also be noted that some built-in R methods using lowercase pattern with period (dot) delimiter.

## Ruby

This looks official: https://rubystyle.guide/#naming-conventions

feature | case
--- | ---
symbols | snake
methods | snake
variables | snake
classes | Pascal
modules | Pascal
files | snake
directories | snake
constants | constant

## Rust

Pretty clear: https://rust-lang.github.io/api-guidelines/naming.html

The style guide has more details about how each feature should be formatted or used, but I've simplified it here to just align with the most appropriate case.

feature | case
--- | --- 
crates | kebab or snake
modules | snake
types | Pascal
traits | Pascal
enum variants | Pascal
functions | snake
methods | snake
macros | snake
local variables | snake
constants | constant
statics | constant
type parameters | Pascal
lifetimes | flat

## Scala

Official scala style guide: https://docs.scala-lang.org/style/naming-conventions.html

feature | case
--- | ---
classes | Pascal
objects | Pascal
packages | flat
methods | camel
constants | camel
type parameters | Pascal
annotations | camel

## SQL

They bought the domain: https://www.sqlstyle.guide/

feature | case
--- | ---
tables | snake
columns | snake
keywords | constant

## Standard ML

This person already wrote an excellent article doing this exact thing, by looking at 8 sources of style guides: https://thebreakfastpost.com/2016/06/11/naming-conventions-in-standard-ml/

His final recommendation is as follows:

feature | case
--- | ---
variables | camel
types | snake
datatype constructors | constant
exceptions | Pascal
structure | Pascal
signature | constant
functor | Pascal
files | kebab

## Swift 

Swift API design guidelines: https://www.swift.org/documentation/api-design-guidelines/

feature | case
--- | ---
types | Pascal
protocols | Pascal
identifiers | camel

## TypeScript

Google typescript style guide: https://google.github.io/styleguide/tsguide.html#naming-rules-by-identifier-type

feature | case
--- | ---
classes | Pascal
interfaces | Pascal
types | Pascal
enums | Pascal
decorators | Pascal
type parameters | Pascal
variables | camel
parameters | camel
functions | camel
methods | camel
properties | camel
module aliases | camel
constants | constant

## Vimscript

Google vimscript style guide: https://google.github.io/styleguide/vimscriptguide.xml?showone=Naming#Naming

feature | case
--- | ---
plugins | kebab
functions | Pascal
commands | Pascal
variables | snake