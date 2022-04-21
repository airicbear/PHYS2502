### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ eca417a4-a001-11ec-1a38-dbe781d83ace
md"""
# HW 8

Eric Nguyen
"""

# ╔═╡ 67290e16-8033-4c8c-8a14-add2caa56ed8
md"""
### Problem 1

Consider a vector field ``\vec{A} = f \vec{C}`` where ``\vec{C}`` is some arbitrary constant vector and ``f(\vec{r})`` is a scalar field over some volume ``V``.
By Gauss' Theorem,

$\begin{align*}
∮_S \vec{A} ⋅ d\vec{S} &= ∫_V \vec{∇} ⋅ \vec{A} \,dV \\
∮_S (f \vec{C}) ⋅ d\vec{S} &= ∫_V \vec{∇} ⋅ (f \vec{C}) \,dV \\
\vec{C} ⋅ ∮_S f \,d\vec{S} &= \vec{C} ⋅ ∫_V \vec{∇} f \,dV \\
\implies ∮_S f \,d\vec{S} &= ∫_V \vec{∇} f \,dV \\
\end{align*}$

Thus, we have proven that

$∫_V \vec{∇} f \,dV = ∮_S f \,d\vec{S}$
"""

# ╔═╡ 6f759031-498a-48ca-91db-379484f59658
md"""
### Problem 2

The corresponding ``x``- and ``y``-components of the vector field and their respective partial derivatives are 

$\begin{align*}
A_x &= \frac{-y}{x^2 + y^2} \implies \frac{∂A_x}{∂y} = \frac{2y^2}{(x^2 + y^2)^2} -
 \frac{1}{x^2 + y^2} = \frac{-x^2 + y^2}{(x^2 + y^2)^2} \\
A_y &= \frac{x}{x^2 + y^2} \implies \frac{∂A_y}{∂x} = -\frac{2x^2}{(x^2 + y^2)^2} + \frac{1}{x^2 + y^2} = \frac{-x^2 + y^2}{(x^2 + y^2)^2}
\end{align*}$

The curl of the vector field in both Cartesian and cylindrical polar coordinates are, respectively, 

$\begin{align*}
\text{curl } \vec{A} = \vec{∇} × \vec{A} &= \hat{k} \left(\frac{∂A_y}{∂x} - \frac{∂A_x}{∂y}\right) = 0  &&\text{Cartesian} \\
\text{curl } \vec{A} = \vec{∇} × \vec{A} &= \hat{k} \frac{1}{r} \left(\frac{∂}{∂r} r A_{\phi} - \frac{∂A_r}{∂\phi}\right) = 0 &&\text{Cylindrical polar}
\end{align*}$

The line integral ``\displaystyle ∮ \vec{A} ⋅ d\vec{ℓ}`` around a closed circle of radius ``R`` in the ``xy`` plane, centered at the origin, is

$∮ \vec{A} ⋅ d\vec{ℓ} = ∫_0^{2\pi} \left(\frac{\hat{\phi}}{R}\right) ⋅ \left(\hat{\phi}\,R\right) dt = ∫_0^{2\pi} dt = 2\pi$

The results are inconsistent with the surface theorems because the line integral avoids the singular point at the origin whereas the surface theorems include the origin.
"""

# ╔═╡ 5ec3597d-0aff-4f67-9d6f-90dfd5fca82a
md"""
### Problem 3

The corresponding ``x``-, ``y``-, and ``z``-components of the vector field and their respective partial derivatives are

$\begin{align*}
A_x &= \frac{x}{(x^2 + y^2 + z^2)^{3/2}} \implies \frac{∂A_x}{∂x} = \frac{-2x^2 + y^2 + z^2}{(x^2 + y^2 + z^2)^{5/2}} \\
A_y &= \frac{x}{(x^2 + y^2 + z^2)^{3/2}} \implies \frac{∂A_y}{∂y} = \frac{x^2 - 2y^2 + z^2}{(x^2 + y^2 + z^2)^{5/2}} \\
A_z &= \frac{x}{(x^2 + y^2 + z^2)^{3/2}} \implies \frac{∂A_z}{∂z} = \frac{x^2 + y^2 - 2z^2}{(x^2 + y^2 + z^2)^{5/2}}
\end{align*}$

The divergence of the vector in both Cartesian and spherical polar coordinates are, respectively,

$\begin{align*}
\text{div } \vec{A} = \vec{∇} ⋅ \vec{A} &= \frac{∂A_x}{∂x} + \frac{∂A_y}{∂y} + \frac{∂A_z}{∂z} = 0 &&\text{Cartesian} \\
\text{div } \vec{A} = \vec{∇} ⋅ \vec{A} &= \frac{1}{r} \frac{∂}{∂r} (r A_r) = 0 &&\text{Spherical polar} \\
\end{align*}$

The surface integral ``\displaystyle ∮ \vec{A} ⋅ d\vec{S}`` around a sphere of radius ``R``, centered at the origin, is

$∮ \vec{A} ⋅ d\vec{S} = ∫_0^{2\pi} ∫_0^{\pi} ∫_0^R \left(\frac{1}{r^2}\right) r^2 \sin{\theta} \,dr \,d\theta \,d\phi = 2\pi R$

The results are inconsistent with the surface theorems because the surface integral avoids the singular point at the origin whereas the surface theorems include the origin.
"""

# ╔═╡ 301277aa-7465-46e0-9198-10669d567204
md"""
### Problem 4

First, we write

$u(x,t) = X(x) T(t)$

So the partial differential equation becomes

$4T \frac{d^2 X}{dx^2} = X \frac{dT}{dt} \implies \frac{1}{X} \frac{d^2 X}{dx^2} = \frac{1}{4T} \frac{dT}{dt}$

Set each side to a constant ``-k^2`` to get

$X''(x) = -k^2 X \quad\text{and}\quad T'(t) = -4k^2 T$

The general solutions are

$X(x) = A_x \cos{kx} + B_x \sin{kx} \qquad\text{and}\qquad T(t) = A_y e^{-4k^2t}$

So the solution to the PDE has the form

$u(x,t) = X(x) T(t) = (C \cos{kx} + D \sin{kx}) (e^{-4k^2 t})$

where ``C = A_x A_y`` and ``D = B_x A_y``.
The boundary condition ``u(0,t) = 0`` gives

$(C \cos{0} + D \sin{0}) (e^{-4k^2t}) = 0 \implies C = 0$

The other boundary condition ``u(2,t) = 0`` gives

$(D \sin{2k})(e^{-8k^2 t}) = 0 \implies \sin{2k} = 0 \implies 2k ≡ n\pi \quad\text{where}\quad  n ∈ ℤ \implies k ≡ \frac{n\pi}{2}$

The solution to the PDE has the form

$u(x,t) = D \sin{\left(\frac{n\pi x}{2}\right)} e^{\frac{-4n^2 \pi^2 t}{4}}$

The initial condition ``u(x,0) = \sin{(\pi x / 2)}`` gives

$\sin{\left(\frac{\pi x}{2}\right)} = D \sin{\left(\frac{n\pi x}{2}\right)} \implies D = 1, \,n = 1$ 

The final solution is

$u(x,t) = \sin{\left(\frac{\pi x}{2}\right)} e^{-\pi^2 t}$
"""

# ╔═╡ 7dd42ca7-1752-49cc-a292-d923c34e697a
md"""
### Problem 5

The Helmholtz Equation is

$\vec{∇}^2 f(r,\phi) + k^2 f(r,\phi) = 0$

We want to show that solutions for ``R(r)`` are the Bessel Functions ``J_m(kr)`` of integer order ``m`` by arriving at the Bessel Equation,

$r^2 R''(r) + r R'(r) + (k^2 r^2 - m^2) R(r) = 0$

Using separation of variables, we write

$f(r,\phi) = R(r) \Phi(\phi)$

So the PDE becomes

$\begin{align*}
\vec{∇}^2 (R(r) \Phi(\phi)) + k^2 R(r) \Phi(\phi) &= 0 \\
\frac{1}{r} R'(r) \Phi(\phi) + R''(r) \Phi(\phi) + \frac{1}{r^2} R(r) \Phi''(\phi) + k^2 R(r) \Phi(\phi) &= 0 \\
r R'(r) \Phi(\phi) + r^2 R''(r) \Phi(\phi) + R(r) \Phi''(\phi) + k^2 r^2 R(r) \Phi(\phi) &= 0 \\
\frac{r R'(r) + r^2 R''(r) + k^2 r^2 R(r)}{R(r)} &= -\frac{\Phi''(\phi)}{\Phi(\phi)}
\end{align*}$

Suppose both sides are equal to a constant ``m^2``.
However in this case, we are only interested in the equation for ``R(r)`` so we can ignore the equation for ``\Phi(\phi)``.
Notice the equation for ``R(r)`` is the Bessel Equation

$r^2 R''(r) + r R'(r) + (k^2 r^2 - m^2) R(r) = 0$

where the solution is the Bessel Function ``J_m(kr)`` of integer order ``m``.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╟─eca417a4-a001-11ec-1a38-dbe781d83ace
# ╟─67290e16-8033-4c8c-8a14-add2caa56ed8
# ╟─6f759031-498a-48ca-91db-379484f59658
# ╟─5ec3597d-0aff-4f67-9d6f-90dfd5fca82a
# ╟─301277aa-7465-46e0-9198-10669d567204
# ╟─7dd42ca7-1752-49cc-a292-d923c34e697a
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
