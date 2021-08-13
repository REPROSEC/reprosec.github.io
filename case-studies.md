---
title: Case Studies
layout: page
permalink: /case-studies/
toc: true
---

We have carried out several in-depth case studies using our DY\* framework. Below, you find an overview on these case studies and pointers to the respective publications and code repositories.

# Signal, Double Ratchet, X3DH

The Signal protocol is used in popular messaging applications like
WhatsApp and Skype. Signal is notable for its sophisticated use of
Diffie-Hellman computations to obtain strong security guarantees
against adversaries who can compromise both short-term and long-term
secrets. Its innovative multi-round (or *ratcheted*) protocol design
has inspired a line of work on new security definitions and proof
techniques for properties like *post compromise security*.

Thanks to DY\*, unlike previous analyses with mechanized provers, our
analysis does not have severly restrict the protocol to tame its
verification complexity. Furthermore, our work is the first that
applies a modular verification technique to analyse Signal.

Our verification target is an interoperable implementation of Signal
in F\* developed in prior work. This implementation was verified for
correctness against a purely functional protocol specification (also
in F\*), but the security of this protocol specification was not
verified in F\*. We close this gap by extending this specification code
to a full DY\* protocol model and proving that it achieves the secrecy
and authentication goals of Signal, even for an unbounded number of
rounds.

{% cite_details dystareurosp2021 --text Paper %}
[Code](https://github.com/reprosec/dolev-yao-star)

# ACME

The ACME certificate issuance and management protocol, standardized as
{% cite_details rfc8555 --text RFC 8555 %} by the IETF, is an essential
element of the web public key infrastructure (PKI). It has been used
by *Let's Encrypt* and other certification authorities to issue over a
billion certificates, and a majority of HTTPS connections are now
secured with certificates issued through ACME. 

We have carried out the first in-depth formal security analysis of the
ACME standard. Our model of ACME is executable and comprehensive, with
a level of detail that lets our ACME client interoperate with other
ACME servers.

{% cite_details acmeccs2021 --text Paper %}
[Code]()

# Needham-Schroeder(-Lowe)

The Needham-Schroeder public key protocol (NS-PK) is one of the most
well-known examples for an authentication protocol in the
literature. Since its {% cite_details Needham-Schroeder-CACM-1978 --text
initial proposal in 1978 %}, the security of such cryptographic
protocols has become a continuous field of study for the research
community. While the first formalization for symbolic protocol
analysis has been proposed by {% cite_details Dolev-Yao-1983 --text
Dolev and Yao in 1983 %}, a severe protocol flaw in the NS-PK protocol
remained undiscovered for 17 years: Lowe {% cite_details Lowe-IPL-1995
--text presented an attack %} that breaks the security of the NS-PK
protocol by mixing two concurrent protocol sessions. Lowe also {%
cite_details Lowe-TACAS-1996 --text proposed a fix and showed that this
fix is indeed sufficient %} using the symbolic tool FDR.

As NS-PK is such a widely used example, we illustrate how to analyse
this protocol and Lowe's fix using DY\*.

{% cite_details dystareurosp2021 --text Paper %}
[Code](https://github.com/reprosec/dolev-yao-star)

# ISO-DH

{% cite_details guttmanfest2021 --text Paper %}
[Code](https://github.com/REPROSEC/dolev-yao-star/tree/festschrift-guttman)

# ISO-KEM
