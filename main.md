Title: Integrating holomorphic sectional curvatures
Author: Gunnar Þór Magnússon
CSS: style.css
Date: 2022-12-19

# Integrating holomorphic sectional curvatures

[Gunnar Þór Magnússon](mailto:gunnar@magnusson.io)

## Abstract

We calculate the $L^2$-norm of the holomorphic sectional curvature of a K\"ahler metric by representation-theoretic means.
This yields a new proof that the holomorphic sectional curvature determines the whole curvature tensor.
We then investigate what the holomorphic sectional curvature of a Hermitian metric determines.

## Introduction

Let $X$ be a complex manifold of dimension $n$ and let $h$ be a K\"ahler metric on $X$.
We denote by $R$ the curvature tensor of the Chern connection of $h$.
One of the main ways to simplify this complicated tensor is to consider the holomorphic sectional curvature of $h$, that is

$$
H(\xi) = R(\xi, \overline{\xi}, \xi, \overline{\xi}) / |\xi|^4
$$

for nonzero tangent fields $\xi$.
If $s$ is the scalar curvature of $h$, it is well-known that

$$
\frac{1}{\Vol\ S(T_{X,x})} \int_{S(T_{X,x})} H(\xi) d\sigma
= \frac{1}{\binom{n+1}{2}} s,
$$

where $S(T_{X,x})$ is the unit ball in $T_{X,x}$ [[Berger]](#berger).
It is also well-known that the holomorphic sectional curvature determines the whole curvature tensor, in the sense that if $H = 0$ then $R = 0$ [[Zheng]](#zheng).

The existing proofs of these facts are by brute force calculations.
The integral over the sphere is broken up into polynomial components that are evaluated separately and summed together.
This works out in the end because of the seeming coincidence that the integrals of $|z_j|^4$ and $|z_j|^2 |z_k|^2$ over the unit sphere agree up to a factor of 2.
The proof of the determination of the curvature tensor is by clever algebraic manipulation that leaves at least myself no wiser as to why this is true at all.

In this article we propose a new route to these facts.
Our starting point is a representation-theoretic identity that is known to
quantum information theorists, namely that

$$
\frac{1}{\Vol\ S(V)} \int_{S(V)} (v \otimes v^*)^{\otimes d} d\sigma
= \frac{1}{\binom{n+d+1}{d}} \Pi_{d},
$$

where $V$ is an $n$-dimensional complex vector space and $\Pi_{d} : V^{\otimes d} \to V^{\otimes d}$ is the projection onto the subspace of symmetric $d$-tensors.
Berger's scalar curvature identity is an immediate consequence of this identity, and it and some routine linear algebra let us also evaluate the $L^2$ norm of the holomorphic scalar curvature and see that

$$
\frac{1}{\Vol\ S(T_{X,x})} \int_{S(T_{X,x})} H(\xi)^2 d\sigma
= \frac{1}{\binom{n+4}{3}} (|R|^2 + 4|r|^2 + s^2),
$$

where $r$ is the Ricci-tensor of $h$, which neatly explains why the holomorphic sectional curvature determines the whole tensor.

Slightly more bookkeeping lets us also consider the same integrals for the curvature tensors of Hermitian metrics.
There it is no longer true that the holomorphic sectional curvature determines the whole tensor, but we can say what it does determine, which turns out to be essentially the "symmetric" part of the tensor when viewed as a Hermitian form on $V^{\otimes 2} = \bigwedge^{2} V \oplus \operatorname{Sym}^2 V$.

## Algebraic curvature tensors

## K\"ahler metrics

## Hermitian metrics

## References

### [Berger]

Marcel Berger.
_Sur les vari\'et\'es d'Einstein compactes._
**Comptes Rendus de la IIIe R\'eunion du Groupement des Math\'ematiciens d'Expression Latine (Namur, 1965)**,
pages 35--55.
Librairie Universitaire, Louvain, 1966.

### [Zheng]

Fangyang Zheng.
_Complex differential geometry._
**AMS/IP Studies in Advanced Mathematics, 18**.
Amer. Math. Soc. 2000.
