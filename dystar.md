---
title: DY*
layout: page
permalink: /dystar/
---

DY* is a formal verification framework
for the symbolic security analysis of cryptographic
protocol code written in the \fstar{} programming language.
Unlike automated symbolic provers, our framework accounts
for advanced protocol features like unbounded loops and
mutable recursive data structures, as well as low-level
implementation details like protocol state machines and message formats,
which are often at the root of real-world attacks.

Our work extends a long line of research on using dependent type
systems for this task, but takes a fundamentally new approach by
explicitly modeling the global trace-based semantics within the
framework, hence bridging the gap between trace-based and type-based
protocol analyses. This approach enables us to uniformly, precisely,
and soundly model, for the first time using dependent types,
long-lived mutable protocol state, equational theories, fine-grained
dynamic corruption, and trace-based security properties like forward
secrecy and post-compromise security.

\dystar{} is built as a library of \fstar{} modules that includes a
model of low-level protocol execution, a Dolev-Yao symbolic attacker,
and generic security abstractions and lemmas, all verified using
\fstar{}.  The library exposes a high-level API that facilitates
succinct security proofs for protocol code.

We have demonstrated the effectiveness of this approach through
several in-depth symbolic security analyses. For example, we have
carried out the first mechanized proof of Signal that accounts for
forward and post-compromise security over an unbounded number of
protocol rounds. Please see [our page on our case studies]({% link case-studies.md %}) and the
respective [publications]({% link publications.md %}) for more information.
