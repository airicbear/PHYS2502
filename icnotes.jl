### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ f180024d-eb45-4fa6-b847-99dd42255ae5
begin
	using LinearAlgebra
	
	md"# PHYS 2502 In-Class Notes"
end

# ╔═╡ a2f08dba-0022-4a47-aa91-9a483a9a3f4e
md"""
# Jan 11

- Numbers, Functions, Groups

- Dimensional Analysis
"""

# ╔═╡ 0083c9ae-b9a9-4d06-a45a-8b19794ced5b
md"""
## "Fields" of numbers

- Integers: ``ℤ \quad 0,±1,±2,… \quad i ∈ ℤ``
- Positive integers: ``ℤ^+ \quad 1,2,3,… \quad n ∈ ℤ^+``
- Reals: ``ℝ`` "the real axis" **continuous**
- Complex Numbers: ``ℂ``
- 2D Space: ``ℝ^2 = ℝ × ℝ`` pairs of real numbers
- 3D Space: ``ℝ^3 = ℝ × ℝ × ℝ``
- ND space: ``ℝ^N``
"""

# ╔═╡ 6cec92f4-e298-40fe-9e96-be5b73f90d0f
md"""
### Complex Numbers (very important in Physics)

$i = \sqrt{-1} \implies i^2 = -1 \implies i^3 = i i^2 = -i \implies i^4 = +1$

$z ∈ ℂ \text{ if } z = x + iy \quad x,y ∈ ℝ$

$x = \Re{(z)} \quad y = \Im{(z)}$

$z_1 z_2 = (x_1 + iy_1)(x_2 + iy_2) = (x_1 x_2 - y_1 y_2) + i(x_1 y_2 + x_2 y_1) ∈ ℂ$

"Modulus" of ``z = |z| = (x^2 + y^2)^{1/2} = \sqrt{x^2 + y^2}``

Complex Conjugate of ``z``: ``z^* = x - iy``

``zz^* = (x + iy)(x - iy) = x^2 + y^2 = |z|^2``

``\frac{z_1}{z_2} = \frac{z_1}{z_2} \frac{{z_2}^*}{{z_2}^*} = \frac{1}{|z_2|^2} z_1 {z_2}^*``
"""

# ╔═╡ fec0a540-f9a6-40bd-a227-3cdc8a486852
md"## Functions"

# ╔═╡ 0fac4771-c995-44a0-8734-d640ba004172
md"""
### Examples

- ``f : ℝ → ℝ`` i.e. ``u = f(x) \quad [=u(x)]``

- ``g : ℝ^2 → ℝ`` i.e. ``u = g(x,y) \quad [=u(x,y)]``

- "``f = f(x)``" *emphasis*
"""

# ╔═╡ 2db4ceb6-85c1-410b-8b25-65b780f65fe1
md"""
## Groups

Let ``G`` be a group with

1. Set
2. Binary Operation (``∘``)
"""

# ╔═╡ b0d60683-29d0-4c37-8698-aa3fdaf6a36c
md"""
### Group Axioms

- ``∃`` Identity ``𝟏`` such that ``x ∘ 𝟙 = x = 𝟙 ∘ x \quad x ∈ G``
- For any ``x ∈ G``, ``∃x^{-1}`` such that ``x^{-1} ∘ x = 𝟙 = x ∘ x^{-1}``
- ``x ∘ (y ∘ z) = (x ∘ y) ∘ z``
"""

# ╔═╡ af3524f9-c1d4-4dbe-8f7d-43deb0b5e427
md"""
### Example

- ``G = (ℝ,+) \quad 𝟙 = 0 \quad x^{-1} = -x``
- ``G = (ℝ^*,⋅) \quad 𝟙 = 1 \quad x^{-1} = \frac{1}{x}`` where ``ℝ^*`` is the real numbers without 0
"""

# ╔═╡ 016567dd-495f-42b1-b93f-9dc351b5b3d4
md"## Dimensional Analysis"

# ╔═╡ 38afe980-7fdc-457d-b17b-bc1baa563042
md"""
### Base units

| Quantity | Symbol | SI | CGS |
|----------|--------|----|-----|
| Mass     | ``M``  | kg | g   |
| Length   | ``L``  | m  | cm  |
| Time     | ``T``  | s  | s   |
| Current  | ``I``  | Ampere | —— |

Note: We won't use current in this course, but it is useful for later physics courses
"""

# ╔═╡ 452a9102-9933-45d5-b714-80bd4857f703
md"""
### Derived Dimensions

- "Work" = "Force" × "Distance"   [Work] = [Force] L

  - "Force" = mass × acceleration   [Force] = ``M ⋅ L / T^2 = MLT^{-2}``

  - [Work] = ``ML^2 T^{-2}``

- "Energy" = (1/2) ⋅ mass ⋅ ``v^2`` = mass ⋅ ``c^2``   [Energy] = ``M(L/T)^2 = ML^2 T^{-2}``
"""

# ╔═╡ e5cbbf87-24fa-4954-ae23-0231ae924f61
md"""
### Fundamental Constants

- Newton's Gravitational Constant

``F = G \frac{m_1 m_2}{r^2} \implies [F] = [G] M^2 L^{-2} \implies [G] = M^{-1}L^3T^{-2}``

- Planck's Constant ``\hbar``

"angular momentum" = length × momentum

``[\hbar] = L⋅M(L/T) = L^2MT^{-1}``
"""

# ╔═╡ fe377e20-013d-4b20-b5fb-26477e4fb66f
md"""
### What is the radius of a Black Hole?

``G \quad m \quad c``

``R = G^x m^y c^z``

$\begin{align*}
L &= [G]^x M^y L^z T^{-z} \\
&= M^{-x} L^{3x} T^{-2x} M^y L^z T^{-z} \\
&= M^{-x+y} L^{3x+z} T^{-2x-z} \\
&\implies -x + y = 0 \quad \text{i.e. } y = x \\
&\implies 3x + z = 1 \\
&\implies -2x - z = 0
\end{align*}$
"""

# ╔═╡ cfd40ee0-863a-456c-a399-034cf668c1a7
let
	A = [-1 1 0
		  3 0 1
		 -2 0 -1]

	b = [0; 1; 0]

	A \ b
end

# ╔═╡ 9f90861b-1464-43b0-bafa-07123d7290f5
md"$R = Gmc^{-2} = Gm/c^{-2}$"

# ╔═╡ 56e19cd7-d38a-45d2-98f8-9ae9913a0963
md"Schwarzchild radius $R_s = 2Gm/c^2$ (factor of 2 can't be done with dimenional analysis, it requires general relativity)"

# ╔═╡ 71293f35-2b77-4a56-8f8b-bdb4acd36e2f
md"# Jan 13"

# ╔═╡ e7e0503a-93d8-417f-a625-44775c38144e
md"""
### Example

$f(x) = x^n \qquad n ∈ ℤ^+$

$\begin{align*}
f(x+Δx) &= (x + nx)^n \\
&= (x + Δx)(x + Δx) ⋯ (x + Δx) \quad n \text{ times} \\
&= x^n + x^{n - 1} Δx
\end{align*}$

$f(x + Δx)$
"""

# ╔═╡ 9e586ab4-425d-40bb-a09d-52496b871a10
md"""
### Example (Product Rule)

Let ``u = f(x)``

Let ``v = g(x)``

Let ``h(x) = f(x) g(x)``

What is ``h'(x)`` for ``w = h(x)``? i.e. ``w = u v``

$h'(x) = \frac{dw}{dx}$

$\begin{align*}
dw &= d(uv) \\
&= (u + du)(v + dv) - uv \\
&= uv + u \;dv + v \;du + du \;dv - uv \\
&= u \;dv + v \;du + du \;dv
\end{align*}$

$h'(x) = \frac{u \;dv  + v \;du}{dx} = u \frac{dv}{dx} + \frac{du}{dx} v = f(x) g'(x) + f'(x) g(x)$
"""

# ╔═╡ 80b560e9-6b61-4702-9e45-7eba9dd73210
md"""
### Example (Chain Rule)

Let ``w = h(x) = f(g(x))`` and ``u = g(x)``.

$\begin{align*}
h'(x) &= \frac{dw}{dx} \\
&= \frac{dw}{dx} \frac{du}{du} \\
&= \frac{dw}{du} \frac{du}{dx} \\
&= f'(u) g'(x)
\end{align*}$
"""

# ╔═╡ eac06a48-0efe-44cf-8058-4d1a9dc5ebe1
md"""
### Example

Let ``f(x) = x^n`` and ``g(x) = x^m``.
"""

# ╔═╡ a23f6586-2bac-4bee-85c7-52aa23147031
md"""
## Higher Order Derivatives

``y = f(x)``

``f'(x) = \frac{dy}{dx}``

``f''(x) = \frac{d}{dx} = \frac{d^2y}{dx^2} \text{ etc}…``

Notation: ``f'''^{⋯} (x) = f^{(n)}(x)``
"""

# ╔═╡ 59a01b12-4381-4c1f-a09b-68e67f17741f
md"""
## Partial Derivatives

``f : ℝ^2 → ℝ \qquad z = f(x,y)``

$\frac{∂z}{∂x} = \lim_{\Delta x → 0} \frac{f(x + Δx, y) - f(x,y)}{Δx} \quad \text{ etc}…$
"""

# ╔═╡ b5be9687-b3fe-46da-9a12-d84c5279f332
md"""
## Maxima and Minima

``f(x)`` has a local maximum/minimum at ``x = x_0`` if ``f'(x_0) = 0`` for some function ``f : X → Y`` and value ``x_0 ∈ X``.
"""

# ╔═╡ 0ec651ad-8789-44c7-bc0f-339ac9be633c
md"""
### Notation

$f'(x_0) = \left.\frac{dy}{dx}\right|_{x = x_0}$
"""

# ╔═╡ 17253926-28d3-459f-bf23-5df40aa1cf2a
md"""
### Second Derivative

If the second derivative is negative then the function has a maximum.
If its positive then the function has a minimum.
"""

# ╔═╡ cc974c24-b98d-4f52-8998-f599d1fe24ab
md"# Jan 18"

# ╔═╡ ec877cd8-9640-403a-8d96-e65934f95e3a
md"""
## Integration
"""

# ╔═╡ 08841bb0-a555-43ae-9ea5-fe42466690b0
md"""
### Emphasis

An integral is a **sum**.
"Infinite sum of infinitesimals".
"""

# ╔═╡ 814a2b92-ad9f-4df8-8885-7d867e6e2b02
md"""
### Definite Integral

$\text{Let } x_i = \{x_0 = a, x_1, x_2, …, x_N = b\}$

The definite integral is defined as

$∫_a^b f(x) \;dx = \lim_{\substack{N → ∞ \\ Δx_i → 0}} \sum_{i = 0}^N f(x_i) Δx_i$
"""

# ╔═╡ 867c91f1-406f-4cd1-a21a-ae4947d972d3
md"""
### Physical Examples

(1) Area under a curve

(2) Volume of an eggplant
"""

# ╔═╡ 9c3a932f-c477-4139-a342-9c0fdba3e525
md"""
### Anti-Derivative

If ``\displaystyle f(x) = \frac{dF}{dx} \implies \int f(x) \;dx = F(x)``

"Indefinite Integral"
"""

# ╔═╡ ede15602-ef43-401b-8955-f4d53c0cd94a
md"""
### Example

``f(x) = x^{\alpha}``

``\displaystyle ∫ f(x) \;dx = \frac{x^{\alpha + 1}}{\alpha + 1}``

What about ``\alpha = -1``?
"""

# ╔═╡ 7b9291da-b6d2-451a-9fb9-02459de8108f
md"""
### Fundamental Theorem of Integral Calculus

$\begin{align*}
∫_a^b f(x) \;dx &= \sum_{i = 0}^∞ f(x_i) \;dx_i \\
&= \sum_{i = 0}^∞ \frac{dF_i}{dx_i} \;dx_i \\
&= \sum_{i = 0}^∞ dF_i
\end{align*}$

$dF_i = F_{i + 1} - F_i$

All that's left are the first and last ``F_i`` since the terms cancel out.
In other words,

$∫_a^b f(x) \;dx = F(b) - F(a)$
"""

# ╔═╡ 529a0860-7a7f-4d46-9e09-fea69d422854
md"""
### Changing Variables

$∫_a^b f(x) \;dx \quad \text{Have } y = g(x)$

$\begin{align*}
x = a ⟹ c = g(a) \\
x = b ⟹ d = g(b)
\end{align*}$

``\displaystyle dy = dy \frac{dx}{dx} = \frac{dy}{dx} dx``

$\implies ∫_a^b f(x) \;dx = ∫_c^d f(g^{-1}(y)) \frac{1}{dy/dx} dy$

Important that we need ``x = g^{-1}(y)`` for ``a ≤ x ≤ b``.
"""

# ╔═╡ 9c6a7906-4c83-4295-a0d9-44c9932d4575
md"""
### Integration by parts

$∫_a^b f(x) \;dx \text{ with } f(x) = u(x) V(x)$

$u(x) = \frac{dU}{dx} \quad v(x) = \frac{dV}{dx}$

$\begin{align*}
\frac{d}{dx} (UV) &= \frac{dU}{dx} V + U \frac{dV}{dx} \\
&= u(x) V(x) + U(x) v(x)
\end{align*}$

$\begin{align*}
∫_a^b f(x) \;dx &= ∫_a^b u(x) V(x) \;dx \\
&= ∫_a^b \left[\frac{d(UV)}{dx} - U(x) v(x)\right] dx
\end{align*}$

**Notation.** ``\displaystyle ∫_a^b \frac{d}{dx} (UV) \;dx = U(b)V(b) - U(a)V(a) = UV \Big|_a^b``

$\implies ∫_a^b u(x) V(x) \;dx = UV\Big|_a^b - ∫_a^b U(x) v(x) \;dx$

"Integration by Parts"
"""

# ╔═╡ 0dbb28ee-8dff-4ac3-8e57-4cc5edc010a7
md"""
### Higher Dimensional Integrals

$∫_a^b ∫_c^d f(x,y) \;dx \;dy = ∫_a^b dx ∫_c^d dy \; f(x, y)$

"Domain is a rectangle"
"""

# ╔═╡ 4619d873-2128-4599-80d5-90c4418e23e8
md"""
### More general

$∫_R f(x,y) \;dx \;dy \quad R = \text{``some region''}$

Example: ``R`` = circular patch of radius ``a``.

"``y`` integral" over

$-(a^2 - x^2)^{1/2} ≤ y ≤ (a^2 - x^2)^{1/2}$
"""

# ╔═╡ 22f4ad58-ad72-41a1-8d0a-85d621a44ce0
md"""
### Polar Coordinates

``x = r \cos{\phi}``

``y = r \sin{\phi}``

``dA = (r \;d \phi) ⋅ dr = r \;dr \;d\phi``
"""

# ╔═╡ da24a1ea-7428-4ba3-9aef-dd4d9e83c65e
md"""
$\begin{align*}
dV &= dx \;dy \;dz = (r \;d\theta) (r \sin{\theta} \; d\phi) \;dr = r^2 \sin{\theta} \;dr \;d\phi \;d\theta
\end{align*}$
"""

# ╔═╡ af362968-605b-443e-bdaf-304494ce4c17
md"""
### Integrals over arbitrary lines, surfaces

E.g.,

$∫_C f(x, y, z) \;dℓ \quad\text{ or }\quad ∮_C f(x, y, z) \;dℓ$

$∫_S f(x, y, z) \;dA \quad\text{ or }\quad ∮_S f(x, y, z) \;dA$
"""

# ╔═╡ e84bd83a-3e81-496f-8101-598a5df1a437
md"""
### Example: Surface area of a sphere

$A = ∮_{\text{sphere}} dA$

$dA = (R \sin{\theta} \;d\phi) (R \;d\theta)$

$0 ≤ \phi ≤ 2\pi$

$0 ≤ \theta ≤ \pi$

$A = ∫_0^\pi \sin{\theta} \;d\theta \int_0^{2\pi} d\phi \; R^2 = 2\pi R^2 \int_0^\pi \sin{\theta} \;d\theta$

Change of variables ``\mu = \cos{\theta}``

$\int_0^\pi \sin{\theta} \;d\theta = \int_{+1}^{-1} \sin{\theta} \frac{d\mu}{d\mu} d\theta = \int_1^{-1} \sin{\theta} \frac{1}{d\mu / d\theta} d\mu$

$\implies ∫_0^\pi \sin{\theta} \;d\theta = ∫_1^{-1} \sin{\theta} \frac{1}{-\sin{\theta}} d\mu = ∫_{-1}^1 d\mu = 2$

$\implies A = 2 ⋅ 2\pi R^2 = 4\pi R^2$
"""

# ╔═╡ 9529b375-08eb-4b63-b86f-be6ed6e62f01
md"# Jan 20"

# ╔═╡ 4faa1755-628b-4f3c-88ac-958ca6c1d5d7
md"""
### Derivative of ``\cos(x)``

$\begin{align*}
\frac{d}{dx} \cos{(x)} &= \lim_{Δx → 0} \frac{\cos(x + Δx) - \cos(x)}{Δx} \\
&= \lim_{Δx → 0} \frac{\cos{(x)} \cos{(Δx)} - \sin{(x)} \sin{(Δx)} - \cos{(x)}}{Δx} \\
&= -\sin{x} \lim_{Δx → ∞} \frac{\sin(Δx)}{Δx} + \cos{x} \lim_{Δx → 0} \frac{\cos(Δx) - 1}{Δx}
\end{align*}$

Find ``\displaystyle \lim_{x → 0} \frac{\sin{x}}{x}``

Area of the pie slice = ``\displaystyle \frac{x}{2\pi} ⋅ \pi(1)^2 = \frac{x}{2}``

$\frac{1}{2} OA ⋅ PA = \frac{1}{2} \cos{(x)} \sin{(x)}$

$\lim_{x → 0} \frac{\cos{(x)} - 1}{x} ⋅ \frac{\cos{(x)} + 1}{\cos{(x)} + 1} = -\lim_{x → 0} \frac{\sin{x}}{x} \frac{\sin{x}}{\cos{x} + 1} = 0$

$\implies \frac{d}{dx} \cos{x} = -\sin{x}$

$\implies 2\cos{(x)} (-\sin{(x)}) + 2 \sin{(x)} \frac{d}{dx} \sin{(x)} = 0$

$\implies \frac{d}{dx} \sin{x} = \cos{x}$
"""

# ╔═╡ c0fab6b0-e26e-4b29-a2ff-2f0b73c1f14f
md"""
### Inverse circular functions

Note: study derivative of inverse circular function for the quiz next week.

$y = \cos^{-1}{x} \implies \cos{y} = x \qquad 0 ≤ y ≤ \pi$

$y = \sin^{-1}{x} \implies \sin{y} = x \qquad -\pi/2 ≤ y ≤ \pi/2$
"""

# ╔═╡ 04057510-b942-49f7-98f7-496d2a0bd93b
md"""
### Natural logarithm

What is the antiderivative of ``\displaystyle \frac{1}{x}``?

$f(x) = ∫_1^x \frac{1}{t} \;dt \qquad f(1) = 0$
"""

# ╔═╡ b2d4f5b3-77bc-4832-a5fd-e0874e407943
md"""
### Example

$f(1/a) = ∫_1^{1/a} \frac{1}{t} \;dt = -∫_1^a \frac{1}{t} t^2 \;du = -∫_1^a \frac{1}{u} \;du = -f(a)$

using ``u = 1/t`` and ``du = -1/t^2 \;dt``.
"""

# ╔═╡ 07c67d8e-a2ce-4ead-a365-82cef19f58c2
md"""
### Example

$f(ab) = f(a) + f(b)$

is ``f(x)`` a log?

$\begin{align*}
\frac{d}{dx} \log_b(x) &= \lim_{Δx → 0} \frac{\log_b(x + Δx) - \log_b(x)}{Δx} \\
&= \lim_{Δx → 0} \frac{1}{Δx} \frac{x}{x} \log_b{\left(1 + \frac{Δx}{x}\right)} \\
&= \frac{1}{x} \lim_{Δx → 0} \log_b{\left(1 + \frac{Δx}{x}\right)^{x / Δx}} \\
&= \frac{1}{x} \log_b{\left[\lim_{n → ∞} \left(1 + \frac{1}{n}\right)^n\right]} \\
&= \frac{1}{x}
\end{align*}$

This determines the value of the logarithm base ``b``, namely

$b = \lim_{n → ∞} \left(1 + \frac{1}{n}\right)^n ≡ e$
"""

# ╔═╡ 8da5a61c-6c3f-496c-b1c1-bc5fd1b983dc
md"""
### Exponential function

``y = e^x = \exp(x)``

It's the inverse of log, i.e., ``\log{e^x} = x`` and ``e^{\log{x}} = x``.

``\displaystyle y = e^x \implies \log{y} = x \implies \frac{1}{y} \frac{dy}{dx} = 1``

so ``\displaystyle \frac{dy}{dx} = y``, i.e., ``\displaystyle \frac{d}{dx} e^x = e^x``

Chain rule:
``\displaystyle \frac{d}{dx} e^{ax} = e^{ax} \frac{d}{dx} (ax) = ae^{ax}``
"""

# ╔═╡ a586a6d2-4a98-4bef-a333-8bc0d5225962
md"""
### Hyperbolic functions

$u^2 - v^2 = 1$

$\cosh^2{x} - \sinh^2{x} = 1$

$\cosh{x} = \frac{e^x + e^{-x}}{2}$

$\sinh{x} = \frac{e^x - e^{-x}}{2}$

$\frac{d}{dx} \cosh{x} = \sinh{x}$

$\frac{d}{dx} \sinh{x} = \cosh{x}$
"""

# ╔═╡ 56a8936e-76c3-46c9-ad98-b41938c7fdc2
md"""
### The Gamma function

$Γ(z) = ∫_0^∞ x^{z - 1} e^{-x} \;dx \qquad z ∈ ℂ \text{ where } \Re(z) > 0$

$Γ(n + 1) = n ⋅ (n - 1) ⋅ (n - 2) ⋯ 1 = n!$
"""

# ╔═╡ 41202a92-e39d-4182-8da1-94825fccf5d4
md"""
### Proof

Use integration by parts

$\begin{align*}
Γ(n + 1) &= ∫_0^∞ x^n e^{-x} \;dx \\
&= x^n (-e^{-x}) \Big|_0^∞ - ∫_0^∞ nx^{n - 1} (-e^{-x}) \;dx \\
&= n ∫_0^{∞} x^{n - 1} e^{-x} \;dx \\
&= nΓ(n)
\end{align*}$

Repeat this.

``\displaystyle Γ(1) = ∫_0^∞ e^{-x} \;dx = 1 = 0!``
"""

# ╔═╡ e6648fd2-36c7-4884-b878-95e07f6a3cd5
md"""
### Gaussian Integrals: the Error Function

``e^{-x^2}`` is a function for which no antiderivative exists.

$I = ∫_{-∞}^∞ e^{-x^2} \;dx = 2 ∫_0^∞ e^{-x^2} \;dx = ∫_{-∞}^{∞} e^{-y^2} \;dy$

$I^2 = ∫_{-∞}^∞ ∫_{-∞}^∞ e^{-x^2} e^{-y^2} \;dx \;dy = ∫_{-∞}^∞ ∫_{-∞}^∞ e^{-(x^2 + y^2)} \;dx \;dy$

Polar coords: ``r^2 = x^2 + y^2``, ``dx\;dy = r \;dr \;d\phi``

$I^2 = ∫_{r = 0}^∞ ∫_{\phi = 0}^{2\pi} e^{-r^2} r \;dr \;d\phi = \left[∫_{\phi=0}^{2\pi}\right] \left[∫_{r=0}^∞ re^{-r^2} \;dr\right] = 2r \left[-\frac{1}{2} e^{-r^2}\right]_0^∞ = \pi$

$\implies \int_{-∞}^∞ e^{-x^2} \;dx = \sqrt{\pi}$

$I(a) = ∫_{-∞}^∞ e^{-ax^2} \;dx = \sqrt{\frac{\pi}{a}}$

$\implies ∫_{-∞}^∞ x^2 e^{-x^2} \;dx = -\frac{d}{da} I(a) \Big|_{a=1} = \frac{1}{2} \sqrt{\pi}$
"""

# ╔═╡ 08ba081d-8849-4f1d-8294-4d44d942cf8f
md"""
### Error function

``\text{erf}(x)``

$\text{erf}(x) = \frac{2}{\sqrt{\pi}} ∫_0^x e^{-t^2} \;dt$

$\text{erf}(0) = 0$

$\text{erf}(∞) = 1$
"""

# ╔═╡ ca956101-46bd-47de-bdbb-cf2b3f0e16b3
md"# Jan 25"

# ╔═╡ 786678be-4417-44c8-8845-4ca53a23c7f3
md"""
### Infinite Series

Simple finite series

$S_n = 1 + x + x^2 + ⋯ + x^n$

Find analytical expression for ``S_n``.

$x S_n = x + x^2 + x^3 + ⋯ + x^{n+1}$

Subtract 2nd eq from 1st eq.

$(1 - x) S_n = 1 - x^{n+1}$

What if ``n → ∞``?

- if ``|x| < 1 \implies S_∞ = \frac{1}{1 - x}``
- if ``|x| ≥ 1 \implies`` nonsense

So

$\frac{1}{1 - x} = 1 + x + x^2 + ⋯ \qquad \text{ for } |x| < 1$

or

$\frac{1}{1 + x} = 1 - x + x^2 - x^3 ⋯ \qquad \text{ for } |x| < 1$
"""

# ╔═╡ 9d4c5149-32dd-4821-a0a2-60a07ba224d2
md"""
### Taylor Series

$f(x) = f(x_0) + f'(x_0)(x - x_0) + \frac{1}{2!} f''(x - x_0)^2 + ⋯ = \sum_{n = 0}^∞ \frac{1}{n!} f^{(n)} (x_0)(x - x_0)^n$

``f^{(n)}(x_0) ≡ n^{\text{th}}`` derivative of ``f(x)`` evaluated at ``x = x_0``.
"""

# ╔═╡ 7d8c73a5-e5fc-4474-a6be-1da5371789a9
md"""
### Proof of Taylor Series

"First ``x_0 = 0``"

$\begin{align*}
f(x) &= a_0 + a_1 x + a_2 x^2 + a_3 x^3 + ⋯ \\
f(0) &= a_0 \\
f'(x) &= a_1 + 2a_2 x + 3a_3 x^2 + ⋯ \\
f'(0) &= a_1 \\
f''(x) &= 2a_2 + 3 ⋅ 2 a_3 x + ⋯ \\
f''(0) &= 2! a_2 \\
f'''(0) &= 3! a_3
\end{align*}$

In other words, ``f^{(n)} = n! ⋅ a_n``, and so

$f(x) = f(0) + f'(0) x + \frac{1}{2!} f''(0) x^2 + ⋯ = \sum_{n = 0}^∞ \frac{1}{n!} f^{(n)} (0) x^n$

Put ``y = x + x_0``

$f(y) = \sum_{n=0}^∞ \frac{1}{n!} f^{(n)} (x_0) (y - x_0)^n$
"""

# ╔═╡ 80fae2f6-5341-4059-967e-361faed5b005
md"""
### Example

$f(x) = e^x \implies f^{(n)}(0) = 1$

$e^x = 1 + x + \frac{1}{2!} x^2 + \frac{1}{3!} x^3 + ⋯$
"""

# ╔═╡ 25e583d6-5849-477e-bada-4b947fdda3e3
md"""
### Example

$f(x) = \cos{x} = 1 - \frac{1}{2!} x^2 + \frac{1}{4!} x^4 + ⋯$
"""

# ╔═╡ 508ad5f9-f2c1-4113-97da-80271af1c141
md"""
### Example

$f(x) = \sin{x} = x - \frac{1}{3!} x^3 + \frac{1}{5!} x^5 + ⋯$
"""

# ╔═╡ ad131026-bb70-4668-9086-df0eb3c00315
md"""
### Example

$f(x) = \frac{1}{1 - x} \implies f(0) = 1, f'(x) = \frac{1}{(1 - x)^2}, f''(x) = \frac{2}{(1 - x)^3} \implies f^{(n)}(0) = n!$

$\frac{1}{1 - x} = 1 + x + x^2 + ⋯$
"""

# ╔═╡ 1a77d7be-be54-4f7b-af3b-911d196d5686
md"""
### Example

$f(x) = (1 + x)^{\alpha} = 1 + \alpha x + \frac{1}{2} \alpha (\alpha - 1) x^2 + \frac{1}{6} (\alpha - 2)(\alpha - 1) \alpha x^3 + ⋯$
"""

# ╔═╡ be448b4a-d2b1-4efb-8cab-3f8eea347aa5
md"""
### Memorize this approximation

$(1 + x)^{\alpha} = 1 + \alpha x \qquad \text{ when } |x| ≪ 1$
"""

# ╔═╡ f666e482-e32a-44ce-aaf3-9a28e19341da
md"""
### Example

$f(x) = \log(1 + x) = x - \frac{1}{2} x^2 + \frac{1}{3} x^3 - \frac{1}{4} x^4 + ⋯$
"""

# ╔═╡ f678d631-1505-40d6-8c6b-3f0525971710
md"""
### Taylor Expansions as Approximations

$f(x) = f(x_0) + f'(x_0) f(x - x_0) + \frac{1}{2!} f''(x_0)(x - x_0)^2 + ⋯$

If ``|x - x_0|`` is "small" then the first terms dominate.
"small compared to what?"

``|x - x_0|`` is dimensionless then ``|x - x_0| ≪ 1``
"""

# ╔═╡ 1886402f-1d9a-4078-aabe-d5c6f65e06d6
md"""
### Example

$F_{\text{Grav}} = G \frac{mm_E}{(R + y)^2}$

For ``y = 0``, ``F_{\text{Grav}} = mg`` if ``g = \frac{G m_E}{R^2} = g_0``

$g(y) = \frac{Gm_E}{(R + y)^2} = \frac{Gm_E}{R^2} \frac{1}{(1 + y/R)^2} = g_0 \left(1 - 2\frac{y}{R}\right)$
"""

# ╔═╡ 29ada7f3-7a8d-4965-b720-52341b3e5c26
md"""
### Euler's Formula

$e^x = 1 + x + \frac{1}{2!} x^2 + \frac{1}{3!} x^3 + \frac{1}{4!} x^4 + \frac{1}{5!} x^5 + ⋯$

$\cos{x} = 1 - \frac{1}{2!} x^2 + \frac{1}{4!} x^4 + ⋯$

$\sin{x} = x - \frac{1}{3!} x^3 + \frac{1}{5!} x^5 + ⋯$

Recall that ``i = \sqrt{-1} \implies i^2 = -1 \implies i^3 = -i \implies i^4 = 1 \implies i^5 = i \implies \text{etc}…``

$\begin{align*}
e^{ix} &= 1 + ix + \frac{1}{2!} i^2 x^2 + \frac{1}{3!} i^3 x^3 + \frac{1}{4!} i^4 x^4 + \frac{1}{5!} i^5 x^5 + ⋯ \\
&= 1 - \frac{1}{2!} x^2 + \frac{1}{4!} x^4 + ⋯ + i\left[x - \frac{1}{3!} x^3 + \frac{1}{5!} x^5 + ⋯\right] \\
\implies e^x &= \cos{x} + i \sin{x}
\end{align*}$
"""

# ╔═╡ 31ea2128-d49c-415b-9f29-395c99cf35a4
md"""
### Example

$\cosh{x} ≡ \frac{e^x + e^{-x}}{2}$

$\cos{x} = \frac{e^{ix} + e^{-ix}}{2}$
"""

# ╔═╡ afb1caee-9c85-485c-9f8f-8eba0e265682
md"""
# Jan 27: Euler's Formula and Applications
"""

# ╔═╡ 10b65598-4275-469c-b6bb-af955d4cf14b
md"""
### From last class

$e^{ix} = \cos{x} + i \sin{x} \qquad x ∈ ℝ$

$\implies e^z = e^{x + iy} = e^x (\cos{y} + i \sin{y})$
"""

# ╔═╡ da6675ca-509a-4fef-a682-1d8bd4d917ad
md"""
### Definition

$e^{ix} = \cos{x} + i\sin{x} \qquad e^{-ix} = \cos{x} - i\sin{x}$

$\implies \cos{x} = \frac{e^{ix} + e^{-ix}}{2} \qquad \sin{x} = \frac{e^{ix} - e^{-ix}}{2i}$
"""

# ╔═╡ ac6b3db3-d966-4337-951c-6deebda09985
md"""
### Recall

$\begin{align*}
\cosh{x} &= \frac{e^x + e^{-x}}{2} \\
\sinh{x} &= \frac{e^x - e^{-x}}{2}
\end{align*}$
"""

# ╔═╡ eaec02e6-f51f-4dae-9550-29d43301d9f1
md"""
### Definition
$\begin{align*}
\cosh{(ix)} &= \cos{x} \\
\sinh{(ix)} &= i \sin{x} \\
\tanh{(x)} = \frac{\sinh{x}}{\cosh{x}} &\implies \tanh{(ix)} = i \tan{x}
\end{align*}$
"""

# ╔═╡ 7ee02b12-4fb7-4c32-8298-057f8d3be8a3
md"""
### Trigonometric Identities

$\begin{align*}
e^{i(x+y)} &= \cos{(x+y)} + i\sin{(x+y)} \\
&= e^{ix} e^{iy} \\
&= (\cos{x} + i\sin{x})(\cos{y} + i \sin{y}) \\
&= \cos{x} \cos{y} - \sin{x} \sin{y} + i \left[\sin{x} \cos{y} + \sin{y} \cos{x}\right]
\end{align*}$
"""

# ╔═╡ fad867c2-69d2-4e3e-a859-1028575c6645
md"""
### Polar Representation of Complex Numbers

$z = x + iy = re^{i\phi} = r \cos{\phi} + i r \sin{\phi}$

i.e.,

$\begin{align*}
x &= r \cos{\phi} \\
y &= r \sin{\phi}
\end{align*}$

$\begin{align*}
r &= \sqrt{x^2 + y^2} &&\text{Magnitude} \\
\tan{\phi} &= \frac{y}{x} &&\text{Phase}
\end{align*}$

$|z| = \sqrt{z^* z} = \sqrt{re^{-i\phi} re^{i\phi}} = r$
"""

# ╔═╡ b0cb971d-82d3-4f5f-ad8c-9f94a2fee39f
md"""
### HW 3 Problem 5 Example

Reduce ``1 + i``.

$\begin{align*}
1 + i &= 1 + i = \sqrt{2} \left[\frac{1}{\sqrt{2}} + i \frac{1}{\sqrt{2}}\right] \\
&= \sqrt{2} \left(\cos{\left(\frac{\pi}{4}\right)} + i \sin{\left(\frac{\pi}{4}\right)}\right) \\
&= \sqrt{2} e^{i\pi / 4}
\end{align*}$

For last problem on hw,

$i = \frac{e^{i\pi}}{2}$
"""

# ╔═╡ f3a314d7-6248-4c46-88b0-d9f1577c8e8f
md"""
### Simple Harmonic Motion

$F = -kx \qquad\text{also}\qquad F = ma$

$\implies -kx = m\frac{d^2x}{dt^2}$

${\omega_0}^2 = \frac{k}{m} \implies \frac{d^2}{dt^2} x(t) = -{\omega_0}^2 x(t)$

- Differential equation

- 2nd order

- Linear

- Homogenous

**Solution.**
``x(t) = e^{i\omega_0 t}``

$\frac{d^2x}{dt^2} = (i\omega_0)^2 e^{i\omega_0 t} = -{\omega_0}^2 x$

Also works if ``x(t) =e^{-i \omega_0 t}``.

$\frac{d^2x}{dt^2} = (-i\omega_0)^2 e^{-i\omega_0 t} = -{\omega_0}^2 x$

**General solution.**

2nd order linear differential equations always have exactly two solutions, so

$x(t) = Ae^{i\omega_0 t} + Be^{-i\omega_0 t}$

$\frac{d^2 x}{dt^2} = A{(i\omega_0)}^2 e^{i \omega_0 t} + B(-i\omega_0)^2 e^{-i \omega_0 t} = -{\omega_0}^2 \left[Ae^{i\omega_0 t} + Be^{i\omega_0 t}\right] = -{\omega_0}^2 x(t)$
"""

# ╔═╡ 09f74123-81c9-4139-9d62-07b53c775682
md"""
### Initial Conditions

$x(0) = 0 \qquad v(0) = v_0 = \dot{x}(0) = \left.\frac{dx}{dt}\right|_{t=0}$

$\implies A + B = x_0 \implies \dot{x}(t) = i\omega_0 A e^{i\omega_0 t} - i\omega_0 Be^{-i\omega_0 t}$

$\implies \dot{x}(0) = i\omega_0 A - i\omega_0 B = v_0 \implies A - B = \frac{v_0}{i\omega_0}$

$\implies A = \frac{1}{2} \left(x_0 + \frac{v_0}{i\omega_0}\right) \qquad B = \frac{1}{2} \left(x_0 - \frac{v_0}{i\omega_0}\right)$

$\implies A = \frac{1}{2} \left(x_0 - i \frac{v_0}{\omega_0}\right) \qquad B = \frac{1}{2} \left(x_0 + i \frac{v_0}{\omega_0}\right) = A^*$
"""

# ╔═╡ 7b5b0915-5feb-4a3b-bd41-6d9d4e29502a
md"""
### Simple Harmonic Motion

$\begin{align*}
x(t) &= Ae^{i\omega_0 t} + Be^{-i\omega_0 t} \\
&= \frac{1}{2} \left(x_0 + \frac{v_0}{i \omega_0}\right) e^{i\omega_0 t} + \frac{1}{2} \left(x_0 - \frac{v_0}{i \omega_0}\right) e^{-i\omega_0 t} \\
&= x_0 \cos{(\omega_0 t)} + \frac{v_0}{\omega_0} \sin{(\omega_0 t)}
\end{align*}$
"""

# ╔═╡ 13824489-e871-4602-a9c2-17aef5663c81
md"""
### Alternate approach to applying Initial Conditions

Have ``B = A*``.

$\begin{align*}
A &= \frac{1}{2} \left(x_0 - i \frac{v_0}{\omega_0}\right) = \frac{1}{2} Re^{i\phi} \\
B &= \frac{1}{2} Re^{-i\phi} \\
x(t) &= \frac{1}{2} Re^{i\phi} e^{i\omega_0 t} + \frac{1}{2} Re^{-i\phi} e^{-i\omega_0 t} \\
&= \frac{1}{2} R \left[e^{i(\omega_0 t + \phi)} + e^{-i(\omega_0 t + \phi)}\right] \\
&= R \cos{(\omega_0 t + \phi)}
\end{align*}$

$R = \sqrt{{x_0}^2 + \frac{{v_0}^2}{{\omega_0}^2}} = \text{Amplitude}$

$\omega_0 = \text{(angular) frequency}$

$T = \frac{2\pi}{\omega_0} = \text{Period}$

$\phi = \tan^{-1}{\left(\frac{-v_0}{\omega_0 x_0}\right)} = \text{Phase}$
"""

# ╔═╡ 7b595e9e-0378-4cca-8742-8c48aa9393de
md"# Feb 1: Differential Equations"

# ╔═╡ 022bc3bc-8b7e-4b49-9e2d-794a79f1e773
md"""
### Terminology

- One independent variable: "Ordinary differential equation"

- More than one independent variable: "Partial differential equation"

- Order: Highest derivative
"""

# ╔═╡ 52751a55-6685-48af-a82d-cb1f5afd1e42
md"""
### Examples from Physics

Newton's 2nd Law: ``F = ma``

- 1D: Find ``x = x(t)`` via ``m \frac{d^2x}{dt^2} = F(x, \dot{x}, t)``

- 3D: Find ``𝐫 = 𝐫(t)`` via ``m \frac{d^2 𝐫}{dt^2} = 𝐅(𝐫, \dot{𝐫}, t)``

Schrödinger's Equation: ``-\frac{ħ^2}{2m} \frac{d^2Ψ}{dx^2} + V(x) Ψ(x) = EΨ(x)``

$-\frac{ħ^2}{2m} 𝛁^2 Ψ(𝐫,t) + V(𝐫) Ψ(𝐫,x) = iħ\frac{∂}{∂t} Ψ(𝐫, t)$

Maxwell's Equations:

e.g., ``𝛁 × 𝐄(𝐫, t) = -\frac{∂𝐁}{∂t} \qquad \text{Faraday's Law}``
"""

# ╔═╡ d06b7bad-4d71-44ef-9926-1bae058aca2a
md"""
### Separable Equation

$\frac{dy}{dx} = \frac{p(x)}{q(y)} \implies q(y) \,dy = p(x) \,dx \implies Q(y) = P(x) + C$

$y(x_0) = y_0 \implies C = Q(y_0) - P(x_0)$
"""

# ╔═╡ ca3a71f7-e67c-40bd-86d5-f299ba0efcda
md"""
### Integrating factors

$\frac{dy}{dx} + p(x) y = g(x)$

Guess an integrating factor, ``\mu(x)``

$\mu(x) = \exp{\left[∫ p(x) \,dx\right]}$

$\begin{align*}
\frac{d}{dx} \left[\mu y\right] &= \frac{d\mu}{dx} y + \mu \frac{dy}{dx} \\
&= p(x) \mu(x) y(x) + \mu(x) \left[g(x) - p(x) y(x)\right] \\
&= \mu(x) g(x)
\end{align*}$

Integrate both sides of the equation to get

$y(x) = \frac{1}{\mu(x)} \left[∫ \mu(x) g(x) \,dx + C\right]$
"""

# ╔═╡ 974722e3-6cc6-40b1-82af-a5e7fb4adf77
md"""
### Example: Radioactive decay

The differential equation for radioactive decay is given by

$dN = -\lambda N \,dt \implies \frac{dN}{dt} = -\lambda N$

where ``\lambda`` is the decay rate and ``N`` is the number of nuclei.
We can rewrite the equation as

$\frac{dN}{N} = -\lambda \,dt$

Integrate both sides using ``N(0) = N_0``,

$\begin{align*}
∫ \frac{dN}{N} &= ∫ -\lambda \,dt \\
\log{N} &= -\lambda t + C \\
&= -\lambda t + \log{N_0} \\
N &= e^{-\lambda t} N_0 \\
&= N_0 e^{-\lambda t}
\end{align*}$

So the solution is

$N = N_0 e^{-\lambda t}$
"""

# ╔═╡ ce59ae2e-378a-4440-8dac-11b8a12c00f9
md"""
### Falling with linear drag

A mass ``m`` falls from rest, i.e., ``v(0) = 0``.
Linear drag says there is a drag force ``F_D = -bv``

$F = ma \implies -mg - bv = m \frac{dv}{dt}$

$\frac{dv}{dt} + \frac{b}{m} v = -g \qquad v(0) = 0$

Let the integrating factor be

$\mu(t) = \exp\left[∫ \frac{b}{m} \,dt\right] = e^{bt / m}$

$v(t) = \frac{1}{\mu(t)} \left[∫ \mu(t) (-g) \,dt + C\right] = e^{-bt/m} \left[-g \frac{m}{b} e^{bt/m} + C\right]$

$0 = \left[-g\frac{m}{b} + C\right] \qquad C = \frac{mg}{b}$

$v(t) = -\frac{mg}{b} \left(1 - e^{-bt/m}\right)$

Check dimensionality:

$[\text{Force}] = [b][v]$

$[b] = MT^{-1}$

$t ≪ \frac{m}{b} \implies v(t) = -gt$

$t ≫ \frac{m}{b} \implies v(t) = -\frac{mg}{b} \qquad \text{Terminal velocity}$

More stuff (technique to use for homework):

$m \frac{dv}{dt} = -(mg + bv)$

$\frac{m\,dv}{mg + bv} = -dt$

$\frac{dv}{1 + \frac{b}{mg} v} = -g \,dt$

You should get the same solution.
"""

# ╔═╡ aae4445a-9a89-4bc9-90db-400546a305f9
md"""
### Notes

- Check the solution

- Check the dimensionality
"""

# ╔═╡ 43ae12ba-658c-4357-a902-f5d8cd056c89
md"# Feb 3: Second Order ODE's"

# ╔═╡ 79a669cd-46f0-4962-9f80-98d3765a3222
md"""
$\frac{d^2y}{dt^2} = f\left(t, y, \frac{dy}{dx}\right) \qquad y(t_0) = y_0 \qquad y'(t_0) = y_0'$
"""

# ╔═╡ c57190b8-ac0b-421b-99c0-f0bb365bcc25
md"""
### Reduction of Order

$f(t, y, y') = f(t,y')$

$\implies v ≡ y' \implies \text{1st order equation}$
"""

# ╔═╡ 9dda1a4e-bc4f-4cf2-855e-e40af12625fe
md"""
### Second Order Linear ODE's

$f(t,y,y') = g(t) - p(t) y' - q(t) y$

$\implies y'' + p(t) y' + q(t) y = g(t)$

if ``g(t) = 0`` then the equation is called Homogeneous
"""

# ╔═╡ f040d67f-5aef-4472-936e-62e73fe2df61
md"""
### Homogeneous case: Linear Superposition

$y'' + p(t) y' + q(t) y = 0$

Suppose ``y_1(t), y_2(t)`` are solutions.

Then

$y(t) = c_1 y_1(t) + c_2 y_2(t)$

is also a solution!

$c_1[y_1'' + p(y) y_1' + q(t) y_1] + c_2[y_2'' + p(t) y_2' + q(t) y_2] = 0 + 0 = 0$

$\begin{align*}
c_1 y_1 (0) + c_2 y_2 (0) &= y_0 \\
c_1 y_1'(0) + c_2 y_2'(0) &= y_0'
\end{align*}$

Breaks down if

$\frac{y_1}{y_1'} = \frac{y_2}{y_2'}$

Example: require

$\underbrace{y_1 y_2' - y_2 y_1'}_{\text{Wronskian}} ≠ 0 \qquad t = t_0$


"""

# ╔═╡ 7fcc94c6-dd1e-48b3-b577-9bee09902d6d
md"""
### What about Non-Homogeneous

$y'' + p(t) y' + q(t) y = g(t)$

- Find a particular solution ``y_p(t)``

- ``y = c_1 y_1(t) + c_2 y_2(t) + y_p(t)``
"""

# ╔═╡ 877c2833-ac9d-4535-8c22-f01fe3d8b238
md"""
### Constant Coefficients

$ay'' + by' + cy = 0$

Ansatz: ``y(t) = e^{\alpha t}``

$\implies a\alpha^2 e^{\alpha t} + b\alpha e^{\alpha t} + ce^{\alpha t} = 0$

$a\alpha^2 + b\alpha + c = 0 \qquad\text{Characteristic Equation}$

$\alpha = -\frac{b}{2a} + \frac{\sqrt{b^2 - 4ac}}{2a} ≡ \alpha_1$

$\alpha_2 = -\frac{b}{2a} - \frac{\sqrt{b^2 - 4ac}}{2a} ≡ \alpha_2$

Example:

$\begin{align*}
y_1(t) &= e^{\alpha_1 t} \\
y_2(t) &= e^{\alpha_2 t}
\end{align*}$

- ``b^2 - 4ac > 0 \implies \alpha_1, \alpha_2 ∈ ℝ``

- ``b^2 - 4ac < 0 \implies \alpha_1, \alpha_2 ∈ ℂ``

- ``b^2 - 4ac = 0 \implies \alpha_1 = \alpha_2 \quad\text{BAD!}``
"""

# ╔═╡ 5f78e3cf-eaf7-4682-8ae9-8d305b0b0110
md"""
### Example

$y'' - y = 0 \qquad y(0) = 2 \qquad y'(0) = -1$

i.e. ``a = 1,b = 0,c = -1 \implies \alpha = ±(4)^{1/2}/2 = ±1``

$y(t) = c_1 e^t + c_2 e^{-t}$

$y(0) = 2 \implies c_1 × c_2 = 2$

$y'(0) = -1 \implies c_1 - c_2 = -1$

$c_1 = \frac{1}{2}$

$c_2 = \frac{3}{2}$

$\implies y(t) = \frac{1}{2} e^t + \frac{3}{2} e^{-t}$

Wronskian:

$𝐰(y_1, y_2) = \begin{vmatrix} y_1 & y_2 \\ y_1' & y_2' \end{vmatrix} = \begin{vmatrix} e^t & e^{-t} \\ e^t & -e^{-t} \end{vmatrix} = -2 ≠ 0 \implies \text{Solutions are linearly independent}$
"""

# ╔═╡ febb184d-097d-49dc-a53e-8cdc45554537
md"""
### Example

$y'' + 4y' + 4y = 0$

$\alpha^2 + 4\alpha + 4 = (\alpha + 2)^2 = 0$

$\alpha = -2 \text{ only! Bummer!!}$

Try

$y(t) = v(t) e^{-2t}$

$y' = v' e^{-2t} - 2ve^{-2t}$

$\begin{align*}
y'' &= v'' e^{-2t} - 2v'e^{-2t} - 2v' e^{-2t} + 4ve^{-2t} \\
&= v'' e^{-2t} - 4v' e^{-2t} + 4ve^{-2t} \\
&= v'' e^{-2t} - 4v' e^{-2t} + 4ve^{-2t} + 4v' e^{-2t} - 8ve^{-2t} + 4ve^{-2t} \\
&= v'' - 4v' + 4v + 4v' - 8v + 4v \\
&= v'' = 0
\end{align*}$

$\implies v(t) = c_1 + c_2 t$

Final solution

$y(t) = c_1e^{-2t} + c_2 t e^{-2t}$
"""

# ╔═╡ b2239d1f-e312-43fa-93d7-88f7b785439c
md"""
### Example

$y'' + 4y' + 4y = 4$

Need particular solution: ``y_p(t)=1``

$y(t) = c_1 e^{-2t} + c_2te^{-2t} + 1$
"""

# ╔═╡ a4434de7-66e2-4eba-92f1-755f488c44b4
md"""
### Quiz

The quiz problem is to solve a first order differential equation.
"""

# ╔═╡ dd0075c3-5870-4b80-af86-f6f2acdc8761
md"# Feb 8"

# ╔═╡ a68b8c44-232d-4f88-a425-598fe94c398f
md"""
### Damped Harmonic Motion


$mẍ = -kx - bẋ$

$x''(t) + 2\beta x'(t) + {\omega_0}^2 x(t) = 0$

Ansatz ``x(t) = e^{\alpha t}``

$\alpha^2 + 2\beta \alpha + {\omega_0}^2 = 0$

$\alpha = -\beta ± \sqrt{\beta^2 - {\omega_0}^2}$

Three cases:

1. ``\beta^2 < {\omega_0}^2``

2. ``\beta^2 > {\omega_0}^2``

3. ``\beta = \omega_0``
"""

# ╔═╡ 459c11c6-d3ab-4b67-b4f8-9cb7b00cdd18
md"""
### Mathematica Initial Conditions

```
Solve[{(x /. t -> 0) == x0, (D[x,t] /. t -> 0) == v_0}, {c1, c2}]
```
"""

# ╔═╡ db576dd3-95b4-45fa-a65b-5743994d28ab
md"""
### Forced Damped Harmonic Motion

$x''(t) + 2\beta x'(t) + {\omega_0}^2 x(t) = \gamma \cos{\omega t} \qquad x(0) = x_0 \qquad x'(0) = v_0$

$x(t) = x_H(t) + x_P(t)$

where ``x_H(t)`` is the homogeneous solution and ``x_P(t)`` is one particular solution.
"""

# ╔═╡ aa77a0aa-956c-4f58-9fd2-68e598f57220
md"""
### Finding the particular solution

Looking at the equation, we might guess that the particular solution is in the form

$x_P(t) = a \cos{\omega t} + b \sin{\omega t}$

We can insist that this solves the differential equation in order to determine ``a`` and ``b``.

We find

$-a\omega^2 \cos{\omega t} - b \omega^2 \sin{\omega t} - 2\beta b \omega \sin{\omega t} + 2\beta b \omega \cos{\omega t} + a {\omega_0}^2 \cos{\omega t} + b {\omega_0}^2 \sin{\omega t} = \gamma \cos{\omega t}$

Solving the system of equations, we end up with

$a = \frac{\gamma ({\omega_0}^2 - \omega^2)}{4 \beta^2 \omega^2 + ({\omega_0}^2 - \omega^2)^2} \qquad\text{and}\qquad b = \frac{2 \beta \gamma \omega}{4 \beta^2 \omega^2 + ({\omega_0}^2 - \omega^2)^2}$

It makes sense to write

$A(\omega) = \sqrt{a^2 + b^2} = \frac{\gamma}{\sqrt{4\beta^2 \omega^2 + ({\omega_0}^2 - \omega^2)^2}}$

and

$\tan{Φ(\omega)} = \frac{b}{a} = \frac{2\beta\omega}{{\omega_0}^2 - \omega^2}$

i.e.,

$a = A \cos{\Phi} \qquad b = A \sin{\Phi}$

$x_P(t) = A \cos{(\omega t - \Phi)}$

$x(t) = x_H(t) + A \cos{(\omega t - \Phi)}$
"""

# ╔═╡ 0d39c393-3259-4a47-b172-faff2562832a
md"""
### Back to the quality factor

$A(\omega) = \frac{\gamma}{\left[4 \beta^2 \omega^2 + ({\omega_0}^2 - \omega^2)^2\right]^{1/2}}$

$A_{\text{max}} = A(\omega_0)$

$\text{Width by solving } A(\omega) = \frac{1}{\sqrt{2}} A_{\text{max}} \text{ for } \omega$

$4p^2 \omega^2 + ({\omega_0}^2 - \omega^2)^2 = 2 ⋅ 4\beta^2 {\omega_0}^2$

$({\omega_0}^2 - \omega^2) = 4\beta^2 {\omega_0}^2$

$\omega^2 - {\omega_0}^2 = ± 2\beta \omega_0$

$\omega = \sqrt{{\omega_0}^2 ± 2 \beta \omega_0}$

$\omega = \omega_0 \left(1 + \frac{2\beta}{\omega_0}\right)^{1/2}$

$\omega ≅ \omega_0 \left(1 ± \frac{\beta}{\omega_0}\right)$

$Δ\omega = \omega_0 \frac{2\beta}{\omega_0}$

$\frac{Δ\omega}{\omega_0} = \frac{1}{Q}$
"""

# ╔═╡ 68feb332-cf02-4ecc-8c77-3b79879fb37e
md"# Feb 10"

# ╔═╡ cf4b46d6-1280-46e2-8c0c-364e02c2f0f0
md"""
### Homework 5

Use p and q in Mathematica instead of c1 and c2.

Problem 5: Recursive relation
"""

# ╔═╡ 251a3471-1fcc-40b2-a0e3-5c0e5f448d5e
md"""
### Series Solutions for 2nd Order ODEs

$r(x) y''(x) + p(x) y'(x) + q(x) y(x) = 0$

and write the solution as a power series with unknown coefficients, that is

$y(x) = a_0 + a_1 x + a_2 x^2 + ⋯ = \sum_{n=0}^∞ a_n x^n$
"""

# ╔═╡ 1ae14111-64fd-476e-a824-1598c73d6291


# ╔═╡ a58cd60b-e4a9-4514-8f1e-2103d5905dff
md"""
### Example

$y'(x) = y(x) \qquad\text{i.e. } y(x) = ce^x$

$\sum_{n=0}^∞ na_n x^{n-1} = \sum_{n=0}^∞ a_n x^n = \sum_{n=1}^∞ na_n x^{n-1} = \sum_{n=0}^∞ (n+1) a_{n+1} x^n = \sum_{n=0}^∞ a_n x^n$

$\implies \sum_{n=0}^∞ \left[(n+1) a_{n+1} - a_n\right] x^n = 0$

$\implies a_{n+1} = \frac{1}{n+1} a_n \qquad \text{Recursion relation}$

$a_0 = c \quad a_1 = \frac{1}{1}c \quad a_2 = \frac{1}{2} a_1 = \frac{1}{2 ⋅ 1} c \quad a_3 = \frac{1}{3} a_2 = \frac{1}{3 ⋅ 2 ⋅ 1} c$

$\implies y(x) = c \sum_{n=0}^∞ \frac{1}{n!} x^n = ce^x$
"""

# ╔═╡ 707dbaec-72f0-4056-aae5-0908d422df7d
md"""
### Quantum Mechanical Simple Harmonic Oscillator

**Schrödinger Equation.**

$-\frac{\hbar^2}{2m} \frac{d^2 \psi}{dx^2} + V(x) \psi(x) = E\psi(x)$

Eigenvalue problem.

$\left[-\frac{\hbar^2}{2m} \frac{d^2}{dx^2} + V(x)\right] \psi(x) = E\psi(x)$

Simple harmonic oscillator

$V(x) = \frac{1}{2} kx^2 = \frac{1}{2} m{\omega_0}^2 x^2$

Require

$\psi(x) → 0 \text{ as } x → ±∞$

$-\frac{\hbar^2}{2m} \frac{d^2 \psi}{dx^2} + \frac{1}{2} m{\omega_0}^2 x^2 \psi(x) = E\psi(x)$

Length scale:

$\sqrt{\frac{\hbar}{m\omega_0}}$

$y = \frac{x}{\sqrt{\frac{\hbar}{m\omega_0}}}$

$\varepsilon = \frac{2E}{\hbar \omega_0}$

$\psi''(y) + (\varepsilon - y^2) \psi(y) = 0 \tag{3.13}$

$y → ±∞ \qquad \psi''(y) = y^2 \psi(y)$

$\implies \psi(y) = e^{±y^2/2}$

This is asymptotic behavior.

Write.

$\psi(y) = e^{-y^2/2} h(y)$

$\psi'(y) = y e^{-y^2/2} h(y) + e^{-y^2 / 2} h'(y)$

$\psi''(y) = -e^{-y^2/2} h(y) + y^2 e^{-y^2 / 2} h(y) - ye^{-y^2 / 2} h'(y) - ye^{-y^2/2} h'(y) + e^{-y^2/2} h''(y)$

Plug into (3.13).

$-h(y) + y^2 h(y) - 2yh'(y) + h''(y) + \varepsilon h(y) - y^2 h(y) = 0$

$h''(y) - 2yh'(y) + \lambda h(y) = 0 \qquad \text{Hermite Equation}$

$\lambda = \varepsilon - 1$

$h(y) = \sum_{n=0}^∞ a_n y^n$

$h'(y) = \sum_{n=0}^∞ na_n y^{n-1}$

$-2yh'(y) = \sum_{n=0}^∞ -2na_n y^n$

$h''(y) = \sum_{n=02}^∞ n(n-1)a_n y^{n-2} = \sum_{n=0}^∞ (n+2)(n+1) a_{n+2} y^n$

$\sum_{n=0}^∞ \left[(n+2)(n+1) a_{n+2} + (\lambda - 2n)a_n\right] y^n = 0$

$\implies a_{n+2} = \frac{\lambda - 2n}{(n+2)(n+1)} a_n$

i.e. Two linearly independent series

**But** for ``y ≫ 1 \implies n ≫ 1`` dominates

$a_{n+2} → \frac{2n}{n^2} a_n = \frac{2}{n} a_n$

For ``n`` even ``m = \frac{n}{2} = 1,2,3,…``

$a_{m+1} = \frac{1}{m} a_m$

$→ \sum_{m} \frac{1}{m!} (y^2)^m = e^{+y^2}$

$\psi(y) = e^{-y^2/2} h(y) → e^{+y^2/2}$

NO GOOD! MUST FORCE SERIES TO TERMINATE!

``\lambda - 2n = 0`` for some ``n``

$2n = \lambda = \varepsilon - 1 = \frac{2E}{\hbar \omega_0} - 1$


$\implies E = \left(n + \frac{1}{2}\right) \hbar \omega_0 = E_n$
"""

# ╔═╡ 8c947ecc-5a8a-465d-a4b7-0476ee596c17
md"# Feb 17"

# ╔═╡ 048c7142-dd90-4282-b1c9-58cc24285175
md"""
### Coupled Ordering Diff Eqs
"""

# ╔═╡ 1bf2648b-f28c-4ba0-8f3c-6e99ecb8b171
md"""
### General Form (2nd Order)

$y_1''(x) = F_1(x,y_1,y_1',y_2,y_2',…)$

$y_2''(x) = F_2(x,y_1,y_1',y_2,y_2',…)$
"""

# ╔═╡ e92dabd9-61c8-4808-adf1-03c64455934e
md"""
### Coupled Harmonic Oscillators

$\text{Force on } m_1 = -k_1 x_1 + k_2 (x_2 - x_1)$

$\text{Force on } m_2 = -k_3 x_2 - k_2 (x_2 - x_1)$

In other notation,

$m_1 ẍ = F_1 = -k_1 x_1(t) + k_2 (x_2(t) - x_1(t))$

$m_2 ẍ = F_2 = -k_3 x_2(t) - k_2 (x_2(t) - x_1(t))$
"""

# ╔═╡ 302079f5-3e8a-4d9d-a65d-c0dcdc6846d1
md"""
### Homework

No third spring, i.e., on ``m_2`` we don't include the force ``-k_3 x_2``.
"""

# ╔═╡ 2882854b-f2b4-4d49-90e5-8edaa8ae29ca
md"""
### Before Lab

Do HW. (problem 5)
"""

# ╔═╡ b97921c6-aa62-4371-95c4-1b72f23a9de9
md"""
### Specialize

$m_1 = m_2 = m$

$k_1 = k_2 = k_3 = k$

Define ``{\omega_0}^2 = k/m``

$x_1''(t) = -2{\omega_0}^2 x_1(t) + {\omega_0}^2 x_2(t) = 0$
$x_2''(t) = -2{\omega_0}^2 x_2(t) + {\omega_0}^2 x_1(t) = 0$
"""

# ╔═╡ 5e42f90e-e0aa-497e-901b-1d78a8a92821
md"""
### The ansatz

$x_1(t) = a_1 e^{i \omega_0 t}$

$x_2(t) = a_2 e^{i \omega_0 t}$

$-{\omega}^2 a_1 = -2{\omega_0}^2 a_1 + {\omega_0}^2 a_2$

$-{\omega}^2 a_2 = -2{\omega_0}^2 a_2 + {\omega_0}^2 a_1$

System of equations

$(2{\omega_0}^2) a_1 - {\omega_0}^2 a_2 = 0$

$-{\omega_0}^2 a_1 - (2{\omega_0}^2 - \omega^2) a_2 = 0$

$\begin{align*}
(2{\omega_0}^2 - \omega^2)^2 &= {\omega_0}^4 \\
2{\omega_0}^2 - \omega^2 &= ±{\omega_0}^2 \\
\omega^2 = {\omega_0}^2 &= {\omega_1}^2 \\
\omega^2 = 3{\omega_0}^2 &= {\omega_2}^2
\end{align*}$
"""

# ╔═╡ 42d4bdd7-5a9a-4002-877a-1e715a7c4329
md"""
### Note

1. ``\omega^2 = {\omega_1}^2 = {\omega_0}^2 \implies a_1 - a_2 = 0 \implies a_2 / a_1 = 1``

2. ``\omega^2 = {\omega_2}^2 = 3{\omega_2}^2 \implies -a_1 - a_2 = 0 \implies a_2 / a_1 = -1``
"""

# ╔═╡ 50d002a9-0d7a-4e17-9324-f4f7f23f2745
md"""
### Solutions

$x_1(t) = ae^{i\omega_1 t} + be^{-i\omega_1 t} + ce^{i\omega_0 t} + de^{-i\omega_0 t}$

$x_2(t) = ae^{i\omega_1 t} + be^{-i\omega_1 t} - ce^{i\omega_0 t} - de^{-i\omega_0 t}$

$\omega / \omega_1 = \omega_0$

$\omega_2 = \sqrt{3} \omega_0$

Plus

$x_1(0) = {x_1}_0 \qquad ẍ_1(0) = {v_1}_0$

$x_2(0) = {x_2}_0 \qquad ẍ_2(0) = {v_2}_0$
"""

# ╔═╡ 6ffc0165-bd05-4c67-8856-3024a8f9c2fb
md"""
### One Frequency?


$x_+(t) = x_1(t) + x_2(t)$

$x_-(t) = x_1(t) - x_2(t)$
"""

# ╔═╡ 64780394-5a1f-41ee-9e54-da766b627a09
md"""
### Example (Potential quiz problem)

Suppose mass hanging from spring

Suppose `y` is distance of spring before hanging the mass.

$mÿ = -ky - mg$
"""

# ╔═╡ 2555c4e0-0d70-4cd1-83cd-6e93817e6f42
md"""
### Vector as Spatial Variables

$\vec{A} = \hat{i} A_x + \hat{j} A_y + \hat{k} A_z$

**Example:**

$\hat{r} = \hat{i} x + \hat{j} y + \hat{k} z$

$\implies \vec{v} = \frac{d\vec{r}}{dt} = \hat{i} \frac{dx}{dt} + \hat{j} \frac{dy}{dt} + \hat{k} \frac{dz}{dt}$
"""

# ╔═╡ 650e6cf5-ecc3-4d4b-95c6-76f2bbc220b4
md"""
### Magnitude of a vector

$|\vec{A}| = \sqrt{{A_x}^2 + {A_y}^2 + {A_z}^2}$
"""

# ╔═╡ 48e6c102-a375-4bee-a47c-e3f14f8c50ab
md"""
### Vector Fields

$\vec{A} = \vec{A} (\vec{r}) = \vec{A} (\vec{r}, t) = \hat{i} A_x(x, y, z, t) + \hat{j} A_y(x, y, z, t) + \hat{k} A_z(x, y, z, t)$
"""

# ╔═╡ 0b29247a-a33c-4b0e-8b9a-37d77e195bf9
md"""
### Axis Rotations

$\vec{A} = \hat{i} A_x + \hat{j} A_y + \hat{k} A_z = \hat{i}' A_{x'} + \hat{j}' A_{y'} + \hat{k}' A_{z'}$
"""

# ╔═╡ 706b4478-c1c7-4739-aac1-01d99f678687
md"""
### Inner Product ("Dot", "Scalar") Product

$\vec{A} ⋅ \vec{B} = |\vec{A}| |\vec{B}| \cos{\psi} = |\vec{A}| × ``\text{Projection of } \vec{B} \text{ on } \vec{A}"$

$\vec{A} \perp \vec{B} \implies \vec{A} ⋅ \vec{B} = 0$
"""

# ╔═╡ 2d19c0ce-9c5e-4f1e-985a-1ef7680338b4
md"""
### Magnitude of a vector

$|\vec{A}|^2 = \vec{A} ⋅ \vec{A} = \vec{A}^2 = A^2$
"""

# ╔═╡ b97e0a57-dcce-428b-8f28-ad695de4cfc2
md"""
### Unit vectors ``\hat{i}, \hat{j}, \hat{k}``

$\hat{i} ⋅ \hat{i} = 1 = \hat{j} ⋅ \hat{j} = \hat{k} ⋅ \hat{k}$

$\hat{i} ⋅ \hat{j} = 0 = \hat{j} ⋅ \hat{k} = \hat{i} ⋅ \hat{k}$
"""

# ╔═╡ 031ff5f6-add6-4cd1-8296-f1140c3a4830
md"""
### Dot Product w/ components

$\vec{A} = \hat{i} A_x + \hat{j} A_y + \hat{k} A_z$

$\vec{B} = \hat{j} B_x + \hat{j} B_y + \hat{k} B_z$

$\vec{A} ⋅ \vec{B} = A_x B_x \hat{i} ⋅ \hat{i} + A_x B_y \hat{i} ⋅ \hat{j} + ⋯ = A_x B_x + A_y B_y + A_z B_z$
"""

# ╔═╡ fcf58292-3df6-4c58-a2d7-9004eda2ec24
md"""
### Cross Product ``\vec{A} × \vec{B} = \vec{C} = -\vec{B} × \vec{A}``

$|\vec{A} × \vec{B}| = |\vec{A}||\vec{B}| \sin{\psi}$

**Right-handed coordinate system.**

$\begin{align*}
\hat{i} × \hat{j} &= \hat{k} \\
\hat{k} × \hat{i} &= \hat{k} \\
\hat{j} × \hat{k} &= \hat{i}
\end{align*}$

**Definition.**

$\vec{A} × \vec{B} = (A_y B_z - A_z B_y) \hat{i} + (A_z B_x - A_x B_z) \hat{j} + (A_x B_y - A_y B_x) \hat{k}$
"""

# ╔═╡ 7d93d4d0-4759-4a3a-b11a-a2140c1bf262
md"""
### Calculations with components using ``\delta_{ij}`` and ``\varepsilon_{ijk}``

$x, y, z ⟷ 1, 2, 3$

$\hat{i}, \hat{j}, \hat{k} ⟷ \hat{e}_i \quad i = 1,2,3$

$\delta_{ij} = \hat{e}_i ⋅ \hat{e}_j = \begin{cases}
0 \text{ if } i ≠ j \\
1 \text{ if } i = j
\end{cases}$
"""

# ╔═╡ bbd53351-45db-49ed-8d42-7460a5c889c4
md"""
### Dot Products w/ components

$\vec{A} ⋅ \vec{B} = \sum_{i = 1}^3 \sum_{j = 1}^3 A_i \hat{e}_i ⋅ B_j \hat{e}_j = A_i B_j \delta_{ij} = A_i B_i$
"""

# ╔═╡ 78bb96fc-bf69-4854-b257-0a3e86dd6f0b
md"""
### Cross Product ``\vec{A} × \vec{B} = \vec{C}``

$\vec{e}_i × \vec{e}_j = \sum_{k=1}^3 \varepsilon_{ijk} \hat{e}_k$

$\varepsilon_{ijk} = \begin{cases}
+1 \text{ if } i,j,k \text{ are in ``correct order''} \\
-1 \text{ if any two are flipped } \\
0 \text{ if any two same}
\end{cases}$

$\vec{A} × \vec{B} = \varepsilon_{ijk} A_i B_j \vec{e}_k$

$(\vec{A} × \vec{B})_k = \varepsilon_{ijk} A_i B_j = \varepsilon_{kij} A_i B_j$

$(\vec{A} × \vec{B})_i = \varepsilon_{ijk} A_j B_k$
"""

# ╔═╡ 29240e0b-129f-4b53-9ba7-3b2c33a58fa0
md"""
### Theorem

$\varepsilon_{ijk} \varepsilon_{imn} = \delta_{jm} \delta_{kn} - \delta_{jn} \delta_{km}$
"""

# ╔═╡ b15f62cd-cc77-4e45-a3ac-62af0e596a4f
md"""
### Example: Back-cab rule

$\vec{A} × (\vec{B} × \vec{C}) = \vec{B} (\vec{A} ⋅ \vec{C}) - \vec{C} (\vec{A} ⋅ \vec{B})$

#### Proof

Find the ``i``th component of ``\vec{A} × (\vec{B} × \vec{C})``.

$\begin{align*}
[\vec{A} × (\vec{B} × \vec{C})]_i &= \varepsilon_{ijk} A_j (\vec{B} × \vec{C})_k \\
&= \varepsilon_{ijk} A_j \varepsilon_{kmn} B_m C_n \\
&= \varepsilon_{kij} \varepsilon_{kmn} A_j B_m C_n \\
&= (\delta_{im} \delta_{jn} - \delta_{in} \delta_{jm}) A_j B_m C_n \\
&= A_j B_i C_j - A_j B_j C_i \\
&= B_i (A_j C_j) - C_i (A_j B_j) \\
&= B_i (\vec{A} ⋅ \vec{C}) - C_i (\vec{A} ⋅ \vec{B}) \\
&= \left[\vec{B} (\vec{A} ⋅ \vec{C}) - \vec{C} (\vec{A} ⋅ \vec{B})\right]_i
\end{align*}$

This applies to each component of the cross product. ∎
"""

# ╔═╡ d13190d2-36b7-4bd5-945a-66c683e726a9
md"""
### Polar Coordinates

Plane: ``(r, \phi)`` → cylindrical: ``(r, \phi, z)``

3D: ``(r, \theta, \phi)``
"""

# ╔═╡ b7ae0fb8-1854-4039-adbc-8306e8dbacc6
md"""
### Important note

Unit vectors depend on the position vector ``\vec{r}``!!!
"""

# ╔═╡ 57ac2b6a-0185-4d6f-ae5b-f02e805d0bd2
md"""
### Example: Plane Polar

$x = r \cos{\phi} \qquad y = r \sin{\phi}$

$\begin{align*}
\vec{r} &= \hat{i} x + \hat{j} y \implies d\vec{r} = \hat{i} \,dx + \hat{j} \,dy \\
&= \hat{i} \left[dr \,\cos{\phi} - r \,d\theta \sin{\phi}\right] + \hat{j} \left[dr \,\sin{\phi} + r \,d\phi \cos{\phi}\right] \\
&= dr \left[\hat{i} \cos{\phi} + \hat{j} \sin{\phi}\right] + r \,d\phi \left[-\hat{i} \sin{\phi} + \hat{j} \cos{\phi}\right] \\
&\implies \hat{r} = \hat{i} \cos{\phi} + \hat{j} \sin{\phi} \\
&\implies \hat{\phi} = -\hat{i} \sin{\phi} + \hat{j} \cos{\phi}
\end{align*}$
"""

# ╔═╡ 1ff69e02-759d-4184-992d-3f81751830f8
md"# Feb 24: Vector Differential Operators"

# ╔═╡ e292a411-eb5f-4762-9a9a-2c97b7978f71
md"""
### Recall "Fields"

$f(\vec{r}) = f(x, y, z) = f(r, \theta, \phi) = ⋯$

$\vec{A}(\vec{r}) = \vec{A}(x, y, z) = ⋯$

How to describe the **change** with position
"""

# ╔═╡ c5639bc2-00fb-43a4-8855-e4425171f26e
md"""
### Directional Derivative

Direction ``s`` where ``\hat{s} = \hat{i} s_x + \hat{j} s_y + \hat{k} s_z``

$df = \frac{∂f}{∂x} dx + \frac{∂f}{∂y} dy + \frac{∂f}{∂z} dz$

$\frac{df}{ds} = \frac{∂f}{∂x} \frac{dx}{ds} + \frac{∂f}{∂y} \frac{dy}{ds} + \frac{∂f}{∂z} \frac{dz}{ds}$

$d\vec{r} = \hat{s} \,ds \implies dx = s_x \,ds \quad\text{ etc}…$

i.e.

$\frac{dx}{ds} = s_x \qquad \frac{dy}{ds} = s_y \qquad \frac{dz}{ds} = s_z$

$\frac{df}{ds} = \underbrace{\left[\hat{i} \frac{∂f}{∂x} + \hat{j} \frac{∂f}{∂y} + \hat{k} \frac{∂f}{∂z}\right]}_{\vec{∇}f} ⋅ \hat{s} = |\vec{∇} f| \cos{\psi}$
"""

# ╔═╡ 96d6164d-1a56-48ac-8ea1-9b80faadbeca
md"""
### Gradient Operator

$\vec{∇} = \hat{i} \frac{∂}{∂x} + \hat{j} \frac{∂}{∂y} + \hat{k} \frac{∂}{∂z}$

- Unit vectors on left!

- You can do ``\vec{\nabla} \vec{A}`` but ``\hat{i} \hat{i}`` ``\hat{j} \hat{j}``
"""

# ╔═╡ 7f28ac40-96f5-4dad-94fb-240d79240ed3
md"""
### Conversion to Plane Polar Coords I: "Hard way"

$f = f(r, \phi)$

$\vec{∇} f = \hat{i} \frac{∂f}{∂x} + \hat{j} \frac{∂f}{∂y}$

$\frac{∂f}{∂x} = \frac{∂f}{∂r} + \frac{∂f}{∂\phi} \frac{∂\phi}{∂x}$

$r^2 = x^2 + y^2$

$\tan{\phi} = y/x$

$2r \frac{∂r}{∂x} = 2x$

$\frac{∂r}{∂x} = \frac{x}{r} \cos{\phi}$

$\frac{∂r}{∂y} = \sin{\phi}$

$\frac{1}{\cos^2{\phi}} = -\frac{y}{x^2} = -\frac{r \sin{\phi}}{r^2 \cos^2{\phi}} \implies \frac{∂\phi}{∂x} = -\frac{1}{r} \sin{\phi}$

$\frac{∂\phi}{∂y} = \frac{1}{r} \cos{\phi}$

$\frac{∂f}{∂x} = \cos{\phi} \frac{∂f}{∂r} - \frac{1}{r} \sin{\phi} \frac{∂f}{∂\phi}$

$\frac{∂f}{∂y} = \sin{\phi} \frac{∂f}{∂r} + \frac{1}{r} \cos{\phi} \frac{∂f}{∂\phi}$

$\begin{align*}
\vec{∇} f &= \hat{i} \left[\cos{\phi} \frac{∂f}{∂r} - \frac{1}{r} \sin{\phi} \frac{∂f}{∂\phi}\right] + \hat{j} \left[\sin{\phi} \frac{∂f}{∂r} + \frac{1}{r} \cos{\phi} \frac{∂f}{∂\phi}\right] \\
&= (\hat{i} \cos{\phi} + \hat{j} \sin{\phi}) \frac{∂f}{∂r} + (-\hat{i} \sin{\phi} + \hat{j} \cos{\phi}) \frac{1}{r} \frac{∂f}{∂\phi} \\
&= \hat{r} \frac{∂f}{∂r} + \hat{\phi} \frac{1}{r} \frac{∂f}{∂\phi} \qquad \text{Done!}
\end{align*}$
"""

# ╔═╡ 591c226c-9720-41cd-9bf0-a076682c9a0f
md"""
### Conversion to Plane Polar Coords II: "Easy way"

$d\vec{r} = \hat{r} \,dr + \hat{\phi} r \,d\phi$

where ``\displaystyle dr = \frac{∂f}{∂r}`` and ``\displaystyle d\phi = \frac{1}{r} \frac{∂f}{∂\phi}``

$\vec{∇} f = \frac{∂f}{∂\vec{r}}$
"""

# ╔═╡ 86d9e4b1-5ed9-4384-baab-9b8254312f23
md"""
### Divergence (of a vector field)

$\vec{A} = \vec{A} (\vec{r}) = A_x \hat{i} + A_y \hat{j} + A_z \hat{k}$

$\vec{∇} ⋅ \vec{A} = \frac{∂A_x}{∂x} + \frac{∂A_y}{∂y} + \frac{∂A_z}{∂z}$
"""

# ╔═╡ 3925d3a9-e91c-420d-8af1-f242bb683bee
md"""
### Curl

$\vec{∇} × \vec{A} = \hat{i} \left[\frac{∂A_z}{∂y} - \frac{∂A_y}{∂z}\right] + \hat{j} \left[\frac{∂A_x}{∂z} - \frac{∂A_z}{∂x}\right] + \hat{k} \left[\frac{∂A_y}{∂x} - \frac{∂A_x}{∂y}\right]$
"""

# ╔═╡ 8842da39-25ff-418c-a5c0-4ad1cde07382
md"""
### Laplacian

$\vec{∇} = \vec{∇} ⋅ \vec{∇}$

$\vec{∇}^2 f = \frac{∂^2 f}{∂x^2} + \frac{∂^2 f}{∂y^2} + \frac{∂^2 f}{∂z^2}$

Cylindrical: Bessel's Equation for ``R(r)``

Spherical: Spherical Bessel Equaton for ``R(r)``, Legendre Equation for ``Θ(\theta)``
"""

# ╔═╡ fbee0242-3830-4002-92ae-e4563937708e
md"""
### Poisson's Equation

$\vec{A}(\vec{r}) = \vec{∇} f(\vec{r})$

$\implies \vec{∇} ⋅ \vec{A} = \vec{∇}^2 f(\vec{r}) = g(\vec{r})$

e.g.,

$\vec{E} = -\vec{∇} \phi$
"""

# ╔═╡ 74dfe67c-c23f-47e8-80d2-77329ffeca6b
md"""
### Laplace's Equation

$g(\vec{r}) = 0 \implies \vec{∇}^2 f = 0$
"""

# ╔═╡ 73ba7090-2f93-4f21-b359-fe554ab4ca2d
md"# Mar 8: Surface Theorems"

# ╔═╡ 868e9b38-eb25-49dd-b312-0431775530c8
md"""
### Physics!

- Continuity Equation

- Maxwell's Equations
"""

# ╔═╡ 7e08ba69-171c-44c7-b56e-bcb1f45b384c
md"""
### Gauss' Theorem (Divergence Theorem)

$d\vec{S} = \hat{n} \,dS$

$\vec{A} = \vec{A}(\vec{r})$

$∮_S \vec{A} ⋅ d\vec{S}$

$∮_S \vec{A} ⋅ d\vec{S} = ∫_V \vec{∇} ⋅ \vec{A} \,dV$
"""

# ╔═╡ 352f9c42-8f81-44aa-a981-1e7e4aa332e8
md"""
### Stokes' Theorem

$∮_C \vec{A} ⋅ d\vec{ℓ} = ∫_S (\vec{∇} × \vec{A}) ⋅ d\vec{S}$
"""

# ╔═╡ efbb3fbd-52b9-45f5-a409-4270792a3a5b
md"""
### "Proof" of Gauss' Theorem

Consider an infinitesimal cube,

$\begin{align*}
\sum \vec{A} ⋅ d\vec{S} &= A_y(x,y+dy,z) \,dx \,dz \\
&\quad - A_y(x,y,z) \,dx \,dz \\
&\quad + A_z(x,y,z+dz) \,dx \,dy \\
&\quad - ⋯ \\
&\quad + ⋯ \\
&= \left[\frac{A_y(x,y+dy,z) - A_y(x,y,z)}{dy} + ⋯ \right] dx \,dy \,dz \\
&= \left[\frac{∂A_y}{∂y} + \frac{∂A_z}{∂z} + \frac{∂A_x}{∂x}\right] dx \,dy \,dz \\
&= \vec{∇} ⋅ \vec{A} \,dV
\end{align*}$

If we consider a region in space, all of the cubes cancel each other out leaving only the surface...

Thus we've proven

$∮_S \vec{A} ⋅ d\vec{S} = ∫_V \vec{∇} ⋅ \vec{A} \,dV$
"""

# ╔═╡ 5a9c21ea-be0b-4a13-947d-56b3170c7d4f
md"""
### Regarding Stokes' Theorem

Surface choice doesn't matter.

Suppose you have another surface along the same curve.

Apply Gauss' Theorem and observe the divergence is zero for any curl.
"""

# ╔═╡ cd929bfa-32b9-416b-bc20-a75ef8f24199
md"""
### Gauss' Theorem: Simple Example

$\vec{A} = x \hat{i} + y \hat{j} + z \hat{k} = \vec{r}$

``V`` = Sphere centered @ origin with radius ``R``

$∮_S \vec{A} ⋅ d\vec{S} = ∮_S r \,dS = R ∮ ds = 4\pi R^3$

$∫_V \vec{∇} ⋅ \vec{A} \,dV = 3 ∫_V dV = 3 \frac{4}{3} \pi R^3 = 4\pi R^3 ✓$
"""

# ╔═╡ 943b7f3a-e763-4f2e-8aea-34ded6895b94
md"""
### Continuity Equation

Density ``\rho(\vec{r}, t) \implies Q(t) = ∫_V \rho(\vec{r}, t) \,dV``

Current Density ``\vec{j}(\vec{r}, t)``

Amount "flowing" through ``dS``

$\begin{align*}
&= |\vec{j}| |d\vec{S}| \cos{\theta} \\
&= \vec{j} ⋅ d\vec{S}
\end{align*}$

$\frac{dQ}{dt} = -∮_S \vec{j} ⋅ d\vec{S}$

$∫_V \frac{∂\rho}{∂t} \,dV = -∫_V \vec{∇} ⋅ \vec{j} \,dV$

$\frac{∂\rho}{∂t} + \vec{∇} ⋅ \vec{j} = 0$

Applications:

- Fluid dynamics

- Electrodynamics

- Quantum Mechanics

- General relativity
"""

# ╔═╡ f0972e43-21d5-4df4-8152-d8243ece923c
md"""
valentine's day 1982
"""

# ╔═╡ 378139bd-4b8e-470e-9e29-2e6dd7fa3832
md"""
### Maxwell's Equations

$\begin{align*}
∮_S \vec{E} ⋅ d\vec{S} &= 4\pi Q_{\text{enclosed}} = 4\pi ∫_V \rho \,dV \quad \text{Gauss' Law} \tag{4.31a} \\
∮ \vec{B} ⋅ d\vec{S} &= 0 \quad \text{Gauss' Law for Magnetism} \tag{4.31b} \\
∮_C \vec{E} ⋅ d\vec{ℓ} &= -\frac{1}{c} \frac{d\Phi_B}{dt} = -\frac{1}{c} \frac{d}{dt} ∫_S \vec{B} ⋅ d\vec{S} \quad \text{Faraday's Law} \tag{4.31c} \\
∮_C \vec{B} ⋅ d\vec{ℓ} &= \frac{4\pi}{c} I_{\text{enclosed}} + \frac{1}{c} \frac{d\Phi_E}{dt} \\
&= \frac{4\pi}{c} ∫_S \vec{j} ⋅ d\vec{S} + \frac{1}{c} \frac{d}{dt} ∫ \vec{E} ⋅ d\vec{S} \quad\text{Ampere's Law} \tag{4.31d}
\end{align*}$

These equations become

$\begin{align*}
\vec{∇} ⋅ \vec{E} &= 4\pi \rho \quad\text{Gauss' Law} \tag{4.32a} \\
\vec{∇} ⋅ \vec{B} &= 0 \quad \text{Gauss' Law for Magnetism} \tag{4.32b} \\
\vec{∇} × \vec{E} &= -\frac{1}{c} \frac{∂\vec{B}}{∂t} \quad \text{Faraday's Law} \tag{4.32c} \\
\vec{∇} × \vec{B} &= \frac{4\pi}{c} \vec{j} + \frac{1}{c} \frac{∂\vec{E}}{∂t} \quad \text{Ampere's Law} \tag{4.32d}
\end{align*}$
"""

# ╔═╡ 25c292a8-cbfb-4440-b2d9-cee39e50592c
md"""
### Maxwell's Equations imply that ``Q`` is conserved!

$\vec{∇} ⋅ (\vec{∇} × \vec{B}) = 0$

$0 = \frac{4\pi}{c} \vec{∇} ⋅ \vec{j} + \frac{1}{c} \frac{∂}{∂t} \vec{∇} ⋅ \vec{E} = 4\pi \rho$

$\implies \frac{∂\rho}{∂t} + \vec{∇} ⋅ \vec{j} = 0$
"""

# ╔═╡ 4e552f3a-a312-485a-b90e-7451b8c7b8ea
md"""
### Maxwell's Equations imply that EM waves exist

"Free space":

$\begin{align*}
\vec{∇} ⋅ \vec{E} &= 0 = \vec{∇} ⋅ \vec{B} \\
\vec{∇} × \vec{E} &= -\frac{1}{c} \frac{∂\vec{B}}{∂t} \\
\vec{∇} × \vec{B} &= \frac{1}{c} \frac{∂\vec{E}}{∂t}
\end{align*}$

Theorem:

$\vec{∇} × (\vec{∇} × \vec{A}) = \vec{∇} (\vec{∇} ⋅ \vec{A}) - \vec{∇}^2 \vec{A}$

$\vec{∇} × (\vec{∇} × \vec{E}) = -\frac{1}{c} \frac{∂}{∂t} \vec{∇} × \vec{B}$

$\vec{∇} (\vec{∇} ⋅ \vec{E}) - \vec{∇}^2 \vec{E} = -\frac{1}{c} \frac{∂}{∂t} \frac{1}{c} \frac{∂\vec{E}}{∂t}$

$\vec{∇}^2 \vec{E} - \frac{1}{c^2} \frac{∂^2 \vec{E}}{∂t^2} = 0$

Wave Equation

$\vec{E} = \hat{i} f(z,t)$

$\frac{∂^2f}{∂z^2} - \frac{1}{c^2} \frac{∂^2 f}{∂t^2} = 0$
"""

# ╔═╡ 762a96fc-9711-4e1d-8868-0f2def08d296
md"# Mar 10: Partial Differential Equations"

# ╔═╡ e086eecb-7fa6-4faf-b2ee-99b76d3ae62b
md"""
### Note

only linear, homogeneous PDEs.
"""

# ╔═╡ f57cbec8-dd09-42f3-acf6-90dda9746305
md"""
### Example

$𝐄(𝐫, t) = \hat{i} f(z,t)$

$\frac{∂^2 f}{∂z} - \frac{1}{c^2} \frac{∂^2 f}{∂t^2} = 0$
"""

# ╔═╡ 3da7a1d6-7d8e-41b4-93b8-bd20482bc8cc
md"""
### PDE's vs ODE's

- Boundary conditions are more complex!

- General solutions are much more general!
"""

# ╔═╡ 76f8c5f4-1d59-45cd-80eb-f1ea67d382d7
md"""
### Example

Find ``f(x,y)``.

$\frac{∂f}{∂x} = x \frac{∂f}{∂y}$

Easy!

$f(x,y) = x^2 + 2y$

$\begin{align*}
\frac{∂f}{∂x} &= 2x \\
\frac{∂f}{∂y} &= 2
\end{align*}$

Wait...
but it works for this too:

$f(x,y) = x^4 + 4x^2 y + 4y^2$

$\begin{align*}
\frac{∂f}{∂x} &= 4x^3 + 8xy \\
\frac{∂f}{∂y} &= 4x^2 + 8y
\end{align*}$

...and this:

$f(x,y) = \sin{(x^2 + 2y)} = \sin(x^2) \cos(2y) + \sin(2y) \cos(x^2)$

$\begin{align*}
\frac{∂f}{∂x} &= 2x \cos(x^2) \cos(2y) - 2x \sin(2y) \sin(x^2) \\
\frac{∂f}{∂y} &= -2 \sin(x^2) \sin(2y) + 2 \cos(2y) \cos(x^2)
\end{align*}$

Define ``z ≡ x^2 + 2y``.

Try ``f(x,y) = g(z)``.

$\begin{align*}
\frac{∂f}{∂x} &= g'(z) \frac{∂z}{∂x} = 2x g'(z) \\
x \frac{∂f}{∂y} &= x g'(z) \frac{∂z}{∂y} = 2x g'(z)
\end{align*}$

EXTREMELY general solution.
To find a specific solution, we need boundary conditions.
For example,

$f(x, 0) = \sin(x^2)$
"""

# ╔═╡ 6b5b5f60-6504-4721-a9f0-0410be8468c3
md"""
### Example

$\frac{∂^2 f}{∂x^2} = \frac{∂^2 f}{∂y^2} \quad \text{ for } \quad f(x,y)$

$f(0,y) = f(a,y) = f(x,0) = f(x,a) = 0$

General solution guess:

$f(x,y) = g_1(x + y) + g_2(x - y)$

But... how to match boundary conditions?

$f(x,y) = X(x) Y(y)$

$\frac{d^2 X}{dx^2} Y = X \frac{d^2 Y}{dy^2}$

$\frac{1}{X(x)} \frac{d^2 X}{dx^2} = \frac{1}{Y(y)} \frac{d^2 Y}{dy^2} = \text{constant}$

For *this* problem, pick

$\text{constant} = -k^2 < 0$

$\begin{align*}
X''(x) &= -k^2 X(x) \\
Y''(y) &= -k^2 Y(y)
\end{align*}$

$\begin{align*}
X(x) &= A_x \cos{(kx)} + B_x \sin{(kx)} \\
Y(y) &= A_y \cos{(ky)} + B_y \sin{(ky)}
\end{align*}$

$\begin{align*}
f(0,y) &= X(0) Y(0) = 0 \implies X(0) = 0 \implies A_x = 0 \\
f(x,0) &= 0 \implies A_y = 0 \\
f(a,y) &= X(a) Y(y) = 0 \\
X(a) &= 0 = B_x \sin{(ka)} \implies ka = n\pi \quad n = 1,2,3,… \\
&\implies \text{Satisfies } f(x,a) = 0 \text{ automatically}
\end{align*}$

Solution:

$\begin{align*}
f(x,y) &= B_x B_y \sin{\left(\frac{n \pi x}{a}\right)} \sin{\left(\frac{n \pi y}{a}\right)} \\
&= C_n \sin{\left(\frac{n \pi x}{a}\right)} \sin{\left(\frac{n \pi y}{a}\right)}
\end{align*}$
"""

# ╔═╡ f6172edb-95f1-47fc-9d6d-9a928019b2e0
md"""
### Recall

$f(x,y) = g_1(x+y) + g_2(x - y)$

But

$\sin{\alpha} \sin{\beta} = \frac{1}{2} [\cos{(\alpha - \beta)} - \cos{(\alpha + \beta)}]$

$f(x,y) = \frac{C_n}{2} \left[\cos{\frac{n \pi (x - y)}{a}} - \cos{\frac{n \pi (x + y)}{a}}\right]$
"""

# ╔═╡ 7bb721ad-4004-4863-b184-920752ef1fbe
md"# Mar 15: Motion of a Stretched String"

# ╔═╡ 12c28dbc-3c05-4b74-be04-ae19eabf7796
md"""
### Section 5.1

Consider an ``xy`` plane with a curve ``u(x,t)`` that describes the shape of a stretched string.

- Tension ``T``

- Mass ``\mu`` per unit length

- Vertical motion only!

Consider a small section of the string ``x + Δx``.
What are the (vertical) forces acting on this section?

- Tension on left and tension on the right.

Thus the vertical force acting on the string is

$\sum F_y = T \sin{[\theta(x + Δx)]} - T \sin{[\theta(x)]}$

**Small Deformations!** ``\theta ≪ 1``

$\sin{\theta} ≈ \theta ≈ \tan{\theta} = \frac{∂u}{∂x}$

$\begin{align*}
\sum F_y &= T \left[\left.\frac{∂u}{∂x}\right|_{x+Δx} - \left.\frac{∂u}{∂x}\right|_x\right] \\
&= \text{mass} × \text{(vertical) acceleration} \\
&= \mu Δx × \frac{∂^2 u}{∂t^2}
\end{align*}$

$\frac{\mu}{T} \frac{∂^2 u}{∂t^2} = \underbrace{\frac{1}{Δx} \left[\left.\frac{∂u}{∂x}\right|_{x+Δx} - \left.\frac{∂u}{∂x}\right|_x\right]}_{\frac{∂^2 u}{∂x^2}} = \frac{1}{v^2}$

**The Wave Equation**

$\frac{1}{v^2} \frac{∂^2 u}{∂t^2} = \frac{∂^2 u}{∂x^2}$

**General Solution**

$u(x,t) = f(z) \qquad z ≡ x ∓ vt$

$\frac{1}{v^2} (∓v)^2 f''(z) = f''(z)$

$u(x,t) = f(x - vt) + g(x + vt)$

The ``f(x - vt)`` is considered a traveling wave moving to the right.
Similarly ``g(x + vt)`` is considered a traveling wave moving to the left.

**Part of homework**

Apply BC's IC's

$f(x + vt)$

$u(x,t) = -f(-x + vt)$

Notice the position is zero when these two waves meet.
"""

# ╔═╡ 21b30ed9-578f-40a5-991a-2524d0f4203d
md"""
### Standing waves the easy way

Consider the string ``u(x,t)`` with its ends at ``x = 0`` to ``x = L`` with boundary conditions

$\begin{align*}
u(0,t) &= 0 \\
u(L,t) &= 0 \\
u(x,0) &= f(x) \\
u̇(x,0) &= 0
\end{align*}$

Use separation of variables.

$u(x,t) = X(x) T(t)$

$\begin{align*}
\frac{1}{v^2} X \frac{d^2 T}{dt^2} &= \frac{d^2 X}{dx^2} T \\
\frac{1}{v^2} \frac{1}{T} \frac{d^2 T}{dt^2} &= \frac{1}{X} \frac{d^2 X}{dx^2} = \text{constant} = -k^2 < 0
\end{align*}$

Let's solve the ``X``-equation first

$\frac{d^2 X}{dx^2} = -k^2 X(x) \implies X(x) = A \cos{kx} + B \sin{kx}$

Apply boundary conditions,

$X(0) = 0 = A \implies A = 0$

$X(L) = 0 = B \sin{kL} \implies kL = n \pi \quad n ∈ 1,2,3,…$

$X(x) = B \sin{\left(\frac{n \pi x}{L}\right)} \qquad n ∈ 1,2,3,…$

Let's now solve the ``T``-equation

$\frac{d^2 T}{dt^2} = -k^2 v^2 T(t) = -\left[\frac{n \pi v}{L}\right]^2 T(t)$

$\implies T(t) = \cos{\left[\frac{n \pi v t}{L}\right]} \quad\text{or}\quad \sin{\left[\frac{n \pi v t}{L}\right]}$

However, the ``\sin`` expression fails the boundary condition ``u̇(x,0) = 0`` and is ignored.
The PDE solution is in the form ``u(x,t) = X(x) T(t)`` however we apply a subscript ``n`` to denote the dependence on ``n``,

$u_n(x,t) = B_n \sin{\left(\frac{n \pi x}{L}\right)} \cos{\left(\frac{n \pi v t}{L}\right)} \qquad n = 1,2,3,…$

If we apply superposition we get

$u_n(x,t) = \frac{1}{2} \left\{\sin{\left[\frac{n \pi}{L} (x - vt)\right]} - \sin{\left[\frac{n \pi}{L} (x + vt)\right]}\right\}$

How to satisfy ``u(x,0) = f(x)``

Find ``B_n`` such that

$f(x) = \sum_{n=1}^∞ B_n \sin{\left(\frac{n \pi x}{L}\right)}$

**Fourier Sine Series**

$∫_0^L f(x) \sin{\left(\frac{m \pi x}{L}\right)} dx = \sum_{n=1}^∞ B_n ∫_0^L \sin{\left(\frac{n \pi x}{L}\right)}\sin{\left(\frac{m \pi x}{L}\right)} dx$

The integral expression equals zero if ``m ≠ n`` and ``\frac{L}{2}`` if ``m = n``

$= \sum_{n = 1}^∞ B_n \frac{L}{2} \delta_{nm} = B_m \frac{L}{2}$

$\implies B_n = \frac{2}{L} ∫_0^L f(x) \sin{\left(\frac{n \pi x}{L}\right)} dx$

The final solution:

$u(x,t) = \sum_{n = 1}^∞ B_n \sin{\left(\frac{n \pi x}{L}\right)} \cos{\left(\frac{n \pi vt}{L}\right)}$

Notice the ``\sin`` expression has a wavelength ``\lambda = \frac{2L}{n}`` and the ``\cos`` expression has a frequency ``\nu = v \frac{n}{2L}``.
The product of the wavelength and frequency is equal to velocity ``\lambda ⋅ \nu = v``

In MATHEMATICA, we write something like

```
nMax = _
nVals = Range[1,nMax]
Total
```
"""

# ╔═╡ 3042319b-9d92-423f-92ce-6d9a7abf76e3
md"""
### Generalized Fourier Series

Periodic ``f(x + a) = f(x)``

The function does not need to be continuous, only periodic.

$f(x) = \sum_{n = -∞}^∞ A_n e^{ikx}$

$f(x + a) = f(x) \implies e^{ik(x + a)} = e^{ikx}$

$e^{ika} = 1 \implies ka = 2\pi n$

$f(x) = \sum_{n = -∞}^∞ A_n e^{ik_n x} \qquad k_n = \frac{2\pi n}{a}$

$∫_{-a/2}^{a/2} f(x) e^{-2i m \pi x / a} \,dx = \sum_{n = -∞}^∞ A_n ∫_{-a/2}^{a/2} e^{2i (n - m) \pi x / a} \,dx$

$f(x) = \sum_{n = -∞}^∞ A_n e^{2i n \pi x/a}$

$A_n = \frac{1}{a} ∫_{-a/2}^{a/2} e^{-2in \pi x / a} f(x) \,dx$
"""

# ╔═╡ 1a9183c5-93ef-4b0c-bfd7-76615a658ebc
md"# Mar 17"

# ╔═╡ 6fd005c4-af7a-461e-9921-484e14eb032d
md"""
### Review: Fourier Series

For any real function ``f(x) : f(0) = 0 = f(L)``

$f(x) = \sum_{n=1}^∞ B_n \sin{\left(\frac{n \pi x}{L}\right)}$

$B_n = \frac{2}{L} ∫_0^L f(x) \sin{\left(\frac{n \pi x}{L}\right)}$
"""

# ╔═╡ cd6bd831-d6c9-45ce-9da5-bc7d84578dbd
md"""
### Generalized

$f : ℝ → ℂ$

$f(x + a) = f(x)$

$f(x) = \sum_{n=-∞}^∞ A_n e^{ik_n x} \qquad k_n = \frac{2\pi n}{a}$

To find ``A_n``:

$∫_{-a/2}^{a/2} e^{ik_m x} f(x) = \sum_{n=-∞}^∞ A_n ∫_{-a/2}^{a/2} \underbrace{e^{i(k_n - k_m) x} dx}_{0 \text{ if } n ≠ m; \, a \text{ if } n = m}$

$A_n = \frac{1}{a} ∫_{-a/2}^{a/2} e^{-ik_n x} f(x) \,dx$
"""

# ╔═╡ 1c83bb8b-ebfc-45fb-aaed-7edc313c64e2
md"""
### Parseval's Theorem

Average of ``|f(x)|^2`` over one period.
"""

# ╔═╡ 5f57a52c-d675-479d-bc00-bf43c45f12ec
md"""
### Fourier Transform

Period ``a → ∞`` ... then what?

As ``a → ∞`` ``k_n = \frac{2\pi n}{a}∼`` continuous ``k``

$\begin{align*}
f(x) &= \sum_{n=-∞}^∞ A_n e^{ik_n x} Δn \qquad Δn = 1 \\
&= \sum_{n=-∞}^∞ a A_n e^{ik_n x} Δ\left(\frac{n}{a}\right)
\end{align*}$

$a → ∞ \implies ∫_{-∞}^{∞} [aA_n] e^{ikx} \frac{1}{2\pi} dk$

$f(x) = \frac{1}{2\pi} ∫_{-∞}^∞ e^{ikx} A(k) \,dk$

$A(k) = ∫_{-∞}^∞ e^{-ikx} f(x) \,dx$

``A(k)`` is the Fourier Transform of ``f(x)``

$\text{Wavelength} = \frac{2\pi}{k}$
"""

# ╔═╡ 05854e03-b9a6-49dd-99fc-4e72041b5a83
md"""
### Example: Square Pulse

$\begin{align*}
A(k) &= ∫_{-∞}^∞ e^{-ikx} f(x) \,dx \\
&= ∫_{-a/2}^{a/2} e^{ikx} dx \\
&= -\frac{1}{ik} \left[e^{-ika/2} - e^{ika/2}\right] \\
&= -\frac{2}{ik} \left[\left(\cos{\frac{ka}{2}} - i \sin{\frac{ka}{2}}\right) - \left(\cos{\frac{ka}{2}} + i \sin{\frac{ka}{2}}\right)\right] \\
&= a \frac{2}{ak} \sin{\left(\frac{ka}{2}\right)}
\end{align*}$

$Δk = 2x \frac{2\pi}{a} = \frac{4\pi}{a}$

$Δx Δk = 4\pi$
"""

# ╔═╡ 68791d26-c968-4749-aec6-703ae9ed7eb1
md"""
### The Width of the Fourier Transform

For ``g(y)`` "centered at zero" then

$∫_{∞}^∞ y \,g(y) \,dy = 0$

$\implies (Δy)^2 = \frac{-1}{\mathcal{A}} ∫_{-∞}^∞ y^2 g(y) \,dy$

$\mathcal{A} = ∫_{-∞}^∞ g(y) \,dy$
"""

# ╔═╡ 521be6e5-78df-49ab-9c59-0e51dd234902
md"""
### The Dirac ``\delta``-function

What is the Fourier Transform of ``f(x) = 1``?

$A(k) = ∫_{-∞}^∞ e^{ikx} dx = ∫_{-∞}^∞ [\cos(kx) + i \sin{kx}] dx = \begin{cases}
0 &\text{if } k ≠ 0 \\
∞ &\text{if } k = 0
\end{cases}$

$\begin{align*}
∫_{-∞}^{∞} A(k) \,dk &= ∫_{-\varepsilon}^{\varepsilon} A(k) \,dk = ∫_{-\varepsilon}^{\varepsilon} ∫_{-∞}^∞ e^{-ikx} dx \,dk = ∫_{-∞}^∞ \underbrace{\left\{∫_{-\varepsilon}^{\varepsilon} e^{-ikx} \,dk\right\}}_{\frac{2i}{ix} \sin{(\varepsilon x)}} dx \\
&= 2 ∫_{-∞}^∞ \frac{1}{x} \sin{(\varepsilon x)} dx = 4 ∫_0^∞ \frac{1}{x} \sin{(\varepsilon x)} dx = 4 ∫_0^∞ \frac{1}{y} \sin{y} \,dy = 4 \left(\frac{\pi}{2}\right) = 2\pi
\end{align*}$

We write

$\delta(x) = \frac{1}{2\pi} ∫_{-∞}^∞ e^{-ikx} dx \tag{5.20}$

Define ``\delta(x) = 0 \text{ if } x ≠ 0``.
However

$∫_{-\varepsilon}^{\varepsilon} \delta(x) \,dx = 1 \text{ for } \varepsilon > 0$

Another representation:

$∫_{-∞}^∞ f(x) \delta(x) \,dx = f(0) \int_{-∞}^∞ \delta(x) \, dx = f(0)$

$∫_{-∞}^∞ f(x) \delta(x - a) \,dx = f(a)$

$\delta(x - x') = \frac{1}{2\pi} ∫_{-∞}^∞ e^{-ik(x - x')} dk$

**2D**

$\delta^{(2)}(\vec{r}) = \delta(x) \delta(y)$

$∫_S \delta^{(2)}(\vec{r}) \,dS = 1 \qquad\text{and}\qquad ∫_V \delta^{(3)}(\vec{r}) \,dV = 1$

**3D**

$\delta^{(3)}(\vec{r}) \,dV = 1$
"""

# ╔═╡ 8c47ab87-3b86-4a7a-8a61-13b648e2c783
md"""
### Surface theorems (again)

$\begin{align*}
\vec{B}(\vec{r}) &= a \frac{\hat{\phi}}{r} &\qquad \vec{E} &= a \frac{\hat{r}}{r^2} \\
\vec{∇} × \vec{B} &= 0 &\qquad \vec{∇} ⋅ \vec{E} &= 0 \\
∮_C \vec{B} ⋅ d\vec{ℓ} &= 2 \pi a &\qquad ∮_S \vec{E} ⋅ d\vec{S} &= 4\pi a
\end{align*}$

Do the last two results contradict the following surface theorems?

$∫_S (\vec{∇} × \vec{B}) ⋅ d\vec{S} = 0 \qquad ∫_V (\vec{∇} ⋅ \vec{E}) \,dV = 0$

The problem is that the surface theorems include the origin which produces zero, whereas those last two equations avoid the origin

$\vec{∇} ⋅ \vec{E} = 4 \pi a \delta(\vec{r})$

Gauss' Law: ``\vec{∇} ⋅ \vec{E} = 4 \pi \rho(\vec{r})``
"""

# ╔═╡ 6d257861-96b5-4270-bc05-6f110c719228
md"""
# Mar 22
"""

# ╔═╡ 61c3489c-861e-4d99-9e28-8bb79a6e3196
md"""
### Quiz on Thursday

1. Solve PDE

2. Simple Fourier Transform

Should be short---a couple lines each answer
"""

# ╔═╡ 4e39b063-3101-43e7-a600-d505f4d52b22
md"""
### Systems of Linear Equations

$\begin{align*}
2x + y &= 3 \\
x - y &= 0
\end{align*}$

$\implies x = y \implies x = y = 1$

**Formalism.**

$\begin{bmatrix} 2 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix} = \begin{bmatrix} 3 \\ 0 \end{bmatrix}$

**Notation.**

$\underline{\underline{A}} \, \underline{x} = \underline{c}$

$\underline{\underline{A}} = \begin{bmatrix} A_{11} & A_{12} \\ A_{21} & A_{22} \end{bmatrix}$

$\underline{x} = \begin{bmatrix} x_1 \\ x_2 \end{bmatrix}$

$\underline{\underline{A}} \, \underline{x} = \begin{bmatrix} A_{11} x_1 + A_{12} x_2 \\ A_{21} x_1 + A_{22} x_2 \end{bmatrix} = \begin{bmatrix} c_1 \\ c_2 \end{bmatrix}$
"""

# ╔═╡ 88f11691-8abe-4a8a-a18d-434612c1ff3e
md"""
### Identity and Inverse

$\underline{\underline{I}} = \begin{bmatrix} 1 & 0 & 0 & … & 0 \\ 0 & 1 & 0 & … & 0 \\ 0 & 0 & ⋱ & 0 & 0 \\ ⋮ & ⋮ & 0 & 1 & 0 \\ 0 & 0 & 0 & 0 & 1 \end{bmatrix}$

$\underline{\underline{A}}^{-1} \, \underline{\underline{A}} = \underline{\underline{I}} = \underline{\underline{A}} \, \underline{\underline{A}}^{-1}$

$\implies \underline{\underline{A}}^{-1} \underline{\underline{A}} \,\underline{x} = \underline{\underline{A}}^{-1} \underline{c} \implies \underline{x} = \underline{\underline{A}}^{-1} \underline{c}$
"""

# ╔═╡ 7685eb15-15ac-4cf1-a460-903fa5fcb01e
md"""
## Vectors and Vector Spaces
"""

# ╔═╡ c3a57abd-988e-4c38-a299-8a1b6ce58c3b
md"""
### The ``N``-Dimensional Complex Vector

$\underline{v} = \begin{bmatrix} v_1 \\ v_2 \\ ⋮ \\ v_N \end{bmatrix} \qquad \underline{v} ∈ ℂ^N$

$\underline{v}^T = \begin{bmatrix} v_1 & v_2 & … & v_N \end{bmatrix} \qquad v_i ∈ ℂ$

$\underline{\tilde{v}} = \begin{bmatrix} {v_1}^* & {v_2}^* & … & {v_N}^* \end{bmatrix}$
"""

# ╔═╡ f6acbfe1-e886-45ee-b34a-dc4f351feceb
md"""
### Linear vector spaces

$c\underline{v} = \begin{bmatrix} cv_1 \\ cv_2 \\ ⋮ \\ cv_N \end{bmatrix}$

$\underline{u} + \underline{v} = \begin{bmatrix} u_1 + v_1 \\ u_2 + v_2 \\ ⋮ \\ u_N + v_N \end{bmatrix}$

$\underline{w} = a\underline{u} + b\underline{v}$
"""

# ╔═╡ 17bc08ca-e635-4f77-bb06-70277059ff7f
md"""
### Inner Product and Norm

$⟨u \vert v⟩ ≡ \underline{\tilde{u}} \, \underline{v} = \begin{bmatrix} {u_1}^* & {u_2}^* & … & {u_N}^* \end{bmatrix} \begin{bmatrix} v_1 \\ v_2 \\ ⋮ \\ v_N \end{bmatrix} = {u_i}^* v_i$

Norm of ``\underline{v}``

$⟨v \vert v⟩ = {v_i}^* {v_i} = \sum_{i=1}^N |v_i|^2$

$\underline{e}_i = \begin{bmatrix} 0 \\ 0 \\ ⋮ \\ \underbrace{1}_{i^{\text{th}} \text{ position}} \\ ⋮ \\ 0 \end{bmatrix}$

$\underline{v} = v_i \underline{e}_i$
"""

# ╔═╡ 1c663747-fd44-4da4-b49d-6ce9bb425296
md"""
### Dyadic

$\underline{u} \,\underline{\tilde{v}} = \begin{bmatrix} u_1 {v_1}^* & {u_1} {v_2}^* & … & u_1 {v_N}^* \\
u_2 {v_1}^* & ⋯ \\
⋮ \\
u_N {v_1}^* & & & u_N {v_N}^* \end{bmatrix}$
"""

# ╔═╡ 459664ae-1c40-4f65-ab2f-04416bc718e1
md"""
### Functions form vector spaces

``f(x)``, ``g(x)`` over some domain

$⟨f \vert g⟩ = ∫_{\text{Domain}} f^*(x) g(x) \,dx$

``f`` and ``g`` are orthogonal if ``⟨f \vert g⟩ = 0``.

- ``f(x + a) = f(x) \qquad \frac{1}{a} e^{2in\pi x/a}``

- ``-1 ≤ x ≤ +1 \qquad P_{ℓ}(x)``

$\implies f(x) = \sum_{ℓ = 0}^∞ A_ℓ P_ℓ(x) \qquad \text{Shin expansion}$
"""

# ╔═╡ 6ea5b9db-64bd-47a2-a55b-6eb4328da774
md"""
### Operations on vectors: Matrices

$\mathcal{O} \text{ ``on vector" } \underline{v} → \underline{u}$

**Example in 2D: rotate a vector**

$\begin{align*}
x' &= x \cos{\phi} + y \sin{\phi} \\
y' &= -x \sin{\phi} + y \cos{\phi}
\end{align*}$

$\begin{bmatrix}
\cos{\phi} & \sin{\phi} \\ -\sin{\phi} & \cos{\phi}
\end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix} = \begin{bmatrix} x' \\ y' \end{bmatrix}$
"""

# ╔═╡ 83ce7ef4-3e60-4975-8c49-0d62e68313fd
md"""
### Matrices multiply vectors

$\underline{u} = \underline{\underline{A}} \, \underline{v}$

i.e. ``u_i = A_{ij} v_j``

Also ``\underline{\tilde{u}} = \underline{\tilde{u}} \, \underline{\underline{A}}``

``{u_i}^* = {v_j}^* A_{ji}``

$⟨u \vert w⟩ = \underline{\tilde{u}} \, \underline{w}$

$\implies ⟨u \vert w⟩ = ⟨u \vert A \vert v⟩ = \underline{\tilde{u}} \, \underline{\underline{A}} \, \underline{v}$

$\underline{\tilde{u}} \, \underline{\underline{A}} \, \underline{v} = {u_i}^* A_{ij} v_j$

$\underline{\tilde{v}} \, \underline{\underline{A}} \, \underline{u} = {v_i}^* A_{ij} u_j = u_i A_{ji} {v_j}^*$

$(\underline{\tilde{v}} \, \underline{\underline{A}} \, \underline{u})^* = {u_i}^* A_{ij}^* v_j$
"""

# ╔═╡ f9c6d69a-9c1c-4075-941a-8b6c01fe2e11
md"""
### Matrices multiply matrices

$\underline{w} = \underline{\underline{A}} \, \underline{u} \qquad \underline{u} = \underline{\underline{B}} \, \underline{v}$

$\implies \underline{w} = \underline{\underline{A}} \, \underline{\underline{B}} \, \underline{v} = \underline{\underline{C}} \, \underline{v}$

$C_{ij} = A_{ik} B_{kj}$

$\underline{\underline{AB}} ≠ \underline{\underline{BA}}$
"""

# ╔═╡ d969e250-c9fa-4193-b569-e1bf8d84887f
md"""
### Symmetric and diagonal matrices

$A_{ij} = A_{ji}$

Diagonal matrix

$\underline{\underline{A}} = \begin{bmatrix}
a^{(1)} & 0 & … & 0 \\
0 & a^{(2)} & … & 0 \\
⋮ & ⋮ & ⋱ & ⋮ \\
0 & 0 & … & a^{(N)}
\end{bmatrix}$

Use Kronecker delta ``\delta_{ij}``

$A_{ij} = a^{(i)} \delta_{ij} = a^{(j)} \delta_{ij}$
"""

# ╔═╡ f9c9d34f-b7a3-4941-a1e9-85eb84c4b07c
md"""
### Diagonal matrices commute

$(\underline{\underline{AB}})_{ij} = A_{ik} B_{kj} = a^{(i)} \delta_{ik} b^{(j)} \delta_{kj} = a^{(i)} b^{(j)} \delta_{ij} = a^{(j)} b^{(i)} \delta_{ij} = b^{(i)} \delta_{ik} \delta_{kj} a^{(j)} = (\underline{\underline{BA}})_{ij}$
"""

# ╔═╡ 3dbc3e1a-ddd5-4c8e-a494-cbc0db27339b
md"""
# Mar 24
"""

# ╔═╡ 8930c47d-fbed-4229-8044-8f718250c945
md"""
### Review: Vectors & Matrices

"Linear Vector Spaces"

- ``\underline{w} = a \underline{u} + b \underline{v}`` is also a vector

"Matrices as Operators"

- ``\underline{u} = \underline{\underline{A}} \, \underline{v} \qquad \underline{\tilde{u}} = \underline{\tilde{v}} \, \underline{\underline{A}}``

"Inner Product"

- ``⟨u \vert v\rangle ≡ \underline{\tilde{u}} \, \underline{v} = {u_i}^* {v_i}^*``

NOTE: ``\underline{\underline{A}} \, \underline{v} = \underline{u} → A_{ij} v_j = u_i \qquad i = 1,2,3,…,N``
"""

# ╔═╡ 72ff8d9a-de68-4119-9e9e-b0bd31860915
md"""
### Properties of Matrices

- ``\underline{\underline{C}} = \underline{\underline{A}} \, \underline{\underline{B}}`` i.e. ``C_{ij} = A_{ik} B_{kj}``

- ``\underline{\underline{A}} \, \underline{\underline{B}} ≠ \underline{\underline{B}} \, \underline{\underline{A}}`` in general

- If ``A_{ij} = A_{ji}`` then ``A`` is "symmetric"

- If ``A_{ij} = a^{(i)} \delta_{ij} = a^{(j)} \delta_{ij}`` then ``A`` is "diagonal"
"""

# ╔═╡ 299ee457-3b55-4934-8722-989a4210f5fc
md"""
### More Terminology

- Transpose of a matrix: ``(\underline{\underline{A}}^T)_{ij} = A_{ji}`` i.e. ``\underline{\underline{A}}^T = \underline{\underline{A}}`` "symmetric"

- Hermitian Transpose: ``\underline{\underline{\tilde{A}}} = \left(\underline{\underline{A}}^T\right)^*`` i.e. ``\tilde{A}_{ij} = A_{ji}^*``
"""

# ╔═╡ 47d64682-8da1-4fa4-b99e-430a21c620e1
md"""
### Theorem

$(\underline{\underline{A}} \underline{\underline{B}})^T = \underline{\underline{B}}^T \underline{\underline{A}}^T$

*Proof.*
Consider the ``ij``th element of the left hand side,

$\begin{align*}
\left[(\underline{\underline{A}} \underline{\underline{B}})^T\right]_{ij} &= \left[\underline{\underline{A}} \underline{\underline{B}}\right]_{ji} \\
&= A_{jk} B_{ki} \\
&= A_{kj}^T B_{ik}^T \\
&= B_{ik}^T A_{kj}^T \\
&= \left[\underline{\underline{B}}^T \underline{\underline{A}}^T\right]_{ij}
\end{align*}$
"""

# ╔═╡ 962712a9-80f7-462e-8ea1-4ce66d21a22b
md"""
### Determinants, Inverses, & More Terminology

Determinant: ``|\underline{\underline{A}}|`` Maps ``ℂ^N × ℂ^N → ℂ``

- ``N = 1 : A_{11} \qquad \det(\underline{\underline{A}}) = A_{11}``

- ``N = 2 : \underline{\underline{A}} = \begin{bmatrix} A_{11} & A_{12} \\ A_{21} & A_{22} \end{bmatrix} \qquad \det(\underline{\underline{A}}) = A_{11} A_{22} - A_{12} A_{21}``

- ``N = 3 : \underline{\underline{A}} = \begin{bmatrix} A_{11} & A_{12} & A_{13} \\ A_{21} & A_{22} & A_{23} \\ A_{31} & A_{32} & A_{33} \end{bmatrix} \qquad \det(\underline{\underline{A}}) = A_{11} A_{22} A_{33} - A_{11} A_{23} A_{32} - ⋯``
"""

# ╔═╡ 00277d5e-af18-4f26-b0a3-0224d13edd75
md"""
### Properties

1. Interchange two rows/columns ``→ ×(-1) \implies``
   two rows/columns are equal ``\implies \det = 0``

2. Multiply any row/column by ``c \implies \det = c |\underline{\underline{A}}|``

3. ``|c \,\underline{\underline{A}}| = c^N |\underline{\underline{A}}|``

4. ``|\underline{\underline{A}}^T| = |\underline{\underline{A}}|``

5. ``|\underline{\underline{\tilde{A}}}| = |\underline{\underline{A}}|^*``

6. ``|\underline{\underline{A}} \,\underline{\underline{B}}| = |\underline{\underline{A}}| |\underline{\underline{B}}|``
"""

# ╔═╡ 9b461779-3685-4080-8c6a-b16526b6c725
md"""
### Inverse Matrix

``\underline{\underline{A}}^{-1}`` means ``\underline{\underline{A}}^{-1} \underline{\underline{A}} = \underline{\underline{I}} = \underline{\underline{A}} \, \underline{\underline{A}}^{-1}``

Can prove that ``(\underline{\underline{A}}^{-1})_{ij} = \frac{1}{|\underline{\underline{A}}|} (C^T)_{ij}``

If ``|\underline{\underline{A}}| = 0`` then ``\underline{\underline{A}}^{-1}`` does not exist!!

*Recall*: ``\underline{\underline{A}} \, \underline{x} = \underline{c} \implies \underline{x} = \underline{\underline{A}}^{-1} \, \underline{c}``
"""

# ╔═╡ 46fce038-4b7e-451c-8a39-5251066146ad
md"""
### More Terminology

**Orthogonal Matrix:** ``\underline{\underline{A}}^T = \underline{\underline{A}}^{-1}``

``\underline{\underline{R}} = \begin{bmatrix} \cos{\phi} & -\sin{\phi} \\ \sin{\phi} & \cos{\phi} \end{bmatrix}``

``\underline{\underline{R}}^{-1} = \begin{bmatrix} \cos{\phi} & \sin{\phi} \\ -\sin{\phi} & \cos{\phi} \end{bmatrix}``

**Hermitian Matrix:** ``\underline{\underline{\tilde{A}}} = \underline{\underline{A}}``

**Unitary Matrix:** ``\underline{\underline{\tilde{U}}} = \underline{\underline{U}}^{-1}``
"""

# ╔═╡ f5312bd4-bcbb-4cfd-9909-a782dae245fb
md"# Mar 29: The Eigenvalue Problem"

# ╔═╡ 47f2d779-3ac6-437b-b7cc-01f6c0c626b9
md"""
### The Axes of a Tilted Ellipse

$6x^2 + 4xy + 3y^2 = 16$

$\underline{x}^T \underline{\underline{A}} \, \underline{x} = 16$

$\underline{x} = \begin{bmatrix} x \\ y \end{bmatrix} \qquad \underline{\underline{A}} = \begin{bmatrix} 6 & 2 \\ 2 & 3 \end{bmatrix}$

We want

$\underline{\underline{R}} = \begin{bmatrix} \cos{\phi} & -\sin{\phi} \\ \sin{\phi} & \cos{\phi} \end{bmatrix}$

$\underline{x}' = \begin{bmatrix} x' \\ y' \end{bmatrix} = \underline{\underline{R}} \, \underline{x}$

where ``ax'^2 + by'^2 = 16``. No ``xy`` term!

Recall: ``\underline{\underline{R}}`` is orthogonal! That is, ``\underline{\underline{R}}^T \underline{\underline{R}} = \underline{\underline{I}} = \underline{\underline{R}} \,\underline{\underline{R}}^T``.

$(\underline{x}')^T = \underline{x}^T \underline{\underline{x}}^T$

$(\underline{x}')^T \underline{\underline{R}}^T \underline{\underline{A}} \,\underline{\underline{R}} (\underline{x}') = 16$

$≡ \underline{\underline{A}}' \qquad \text{Diagonal}$
"""

# ╔═╡ db7120bc-943c-415e-9fed-95cc08c5f99c
md"""
### Theorem

The eigenvectors of a Hermitian matrix ``\underline{\underline{A}}`` form an orthonormal set and eigenvalues are real numbers.

*Proof.*

$\begin{align*}
\underline{\underline{A}} \,\underline{v}_a &= \lambda^{(a)} \underline{v}_a \\
\underline{\underline{A}} \,\underline{v}_b &= \lambda^{(b)} \underline{v}_b \\
\end{align*}$

$\begin{align*}
\underline{\tilde{v}}_b \underline{\underline{A}} \,\underline{v}_a &= \lambda^{(a)} \underline{\tilde{v}}_b \underline{v}_a \\
\underline{\tilde{v}}_a \underline{\underline{A}} \,\underline{v}_b &= \lambda^{(b)} \underline{\tilde{v}}_a \underline{v}_b \\
\end{align*}$

$\underline{\tilde{v}}_b \underline{\underline{A}} \,\underline{v}_a = v_{bi}^* A_{ij} v_{aj} = (v_{bi} A_{ij}^* v_{aj}^*)^* = (v_{aj}^* \tilde{A}_{ji} v_{bi})^* = (\underline{\tilde{v}}_a \,\underline{\underline{\tilde{A}}} \, \underline{v}_b)^* = (\underline{\tilde{v}}_a \, \underline{\underline{A}} \, \underline{v}_b)^*$

$\implies \underline{\tilde{v}}_a \, \underline{\underline{A}} \, \underline{v}_b = {\lambda^{(a)}}^* (\underline{\tilde{v}}_b \, \underline{v}_a)^*$

$\implies \tilde{v}_a \, \underline{\underline{A}} \, \underline{v}_b = {\lambda^{(a)}}^* \underline{\tilde{v}}_a \, v_b$

$\implies \tilde{v}_a \, \underline{\underline{A}} \, \underline{v}_b = \lambda^{(b)} \underline{\tilde{v}}_a \, v_b$

$\left[{\lambda^{(a)}}^* - \lambda^{(b)}\right] \underline{\tilde{v}}_a v_b = 0$

$a = b \implies \tilde{v}_a v_a = 1 \implies {\lambda^{(a)}}^* = \lambda^{(a)} \qquad \text{Real!}$

$a ≠ b \implies {\lambda^{(a)}}^* ≠ \lambda^{(b)} \implies \underline{\tilde{v}}_a \underline{v}_b = 0$
"""

# ╔═╡ d17404fe-78b6-48b6-930d-1fefa8feb5ee
md"""
### Rotation matrix

To find ``\underline{\underline{R}}``, build it with columns that are eigenvectors of ``\underline{\underline{A}}``.

$\underline{\underline{R}} = \begin{bmatrix} v_a \vert v_b \end{bmatrix} \qquad \underline{\underline{R}}^T = \begin{bmatrix} \tilde{v}_a \\ \hline \tilde{v}_b \end{bmatrix}$

$\underline{\underline{R}}^T \underline{\underline{R}} = \begin{bmatrix} \underline{\tilde{v}}_a \underline{v}_a & \underline{\tilde{v}}_a \underline{v}_b \\ \underline{\tilde{v}}_b \underline{v}_a & \underline{\tilde{v}}_b \underline{v}_b \end{bmatrix}$

$\underline{\underline{A}} \underline{\underline{R}} = \begin{bmatrix} \lambda^{(a)} \underline{v}^{a} \vert \lambda^{(b)} \underline{v}^{b} \end{bmatrix}$

$\underline{\underline{R}}^T \underline{\underline{A}} \underline{\underline{R}} = \begin{bmatrix} \lambda^{(a)} & 0 \\ 0 & \lambda^{(b)} \end{bmatrix}$

We diagonalized the matrix!
"""

# ╔═╡ 15b39ae1-0441-421f-b7a3-67cb1615d88e
md"""
### Back to tilted ellipse

$\underline{\underline{A}} = \begin{bmatrix} 6 & 2 \\ 2 & 3 \end{bmatrix}$

$\lambda^{(a)} = 7 \qquad \underline{v}^{(a)} = \begin{bmatrix} 2 / \sqrt{5} \\ 1 / \sqrt{5} \end{bmatrix}$

$\lambda^{(b)} = 2 \qquad \underline{v}^{(b)} = \begin{bmatrix} -1 / \sqrt{5} \\ 2 / \sqrt{5} \end{bmatrix}$

$\underline{\underline{R}} = \begin{bmatrix} 2/\sqrt{5} & -1/\sqrt{5} \\ 1/\sqrt{5} & 2/\sqrt{5} \end{bmatrix}$

$\underline{\underline{R}}^T = \begin{bmatrix} 2/\sqrt{5} & 1/\sqrt{5} \\ -1/\sqrt{5} & 2/\sqrt{5} \end{bmatrix}$

$\underline{\underline{R}}^T \underline{\underline{R}} = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$

$\underline{\underline{A}} \,\underline{\underline{R}} = \begin{bmatrix} 14/\sqrt{5} & -2/\sqrt{5} \\ 7/\sqrt{5} & 4/\sqrt{5} \end{bmatrix}$


$\underline{\underline{R}}^T \underline{\underline{A}} \,\underline{\underline{R}} = \begin{bmatrix} 7 & 0 \\ 0 & 2 \end{bmatrix}$
"""

# ╔═╡ 4dad0ea2-a030-44a4-88d2-943e0492927f
md"""
### Find Eigenvalues/Eigenvectors

$\underline{\underline{A}} \, \underline{v} = \lambda \underline{v} = \lambda \underline{\underline{I}} \, \underline{v}$

$[\underline{\underline{A}} - \lambda \underline{\underline{I}}] \underline{v} = 0$
"""

# ╔═╡ d1337935-259e-4204-827b-f4873e8943b2
md"# Mar 31"

# ╔═╡ f3d13905-7908-4c8c-aa72-72b7a2a1e4f1
md"""
### Coupled oscillators revisited

$mẍ_1 = -kx_1 + k(x_2 - x_1) = -2kx_1 + kx_2$

$mẍ_2 = -kx_2 - k(x_2 - x_1) = kx_1 - 2kx_2$

Define ``{\omega_0}^2 = k / m``

$\underline{x} = \underline{x}(t) = \begin{bmatrix} x_1 \\ x_2 \end{bmatrix}$

$\underline{\underline{\Omega}} ≡ \begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix}$

$\underline{ẍ} = -{\omega_0}^2 \underline{\underline{\Omega}} \,\underline{x}$

**Standard ansatz:**

$\underline{x}(t) = \underline{a} e^{i \omega t}$

$\underline{a} = \begin{bmatrix} a_1 \\ a_2 \end{bmatrix}$

$-\omega^2 \underline{a} e^{i \omega t} = -{\omega_0}^2 \underline{\underline{\Omega}} \,\underline{a} e^{i \omega t}$

$\lambda ≡ \frac{\omega^2}{{\omega_0}^2} \implies \underline{\underline{\Omega}} \, \underline{a} = \lambda \underline{a}$

Eigenvalues of ``\underline{\underline{\Omega}}``

$\begin{vmatrix} 2 - \lambda & -1 \\ -1 & 2 - \lambda \end{vmatrix} = (2 - \lambda)^2 - 1 = 0 \implies \lambda - 2 = ±1$

$\implies \lambda = 1 = \lambda^{(1)}, \,\lambda = 3 = \lambda^{(2)}$

Eigenfrequencies

$\omega = \omega_0 \sqrt{\lambda}$

$\omega^{(1)} = \omega_0$

$\omega^{(2)} = \omega_0 \sqrt{3}$

Eigenvector for ``\lambda = \lambda^{(1)} = 1``

$\begin{bmatrix} 1 & -1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} {a_1}^{(1)} \\ {a_2}^{(1)} \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$

${a_1}^{(1)} - {a_2}^{(1)} = 0 \implies {a_2}^{(1)} = {a_1}^{(1)}$

$\underline{a}^{(1)} = \begin{bmatrix} 1 / \sqrt{2} \\ 1 / \sqrt{2} \end{bmatrix}$

Eigenvector for ``\lambda = \lambda^{(2)} = 3``

$\begin{bmatrix} -1 & -1 \\ -1 & -1 \end{bmatrix} \begin{bmatrix} {a_1}^{(2)} \\ {a_2}^{(2)} \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$

${a_2}^{(2)} = -{a_1}^{(2)}$

$\underline{a}^{(2)} = \begin{bmatrix} 1 / \sqrt{2} \\ -1 / \sqrt{2} \end{bmatrix}$
"""

# ╔═╡ fc5e3ff6-795b-47ee-bb1c-cd38a0a600f1
md"""
### Back to motion

$\underline{x}(t) = c_+^{(1)} \underline{a}^{(1)} e^{i \omega^{(i)} t} + c_-^{(1)} \underline{a}^{(1)} e^{-i \omega^{(1)} t} + c_+^{(2)} \underline{a}^{(2)} e^{i \omega^{(2)} t} + c_-^{(2)} \underline{a}^{(2)} e^{i \omega^{(2)} t}$

$\underline{x}(0) = \underline{x}_0 = \begin{bmatrix} {x_{1_0}} \\ {x_{2_0}} \end{bmatrix}$

$\underline{ẍ}(0) = \underline{v}_0 = \begin{bmatrix} {v_{1_0}} \\ {v_{2_0}} \end{bmatrix}$

$\underline{x}_0 = \left[c_+^{(1)} + c_-^{(1)}\right] \underline{a}^{(1)} + \left[c_+^{(2)} + c_-^{(2)}\right] \underline{a}^{(2)}$

$\underline{v}_0 = i \omega^{(1)} \left[c_+^{(1)} - c_-^{(1)}\right] \underline{a}^{(1)} + i \omega^{(2)} \left[c_+^{(2)} - c_-^{(2)}\right] \underline{a}^{(2)}$

Simple special case:

$\underline{v}_0 = \underline{0} \qquad c_+^{(1)} = c_-^{(1)} ≡ \frac{c^{(1)}}{2} \qquad c_+^{(2)} = c_-^{(2)} ≡ \frac{c^{(2)}}{2} \qquad = c^{(1)} \underline{a}^{(i)} + c^{(2)} \underline{a}^{(2)}$
"""

# ╔═╡ d7514964-ad59-49b8-a1a9-872369ba2b73
let
	A = [-2/3 1/3; 1/2 -1/2]
	eigen(A)
end

# ╔═╡ 1f071dc2-cb27-43aa-941e-afc0cda645b0
md"""
### Eigenmodes aka Normal modes

(1) means ``c^{(2)} = 0`` and ``\omega = \omega^{(1)}``

(2) means ``c^{(1)} = 0`` and ``\omega = \omega^{(2)}``

Example (1) Model ``\underline{x}_0`` on ``\underline{a}^{(1)}``

$\underline{x}_0 = \begin{bmatrix} c \\ c \end{bmatrix} = c \sqrt{2} \underline{a}^{(1)}$

$\begin{align*}
\underline{x}^{(1)}(t) &= \frac{1}{2} c^{(1)} \underline{a}^{(1)} e^{i \omega^{(1)} t} + \frac{1}{2} c^{(1)} \underline{a}^{(1)} e^{-i \omega^{(1)} t} \\
&= \frac{1}{2} c \sqrt{2} \underline{a}^{(1)} \left[e^{i \omega_0 t} + e^{-i \omega_0 t}\right] \\
&= c \frac{1}{2} \begin{bmatrix} 1 \\ 1 \end{bmatrix} 2 \cos{\omega_0} t
\end{align*}$

"Eigenmode (1)"

$x_1^{(1)}(t) = c \cos{\omega_0} t$

$x_2^{(1)}(t) = c \cos{\omega_0} t$

"Eigenmode (2)"

$x_1^{(2)}(t) = c \cos{\omega_0} \sqrt{3} t$

$x_2^{(2)}(t) = -c \cos{\omega_0} \sqrt{3} t$
"""

# ╔═╡ 9b87a959-49c7-4199-b236-b2cc43a23542
md"""
# Apr 5: Calculus of Variations
"""

# ╔═╡ fd4c97c3-0316-459c-af43-608ba0b78a34
md"""
$S = \int_a^b F[f(x), f'(x), x] dx = S[f(x)]$

Problem: find ``f(x)`` that minimizes ``S[f(x)]``.
"""

# ╔═╡ eb5ef859-0847-4419-bfd8-8c8e1c213a66
md"# Apr 7"

# ╔═╡ 25f65a89-2660-41a9-b2d6-17cc5c810306
md"""
### Review: Euler Lagrange Equation

$S = S[f(x)] = ∫_a^b F[f(x), f'(x), x] \,dx = ∫_a^b F(y, y', x) \,dx$

$\delta S = 0 \text{ for } f(x) → f(x) + \delta f(x)$

$\text{ so } \delta S = ∫_a^b \left[\frac{∂F}{∂y} ∂y + \frac{∂F}{∂y'} \delta y'\right] dx$

$= \left.\frac{∂F}{∂y'} \delta y \right|_a^b + ∫_a^b \left[\frac{∂F}{∂y} - \frac{d}{dx} \frac{∂F}{∂y'}\right] \delta y \,dx = 0$

$\frac{∂F}{∂y} - \frac{d}{dx} \frac{∂F}{∂y'} = 0$
"""

# ╔═╡ b7ff5bec-0f5f-47d3-9951-0d274e0186f2
md"""
### Examples

"Shortest distance":

$F(y, y', x) = \left[1 + {y'}^2\right]^{1/2}$

"Shortest time":

$F(y, y', x) = \left[\frac{1 + {y'}^2}{y}\right]^{1/2}$
"""

# ╔═╡ 0f26bbf1-3ecc-4604-8bb8-cc437a0f4c33
md"""
### Important Special Cases

(1) ``\displaystyle \frac{∂F}{∂y} = 0 \implies \frac{∂F}{∂y'} = \text{constant}``

(2) ``\displaystyle \frac{∂F}{∂x} = 0 \implies F - y' \frac{∂F}{∂y'} = \text{constant}``
"""

# ╔═╡ dd904630-22b5-4ad2-a339-e3feb0dcdb0d
md"""
### More Dependent Variables

$S = S[f(x), g(x)] = ∫_a^b F[f(x),f'(x),g(x),g'(x),x]$

$\implies \frac{∂F}{∂f} - \frac{d}{dx} \frac{∂F}{∂f'} = 0 \quad\text{and}\quad \frac{∂F}{∂g} - \frac{d}{dx} \frac{∂F}{∂g'} = 0$
"""

# ╔═╡ 540dcb1a-8ce7-414c-beb2-12e36e578ba8
md"""
### Today: Problems involving constraints

(1) ``\displaystyle G[f(x), g(x)] = 0``

(2) ``\displaystyle ∫_a^b G[y,y',x] \,dx = \text{constant}``

"Lagrange Multiplier" ``\lambda``

$\delta (S + \lambda L) = 0$

$= \delta ∫_a^b [F + \lambda G] \,dx = 0$
"""

# ╔═╡ 4bc90404-fd79-45bf-8efd-19bad6479091
md"""
### Example: Rope of fixed length ``L``

$S = ∫_a^b f(x) \,dx = ∫_a^b y \,dx$

$L = ∫_a^b ds = ∫_a^b (dx^2 + dy^2)^{1/2} = ∫_a^b (1 + {y'}^2)^{1/2} \,dx$

$\delta (S + \lambda L) = \delta ∫_a^b \left[y + \lambda(1 + {y'}^2)^{1/2}\right] \,dx = 0$

$= ∫_a^b \left[\delta y + \lambda \frac{y'}{(1 + {y'}^2)^{1/2}} \delta y'\right] dx = 0$

$= ∫_a^b \left[1 + \lambda \frac{d}{dx} \frac{y'}{(1 + {y'}^2)^{1/2}}\right] \delta y \,dx =0$

$\lambda \frac{d}{dx} \frac{y'}{(1 + {y'}^2)^{1/2}} = 1$

$\lambda \frac{y'}{(1 + {y'}^2)^{1/2}} = x + c$

$\begin{align*}
\lambda^2 {y'}^2 &= (x + c)^2 \left(1 + {y'}^2\right) \\
&= (x + c)^2 + (x + c)^2{y'}^2 \\
\end{align*}$

$y' = \frac{dy}{dx} = \frac{x + c}{[\lambda^2 - (x + c)^2]^{1/2}}$

$dy = \frac{x + c}{[\lambda^2 - (x + c)^2]^{1/2}} \,dx$

Substitute ``x + c = \lambda \sin{t} \implies dx = \lambda \cos{t} \,dt``

$\frac{x + c}{[\lambda^2 - (x + c)^2]^{1/2}} = \frac{\lambda \sin{t}}{\lambda \cos{t}}$

$dy = \frac{\sin{t}}{\cos{t}} \lambda \cos{t} \,dt$

$dy = \lambda \sin{t} \,dt$

$y + c' = -\lambda \cos{t}$

$(x + c)^2 + (y + c')^2 = \lambda^2 \sin^2{t} + \lambda^2 \cos^2{t} = \lambda^2 (\sin^2{t} + \cos^2{t}) = \lambda^2$

Indeed, the solution is in the form of a circle!

$(x + c)^2 + (y + c')^2 = \lambda^2$
"""

# ╔═╡ e0d4e469-afb8-4a2a-b4c3-736899133613
md"# Apr 12"

# ╔═╡ ec782f70-1c5c-4486-b28d-dc591e2e91e0
md"""
### Functions of a Complex Variable

$z = x + iy$

$w = f(z) = u(x,y) + iv(x,y)$

Note: ``z = re^{i\phi}``
"""

# ╔═╡ e0148f1a-d338-4805-8a82-d09df77fadca
md"""
### Are real functions enough?

Example (1)

$f(x) = \begin{cases} +x^2 & x ≥ 0 \\ -x^2 & x ≤ 0 \end{cases}$

- continuous @ x = 0

- so is ``f'(x)``

- but ``f''(x)`` is not!!

Example (2)

$\frac{1}{1 + x^2} = 1 - x^2 + x^4 - x^6 + ⋯$

- good for all ``x``!!

- not good for all ``z`` (problem @ ``z = ±i``)!!
"""

# ╔═╡ b18f8310-b8ab-4711-a0dd-c11fb59f4551
md"""
### Examples of Complex Functions

- ``f(z) = z^n \qquad n = 0,1,2,…``

- ``f(z) = \sum_{n=0}^∞ c_n z^n``

- ``f(z) = e^z = e^x e^{iy} \implies \cos(z) = \frac{e^{iz} + e^{-iz}}{z}``

- ``f(z) = z^{1/2} = r^{1/2} e^{i\phi/2}`` for ``z = re^{i\phi}`` for ``-\frac{\pi}{2} ≤ \phi ≤ \frac{\pi}{2}``

  - Note: ``\phi → \phi + 2\pi, z → re^{i(\phi + 2\pi)} = re^{i\phi} e^{2i\pi} = z``

  - But ``z^{1/2} → r^{1/2} e^{i(\phi + 2\pi)/2} → -r^{1/2} e^{i\phi/2} ≠ z^{1/2}``

- ``f(z) = \log{z} = \log{r + i \phi}``
"""

# ╔═╡ 8cad86fe-07b6-492a-9875-f1d81be7fc97
md"""
### Analyticity: Taking a derivative

$w = f(z) = u(x,y) + iv(x,y) \qquad z = x + iy$

$f'(z) = \frac{dw}{dz} = \lim_{z→0} \frac{f(z + \varepsilon) - f(z)}{\varepsilon}$

(1) ``Δy = 0`` i.e. ``\varepsilon = Δx``

$\begin{align*}
f'(z) &= \lim_{Δx → 0} \frac{[u(x+Δx,y) + iv(x+Δx,y)] - [u(x,y) + iv(x,y)]}{Δx} \\
&= \lim_{Δx → 0} \left\{\frac{u(x+Δx,y) - u(x,y)}{Δx} + i \frac{v(x + Δx, y) - v(x,y)}{Δx}\right\}
\end{align*}$

(2) ``Δx = 0`` i.e. ``\varepsilon = Δy``

$f'(z) = \lim_{Δy → 0} \frac{[u(x,y+Δy) - u(x,y)] -  i[v(x,y+Δy) - v(x,y)]}{iΔy} = -i \frac{∂u}{∂y} + \frac{∂v}{∂y}$

"If ``f'(x)`` exists" i.e. for ``f(x)`` to be "analytic" we must have

$\frac{∂u}{∂x} = \frac{∂v}{∂y} \qquad\text{and}\qquad \frac{∂v}{∂x} = -\frac{∂u}{∂y}$
"""

# ╔═╡ 4655b7f7-c03e-497b-9f7a-f559beb370c9
md"""
### Example

``f(z) = z^2``

``u(x,y) = x^2 - y^2``

``v(x,y) = 2xy``

``\frac{∂u}{∂x} = 2x \qquad \frac{∂v}{∂y} = 2x``

``\frac{∂v}{∂y} = 2x \qquad \frac{∂u}{∂y} = -2y``

Analytic
"""

# ╔═╡ f7f2c1fe-dfac-4b24-bee8-a03427b777ba
md"""
### Example

``f(z) = z^*``

``u(x,y) = x``

``v(x,y) = -y``

``\frac{∂u}{∂x} = +1 \qquad \frac{∂v}{∂y} = -1``

Not analytic (anywhere)
"""

# ╔═╡ 5919f2c5-8bf2-4df1-b466-55a64259ff07
md"""
### Theorem

If ``f'(z)`` exists at a point ``z``, then it is infinitely differentiable @ ``z``

*Proof.*
``f(z) = u + iv`` where ``\frac{∂u}{∂x} = \frac{∂v}{∂y}`` and ``\frac{∂v}{∂x} = -\frac{∂u}{∂y}`` i.e. ``\frac{∂u}{∂x} - \frac{∂v}{∂y} = 0`` and ``\frac{∂v}{∂x} + \frac{∂u}{∂y} = 0``.
Now ``f'(z) = \frac{∂u}{∂x} + i \frac{∂v}{∂x} = \frac{∂v}{∂y} - i\frac{∂u}{∂y}``

$\frac{∂}{∂x} \frac{∂u}{∂x} - \frac{∂}{∂y} \frac{∂v}{∂x} = \frac{∂}{∂x} \frac{∂v}{∂y} - \frac{∂}{∂y} \frac{∂v}{∂x} = 0$

$\frac{∂}{∂x} \frac{∂v}{∂x} + \frac{∂}{∂y} \frac{∂u}{∂x} = -\frac{∂}{∂x} \frac{∂u}{∂y} + \frac{∂}{∂y} \frac{∂u}{∂x} = 0$
"""

# ╔═╡ d3f4a8bb-609c-4640-89d2-024fd3323a39
md"""
### Integration of Complex Functions
"""

# ╔═╡ 0b04d1f9-622a-49df-adb9-0d029360f481
md"# Apr 14"

# ╔═╡ b1306733-c39b-4407-b787-5e39a6002bf6
md"""
### Review: Functions of a Complex Variable

$w = f(z) = u(x,y) + iv(x,y)$

$z = x + iy$

"complex plane"

Also: ``z = re^{i\phi}``

**Analytic Function**

$f'(z) = \frac{∂u}{∂x} + i \frac{∂v}{∂x} = \frac{∂v}{∂y} - i \frac{∂u}{∂y}$

$\implies \frac{∂u}{∂x} = \frac{∂v}{∂y} \qquad \frac{∂v}{∂x} = -\frac{∂u}{∂y}$

"Cauchy-Riemann equations"

**Examples**

``f(z) = z^2`` ✓

``z f(z) \implies z^n \quad n=0,1,… \implies f(z) = \sum_{n=0}^∞ c_n z^n`` ✓

``f(z) = z^*`` X
"""

# ╔═╡ 5aaddb37-735e-4456-b94d-4179de8c8434
md"""
### Contour Integration

$∫_{z_1}^{z_2} f(z) \,dz = \text{``sum of little things"}$

$\begin{align*}
∫_C f(z) \,dz &= ∫_C [u + iv][dx + i\,dy] \\
&= ∫_C (u \,dx + v \,dy) + i ∫_C (v \,dx + u \,dy)
\end{align*}$

How do you do the integrals?

1. Path is ``\displaystyle y = y(x) \implies ∫_C = ∫_{x_1}^{x_2} \text{ etc}``…
   OR ``x`` or ``y`` fixed ``⟹`` only ``dy`` or ``dx`` varies

2. Parameterize contour ``C``, i.e., ``x = x(t)``, ``y = y(t)``, ``x_1 = x(t_1)``, ``x_2 = x(t_2)``, etc…

$\implies ∫_C (u \,dx - v \,dy) = ∫_{t_1}^{t_2} \left[u \frac{dx}{dt} - v \frac{dy}{dt}\right] dt$

$\implies ∫_C (v \,dx + u \,dy) = ∫_{t_1}^{t_2} \left[v \frac{dx}{dt} + u \frac{dy}{dt}\right] dt$
"""

# ╔═╡ 84e23df5-270e-44e7-9e4f-c3b2ea80ac0c
md"""
### Example: ``C`` = semicircle

$x(t) = \cos{t}$

$y(t) = \sin{t}$

$0 ≤ t ≤ \pi$

1. ``f(z) = z \implies u = x \quad v = y``

$\begin{align*}
∫_C (u \,dx - v \,dy) &= ∫_0^\pi \left[\cos{t} \, \left(-\sin{t}\right) - \sin{t} \, \left(\cos{t}\right)\right] \\
&= -∫_0^\pi 2 \sin{t} \cos{t} \,dt \\
&= \left.+\frac{1}{2} \cos{2t} \,\right|_0^\pi = 0
\end{align*}$

$\begin{align*}
∫_C (v \,dx + u \,dy) &= ∫_0^\pi \left[\sin{t} \, \left(-\sin{t}\right) - \cos{t} \, \left(\cos{t}\right)\right] \\
&= -∫_0^\pi \cos{2t} \,dt \\
&= \left.\frac{1}{2} \sin{2t} \,\right|_0^\pi = 0
\end{align*}$

$\implies ∫_C z \,dz = 0$

2. ``\displaystyle f(z) = \frac{1}{z} = \frac{1}{z} \frac{z^*}{z^*} = \frac{x - iy}{x^2 + y^2} = x - iy \quad\text{on}\quad ℂ``

   ``\displaystyle f(z) = \frac{1}{z} \implies u = x \quad v = -y \quad\text{on}\quad ℂ``

$\begin{align*}
∫_C (v \,dx + u \,dy) &= ∫_0^\pi \left[-\sin{t} \, \left(-\sin{t}\right) - \cos{t} \, \left(\cos{t}\right)\right] \\
&= -∫_0^\pi dt = \pi
\end{align*}$

$\implies ∫_C \frac{1}{z} \,dz = i \pi$

**Easy way:** ``z = e^{it} \qquad dz = ie^{it} \,dt``

$∫_C z \,dz = ∫_0^\pi e^{it} i e^{it} \,dt = i ∫_0^\pi e^{2it} \,dt = 0$

$∫_C \frac{1}{z} \,dz = ∫_0^\pi e^{-it} ie^{it} \,dt = i ∫_0^\pi dt = i \pi$
"""

# ╔═╡ 011c27df-6565-4a61-97ba-8daceb327be8
md"""
### Closed Loop Contours

$C → \text{circle} \qquad z = e^{it} \qquad 0 ≤ t ≤ 2\pi$

$∮_C z \,dz = 0 \qquad\text{and}\qquad ∮_C \frac{1}{z} \,dz = 2\pi i$

Integral of any analytic function about a closed loop is zero.
"""

# ╔═╡ 29e031d0-6104-45b5-8550-157ed0dff808
md"""
### Cauchy Goursat Theorem

$∮_C f(z) \,dz = ∮_C (u \,dx - v \,dy) + i ∮_C (v \,dx + u \,dy)$

$\vec{A} = u \hat{i} - v \hat{j} \qquad \vec{B} = v \hat{i} + u \hat{j}$

$d\vec{r} = dx \,\hat{i} + dy \,\hat{j}$

$\implies ∮_C f(z) \,dz = ∮_C \vec{A} ⋅ d\vec{r} + i ∮_C \vec{B} ⋅ d\vec{r}$

$∮_C \vec{A} ⋅ d\vec{r} = ∫_S (\vec{∇} × \vec{A}) ⋅ \hat{k} \,dS$

$(\vec{∇} × \vec{A})_z = \frac{∂}{∂x} (-v) - \frac{∂}{∂y} (u) = 0 \text{ if } f(z) \text{ analytic!}$

$∮_C \vec{B} ⋅ d\vec{r} = ∫_S (\vec{∇} × \vec{B}) ⋅ \hat{k} \,dS$

$(\vec{∇} × \vec{B})_z = \frac{∂}{∂x} (u) - \frac{∂}{∂y} (v) = 0 \text{ if } f(z) \text{ analytic!}$

If ``f(z)`` is analytic for all ``z`` within a closed contour ``C`` then ``\displaystyle ∮_C f(z) \,dz = 0``
"""

# ╔═╡ 9aeb3ae1-cd9c-4416-b15c-73ca9577330c
md"""
### Cauchy Integral Theorem

Suppose there is a "simple pole" ``z_0``.

$∮_C \frac{f(z)}{z - z_0} \,dz = \,?$

Consider tiny loop

$z = z_0 + Re^{it} \qquad 0 ≤ t ≤ 2r \qquad R → 0$

Then

$\begin{align*}
∮_C \frac{f(z)}{z - z_0} \,dz &= ∮_{\text{tiny loop}} \frac{f(z)}{z - z_0} \,dz \\
&= f(z_0) ∫_0^{2\pi} \frac{1}{Re^{it}} Ri e^{it} \,dt \\
&= if_0 ∫_0^{2\pi} dt \\
&= 2\pi i f(z_0)
\end{align*}$
"""

# ╔═╡ 1080223f-8ed7-4178-9019-2b7a3a671906
md"""
### Practical Mathematics

$\begin{align*}
\mathcal{I} &= ∫_0^∞ \frac{\cos{x}}{1 + x^2} \,dx \\
&= \frac{1}{2} ∫_{-∞}^{∞} \frac{\cos{x}}{1 + x^2} \,dx \\
&= \frac{1}{2} ∫_{-∞}^{∞} \frac{\cos{x} + i \sin{x}}{1 + x^2} dx \\
&= \frac{1}{2} ∫_{-∞}^{∞} \frac{e^{ix}}{1 + x^2} dx \\
&= \frac{1}{2} ∫_C \frac{e^{iz}}{z^2 + 1} \,dz \\
&= \frac{1}{2} ∮ \frac{e^{ix}}{(z + i)(z - i)} \,dz = \left.2\pi i \frac{1}{2} \frac{e^{iz}}{z + i} \right|_{z = +i} = \frac{\pi}{2e}
\end{align*}$

- This is how you evaluate Green's functions
"""

# ╔═╡ ad654017-7fcf-447a-92a5-eea3071afd55
md"# Apr 19"

# ╔═╡ 23fc0aa5-31ed-4529-9e68-70806d3093c1
md"""
### Probability Distributions

$\mathcal{P}(m) \implies \sum_m \mathcal{P}(m) = 1$

$\mathcal{P}(x) \, dx \implies ∫ \mathcal{P}(x) \,dx = 1$
"""

# ╔═╡ ad69be0f-fb1e-4774-bdeb-2dc29dfaa2df
md"""
### Illustration: Throwing Dice

- ``p = 1/6`` probability that any one die has "one"

- Throw a handful of six dice ``≡ n``

- Outcomes: 0,1,2,3,4,5,6

- **Probability of ``m = 0``**: ``q = 1 - p = 5/6 \implies \mathcal{P}(0) = (5/6)^6 = 0.335``

- **Probability of ``m = 1``**: ``\mathcal{P}(1) = (1/6)(5/6)^5 × 6 = 0.402``

- **Probability of ``m = 2``**: ``\mathcal{P}(2) = (1/6)^2(5/6)^4 × \begin{pmatrix} 6 \\ 2 \end{pmatrix} = 0.201``
"""

# ╔═╡ 405c57e4-7545-4928-9803-7f3aea0e7901
md"""
### How to count

1. Permutations of ``n`` things ``n ⋅ n - 1 ⋅ n - 2 ⋅ ⋯ ⋅ 2 ⋅ 1 = n!``
   ⟹ Gibbs Paradox

2. Combinations ``n``--things ``m`` at a time ``n ⋅ (n - 1) ⋯ (n - m + 1) = \frac{n!}{(n - m)!}`` ``⟹`` ``\begin{pmatrix} n \\ m \end{pmatrix} = \frac{n!}{m! (n - m)!}``
"""

# ╔═╡ 7bf6ae56-4974-4f68-a93c-5af9383b223c
md"""
### Binomial coefficient

$(p + q)^n = \sum_{m=0}^n \begin{pmatrix} n \\ m \end{pmatrix} p^m q^{n - m}$
"""

# ╔═╡ 1ed2c47c-5758-4a2c-8f07-728e32098ff9
md"""
### Stirling's Approximation

$n! ≅ n^n e^{-n} \sqrt{2 \pi n}$

Recall

$\Gamma(n + 1) = ∫_0^∞ x^n e^{-x} \,dx = n!$

$y ≡ x - n$

$x^n e^{-x} = e^{n \log{x}} e^{-x} = e^{n \log{(n + y)}} e^{-x}$

$\log{(n + y)} = \log{[n(1 + y/n)]} = \log{n} + \log{(1 + y/n)}$

$\log{(1 + y/n)} = \frac{y}{n} - \frac{y^2}{2n^2}$
"""

# ╔═╡ 9b93bf9c-c9cc-40ed-b3f1-a9d5716d0d69
md"""
### Binomial Distribution

- Throw some number of handfuls of ``n`` dice

- Probability of a micro-outcome = p

- Probability of m ≤ n micro-outcomes

$\mathcal{P}_{\text{Bin}}^{(p)}(m) = \begin{pmatrix} n \\ m \end{pmatrix} p^m q^{n-m} \quad q = 1 - p$

$\sum_{m=0}^n \mathcal{P}_{\text{Bin}}^{(p)}(m) = \sum_{m=0}^n \begin{pmatrix} n \\ m \end{pmatrix} p^m q^{n-m} = (p + q)^n = 1$
"""

# ╔═╡ 3f90befa-a421-4571-bcd5-7e06b26bf782
md"""
### Poisson Distribution

Limit of ``\mathcal{P}_{\text{bin}}^{(p)}(m)`` for ``p → 0,n → ∞``

But with ``\mu ≡ np`` being **constant**

$\underset{n → ∞}{\lim_{p → 0}} = \frac{n!}{m! (n - m)!} p^m (1 - p)^{n - m}$

Pull ``1/m!`` out of the limit, and approximate ``n! / (n - m)! = n (n - 1) ⋯ (n - m + 1) ≈ n^m``.
So the limit becomes

$= \frac{1}{m!} (np)^m \lim_{p → 0} (1 - p)^n$

$\lim_{p → 0} (1 - p)^n = \lim_{p → 0} (1 - p)^{-np / (-p)} = \left[\lim_{p → 0} (1 - p)^{-1 / p}\right]^{-\mu} = e^{-\mu}$

$\mathcal{P}_{\text{Poiss}}^{(\mu)} = \frac{1}{m!} \mu^m e^{-\mu}$

Indeed, the distribution is normalized:

$\sum_{m=0}^∞ \mathcal{P}_{\text{Poiss}}^{(\mu)}(m) = \left[\sum_{m=0}^∞ \frac{1}{m!} \mu^m\right] e^{-\mu} = 1$
"""

# ╔═╡ 8ea86096-506a-401c-8e18-69e65628cc80
md"""
### Gaussian (Normal) Distribution

$\mathcal{P}_{\text{Gauss}}^{(\mu,\sigma)} (x) = \frac{1}{\sigma \sqrt{2\pi}} e^{-(x - \mu)^2 / 2\sigma^2}$

Indeed, the distribution is normalized

$∫_{-∞}^∞ \mathcal{P}_{\text{Gauss}}^{(\mu,\sigma)} (x) \,dx = 1$
"""

# ╔═╡ dffc0cd3-5578-4fb2-b122-d69b6e200576
md"""
### Compare Hist to ``N × \mathcal{P}(m)``

$\frac{1}{N} \frac{ΔN}{Δx} → \frac{1}{N}\frac{dN}{dx} = \mathcal{P}(x)$
"""

# ╔═╡ 97807377-f7fe-4f69-afa1-33aa6c3d807f
md"# Apr 21: Basic Data Analysis"

# ╔═╡ a073412c-c629-4a80-9b01-09e2291ae6b0
md"""
### Statistics

"Data": Array ``\{x_i\}`` ``i = 1,2,…,N``

Mean ``⟨x⟩ ≡ \frac{1}{N} \sum_{i=1}^N x_i``

Variance ``\sigma^2 ≡ ⟨(x-⟨x⟩)^2⟩ = ⟨x^2⟩ - ⟨x⟩^2``
"""

# ╔═╡ a4fb72d3-8a4b-40f0-9fb2-a718a00a8925
md"""
### Distributions

Discrete:

$\sum_{i=1}^N m_i \mathcal{P}(m_i) = ⟨m⟩$

$\sum_{i=1}^N {m_i}^2 \mathcal{P}(m_i) = ⟨m^2⟩$

Continuous:

$∫x\mathcal{P}(x) \,dx = ⟨x⟩$
"""

# ╔═╡ c67f3635-ed33-4946-b3fa-8981899092a6
md"""
### Binomial Distribution: ``⟨m⟩ = np``?

Let ``q = 1 - p``.

$\begin{align*}
⟨m⟩ &= \sum_{m=0}^n m \frac{n!}{m! (n - m)!} p^m q^{n - m} \\
&= \sum_{m=1}^n m \frac{n!}{m! (n - m)!} p^m q^{n - m} \\
&= \sum_{k = 0}^{n - 1} \frac{n!}{k! (n - k - 1)!} p^{k + 1} \\
&= np \sum_{k=0}^{n - 1} \frac{(n - 1)!}{k! (n - 1 - k)!} p^k q^{n - 1 - k} \quad k = m - 1 \\
&= np \sum_{k = 0}^{ℓ} \frac{ℓ!}{k! (ℓ - k)!} p^k q^{ℓ - k} \quad ℓ = n - 1 \\
&= np (p + q)^ℓ = np
\end{align*}$

$\begin{align*}
⟨m^2⟩ &= \sum_{m=0}^n m^2 \frac{n!}{m!(n - m)!} p^m q^{n - m} \\
&= np \sum_{k = 0}^ℓ (k + 1) \frac{ℓ!}{k! (ℓ - k)!} p^k q^{ℓ - k} \\
&= np [ℓp + 1] \\
&= np[(n - 1)p + 1] \\
&= (np)^2 - np^2 + np
\end{align*}$

$\sigma^2 = (np)^2 - np^2 + np - (np)^2 = np(1 - p)$
"""

# ╔═╡ 4c35dc52-5541-43e2-a024-61d946a13de2
md"""
### Poisson Distribution

$\lim_{n → ∞} \lim_{p → 0} \text{ of Binomial Distribution}$

$\mathcal{P}_{\text{Poisson}}(m) = \frac{\mu^m}{m!} e^{-\mu} \qquad \mu = np \text{ stays finite}$

$\sigma^2 = \lim_{n → ∞} \lim_{p → 0} np(1 - p) = \mu$
"""

# ╔═╡ 57e94561-c5db-4158-89fd-4a5b3f8d5364
md"""
### Gaussian Distribution

$\mathcal{P}(x) = \frac{1}{\sigma \sqrt{2\pi}} e^{-(x - \mu)^2/2\sigma^2}$

$∫_{-∞}^∞ x\mathcal{P}(x) \,dx = \mu$

$∫_{-∞}^∞ x^2\mathcal{P}(x) \,dx - \mu^2 = \sigma^2$
"""

# ╔═╡ 7fedda4d-2c41-4570-af20-5ab428905c98
md"""
### Fitting data to models

$\{(x_i,y_i)\} i = 1,2,…,N$

Is ``y = f(x;a_1,a_2,…,a_n)`` e.g. ``f(x;a,b) = a + bx``

1) Assume Gaussian PDF

$\mathcal{P}_i = \frac{1}{\sigma_i \sqrt{2\pi}} e^{-(y_i - f(x_i;\underline{a}))^2/2{\sigma_i}^2}$

$\mathcal{L}(\underline{a}) = \prod_{i=1}^N \mathcal{P}_i$

Minimize

$-\log{\mathcal{L} (\underline{a})} = \log \prod_{i=1}^N (\sigma_i \sqrt{2\pi}) + \frac{1}{2} \chi^2(\underline{a})$

$\chi^2(\underline{a}) = \sum_{i=1}^N \frac{[y_i - f(x_i;\underline{a})]^2}{2{\sigma_i}^2} \tag{9.14}$

"Method of Least Squares"
"""

# ╔═╡ c1e8a343-9122-4a0b-8581-ffc97d09d733
md"""
### Linear Fitting

$f(x;a_1,a_2,…,a_n) = a_1 g_1(x) + a_2 g_2(x) + ⋯ + a_n g_n(x)$

$\chi^2(a_1,a_2,…,a_n) = \sum_{i=1}^N \frac{[y_i - a_1 g_1(x_i) - a_2 g_2(x_i) - ⋯ - a_n g_n (x_i)]^2}{{\sigma_i}^2}$

For ``j = 1,2,…,n``

$\frac{∂}{∂a_j} \chi^2(\underline{a}) = \sum_{i=1}^N \frac{y_i - a_1 g_1 (x_i) - a_2 g_2(x_i) - ⋯ - a_n g_n(x_i)}{2{\sigma_i}^2} (-g_j(x_i)) = 0$

$R_{kj} a_j = b_k \qquad R_{kj} = \sum_{i=1}^N \frac{g_j(x_i)g_k(x_i)}{{\sigma_i}^2} \qquad b_k = \sum_{i=1}^N \frac{y_i g_k(x_i)}{{\sigma_i}^2}$
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.0+0"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.17+2"

[[libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.0.1+0"
"""

# ╔═╡ Cell order:
# ╟─f180024d-eb45-4fa6-b847-99dd42255ae5
# ╟─a2f08dba-0022-4a47-aa91-9a483a9a3f4e
# ╟─0083c9ae-b9a9-4d06-a45a-8b19794ced5b
# ╟─6cec92f4-e298-40fe-9e96-be5b73f90d0f
# ╟─fec0a540-f9a6-40bd-a227-3cdc8a486852
# ╟─0fac4771-c995-44a0-8734-d640ba004172
# ╟─2db4ceb6-85c1-410b-8b25-65b780f65fe1
# ╟─b0d60683-29d0-4c37-8698-aa3fdaf6a36c
# ╟─af3524f9-c1d4-4dbe-8f7d-43deb0b5e427
# ╟─016567dd-495f-42b1-b93f-9dc351b5b3d4
# ╟─38afe980-7fdc-457d-b17b-bc1baa563042
# ╟─452a9102-9933-45d5-b714-80bd4857f703
# ╟─e5cbbf87-24fa-4954-ae23-0231ae924f61
# ╟─fe377e20-013d-4b20-b5fb-26477e4fb66f
# ╠═cfd40ee0-863a-456c-a399-034cf668c1a7
# ╟─9f90861b-1464-43b0-bafa-07123d7290f5
# ╟─56e19cd7-d38a-45d2-98f8-9ae9913a0963
# ╟─71293f35-2b77-4a56-8f8b-bdb4acd36e2f
# ╟─e7e0503a-93d8-417f-a625-44775c38144e
# ╟─9e586ab4-425d-40bb-a09d-52496b871a10
# ╟─80b560e9-6b61-4702-9e45-7eba9dd73210
# ╟─eac06a48-0efe-44cf-8058-4d1a9dc5ebe1
# ╟─a23f6586-2bac-4bee-85c7-52aa23147031
# ╟─59a01b12-4381-4c1f-a09b-68e67f17741f
# ╟─b5be9687-b3fe-46da-9a12-d84c5279f332
# ╟─0ec651ad-8789-44c7-bc0f-339ac9be633c
# ╟─17253926-28d3-459f-bf23-5df40aa1cf2a
# ╟─cc974c24-b98d-4f52-8998-f599d1fe24ab
# ╠═ec877cd8-9640-403a-8d96-e65934f95e3a
# ╟─08841bb0-a555-43ae-9ea5-fe42466690b0
# ╟─814a2b92-ad9f-4df8-8885-7d867e6e2b02
# ╟─867c91f1-406f-4cd1-a21a-ae4947d972d3
# ╟─9c3a932f-c477-4139-a342-9c0fdba3e525
# ╟─ede15602-ef43-401b-8955-f4d53c0cd94a
# ╟─7b9291da-b6d2-451a-9fb9-02459de8108f
# ╟─529a0860-7a7f-4d46-9e09-fea69d422854
# ╟─9c6a7906-4c83-4295-a0d9-44c9932d4575
# ╟─0dbb28ee-8dff-4ac3-8e57-4cc5edc010a7
# ╟─4619d873-2128-4599-80d5-90c4418e23e8
# ╟─22f4ad58-ad72-41a1-8d0a-85d621a44ce0
# ╟─da24a1ea-7428-4ba3-9aef-dd4d9e83c65e
# ╟─af362968-605b-443e-bdaf-304494ce4c17
# ╟─e84bd83a-3e81-496f-8101-598a5df1a437
# ╟─9529b375-08eb-4b63-b86f-be6ed6e62f01
# ╟─4faa1755-628b-4f3c-88ac-958ca6c1d5d7
# ╟─c0fab6b0-e26e-4b29-a2ff-2f0b73c1f14f
# ╟─04057510-b942-49f7-98f7-496d2a0bd93b
# ╟─b2d4f5b3-77bc-4832-a5fd-e0874e407943
# ╟─07c67d8e-a2ce-4ead-a365-82cef19f58c2
# ╟─8da5a61c-6c3f-496c-b1c1-bc5fd1b983dc
# ╟─a586a6d2-4a98-4bef-a333-8bc0d5225962
# ╟─56a8936e-76c3-46c9-ad98-b41938c7fdc2
# ╟─41202a92-e39d-4182-8da1-94825fccf5d4
# ╟─e6648fd2-36c7-4884-b878-95e07f6a3cd5
# ╟─08ba081d-8849-4f1d-8294-4d44d942cf8f
# ╟─ca956101-46bd-47de-bdbb-cf2b3f0e16b3
# ╟─786678be-4417-44c8-8845-4ca53a23c7f3
# ╟─9d4c5149-32dd-4821-a0a2-60a07ba224d2
# ╟─7d8c73a5-e5fc-4474-a6be-1da5371789a9
# ╟─80fae2f6-5341-4059-967e-361faed5b005
# ╟─25e583d6-5849-477e-bada-4b947fdda3e3
# ╟─508ad5f9-f2c1-4113-97da-80271af1c141
# ╟─ad131026-bb70-4668-9086-df0eb3c00315
# ╟─1a77d7be-be54-4f7b-af3b-911d196d5686
# ╟─be448b4a-d2b1-4efb-8cab-3f8eea347aa5
# ╟─f666e482-e32a-44ce-aaf3-9a28e19341da
# ╟─f678d631-1505-40d6-8c6b-3f0525971710
# ╟─1886402f-1d9a-4078-aabe-d5c6f65e06d6
# ╟─29ada7f3-7a8d-4965-b720-52341b3e5c26
# ╟─31ea2128-d49c-415b-9f29-395c99cf35a4
# ╟─afb1caee-9c85-485c-9f8f-8eba0e265682
# ╟─10b65598-4275-469c-b6bb-af955d4cf14b
# ╟─da6675ca-509a-4fef-a682-1d8bd4d917ad
# ╟─ac6b3db3-d966-4337-951c-6deebda09985
# ╟─eaec02e6-f51f-4dae-9550-29d43301d9f1
# ╟─7ee02b12-4fb7-4c32-8298-057f8d3be8a3
# ╟─fad867c2-69d2-4e3e-a859-1028575c6645
# ╟─b0cb971d-82d3-4f5f-ad8c-9f94a2fee39f
# ╟─f3a314d7-6248-4c46-88b0-d9f1577c8e8f
# ╟─09f74123-81c9-4139-9d62-07b53c775682
# ╟─7b5b0915-5feb-4a3b-bd41-6d9d4e29502a
# ╟─13824489-e871-4602-a9c2-17aef5663c81
# ╟─7b595e9e-0378-4cca-8742-8c48aa9393de
# ╟─022bc3bc-8b7e-4b49-9e2d-794a79f1e773
# ╟─52751a55-6685-48af-a82d-cb1f5afd1e42
# ╟─d06b7bad-4d71-44ef-9926-1bae058aca2a
# ╟─ca3a71f7-e67c-40bd-86d5-f299ba0efcda
# ╟─974722e3-6cc6-40b1-82af-a5e7fb4adf77
# ╟─ce59ae2e-378a-4440-8dac-11b8a12c00f9
# ╟─aae4445a-9a89-4bc9-90db-400546a305f9
# ╟─43ae12ba-658c-4357-a902-f5d8cd056c89
# ╟─79a669cd-46f0-4962-9f80-98d3765a3222
# ╟─c57190b8-ac0b-421b-99c0-f0bb365bcc25
# ╟─9dda1a4e-bc4f-4cf2-855e-e40af12625fe
# ╟─f040d67f-5aef-4472-936e-62e73fe2df61
# ╟─7fcc94c6-dd1e-48b3-b577-9bee09902d6d
# ╟─877c2833-ac9d-4535-8c22-f01fe3d8b238
# ╟─5f78e3cf-eaf7-4682-8ae9-8d305b0b0110
# ╟─febb184d-097d-49dc-a53e-8cdc45554537
# ╟─b2239d1f-e312-43fa-93d7-88f7b785439c
# ╟─a4434de7-66e2-4eba-92f1-755f488c44b4
# ╟─dd0075c3-5870-4b80-af86-f6f2acdc8761
# ╟─a68b8c44-232d-4f88-a425-598fe94c398f
# ╟─459c11c6-d3ab-4b67-b4f8-9cb7b00cdd18
# ╟─db576dd3-95b4-45fa-a65b-5743994d28ab
# ╟─aa77a0aa-956c-4f58-9fd2-68e598f57220
# ╟─0d39c393-3259-4a47-b172-faff2562832a
# ╟─68feb332-cf02-4ecc-8c77-3b79879fb37e
# ╟─cf4b46d6-1280-46e2-8c0c-364e02c2f0f0
# ╟─251a3471-1fcc-40b2-a0e3-5c0e5f448d5e
# ╠═1ae14111-64fd-476e-a824-1598c73d6291
# ╟─a58cd60b-e4a9-4514-8f1e-2103d5905dff
# ╟─707dbaec-72f0-4056-aae5-0908d422df7d
# ╟─8c947ecc-5a8a-465d-a4b7-0476ee596c17
# ╟─048c7142-dd90-4282-b1c9-58cc24285175
# ╟─1bf2648b-f28c-4ba0-8f3c-6e99ecb8b171
# ╟─e92dabd9-61c8-4808-adf1-03c64455934e
# ╟─302079f5-3e8a-4d9d-a65d-c0dcdc6846d1
# ╟─2882854b-f2b4-4d49-90e5-8edaa8ae29ca
# ╟─b97921c6-aa62-4371-95c4-1b72f23a9de9
# ╟─5e42f90e-e0aa-497e-901b-1d78a8a92821
# ╟─42d4bdd7-5a9a-4002-877a-1e715a7c4329
# ╟─50d002a9-0d7a-4e17-9324-f4f7f23f2745
# ╟─6ffc0165-bd05-4c67-8856-3024a8f9c2fb
# ╟─64780394-5a1f-41ee-9e54-da766b627a09
# ╟─2555c4e0-0d70-4cd1-83cd-6e93817e6f42
# ╟─650e6cf5-ecc3-4d4b-95c6-76f2bbc220b4
# ╟─48e6c102-a375-4bee-a47c-e3f14f8c50ab
# ╟─0b29247a-a33c-4b0e-8b9a-37d77e195bf9
# ╟─706b4478-c1c7-4739-aac1-01d99f678687
# ╟─2d19c0ce-9c5e-4f1e-985a-1ef7680338b4
# ╟─b97e0a57-dcce-428b-8f28-ad695de4cfc2
# ╟─031ff5f6-add6-4cd1-8296-f1140c3a4830
# ╟─fcf58292-3df6-4c58-a2d7-9004eda2ec24
# ╟─7d93d4d0-4759-4a3a-b11a-a2140c1bf262
# ╟─bbd53351-45db-49ed-8d42-7460a5c889c4
# ╟─78bb96fc-bf69-4854-b257-0a3e86dd6f0b
# ╟─29240e0b-129f-4b53-9ba7-3b2c33a58fa0
# ╟─b15f62cd-cc77-4e45-a3ac-62af0e596a4f
# ╟─d13190d2-36b7-4bd5-945a-66c683e726a9
# ╟─b7ae0fb8-1854-4039-adbc-8306e8dbacc6
# ╟─57ac2b6a-0185-4d6f-ae5b-f02e805d0bd2
# ╟─1ff69e02-759d-4184-992d-3f81751830f8
# ╟─e292a411-eb5f-4762-9a9a-2c97b7978f71
# ╟─c5639bc2-00fb-43a4-8855-e4425171f26e
# ╟─96d6164d-1a56-48ac-8ea1-9b80faadbeca
# ╟─7f28ac40-96f5-4dad-94fb-240d79240ed3
# ╟─591c226c-9720-41cd-9bf0-a076682c9a0f
# ╟─86d9e4b1-5ed9-4384-baab-9b8254312f23
# ╟─3925d3a9-e91c-420d-8af1-f242bb683bee
# ╟─8842da39-25ff-418c-a5c0-4ad1cde07382
# ╟─fbee0242-3830-4002-92ae-e4563937708e
# ╟─74dfe67c-c23f-47e8-80d2-77329ffeca6b
# ╟─73ba7090-2f93-4f21-b359-fe554ab4ca2d
# ╟─868e9b38-eb25-49dd-b312-0431775530c8
# ╟─7e08ba69-171c-44c7-b56e-bcb1f45b384c
# ╟─352f9c42-8f81-44aa-a981-1e7e4aa332e8
# ╟─efbb3fbd-52b9-45f5-a409-4270792a3a5b
# ╟─5a9c21ea-be0b-4a13-947d-56b3170c7d4f
# ╟─cd929bfa-32b9-416b-bc20-a75ef8f24199
# ╟─943b7f3a-e763-4f2e-8aea-34ded6895b94
# ╟─f0972e43-21d5-4df4-8152-d8243ece923c
# ╟─378139bd-4b8e-470e-9e29-2e6dd7fa3832
# ╟─25c292a8-cbfb-4440-b2d9-cee39e50592c
# ╟─4e552f3a-a312-485a-b90e-7451b8c7b8ea
# ╟─762a96fc-9711-4e1d-8868-0f2def08d296
# ╟─e086eecb-7fa6-4faf-b2ee-99b76d3ae62b
# ╟─f57cbec8-dd09-42f3-acf6-90dda9746305
# ╟─3da7a1d6-7d8e-41b4-93b8-bd20482bc8cc
# ╟─76f8c5f4-1d59-45cd-80eb-f1ea67d382d7
# ╟─6b5b5f60-6504-4721-a9f0-0410be8468c3
# ╟─f6172edb-95f1-47fc-9d6d-9a928019b2e0
# ╟─7bb721ad-4004-4863-b184-920752ef1fbe
# ╟─12c28dbc-3c05-4b74-be04-ae19eabf7796
# ╟─21b30ed9-578f-40a5-991a-2524d0f4203d
# ╟─3042319b-9d92-423f-92ce-6d9a7abf76e3
# ╟─1a9183c5-93ef-4b0c-bfd7-76615a658ebc
# ╟─6fd005c4-af7a-461e-9921-484e14eb032d
# ╟─cd6bd831-d6c9-45ce-9da5-bc7d84578dbd
# ╟─1c83bb8b-ebfc-45fb-aaed-7edc313c64e2
# ╟─5f57a52c-d675-479d-bc00-bf43c45f12ec
# ╟─05854e03-b9a6-49dd-99fc-4e72041b5a83
# ╟─68791d26-c968-4749-aec6-703ae9ed7eb1
# ╟─521be6e5-78df-49ab-9c59-0e51dd234902
# ╟─8c47ab87-3b86-4a7a-8a61-13b648e2c783
# ╟─6d257861-96b5-4270-bc05-6f110c719228
# ╟─61c3489c-861e-4d99-9e28-8bb79a6e3196
# ╟─4e39b063-3101-43e7-a600-d505f4d52b22
# ╟─88f11691-8abe-4a8a-a18d-434612c1ff3e
# ╟─7685eb15-15ac-4cf1-a460-903fa5fcb01e
# ╟─c3a57abd-988e-4c38-a299-8a1b6ce58c3b
# ╟─f6acbfe1-e886-45ee-b34a-dc4f351feceb
# ╟─17bc08ca-e635-4f77-bb06-70277059ff7f
# ╟─1c663747-fd44-4da4-b49d-6ce9bb425296
# ╟─459664ae-1c40-4f65-ab2f-04416bc718e1
# ╟─6ea5b9db-64bd-47a2-a55b-6eb4328da774
# ╟─83ce7ef4-3e60-4975-8c49-0d62e68313fd
# ╟─f9c6d69a-9c1c-4075-941a-8b6c01fe2e11
# ╟─d969e250-c9fa-4193-b569-e1bf8d84887f
# ╟─f9c9d34f-b7a3-4941-a1e9-85eb84c4b07c
# ╟─3dbc3e1a-ddd5-4c8e-a494-cbc0db27339b
# ╟─8930c47d-fbed-4229-8044-8f718250c945
# ╟─72ff8d9a-de68-4119-9e9e-b0bd31860915
# ╟─299ee457-3b55-4934-8722-989a4210f5fc
# ╟─47d64682-8da1-4fa4-b99e-430a21c620e1
# ╟─962712a9-80f7-462e-8ea1-4ce66d21a22b
# ╟─00277d5e-af18-4f26-b0a3-0224d13edd75
# ╟─9b461779-3685-4080-8c6a-b16526b6c725
# ╟─46fce038-4b7e-451c-8a39-5251066146ad
# ╟─f5312bd4-bcbb-4cfd-9909-a782dae245fb
# ╟─47f2d779-3ac6-437b-b7cc-01f6c0c626b9
# ╟─db7120bc-943c-415e-9fed-95cc08c5f99c
# ╟─d17404fe-78b6-48b6-930d-1fefa8feb5ee
# ╟─15b39ae1-0441-421f-b7a3-67cb1615d88e
# ╟─4dad0ea2-a030-44a4-88d2-943e0492927f
# ╟─d1337935-259e-4204-827b-f4873e8943b2
# ╟─f3d13905-7908-4c8c-aa72-72b7a2a1e4f1
# ╟─fc5e3ff6-795b-47ee-bb1c-cd38a0a600f1
# ╠═d7514964-ad59-49b8-a1a9-872369ba2b73
# ╟─1f071dc2-cb27-43aa-941e-afc0cda645b0
# ╟─9b87a959-49c7-4199-b236-b2cc43a23542
# ╟─fd4c97c3-0316-459c-af43-608ba0b78a34
# ╟─eb5ef859-0847-4419-bfd8-8c8e1c213a66
# ╟─25f65a89-2660-41a9-b2d6-17cc5c810306
# ╟─b7ff5bec-0f5f-47d3-9951-0d274e0186f2
# ╟─0f26bbf1-3ecc-4604-8bb8-cc437a0f4c33
# ╟─dd904630-22b5-4ad2-a339-e3feb0dcdb0d
# ╟─540dcb1a-8ce7-414c-beb2-12e36e578ba8
# ╟─4bc90404-fd79-45bf-8efd-19bad6479091
# ╟─e0d4e469-afb8-4a2a-b4c3-736899133613
# ╟─ec782f70-1c5c-4486-b28d-dc591e2e91e0
# ╟─e0148f1a-d338-4805-8a82-d09df77fadca
# ╟─b18f8310-b8ab-4711-a0dd-c11fb59f4551
# ╟─8cad86fe-07b6-492a-9875-f1d81be7fc97
# ╟─4655b7f7-c03e-497b-9f7a-f559beb370c9
# ╟─f7f2c1fe-dfac-4b24-bee8-a03427b777ba
# ╟─5919f2c5-8bf2-4df1-b466-55a64259ff07
# ╠═d3f4a8bb-609c-4640-89d2-024fd3323a39
# ╟─0b04d1f9-622a-49df-adb9-0d029360f481
# ╟─b1306733-c39b-4407-b787-5e39a6002bf6
# ╟─5aaddb37-735e-4456-b94d-4179de8c8434
# ╟─84e23df5-270e-44e7-9e4f-c3b2ea80ac0c
# ╟─011c27df-6565-4a61-97ba-8daceb327be8
# ╟─29e031d0-6104-45b5-8550-157ed0dff808
# ╟─9aeb3ae1-cd9c-4416-b15c-73ca9577330c
# ╟─1080223f-8ed7-4178-9019-2b7a3a671906
# ╟─ad654017-7fcf-447a-92a5-eea3071afd55
# ╟─23fc0aa5-31ed-4529-9e68-70806d3093c1
# ╟─ad69be0f-fb1e-4774-bdeb-2dc29dfaa2df
# ╟─405c57e4-7545-4928-9803-7f3aea0e7901
# ╟─7bf6ae56-4974-4f68-a93c-5af9383b223c
# ╟─1ed2c47c-5758-4a2c-8f07-728e32098ff9
# ╟─9b93bf9c-c9cc-40ed-b3f1-a9d5716d0d69
# ╟─3f90befa-a421-4571-bcd5-7e06b26bf782
# ╟─8ea86096-506a-401c-8e18-69e65628cc80
# ╟─dffc0cd3-5578-4fb2-b122-d69b6e200576
# ╟─97807377-f7fe-4f69-afa1-33aa6c3d807f
# ╟─a073412c-c629-4a80-9b01-09e2291ae6b0
# ╟─a4fb72d3-8a4b-40f0-9fb2-a718a00a8925
# ╟─c67f3635-ed33-4946-b3fa-8981899092a6
# ╟─4c35dc52-5541-43e2-a024-61d946a13de2
# ╟─57e94561-c5db-4158-89fd-4a5b3f8d5364
# ╟─7fedda4d-2c41-4570-af20-5ab428905c98
# ╠═c1e8a343-9122-4a0b-8581-ffc97d09d733
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
