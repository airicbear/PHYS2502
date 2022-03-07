### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 321b951c-9bea-11ec-0d10-31f76d44cc9e
md"""
# HW 7

Eric Nguyen
"""

# ╔═╡ 710b2cc8-45e7-4eee-9066-3fd4080aebc9
md"""
### Problem 1

First we start with the Cartesian coordinates ``x``, ``y``, and ``z`` in terms of spherical coordinates,

$\begin{align*}
x &= r \sin{\theta} \cos{\phi} \\
y &= r \sin{\theta} \sin{\phi} \\
z &= r \cos{\theta}
\end{align*}$

Imagine that we change the position ``\vec{r}`` by a tiny ``d\vec{r} = dx \, \hat{i} + dy \, \hat{j} + dz \, \hat{k}`` such that ``x``, ``y``, and ``z`` change by infinitesimal amounts,

$\begin{align*}
dx &= \sin{\theta} \cos{\phi} \,dr + r \cos{\theta} \cos{\phi} \,d\theta - r \sin{\theta} \sin{\phi} \,d\phi \\
dy &= \sin{\theta} \sin{\phi} \,dr + r \cos{\theta} \sin{\phi} \,d\theta + r \sin{\theta} \cos{\phi} \,d\phi \\
dz &= \cos{\theta} \,dr - r \sin{\theta} \,d\theta
\end{align*}$

Consider the change ``d\vec{r}`` in the ``r,\theta,\phi`` directions found by setting the infinitesimals equal to zero accordingly (e.g., for ``\hat{r}`` set ``d\theta = d\phi = 0``, etc.),

$\begin{align*}
d\vec{r}_r &= \hat{i} \sin{\theta} \cos{\phi} \,dr + \hat{j} \sin{\theta} \sin{\phi} \,dr + \hat{k} \cos{\theta} \,dr \\
&= (\hat{i} \sin{\theta} \cos{\phi} + \hat{j} \sin{\theta} \sin{\phi} + \hat{k} \cos{\theta}) \,dr \\
d\vec{r}_{\theta} &= \hat{i} r \cos{\theta} \cos{\phi} \,d\theta + \hat{j} r \cos{\theta} \sin{\phi} \,d\theta - \hat{k} r \cos{\theta} \,d\theta \\
&= (\hat{i} \cos{\theta} \cos{\phi} + \hat{j} \cos{\theta} \sin{\phi} - \hat{k} \sin{\theta}) r \,d\theta \\
d\vec{r}_{\phi} &= \hat{i} r \sin{\theta} \sin{\phi} \,d\phi + \hat{j} r \sin{\theta} \cos{\phi} \,d\phi \\
&= (\hat{i} \sin{\phi} + \hat{j} \cos{\phi}) r \sin{\theta} \,d\phi
\end{align*}$

It follows that the unit vectors in the spherical polar coordinates are

$\begin{align*}
\hat{r} &= \hat{i} \sin{\theta} \cos{\phi} + \hat{j} \sin{\theta} \sin{\phi} + \hat{k} \cos{\theta} \\
\hat{\theta} &= \hat{i} \cos{\theta} \cos{\phi} + \hat{j} \cos{\theta} \sin{\phi} - \hat{k} \sin{\theta} \\
\hat{\phi} &= \hat{i} \sin{\phi} + \hat{j} \cos{\phi}
\end{align*}$
"""

# ╔═╡ 370b6a47-79b6-41e3-ad41-01544affa97d
md"""
### Problem 2

Using ``\vec{v} = \frac{d\vec{r}}{dt}``, rewrite the expression for kinetic energy as

$K = \frac{1}{2} m \left(\vec{v} ⋅ \vec{v}\right) = \frac{1}{2} m \left(\sqrt{{v_x}^2 + {v_y}^2 + {v_z}^2}\right)^2 = \frac{1}{2} m ({v_x}^2 + {v_y}^2 + {v_z}^2)$

We start with the transformation equations for the Cartesian coordinates,

$\begin{align*}
x &= r \sin{\theta} \cos{\phi} \\
y &= r \sin{\theta} \sin{\phi} \\
z &= r \cos{\theta}
\end{align*}$

Take the time derivative for each coordinate (i.e., find expressions for the components of ``\vec{v}``):

$\begin{align*}
v_x &= ẋ = \sin{\theta} \cos{\phi} \, ṙ + r \cos{\theta} \cos{\phi} \,\dot{\theta} - r \sin{\theta} \sin{\phi} \,\dot{\phi} \\
v_y &= ẏ = \sin{\theta} \sin{\phi} \, ṙ + r \cos{\theta} \sin{\phi} \,\dot{\theta} + r \sin{\theta} \cos{\phi} \, \dot{\phi} \\
v_z &= ż = \cos{\theta} \,ṙ - r \sin{\theta} \,\dot{\theta}
\end{align*}$

Going back to the expression for kinetic energy, we can write the velocity expression in terms of ``r``, ``\theta``, and ``\phi`` and simplify.
First, we square each velocity component:

$\begin{align*}
{v_x}^2 &= (\sin{\theta} \cos{\phi} \, ṙ + r \cos{\theta} \cos{\phi} \,\dot{\theta} - r \sin{\theta} \sin{\phi} \,\dot{\phi})^2 \\
&= \sin{\theta}^2 \cos^2{\phi} \, ṙ^2 + r^2 \cos^2{\theta} \cos^2{\phi} \,\dot{\theta}^2 + r^2 \sin^2{\theta} \sin^2{\phi} \,\dot{\phi}^2 \\
&\quad + 2r \sin{\theta} \cos{\theta} \cos^2{\phi} \,ṙ \,\dot{\theta} - 2r \sin^2{\theta} \sin{\phi} \cos{\phi} \,ṙ \,\dot{\phi} \\
&\quad - 2r \sin{\theta} \cos{\theta} \sin{\phi} \cos{\phi} \,\dot{\theta} \,\dot{\phi} \\
\\
{v_y}^2 &= (\sin{\theta} \sin{\phi} \, ṙ + r \cos{\theta} \sin{\phi} \,\dot{\theta} + r \sin{\theta} \cos{\phi} \, \dot{\phi})^2 \\
&= \sin^2{\theta} \sin^2{\phi} \,ṙ^2 + r^2 \cos^2{\theta} \sin^2{\phi} \,\dot{\theta}^2 + r^2 \sin^2{\theta} \cos^2{\phi} \,\dot{\phi}^2 \\
&\quad + 2r \sin{\theta} \cos{\theta} \sin^2{\phi} \,ṙ \,\dot{\theta} + 2r \sin^2{\theta} \sin{\phi} \cos{\phi} \,ṙ \,\dot{\phi} \\
&\quad + 2r \sin{\theta} \cos{\theta} \sin{\phi} \cos{\phi} \,\dot{\theta} \,\dot{\phi} \\
\\
{v_z}^2 &= (\cos{\theta} \,ṙ - r \sin{\theta} \,\dot{\theta})^2 \\
&= \cos^2{\theta} \,ṙ^2 + r^2 \sin^2{\theta} \,\dot{\theta}^2 - 2r \sin{\theta} \cos{\theta} \,ṙ \,\dot{\theta}
\end{align*}$

Adding the terms together, we get:

$\begin{align*}
{v_x}^2 + {v_y}^2 + {v_z}^2 &= \sin{\theta}^2 \cos^2{\phi} \, ṙ^2 + r^2 \cos^2{\theta} \cos^2{\phi} \,\dot{\theta}^2 + r^2 \sin^2{\theta} \sin^2{\phi} \,\dot{\phi}^2 \\
&\quad + 2r \sin{\theta} \cos{\theta} \cos^2{\phi} \,ṙ \,\dot{\theta} - 2r \sin^2{\theta} \sin{\phi} \cos{\phi} \,ṙ \,\dot{\phi} \\
&\quad - 2r \sin{\theta} \cos{\theta} \sin{\phi} \cos{\phi} \,\dot{\theta} \,\dot{\phi} \\
&\quad + \sin^2{\theta} \sin^2{\phi} \,ṙ^2 + r^2 \cos^2{\theta} \sin^2{\phi} \,\dot{\theta}^2 + r^2 \sin^2{\theta} \cos^2{\phi} \,\dot{\phi}^2 \\
&\quad + 2r \sin{\theta} \cos{\theta} \sin^2{\phi} \,ṙ \,\dot{\theta} + 2r \sin^2{\theta} \sin{\phi} \cos{\phi} \,ṙ \,\dot{\phi} \\
&\quad + 2r \sin{\theta} \cos{\theta} \sin{\phi} \cos{\phi} \,\dot{\theta} \,\dot{\phi} \\
&\quad + \cos^2{\theta} \,ṙ^2 + r^2 \sin^2{\theta} \,\dot{\theta}^2 - 2r \sin{\theta} \cos{\theta} \,ṙ \,\dot{\theta} \\

&= \sin{\theta}^2 \cos^2{\phi} \, ṙ^2 + r^2 \cos^2{\theta} \cos^2{\phi} \,\dot{\theta}^2 + r^2 \sin^2{\theta} \sin^2{\phi} \,\dot{\phi}^2 \\
&\quad + \sin^2{\theta} \sin^2{\phi} \,ṙ^2 + r^2 \cos^2{\theta} \sin^2{\phi} \,\dot{\theta}^2 + r^2 \sin^2{\theta} \cos^2{\phi} \,\dot{\phi}^2 \\
&\quad + \cos^2{\theta} \,ṙ^2 + r^2 \sin^2{\theta} \,\dot{\theta}^2 \\

&= \sin^2{\theta} \,ṙ^2 + r^2 \cos^2{\theta} \,\dot{\theta}^2 + r^2 \sin^2{\theta} \,\dot{\phi}^2 \\
&\quad + \cos^2{\theta} \,ṙ^2 + r^2 \sin^2{\theta} \,\dot{\theta}^2 \\

&= ṙ^2 + r^2 \, \dot{\theta}^2 + r^2 \sin^2{\theta} \,\dot{\phi}^2
\end{align*}$

Substitute the result into the expression for kinetic energy:

$K = \frac{1}{2} m (ṙ^2 + r^2 \, \dot{\theta}^2 + r^2 \sin^2{\theta} \,\dot{\phi}^2)$
"""

# ╔═╡ a1799513-6a61-4443-8ec7-428c0696bc5f
md"""
### Problem 3

**(a).**
The square of the magnitude of the cross product ``|\vec{A} × \vec{B}|^2`` is

$\begin{align*}
|\vec{A} × \vec{B}|^2 &= (A_y B_z - A_z B_y)^2 |\hat{i}| + (A_z B_x - A_x B_z)^2 |\hat{j}| + (A_x B_y - A_y B_x)^2 |\hat{k}| \\
&= {A_y}^2 {B_z}^2 + {A_z}^2 {B_y}^2 - 2 A_y A_z B_y B_z \\
&\quad + {A_z}^2 {B_x}^2 + {A_x}^2 {B_z}^2 - 2 A_x A_z B_x B_z \\
&\quad + {A_x}^2 {B_y}^2 + {A_y}^2 {B_x}^2 - 2 A_x A_y B_x B_y \\
\end{align*}$

The square of the magnitude of ``|\vec{A}|^2`` and ``|\vec{B}|^2`` are

$\begin{align*}
|\vec{A}|^2 &= {A_x}^2 + {A_y}^2 + {A_z}^2 \\
|\vec{B}|^2 &= {B_x}^2 + {B_y}^2 + {B_z}^2
\end{align*}$

The product ``|\vec{A}|^2 |\vec{B}|^2`` is then

$\begin{align*}
|\vec{A}|^2 |\vec{B}|^2 &= ({A_x}^2 + {A_y}^2 + {A_z}^2)({B_x}^2 + {B_y}^2 + {B_z}^2) \\
&= {A_x}^2 {B_x}^2 + {A_x}^2 {B_y}^2 + {A_x}^2 {B_z}^2 \\
&\quad + {A_y}^2 {B_x}^2 + {A_y}^2 {B_y}^2 + {A_y}^2 {B_z}^2 \\
&\quad + {A_z}^2 {B_x}^2 + {A_z}^2 {B_y}^2 + {A_z}^2 {B_z}^2 \\
\end{align*}$

The square of the magnitude of ``(\vec{A} ⋅ \vec{B})^2`` is

$\begin{align*}
(\vec{A} ⋅ \vec{B})^2 &= (A_x B_x + A_y B_y + A_z B_z)^2 \\
&= {A_x}^2 {B_x}^2 + {A_y}^2 {B_y}^2 + {A_z}^2 {B_z}^2 \\
&\quad + 2 A_x A_y B_x B_y + 2 A_x A_z B_x B_z + 2 A_y A_z B_y B_z
\end{align*}$

Notice that

$|\vec{A}|^2 |\vec{B}|^2 - (\vec{A} ⋅ \vec{B})^2 = |\vec{A} × \vec{B}|^2$

Thus,

$|\vec{A} × \vec{B}|^2 = |\vec{A}|^2 |\vec{B}|^2 - (\vec{A} ⋅ \vec{B})^2$
"""

# ╔═╡ 08ef5ce6-9d82-4758-ade2-4ea62b514451
md"""
**(b).**
Using components, summation ceonvention, and the relationship between the totally antisymmetric symbol and the Kronecker delta it's possible to arrive at the same expression.

$\begin{align*}
|\vec{A} × \vec{B}|^2 &= (\epsilon_{ijk} \hat{e}_i A_j B_k) ⋅ (\epsilon_{ℓmn} \hat{e}_ℓ A_m B_n) \\
&= A_j B_k A_m B_n \epsilon_{ijk} \epsilon_{ℓmn} \delta_{iℓ} \\
&= A_j B_k A_m B_n \epsilon_{ijk} \epsilon_{imn} \\
&= A_j B_k A_m B_n (\delta_{jm} \delta_{kn} - \delta_{jn} \delta_{km}) \\
&= \sum_{jkmn} A_j B_k A_m B_n \delta_{jm} \delta_{kn} - \sum_{jkmn} A_j B_k A_m B_n \delta_{jn} \delta_{km} \\
&= \sum_{jm} A_j A_m \delta_{jm} \sum_{kn} B_k B_n \delta_{kn} - \sum_{jn} A_j B_m \delta_{jn} \sum_{km} A_m B_k \delta_{km} \\
&= (\vec{A} ⋅ \vec{A}) (\vec{B} ⋅ \vec{B}) - (\vec{A} ⋅ \vec{B}) (\vec{A} ⋅ \vec{B}) \\
&= |\vec{A}|^2 |\vec{B}|^2 - (\vec{A} ⋅ \vec{B})^2
\end{align*}$
"""

# ╔═╡ c0971a8a-7d86-4cb6-aae9-5423beeb1da4
md"""
### Problem 4

From Problem (1) I showed that

$\begin{align*}
d\vec{r}_{r} &= (\hat{i} \sin{\theta} \cos{\phi} + \hat{j} \sin{\theta} \sin{\phi} + \hat{k} \cos{\theta}) \,dr = \,dr \,\hat{r} \\
d\vec{r}_{\theta} &= (\hat{i} \cos{\theta} \cos{\phi} + \hat{j} \cos{\theta} \sin{\phi} - \hat{k} \sin{\theta}) r \,d\theta = r \,d\theta \,\hat{\theta}  \\
d\vec{r}_{\phi} &= (\hat{i} \sin{\phi} + \hat{j} \cos{\phi}) r \sin{\theta} \,d\phi = r \sin{\theta} \,d\phi \,\hat{\phi}
\end{align*}$

This shows that when moving in the ``r``-direction only, the derivative is ``\frac{∂}{∂r}``, in the ``\theta``-direction, the derivative is ``\frac{1}{r} \frac{∂}{∂\theta}``, and in the ``\phi``-direction, the derivative is ``\frac{1}{r \sin{\theta}} \frac{∂}{∂\phi}``.
The gradient in spherical coordinates is then

$\vec{∇} = \hat{r} \frac{∂}{∂r} + \hat{\theta} \frac{1}{r} \frac{∂}{∂\theta} + \hat{\phi} \frac{1}{r \sin{\theta}} \frac{∂}{∂\phi}$
"""

# ╔═╡ 74bea6fd-90e1-4aad-bb58-50b141eb0255
md"""
### Problem 5

From the notes, it is given

$\begin{align*}
\hat{r} &= \hat{i} \cos{\phi} + \hat{j} \sin{\phi} \\
\hat{\phi} &= -\hat{i} \sin{\phi} + \hat{j} \cos{\phi}
\end{align*}$

The partial derivatives of each unit vector with respect to ``\phi`` are

$\begin{align*}
\frac{∂\hat{r}}{∂\phi} &= -\hat{i} \sin{\phi} + \hat{j} \cos{\phi} = \hat{\phi} \\
\frac{∂\hat{\phi}}{∂\phi} &= -\hat{i} \cos{\phi} - \hat{j} \sin{\phi} = \hat{r}
\end{align*}$

Proceeding with the derivation, the result is

$\begin{align*}
\vec{∇}^2 f(r,\phi) &= \vec{∇} ⋅ \vec{∇} f(r,\phi) \\
&= \left(\hat{r} \frac{∂}{∂r} + \hat{\phi} \frac{1}{r} \frac{∂}{∂\phi}\right) ⋅ \left(\hat{r} \frac{∂f}{∂r} + \hat{\phi} \frac{1}{r} \frac{∂f}{∂\phi}\right) \\
&= \hat{r} \frac{∂}{∂r} \left(\hat{r} \frac{∂f}{∂r} + \hat{\phi} \frac{1}{r} \frac{∂f}{∂\phi}\right) + \hat{\phi} \frac{1}{r} \frac{∂}{∂\phi} \left(\hat{r} \frac{∂f}{∂r} + \hat{\phi} \frac{1}{r} \frac{∂f}{∂\phi}\right) \\
&= \hat{r} \left(\hat{r} \frac{∂^2f}{∂r^2} - \hat{\phi} \frac{1}{r^2} \frac{∂f}{∂\phi} + \hat{\phi} \frac{1}{r} \frac{∂f}{∂\phi ∂r}\right) \\
&\quad + \hat{\phi} \frac{1}{r} \left(\hat{\phi} \frac{∂f}{∂r} + \hat{r} \frac{∂f}{∂r ∂\phi} - \hat{r} \frac{1}{r} \frac{∂f}{∂\phi} + \hat{\phi} \frac{1}{r} \frac{∂^2 f}{∂\phi^2}\right) \\
&= \frac{∂^2f}{∂r^2} + \frac{1}{r} \frac{∂f}{∂r} + \frac{1}{r^2} \frac{∂^2 f}{∂\phi^2} \\
&= \frac{1}{r} \frac{∂}{∂r} \left(r \frac{∂f}{∂r}\right) + \frac{1}{r^2} \frac{∂^2 f}{∂\phi^2}
\end{align*}$
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╟─321b951c-9bea-11ec-0d10-31f76d44cc9e
# ╟─710b2cc8-45e7-4eee-9066-3fd4080aebc9
# ╟─370b6a47-79b6-41e3-ad41-01544affa97d
# ╟─a1799513-6a61-4443-8ec7-428c0696bc5f
# ╟─08ef5ce6-9d82-4758-ade2-4ea62b514451
# ╟─c0971a8a-7d86-4cb6-aae9-5423beeb1da4
# ╟─74bea6fd-90e1-4aad-bb58-50b141eb0255
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
