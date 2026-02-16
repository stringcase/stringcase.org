+++
title = "Tooling"
+++

The goal of this page is to outline libraries and tools across languages for performing case conversion.  The goal would be to have a list of tools that meet a formal specification.  For now, that specification does not exist.

The closest implementation would be a rust library `convert_case` developed by the author of this site.

{{<cards>}}
    {{<card link="https://crates.io/crates/convert_case" title="convert_case">}}
{{</cards>}}

Other libraries exist that have their own way of performing conversion.  They might use different naming conventions or different algorithms for splitting identifiers.

I want to bring special attention to github user jawira, [whose site for their php library case-converter](https://jawira.github.io/case-converter/index.html) is very comprehensive.  It's clear that the author has thought about this problem a lot and considered the nuances of acronyms and boundary conditions, and has clearly documented the definition of a case as the pair of a pattern and delimiter.

Library | Language
--- | ---
[strcase](https://pkg.go.dev/github.com/iancoleman/strcase) | Go
[to-case](https://github.com/ianstormtaylor/to-case) | JavaScript
[Case](https://nbubna.github.io/Case/) | JavaScript
[case-converter](https://jawira.github.io/case-converter/index.html) | PHP
[case-converter](https://pypi.org/project/case-converter/) | Python
[snakecase](https://tazinho.github.io/snakecase/index.html) | R
[convert_case](https://crates.io/crates/convert_case) | Rust
[heck](https://crates.io/crates/heck) | Rust
[chhange-case](https://github.com/blakeembrey/change-case) | TypeScript
[case](https://github.com/travisstaloch/case) | Zig