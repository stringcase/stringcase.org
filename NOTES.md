# stringcase.org Planning Notes

## Project Vision

A specification website for string case conversion that library authors can implement against.

## The Four Pillars

| Pillar | Purpose | Current State |
|--------|---------|---------------|
| **1. Intuition** | Tutorial explaining concepts, edge cases, "why" | ~80% (current "Definition" section) |
| **2. Specification** | Formal prose spec for library authors | ~5% (skeleton only) |
| **3. Cases & History** | Document each case: canonical names, origins, usage patterns | ~70% (cases exist, history sparse) |
| **4. Ecosystem** | Tools, libraries, implementations | ~30% (basic links exist) |

## Key Decisions

### Scope
- **Conversion only** for v1 (identification is future work)
- Test suite is a goal, but prose spec comes first

### Unicode vs ASCII
- **Intuition (Pillar 1)**: Use ASCII for teaching, extend to Unicode for completeness
- **Specification (Pillar 2)**: Define on Unicode categories (Lu, Ll, etc.), with ASCII as an alternative field/edge case

### Case Names
- **Canonical names required** for each case
- **Aliases optional** but can be documented

### Numbers (OPEN - needs research)
The most important unresolved question. Example: how to segment `v2HttpRequest`?

| Approach | Segmentation | snake_case result |
|----------|--------------|-------------------|
| Digits bind to preceding | `v2` `Http` `Request` | `v2_http_request` |
| Digits are their own word | `v` `2` `Http` `Request` | `v_2_http_request` |
| Digits bind to following | `v` `2Http` `Request` | `v_2http_request` |

**Research needed:**
- Survey existing libraries to see how they handle digits
- Review language style guides (Go, Rust, Python PEPs, etc.)
- Understand needs of different language communities

## Open Questions

1. **Numbers research approach**: Survey libraries? Language style guides? Both?
2. **MVP strategy**: Can v1 spec mark digit behavior as "undefined" and address in v1.1?
3. **Prioritization**: What order to tackle the pillars?

## Original TODOs (from _index.md)

- [ ] Rename "Definition" → "Intuition" (or similar)
- [ ] Create formal Specification page
- [ ] Add Rust library (`convert-case`) and CLI (`ccase`) to site
- [ ] Custom icon and favicon
- [ ] **Determine a solution for numbers** (most important)
- [ ] Add language tags to code blocks
