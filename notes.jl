### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 1e6c2bda-72eb-11ec-1564-69b9d6573fc6
begin
	md"# Course Notes for PHYS 2502 Mathematical Physics"
end

# ╔═╡ b700e763-b702-44c1-8631-5ad30eacebc4
md"# Basic Concepts"

# ╔═╡ d224cade-8d3f-4224-b6ce-7334e11a2133
md"""
## Fundamentals

Variable names such as ``x, y, z, u, v, w, …`` are dummies.
They don't mean anything until they are explicitly given meaning.
"""

# ╔═╡ de648e61-626f-491f-8239-977d625848cb
md"### Numbers"

# ╔═╡ 67d7b67d-1299-4c49-af61-5bc0dae57d97
md"""
**Definition.**
A **number** is used to measure quantities in physics.
"""

# ╔═╡ 351646a9-c172-40fd-9173-8bf9bf38498a
md"""
**Example.**
There are certain sets of numbers, e.g., integers ``ℤ``, rational numbers ``ℚ``, real numbers ``ℝ``, and complex numbers ``ℂ``.
If we let there be some number ``x`` such that ``x ∈ ℝ`` we say that ``x`` is some real number.
"""

# ╔═╡ d50a2435-6e9f-4296-82a3-0641d0d4fd1e
md"""
**Example.**
There are special sets of numbers.
For example ``ℝ^2`` is the set of pairs of real numbers and ``ℝ^3`` is the set of triples of real numbers.
"""

# ╔═╡ d900edcd-decb-4c15-91ef-dcf18788ea16
md"#### Complex numbers"

# ╔═╡ e8906718-272f-4cd3-bd63-e99e97955a85
md"""
**Definition.**
An **imaginary number** ``i`` is defined as the square root of ``-1``, i.e., ``i = \sqrt{-1}``.
"""

# ╔═╡ e1dedc72-ab3e-43f1-885e-75a08bb1f402
md"""
**Definition.**
A **complex number** ``z ∈ ℂ`` can be written as ``z = x + iy`` where ``x ∈ ℝ`` and ``y ∈ ℝ``.
We refer to ``x`` as the **real part** of ``z``, denoted ``ℜ(z)``.
We refer to ``y`` as the **imaginary part** of ``z``, denoted ``ℑ(z)``.
"""

# ╔═╡ 0d54abd8-dc15-4a46-ac5e-d0fff6b18df7
md"""
**Definition.**
The **complex conjugate** ``z^*`` of a complex number ``z = x + iy`` is ``z^* = x - iy``.
"""

# ╔═╡ a026c7fa-f960-43a9-96a7-37cb65450096
md"""
**Definition.**
The **modulus** of a complex number ``z = x + iy`` is ``|z| = \sqrt{x^2 + y^2}``.
"""

# ╔═╡ be7bc6d7-d6fc-4c73-9692-0b7bb1a86052
md"""
**Example.**
The multiplication of two complex numbers ``z_1 = x_1 + iy_1`` and ``z_2 = x_2 + iy_2`` can be written as

$z_1 z_2 = (x_1 + iy_1)(x_2 + iy_2) = (x_1 x_2 - y_1 y_2) + i(x_1 y_2 + x_2 y_1)$

Note that ``z_1 z_2 = z_2 z_1``, i.e., complex multiplication commutes.
Also note that ``z^* z = zz^* = |z|^2``.
"""

# ╔═╡ 3bd94b4c-bf5f-4ba5-ae54-bbf6b880c66e
md"""
**Example.**
The division of complex numbers is best understood using the modulus.
For ``z_1 = x_1 + iy_1`` and ``z_2 = x_2 + iy_2``, we write

$\frac{z_1}{z_2} = \frac{z_1}{z_2} \frac{{z_2}^*}{{z_2}^*} = \frac{1}{|z_2|^2} z_1 {z_2}^*$

and division of complex numbers reduces to multiplication.
"""

# ╔═╡ b8fec05a-8431-4a14-8ed8-1e59365f50db
md"### Functions"

# ╔═╡ f6d11d5d-3d92-4e2e-adc1-93b5f0c24c2a
md"""
**Definition.**
A **function** is a relation that maps from one set ``X`` onto itself or onto some other set ``Y``.
"""

# ╔═╡ 73a66dea-f2d8-4118-b93e-49751bbc7013
md"""
**Example.** A function mapping from the real number system to itself can be written as ``f : ℝ → ℝ``. A function mapping from two dimensional space onto the real numbers can be written as ``g : ℝ^2 → ℝ``.
"""

# ╔═╡ 9e2e73e5-11f7-4b1f-82e8-f9ac1f5d82fe
md"### Sets"

# ╔═╡ 7c011c06-8508-4c3b-a2f0-aabb6688b532
md"""
**Definition.**
A **set** is a collection of objects.
"""

# ╔═╡ 16eb6ecb-a28e-4efc-bae6-14337cb5bfa1
md"""
**Example.**
The set of real numbers, ``ℝ`` and the set of integers ``ℤ`` are both sets. The set of integers is a subset of the real numbers, i.e., ``ℤ ⊂ ℝ``.
"""

# ╔═╡ d8153c23-06d5-4dc5-8f7f-6e538e2d0729
md"### Groups"

# ╔═╡ 4045310a-2e32-4806-a527-16f73ad64dac
md"""
**Definition.**
A group ``G`` is a pair of a set, e.g., ``\{x, y, z, …\}`` and a binary operation ``∘`` between the elements of the set, such that the set and binary operation satisfy the *group axioms*.
"""

# ╔═╡ 0f5c4782-2038-49bc-ada2-1cfa4635d683
md"""
**Definition.**
If a group's binary operation is commutative, then the group is considered to be **Abelian**.
"""

# ╔═╡ 14aa2d2c-1523-48de-87bb-6301ddf0ad36
md"""
**Group Axioms.**
A set and a binary operator form a group if the following "group axioms" are satisfied:

- There exists an identity element ``𝟙 ∈ G`` such that for any ``x ∈ G``, ``x ∘ 𝟙 = x = 𝟙 ∘ x``.

- For any ``x ∈ G`` there exists an inverse element ``x^{-1} ∈ G`` such that ``x ∘ x^{-1} = 𝟙 = x^{-1} ∘ x``

- For any ``x, y, z ∈ G``, ``x ∘ (y ∘ z) = (x ∘ y) ∘ z``. That is, the binary operation is associative.
"""

# ╔═╡ eb9a5d60-8738-4254-ac26-55fc96c203b0
md"""
**Example.**
A simple example of a group is the real numbers ``ℝ`` under addition, e.g., ``G = (ℝ, +)``.
The identity element is zero, the inverse of any ``x`` is ``-x``, and addition is clearly associative.
"""

# ╔═╡ 2abbc855-ed35-477d-acc9-9c2ff49a00ce
md"""
**Example.**
A more advanced example of a group is the real numbers, excluding zero, under multiplication, e.g., ``G = (ℝ^*, ⋅)`` where we let ``ℝ^*`` denote the real numbers without zero.
We have to exclude zero because if you divide any other element in the group by zero, then you don't get a real number.
For ``x ∈ ℝ^*`` we see that ``1 = 𝟙`` and ``x^{-1} = 1/x``.
Multiplication is obviously associative.
This is also an Abelian group.
"""

# ╔═╡ 2299e0e9-259d-451f-8fdb-c8ae82079035
md"## Dimensional Analysis"

# ╔═╡ 6daf6564-4aa1-4917-b59e-0cd66e10135c
md"""
**Definition.** **Dimensional analysis** is the analysis of the relationships between different physical quantities by identifying their base quantities (e.g., length ``L``, mass ``M``, time ``T``, and electric current ``I``) and units of measure (e.g., miles vs kilometres, or pounds vs kilograms) and tracking these dimensions as calculations or comparisons are performed.
"""

# ╔═╡ 87d5d78f-b664-44d4-99ba-68abf3ce7f8e
md"""
**Example.**
The SI system has units of length, mass, and time in meters (m), kilograms (kg), and second (s), respectively.
In CGS, they are centimeter (cm), gram (g), and second (s).
"""

# ╔═╡ ae68b319-6acd-48f2-a282-a828cee21c57
md"""
**Definition.**
**Derived quantities** have the dimensions of the combination of fundamental quantities from which they are derived.
"""

# ╔═╡ ff4cb6e3-ea49-46ce-b924-37ee06502185
md"""
**Example.**
Velocity has dimensions ``LT^{-1}`` and acceleration ``LT^{-2}``.
Force comes from mass times acceleration, so the dimensions of force are ``MLT^{-2}``.
"""

# ╔═╡ b638e313-5956-438c-b180-1693fd1b621a
md"""
**Notation.**
Square brackets are used to denote the dimensions of some quantity.
"""

# ╔═╡ 35a1044f-887e-4b75-a8ee-0f00d09f04bf
md"""
**Example.**
The dimension of momentum is ``[p] = MLT^{-1}`` since ``p = mv`` where ``[m] = M`` and ``[v] = LT^{-1}``.

The dimension of angular momentum is ``[ℓ] = ML^2 T^{-1}`` since ``ℓ = r × p`` where ``[r] = L`` and ``[p] = LT^{-1}``.

The dimension of energy is ``[E] = ML^2 T^{-2}`` since ``E = mc^2`` where ``[m] = M`` and ``[c]^2 = [v]^2 = (LT^{-1})^2 = L^2 T^{-2}``.
"""

# ╔═╡ 54d59cb1-839f-4b7c-9de8-1df92bf19528
md"""
**Important Note.**
If you do a calculation and the dimensionality of your result doesn't make sense, then you had to have made a mistake somewhere!
It is always a good idea to check the dimensionality of a calculation.
"""

# ╔═╡ c606124c-17eb-4ba3-a1d4-9b98172f149f
md"""
**Example.**
Find the "scale" that determines the radius of a black hole, also known as the "event horizon."

*Solution.* The event horizon ``R`` can only depend on the mass ``m`` of the black hole, the speed of light ``c``, and Newton's gravitational constant ``G``.
So, to within factors of two and ``\pi`` and the like, we write

$R = G^x m^y c^z \tag{1.1}$

where the powers ``x``, ``y``, and ``z`` can be determined by dimensional analysis.
The dimensions of ``R``, ``m``, and ``c`` are ``L``, ``M``, and ``LT^{-1}``, respectively.
The dimensions of ``G`` can found using Newton's law of gravity,

$F = G \frac{m_1 m_2}{r^2} \implies MLT^{-2} = [G] M^2 L^{-2} \implies [G] = M^{-1} L^3 T^{-2}.$

Now return to (1.1) and write

$L = M^{-x} L^{3x} T^{-2x} M^y L^z T^{-z} = M^{-x + y} L^{3x + z} T^{-2x - z}$

This gives us the following three equations:

$\begin{align*}
-x + y &= 0 \\
3x + z &= 1 \\
-2x - z &= 0
\end{align*}$

Adding the second and third equations gives ``x = 1``.
Then the first equation gives ``y = 1`` and the third equation gives ``z = -2``.
Therefore, (1.1) becomes

$R = G^1 m^1 c^{-2} = Gm/c^2.$

A careful study of General Relativity for a static, spherical gravitating mass ``m`` yields the so-called "Schwarzschild radius" ``R_S = 2Gm/c^2`` as the distance at which clocks stop.
Our simple analysis, though, gets us the scale at which this happens, and in fact the right answer to within a factor of two.
"""

# ╔═╡ 08b46001-4ed6-4bee-8349-7dfe055ff58f
md"""
### Dimensional analysis as vector addition

Taking the logs and treating logs of units as "directions" in some space.
Maybe a good first glimpse at how vector spaces can be abstracted.
"""

# ╔═╡ aa4b718c-0dcc-42c3-8551-79ce3bcb6c48
md"""
## Derivative of a Function of Real Variables

The derivative tells you how something changes.
"""

# ╔═╡ 4acb3d00-90f9-4865-8239-ceca7755023b
md"### Functions of a single variable"

# ╔═╡ c8767e80-569a-4b78-884f-2560bf09357f
md"""
**Definition.**
The derivative of a function ``y = f(x)`` is

$f'(x) = \lim_{Δx → 0} \frac{f(x + Δx) - f(x)}{Δx} \tag{1.2}$
"""

# ╔═╡ 54d3e5e3-2399-4aa1-ae5d-05ad098a1d58
md"""
**Notation.**
Notice the right side of the equation looks like the division of zero by zero.
Indeed, the derivative is the ratio of "infinitesimal" quantities.
We often use the notation

$f'(x) = \frac{dy}{dx}$
"""

# ╔═╡ 2d8edef5-06d2-4bce-8a11-025c8dc81655
md"""
**Example.**
Let's use this definition to find the derivative of ``f(x) = x^n`` where ``n`` is a positive integer ``n ∈ ℤ^+``.
Consider

$(x + Δx)^n = x^n + nx^{n - 1} Δx + ⋯ + (Δx)^n$

Using the definition of the derivative of a function,

$f'(x) = \lim_{Δx → 0} \frac{[x^n + nx^{n - 1} Δx + ⋯ + (Δx)^n] - [x^n]}{Δx} = \lim_{Δx → 0} (nx^{n - 1} + ⋯) = nx^{n - 1}$

We have proven that ``f'(x) = nx^{n-1}`` for ``f(x) = x^n`` where ``n ∈ ℤ^+``.
There is a homework problem to argue that ``f'(x) = \alpha x^{\alpha - 1}`` where ``\alpha`` is any real number ``\alpha ∈ ℝ``.
It's also true when ``\alpha`` is any complex number ``\alpha ∈ ℂ``, but the proof for that is reserved for later.
"""

# ╔═╡ e0063c6a-2317-44fb-aee9-015ac3860d4c
md"### Differentials"

# ╔═╡ c9b0f980-8dd3-471b-ba0b-dd8be40ea46a
md"""
**Definition.**
When we write ``f'(x) = dy/dx`` for ``y = f(x)``, (1.2) tells us that ``dy`` and ``dx`` are infinitesimal quantities called **differentials**.
"""

# ╔═╡ c4ffaebe-ed5d-447c-b141-7df68698909e
md"""
**Example.**
Consider the following:

$d(uv) = (u + du)(v + dv) - uv = u \;dv + v \;du$

for two functions ``u = f(x)`` and ``v = g(x)``.
If we divide through by ``dx`` we get

$\frac{d}{dx} (uv) = u \frac{dv}{dx} + v \frac{du}{dx} \quad \text{ or } \quad h'(x) = f(x) g'(x) + g(x) f'(x)$

for ``h(x) = f(x) g(x)``.
This is called the **product rule** for differentiation.
"""

# ╔═╡ 37433af4-ed08-456e-8d7c-036a74228b86
md"""
**Example.**
Now suppose instead that ``h(x) = f(g(x))``, again with ``u = f(x)`` and ``v = g(x)``.
We can derive the so-called **chain rule** for ``h'(x)`` by multiplying by "one", that is

$\frac{du}{dx} = \frac{du}{dx} \frac{dv}{dv} = \frac{du}{dv} \frac{dv}{dx} \quad \text{ or } \quad h'(x) = f'(g) g'(x)$
"""

# ╔═╡ 03e58624-c803-4f3f-8903-abe3ed5db7da
md"""
**Example.**
We can illustrate the product rule and chain rule with a simple example, namely

$f(x) = x^n \quad \text{ and } \quad g(x) = x^m$

To check the product rule, let ``h(x) = f(x) g(x) = x^{n + m}``.
In this case we know that ``h'(x) = (n + m) x^{n + m - 1}``.
The product rule gives

$h'(x) = nx^{n - 1} x^m + mx^n x^{m - 1} = (n + m) x^{n + m - 1}$

which is correct.
To check the chain rule, use ``h(x) = x^{nm}`` in which case ``h'(x) = nmx^{nm-1}`` but using the chain rule

$h'(x) = \left[n (x^m)^{n-1}\right] mx^{m - 1} = nmx^{nm - m + m-1} = nmx^{nm - 1}$
"""

# ╔═╡ 4d03674c-7a74-4923-98f5-0be43ee8980d
md"### Higher order derivatives"

# ╔═╡ ef0eff47-7a60-4e05-b398-a0cfb0699dd4
md"""
**Notation.**
We write the **second derivative** of a function ``y = f(x)`` as

$f''(x) = f^{(2)}(x) = \frac{d}{dx} \frac{dy}{dx} = \frac{d^2y}{dx^2}$
"""

# ╔═╡ 35509852-8338-41a4-8f69-8e36f3d07a85
md"### Functions of two or more variables"

# ╔═╡ 93707313-b526-4268-a561-a8dadd463f2a
md"""
**Definition.**
The **partial derivatives** of function ``u = f(x, y)`` are

$\frac{∂u}{∂x} = \lim_{Δx → 0} \frac{f(x + Δx, y) - f(x,y)}{Δx} \quad \text{ and } \quad \frac{∂u}{∂y} = \lim_{Δy → 0} \frac{f(x, y + Δy) - f(x,y)}{Δy}$

That is, we treat ``y(x)`` as a constant when we take the partial derivative of ``u`` with respect to ``x(y)``.
The analogy for an example with more than two variables ``u = f(x, y, z)`` is straightforward.
The product rule and chain for partial derivatives apply as expected.
"""

# ╔═╡ 075cda33-287b-4ae2-a037-498be8d0ea2e
md"### Finding minima and maxima"

# ╔═╡ d1a9edb3-5e1f-419d-aabb-21fb9824cfa5
md"""
**Example.**
To find the local minima and local maxima of some function ``f`` given some "free parameters", we need to find the derivatives with respect to those parameters and set them equal to zero.
The solutions to the resulting equations gives us the values of the parameters that we're looking for.
"""

# ╔═╡ 3b0c635c-4ea9-4a8c-a801-a41b25db2338
md"## Integration"

# ╔═╡ 34e0e7ce-0289-4338-8fd6-d2b500bf5dca
md"### The definite integral"

# ╔═╡ 27ba5925-ae93-4076-82f7-c9df0d5ad76d
md"""
**Definition.**
The **definite integral** is an infinite sum of infinitesimal quantities.
For an ordered set of ``N`` real numbers,

$x_i ∈ \{x_0, x_1, x_2, …, x_N\}$

where ``a ≤ x_i ≤ b``, the definite integral of a function ``f(x)`` from ``a`` to ``b`` is denoted

$∫_a^b f(x) \;dx = \lim_{\substack{N → ∞ \\ Δx_i → 0}} \sum_{i = 0}^N f(x_i) Δx_i$

where ``x_1 → a``, ``x_N → b``, and ``Δx_i = x_{i+1} - x_i``.
"""

# ╔═╡ 1f26c10b-6049-4fa7-b3b0-12689e5c068a
md"### The antiderivative concept"

# ╔═╡ 5ae2381d-b1c1-4120-ae50-3eb3f288721e
md"""
**Definition.**
The **antiderivative** of a function ``f(x)`` is denoted

$∫ f(x) \;dx = F(x) + C$

where ``F(x)`` is the antiderivative of ``f(x)`` and ``f(x) = F'(x)``.
"""

# ╔═╡ 8f4ad251-d8aa-4562-a5da-8088f673e61b
md"""
**Example.**
The antiderivative of ``f(x) = x^\alpha`` for ``\{\alpha ∣ \alpha ∈ ℝ ∧ \alpha ≠ -1\}`` is

$∫ x^{\alpha} \;dx = \frac{1}{\alpha + 1} x^{\alpha + 1}$

This doesn't work when ``\alpha = -1``.
So what is the antiderivative of ``f(x) = 1/x``?
This is explored in the 'Natural logarithms' section.
"""

# ╔═╡ 9c232bfd-22c8-47eb-beff-efa6ea274200
md"""
**Remark.**
Not all functions have an (analytic) antiderivative.
Sometimes there are "tricks" for carrying out the definite integrals nevertheless, but oftentimes the integrals need to be calculated numerically.
"""

# ╔═╡ 5e887d15-dd11-4569-9f9b-6fbaa3b90673
md"### The fundamental theorem of integral calculus"

# ╔═╡ c9e8ed0b-83b5-413c-9dec-8d77962d4718
md"""
**Definition.**
The **fundamental theorem of integral calculus** is a theorem that links the concept of differentiating a function with the concept of integrating a function.

For ``x_i ∈ \{x_1, x_2, …, x_N\}`` as ``N → ∞`` and the ``Δx_i → 0``, the ``Δx_i`` become differentials ``dx``, the definite integral from ``a`` to ``b`` for an integrable function ``f(x)`` has the relationship,

$∫_a^b f(x) \,dx = \sum_{i = 0}^∞ f(x_i) \,dx = \sum_{i = 0}^∞ \frac{dF(x_i)}{dx} dx = \sum_{i = 0}^∞ ΔF(x_i) = F(b) - F(a) ≡ F(x) \Big|_a^b$

where each term ``ΔF(x_i)`` has a cancellation with the term following, i.e., ``ΔF(x_i) = F(x_{i + 1}) - F(x_i)``.
"""

# ╔═╡ e9ed916d-68de-4f35-af90-0d17792511dc
md"### Changing variables in integration"

# ╔═╡ 455100c1-45ea-4ef1-8d1d-65ca56357677
md"""
**Example.**
Suppose you are integrating a function ``f(x)`` over ``a ≤ x ≤ b``, but you would prefer to integrate over a variable ``y = g(x)``.
It is important that the function ``g(x)`` is well defined over ``a ≤ x ≤ b``, that is ``x = g^{-1}(y)`` is known.
If we write ``c = g^{-1}(a)`` and ``d = g^{-1}(b)`` then

$∫_a^b f(x) \;dx = ∫_a^b f(x) \frac{dy}{dy} dx = ∫_a^b f(x) \frac{dx}{dy} dy = ∫_c^d f[g^{-1}(y)] \frac{1}{g'[g^{-1}(y)]} dy$

and you are now doing an integral over ``c ≤ y ≤ d``.
"""

# ╔═╡ b6eed788-72e5-4536-8d39-4872bb1a0ecf
md"### Integration by parts"

# ╔═╡ 8ca57471-89bb-4d41-931b-c6d365623599
md"""
**Example.**
Suppose the integrand ``f(x)`` can be split into the product of two functions ``u(x)`` and ``V(x)``, i.e., ``f(x) = u(x) V(x)`` and you want to carry out the integral

$∫_a^b f(x) \;dx = ∫_a^b u(x) V(x) \;dx$

Now let the antiderivative of ``u(x)`` be ``U(x)``, that is ``dU/dx = u(x)``, and let ``v(x) = dV / dx`` be the derivative of ``V(x)``.
Then from the product rule

$\frac{d}{dx} (UV) = \frac{dU}{dx} V + U \frac{dV}{dx} = u(x) V(x) + U(x) v(x)$

Integrating this equation over ``a ≤ x ≤ b`` and rearranging terms, we get

$∫_a^b f(x) \;dx = U(x) V(x) \Big|_a^b - ∫_a^b U(x) v(x) \;dx$

and we have "traded" an integral of ``u(x) V(x)`` for one of ``U(x) v(x)``, which is presumably easier to carry out.
In many physical situations ``U(x) V(x) \Big|_a^b = U(a) V(a) - U(b) V(b)`` will vanish.
It won't be uncommon to have things like ``a → ∞`` and ``b → -∞``.
"""

# ╔═╡ e69e39a8-f840-4800-9068-66fb02ed164d
md"### Integrals in higher dimensions"

# ╔═╡ 729f9b56-d252-41be-90e3-3dc544809ff2
md"""
**Example.**
A double integral of a function ``f(x, y)`` over a rectangular area for ``a ≤ x ≤ b`` and for ``c ≤ y ≤ d`` is written

$∫_a^b dx ∫_c^d dy \;f(x, y)$
"""

# ╔═╡ 622d94f7-ca4a-497e-b4b4-397392386996
md"""
**Notation.**
Typically in physics classes you will see double integrals denoted

$∫_R f(x, y) \,dA$

where ``R`` represents some region in the ``(x, y)`` plane over which you are to carry out the integral.
We write ``dA = dx\,dy`` for the infinitesimal tile in the ``(x, y)`` plane.
"""

# ╔═╡ 330dbc7e-96db-4a63-a976-8646632aaf4b
md"""
**Notation.**
Integrals over volume are typically written as

$∫_R f(x, y, z) \,dV$

where ``R`` represents some region in 3D space, and ``dV = dx\,dy\,dz``.
"""

# ╔═╡ 617ea303-a31d-4ecc-bd90-3c6c8a569b16
md"""
**Notation.**
In general, an integral over an ``N``-dimensional space is written

$∫_R f(x_1, x_2, …, x_N) \,dx_1\,dx_2 ⋯ dx_N$
"""

# ╔═╡ 3aa5c644-64dd-4d88-9a17-4891f1764b53
md"#### Polar and spherical coordinates"

# ╔═╡ 1c05e75f-2911-4458-bf00-081626467264
md"""
**Definition.**
**Polar coordinates** ``(r, \phi)`` are used to locate a point in space by its distance ``r`` from the origin and the angle ``\phi`` it makes with the ``x``-axis.
In 3D space, there is an additional ``\theta`` coordinate which measures the angle the point makes with the ``z``-axis.
"""

# ╔═╡ 9f189f6e-4a42-4184-93c9-708c2369c1c9
md"""
**Example.**
The infinitesimal area element in 2D space in terms of polar coordinates is written

$dA = (r\,d\phi) \,dr = r \, dr \, d\phi$

so we would write the integral over some region ``R`` of the plane as

$∫_R f(r, \phi) \, r \, dr \, d\phi$

This is particular powerful if the function ``f`` depends only on ``r``, and the region ``R`` is cylindrically symmetric and goes between two limits ``r_1`` and ``r_2``.
In this case

$∫_R f(r, \phi) \,r \, dr \,\phi = 2\pi ∫_{r_1}^{r_2} f(r) \, r \,dr$

This will often be the case in physical problems of interest.
"""

# ╔═╡ b0540d5e-2c71-4f9a-a1cc-086276be94fc
md"""
**Example.**
The infinitesimal area element in 3D space in terms of polar coordinates is

$dV = (r \sin{\theta} \, d\phi) (r \, d\theta) (dr) = r^2 \sin{\theta} \, dr \, d\theta \, d\phi$

An often useful change of variables here is ``\mu = \cos{\theta}``, in which case the integral over a spherical volume of radius ``R`` (including ``R → ∞``) becomes

$∫_0^R r^2 \,dr ∫_0^\pi \sin{\theta} \,d\theta ∫_0^{2\pi} d\phi \,f(r, \theta, \phi) = ∫_0^R r^2 \,dr ∫_{-1}^1 d\mu ∫_0^{2\pi} d\phi\, f(r, \mu, \phi)$

where, as we'll see shortly, ``d\mu = -\sin{\theta} \,d\theta``.
"""

# ╔═╡ c8446ca9-4424-4aa7-8d7f-39f9a748ef37
md"""
**Example.**
Find the volume of a sphere with radius ``R``.

$∫_0^R r^2 \,dr ∫_0^\pi \sin{\theta} \,d\theta ∫_0^{2\pi} d\phi = ∫_0^R r^2 \,dr ∫_{-1}^1 d\mu ∫_0^{2\pi} d\phi = \left(\frac{R^3}{3}\right)(2)(2\pi) = \frac{4}{3} \pi R^3$
"""

# ╔═╡ d0034027-37f7-43f3-bae5-f30d5873577c
md"### Integrals over arbitrary lines and surfaces"

# ╔═╡ 81dec482-3128-4f4a-ad8e-bfb9144aa4f0
md"""
**Notation.**
We write

$∫_C f(x, y, z) \,dℓ$

to denote the integral along some curve ``C``.
If ``C`` is a closed loop, then we write

$∮_C f(x, y, z) \,dℓ$
"""

# ╔═╡ c8a6d8b4-70ce-4bd3-af2c-1e65a3f318b3
md"""
**Notation.**
We write

$∫_S f(x, y, z) \,dA → ∮_S f(x, y, z) \,dA$

to denote the integral over some surface ``S``, using ``\displaystyle ∮`` for closed surfaces.
"""

# ╔═╡ de92608b-17e7-43d6-aa2f-a6767c9580cb
md"""
**Example.**
Find the surface area of a sphere with radius ``R``.

$R^2 ∫_{-1}^1 d\mu ∫_0^{2\pi} = 4\pi R^2$
"""

# ╔═╡ f681914e-0065-4329-8143-a77b67a968b9
md"## Elementary Special Functions"

# ╔═╡ 89e4c9c7-7e0d-458e-86cf-182e794e9a8a
md"### Circular functions"

# ╔═╡ 02f0b23a-6a9b-4a6a-9e0f-84b5fa66a426
md"""
**Definition.**
The **cosine** and **sine** functions are defined as functions of the arc length ``x`` along a unit circle ``u^2 + v^2 = 1``, counter clockwise from the point ``(1, 0)`` on the ``(u, v)`` axes.
That is, we define the coordinates of the point ``P`` to be ``(\cos{x}, \sin{x})``.
Obviously, ``\cos^2{x} + \sin^2{x} = 1``.
"""

# ╔═╡ 24b9fe90-ae86-42fd-ac38-8615dfb52d1a
md"""
**Definition.**
The transcendental number ``\pi`` is defined as the ratio of the circumference of a circle to its diameter.
"""

# ╔═╡ f2a0d0f0-fda7-4a27-9aa3-27bee01421cd
md"""
**Example.**
The circumference of the unit circle is ``2\pi``.
This implies that adding ``2\pi`` to the argument of any circular function gives the same value back, i.e.,

$\cos{(x + 2\pi)} = \cos{(x)} \quad\text{ and }\quad \sin{(x + 2\pi)} = \sin{(x)}$

and similarly for the circular functions derived from sine and cosine.
"""

# ╔═╡ b3436980-a4db-4aa0-8816-a255d6e8945f
md"""
**Example.**
Here are a few useful trigonometric identities:

$\begin{align*}
\cos{(-x)} &= \cos{(x)} \\
\sin{(-x)} &= -\sin{(x)} \\
\cos{(x + y)} &= \cos{x} \cos{y} - \sin{x} \sin{y} \\
\sin{(x + y)} &= \sin{x} \cos{y} + \cos{x} \sin{y} \\
\cos{\left(\frac{x}{2}\right)} &= (±) \sqrt{\frac{1 - \cos{x}}{2}} \\
\sin{\left(\frac{x}{2}\right)} &= (±) \sqrt{\frac{1 + \cos{x}}{2}}
\end{align*}$
"""

# ╔═╡ 64b4f813-21c4-41c6-8347-271e6bb983e7
md"""
**Example.**
Find the derivative of ``\sin^{-1}{(x)}``.

$\begin{align*}
y &= \sin^{-1}{(x)} \\
\sin{(y)} &= \sin{\left(\sin^{-1}{(x)}\right)} \\
\sin{(y)} &= x \\
\frac{d}{dx} \sin{(y)} &= \frac{d}{dx} x \\
\frac{dy}{dx} \cos{(y)} &= 1 \\
\frac{dy}{dx} &= \frac{1}{\cos{(y)}} \\
\frac{d}{dx} \sin^{-1}{(x)} &= \frac{1}{\cos{(\sin^{-1}{(x)})}} \\
&= \frac{1}{\sqrt{1 - (\sin{(\sin^{-1}{(x)})})^2}} \\
&= \frac{1}{\sqrt{1 - x^2}}
\end{align*}$
"""

# ╔═╡ 54fad76a-480d-4e1d-ad85-cbcf57f778a9
md"""
**Example.**
Find the derivative of ``\cos^{-1}{(x)}``.

$\begin{align*}
y &= \cos^{-1}{(x)} \\
\cos{(y)} &= \cos{\left(\cos^{-1}{(x)}\right)} \\
\cos{(y)} &= x \\
\frac{d}{dx} \cos{(y)} &= \frac{d}{dx} x \\
\frac{dy}{dx} (-\sin{(y)}) &= 1 \\
\frac{dy}{dx} &= -\frac{1}{\sin{(y)}} \\
\frac{d}{dx} \cos^{-1}{(x)} &= -\frac{1}{\sin{(\cos^{-1}{(x)})}} \\
&= -\frac{1}{\sqrt{1 - (\cos{(\cos^{-1}(x))})^2}} \\
&= -\frac{1}{\sqrt{1 - x^2}}
\end{align*}$
"""

# ╔═╡ b8960d7e-628a-4431-a9c1-1882690fcb7a
md"""
**Example.**
Find the derivative of ``\tan^{-1}{(x)}``.

$\begin{align*}
y &= \tan^{-1}{(x)} \\
\tan{(y)} &= \tan{\left(\tan^{-1}{(x)}\right)} \\
\tan{(y)} &= x \\
\frac{d}{dx} \tan{(y)} &= \frac{d}{dx} x \\
\frac{dy}{dx} \sec^2{(y)} &= 1 \\
\frac{dy}{dx} &= \frac{1}{\sec^2{(y)}} \\
\frac{d}{dx} \tan^{-1}{(x)} &= \frac{1}{\sec^2{(\tan^{-1}{(x)})}} \\
&= \frac{1}{1 + (\tan{(\tan^{-1}(x))})^2} \\
&= \frac{1}{1 + x^2}
\end{align*}$
"""

# ╔═╡ 1130ca0f-f059-45e0-98ec-38aeffdecaae
md"""
**Example.**
Find the derivative of ``\sinh^{-1}{(x)}``.

$\begin{align*}
y &= \sinh^{-1}{(x)} \\
\sinh{(y)} &= \sinh{\left(\sinh^{-1}{(x)}\right)} \\
\sinh{(y)} &= x \\
\frac{d}{dx} \sinh{(y)} &= \frac{d}{dx} x \\
\frac{dy}{dx} \cosh{(y)} &= 1 \\
\frac{dy}{dx} &= \frac{1}{\cosh{(y)}} \\
\frac{dy}{dx} &= \frac{1}{\cosh{(\sinh^{-1}(x))}} \\
\end{align*}$
"""

# ╔═╡ f2916fd1-3f19-4111-b618-cae497b3357e
md"""
**Example.**
Find the derivative of ``\sqrt{x}``.

$\begin{align*}
y &= \sqrt{x} \\
y^2 &= x \\
\frac{d}{dx} y^2 &= \frac{d}{dx} x \\
\frac{dy}{dx} 2y &= 1 \\
\frac{dy}{dx} &= \frac{1}{2y} \\
\frac{d}{dx} \sqrt{x} &= \frac{1}{2 \sqrt{x}}
\end{align*}$
"""

# ╔═╡ 6f354444-725b-42ff-b98f-dae5883c64bb
md"### Natural logarithms"

# ╔═╡ 94ccd27d-91a6-4433-8219-f8604013dbcc
md"""
**Example.**
What is the function for which the derivative is ``1/x``?
Start by defining

$f(x) = ∫_1^x \frac{1}{t} \,dt$

and show that ``f(x)`` has all these properties of a logarithm.
For example, it is obvious that ``f(1) = 0``.
Next consider, with the change of variables ``u = 1/t``,

$f{\left(\frac{1}{a}\right)} = ∫_1^{1/a} \frac{1}{t} \,dt = ∫_1^a u \left(-\frac{du}{u^2}\right) = -∫_1^a \frac{1}{u} \, du = -f(a)$

Similarly prove (a good HW problem) that ``f(ab) = f(a) + f(b)``, which implies that ``f(a^n) = n f(a)`` for ``n ∈ ℤ^+`` (the positive integers).

So hypothesize that ``f(x) = \log_b(x)`` and set about to find the base ``b`` by going back to the definition to give it the right derivative.
That is

$\begin{align*}
\frac{d}{dx} \log_b(x) &= \lim_{Δx → 0} \frac{\log_b(x + Δx) - \log_b(x)}{Δx} \\
&= \lim_{Δx → 0} \frac{1}{Δx} \log_b{\left(1 + \frac{Δx}{x}\right)} \\
&= \frac{1}{x} \lim_{Δx → 0} \frac{x}{Δx} \log_b{\left(1 + \frac{Δx}{x}\right)} \\
&= \frac{1}{x} \lim_{Δx → 0} \log_b{\left(1 + \frac{Δx}{x}\right)^{x / Δx}} \\
&= \frac{1}{x} \log_b{\left[\lim_{n → ∞} \left(1 + \frac{1}{n}\right)^n\right]} \\
&= \frac{1}{x}
\end{align*}$

This determines the value of the logarithm base ``b``, namely

$b = \lim_{n → ∞} \left(1 + \frac{1}{n}\right)^n ≡ e$

It is worth taking a few minutes to use a calculator or some app to find the value of ``(1 + 1/n)^n`` for larger and larger values of ``n``, e.g., ``e = 2.7182818…``
"""

# ╔═╡ f22cc881-fb3c-4cf8-97f8-b869dec46e75
md"""
**Definition.**

$\frac{d}{dx} \log{(x)} = \frac{1}{x} \quad\text{ and }\quad ∫_1^a \frac{1}{x} \,dx = \log{(a)}$
"""

# ╔═╡ a24d76f8-4d1b-40b2-b92c-0ed281348156
md"### Exponential functions"

# ╔═╡ 84d3827b-7c92-47f2-b6be-c968bb4aa130
md"""
**Definition.**
The **exponential function** is the inverse of the natural logarithm function such that

$e^{\log{x}} = x$
"""

# ╔═╡ 00b20e5f-4e3c-4620-9439-6541c2a6e35f
md"""
**Example.**
We can find the derivative of ``e^x`` by using the chain rule.
Write ``x = \log{y}`` with ``y = e^x``.
Differentiating both sides with respect to ``x`` we get

$1 = \frac{1}{y} \frac{dy}{dx} \implies \frac{dy}{dx} = y \implies \frac{d}{dx} e^x = e^x.$

Similarly for ``e^{ax}`` let ``y = ax``,

$\frac{d}{dx} e^{ax} = \frac{de^y}{dy} \frac{dy}{dx} = ae^{ax}$
"""

# ╔═╡ dbbb2ae0-0c0e-4e31-8765-3499b8c63875
md"### Hyperbolic functions"

# ╔═╡ 52c1b3b5-4acc-4062-9b2e-afac40f1a436
md"""
**Definition.**

$\frac{d}{dx} \cosh{x} = \sinh{x} \quad\text{ and }\quad \frac{d}{dx} \sinh{x} = \cosh{x}$
"""

# ╔═╡ c95bdefd-755d-4fa0-ac67-d1ce853f8c36
md"### The Gamma function"

# ╔═╡ 534e6545-d01c-4e97-a92f-38318fe35503
md"""
**Definition.**
The **gamma function** is defined as

$Γ(z) ≡ ∫_0^∞ x^{z-1} e^{-x} \,dx \qquad z ∈ ℂ \text{ where } ℜ(z) > 0$
"""

# ╔═╡ 165e2fc3-8be8-4545-9090-830510e0cd63
md"""
**Remark.**
The gamma function is useful as an analytic form for the factorial, that is

$Γ(n + 1) = ∫_0^∞ x^n e^{-x} \,dx = \left[x^n (-e^{-x})\right]_0^∞ - ∫_0^∞ nx^{n - 1} (-e^{-x}) \,dx = n Γ(n)$
"""

# ╔═╡ df4ced76-69d1-4c31-9af5-575592e1cf1a
md"### Gaussian integrals"

# ╔═╡ e86b5d40-4aa1-40ad-9a8f-71bc9ef6a197
md"""
**Definition.**
The **infinite Gaussian integral**

$I(a) = ∫_{∞}^∞ e^{-ax^2} \,dx = ∫_{-∞}^∞ e^{-y^2} \frac{1}{\sqrt{a}} \, dy = \sqrt{\frac{\pi}{a}}$
"""

# ╔═╡ b6e233db-6f62-4968-b00b-e347a5adfce7
md"""
**Definition.**

$∫_{-∞}^∞ x^2 e^{-x^2} \,dx = -\frac{d}{da} ∫_{-∞}^∞ e^{-ax^2} \,dx \Big|_{a=1} = -\frac{d}{da} I(a) \Big|_{a=1} = \frac{1}{2} \sqrt{\frac{\pi}{a^3}}$
"""

# ╔═╡ f1f57fd1-5485-4df3-bfca-607269d98edd
md"""
**Definition.**
**Schroeder's appendix:**

$∫_x^∞ e^{-t^2} \,dt = e^{-x^2} \left(\frac{1}{2x} - \frac{1}{4x^3} + \frac{3}{8x^5} - ⋯\right) \quad\text{ for }\quad x ≫ 1$
"""

# ╔═╡ d3e26925-08d8-4f17-873f-d4471fc5a1b1
md"""
**Definition.**
The **error function** is defined

$\text{erf}(z) = \frac{2}{\sqrt{\pi}} ∫_0^z e^{-x^2} \,dx$
"""

# ╔═╡ 1cb95580-be89-4732-ae7c-dcaef6d62491
md"# Infinite Series"

# ╔═╡ 25ad7342-2db2-4233-b99e-1fbf9d3d8a96
md"# Ordinary Differential Equations"

# ╔═╡ 0f19779e-a5c2-4e0f-ad72-3d449f4bc839
md"""
**Remark.**
This chapter is about ordinary differential equations, that is, equations whose solutions are functions of a single independent variable.
We will cover partial differential equations in the next chapter.
"""

# ╔═╡ 7da96f65-9874-42c9-bd55-82ca3dae05d7
md"## Differential Equations and their Solutions"

# ╔═╡ fc89a445-80c2-4ead-9de4-2684b54e7288
md"""
**Definition.**
**Differential equations** are equations that involves derivatives of some function.
A solution to a differetntial equation is the function itself.
"""

# ╔═╡ ba1d1f51-8c28-469a-9212-84ca96a880ec
md"""
**Remark.**
For each order of derivative in the differential equation, you have to specify some boundary condition to go along with all of the lower order derivatives.
"""

# ╔═╡ e06f4efb-fb1b-4d2f-927d-205c9151b7bd
md"""
**Remark.**
Physics is generally formulated in terms of differential equations (e.g., Newton's Second Law, Maxwell's Equations, Schrödinger Equation, Einstein's gravitational field equations).
"""

# ╔═╡ ad539f1b-5a80-4288-bc50-686b600e9283
md"""
**Remark.**
In physics, the solution exists and the solution is unique.
You can arrive at the solution in many different ways.
"""

# ╔═╡ 19075c05-2a40-4856-af21-cd6e498dfc57
md"### Ordinary Differential Equations"

# ╔═╡ 12dd9fa0-98ba-4317-af25-ab0bfc4ea418
md"""
**Definition.**
An **ordinary differential equation** for a function ``y = y(x)`` is an equation of the form

$\frac{d^{(n)}y}{dx} = f{\left(x, y, \frac{dy}{dx}, \frac{d^2y}{dx^2}, …, \frac{d^{(n-1)}y}{dx^{n-1}}\right)} \tag{3.1a}$

where ``f`` is some function, and ``d^{(n)} y / dx^n`` is the ``n``th derivative of ``y(x)``.
We will often use the notation ``y^{(n)}(x) = d^{(n)}y /dx^n``.
Any solution to (3.1a) must also solve some given boundary conditions at a point ``x = x_0``, namely

$y(x_0) = y_0, \quad y'(x_0) = y_0', \quad y''(x_0) = y_0'', …, \quad y^{(n-1)}(x_0) = y_0^{(n-1)} \tag{3.1b}$

If we instead of ``x`` use ``t`` (time) for the independent variable, then we refer to **initial conditions** instead of boundary conditions.

We call ``n`` the **order** of the differential equation, that is, the highest derivative that appears.
An ODE of order ``n`` needs to have ``n`` boundary conditions.
You can think of each of these conditions leading to determine the constant of integration that we'll get from integrating the derivatives.

If (3.1a) can be cast into the form

$a_0(x) y + a_1(x) y' + a_2(x) y'' + ⋯ + a_n(x) y^{(n)} = g(x) \tag{3.2}$

then we call the differential equation **linear**.
If the function ``g(x) = 0`` we call the equation **homogeneous**.
There are some general approaches we can take for linear, homogeneous equations, and these can be directly applied to linear inhomogenous equations.
"""

# ╔═╡ 1c466f40-22bf-482d-9e56-ad20019407f6
md"""
**Definition.**
All linear, homogeneous differential equations have an extremely important property that is inherent in so many physical situations.
This is the **principle of superposition** which says that any linear combination of two solutions is also a solution.
Writing ``y(x) = c_1 y_1(x) + c_2 y_2(x)``, where ``y_1(x)`` and ``y_2(x)`` are both solutions to (3.2) and ``c_1`` and ``c_2`` are constants, then it is a simple matter to show that ``y(x)`` is also a solution.
For an ``n``th order equation, we can expect to find ``n`` different **linearly independent** solutions so that

$y(x) = c_1 y_1(x) + c_2 y_2(x) + ⋯ + c_n y_n(x) \tag{3.3}$

is the general solution.
In principle, we can determine the constants ``c_1, c_2, …, c_n`` by applying the boundary conditions.
"""

# ╔═╡ a32141a3-939e-4c8e-97ff-f3893cd8d35c
md"""
**Definition.**
How do we know that the solutions ``y_i(x)`` are linearly independent?
There is a straightforward way to answer this using matrix manipulations.
We apply this solution to the boundary conditions and get a set of equations that can be written as

$\begin{bmatrix}
y_1(x_0) & y_2(x_0) & ⋯ & y_n(x_0) \\
y_1'(x_0) & y_2'(x_0) & ⋯ & y_n'(x_0) \\
⋮ & ⋮ & ⋯ & ⋮ \\
y_1^{(n)}(x_0) & y_2^{(n)}(x_0) & ⋯ & y_n^{(n)}(x_0)
\end{bmatrix}
\begin{bmatrix}
c_1 \\ c_2 \\ ⋮ \\ c_n
\end{bmatrix}
=
\begin{bmatrix}
y_0 \\ y_0' \\ ⋮ \\ y_0^{(n)}
\end{bmatrix}\tag{3.4}$

This set of equations only has a solution if the determinant of the matrix is nonzero, and this is the condition we need for the set of equations ``y_i(x)`` to be linearly independent.
This determinant is called the **Wronskian** and we write

$W(x) = \begin{vmatrix}
y_1(x) & y_2(x) & ⋯ & y_n(x) \\
y_1'(x) & y_2'(x) & ⋯ & y_n'(x) \\
⋮ & ⋮ & ⋯ & ⋮ \\
y_1^{(n)}(x) & y_2^{(n)}(x) & ⋯ & y_n^{(n)}(x)
\end{vmatrix}$

So linear independent at a point ``x = x_0`` requires that we have ``W(x_0) ≠ 0``.
In most of the cases you'll see in physics, ``W(x)`` will be nonzero for the entire relevant range of the independent variable ``x``.
"""

# ╔═╡ 7b61466a-897a-438f-9800-abc6970cca5e
md"""
**Definition.**
This is all fine for homogeneous linear equations, but what if the equation is inhomogenous?
In this case, your first job is to find a **particular** solution ``y_P(x)`` which solves (3.2) for nonzero ``g(x)``.
This solution does not need to have any constants that fit the boundary conditions, because once you have ``y_P(x)``, you can add to it any solution (3.3) to the homogenous equation and the result still solves (3.2).
You then apply the boundary conditions to determine the constants ``c_i``.
"""

# ╔═╡ c8e03e6b-9bd0-41de-9b06-c5f9f65b8da2
md"### Existence and Uniqueness"

# ╔═╡ 981ecba1-18cf-4b15-8ba8-0675453bccb3
md"""
**Remark.**
For all cases we'll study in this course, any given ODE or PDE, along with a set of boundary conditions, has exactly one solution.
That is, the solution **exists** and is **unique**.
"""

# ╔═╡ 40f658c7-70ae-4b6c-a82a-8ea7c8504d0a
md"### Using scaled variables"

# ╔═╡ 320c4376-bbb7-4203-ba31-66ce9f05a5ff
md"""
**Example.**
The differential equation for the simple harmonic oscillator in one dimension ``x(t)``, from ``F = ma`` written as ``ma - F = 0``, is

$m \frac{d^2x}{dt^2} + kx = 0$

The frequency scale is ``\omega = (k/m)^{1/2}``.
Defining a dimensionless time ``\tau = \omega t`` turns the equation into

$\frac{d^2 x}{d\tau^2} + x = 0$

and now you have a natural way to discuss the oscillator in terms of short times, i.e., ``\tau ≪ 1``, or long times, i.e., ``\tau ≫ 1``.
"""

# ╔═╡ f7afa739-5391-404b-aa2d-cbaaaba0e629
md"## First Order Equations"

# ╔═╡ df3c2fdd-76e3-435a-b71d-abd1b011cef7
md"""
### Example: Falling under drag

This is a simple problem that is intuitively easy to visualize, and is a problem that can be solved using either separability or with an integrating factor.

A mass ``m`` falls vertically, starting from rest at height ``h``.
In addition to gravity (near the Earth's surface) there is a drag force proportional to the velocity.
Find the velocity as a function of time.
Then find the vertical position as a function of time.
(This involves writing down and solving a first order equation, and then another first order equation.)

Let ``v(t)`` be the velocity and ``y(t)`` be the vertical position as a function of time.
Write the drag force as ``-bv`` where ``b > 0``.
(The sign ensures that the drag force is opposite to the direction of velocity.)
Assume that positive ``v`` is "up."
Then

$m \frac{dv}{dt} = -mg - bv \quad\text{ so }\quad \frac{dv}{dt} + \frac{b}{m} v = -g$

which is exactly the form given by (3.6).
So, let's approach the solution using an integrating factor.
We have

$\mu(t) = \exp\left[∫ \frac{b}{m} \,dt\right] = e^{bt / m}$
"""

# ╔═╡ 699f8d0e-0e54-413a-8292-1520c74c4358
md"## Second Order Linear Equations"

# ╔═╡ d47d4815-2fc9-4d7f-a243-e820a0401de9
md"## Harmonic Motion in One Dimension"

# ╔═╡ f9303dc4-a96a-406e-a929-ebb574a27c53
md"### Simple harmonic motion"

# ╔═╡ f77eb9e7-45a1-46ba-aa53-3e4b2fdfdaef
md"""
**Example.**
We solved the differential equation

$x''(t) + {\omega_0}^2 x(t) = 0 \qquad x(0) = x_0 \qquad x'(0) = v_0$
The characteristic equation is

$\alpha^2 + {\omega_0}^2 \qquad\text{so}\qquad \alpha = ±i\omega_0$

in which case thet general solution is

$x(t) = c_1 e^{i \omega_0 t} + c_2 e^{-i \omega_0 t}$

Applying the initial conditions led us to the complete solution

$x(t) = R \cos{(\omega_0 + \phi)}$
"""

# ╔═╡ 19f534c5-45bb-4483-8b6a-15e0ae1a0202
md"### Damped harmonic motion"

# ╔═╡ be8991fa-3469-4475-aaa4-8672db53d5e2
md"""
**Example.**
Now let's take the next step and add a (linear) damping force to the mass.
Newton's Second Law now says that

$m \frac{d^2 x}{dt^2} = -kx - bv = -kx - b \frac{dx}{dt}$

If we define ``\beta = b / 2m``, and keep our definition ``{\omega_0}^2 = k/m``, then the differential equation we need to solve is

$x''(t) + 2\beta x'(t) + {\omega_0}^2 x(t) = 0 \tag{3.7}$

Once again, this is a linear second order homogeneous differential equation with constant coefficients.
Applying our ansatz ``x(t) = e^{\alpha t}`` gives the characteristic equation

$\alpha^2 + 2\beta \alpha + {\omega_0}^2 = 0 \qquad\text{so}\qquad \alpha = -\beta ± \sqrt{\beta^2 - {\omega_0}^2}$
"""

# ╔═╡ eb7c30dd-4eea-4018-8f22-01598a927b43
md"""
**Definition.**
In the case known as **under damping**, ``\beta < \omega_0`` and the expression inside the square root is negative.
Therefore ``\alpha`` is complex and we write ``\alpha = -\beta ± i\omega_1`` where ``\omega_1 = \sqrt{{\omega_0}^2 - \beta^2}`` and the general solution takes the form

$x(t) = e^{-\beta t} (c_1 e^{i \omega_1 t} + c_2 e^{i \omega_1 t}) = Re^{-\beta t} \cos{(\omega_1 t + \phi)} \tag{3.8}$

where the constants ``c_1`` and ``c_2``, or ``R`` and ``\phi``, are determined from the initial conditions.

For a very weakly damped oscillation, ``\beta ≪ \omega_0``, the energy of the oscillator over one period of oscillation is

$ΔE = E(t) - E{\left(t + \frac{2\pi}{\omega_0}\right)} = E(t) \left[1 - e^{-2\beta (2\pi / \omega_0)}\right] ≈ E(t) 2\pi \frac{2\beta}{\omega_0} \qquad B ≪ \omega_0$

In other words, for a weakly damped oscillatior, the fractional change over one cycle is ``ΔE / E = 2\pi (2 \beta / \omega_0)``.
Let the **quality factor** ``Q = 2 \beta / \omega_0`` such that ``ΔE / E = 2\pi / Q``.
A large value of ``Q`` implies the oscillator is not very lossy and therefore of a  higher quality.
"""

# ╔═╡ c53575b9-0a97-4363-a47d-bcd6f1797a13
md"""
**Definition.**
The solution for the **over damped** case when ``\beta > \omega_0`` is

$x(t) = c_1 e^{\alpha_1 t} + c_2 e^{\alpha_2 t} \qquad \alpha_{1,2} = -\beta ± \sqrt{\beta^2 - {\omega_0}^2}$
"""

# ╔═╡ 981b3620-b431-404a-8f9d-918a636741e4
md"""
**Definition.**
The solution for the **critically damped** case when ``\beta = \omega_0`` is

$x(t) = (c_1 + c_2 t) e^{-\beta t}$
"""

# ╔═╡ 8d842048-6083-48ff-a8e8-02c9ce7c3351
md"### Forced damped harmonic motion"

# ╔═╡ 645c03d5-fab0-424b-9add-5156ede0ddf9
md"""
**Example.**
Imagine we force the oscillator by driving the equilibrium point back and forth in an oscillatory manner whose frequency we can control.
The other side of the spring from the mass is no longer fixed, but driven along a point ``x_0 = \beta \cos{\omega t}``.
This means that the force from the spring on the mass is ``F = -k(x - x_0)`` and the differential equation that describes the system is given by

$mx''(t) + bx'(t) + kx(t) = kx_0 = kB \cos{\omega t}$

Defining ``\beta = b / 2m`` and ``{\omega_0}^2 = k/m`` as before, and also defining ``\gamma = kB / m``, we have

$x''(t) + 2\beta x'(t) + {\omega_0}^2 x(t) = \gamma \cos{\omega t} \tag{3.10} \qquad x(0) = x_0 \qquad x'(0) = v_0$

This is a linear, second order, inhomogeneous differential equation with constant coefficients, a case that we also treated in Section 3.3.1.

The only tricky part to solving this problem is to find a particular solution.
Having that, we just need to add it to the general solution for the homogeneous equation, and then find the two constants by applying the initial conditions.
Looking at (3.10), however, it is by no means obvious what is the particular solution.
On the other hand, it is probably some linear combination of ``\cos{\omega t}`` and ``\sin{\omega t}`` so we write

$x_P(t) = a \cos{\omega t} + b \sin{\omega t}$

and insist that this form solve (3.10) in order to determine ``a`` and ``b``.
We find

$-a\omega^2 \cos{\omega t} - b\omega^2 \sin{\omega t} - 2 \beta a \omega \sin{\omega t} + 2 \beta b \omega \cos{\omega t} + \omega_0^2 a \cos{\omega t} + \omega_0^2 b \sin{\omega t} = \gamma \cos{\omega t}$

Gathering up terms proportional to ``\cos{\omega t}`` and ``\sin{\omega t}`` gives us the equations

$\begin{align*}
({\omega_0}^2 - \omega^2) a + 2\beta \omega b &= \gamma \\
-2\beta \omega a + ({\omega_0}^2 - \omega^2) b &= 0
\end{align*}$

Solving the equations for ``a`` and ``b`` we get

$a = \frac{\gamma ({\omega_0}^2 - \omega^2)}{4 \beta^2 \omega^2 + ({\omega_0}^2 - \omega^2)} \quad\text{and}\quad b = \frac{2 \beta \gamma \omega}{4\beta^2 \omega^2 + ({\omega_0}^2 - \omega^2)^2}$

It makes sense to write

$A(\omega) = \sqrt{a^2 + b^2} = \frac{\gamma}{\sqrt{4 \beta^2 \omega^2 + ({\omega_0}^2 - \omega^2)^2}} \tag{3.11a}$

$\text{and} \qquad \tan{\Phi(\omega)} = \frac{b}{a} = \frac{2 \beta \omega}{{\omega_0}^2 - \omega^2}$

in which case we have

$x_P(t) = A \cos{\Phi} \cos{\omega t} + A \sin{\Phi} \sin{\omega t} = A \cos{(\omega t - \Phi)}$

Now we can use the results of Section 3.4.2 to write the complete solution to (3.10) as

$x(t) = c_1 e^{\alpha_1 t}+ c_2 e^{\alpha_2 t} + A \cos{(\omega t - \Phi)}$

where ``\alpha_1 = -\beta + \sqrt{\beta^2 - {\omega_0}^2}`` and ``\alpha_2 = -\beta - \sqrt{\beta^2 - {\omega_0}^2}`` are complex for the oscillating (under damped) case (``\beta < \omega_0``) or real for the over damped case ``(\beta > \omega_0)``, and

$x(t) = (c_1 + c_2 t) e^{-\beta t} + A \cos{(\omega t - \Phi)}$

for the critically damped case ``(\beta = \omega_0)``.
For all cases, we find ``c_1`` and ``c_2`` by applying initial conditions ``x(0) = x_0`` and ``x'(0) = v_0``.
"""

# ╔═╡ 436a3e0a-2f02-43f3-a9f0-7fec84ebb740
md"""
**Remark.**
Figure 3.5 shows the motion of an oscillator that starts from rest at ``x = 0``, but is set in motion by the driving force.
The motion is plotted for three different driving frequencies.
The amplitude is much larger for ``\omega = \omega_0`` than for the other two choices.
This is not unexpected given the denominator in our expression for ``A(\omega)``.

**Remark.**
The figure also includes an expanded view of the motion for ``\omega = 1.5\omega_0``.
Notice how the motion appears somewhat irregular for the first several periods before settling into a steady motion at the driving frequency.
This is the effect of the **transients** that are the elements of the homogeneous solution.
The transients die away with a time constant ``1 / \beta``.

**Remark.**
The large amplitude in Figure 3.5 when ``\omega ≈ \omega_0`` is the familiar phenomenon known as **resonance**.
When you drive any underdamped oscillator at a frequency close to its naturaly frequency, it responds with a large amplitude.
Figure 3.6 shows explicitly how the amplitude depends on the driving frequency, showing a "resonance peak."
Note also that the relative phase between the respone and the driving signal varies with frequency as well.
For low frequencies, the mass responds directly in phase with the driver, while for frequencies rather larger than the natural frequency, the response is ``180^∘`` out of phase.
"""

# ╔═╡ c36f4c56-dd05-4f9a-b99b-7bfed5801e85
md"## Series Solutions for Second Order Equations"

# ╔═╡ 49a2eca0-cffd-4743-a738-e26b20e25bd1
md"## Some Important Special Functions"

# ╔═╡ 68810c03-84b6-4772-9766-1c99aea5bac0
md"""
**Remark.**
There are many physical situations that give rise to specific linear second order ordinary differential equations.
The important ones all have names, usually based on the mathematician who popularized them and their solutions.
Oftentimes, the solutions to these equations can only be expressed as infinite series, or series truncated to become polynomials.
The solutions generally go by the same name as the differential equations they solve.
"""

# ╔═╡ 215b9f22-f908-4baa-a72a-65685a50bf56
md"""
**Remark.**
Of course, there is nothing "special" about these Special Functions.
They are just defined in terms of the differential equations they solve.
We could just as well have defined ``e^x`` as the solution to ``y'(x) = y``, and ``\cos{x}`` and ``\sin{x}`` as the linearly independent solutions of ``y''(x) = -y``, but we didn't.
In this section, we will focus on the Bessel Functions of integer order ``m ≥ 0`` ``J_m(x)``, the Spherical Bessel Functions ``j_ℓ(x)`` and ``n_ℓ(x)``, and the Legendre Polynomials ``P_ℓ(x)``.
It turns out that ``j_ℓ(x)`` and ``n_ℓ(x)`` can be written in closed form using ``\cos{x}`` and ``\sin{x}``, and the Legendre Polynomials are just that, polynomials, but the ``J_m(x)`` can only be written as an infinite series.
"""

# ╔═╡ a5128af1-2ce4-44b1-aada-8549fb12cd3c
md"### Ordinary and Singular Points"

# ╔═╡ fca30ea8-0d37-4d78-81e4-f2dd21d91b35
md"""
**Definition.**
We return to writing our second order homogeneous linear ODE as

$r(x) y''(x) + p(x) y'(x) + q(x) y(x) = 0$

In principle, we can just write this equation as

$y''(x) + \frac{p(x)}{r(x)} y'(x) + \frac{q(x)}{r(x)} y(x) = 0$

but we have to be careful.
For some value of ``x = x_0`` at which ``r(x_0) = 0``, we cannot just assume that the second equation has a solution that is the same for the first.
Such points ``x = x_0`` are called **singular points**, whereas other values of ``x`` are called **ordinary points**.
"""

# ╔═╡ 4b15e9ee-68df-4a46-8ee3-c3307df3961f
md"""
**Definition.**
If

$\lim_{x → x_0} (x - x_0) \frac{p(x)}{r(x)} \qquad\text{and}\qquad \lim_{x → x_0} (x - x_0)^2 \frac{q(x)}{r(x)}$

are finite, then ``x = x_0`` is called a **regular singular point**.
For regular singular points, the functions ``\displaystyle (x - x_0) \frac{p(x)}{r(x)}`` and ``\displaystyle (x - x_0)^2 \frac{q(x)}{r(x)}`` will have well behaved Taylor expansions about ``x = x_0``, so a series solution approach can be pursued.
"""

# ╔═╡ 016b796f-c058-4d6d-923e-0ca1188ade6d
md"""
**Example.**
Consider Bessel's Equation,

$x^2 y''(x) + xy'(x) + (x^2 - \nu^2) y(x) = 0 \tag{3.17}$

Clearly, ``x = 0`` is a singular point.
However, since

$\lim_{x → 0} x \frac{x}{x^2} = \lim_{x → 0} 1 = 1 \qquad \text{and} \qquad \lim_{x → 0} x^2 \frac{x^2 - \nu^2}{x^2} = -\nu^2$

are both finite, ``x = 0`` is a regular singular point and we can go ahead and try to build a series solution for Bessel's Equation (we'll do this in section 3.6.2).
"""

# ╔═╡ 9fdbfb34-cd4e-46d2-8575-ca96844afb37
md"""
**Example.**
Consider the Legendre Equation,

$(1 - x^2) y''(x) - 2xy'(x) + \alpha (\alpha + 1) y(x) = 0 \tag{3.18}$

In this case there are two singular points, at ``x = ±1``.
However, since

$\lim_{x → 1} (x - 1) \frac{-2x}{1 - x^2} = \lim_{x → 1} (x - 1) \frac{-2x}{(1 - x)(1 + x)} = 2$

and

$\lim_{x → 1} (x - 1)^2 \frac{\alpha (\alpha + 1) x}{(1 - x)(1 + x)} = 0$


are both finite, ``x = +1`` is a regular singular point.
Similarly for ``x = -1``.
"""

# ╔═╡ af883028-2c74-4f09-ab17-ce06a59947d7
md"""
**Remark.**
If ``x = x_0`` is a singular point, we can always build a series solution around a different value of ``x``, in which case we don't need to be concerned whether the point is regular or irregular.
The behavior of the solution at ``x = x_0``, though, is likely to be peculiar.
"""

# ╔═╡ 3464f348-9a94-41aa-bf41-52346227c008
md"#### Euler Equations"

# ╔═╡ cbb83d37-ac34-439d-bf37-9946c181859d
md"""
**Remark.**
There is an instructive class of second order ODE's with regular singular points called Euler Equations (not to be confused with Euler's Formula from Section 2.4).
Euler Equations take the form

$x^2 y''(x) + \alpha x y'(x) + \beta^2 y(x) = 0$
"""

# ╔═╡ 97dd6594-37e8-48b5-80d6-a7e5e0ac60b1
md"""
**Remark.**
It should be clear that there is a regular singular point at ``x = 0``.
(We could write a slightly different equation with ``(x - x_0)`` instead of ``x`` in front of the first and second terms, and get a regular singular point at ``x = x_0``.)
"""

# ╔═╡ 41807afb-8d0c-4e76-9468-50773046ffee
md"""
**Remark.**
It should also be clear that a series solution to this equation would not work.
No recursion relation comes from inserting the series into the equation, because the powers of ``x`` in front of ``y''(x)`` and ``y'(x)`` bring all powers of ``x`` back up to ``x^n``.
"""

# ╔═╡ bcf228fd-faf9-4433-b92b-74ea0942972b
md"""
**Remark.**
Nevertheless, this equation has a straightforward solution that brings to mind the ansatz we used for the second order ODE with linear cofficients.
Inserting ``y(x) = x^r``, where ``r`` is a constant to be determined, we get the quadratic equation

$r(r - 1) + \alpha r + \beta = r^2 + (\alpha - 1) r + \beta^2 = 0$

which is to be solved for ``r``.
Evidently, the two solutions for ``r`` are

$r = \frac{-(\alpha - 1) ± \sqrt{(\alpha - 1)^2 - 4 \beta^2}}{2}$

There are three obvious cases.
For ``(\alpha - 1)^2 > 4 \beta^2``, there are two real values ``r = r_1`` and ``r = r_2`` for which ``x^r`` is a solution.
That is, the general solution is

$y(x) = c_1 x^{r_1} + c_2 x^{r_2}$

If ``(\alpha - 1)^2 < 4 \beta^2``, then the roots are complex, and we make use of ``x^{\mu + i \eta} = e^{(\mu + i\eta) \log{x}}`` to write the solutions.
If the two values of ``r`` are equal, we need to figure out a some way to get a second equation (this is left as a homework problem).
"""

# ╔═╡ 6d020c3b-75c0-47f0-9ad3-8015301c85dc
md"""
**Remark.**
The lesson here is that for a regular singular point, including a factor of ``x^r`` in the solution, where ``r`` is to be determined, may be a useful approach to be included in the series expansion.
This approach is sometimes called the Method of Frobenius.
"""

# ╔═╡ 833729ec-7316-465d-bc12-8109df740f3f
md"### Bessel functions"

# ╔═╡ e9f92209-2bcf-4039-bd82-75946afa8695
md"""
**Definition.**
The Bessel's equation is the differential equation

$x^2 y''(x) + xy'(x) + (x^2 - \nu^2) y(x) = 0 \tag{3.19}$

where ``\nu`` is a constant, known as **order**.
"""

# ╔═╡ f5a89121-d543-49e1-aca3-017149453294
md"""
**Remark.**
As discussed previously, ``x = 0`` is a regular singular point, so we should pursue a series solution of the form

$y(x) = x^r \sum_{n=0}^∞ a_n x^n = \sum_{n = 0}^∞ a_n x^{r+n}$

where we expect (3.19) to constrain ``r`` as well as determine the coefficients ``a_n``.
Inserting this form into Bessel's Equation gives us

$x^2 (r + n) (r + n - 1) \sum_{n=0}^∞ a_n x^{r + n - 2} + x (r + n) \sum_{n=0}^∞ a_n x^{r + n - 1} + (x^2 - \nu^2) \sum_{n=0}^∞ a_n x^{r + n} = 0$

$\begin{align*}
\sum_{n=0}^∞ \left\{\left[(r + n)(r + n - 1) + (r + n) - \nu^2\right] a_n x^{r + n} + a_n x^{r + n + 2}\right\} &= 0 \tag{3.21}
\end{align*}$
We can simplify (3.21) to get

$\sum_{n=0}^∞ \left\{\left[(r + n)^2 - \nu^2\right] a_n x^{r+n} + a_n x^{r+n+2}\right\} = 0 \tag{3.22}$

In this case, for the ``x^0`` term, we have ``r^2 - \nu^2 = 0`` which gives us two possibilities for ``r``, namely ``r = ±\nu``.
Setting the coefficient of the ``x^1`` term to zero gives

$[(r + 1)^2 - \nu^2] a_1 = [(±2\nu + 1)] a_1 = 0$

which implies that ``a_1 = 0``, unless ``\nu = ±1/2``, a case we will deal with in Section 3.6.3.

It should be clear that we indeed get two solutions for ``y(x)``, one each for ``r = ±\nu``.
Following the recursion relation we will derive from (3.22) results in the two functions we call ``J_{±\nu}(x)``, known as **Bessel Functions of the first kind**.
The theory associated with Bessel Functions is extensive, but we will not go very far into it.
Nearly all cases in physics that involve Bessel Functions result in functions where ``\nu`` is either a positive integer, or a positive half-integer.
"""

# ╔═╡ b8e91d8b-3128-4863-90b1-d8e667c1ab2a
md"""
**Remark.**
At this point, we will specialize to the case where ``\nu = m ∈ ℤ``, an integer.
I will tell you at the outset, but not prove, that for this case, the solutions ``J_m(x)`` and ``J_{-m}(x)`` are *not* linearly independent.
A different solution can be identified, though, usually written as ``Y_m(x)`` and called the **Bessel Function of the Second Kind**, which is independent.
"""

# ╔═╡ 55f2db9d-06eb-4bc3-93fb-f3299d269875
md"""
**Remark.**
With the first two terms of the sum being zero, we can rewrite the first term in curly brackets in (3.22) as

$x^m \left\{\sum_{n=2}^∞ [(m+n)^2 - m^2] a_n x^n\right\} = x^m \left\{\sum_{p=0}^∞ [(m + p + 2)^2 - m^2] a_{p+2} x^{p+2}\right\}$

where we switch to the dummy index ``p = n - 2``.
Switching ``p`` back to ``n``, we replace the above expression in (3.22) and divide out ``x^m`` to get

$\sum_{n=0}^∞ \{[(m + n + 2)^2 - m^2] a_{n+2} + a_n\} x^{n+2} = 0$

giving us the recursion relation

$a_{n+2} = -\frac{1}{(m+n+2)^2 - m^2} a_n = -\frac{1}{(n+2)(2m + n + 2)} a_n$

Since ``a_1 = 0``, the sum is only over even ``n``.
Therefore we define ``n = 2k`` and sum over all integers ``k ≥ 0``.
The recursion relation becomes

$a_{k+1} = -\frac{1}{(2k+2)(2m + 2k + 2)} a_k = -\frac{1}{(k + 1)(m + k + 1)} a_k \frac{1}{2^2} \tag{3.23}$

These coefficients are to be inserted into (3.20) which we now write as

$J_m(x) = \sum_{k=0}^∞ a_k x^{m+2k}$

By convention, we write ``a_0 = \frac{1}{m! 2^m}`` and therefore

$\begin{align*}
a_1 = \frac{(-1)}{(1)(m+1)} a_0 \frac{1}{2^2} &= \frac{(-1)}{(1)(m + 1)!} \frac{1}{2^{m+2}} \\
a_2 = \frac{(-1)}{(2)(m+2)} a_1 \frac{1}{2^2} &= \frac{(-1)^2}{(2⋅1)(m+2)!} \frac{1}{2^{m+4}} \\
\text{that is } \qquad a_k &= \frac{(-1)^k}{(k!)(m + k)!} \frac{1}{2^{m + 2k}}
\end{align*}$

Finally, then, we arrive at the series expansion for the Bessel Function of integer order as

$J_m(x) = \sum_{k=0}^∞ \frac{(-1)^k}{k! (m+k)!} \left(\frac{x}{2}\right)^{m+2k} \qquad m = 0,1,2,3,… \tag{3.24}$
"""

# ╔═╡ 19df86df-58ac-4955-ac11-6fba29adcc7d
md"""
**Remark.**
Figure 3.8 shows on the left ``J_0(x)`` using (3.8) summing over ``k = 0, 1, …, 10``.
The function oscillates with decreasing amplitude, but diverges near ``x = 9``.
This is not surprising, given that the polynomial grows rapidly when the last term is proportional to ``x^{10}``.
"""

# ╔═╡ 79b789a2-91e1-4b0d-ae64-ec003dd5704c
md"""
**Remark.**
Of course, nobody ever uses (3.8) explicitly to calculate Bessel Functions.
The theory of Bessel Functions provides a number of useful algorithms for calculating ``J_m(x)`` to high precision for any ``x``.
The left plot of Figure 3.8 also shows ``J_0(x)`` as calculated by the internal function in MATHMATICA.
The right plots the first three integer order Bessel Functions ``J_0(x)``, ``J_1(x)``, and ``J_2(x)``.
Note how the behavior near ``x = 0`` closely tracks ``x^m``.
"""

# ╔═╡ 289631d3-8856-4f4f-b5d7-a69f42163097
md"### Spherical Bessel functions"

# ╔═╡ 8f7f7a52-48a5-4d06-843d-17afdd2a2022
md"""
**Definition.**
A very common (partial) differential equation in physics is the Helmholtz Equation, namely

$\vec{∇}^2 u(𝐫) + k^2 u(𝐫) = 0 \tag{3.25}$

where ``u(𝐫)`` is a function in three dimensional space of the coordinate ``𝐫``.
We will study this equation in Section 4.2.4.
For now, however, what is important to realize is when we solve this equation in spherical coordinates, the ordinary differential equation

$r^2 R''(r) + 2r R'(r) + [k^2 r^2 - ℓ(ℓ + 1)] R(r) = 0 \tag{3.26}$

where ``ℓ`` is a non-negative integer.
"""

# ╔═╡ dc28ca48-f0dd-447d-a001-b6703273c90a
md"""
**Remark.**
This equation needs to be solved for ``R(r)``, where ``r = |𝐫|``.
If we switch to a (dimensionless) variable ``x = kr``, and write ``R(r) = x^{-1/2} y(x)``, then

$\begin{align*}
R'(r) &= \frac{dR}{dr} = k \frac{d}{dx} \left[x^{-1/2} y(x)\right] = k \left[\frac{y'(x)}{x^{1/2}} - \frac{1}{2} \frac{y(x)}{x^{3/2}}\right] \\
2r R'r(r) &= 2x^{1/2} y'(x) - \frac{y(x)}{x^{1/2}} \\
R''(r) &= \frac{d}{dr} R'(r) = k \frac{d}{dx} \left\{k \left[\frac{y'(x)}{x^{1/2}} - \frac{1}{2} \frac{y(x)}{x^{3/2}}\right]\right\} = k^2 \left[\frac{y''(x)}{x^{1/2}} - \frac{y'(x)}{x^{3/2}} + \frac{3}{4} \frac{y(x)}{x^{5/2}}\right] \\
r^2 R''(r) &= x^{3/2} y''(x) - x^{1/2} y'(x) + \frac{3}{4} \frac{y(x)}{x^{1/2}}
\end{align*}$

Inserting this into (3.26) and multiplying through by ``x^{1/2}`` gives

$x^2 y''(x) + xy'(x) - \frac{1}{4} y(x) + [x^2 - ℓ(ℓ + 1)] y(x) = 0$

which is Bessel's Equation for ``\nu = ℓ + 1/2``.
Therefore, solutions to (3.27) are of the form

$y(x) = c_1 J_{ℓ + 1/2}(x) + c_2 Y_{ℓ + 1/2}(x)$

Of course, physically, we are interested in ``R(r) = (kr)^{-1/2} y(kr)``, so it is customary to define

$\begin{align*}
j_{ℓ}(x) &≡ \sqrt{\frac{\pi}{2x}} J_{ℓ + 1/2}(x) \tag{3.28a} \\
\text{and} \qquad n_{ℓ}(x) &≡ \sqrt{\frac{\pi}{2x}} Y_{ℓ + 1/2}(x) \tag{3.28b}
\end{align*}$

These are known as the **Spherical Bessel Functions**.
It is not very difficult to show that

$j_0(x) = \frac{\sin{x}}{x} \qquad\text{and}\qquad n_0(x) = -\frac{\cos{x}}{x}$

and that there is a recurrence relation for the higher orders, namely

$f_ℓ(x) = (-1)^ℓ x^ℓ \left(\frac{1}{x}\frac{d}{dx}\right)^ℓ f_0(x)$

where ``f_ℓ(x)`` can be either ``j_ℓ(x)`` or ``n_ℓ(x)``.
It is interesting to note that ``j_ℓ(x)`` and ``n_ℓ(x)``, unlike the ``J_\nu(x)``, can be written in terms of sine and cosine functions
"""

# ╔═╡ 045e8f5a-4948-4deb-aac1-d67f65ecf658
md"""
**Remark.**
Figure 3.9 plots ``j_ℓ(x)`` and ``n_ℓ(x)`` for the three lowest values of ``ℓ``.
The ``n_ℓ(x)`` are singular for ``x → 0``, but you are much more likely to encounter the ``j_ℓ(x)`` in future physics courses.
``n_ℓ(x)`` is more applicable to scattering problems in Quantum Mechanics.
"""

# ╔═╡ 890d4c3e-8026-4c30-8ef1-11c4891039b7
md"### Legendre polynomials"

# ╔═╡ 6a29d82e-9564-4978-bd26-1608ddd09c25
md"""
**Remark.**
In physical problems involving the Helmholtz Equation (3.25) where the system has spherical symmetry, that is ``u(𝐫) = u(r)``, you encounter the Legendre Equation

$(1 - x^2) y''(x) - 2xy'(x) + ℓ(ℓ + 1) y(x) = 0 \tag{3.29}$

where ``x = \cos{\theta}`` is defined in terms of the polar angle ``0 ≤ \theta ≤ \pi``.
For most physical problems of interest, ``ℓ`` is a non-negative integer, that is, ``ℓ = 0, 1, 2, …``
"""

# ╔═╡ 630e67a1-93b6-46cf-916a-1ee43b4a7d6a
md"""
**Remark.**
Legendre's Equation has regular singular points at ``x = ±1``, but not at ``x = 0``, so the simple series approach, setting

$y = \sum_{n = 0}^∞ a_n x^n$

should work fine.
Substituting this into (3.29) gives

$\sum_{n = 0}^∞ \left\{n(n - 1) a_n x^{n-2} + [-n(n - 1) - 2n + ℓ(ℓ + 1)] a_n x^n\right\} = 0$

which results in the recursion relation

$a_{n+2} = \frac{n(n - 1) + 2n - ℓ(ℓ + 1)}{(n + 2)(n + 1)} a_n = \frac{n(n + 1) - ℓ(ℓ + 1)}{(n + 2)(n + 1)} a_n$

The free parameters are therefore ``a_0`` and ``a_1``, and these determine the two series, one with only even powers of ``x``, and one with only odd powers.

Clearly, ``a_{ℓ+2} = 0`` for any given ``ℓ``, so the solutions to (3.29) are polynomials of degree ``ℓ``, called Legendre Polynomials ``P_ℓ(x)``.
By convention, we set ``P_ℓ(1) = 1``, and this fixes ``a_0`` and ``a_1``.

The first few Legendre Polynomials are

$\begin{align*}
P_0(x) &= 1 & P_1(x) &= x \\
P_2(x) &= \frac{1}{2} (3x^2 - 1) & P_3(x) &= \frac{1}{2} (5x^3 - 3x) \\
P_4(x) &= \frac{1}{8} (35x^4 - 30x^2 + 3) & P_5(x) &= \frac{1}{8} (63x^5 - 70x^3 + 15x)
\end{align*}$

Figure 3.10 plots the Legendre Polynomials for ``ℓ = 0``, ``ℓ = 1``, ``ℓ = 2``, and ``ℓ = 3``.
These solutions to (3.29) can also be written as

$P_ℓ(x) = \frac{1}{2^ℓ ℓ!} \frac{d^ℓ}{dx^ℓ} (x^2 - 1)^ℓ \tag{3.30}$

known as Rodrigues' Formula.
"""

# ╔═╡ fa8970f0-8891-4eb3-be5e-41887f418ad0
md"## Coupled Differential Equations"

# ╔═╡ 7980e46c-7870-4c26-a48b-bc5d14334b48
md"""
**Remark.**
It is possible, and physically likely, that a system will be governed by more than one differential equation, for more than one dependent variable, and that these dependent variables appear in more than one of the equations.
In this case, we say that the differential equations are **coupled**.
In general, for these cases, we will have to be clever in order to find a solution, even if the equations are linear and homogeneous.
Remember, for the purposes of this course, at least, we are guided by existence and uniqueness.
"""

# ╔═╡ 8c140014-7d70-462f-87dc-e47fbf2947b5
md"""
**Remark.**
Rather than try to treat coupled differential equations in general, we will take the opportunity to solve a specific problem, namely the motion of coupled simple harmonic oscillators.
We will see that generalizing the ansatz we used for the oscillator will set us in the right direction.
It will also provide hints to the concept of **eigenvalues**, which we will cover more thoroughly in Section 6.5.
"""

# ╔═╡ 52a0a8c2-ba44-4163-85ff-af2e60189bd4
md"### Coupled Simple Harmonic Oscillators"

# ╔═╡ 67f13c17-417e-4799-9922-d9494eb68e26
md"""
**Example.**
Figure 3.11 shows a prototype of coupled linear second order differential equations.
Two masses ``m_1`` and ``m_2`` are attached by springs to a fixed wall.
They are also connected by a "coupling" spring, and the force on each mass due to the coupling spring depends on the positions of each of the masses.
Note that the force the coupling spring exerts on ``m_1`` is equal and opposite to the force it exerts on ``m_2``.
Newton's Second Law, applied separately to the two masses, becomes

$\begin{align*}
m_1 ẍ = F_1 = -k_1 x_1 + k_2 (x_2 - x_1) \\
m_2 ẍ = F_2 = -k_3 x_2 - k_2 (x_2 - x_1)
\end{align*}$

If you have trouble seeing the sign on the coupling force, just think about what happens if ``m_2`` is extended more than ``m_1`` in which case the spring wants to compress, moving ``m_1`` to the right and ``m_2`` to the left.

At this point we will make the problem even more specific, and set ``m_1 = m_2 = m`` and ``k_1 = k_2 = k_3``.
Defining ``{\omega_0}^2 = k/m``, we get the differential equations

$\begin{align*}
x_1''(t) + 2{\omega_0}^2 x_1(t) - {\omega_0}^2 x_2(t) &= 0 \tag{3.31a} \\
x_2''(t) + 2{\omega_0}^2 x_2(t) - {\omega_0}^2 x_1(t) &= 0 \tag{3.31b}
\end{align*}$

These differential equations are clearly "coupled."
The equation for ``x_1(t)`` depends on the function ``x_2(t)``, and the equation for ``x_2(t)`` depends on the function ``x_1(t)``.

We will approach the solution using the ansatz

$x_1(t) = a_1 e^{i \omega t} \qquad\text{and}\qquad x_2(t) = a_2 e^{i \omega t}$

and look to see what we can learn about ``\omega``, ``a_1``, and ``a_2``.
This ansatz would seem to imply that both masses oscillate at the same frequency ``\omega``.
However, let's plow forward and see what happens.
Inserting this ansatz into (3.31) we have

$\begin{align*}
-\omega^2 a_1 + 2{\omega_0}^2 a_1 - {\omega_0}^2 a_2 &= 0 \\
-\omega^2 a_2 + 2{\omega_0}^2 a_2 - {\omega_0}^2 a_1 &= 0 \\
\end{align*}$

Let me rewrite these equations in a suggestive form, and that will become more clear to you when we cover systems of linear equations in Section 6.4.
We have

$\begin{align*}
(2{\omega_0}^2 - \omega^2) a_1 - {\omega_0}^2 a_2 &= 0 \tag{3.32a} \\
-{\omega_0}^2 a_1 + (2{\omega_0}^2 - \omega^2) a_2 &= 0 \tag{3.32b}
\end{align*}$

One obvious solutions to these equations is ``a_1 = a_2 = 0``, but that just means that neither mass ever moves.
There would also be no way to accommodate arbitrary initial conditions for position and velocity on each of the masses.
Our notions of existence and uniqueness tell us that there has to be another way to solve these equations.

Remember that we have ``\omega^2`` to play with.
If ``\omega^2`` was set to some value that made both equations the *same* equation, then we could get out of this would be constraints on the ratio of ``a_1 / a_2``, in which case we can use initial conditions to solve the rest of the problem.
The two equations (3.32) become one equation if the coefficients of ``a_1`` and ``a_2`` are in the same ratio, that is

$\frac{2{\omega_0}^2 - \omega^2}{-{\omega_0}^2} = \frac{-{\omega_0}^2}{2{\omega_0}^2 - \omega^2}$

This equation is simple to solve for ``\omega^2``.
We get

$(2{\omega_0}^2 - \omega^2)^2 = {\omega_0}^4 \implies \omega^2 = 2{\omega_0}^2 ± {\omega_0}^2 = {\omega_0}^2, 3{\omega_0}^2$

Indeed, there are two frequencies ``\omega`` for which the two masses can oscillate together.
Of course, the real solution can be any linear combination of these solutions, each of which is proportional to ``e^{±i\omega t}``.
There is an important constraint on these solutions, though, namely the ratio of ``a_1`` and ``a_2`` that comes from (3.32).
For each case, we find

${\omega_0}^2 a_1 - {\omega_0}^2 a_2 = 0 \implies a_2 = a_1 \qquad \text{ where } \qquad \omega^2 = {\omega_0}^2$

$-{\omega_0}^2 a_1 - {\omega_0}^2 a_2 = 0 \implies a_2 = -a_1 \qquad \text{ where } \qquad \omega^2 = 3{\omega_0}^2$

In other words, if the two masses are going to oscillate at the same frequency, then they either follow each other with the same amplitude and phase (at frequency ``\omega = \omega_0``) or they follow each other with the same amplitude but ``180^∘`` out of phase (at frequency ``\omega = \sqrt{3} \omega_0``).

The general solution can now be written in terms of the four constants ``a``, ``b``, ``c``, and ``d`` as

$\begin{align*}
x_1(t) &= ae^{i \omega_0 t} + be^{-i \omega_0 t} + ce^{i\sqrt{3} \omega_0 t} + de^{-i \sqrt{3} \omega_0 t} \tag{3.33a} \\
x_2(t) &= ae^{i \omega_0 t} + be^{-i \omega_0 t} - ce^{i\sqrt{3} \omega_0 t} - de^{-i \sqrt{3} \omega_0 t} \tag{3.33b} \\
\end{align*}$

The constants are determined from the initial conditions on ``x_1(0)``, ``ẋ_1(0)``, ``x_2(0)``, and ``ẋ_2(0)``.
"""

# ╔═╡ 9e9ec1eb-a094-40bf-b258-ef73be6941c2
md"## Green's Functions"

# ╔═╡ bbb0be0c-2af1-4bb0-84c6-90155f5764a5
md"# Vector Calculus and Partial Differential Equations"

# ╔═╡ ba761680-fda7-41b0-a8c8-7779c2bf912a
md"## Vectors as Spatial Variables"

# ╔═╡ a84f61d7-af37-4d18-8c5a-a81533505736
md"""
**Remark.**
Your first introduction to a "vector" was probably something written like ``\vec{r}`` which stood for three (real number) values, likely called ``x``, ``y``, and ``z``, and which located a point in three dimensional space.
A very simple form might have been ``\vec{r} = (x,y,z)``, and this tells the position of the point by marking off the distance on the ``x``-, ``y``-, and ``z``-axes.
However, we will be more sophisticated than this, and write

$\vec{r} = x \hat{i} + y \hat{j} + z \hat{k} \tag{4.1}$

where ``\hat{i}``, ``\hat{j}``, and ``\hat{k}`` are **unit vectors** in the ``x``-, ``y``-, and ``z``-directions.
"""

# ╔═╡ 3e96c1f0-305a-49ef-825b-391744238159
md"""
**Remark.**
More generally, a vector ``\vec{A}`` will be regarded as an element of ``ℝ^2`` or ``ℝ^3`` which represents some physical quantity in two-dimensional or three-dimensional space.
Equation (4.1) is just one example.
In fact, if it represents the physical location of some object that can move with time, then another obvious vector is the velocity, namely

$\vec{v}(t) = \frac{d\vec{r}}{dt} = \frac{dx}{dt} \hat{i} + \frac{dy}{dt} \hat{j} + \frac{dz}{dt} \hat{k}$

The next step would be to define the acceleration vector ``\vec{a} = d\vec{v}/dt``.
In general, we denote the components of a vector ``\vec{A}`` as ``A_x``, ``A_y``, and ``A_z``, and write

$\vec{A} = A_x \hat{i} + A_y \hat{j} + A_z \hat{k} \tag{4.2}$

The **magnitude**, or "length" of a vector ``\vec{A} = A_x \hat{i} + A_y \hat{j} + A_z \hat{k}`` is

$|\vec{A}| = \sqrt{{A_x}^2 + {A_y}^2 + {A_z}^2} \tag{4.3}$

which of course is a positive real number.
"""

# ╔═╡ 47fc994d-8b4b-4c20-ba1e-e1f1d588db54
md"""
**Remark.**
It happens in physics that a vector ``\vec{A}`` represents some physical quantity that could have different values at different points ``\vec{r}`` in space, or even at different times.
In other words, we have ``\vec{A} = \vec{A}(\vec{r}) = \vec{A}(x,y,z)`` or ``\vec{A} = \vec{A}(\vec{r},t) = \vec{A}(x,y,z,t)``.
In this case, we refer to ``\vec{A}`` as a **vector field**.
"""

# ╔═╡ 6b99c81f-468b-455a-aeb6-116536f3afec
md"""
**Remark.**
We could also have a so-called **scalar field** which depends on position ``\vec{r}`` (and possibly time ``t``), although the use of the term "scalar" needes some consideration that we'll deal with later.
We will soon be discussing "vector differential operators" which can turn a scalar field into a vector field, in exactly the same way that the static electric field ``\vec{E}(\vec{r})`` can be derived from a static electric potential ``\Phi(\vec{r})``.
"""

# ╔═╡ 19dc5a87-b2cb-405f-ba65-362525e205eb
md"### Axis rotations"

# ╔═╡ b3dfcce8-829f-423b-8f71-063b80dc6aba
md"""
**Remark.**
We can always do physics in some set of axes ``x'y'z'`` that are rotated with respect to ``xyz``.
This rotation can be specified in any number of ways, but will typically involve three angles.
(In rigid body classical mechanics, and in the theory of angular momentum in quantum mechanics, these three angles are called **Euler Angles**.)
When we study matrix operations in Section 6.3 we will see that matrices with certain properties are a handy way to describe rotations, and these matrices form a **group**.

For now, though, it's just important to realize that if we write some vector as

$\begin{align*}
\vec{A} &= A_x \hat{i} + A_y \hat{j} + A_z \hat{k} \\
\text{or} \quad &= A_{x'} \hat{i}' + A_{y'} \hat{j}' + A_{z'} \hat{k}'
\end{align*}$

then it is still the same vector, even though the magnitudes of the components ``A_x``, ``A_y``, and ``A_z`` do not need to be the same in the "primed" coordinatee system, that is ``A_{x'}``, ``A_{y'}``, and ``A_{z'}``.
"""

# ╔═╡ b5e3a8a8-da9b-4269-97ff-4cf1023e9482
md"### Inner product and cross product"

# ╔═╡ d1bd6474-a7fa-4ff1-aea7-a35da2fbde01
md"""
**Definition.**
The **inner product**, also known as the **scalar product** or the **dot product**, of two vectors ``\vec{A}`` and ``\vec{B}`` is a geometric quantity,

$\vec{A} ⋅ \vec{B} = |\vec{A}||\vec{B}| \cos{\psi} \tag{4.4}$
"""

# ╔═╡ 4f30aa53-aecc-40b7-92d9-8a32723db55a
md"""
**Remark.**
A simple interpretation of this formula is that the dot product is the projection of ``\vec{A}`` in the direction of ``\vec{B}`` (or vice versa).
"""

# ╔═╡ a702a457-e2f9-4b86-9444-8826750e8a05
md"""
**Remark.**
The inner product of a vector with itself is the square of its magnitude, that is

$\vec{A} ⋅ \vec{A} = |\vec{A}|^2$

If we apply this to unit vectors, then it is clear that the inner product of any unit vector with itself is unity.
For example

$\hat{i} ⋅ \hat{i} = \hat{j} ⋅ \hat{j} = \hat{k} ⋅ \hat{k} = \hat{r} ⋅ \hat{r} = \hat{\phi} ⋅ \hat{\phi} = \hat{\theta} ⋅ \hat{\theta} = 1$
"""

# ╔═╡ b556b6bc-8625-4479-9e49-da0bd8b19080
md"""
**Remark.**
If two vectors ``\vec{A}`` and ``\vec{B}`` are perpendicular to each other, that is ``\psi = 90^∘``, then ``\vec{A} ⋅ \vec{B} = 0``.
In this case, we say that ``\vec{A}`` and ``\vec{B}`` are **orthogonal** to each other.
"""

# ╔═╡ e0104f91-aa4e-40a7-a7ff-96cdfff26642
md"""
**Remark.**
All of the unit vectors are orthogonal to each other.
That is,

$\begin{align*}
\hat{i} ⋅ \hat{j} = \hat{j} ⋅ \hat{k} = \hat{k} ⋅ \hat{i} = 0 &\quad \text{Cartesian} \\
\hat{r} ⋅ \hat{\phi} = \hat{\phi} ⋅ \hat{k} = \hat{k} ⋅ \hat{r} = 0 &\quad \text{Cylindrical} \\
\hat{r} ⋅ \hat{\theta} = \hat{\theta} ⋅ \hat{\phi} = \hat{\phi} ⋅ \hat{r} = 0 &\quad \text{Spherical}
\end{align*}$

This allows us to write the dot product using coordinates,

$\vec{A} ⋅ \vec{B} = A_x B_x + A_y B_y + A_z B_z \tag{4.5}$

where

$\begin{align*}
\vec{A} &= A_x \hat{i} + A_y \hat{j} + A_z \hat{k} \\
\vec{B} &= B_x \hat{i} + B_y \hat{j} + B_z \hat{k}
\end{align*}$
"""

# ╔═╡ 8ea64597-036c-4fef-a85e-a0e1e80d1777
md"""
**Definition.**
The **cross product** ``\vec{A} × \vec{B}`` produces a vector ``\vec{C}`` such that the magnitude ``|\vec{C}|`` is the area of the parallelogram formed by ``\vec{A}`` and ``\vec{B}``.
"""

# ╔═╡ 8ece80ff-0bd6-4234-9026-94ec66450b47
md"""
**Remark.**
The cross product of a vector with itself is zero, i.e., ``\vec{A} × \vec{A} = 0``.
"""

# ╔═╡ 51309b78-8d44-4dbb-806b-51b4a5077f21
md"""
**Definition.**
The **right-hand rule** for cross products is a trick used to determine the direction of a cross product, for example, ``\vec{A} × \vec{B}`` by imagining that you start from ``\vec{A}`` and turn your fingers towards ``\vec{B}``.
"""

# ╔═╡ ed60797e-dfaa-434d-ba10-952ad330d0fb
md"""
**Remark.**
If ``\vec{A} × \vec{B} = \vec{C}`` then ``\vec{B} × \vec{A} = -\vec{C}``.
"""

# ╔═╡ 49be53c1-2a13-41cf-b2e6-f5426ccef4f7
md"""
**Remark.**
Consider the Cartesian unit vectors ``\hat{i}``, ``\hat{j}``, and ``\hat{k}``.
They are orthogonal, so the magnitude of their cross products is just unity.
How we define the direction of their cross product, will set the "handedness" of the coordinate system.
The convention that everyone sticks with, defining a "right handed" coordinate system, is the following:

$\begin{align*}
\hat{i} × \hat{j} &= \hat{k} \tag{4.6a} \\
\hat{k} × \hat{i} &= \hat{j} \tag{4.6b} \\
\hat{j} × \hat{k} &= \hat{i} \tag{4.6c}
\end{align*}$

Notice how thet vectors "cyclically rotate" through the three equations.
If we reverse any one (or all three) of these definitions, the coordinate system would be "left handed".
"""

# ╔═╡ cd15d4d6-630d-417f-9ae4-f04ca3f046f9
md"""
**Remark.**
The cross product of the unit vectors let us write out the cross product in terms of components, similar to the way we did it for the dot product.
We have

$\vec{A} × \vec{B} = (A_y B_z - A_z B_y) \hat{i} + (A_z B_x - A_x B_z) \hat{j} + (A_x B_y - A_y B_x) \hat{k} \tag{4.7}$
"""

# ╔═╡ 5f5eabae-a354-4063-9eb2-1117facf1e19
md"#### Calculations with components using ``\delta_{ij}`` and ``\epsilon_{ijk}``"

# ╔═╡ bf8faaee-07f0-4e69-a919-fc9d164ed84e
md"""
**Notation.**
We can write the dot product from (4.5) as

$\vec{A} ⋅ \vec{B} = \sum_{i = 1}^3 A_i B_i$

where ``i = 1,2,3`` are associated with components ``x,y,z``, respectively.
"""

# ╔═╡ cd1d3d2f-ebd4-46ce-85b8-65fb82dec8b2
md"""
**Notation.**
The **summation convention** says that if an index is repeated in an expression, it is implied that we need to sum over that index, e.g.,

$\vec{A} ⋅ \vec{B} = A_i B_i$

where the sum over ``i`` is implied.
"""

# ╔═╡ 64c52950-ffeb-4b5f-bd7e-8c8846092f27
md"""
**Remark.**
For unit vectors we can write ``\hat{e}_1 = \hat{i}``, ``\hat{e}_2 = \hat{j}``, ``\hat{e}_3 = \hat{k}``, so

$\vec{A} = A_i \hat{e}_i$

is a handy way to write a vector.
A second vector might be ``\vec{B} = B_j \hat{e}_j``, where a different summation index ``j`` is used instead of ``i``.
In this case the dot product would be written

$\vec{A} ⋅ \vec{B} = A_i \hat{e}_i ⋅ B_j \hat{e}_j = A_i B_j \hat{e}_i ⋅ \hat{e}_j$

where now this represents nine terms, summing over both ``i`` and ``j``.
Of course ``\hat{e}_i ⋅ \hat{e}_j`` equals unity if ``i = j`` and is zero otherwise, so the nine terms collapse to the three terms represented by ``A_i B_i``.
There is a very convenient way to write this using the **Kronecker delta** ``\delta_{ij}``, defined simply as

$\delta_{ij} = \begin{cases}
1 &\text{if } i = j \\
0 &\text{otherwise}
\end{cases}$

That is ``\hat{e}_i ⋅ \hat{e}_j = \delta_{ij}`` and we write

$\vec{A} ⋅ \vec{B} = A_i B_j \delta_{ij} = A_i B_i$

The Kronecker delta effectively lets you "get rid of an index" in the implied sum.
"""

# ╔═╡ b02a8baf-44b2-495e-a81b-5389191936e4
md"""
**Remark.**
There is a similar symbol that helps us work with cross products known as the **Levi-Civita symbol for three dimensions** however most people refer to it as the **totally antisymmetric symbol**.
We write it as ``\epsilon`` with three indices that I'll call ``i``, ``j``, and ``k`` (not to be confused with the names of the unit vectors).
The definition is

$\begin{align*}
\epsilon_{123} &= +1 \\
\epsilon_{ijk} &= -\epsilon_{jik} = -\epsilon_{ikj} - \epsilon_{kji}
\end{align*}$

In other words, ``\epsilon_{ijk} = 1`` if the ``i,j,k`` are in standard right-handed order, and flipping any two indices reverses the sign.
Clearly, then, if any two indices are the same, then ``\epsilon_{ijk} = 0``.
We can then writet he cross product ``\vec{A} × \vec{B}`` as

$\vec{A} × \vec{B} = \epsilon_{ijk} \hat{e}_i A_j B_k$

a sum which, technically, has 9 terms, three of which are zero.
We can also write

$(\vec{A} × \vec{B})_i = \epsilon_{ijk} A_j B_k$

which gives the ``i``th component of ``\vec{A} × \vec{B}``.
"""

# ╔═╡ 6fdcdbdd-355a-4a39-88ae-b5f903fe3050
md"""
**Remark.**
A very useful theorem which connects the totally antisymmetric symbol with the Kronecker delta, written using our summation convention, is

$\epsilon_{ijk} \epsilon_{imn} = \delta_{jm} \delta_{kn} - \delta_{jn} \delta_{km} \tag{4.8}$

Note that the left side sums over ``i``.
We can prove this using the "back-cab" rule, namely

$\vec{A} × (\vec{B} × \vec{C}) = \vec{B} (\vec{A} ⋅ \vec{C}) - \vec{C}(\vec{A} ⋅ \vec{B})$

If we write this out for the ``i``th component of the triple cross product, we get

$\begin{align*}
\left[\vec{A} × (\vec{B} × \vec{C})\right]_i &= \epsilon_{ijk} A_j (\vec{B} × \vec{C})_k = \epsilon_{ijk} A_j \epsilon_{kmn} B_m C_n = \epsilon_{kij} \epsilon_{kmn} A_j B_m C_n \\
&= (\delta_{im} \delta_{jn} - \delta_{in} \delta_{jm}) A_j B_m C_n = A_j B_i C-j - A_j B_j C_i \\
&= B_i (\vec{A} ⋅ \vec{C}) - C_i (\vec{A} ⋅ \vec{B})
\end{align*}$

which is the "back-cab" rule for the ``i``-th component of ``\vec{A} × (\vec{B} × \vec{C})``.
Notice that a cyclic permutation is used to turn ``\epsilon_{ijk}`` into ``\epsilon_{kij}`` to use (4.8).
"""

# ╔═╡ 60d48072-afb8-499e-bc6b-8eb15a92b084
md"### Plane polar, cylindrical, and spherical coordinates"

# ╔═╡ 256970c4-a220-4686-aa74-c6fae52f3516
md"""
**Example.**
Figure 1.3 shows how to locate a point in a plane using either Cartesian coordinates ``(x,y)`` or **plane polar** coordinates ``(r, \phi)`` and how to locate a point in three dimensional space using either Cartesian coordinates ``(x,y,z)`` or **spherical polar** coordinates ``(r, \theta, \phi)``.
"""

# ╔═╡ aacbc94e-5943-4cf7-9d0b-8986f0f433c9
md"""
**Remark.**
There is a second way to locate a point in three dimensional space, where plane polar coordinates are used in the ``xy`` plane, but the ``z``-coordinate is intact.
These are called **cylindrical polar** coordinates.
"""

# ╔═╡ 273fff7b-586a-4ff5-97a8-33e43f01c49b
md"""
**Remark.**
We can of course represent vectors in polar coordinates just as well as in Cartesian coordinates.
It's the same vector!
We're just using a different coordinate system to specify it.
We would write

$\vec{A} = A_r \hat{r} + A_{\phi} \hat{\phi} + A_z \hat{k}$

in cylindrical coordinates, and

$\vec{A} = A_r \hat{r} + A_{\theta} \hat{\theta} + A_{\phi} \hat{\phi}$

in spherical coordinates.
The unit vectors have the same meaning as the Cartesian case, *but these unit vectors have a direction that depends on the position of the point in space to which they refer*.
This makes a huge difference if we ever need to calculate something like ``∂\vec{A}/∂x``, since we need to consider the derivatives of the components *as well as the unit vectors*.
"""

# ╔═╡ 5477d0b3-d887-49a5-bdf8-b6cf41cd9a8a
md"""
**Example.**
Consider the polar coordinates.
Figure 1.3 makes it clear that

$\begin{align*}
x &= r \cos{\phi} \tag{4.9a} \\
y &= r \sin{\phi} \tag{4.9b}
\end{align*}$

Now imagine that we change the position ``\vec{r}`` a tiny by ``d\vec{r} = dx \hat{i} + dy \hat{j}``.
This means that ``x`` and ``y`` change by the infinitesimal amounts

$\begin{align*}
dx &= \cos{\phi} \,dr - r \sin{\phi} \,d\phi \\
dy &= \sin{\phi} \,dr + r \cos{\phi} \,d\phi
\end{align*}$

To find the unit vectors ``\hat{r}`` and ``\hat{\phi}``, we consider the change ``d\vec{r}`` happening in those two specific directions.
To see what happens in the ``r``-direction, set ``d\phi = 0``.
This gives

$d\vec{r} = \hat{i} \cos{\phi} \,dr + \hat{j} \sin{\phi} \,dr = (\hat{i} \cos{\phi} + \hat{j} \sin{\phi}) \,dr = \hat{r} \,dr$

where ``\hat{r} = (\hat{i} \cos{\phi} + \hat{j} \sin{\phi})`` because it is clear that ``dr`` is the magnitude of ``d\vec{r}`` when the change only happens in the ``r``-direction.
If instead we move in the ``\phi``-direction and set ``dr = 0``, we get

$d\vec{r} = -\hat{i} r \sin{\phi} \,d\phi + \hat{j} r \cos{\phi} \,d\phi = (-\hat{i} \sin{\phi} + \hat{j} \cos{\phi}) r \,d\phi = \hat{\phi} r \,d\phi$

where ``\hat{\phi} = -\hat{i} \sin{\phi} + \hat{j} \cos{\phi}`` because the distance along an arc at radius ``r`` through an angle ``d\phi`` is ``r \,d\phi``, and that is the change in the vector ``\vec{r}`` when we move only in the ``\phi``-direction.
"""

# ╔═╡ 3110c102-7039-4fee-a21e-a4e8103a831d
md"""
**Remark.**
To summarize, the unit vectors for plane polar coordinates ``r`` and ``\phi`` are

$\begin{align*}
\hat{r} &= \hat{i} \cos{\phi} + \hat{j} \sin{\phi} \tag{4.10a} \\
\hat{\phi} &= -\hat{i} \sin{\phi} + \hat{j} \cos{\phi} \tag{4.10b}
\end{align*}$

The position vector is

$\vec{r} = \hat{i} x + \hat{j} y = r (\hat{i} \cos{\phi} + \hat{j} \sin{\phi}) = r \hat{r} \tag{4.11}$

and an infinitesimal change in the position vector is

$d\vec{r} = \hat{i} \,dx + \hat{j} \,dy = dr \,\hat{r} + r \,d\phi \, \hat{\phi} \tag{4.12}$
"""

# ╔═╡ 1666d035-af7b-4b16-b75d-a68477f9c30b
md"""
**Remark.**
Figure 4.2 shows the unit vector orientations for both Cartesian and plane polar coordinates.
Unlike the Cartesian unit vectors ``\hat{i}`` and ``\hat{j}``, the unit vectors ``\hat{r}`` and ``\hat{\phi}`` change their direction as you move around the plane.
This will become a very important fact when it comes time to talk about derivatives in plane polar coordinates!
"""

# ╔═╡ c8644af2-5617-48c8-a0ca-4cceae9e5db6
md"""
**Remark.**
For cylindrical coordinates in three dimensions, we simply include the unit vector ``\hat{k}`` in the ``z``-direction.
This is the same unit vector and coordinate as in the Cartesian system.
"""

# ╔═╡ 1a243b9e-6a35-435d-a8cd-88de30bc258a
md"""
**Remark.**
For spherical polar coordinates, Figure 1.3 shows that the projection of the radial coordinate onto the ``xy`` plane is ``r \sin{\theta}``.
The transformation equations are therefore

$\begin{align*}
x &= r \sin{\theta} \cos{\phi} \tag{4.13a} \\
y &= r \sin{\theta} \sin{\phi} \tag{4.13b} \\
z &= r \cos{\theta} \tag{4.13c}
\end{align*}$

which leads to the spherical unit vectors in terms of the Cartesian unit vectors as

$\begin{align*}
\hat{r} &= \hat{i} \sin{\theta} \cos{\phi} + \hat{j} \sin{\theta} \sin{\phi} + \hat{k} \cos{\theta} \tag{4.14a} \\
\hat{\theta} &= \hat{i} \cos{\theta} \cos{\phi} + \hat{j} \cos{\theta} \sin{\phi} - \hat{k} \sin{\theta} \tag{4.14b} \\
\hat{\phi} &= \hat{i} \sin{\phi} + \hat{j} \cos{\phi} \tag{4.14c} \\
\end{align*}$

Plane polar coordinates and unit vectors can now be written directly from the spherical case for ``\theta = \pi / 2``.
Figure 4.2 also depicts the spherical unit vectors.
"""

# ╔═╡ f666d9f7-750a-402f-858d-857908d03f0b
md"### Vector generalizations"

# ╔═╡ 4760c32b-1083-46cf-9f02-36bd59258213
md"## Vector operators"

# ╔═╡ 2da1d70c-1741-41bb-be0d-f5bd6f7feac7
md"""
**Remark.**
Now we turn our attention to **spatial differential vector operators**.
These are constructs that take (partial) derivatives of functions of spatial position, i.e., **fields**.
We will construct these operators first in Cartesian coordinates, but then also give them, with some derivations, in cylindrical and spherical coordinates.
"""

# ╔═╡ a2649f88-c74e-4664-bdaa-4cb5f36759b4
md"### Gradient"

# ╔═╡ 347bade3-b367-4ce5-b5d8-7441983c1e33
md"""
**Definition.**
Suppose you have a scalar field ``f(\vec{r}) = f(x,y,z)`` (or ``f(x,y)`` in two dimensions) over some region in space.
You will typically need to know how fast that function changes, that is, you will need to derivative.
However, the rate of change will depend on which direction in space you are moving.
Somehow we need to come up with a "derivative" that respects the direction in space.
In other words we need a vector version of the derivative.

That vector version of the derivative is called the **gradient** of ``f(𝐫)``, written in Cartesian coordinates as

$\vec{∇} = \hat{i} \frac{∂f}{∂x} + \hat{j} \frac{∂f}{∂y} + \hat{k} \frac{∂f}{∂z}$
"""

# ╔═╡ c261a91b-63e4-438b-bf3c-edd1f6518125
md"""
**Remark.**
This vector quantity, in principle different at any different point in space, will tell the direciton in which the change of ``f(𝐫)`` is a maximum.
Figure 4.3 is a visualization of the gradient for a particular two-dimensional scalar field.
(Actually, it is the negative of the gradient that is plotted, only because it feels more natural to go down the hill instead of up it.)
Notice how the magnitude of the gradient (given by the color of the arrow) is larger where the hill is steeper.
"""

# ╔═╡ f556fe81-5408-4204-a214-0b771b3faa20
md"""
**Remark.**
It is not hard to see that the gradient tells us the direction in which the change in ``f(\vec{r})`` is greatest.
Consider moving in some direction ``\vec{s}``.
The infinitesimal change in the distance along ``\vec{s}`` is ``ds``, so the derivative of ``f(\vec{r})`` in this direction is

$\frac{df}{ds} = \frac{1}{ds} df = \frac{1}{ds} \left[\frac{∂f}{∂x} dx + \frac{∂f}{∂y} dy + \frac{∂f}{∂z} dz\right] = \vec{∇} f ⋅ \left[\hat{i} \frac{dx}{ds} + \hat{j} \frac{dy}{ds} + \hat{k} \frac{dz}{ds}\right] = \vec{∇} f ⋅ \hat{s}$

where ``\hat{s}`` is the unit vector in the ``s``-direction, since ``ds^2 = dx^2 + dy^2 + dz^2``.
Of course, ``\vec{∇} f ⋅ \hat{s} = |\vec{∇} f| \cos{\psi}`` where ``\psi`` is the angle between the gradient and ``\vec{s}``.
Therefore, the direction of greatest change is when ``\psi = 0``, that is, in the direction of the gradient.
"""

# ╔═╡ 36255014-ce33-4dbd-9a41-f618635d9397
md"""
**Remark.**
We will find it handier to think of ``\vec{∇}`` as a **vector operator** which we write as

$\vec{∇} = \hat{i} \frac{∂}{∂x} + \hat{j} \frac{∂}{∂y} + \hat{k} \frac{∂}{∂z} \quad \text{Cartesian coordinates} \tag{4.15}$

In other words, ``\vec{∇} f`` is the gradient operator "acting on" the field ``f(\vec{r})``.
Similarly, we can think of ``\hat{i} ⋅ \vec{∇} f = \frac{∂}{∂x}`` as a differential operator, and so forth.
"""

# ╔═╡ d7fab116-219b-45d5-aa9a-eeb553933aff
md"""
**Example.**
It is straightforward to write down the gradient operator in different coordinate systems.
For example, if ``f(\vec{r})`` is expressed in cylindrical coordinates ``r, \phi, z``, then

$\vec{∇} f = \hat{i} \frac{∂f(r, \phi, z)}{∂x} + \hat{j} \frac{∂f(r, \phi, z)}{∂y} + \hat{k} \frac{∂f(r, \phi, z)}{∂z}$

and we use the chain rule to express the derivatives in terms of ``r, \phi, z``.
We have

$\frac{∂f}{∂x} = \frac{∂f}{∂r} \frac{∂r}{∂x} + \frac{∂f}{∂\phi} \frac{∂\phi}{∂x} + \frac{∂f}{∂z} \frac{∂z}{∂x}4$

Inverting (4.9) gives

$r = (x^2 + y^2)^{1/2} \qquad\text{so}\qquad \frac{∂r}{∂x} = \frac{x}{(x^2 + y^2)^{1/2}} = \frac{x}{r} = \cos{\phi}$

and

$\tan{\phi} = \frac{y}{x} \qquad\text{so}\qquad \frac{1}{\cos^2{\phi}} \frac{∂\phi}{∂x} = -\frac{y}{x^2} = \frac{-r \sin{\phi}}{r^2 \cos^2{\phi}} \qquad\text{and}\qquad \frac{∂\phi}{∂x} = -\frac{1}{r} \sin{\phi}$

Of course, ``\frac{∂z}{∂x} = 0`` so the first term of ``\vec{∇} f`` in cylindrical coordinates is

$\hat{i} \frac{∂f(r,\phi,z)}{∂x} = \hat{i} \left[\frac{∂f}{∂r} \cos{\phi} + \frac{1}{r} \frac{∂f}{∂\phi} (-\sin{\phi}) + 0\right] = \hat{i} \left[\cos{\phi} \frac{∂f}{∂r} - \sin{\phi} \frac{1}{r} \frac{∂f}{∂\phi}\right]$

(Note the ``\frac{1}{r}`` factor in front of the derivatives, which makes the expression dimensionally correct.)
Similarly, the second term is

$\hat{i} \frac{∂f(r,\phi,z)}{∂y} = \hat{j} \left[\sin{\phi} \frac{∂f}{∂r} + \cos{\phi} \frac{1}{r} \frac{∂f}{∂\phi}\right]$

The third term is just ``\hat{k} \frac{∂f}{∂z}``, or simply missing if we are working in plane polar coordinates.
Putting this all together, the gradient becomes

$\begin{align*}
\vec{∇} f &= \hat{i} \left[\cos{\phi} \frac{∂f}{∂r} - \sin{\phi} \frac{1}{r} \frac{∂f}{∂\phi}\right] + \hat{j} \left[\sin{\phi} \frac{∂f}{∂r} + \cos{\phi} \frac{1}{r} \frac{∂f}{∂\phi}\right] + \hat{k} \frac{∂f}{∂z} \\
&= (\hat{i} \cos{\phi} + \hat{j} \sin{\phi}) \frac{∂f}{∂r} + (-\hat{i} \sin{\phi} + \hat{j} \cos{\phi}) \frac{1}{r} \frac{∂f}{∂\phi} + \hat{k} \frac{∂f}{∂z} \\
&= \hat{r} \frac{∂f}{∂r} + \hat{\phi} \frac{1}{r} \frac{∂f}{∂\phi} + \hat{k} \frac{∂f}{∂z}
\end{align*}$

where we made the use of the expressions (4.10) for the unit vectors in plane polar coordinates.
This means that the gradient operator in cylindrical coordinates is

$\vec{∇} = \hat{r} \frac{∂}{∂r} + \hat{\phi} \frac{1}{r} \frac{∂}{∂\phi} + \hat{k} \frac{∂}{∂z} \qquad \text{Cylindrical coordinates} \tag{4.16}$

"""

# ╔═╡ 0a80a53d-bbcb-4ffb-9215-8da07c53a0fe
md"""
**Remark.**
It's nice to see this carried out from the fundamentals, but there is in fact an easier way to get this result.
In plane polar coordinates, the infinitesimal change in the position vector is given by (4.12).
If you think of the gradient as the directional derivative, simple inspection shows that if you move in the radial direction only, the derivative is ``\frac{∂}{∂r}``.
On the other hand, if you move in the axial direction only, the derivative is ``\frac{1}{r} \frac{∂}{∂\phi}``.
Including the ``z``-coordinate, then, the gradient operator is clearly (4.16).
"""

# ╔═╡ eb4df54e-d3fb-47d7-980a-40dd811d3d28
md"""
**Remark.**
For spherical coordinates, you carry exactly the same way, but using (4.13) instead of (4.10).
You find

$\vec{∇} = \hat{r} \frac{∂}{∂r} + \hat{\theta} \frac{1}{r} \frac{∂}{∂\theta} + \hat{\phi} \frac{1}{r \sin{\theta}} \frac{∂}{∂\phi} \qquad\text{Spherical coordinates} \tag{4.17}$
"""

# ╔═╡ 8952a529-3364-4367-b84b-a3a7cc68a338
md"### Divergence"

# ╔═╡ 48192e5d-a668-4598-8778-a5c9789fa021
md"""
**Remark.**
We can define other operators based on the gradient operator.
Given a vector field

$\vec{V}(\vec{r}) = \vec{V}(x,y,z) = \hat{i} V_x(x,y,z) + \hat{j} V_y(x,y,z) + \hat{k} V_z(x,y,z) \tag{4.18}$

we can use the gradient operator to measure how much the field "diverges" in a region of space.
This will be covered in more detail when we cover Gauss' theorem, but for now we can think of it as measuring how much of ``\vec{V}(\vec{r})`` has a "flow" that emerges from a region of space.
"""

# ╔═╡ 6607f701-0281-430f-887f-8932ea0b9359
md"""
**Definition.**
We define the **divergence** of a vector field ``\vec{V}(\vec{r}) = \vec{V}(x,y,z)`` as

$\vec{∇} ⋅ \vec{V} = \frac{∂V_x}{∂x} + \frac{∂V_y}{∂y} + \frac{∂V_z}{∂z} \tag{4.19}$

where we are literally taking the dot product of the vector operator ``\vec{∇}`` with the vector field ``\vec{V}``.
"""

# ╔═╡ 429cf533-be28-4472-8e38-3e2b1fb92801
md"""
**Remark.**
It is very important to note that when we did this, we treated the unit vectors ``\hat{i}``, ``\hat{j}``, and ``\hat{k}`` as constants.
Indeed, they do not depend on position.
However, this will not be the case when we consider cylindrical and spherical coordinates.
"""

# ╔═╡ 59ba803c-31ab-450c-bf26-c2e438a55408
md"""
**Definition.**
The divergence in cylindrical and spherical coordinates are defined as

$\begin{align*}
\vec{∇} ⋅ \vec{V} &= \frac{1}{r} \frac{∂}{∂r} (r V_r) + \frac{1}{r} \frac{∂V_{\phi}}{∂\phi} + \frac{∂V_z}{∂z} &&\text{Cylindrical} \tag{4.20} \\
\vec{∇} ⋅ \vec{V} &= \frac{1}{r^2} \frac{∂}{∂r} (r^2 V_r) + \frac{1}{r \sin{\theta}} \frac{∂}{∂\theta} (\sin{\theta} \, V_{\theta}) + \frac{1}{r \sin{\theta}} \frac{∂V_{\phi}}{∂\phi} &&\text{Spherical} \tag{4.20} \\
\end{align*}$

(Their derivations are too tedious.)
"""

# ╔═╡ dff4adf3-52f4-4596-ba49-3ff4d3a1f929
md"### Curl"

# ╔═╡ d4bfd821-d20f-4726-86ab-4417fb4c2b65
md"""
**Definition.**
The **curl** is the cross product of the gradient operator to a vector field, e.g.,  ``\vec{∇} × \vec{V}``.
"""

# ╔═╡ ad8ee374-3e87-4d36-85ed-58a7e42a4e1f
md"""
**Definition.**
The Cartesian, cylindrical polar, and spherical polar coordinates of the curl are respectively,

$\begin{align*}
\vec{∇} × \vec{V} &= \hat{i} \left(\frac{∂V_z}{∂y} - \frac{∂V_y}{∂z}\right) + \hat{j} \left(\frac{∂V_x}{∂z} - \frac{∂V_z}{∂x}\right) + \hat{k} \left(\frac{∂V_y}{∂x} - \frac{∂V_x}{∂y}\right) \tag{4.22} \\
\vec{∇} × \vec{V} &= \hat{r} \left(\frac{1}{r} \frac{∂V_z}{∂\phi} - \frac{∂V_{\phi}}{∂z}\right) + \hat{\phi} \left(\frac{∂V_r}{∂z} - \frac{∂V_z}{∂r}\right) + \hat{k} \frac{1}{r} \left(\frac{∂}{∂r} r V_{\phi} - \frac{∂V_r}{∂\phi}\right) \tag{4.23} \\
\vec{∇} × \vec{V} &= \hat{r} \frac{1}{r \sin{\theta}} \left(\frac{∂}{∂\theta} V_{\phi} \sin{\theta} - \frac{∂V_{\theta}}{∂\phi}\right) + \hat{\theta} \frac{1}{r} \left(\frac{1}{\sin{\theta}} \frac{∂V_r}{∂\phi} - \frac{∂}{∂r} r V_{\phi}\right) \\
&\quad + \hat{\phi} \frac{1}{r} \left(\frac{∂}{∂r} r V_{\theta} - \frac{∂V_r}{∂\theta}\right) \tag{4.24}
\end{align*}$
"""

# ╔═╡ fecba165-806a-4a2a-afac-be46f44ed527
md"""
**Remark.**
The curl of any gradient is zero, that is,

$\vec{∇} × \vec{∇} f(\vec{r}) = 0$

for any scalar field ``f(\vec{r})``.
"""

# ╔═╡ 5223a204-c14a-424e-9c02-a253510f876e
md"""
**Remark.** The divergence of any curl is zero, that is,

$\vec{∇} ⋅ \left[\vec{∇} × \vec{V}(\vec{r})\right] = 0$

for any vector field ``\vec{V}(\vec{r})``.
"""

# ╔═╡ d23bb769-74f1-4f45-be3f-8ea01d1f7c6a
md"### The Laplacian"

# ╔═╡ d4d3392e-065c-4a05-9a3c-ed00de75dc70
md"""
**Remark.**
You will encounter many calculations in physics where you want to take the divergence of some vector field, which itself is the gradient of some scalar field.
"""

# ╔═╡ 01cc8bc6-c04c-429e-871a-7a1fd02ff92b
md"""
**Definition.**
The **Laplacian** is defined as the scalar operator

$\vec{∇}^2 = \vec{∇} ⋅ \vec{∇}$
"""

# ╔═╡ 1aeca626-b1ee-4b8c-bae3-ce44e348d1de
md"""
**Definition.**
The Cartesian, cylindrical, and spherical coordinates of the Laplacian are respectively,

$\begin{align*}
\vec{∇}^2 &= \frac{∂^2}{∂x^2} + \frac{∂^2}{∂y^2} + \frac{∂^2}{∂z^2} \tag{4.25} \\
\vec{∇}^2 &= \frac{1}{r} \frac{∂}{∂r} \left(r \frac{∂}{∂r}\right) + \frac{1}{r^2} \frac{∂^2}{∂\phi^2} + \frac{∂^2}{∂z^2} \tag{4.26} \\
\vec{∇}^2 &= \frac{1}{r^2} \frac{∂}{∂r^2} \left(r^2 \frac{∂}{∂r}\right) + \frac{1}{r^2 \sin{\theta}} \frac{∂}{∂\theta} \left(\sin{\theta} \frac{∂}{∂\theta}\right) + \frac{1}{r^2 \sin^2{\theta}} \frac{∂^2}{∂\phi^2} \tag{4.27}
\end{align*}$
"""

# ╔═╡ f38d0adc-81b7-45bf-8028-f4d7ec95e329
md"""
**Remark.**
The radial part of (4.26) leads to Bessel's Equation (3.19), the radial part of (4.27) leads to spherical Bessel functions, and the ``\theta`` equation from (4.27) becomes Legendre's Equation (3.29).
"""

# ╔═╡ 1214a0ef-6990-43b6-9b59-62a6536dc28b
md"## Surface Theorems"

# ╔═╡ 0c5d06e6-2b29-4f84-8987-0d372a662e58
md"""
**Remark.**
Probably the most important physical applications of vector calculus have to do with a class of properties that I'll call **surface theorems**.
We will discuss two of these in particular, namely Stokes' Theorem and Gauss' Theorem (a.k.a. Divergence Theorem).
"""

# ╔═╡ 7f56eb00-dfdf-4247-8a6e-45916a1cb9d7
md"""
**Remark.**
The idea behind surface theorems is that whatever is going on inside some closed region can be inferred from what is happening on the surface of that region.
Stokes' Theorem applies to regions enclosed by a loop in space, and Gauss' Theorem applies to volumes and the surfaces that enclose them.
"""

# ╔═╡ 04a4095c-c065-4529-b0e7-32fbe5eef42e
md"""
**Remark.**
This section will first state and then prove Stokes' Theorem first, then Gauss' Theorem.
These two theorems are intimately connected to the curl and divergence, respectively, of a vector field.
In fact, a better way to present the curl and divergence would be to see how they arise naturally from these theorems.
"""

# ╔═╡ da89f317-09f7-4a64-9a04-aa95631da564
md"### Stokes' theorem"

# ╔═╡ 16f3ff9c-768b-4894-b6f4-554e1b85f06b
md"""
**Definition.**
Stokes' Theorem relates the integral of some vector quantity projected onto a closed loop, to the curl of that vector field integrated over the surface enclosed by the loop.
We state this theorem mathematically as

$∮_C \vec{A} ⋅ d\vec{ℓ} = ∫_S (\vec{∇} × \vec{A}) ⋅ d\vec{S} \tag{4.28}$

where ``C`` is the closed loop and ``S`` is the surface that it encloses.
"""

# ╔═╡ 6fe6c69f-46ab-41bb-8adb-bc5154882a60
md"""
**Remark.**
The shape of the surface doesn't matter, just so long as its edges lie along ``C``.
"""

# ╔═╡ b51b0f2d-3a9d-4937-9ecd-ead5b2dd6c38
md"""
**Remark.**
The integrand ``\vec{A} ⋅ d\vec{ℓ}`` means the dot product of the vector field with a tiny line segment pointing along the line, and the little circle on the integral sign just means the line forms a closed loop.
On the right hand integral, the vector ``d\vec{S}`` is an infinitesimal whose magnitude ``dS`` is the size of the area element of ``S``, and the direction is normal to the surface.
The sign of the normal is determined by an agreement of using the right hand rule based on an assigned direction for following the loop.
"""

# ╔═╡ 1c86656e-2a92-445d-a034-c831f4d03c74
md"""
**Remark.** (Informal Proof)
We can prove Stokes' Theorem by first taking the surface ``S`` and carving it up into a bunch of tiny rectangles.
We'll assume that ``S`` lies in the ``xy`` plane, and argue later that we can generalize to any curve.
Each tiny rectangle has width ``dx`` and height ``dy``.
We'll then show that Stokes' Theorem holds for each tiny rectangle by itself.

Now if I put two tiny rectangles next to each other, then the line integral on the left side of (4.28) cancels along the adjacent edge, and the curve is over the pair of rectangles.
Keep going, and eventually you'll cover the entire surface ``S``, and the only curve that's left is ``C``.
At this point, we can say that we've proved Stokes' Theorem.
"""

# ╔═╡ b15a9319-9649-415b-93e7-efd52d098877
md"""
**Remark.**
Figure 4.4 shows show this works.
The sum of ``\vec{A} ⋅ d\vec{ℓ}`` over the tiny square's sides is

$\begin{align*}
\sum \vec{A} ⋅ d\vec{ℓ} &= A_x(x,y) \,dx + A_y(x + dx, y) \,dy - A_x(x + dx, y + dy) \,dx - A_y(x, y + dy) \,dy \\
&= [A_x(x, y) - A_x(x + dx, y + dy)] \,dx + [A_y(x + dx, y) - A_y(x, y + dy)] \,dy
\end{align*}$

where we note that, for example, ``\vec{A} ⋅ d\vec{ℓ} = A_x \,dx`` when ``d\vec{ℓ}`` is in the ``x``-direction, and so forth.
Care is taken to evaluate the components of the vector function consistently at the corner of the rectangle where piece of the integral starts.
Now factoring out ``dx \,dy`` and doing some rearranging, we get

$\sum \vec{A} ⋅ d\vec{ℓ} = \left[\frac{A_y(x + dx, y) - A_y(x, y + dy)}{dx} - \frac{A_x(x + dx, y + dy) - A_x(x, y)}{dy}\right] dx \,dy$

As the infinitesimals approach zero, the two expressions in the brackets become partial derivatives.
The result is

$\sum \vec{A} ⋅ d\vec{ℓ} = \left[\frac{∂A_y}{∂x} - \frac{∂A_x}{∂y}\right] dx \,dy = (\vec{∇} × \vec{A})_x \,dx \,dy$

where, finally, we recognize that combination of partial derivatives as the ``z``-component of the curl.
Since ``dx \,dy = dS`` and, in this case, the normal to the surface is ``\hat{z}``, we have, for the tiny rectangle,

$\sum \vec{A} ⋅ d\vec{ℓ} = (\vec{∇} × \vec{A}) ⋅ d\vec{S}$

Adding up all the little rectangles, and recognizing that their edges cancel in the line integral leaving only the curve ``C``, we get (4.28).
"""

# ╔═╡ fd9862bc-f651-4de1-8f61-23a40f28037e
md"""
**Example.**
Take a vector field ``\vec{A} = -y\hat{i} + x\hat{j}``, which clearly has a "curl" to it if you plot it with MATHEMATICA.
In fact

$\vec{∇} × A = \left(\frac{∂A_y}{∂x} - \frac{∂A_x}{∂y}\right) \hat{k} = (1 + 1) \hat{k} = 2 \hat{k}$

Take the curve ``C`` to be the square in the ``xy`` plane with side length ``ℓ`` and the lower left corner at the origin.
The surface ``S`` has area ``ℓ^2`` so the right hand side of (4.28) is

$(\vec{∇} × \vec{A}) ⋅ d\vec{S} = 2 ∫ dS = 2ℓ^2$

Now let's evaluate the line integral.
Going counter clockwise from the lower left corner,

$\begin{align*}
∮ \vec{A} ⋅ d\vec{ℓ} &= ∫_{x=0}^ℓ (-y) |_{y=0} \,dx + ∫_{y=0}^ℓ (x) |_{x=ℓ} \,dy + ∫_{x = ℓ}^0 (-y) |_{y=ℓ} \,dx + ∫_{y=ℓ}^0 (x) |_{x=0} \,dy \\
&= 0 + ℓ ∫_{y=0}^ℓ \,dy - ℓ ∫_{x = ℓ}^0 \,dx + 0 \\
&= ℓ \Big[y\Big]_{y = 0}^ℓ - ℓ \Big[x\Big]_{x = ℓ}^0 \\
&= 0 + ℓ ⋅ ℓ - ℓ ⋅ (-ℓ) \\
&= 2ℓ^2
\end{align*}$

as predicted by the theorem.
Note that for this field, with a constant curl, it shouldn't matter where we put the square!
"""

# ╔═╡ 5d4d12a7-2c73-4015-9a45-a28c105554a2
md"### Gauss' theorem"

# ╔═╡ 21ba4c2a-e573-40ee-b60f-c839022c8c38
md"""
**Remark.**
Gauss' Theorem (also known as the *Divergence Theorem*) relates the divergence of a vector in some volume ``V`` to the surface integral of the normal component of the vector field over the surface ``S`` that encloses the volume.
That is,

$∮_S \vec{A} ⋅ d\vec{S} = ∫_V \vec{∇} ⋅ \vec{A} \,dV \tag{4.29}$

When ``\vec{A}`` is physically describing the "flow" of some quantity, in which case ``\vec{A} ⋅ d\vec{S}`` is the "flux" through the surface ``d\vec{S}``, we will find this to be an extremely useful theorem.
"""

# ╔═╡ 896e956c-1bd6-4486-b81b-b00e75340fd0
md"""
**Remark.**
The proof of Gauss' Theorem is very similar to how we proved Stokes' Theorem.
In this case, you chop up the volume ``V`` into a bunch of tiny bricks, with dimensions ``dx``, ``dy``, and ``dz``.
For one of these tiny bricks, the surface integral is the sum

$\begin{align*}
\sum \vec{A} ⋅ d\vec{S} &= A_x(x + dx, y, z) (+ dy \,dz) + A_x(x, y, z) (-dy \,dz) \\
&\quad + A_y(x, y + dy, z) (+dx \,dz) + A_y(x, y, z) (-dx \,dz) \\
&\quad + A_z(x, y, z + dz) (+dx \, dy) + A_z(x, y, z) (-dx \,dy)
\end{align*}$

where the terms are paired by the "front" and "back" of each of the three directions.
Factoring out ``dx \,dy \,dz = dV``, this expression becomes

$\begin{align*}
\sum \vec{A} ⋅ d\vec{S} &= \left[\frac{A_x(x + dx, y, z) - A_x(x, y, z)}{dx}\right. \\
&\quad + \frac{A_y(x, y + dy, z) + A_y(x, y, z)}{dy} \\
&\quad + \left.\frac{A_z(x, y, z + dz) - A_z(x, y, z)}{dz}\right] dx \,dy \,dz \\
&= \left[\frac{∂A_x}{∂x} + \frac{∂A_y}{∂y} + \frac{∂A_z}{∂z}\right] \\
&= \vec{∇} ⋅ \vec{A} \,dV
\end{align*}$

When we add up all of the little bricks, the right side just becomes the volume integral.
On the left side, adjacent sides of bricks cancel ``\vec{A} ⋅ d\vec{S}`` because the vector ``d\vec{S}`` has the magnitude but opposite direction, and all that is left from the sum is the surface ``S`` that encloses the volume ``V``.
This proves (4.29).
"""

# ╔═╡ bd87d77b-5add-4345-97b2-9f02f74e8bbb
md"""
**Example.**
Let's do a simple example with the field ``\vec{A} = x \hat{i} + y \hat{j} + z \hat{k}``.
This field clearly "diverges", as `VectorPlot` in MATHEMATICA will tell you.
The divergence of this field is ``\vec{∇} ⋅ \vec{A} = 3``, that is, uniform everywhere, so the volume integral on the right side of (4.29) is just ``3V``.
A simple shape is a cube of side length ``ℓ`` that sits in the first octant with a corner at the origin.
The flux ``\vec{A} ⋅ d\vec{S}`` is zero on the three faces that are in the three planes ``x = 0``, ``y = 0``, and ``z = 0`` because the component perpendicular to the plane is zero there.
The flux on the other three faces is just ``ℓ ⋅ ℓ^2 = ℓ^3``, so the surface integral is ``3ℓ^3 = 3V``.
It works.
"""

# ╔═╡ 66ea1fd8-95a5-41fe-96aa-42a93e7f237b
 md"#### Why the surface shape doesn't matter in Stokes' Theorem"

# ╔═╡ 244867a2-af26-4ba4-b49e-0056a179b843
md"""
**Remark.**
We gave a proof of (4.28) that assume the surface was flat.
Imagine there is now another surface that has the same curve ``C`` on the edge.
These two surfaces form a closed volume, and the second surface has the opposite clockwise sense of the first.
That is

$∮_{S_1 + S_2} \vec{B} ⋅ d\vec{S} = ∫_{S_1} \vec{B} ⋅ d\vec{S} - ∫_{S_2} \vec{B} ⋅ d\vec{S}$

for some vector field ``\vec{B}``.
In the case of Stokes' Theorem, though, ``\vec{B} = \vec{∇} × \vec{A}`` for a different vector field ``\vec{V}``.
Now by Gauss' Theorem,

$∮_{S_1 + S_2} \vec{B} ⋅ d\vec{S} = ∫_V \vec{∇} ⋅ \vec{B} = ∫_V \vec{∇} ⋅ (\vec{∇} × \vec{A}) = 0$

since the divergence of any curl is zero.
Therefore

$∫_{S_1} \vec{B} ⋅ d\vec{S} = ∫_{S_2} \vec{B} ⋅ d\vec{S}$

so it doesn't matter which surface I use to be enclosed by ``C`` in Stokes' Theorem.
"""

# ╔═╡ 8380781d-4350-4b55-ae0e-cc1e80231c9f
md"### The continuity equation"

# ╔═╡ 1d1c54c5-fdf3-480d-9b72-258765656050
md"""
**Remark.**
The notion of a **conservation law** is fundamental in physics.
We say that quantities like charge, energy, and momentum, for example, are "conserved".
That is, they do not change with time.
How can we write this down, mathematically, for quantities that can exist spread out over space?
"""

# ╔═╡ 42564488-7200-4ee5-8aac-2b7b2c2839a1
md"""
**Remark.**
We will explore the answer to this question by considering three dimensional space.
You can work the problem out for two dimensional space, in which the answer will involve the curl.
"""

# ╔═╡ 14e7177f-9c6a-43ac-9906-f155bddbfd8b
md"""
**Remark.**
Imagine that we have some quantity ``Q`` that is spread over some volume ``V`` of space.
We would write ``Q`` in terms of some scalar field ``\rho(\vec{r},t)``, namely the density of the material that makes up ``Q``.
The density has dimensions of ``[Q]L^{-3}``, and it is possible that the density at any point can change with time ``t``.

If ``Q`` is a conserved quantity, though, the only way it can change is if some of it flows into, or out of, the volume ``V``.
It is not possible to create or destroy the material that makes up ``Q`` if it is conserved.
That is, there are no "sources" or "sinks" for this material inside ``V``.
"""

# ╔═╡ 09059c4e-c3bc-46d5-9a5c-4da76261bc47
md"""
**Example.**
Define a vector field ``\vec{j}(\vec{r}, t)`` that represents the "flow" of this material.
We'll write that the "flux" of this material through some area element ``d\vec{S}`` is just ``\vec{j}(\vec{r},t) ⋅ d\vec{S}``.
This makes sense because you recall that the direction of ``d\vec{S}`` is perpendicular to the surface, so if the flow ``\vec{j}(\vec{r}, t)`` is perpendicular to the surface, then it is maximized, whereas it is zero if ``\vec{j}(\vec{r}, t)`` is parallel to the surface.

The dimensions of ``\vec{j}(\vec{r}, t)`` are ``[Q] L^{-2} T^{-1}`` so the dimensions of the flux are ``[Q] T^{-1}``.
Sometimes we refer to ``\vec{j}(\vec{r}, t)`` as the "flux density," or "current density" particularly if ``Q`` represents electric charge.

Now consider the surface ``S`` that encloses the volume ``V``.
We know that the only way to change ``Q`` is for there to be some flux through ``S``.
Let's agree that a positive value for the flux is when the flow goes from the inside to the outside.
This means that ``\vec{j}(\vec{r}, t) ⋅ d\vec{S}`` is positive when ``d\vec{S}`` is defined accord to our normal convention that it points away from the inside of ``S``.
Integrating over the surface tells us how to write down the change of ``Q`` with time, namely

$\frac{dQ}{dt} = -∮_S \vec{j}(\vec{r}, t) ⋅ d\vec{S}$

The minus sign tells us that if the net flux through the closed surface ``S`` is positive, then ``Q`` decreases, which is correct.

If we write ``Q`` in terms of the density ``\rho(\vec{r}, t)`` by integrating over the volume ``V``, and we apply Gauss' Theorem to the surface integral, this equation becomes

$\frac{d}{dt} ∫_V \rho(\vec{r}, t) \,dV = -∫_V \vec{∇} ⋅ \vec{j}(\vec{r}, t) \,dV$

The time derivative is a total derivative because all that is left after doing the integral over position is time.
I can bring the time derivative inside the integral, but then it becomes a partial derivative.
THis all leads us to

$∫_V \left[\frac{∂\rho(\vec{r},t)}{∂t} + \vec{∇} ⋅ \vec{j}(\vec{r},t)\right] dV = 0$

Finally, we let the volume ``V → ΔV`` be so small that we can neglect the change in the integrand over position and pull it out of the integral, leaving just the volume ``ΔV`` times the expression in square brackets, which itself now must be zero.
Therefore

$\frac{∂\rho(\vec{r},t)}{∂t} + \vec{∇} ⋅ \vec{j}(\vec{r},t) = 0 \tag{4.30}$

This differential equation is called the **Continuity Equation** and is the mathematical way to state that a quantity is conserved.
It is used extensively in many fields of physics, including fluid dynamics, electrodynamics, biological systems, statistical mechanics, and even finance.
"""

# ╔═╡ 65c0f71d-3750-431e-9e39-c39309b9f46b
md"### Application to Maxwell's Equations"

# ╔═╡ 5cd4d434-d34b-4e59-bbbe-2ecee22c87ec
md"""
**Remark.**
An important first application of the surface theorems is to turn Maxwell's Equations into their differential form.
The integral forms of Maxwell's Equations are

$\begin{align*}
∮_S \vec{E} ⋅ d\vec{S} &= 4\pi Q_{\text{enclosed}} = 4\pi ∫_V \rho \,dV \quad \text{Gauss' Law} \tag{4.31a} \\
∮ \vec{B} ⋅ d\vec{S} &= 0 \quad \text{Gauss' Law for Magnetism} \tag{4.31b} \\
∮_C \vec{E} ⋅ d\vec{ℓ} &= -\frac{1}{c} \frac{d\Phi_B}{dt} = -\frac{1}{c} \frac{d}{dt} ∫_S \vec{B} ⋅ d\vec{S} \quad \text{Faraday's Law} \tag{4.31c} \\
∮_C \vec{B} ⋅ d\vec{ℓ} &= \frac{4\pi}{c} I_{\text{enclosed}} + \frac{1}{c} \frac{d\Phi_E}{dt} \\
&= \frac{4\pi}{c} ∫_S \vec{j} ⋅ d\vec{S} + \frac{1}{c} \frac{d}{dt} ∫ \vec{E} ⋅ d\vec{S} \quad\text{Ampere's Law} \tag{4.31d}
\end{align*}$

Surface theorems can be used to turn each of the integrals on the left ide into integrals over the Gaussian surface enclosing the volume, or Amperian loop enclosing the surface.
For Gauss' Law, the charge enclosed by the Gaussian surface is just an integral over the volume of the charge density ``\rho(\vec{r},t)``.
The current enclosed by the Amperian loop is just the current density ``\vec{j}(\vec{r},t)`` integrated over the surface it encloses.
Therefore, these equations become

$\begin{align*}
\vec{∇} ⋅ \vec{E} &= 4\pi \rho \quad\text{Gauss' Law} \tag{4.32a} \\
\vec{∇} ⋅ \vec{B} &= 0 \quad \text{Gauss' Law for Magnetism} \tag{4.32b} \\
\vec{∇} × \vec{E} &= -\frac{1}{c} \frac{∂\vec{B}}{∂t} \quad \text{Faraday's Law} \tag{4.32c} \\
\vec{∇} × \vec{B} &= \frac{4\pi}{c} \vec{j} + \frac{1}{c} \frac{∂\vec{E}}{∂t} \quad \text{Ampere's Law} \tag{4.32d}
\end{align*}$

This form of Maxwell's equations is much more amenable to studying the properties of charges and currents than is the integral form.
It will also allow us to see immediately how they predict the existence of electromagnetic waves and that electric charge is conserved.
"""

# ╔═╡ 885dc494-ece9-40ff-a4dc-842f8b685238
md"#### Conservation of electric charge"

# ╔═╡ c098fa7c-05d5-497b-bf78-49a646d8a02e
md"""
**Remark.**
It is easy to show that (4.32) imply that the electric charge is conserved.
That is, it is easy to show that they lead to the continuity equation for the electric charge density ``\rho(\vec{r},t)`` and current density ``\vec{j}(\vec{r},t)``.
First take the divergence of both sides of Ampere's Law.
You know that the divergence of any curl is zero, so the left hand size must be zero.
This gives us

$0 = \frac{4\pi}{c} \vec{∇} ⋅ \vec{j} + \frac{1}{c} \frac{∂}{∂t} \vec{∇} ⋅ \vec{E}$

Now use Gauss' Law to write ``\vec{∇} ⋅ \vec{E} = 4 \pi \rho``.
The overall factor of ``4 \pi / c`` cancels and you get

$0 = \vec{∇} ⋅ \vec{j} + \frac{∂\rho}{∂t}$

which is just the continuity equation.
**Maxwell's Equations imply that electric charge is conserved.**
"""

# ╔═╡ c8378522-a04f-4765-8a81-cb3050dd2143
md"### Existence of electromagnetic waves"

# ╔═╡ 81c3c990-04d5-469e-b8e8-f9642ffb793b
md"""
**Remark.**
Maxwell's Equations predict the existence of electromagnetic waves.
Mathematically, this means that Maxwell's Equations predict that there are forms of ``\vec{E}(\vec{r}, t)`` and ``\vec{B}(\vec{r}, t)`` that satisfy a partial differential equation known as the Wave Equation.
"""

# ╔═╡ 112f1e6d-d534-44d7-b3f2-f921d088ef2a
md"""
**Remark.**
We will look at how we go about solving the wave equation and similar equations in Sections 4.5 and 5.1, but for now, let's just go ahead and manipulate Maxwell's Equations to get the Wave Equation.
"""

# ╔═╡ a43b9a38-1092-469e-8f5a-01bbdfdcdaa7
md"""
**Remark.**
First, we prove a vector differential operator,

$\vec{∇} × (\vec{∇} × \vec{A}) = \vec{∇} (\vec{∇} ⋅ \vec{A}) - \vec{∇}^2 \vec{A} \tag{4.33}$

We do this by applying the "``\delta, \epsilon``" technique of Section 4.1.2.
Using the summation notation with our generic notation for Cartesian unit vectors, the gradient operator becomes

$\vec{∇} = \hat{e}_i \frac{∂}{∂x_i}$

where ``x_1 = x``, ``x_2 = y``, and ``x_3 = z``.
Since none of the ``\hat{e}_i`` depend on position, we can just work with the components directly, and write

$\begin{align*}
[\vec{∇} × (\vec{∇} × \vec{A})]_i &= \epsilon_{ijk} \frac{∂}{∂x_j} \left(\epsilon_{kmn} \frac{∂}{∂x_m} A_n\right) \\
&= \epsilon_{kij} \epsilon_{kmn} \frac{∂^2 A_n}{∂x_j x_m} \\
&= (\delta_{im} \delta_{jn} - \delta_{in} \delta_{jm}) \frac{∂^2 A_n}{∂x_j x_m} \\
&= \frac{∂^2 A_j}{∂x_j x_i} - \frac{∂^2 A_i}{∂x_j x_j} \\
&= \frac{∂}{∂x_i} \frac{∂A_j}{∂x_j} - \frac{∂^2}{∂x_j x_j} \\
&= \left[\vec{∇} (\vec{∇} ⋅ \vec{A}) - \vec{∇}^2 \vec{A}\right]_i
\end{align*}$
"""

# ╔═╡ 0a53179b-a47c-4907-8902-8b493fdbeaab
md"""
**Remark.**
Equation (4.33) let's us show that Maxwell's Equations predict the existence of electromagnetic waves.
Let's see how this works.
If we just talk about some region in space where there are no charges or currents, call it the "vacuum", then Maxwell's Equations become

$\vec{∇} ⋅ \vec{E} = 0$

$\vec{∇} ⋅ \vec{B} = 0$

$\vec{∇} × \vec{E} = -\frac{1}{c} \frac{∂\vec{B}}{∂t}$

$\vec{∇} × \vec{B} = \frac{1}{c} \frac{∂\vec{E}}{∂t}$

Take the curl of the third equation, invoke (4.33), and use the first equation to get

$\vec{∇} × (\vec{∇} × \vec{E}) = \vec{∇} (\vec{∇} ⋅ \vec{E}) - \vec{∇}^2 \vec{E} = -\vec{∇}^2 \vec{E} = -\frac{1}{c} \frac{∂}{∂t} \vec{∇} × \vec{B}$

Finally, use the fourth equation to replace ``\vec{∇} × \vec{B}`` with the time derivative of ``\vec{E}``.
After a little rearranging, you find

$\frac{1}{c^2} \frac{∂^2 \vec{E}}{∂t^2} - \vec{∇}^2 \vec{E} = 0 \tag{4.34}$

This partial differential equation is called the **Wave Equation**.
We will discuss solutions to the wave equation in Section 5.1, but it describes a field ``\vec{E}(\vec{r}, t)`` with a shape that moves in time, unchanged, at speed ``c``.
"""

# ╔═╡ d0e61bfb-49e5-4347-a812-160c41e70ac1
md"""
**Remark.**
Equation (4.34) looks a little weird because it is a partial differential equation that is to be solved for a **vector** function ``\vec{E}(\vec{r},t)``.
Let's try writing ``\vec{E}(\vec{r},t) = \hat{i} f(z,t)``, which describes an electric field that is "linearly polarized in the ``x``-direction."
Inserting this (4.34) gives us

$\frac{1}{c^2} \frac{∂^2 f}{∂t^2} - \frac{∂^2 f}{∂z^2} = 0$

which is a bit more tractable.
We will see in Section 5.1 that this equation describes a wave moving in the ``z``-direction.
"""

# ╔═╡ 2dce22a8-950f-4d40-a208-8939e98d453a
md"## Two important vector fields"

# ╔═╡ b99c9a6b-f994-489a-bbf5-8c3ea180aa76
md"""
**Remark.**
Let's pause briefly to talk about two particular vector field forms that I'll call ``\vec{B}(\vec{r})`` and ``\vec{E}(\vec{r})``.
Describing ``\vec{B}(\vec{r})`` in Cartesian and cylindrical polar coordinates,

$\vec{B}(\vec{r}) = a \frac{-\hat{i} y + \hat{i} x}{x^2 + y^2} = a \frac{\hat{\phi}}{r} \tag{4.35}$

I will define the field ``\vec{E}(\vec{r})`` in Cartesian and spherical polar coordinates as

$\vec{E}(\vec{r}) = a \frac{\hat{i} x + \hat{j} y + \hat{k} z}{(x^2 + y^2 + z^2)^{3/2}} = a \frac{\hat{r}}{r^2} \tag{4.36}$

In both of these equations, ``a`` just represents some constant.
"""

# ╔═╡ 985e1b18-ed60-491c-aeec-5ea5cdf0d0bf
md"## Partial Differential Equations"

# ╔═╡ e3edd155-de00-4b95-aca5-8d2d2a12f996
md"""
**Remark.**
Partial Differential Equations, or PDE's, are differential equations with more than one independent variable, so involve partial derivatives with respect to those variables.
"""

# ╔═╡ cc3e0528-472e-4cfe-8bc6-f1eb18a4fe9d
md"""
**Remark.**
One of the most important differences between PDE's and ODE's is that the boundary conditions are much more involved and can lead to much more general solutions.
We will be dealing with linear PDE's only, so superposition will still be valid.
**This will be key to determining linear combinations of solutions that satisfy boundary conditions.**
"""

# ╔═╡ 63e0b2ac-c7e2-4fa5-b3f2-1d0a6bbca7eb
md"""
**Example.**
Consider the PDE

$\frac{∂f}{∂x} = x \frac{∂f}{∂y}$

to be solved for the function ``f(x,y)``.
You can easily verify that all the solutions to this PDE:

$\begin{align*}
f_1(x,y) &= x^4 + 4(x^2 y + y^2 + 1) \\
f_2(x, y) &= \sin{x^2} \cos{2y} + \cos{x^2} \sin{2y} \\
f_3(x, y) &= \frac{x^2 + 2y + 2}{3x^2 + 6y + 5}
\end{align*}$

That seems odd you realize that all three are functions of ``z = x^2 + 2y``.
That is,

$\begin{align*}
f_1(x,y) &= z^2 + 4 \\
f_2(x,y) &= \sin{z} \\
f_3(x,y) &= \frac{z + 2}{3z + 5}
\end{align*}$

Indeed, for any function ``g(z)``,

$\frac{∂g}{∂x} = g'(x) \frac{∂z}{∂x} = 2x g'(x) \qquad\text{and}\qquad x \frac{∂g}{∂y} = xg'(x) \frac{∂z}{∂y} = 2x g'(x)$

so any function ``f(x,y) = g(z)`` solves the PDE.
Which of these infinite possible forms of the solution you pick, though, will depend on what boundary conditions you need to satisfy.
"""

# ╔═╡ 50ad9119-27f2-4370-9e55-e7f6b181cfc5
md"### Separation of variables"

# ╔═╡ 21bb474b-f72b-4c4e-8430-2fdd506b9324
md"""
**Remark.**
Most if not all PDE's you'll need to solve in studying physics will be linear and second order, and most if not all of these can be solved using a technique called **Separation of Variables**.
"""

# ╔═╡ c13beece-0297-44eb-8711-5d7da5d16f28
md"""
**Remark.**
Separation of variables turns partial differential equation for a function in terms of two or three independent variables (like ``x``, ``y``, and ``z``, or ``r``, ``\theta``, and ``\phi``) into a set of separate ordinary differential equations, one for each of the independent variables.
Suppose we are looking to solve a PDE for a function ``f(\vec{r}) = f(x,y,z)``.
The first step is to write

$f(x,y,z) = X(x) Y(y) Z(z)$

and insert into the PDE.
It is generally possible to arrange the terms in a way that some constsant or constants can be used to isolate the different ODE's.
"""

# ╔═╡ c6f8db0b-6128-455b-89d0-caf367664b3a
md"""
**Remark.**
What coordinate system you use is probably most dependent on what are the boundary conditions.
If you have ``f(𝐫)`` and its partial derivatives defined along the boundaries of a rectangle or rectangular box, then you likely want to use Cartesian coordinates.
If they are defined along the boundaries of a sphere, then you are apt to use spherical coordinates.
"""

# ╔═╡ eea8ea71-ad8a-441a-b925-3039e196e74d
md"""
**Example.**
Solve the partial differential equation

$\frac{∂^2 f}{∂x^2} = \frac{∂^2 f}{∂y^2}$

for the function ``f(x,y)`` subject to the boundary conditions

$f(0,y) = f(a,y) = f(x,0) = f(x,a) = 0$

where ``a`` is a positive constant.
That is, the region of validity of the solution is the square of side length ``a`` in the first quadrant.

If you think about it, there is a more or less obvious solution to the differential equation.
If ``f(x,y) = g(z)`` with ``z = x ± y`` for any function ``g(z)``, then the PDE is satisfied.
In fact, a general solution would be

$f(x,y) = g_1(x - y) + g_2(x + y)$

where ``g_1`` and ``g_2`` are arbitrary functions.
However, it's not so obvious how to choose these function so that the boundary conditions are satisfied.

For this, we turn to a solution that makes use of Separation of Variables.
As suggested above, we write ``f(x, y) = X(x) Y(y)`` which gives

$\frac{d^2 X}{dx^2} Y = X \frac{d^2 Y}{dy^2} \quad \text{ so } \quad \frac{1}{X} \frac{d^2 X}{dx^2} = \frac{1}{Y} \frac{d^2 Y}{dy^2}$

which is a peculiar type of equation.
The left side depends only on ``x``, while the right side depends only on ``y``.
Nevertheless, the two sides have to be equal to each other!
The only way this happens if both sides are equal to a constant.

Let's call this constant ``-k^2 < 0``.
(You'll see shortly that this choice for the constant allows us to satisfy the boundary conditions.)
The PDE has now split into two ODE's, as advertised.
The two ODE's are

$X''(x) = -k^2 X(x) \qquad\text{and}\qquad Y''(y) = -k^2 Y(y)$

whose solutions are now very well known to you, namely

$X(x) = A_x \cos{kx} + B_x \sin{kx} \qquad\text{and}\qquad Y(y) = A_y \cos{ky} + B_y \sin{ky}$

where ``A_x``, ``B_x``, ``A_y``, and ``B_y`` are constants.
The boundary conditions imply that

$X(0) = 0 = Y(0) \qquad\text{and}\qquad X(a) = 0 = Y(a)$

The first pair of equations say that ``A_x = 0 = A_y``, so the solution to the PDE has the form

$f(x,y) = C \sin{kx} \sin{ky}$

where ``C = B_x B_y``.
In order for ``f(a,y) = 0 = f(x,a)``, and to avoid the trivial solution with ``C = 0``, we need to set ``k = \frac{n\pi}{a}`` where ``n ∈ ℤ^+`` is a positive integer.
(A negative integer would give a redundant function, and ``n = 0`` leads to the trivial solution.)
Therefore

$f(x,y) = C \sin{\left(\frac{n \pi x}{a}\right)} \sin{\left(\frac{n \pi y}{a}\right)}$

where the constant ``C`` would have to be determined by some additional constraint.
If you recall the trigonometric identity

$\sin{\alpha} \sin{\beta} = \frac{1}{2} \left[\cos{(\alpha - \beta)} - \cos{(\alpha + \beta)}\right]$

then you see that, indeed, ``f(x,y)`` is a linear combination of functions of ``x ± y``.
"""

# ╔═╡ 31e0aa5d-fa0d-4585-af2d-918c9d7040e0
md"""
**Remark.**
This worked out nicely because I picked boundary conditions that were amenable to a solution with separation of variables.
Luckily, most of the physics problems you will face work out nicely like this.
For other cases, not uncommon in various types of modeling of systems, you may need to resort to numerical solutions.
"""

# ╔═╡ 74ef78df-7bf0-4157-bf79-6cba2526ef31
md"### Heat conduction in one dimension"

# ╔═╡ c6e39f41-1889-439c-b2aa-16323e1a457c
md"""
**Remark.**
A common problem in the physical and life sciences, including engineering, is the diffusion of heat (or equivalent entity) through a medium over time.
This process is governed by a partial differential equation of the form

$∇^2 f = k \frac{∂f}{∂t} \tag{4.37}$

where ``f(\vec{r}, t)`` is the temperature field and ``k`` is a positive constant, called the **diffusivity**.
This equation implies that there is no heat source in the medium, but that its internal energy can only get redistributed by the transfer of heat.
We refer to (4.37) as the **heat equation** or **diffusion equation**.
"""

# ╔═╡ 7647f7ab-7d7f-4526-bc63-caf975d1140e
md"""
**Remark.**
In one spatial dimension ``x``, (4.37) becomes

$\frac{∂^2 f}{∂x^2} = k \frac{∂f}{∂t} \tag{4.38}$

which would govern, for example, the temperature distribution ``f(x,y)`` for position along a rod as a function of time.
If the rod has length ``ℓ``, its ends are held at fixed temperatures, and its initial temperature distribution is some function ``u(x)`` for ``0 ≤ x ≤ ℓ``, then you have a prototypical PDE boundary and initial value problem to solve.
"""

# ╔═╡ af82e267-9e49-42a4-ae2d-fa226d9e2d0a
md"# Fourier Analysis"

# ╔═╡ cece3686-ecba-4db4-a7bf-937eb66b6cd6
md"""
**Remark.**
Fourier Analysis is based on the fact -- which we won't prove -- that pretty much any function can be represented by an infinite sum, or perhaps an integral, of sines and cosines.
Although applicable to any number of physical problems (for example, heat conduction, as mentioned in Section 4.5.2), we will illustrate it using solutions to the Wave Equation.
"""

# ╔═╡ 6aa98677-797a-45dc-a57f-e38cffd9bc58
md"## Waves on a Stretched String"

# ╔═╡ 7cfde772-0ae2-4757-a090-e9de718afea1
md"""
**Remark.**
We are going to start this discussion by considering the motion of a string, stretched tightly.
We'll say the string is in the horizontal direction and moves only in the vertical direction, because it never bends by very much, but gravity is irrelevant.
We are only going to care about the vertical motion due to the tension in the string.
What we'll find is that the motion of the string is governed by the same partial differential equation that governs electromagnetic waves, for example (4.34).
"""

# ╔═╡ d90442eb-1b3f-4281-b104-e1faf475efb6
md"### Derivation of the equation of motion"

# ╔═╡ 0e047518-4fb6-42dc-b33a-12ec0759ab59
md"""
**Remark.**
Imagine a string stretched across space.
We will derive an equation that governs the up-and-down motion of the string, assuming that it never bends by very much.
We will do this by considering a tiny piece of the string and applying Newton's Second Law ``F = ma``.
The only forces on this piece of string that will concern us are the tensions on the piece from each of its two ends.
"""

# ╔═╡ 5b38d25d-a47f-45bc-b53c-7cd3b078460b
md"""
**Example.**
Figure 5.1 shows a small piece of stretched string.
We measure the position along the horizontal direction as ``x``, and the shape of the string at any time ``t`` is ``u(x,t)``.
We assume that ``\theta`` is always very small so that the string only moves vertically.

In order to apply Newton's Second Law, let's first analyze the vertical forces on the string.
These are

$-T \sin{\theta} ≈ -T\theta ≈ -T \tan{\theta} = -T \left.\frac{∂u}{∂x}\right|_x$

on the left, and

$T \sin{\theta} ≈ T\theta ≈ T \tan{\theta} = T \left.\frac{∂u}{∂x}\right|_{x + Δx}$

on the right.
Therefore, the sum of forces acting on this small piece of string is

$\sum F_y = -T \left.\frac{∂u}{∂x}\right|_x + T \left.\frac{∂u}{∂x}\right|_{x + Δx} = T\left[\left.\frac{∂u}{∂x}\right|_{x + Δx} - \left.\frac{∂u}{∂x}\right|_x\right]$

Now if we let ``\mu`` be the linear mass density of the string, then the mass of this small piece is ``\mu Δx``, and Newton's Second Law for the vertical motion of the piece of string is

$\mu Δx \frac{∂^2 u}{∂t^2} = T \left[\left.\frac{∂u}{∂x}\right|_{x + Δx} - \left.\frac{∂u}{∂x}\right|_x\right] \quad\text{or}\quad \frac{\mu}{T} \frac{∂^2 u}{∂t^2} = \frac{1}{Δx} \left[\left.\frac{∂u}{∂x}\right|_{x+Δx} - \left.\frac{∂u}{∂x}\right|_x\right]$

It is easy to see that the constant ``\mu / T`` on the left has dimensions of velocity.
That is

$\frac{[\mu]}{[T]} = \frac{ML^{-1}}{MLT^{-2}} = \frac{1}{(L/T)^2}$

So, let's write ``v^2 = T / \mu``.
Also, as the piece of string gets smaller and smaller, that is ``Δx → 0``, the right side just becomes the second partial derivative with respect to ``x``.
In other words, the motion of the string is governed by the partial differential equation

$\frac{1}{v^2} \frac{∂^2 u}{∂t^2} = \frac{∂^2 u}{∂x^2} \qquad\text{or}\qquad \frac{∂^2 u}{∂x^2} - \frac{1}{v^2} \frac{∂^2 u}{∂t^2} = 0 \tag{5.1}$

This is known as the **Wave Equation** and it shows up in many different areas of physics.
We have already seen that it is implied by Maxwell's Equations in Section 4.3.4.
"""

# ╔═╡ 0e404b1e-e234-4b09-b5e1-5224e6cf3b76
md"### General solution of the wave equation"

# ╔═╡ f0a45194-2763-4a52-9ead-6cfa0b3454ce
md"""
**Remark.**
There are many different forms for the function ``u(x,t)`` that solves (5.1) that depend on the initial and boundary conditions.
However, we can immediately see a specific general form of the solution that gives us good intuition as to what's going on.
"""

# ╔═╡ 8492ba2e-882c-42c1-b74d-8ca7b0259c52
md"""
**Remark.**
First, realize that (5.1) is a *linear* PDE.
That means that if ``u_1(x,t)`` and ``u_2(x,t)`` are both solutions, then any linear combination ``c_1 u_1(x,t) + c_2 u_2(x,t)`` is also a solution.
"""

# ╔═╡ b07cac7b-bc3e-4b0c-b0c4-8dbd74886697
md"""
**Remark.**
Now it is not hard to see that any function of ``z = x - vt`` is a solution to (5.1).
That is, ``u(x,t) = f(z) = f(x - vt)`` will be a solution for any (differentiable) function ``f(z)``.
The same is true for any function ``g(x + vt)``.
In other words, the general solution to (5.1) is any function of the form

$u(x,t) = f(x - vt) + g(x + vt) \tag{5.2}$

This general form has a lovel physical interpretation.
Consider first the motion in time of the function ``f(x - ct)``, shown in Figure 5.2.
Whatever the shape is at ``t = 0``, that is ``f(x)``, it is reproduced exactly at a finite time ``t`` except that it is translated to the right by an amount ``vt``.
In other words, it moves to the right with a speed ``v``.
In other words, the first term in the solution (5.2) represents a "wave moving to the right with speed ``v``."
The second term, that is ``g(x + vt)`` represents, similarly, a "wave moving to the left with speed ``v``.
"""

# ╔═╡ 147b515f-bc84-4ecb-bf15-5d0486399373
md"""
**Remark.**
It is not hard to show that if you start at time ``t = 0`` with some arbitrary string shape ``f(x)`` with the string at rest, then the solution is that the shape splits into two pieces, one moving to the right and the other moving to the left.
"""

# ╔═╡ a34b9d07-c482-4fa6-9876-3949f7cce739
md"""
**Remark.**
Another easy solution to the wave equation is for a string that is fixed at one end, or allowed to move freely at one end.
These cases correspond to the boundary conditions that ``u(0, t) = 0`` or ``\displaystyle \frac{∂u(x,t)}{∂x}\Big|_{x = 0} = 0``, assuming the end to be at ``x = 0``.
In each case, you find that the wave is "reflected" from the end, but the characteristics of the reflection are different for the two cases.
"""

# ╔═╡ de64416a-c691-49ab-8046-73e60d3e6067
md"## Standing waves"

# ╔═╡ f36c0388-e891-4394-b057-6bc76fd7b853
md"## Fourier Series"

# ╔═╡ f811aebd-da8f-4d83-b6a1-8bc21374178f
md"### Expansion in terms of harmonics"

# ╔═╡ 1c615e5e-4b0a-4309-834a-380109a7d45b
md"""
**Remark.**
Referring to standing waves on a string for a moment, our problem comes down to writing the initial condition ``u(x,0) = f(x)`` in terms of a sum over ``n`` of the expressions in (5.5).
We'll work with the form in (5.5a) and write

$f(x) = \sum_{n=1}^∞ \left[A_n e^{ik_n x} + B_n e^{ik_n x}\right]$

which we'll call an **expansion in terms of harmonics**.
It is important to note that

$-\frac{L}{2} ≤ x ≤ \frac{L}{2} \tag{5.6}$

In fact, by enforcing that ``f(x) = 0`` at ``x = ±L / 2``, we found that ``k_n L = n \pi``.
"""

# ╔═╡ 2293864c-ad8e-4d99-9717-2440fc7ccaa2
md"### Standing wave solution"

# ╔═╡ 2127a874-cf22-42bf-a5ff-c0cf8bbaffe1
md"#### Standing waves the easy way"

# ╔═╡ ec166085-8ccc-4f15-9044-30f8a4ce1264
md"""
**Remark.**
Let's do the conventional approach to solving for standing waves on a string, and stick to real functions.
If we put the ends of the string at ``x = 0`` and ``x = L``, then the solution to (5.4) for ``X(x)`` is best written as

$X(x) = A \cos{(kx)} + B \sin{(kx)}$

Enforcing ``X(0) = 0`` gives ``A = 0``.
Enforcing ``X(L) = 0`` gives ``kL = n \pi``, so the standing wave solution (for a string that is initially at rest) looks like

$u_n(x, t) = B_n \sin{\left(\frac{n \pi x}{L}\right)} \cos{\left(\frac{n \pi vt}{L}\right)} \tag{5.10}$

which is, essentially, (5.5b).
Confronting the initial condition ``u(x,0) = f(x)`` leads to

$f(x) = \sum_{n=1}^∞ B_n \sin{\left(\frac{n \pi x}{L}\right)} \tag{5.11}$

where the job is now to find the ``B_n``.
(Sometimes this is called the **Fourier Sine Series**).
There is an easy way to find the ``B_n`` by exploiting the orthogonality of the sine functions, that is

$∫_0^L \sin{\left(\frac{n \pi x}{L}\right)} \sin{\left(\frac{m \pi x}{L}\right)} dx = ∫_0^L \frac{1}{2} \left\{\cos{\left(\frac{\pi (n - m) x}{L}\right)} - \cos{\left(\frac{\pi (n + m) x}{L}\right)}\right\} dx$

$= \left.\frac{L}{2\pi (n - m)} \sin{\left[\frac{\pi (n - m) x}{L}\right]}\right|_0^L - \left.\frac{L}{2\pi (n + m)} \sin{\left[\frac{\pi (n + m) x}{L}\right]}\right|_0^L = 0$

for positive integers ``n ≠ m``.
On the other hand, if ``n = m``, then

$∫_0^L \sin{\left(\frac{m \pi x}{L}\right)} \sin{\left(\frac{m \pi x}{L}\right)} = \frac{1}{2} ∫_0^L \left[1 - \cos{\left(\frac{2 m \pi x}{L}\right)}\right] = \frac{L}{2}$

for any integer ``m``.
The simple way to write this result is

$∫_0^L \sin{\left(\frac{n \pi x}{L}\right)} \sin{\left(\frac{m \pi x}{L}\right)} dx = \frac{L}{2} \delta_{nm}$

Applying this to (5.11) gives

$∫_0^L f(x) \sin{\left(\frac{m \pi x}{L}\right)} dx = \sum_{n = 1}^∞ B_n ∫_0^L \sin{\left(\frac{n \pi x}{L}\right)} \sin{\left(\frac{m \pi x}{L}\right)} dx = \sum_{n = 1}^∞ B_n \frac{L}{2} \delta_{nm} = B_m \frac{L}{2}$

In other words, switching back to the index ``n``,

$B_n = \frac{2}{L} ∫_0^L f(x) \sin{\left(\frac{n \pi x}{L}\right)} dx \tag{5.12}$

These are the coefficients of the Fourier Sine Series (5.11).
Figure 5.3 shows two examples of Fourier Sine decompositions.

We can now return to our problem of finding the motion of standing waves on a string using (5.10) to write the solution for the motion of a string that is fixed at ``x = 0`` and ``x = L`` and which starts from rest with shape ``u(x,0) = f(x)`` as

$u(x,t) = \sum_{n=1}^∞ B_n \sin{\left(\frac{n \pi x}{L}\right)} \cos{\left(\frac{n \pi vt}{L}\right)} \tag{5.13}$

where the coefficients ``B_n`` are given by (5.12).
It is obvious that this has the shape ``f(x)`` at ``t = 0`` from our construction of the Fourier Sine Series, but notice also that the different ``n`` components oscillate with different frequencies ``nv / 2L``, so the shape will change as a function of time, as expected.
"""

# ╔═╡ 579d2f90-8789-4b36-927a-beb3368039cd
md"## Parsevals theorem"

# ╔═╡ a08ea87e-4121-446c-a6be-0913b6c6b85c
md"""
**Remark.**
In the idea of "completeness", our goal is to prove that the average ``|f(x)|^2`` over one period is just the sum of the Fourier coefficients squared.
That is,

$\frac{1}{a} ∫_{-a/2}^{a/2} |f(x)|^2 \,dx = \sum_{n=-∞}^∞ |A_n|^2 \tag{5.14}$

which is actually quite easy to prove:

$\begin{align*}
\frac{1}{a} ∫_{-a/2}^{a/2} |f(x)|^2 dx &= \frac{1}{a} \sum_{n=-∞}^∞ \sum_{m=-∞}^∞ {A_n^*} A_m ∫_{-a/2} e^{2i (m - n) \pi x / a} dx \\
&= \frac{1}{a} \sum_{n=-∞}^∞ \sum_{m=-∞}^∞ A_n^* A_m a \delta_{nm} \\
&= \sum_{n=-∞}^∞ |A_n|^2
\end{align*}$
"""

# ╔═╡ d3f2b1c5-3682-4adc-a35d-6c170582e575
md"## Fourier Transform"

# ╔═╡ d2d0c22d-385a-4fc6-8eb3-64076175d764
md"""
**Remark.**
We will start by considering a periodic function ``f(x)`` with ``f(x + a) = f(x)``, and an expansion

$f(x) = \sum_{n=-∞}^∞ A_n e^{ikx} \tag{5.15}$

and end up with ``k = 2n \pi / a`` and (5.8).
"""

# ╔═╡ 2f22e578-0630-437f-b9ef-32bc817a61c5
md"### Taking the Limit of the General Fourier Series"

# ╔═╡ 9a0b576f-d651-4530-a131-22d9367bf391
md"### The Width of the Fourier Transform"

# ╔═╡ 524d8135-348e-448c-821d-31b1f6a53162
md"### Examples of Fourier Transforms"

# ╔═╡ ac293e65-d961-462c-93bf-c42f48c6dddd
md"### Working in ``k``-space versus ``x``-space"

# ╔═╡ 626e2c17-0581-48d1-afda-55530c8c82d8
md"## The Dirac ``\delta``-function"

# ╔═╡ 0e2bdebd-d60c-40d8-b844-33effac3cce9
md"""
**Remark.**
Consider the question "What is the Fourier Transform of ``f(x) = 1``?"
This function is infinitely broad, so do we expect the Fourier Transform to be infinitely narrow?
How would we quantify this?
"""

# ╔═╡ 2ed347e6-4755-40c6-8990-df90e04d760e
md"""
**Remark.**
Following (5.16) for ``f(x) = 1`` leads us to

$A(k) = ∫_{-∞}^∞ e^{ikx} dx = ∫_{-∞}^∞ [\cos(kx) + i \sin{kx}] dx = \begin{cases}
0 &\text{if } k ≠ 0 \\
∞ &\text{if } k = 0
\end{cases}$
"""

# ╔═╡ 84456432-c830-4565-a622-e67b7e31ff4e
md"### Surface theorems revisited"

# ╔═╡ a59f49be-938e-455a-b572-43c587ead3ff
md"# Vector Spaces and Operators"

# ╔═╡ c87ff4d1-2d4d-4cc3-954d-e2330208eae0
md"""
**Remark.**
This chapter concerns the subject known as **Linear Algebra**.
As with so many things in this course, this is a very large subject so we are only able to scratch the surface.
"""

# ╔═╡ 587aa7cd-a629-4116-8d95-e0541ddd9738
md"## Introduction to Systems of Linear Equations"

# ╔═╡ 1bfc333a-467f-4195-aa6b-ef2cd5213c64
md"""
**Remark.**
How would you go about solving the system of equations

$\begin{align*}
2x + y &= 3 \tag{6.1a} \\
x - y &= 0 \tag{6.1b}
\end{align*}$

for the variables ``x`` and ``y``?
A glance at the second equation tells you that ``x = y``, and in your head you see that this gives ``x = y = 1`` from the first equation.
Of course, this is a very simple example, but you know that, in principle, you are able to multiply either or both of the equations by constants, add or subtract the equations from each other, and manipulate things one way or another so that you can isolate ``x`` and ``y``.
"""

# ╔═╡ af132e8f-f0b7-4d17-a774-1ccd824f62e0
md"""
**Remark.**
Sometimes you encounter pitfalls, though.
Consider solving the system of equations

$\begin{align*}
2x + y &= 3 \tag{6.2a} \\
4x + 2y &= 6 \tag{6.2b}
\end{align*}$

for ``x`` and ``y``.
If you multiply the first equation by 2 and subtract it from the second equation, you end up with ``0 = 0``, which is true, but useless for finding ``x`` and ``y``.
(If the right hand side of the second equation was something other than 6, you wouldn't even end up with a true statement.)
The problem, of course, is that these two equations are not *independent*.
That is, they are really the same equations, because the coefficients of ``x`` and ``y`` in the second equation are both just the same factor, namely 2, of the coefficients in the first equation.
"""

# ╔═╡ 061a1458-29ad-4f79-92f5-7da70ab23498
md"""
**Remark.**
Our first job in this chapter is to formalize how we will write systems of linear equations, and this will lead us into a discussion of *vectors* and *matrices*.
The concept of a "vector" will be a very expanded version of what we discussed in Section 4.1.
Seeing this formalism will create some obvious questions regarding how we solve systems of linear equations, so we'll next address those questions before coming back to solving these systems in Section 6.3.9.
"""

# ╔═╡ 518913ae-e69b-4958-976c-bcc04a128957
md"""
**Remark.**
So let's think about a system of equations with more than just two variables ``x`` and ``y``.
Rather than run through the alphabet, let's say there are ``N`` equations for ``N`` variables ``x_1, x_2, …, x_N``.
We'll use an upper case "A" to denote the coefficients with appropriate subscripts, and write

$\begin{array}{c}
A_{11} x_1 & + & A_{12} x_2 & + & A_{13} x_3 & + & ⋯ & + & A_{1N} x_N &= & c_1 \\
A_{21} x_1 & + & A_{22} x_2 & + & A_{23} x_3 & + & ⋯ & + & A_{2N} x_N &= & c_2 \\
A_{31} x_1 & + & A_{32} x_2 & + & A_{33} x_3 & + & ⋯ & + & A_{3N} x_N &= & c_3 \tag{6.3} \\
⋮ &&⋮ &&⋮ &&&&⋮ &&⋮ \\
A_{N1} x_1 & + & A_{N2} x_2 & + & A_{N3} x_3 & + & ⋯ & + & A_{NN} x_N &= & c_N
\end{array}$

where the ``c_N`` are just the numbers on the right hand sides of the equations.
These equations are the same as writing

$\sum_{j=1}^N A_{ij} x_j = c_i$

where ``i = 1,2,3,…,N``.
Using our summation notation agreement, where any index repeated twice is automatically summed over, we get the compact form

$A_{ij} x_j = c_i \tag{6.4}$

which is exactly equivalent to (6.3).
"""

# ╔═╡ b62f1d2d-1528-4614-a5cb-54e3c4b4d4e1
md"""
**Remark.**
An even more economical way to write (6.3) or (6.4), which in fact is profound, is

$\underline{\underline{A}} \,\underline{x} = \underline{c} \tag{6.5}$

where

$\underline{\underline{A}} = \begin{bmatrix}
A_{11} & A_{12} & A_{13} & ⋯ & A_{1N} \\
A_{21} & A_{22} & A_{23} & ⋯ & A_{2N} \\
A_{31} & A_{32} & A_{33} & ⋯ & A_{3N} \\
⋮ & ⋮ & ⋮ &  & ⋮ \\
A_{N1} & A_{N2} & A_{N3} & ⋯ & A_{NN} \\
\end{bmatrix} \quad \underline{x} = \begin{bmatrix} x_1 \\ x_2 \\ x_3 \\ ⋮ \\ x_N \end{bmatrix} \quad \text{and} \quad \underline{c} = \begin{bmatrix} c_1 \\ c_2 \\ c_3 \\ ⋮ \\ c_N \end{bmatrix}$

define the (square) **matrix** ``\underline{\underline{A}}`` and the **column vectors** ``\underline{x}`` and ``\underline{c}``.
You can now easily visualize the sum (6.4) by imagining taking the top row of ``\underline{\underline{A}}``, matching it against the column ``\underline{x}``, multiplying each element by each other one-by-one, adding this up and equating it to the first element of ``\underline{c}``, that is ``c_1``.
Then repeat for the second row and equation to ``c_2`` and so forth.
"""

# ╔═╡ afc92633-ccf6-476e-906b-5102b6ffacc3
md"## Generalized Vectors"

# ╔═╡ a139657d-d668-4d43-a427-6b10d47f6fea
md"### The ``N``-Dimensional complex vector"

# ╔═╡ 0b6942bc-32b0-4487-b548-7ce784073190
md"""
**Remark.**
A **vector** ``\underline{v}`` is a collection of ``N`` (possibly) complex numbers ``v_1, v_2, …, v_N``.
That is ``\underline{v} ∈ ℂ^N``.
If we want to write ``\underline{v}`` in terms of its specific elements, we do so with a **column vector**, namely

$\underline{v} = \begin{bmatrix} v_1 \\ v_2 \\ ⋮ \\ v_N \end{bmatrix}$

We refer to the individual ``v_i`` as **components** of the vector.
The collection of all possible vectors forms a **vector space**.
"""

# ╔═╡ 0fd4fdb8-601f-45bd-bfe8-e94c3df152b1
md"""
**Remark.**
It is also possible to represent a vector by its **transpose**, that is

$\underline{v}^T = \begin{bmatrix} v_1 & v_2 & ⋯ & v_N \end{bmatrix}$

which we also refer to as a **column vector**.
We will in fact more often use the **Hermitian transpose**

$\underline{\tilde{v}} = \underline{v^*}^T = \begin{bmatrix} v_1^* & v_2^* & ⋯ & v_N^* \end{bmatrix}$

which is the transpose of the complex conjugates of the components of ``\underline{v}``.
Sometimes, especially in Quantum Mechanics, we refer to the space of Hermitian conjugate vectors as the **dual space**.
"""

# ╔═╡ c163f2d6-3661-485e-a93d-d7e2f64c3525
md"### Inner product and norm"

# ╔═╡ 735dbdf7-57a5-45bd-a4ab-e3efd1642e79
md"""
**Remark.**
The **inner product** of two vectors ``\underline{u}`` and ``\underline{v}`` means to take the Hermitian conjugate of the first one and multiply it by the second one, in the sense that you are multiplying a column vector by a row vector as if they were matrices.
That is, the inner product is

$⟨u \vert v⟩ = \underline{\tilde{u}} \, \underline{v} = {u_i}^* v_i$

where I have employed the summation notation.
Clearly ``⟨u \vert v⟩ = ⟨v \vert u⟩^*``.
"""

# ╔═╡ edbffb1d-002a-47ad-b889-af649cbf8432
md"""
**Remark.**
It should be obvious to you that the inner (i.e. dot) product of two 3D (real) vectors ``\vec{a}`` and ``\vec{b}`` is completely consistent with this definition.
Indeed, if the inner product of two vectors is zero, we say that they are **orthogonal**.
"""

# ╔═╡ b62d077e-2a28-42ac-9145-2e619b9b453c
md"""
**Remark.**
The inner product of a vector with itself gives the square of the **norm** of the vector, that is

$⟨v \vert v⟩ = {v_i}^* v_i = \sum_{i=1}^N |v_i|^2$
"""

# ╔═╡ bca4c220-6b9d-4d58-9988-b352c614fb93
md"### Unit vectors"

# ╔═╡ 72dcaf9e-aff3-44af-9f4d-e6b5bf5bcf36
md"### Dyadics and tensors"

# ╔═╡ de838267-81ce-4742-a0ac-ee6099ea0129
md"""
**Remark.**
How might you think about an object like ``\underline{u}\,\underline{\tilde{v}}``, that is the "product" of a vector and its Hermitian conjugate, but in the "wrong" order?
It seems reasonable to think about this sort of thing in terms of matrix multiplication, and write

$\underline{v} \,\underline{\tilde{v}} = \begin{bmatrix} u_1 \\ u_2 \\ ⋮ \\ u_N \end{bmatrix} \begin{bmatrix} {v_1}^* & {v_2}^* & ⋯ & {v_N}^* \end{bmatrix} = \begin{bmatrix} u_1 {v_1}^* & u_1 {v_2}^* & ⋯ & u_1 {v_N}^* \\ u_2 {v_1}^* & u_2 {v_2}^* & ⋯ & u_2 {v_N}^* \\ ⋮ & ⋮ & ⋱ & ⋮ \\ u_N {v_1}^* & u_N {v_2}^* & ⋯ & u_N {v_N}^* \end{bmatrix}$
"""

# ╔═╡ ec7c34c8-e5b5-4ed1-a0b9-f3cc72fd4d6c
md"""
**Remark.**
In other words, this "wrong" product is a matrix.
This actually turns out to be a very useful construction for Physics, and you will see it in various courses.
It is a good way to understand the moment of inertia in rigid bodies in classical mechanics, for example.
"""

# ╔═╡ 1c37664b-8f95-4605-905e-a5a596b43b5b
md"""
**Remark.**
We call this kind of constructcion a **dyadic** or **dyad**.
It is a special form of something called a **tensor**.
We won't spend much time on the concept of tensors in this course, but you will encounter them elsewhere in your studies of Physics.
"""

# ╔═╡ 05be8fc5-5475-4073-b889-301d05e3b5b9
md"### Functions can form a vector space"

# ╔═╡ 36b9b8b1-1fff-4ccd-898b-04cc9c58dee6
md"## Operations on Vectors: Matrices"

# ╔═╡ 27bf8152-77f2-4a6e-972f-34acc9a714cd
md"""
**Remark.**
If we were talking about vector spaces in the abstract, the next thing to talk about would be "operations" on vectors.
An **operator** is an object which can transform a vector into another vector.
Abstract operators are critical in the formulation of Quantum Mechanics, for example.
"""

# ╔═╡ 34e65b0d-1cb8-4423-8fda-68e5166e2e3c
md"### Matrices multiply vectors"

# ╔═╡ 27e2f566-0b8e-4d7d-885f-93799ab3fe6d
md"### Matrices multiplying other matrices"

# ╔═╡ 94f9b71a-9bc6-43c2-a99a-610c03b51bd8
md"### Symmetric and diagonal matrices"

# ╔═╡ b5392053-64c8-4e3c-aba6-56829b01467d
md"### Transpose and Hermitian transpose of a matrix"

# ╔═╡ 2d083f7a-7a5e-47aa-b3a7-e5ec488a9b0d
md"### Determinant of a matrix"

# ╔═╡ ee18f1f0-fdea-4bbf-90b2-a0efcaf4075d
md"""
**Remark.**
The **determinant** ``|\underline{\underline{A}}|`` of a matrix ``\underline{\underline{A}}`` is an extremely important concept which unfortunately is difficult to clearly define.
"""

# ╔═╡ 10d03a95-67d0-49f1-9561-4e933a6901df
md"""
**Remark.**
The determinant is a peculiar thing, mathematically.
It maps the matrice, which we'd write as the Cartesian product ``ℂ^N × ℂ^N`` onto ``ℂ``.
That is, it takes a very large set and maps it into a much smaller set.
"""

# ╔═╡ 933a156e-460a-4720-add2-6dbe8fa32786
md"""
**Remark.**
Probably the best way to think about the determinant is as the sum of the ``N`` terms formed from every possible product of the elements of the matrix, picking from each row and from each column, but never repeating the row or column, and including an alternating sign.
You could write it as the sum over the products of all the elements but including an ``N``-dimensional version of the totally antisymmetric symbol ``\epsilon_{ijk}`` introduced in Section 4.1.2.
"""

# ╔═╡ 53976c43-104a-4d4b-a7e8-15845dd41d47
md"""
**Example.**
If ``\underline{\underline{A}}`` is a ``1 × 1`` matrix then the determinant is just the single element ``A_{11}``.
For a ``2 × 2`` matrix,

$|\underline{\underline{A}}| = \begin{vmatrix} A_{11} & A_{12} \\ A_{21} & A_{22} \end{vmatrix} = A_{11} A_{22} - A_{12} A_{21}$

For a ``3 × 3`` matrix,

$\begin{vmatrix}
A_{11} & A_{12} & A_{13} \\
A_{21} & A_{22} & A_{23} \\
A_{31} & A_{32} & A_{33}
\end{vmatrix}
= A_{11} \begin{vmatrix} A_{22} & A_{23} \\ A_{32} & A_{33} \end{vmatrix}
- A_{12} \begin{vmatrix} A_{21} & A_{23} \\ A_{31} & A_{33} \end{vmatrix}
+ A_{13} \begin{vmatrix} A_{21} & A_{22} \\ A_{31} & A_{32} \end{vmatrix}$
"""

# ╔═╡ ee0037a5-4b1b-41bb-8be9-f9831e8abb09
md"""
**Remark.**
This procedure extends to ``N × N`` matrices.
That is, go along the top row (or any other row, for that matter), select the elements one by one, then multiply that element by the determinant of the sub-matrix obtained by removing the row and column of the element.
This corresponding ``(N - 1) × (N - 1)`` determinant, along with the appropriate sign, is called the **cofactor** of the element you selected.
This procedure is called a **cofactor expansion** or **Laplace's expansion**.
"""

# ╔═╡ edc60cab-fb00-45fb-9761-cc75e243d74d
md"""
**Remark.**
Here are a few important properties of determinants.

1. If you interchange any two rows or columns of a matrix, then the determinant changes sign.
   An obvious corollary is that the determinant ``|\underline{\underline{A}}| = 0`` for any matrix ``\underline{\underline{A}}`` that has two identical rows or columns.

2. If any one row or column of a matrix ``\underline{\underline{A}}`` is multiplied by a constant ``c``, then the determinant is ``c |\underline{\underline{A}}|``.
   It therefore follows that if any one row (column) of a matrix is proportional to any other row (column), then ``|\underline{\underline{A}}| = 0``.

3. If a matrix ``\underline{\underline{A}}`` is multiplied by a constant ``c``, then the determinant is multiplied by ``c^N``, that is ``|c \, \underline{\underline{A}}| = c^N |\underline{\underline{A}}|``.

4. The determinant of the transpose of a matrix is the same as the determinant of the original matrix, that is ``|\underline{\underline{A}}^T| = |\underline{\underline{A}}|``.

5. The determinant of the Hermitian transpose of a matrix equals the complex conjugate of the determinant of the original matrix, that is ``|\underline{\underline{\tilde{A}}}| = |\underline{\underline{A}}|^*``.

6. For two matrices ``\underline{\underline{A}}`` and ``\underline{\underline{B}}``, ``|\underline{\underline{A}} \, \underline{\underline{B}}| = |\underline{\underline{A}}| |\underline{\underline{B}}| = |\underline{\underline{B}} \, \underline{\underline{A}}|``.
   That is, the determinant of the product of matrices is the product of the determinants, regardless of whether or not ``\underline{\underline{A}}`` and ``\underline{\underline{B}}`` commute.
"""

# ╔═╡ 26ee3fc0-24f2-4e2e-801d-3a0511003a55
md"### Matrix inversion"

# ╔═╡ b06b4c4d-d3ac-4509-9eb5-0f51609b4041
md"### Orthogonal, Hermitian, and unitary matrices"

# ╔═╡ ea445068-fba3-4cad-b7af-fd69f4e17092
md"### Classifying matrices with groups"

# ╔═╡ 1bf354cd-bca3-4e93-a3a0-8c631122d257
md"### Revisiting systems of linear equations"

# ╔═╡ f4af38bc-2375-4ea6-8d42-8b60607e96b6
md"## The Eigenvalue Problem"

# ╔═╡ f7ec00ef-9da0-4eb8-98e6-188dec88f6b5
md"""
**Remark.**
A matrix ``\underline{\underline{A}}`` operates on a vector ``\underline{v}`` turning into another vector ``\underline{\underline{u}}``.
Suppose (for reasons that will become clear shortly) we ask ourselves what it means if ``\underline{\underline{u}}`` is the same vector as ``\underline{\underline{v}}``, perhaps multiplied by some constant ``\lambda``.
That is

$\underline{\underline{A}} \, \underline{v} = \lambda \underline{v} \tag{6.16}$
"""

# ╔═╡ 8bb4f824-9a0d-44df-8d75-19403165e827
md"""
**Remark.**
Equation (6.16) is called an **eigenvalue equation**.
For a given matrix ``\underline{\underline{A}}``, the constant ``\lambda`` is called an **eigenvalue** and the vector ``\underline{v}`` is called an **eigenvector**.
"""

# ╔═╡ 62ae317a-445b-4c1e-b4e3-42517201c10f
md"""
**Remark.**
Notice that I can multiply (6.16) through by a constant ``c``, in which the eigenvector would be ``c\underline{v}``, so there is clearly some freedom in choosing the norm of ``\underline{v}``.
In most problems, we agree that ``\underline{v}`` should have unit norm, and that determines the value of ``c = \frac{1}{\sqrt{⟨v \vert v⟩}}``.
"""

# ╔═╡ 5617f1ea-fc4d-42c0-b175-7702a2cd5f43
md"""
**Remark.**
We will see that an ``N × N`` matrix has ``N`` eigenvalues and ``N`` eigenvectors to go with each of the eigenvalues.
It is possible that two or more eigenvalues will be equal to each other, and that introduces some complications.
These complications are easily overcome, but we won't bother with these situations in this course.
"""

# ╔═╡ a5512102-f6bf-4531-abd0-f61582b4d11f
md"""
**Remark.**
We can illustrate the fundamentals and usefulness of the eigenvalue problem by giving a specific example, namely finding the axes of a tilted ellipse.
"""

# ╔═╡ 0ab4c01d-2f18-4acb-bb76-dc626ecd4c56
md"""
### The axes of a tilted ellipse
"""

# ╔═╡ efb36234-c2c5-4d0f-9aad-045527dc1585
md"""
**Remark.**
Figure 6.1 plots the points which satisfy the equation

$6x^2 + 4xy + 3y^2 = 16 \tag{6.17}$

which you probably know is the equation of an ellipse.
The presence of the "cross term proportional to ``xy`` means that the ellipse is "tilted."
"""

# ╔═╡ 3560c00a-e65d-4058-ade7-795f46cbb185
md"""
**Remark.**
Our job is to find the directions (in red in Figure 6.1) along which the major and minor axes lie.
We'll do this by looking for the rotation matrix ``\underline{\underline{R}}`` that rotates the ``x``- and ``y``-axes into new axes ``x'`` and ``y'`` so that the cross terms in (6.17) vanish when written in terms of ``x'`` and ``y'`` instead of ``x`` and ``y``.
"""

# ╔═╡ 9017dc9c-bb73-45b0-ba63-d3f8f7d30025
md"""
**Remark.**
The first step is to write (6.17) in terms of vectors and matrices.
This is easy, that is

$\underline{x}^T \underline{\underline{A}} \,\underline{x} = 16 \qquad\text{where}\qquad \underline{\underline{A}} = \begin{bmatrix} 6 & 2 \\ 2 & 3 \end{bmatrix} \qquad\text{and}\qquad\underline{x} = \begin{bmatrix} x \\ y \end{bmatrix} \tag{6.18}$
"""

# ╔═╡ 7dff5318-497d-4b18-9e2e-753819386983
md"""
**Theorem.**
The eigenvectors of a Hermitian matrix form an orthogonal set.
"""

# ╔═╡ 1d631d43-0bda-4c99-aff6-b03b69f68eca
md"### Finding eigenvalues and eigenvectors"

# ╔═╡ 909a23ee-0005-4966-af11-2011d7089e59
md"""
**Remark.**
We rewrite (6.16) slightly as

$\underline{\underline{A}} \,\underline{v} = \lambda \underline{\underline{I}} \,\underline{v}$

where we have inserted the identity matrix in front of ``\underline{v}``, that is we've used ``\underline{\underline{I}} \, \underline{v} = \underline{v}``.
With a little bit of rearranging, this gives

$(\underline{\underline{A}} - \lambda\, \underline{\underline{I}}) \underline{v} = \underline{0} \tag{6.22}$

where we are being explicit that the right side of the equation is the column vector with all entries equal to zero.
This is just a system of linear algebraic equations for the components of ``\underline{v}``.
What's more, it is a **homogeneous** system of equations.
That means that we expect all of the components of ``\underline{v}`` to be zero.
"""

# ╔═╡ 201340ea-d4be-4db7-831d-c0fa786d5a7a
md"""
**Remark.**
This is unacceptable, of course, so we need to prevent (6.22) from having a solution.
We can do this by requiring the determinant of the matrix on the left to be zero.
That is,

$\det(\underline{\underline{A}} - \lambda \,\underline{\underline{I}}) = 0 \tag{6.23}$

which is a polynomial of degree ``N`` in ``\lambda``.
This is called the **characteristic equation** and will have ``N`` roots.
That is, it yields ``N`` values for ``\lambda``.
"""

# ╔═╡ 32349015-8e80-4bf8-ae2b-30af8fee2971
md"""
**Example.**
Let's use the matrix ``\underline{\underline{A}}`` from (6.18).

The characteristic equation is

$\begin{vmatrix} 6 - \lambda & 2 \\ 2 & 3 - \lambda \end{vmatrix} = (6 - \lambda)(3 - \lambda) - 4 = \lambda^2 - 9\lambda + 14 = (\lambda - 7)(\lambda -  2) = 0$

so the eigenvalues are indeed 7 and 2.
For ``\lambda = 7``, the system of equations is

$\begin{align*}
-v_1 + 2v_2 &= 0 \\
2v_1 - 4v_2 &= 0
\end{align*}$

which are indeed the same equation, which reduces to ``v_1 = 2v_2``.
Combining this with

$⟨v \vert v⟩ = {v_1}^2 + {v_2}^2 = 5{v_2}^2 = 1$

gives us ``v_1 = 2 / \sqrt{5}`` and ``v_2 = 1 / \sqrt{5}`` which is what we quoted for the eigenvector ``\underline{v}`` corresponding to the eigenvalue ``\lambda = 7``.
For ``\lambda = 2``, the system of equations is

$\begin{align*}
4v_1 + 2v_2 &= 0 \\
2v_1 + v_2 &= 0
\end{align*}$

so ``v_2 = -2v_1`` and so forth.
"""

# ╔═╡ 5f71ff55-0633-4e12-9ea3-beeaf6cf3986
md"### Coupled oscillations revisited"

# ╔═╡ dbed838f-5e77-4289-93fb-4d1c20145f02
md"""
**Remark.**
We studied the problem of two masses and three springs in Section 3.7.1.
In fact, this is an ideal example of an eigenvalue problem in Physics.
Formulating that problem in terms of eigenvectors is elegant, and straightforward to generalizae to ``N`` masses.
"""

# ╔═╡ 45bc5c3f-edb3-44ef-bd56-832f0b8fb3b2
md"""
**Remark.**
In this section we will reformulate the problem of two identical masses connected by three identical springs in terms of vectors, matrices, and eigenvalues.
First let's rewrite the coupled differential equations (3.31) as

$\begin{align*}
ẍ_1(t) &= -2{\omega_0}^2 x_1(t) + {\omega_0}^2 x_2(t) \tag{6.24a} \\
ẍ_2(t) &= {\omega_0} x_1(t) - 2{\omega_0}^2 x_2(t) \tag{6.24b}
\end{align*}$
"""

# ╔═╡ a4455d36-e6a4-4b4a-b8d1-87de4c5c2755
md"# Calculus of Variations"

# ╔═╡ 52709b64-51c3-4493-955f-fbfa218562da
md"""
**Remark.**
Here's a general mathematical problem that turns out to be very important in lots of scientific fields.
Imagine you are looking to find some function ``f(x)`` that is defined over a range ``a ≤ x ≤ b``.
You don't know much about the function, except that you have its values ``f(a)`` and ``f(b)``, and that there's an integral over this range that, involving this function, and you want that integral to be a minimum.
In other words, you want to find the function ``f(x)`` so that the integral

$S = ∫_a^b F[f(x), f'(x), x] dx \tag{7.1}$

is minimized, where ``f(a)`` and ``f(b)`` have fixed values.
You are given the function ``F`` of ``f(x)`` and its derivatives (and perhaps ``x`` as well).
How would you go about finding ``f(x)``?
"""

# ╔═╡ dda653b9-0074-4486-9b82-d0ff2fc165cb
md"""
**Remark.**
The solution to this general problem leads us into the **Calculus of Variations**.
The first place you will encounter this problem in a Physics course will probably be Analytical Mechanics.
You'll see that it is much more useful in general, though, and we'll do some examples before we're done with this chapter.
There are also some fundamental physics implications, because lots of basic physical laws come down to minimizing the "action" over some "path" through space and time.
"""

# ╔═╡ 6fb28410-104a-4705-9152-38a2a54cbe8b
md"""
**Remark.**
Sometimes the integral ``S`` in (7.1) is written as ``S[f(x)]``.
That is, ``S`` takes on a different value for a different function ``f(x)``.
We refer to ``S[f(x)]`` by saying the ``S`` is a **functional** of ``f(x)``.
"""

# ╔═╡ e56ce3d2-ae0e-4ba0-a948-9e42b1db0e65
md"""
**Remark.**
You might be interested to know that although it took Einstein a decade to come up with the correct equations for General Relativity, the mathematician David Hilbert figured out how to do it with an action principle and came close to beating Einstein to the punch.
"""

# ╔═╡ 03a2834e-f172-45cb-8b3f-2f38cadef3c8
md"""
**Remark.**
We'll start this chapter by doing a specific example, namely showing that the shortest distance between two points is a straight line.
Then we'll generalize the technique and do some examples.
"""

# ╔═╡ 9eff0b57-b86c-44c6-b817-f9b233caa7c6
md"""
## The Shortest Distance Between Two Points
"""

# ╔═╡ 96563cc7-3dfb-4127-bc74-faecdb0bd91d
md"""
**Remark.**
What curve has the shortest distance between two points in a plane?
Obviously, the answer is a straight line, but how would you go about proving that?
Well, if you put the two points in the ``(x,y)`` plane and assume they are joined by a function ``y = f(x)``, then you would integrate the length along this curve and look for the ``f(x)`` that gives you the smallest value.
"""

# ╔═╡ 227a4cd2-802c-4581-bc69-ffc60812ed4b
md"""
**Example.**
The length of an infinitesimal area element in the ``(x,y)`` plane is

$ds = \sqrt{dx^2 + dy^2}$

Therefore, the length ``S`` between two points ``a`` and ``b`` in the ``(x,y)`` plane is

$S = ∫_a^b ds = ∫_a^b \sqrt{dx^2 + dy^2} = ∫_a^b \sqrt{1 + \left(\frac{dy}{dx}\right)^2} dx = ∫_a^b \sqrt{1 + (f'(x))^2} dx \tag{7.2}$

and we aim to find the function ``y = f(x)`` that minimizes ``S[f(x)]``.
If we write

$Y(x) = f(x) + \epsilon \eta(x)$

where ``\epsilon`` is just some parameter, ``f(x)`` is the right function, and ``\eta(x)`` is some arbitrary function, then maybe we can find ``f(x)`` by considering ``S[Y(x)] = S(\epsilon)`` and setting ``dS/d\epsilon = 0`` when ``\epsilon = 0``.
Following our nose and using integration by parts, we have

$\begin{align*}
\frac{d}{d\epsilon} S(\epsilon) &= \frac{d}{d\epsilon} ∫_a^b \sqrt{1 + (Y'(x))^2} \,dx = ∫_a^b \frac{Y'(x)}{\sqrt{1 + (Y'(x))^2}} \frac{dY'}{d\epsilon} dx \\
\left.\frac{d}{d\epsilon} S(\epsilon)\right|_{\epsilon = 0} &= ∫_a^b \frac{f'(x)}{\sqrt{1 + (f'(x))^2}} \eta'(x) \,dx \\
&= \left.\frac{f'(x)}{\sqrt{1 + (f'(x))^2}} \eta(x)\right|_a^b - ∫_a^b \frac{d}{dx} \left[\frac{f'(x)}{\sqrt{1 + (f'(x))^2}}\right] \eta(x) \,dx = 0
\end{align*}$

Now ``\eta(x)`` is an arbitrary function, except that we require ``\eta(a) = \eta(b) = 0`` so that ``Y(x)`` has the right values at ``x = a`` and ``x = b``.
So, the first term above is zero, and we are left with

$∫_a^b \frac{d}{dx} \left[\frac{f'(x)}{\sqrt{1 + (f'(x))^2}}\right] \eta(x) \,dx = 0$

This is in fact an interesting result.
It says that the integral is zero no matter what function I choose for ``\eta(x)``.
The only way to achieve this is to have the factor multiplying ``\eta(x)`` be zero.
That is

$\frac{d}{dx} \left[\frac{f'(x)}{\sqrt{1 + (f'(x))^2}}\right] = 0 \qquad\text{or}\qquad \frac{f'(x)}{\sqrt{1 + (f'(x))^2}} = \text{constant} \tag{7.3}$

which is of course equivalent to ``f'(x) = \text{constant}``.
In other words, the curve that connects ``x = a`` to ``x = b`` over the shortest distance is the constant slope, which is a straight line.
We have proved our assertion.
"""

# ╔═╡ 199e8607-24a4-4a4b-b0b2-c895cae50fed
md"""
## The Euler-Lagrange Equations
"""

# ╔═╡ e16bf7ea-54ad-46cd-8f33-1d4851a2dc55
md"""
**Remark.**
The approach used to find the path with the shortest distance between two points, used in Section 7.1, can easily be generalized to find a condition on the function ``F[f(x), f'(x), x]`` in (7.1) that minimizes the functional ``S[f(x)]``.
"""

# ╔═╡ 6143b86a-102a-47df-8bc9-8f6eb07eabc9
md"""
**Example.**
We start the same way, and write

$Y(x) = f(x) + \epsilon \eta(x) \qquad\text{with}\qquad \eta(a) = 0 = \eta(b)$

where ``f(x)`` is the correct answer and ``\eta(x)`` is otherwise arbitrary.
Whereas in Section 7.1 the integrand only depended on ``f'(x)``, this time we have the integrand depending, in principle on ``f(x)`` as well.
Therefore, using the chain rule for a multivariable function,

$\frac{d}{d\epsilon} S(\epsilon) = ∫_a^b \left[\frac{∂F}{∂Y} \frac{∂Y}{∂\epsilon} + \frac{∂F}{∂Y'} \frac{∂Y'}{∂\epsilon}\right] dx$

and the condition that ``f(x)`` minimize ``S(0)`` becomes

$\left.\frac{d}{d\epsilon} S(\epsilon)\right|_{\epsilon = 0} = ∫_a^b \left[\frac{∂F}{∂f} \eta(x) + \frac{∂F}{∂f'} \eta'(x)\right] dx = 0$

Just as in Section 7.1, we treat the second term using integration by parts, so

$∫_a^b \frac{∂F}{∂f'} \eta'(x) \,dx = \left[\frac{∂F}{∂f'} \eta(x)\right]_a^b - ∫_a^b \frac{d}{dx} \left(\frac{∂F}{∂f'}\right) \eta(x) \,dx$

The first term is zero because ``\eta(a) = 0 = \eta(b)``, so our minimization condition becomes

$∫_a^b \left[\frac{∂F}{∂f} - \frac{d}{dx} \frac{∂F}{∂f'}\right] \eta(x) \,dx = 0$

Once again, since ``\eta(x)`` is arbitrary, we can only satisfy this if the expression that multiplies ``\eta(x)``, in square brackets, is also zero.
That is

$\frac{∂F}{∂f} - \frac{d}{dx} \frac{∂F}{∂f'} = 0 \tag{7.4}$

This is called the **Euler-Langrange Equation**.
Given ``F[f(x), f'(x), x]``, it is a second order differential that we solve to find the function ``f(x)`` that minimizes ``S[f(x)]``.
"""

# ╔═╡ 5ef354f0-eec0-42d8-9b93-f73ab0190e0e
md"""
**Example.**
Let's try it out for the straight line in Section 7.1.
In that case

$F[f(x), f'(x), x] = \sqrt{1 + (f'(x))^2} \tag{7.5}$

Carrying out the calculations in (7.4) one by one, we have

$\begin{align*}
\frac{∂F}{∂f} &= 0 \\
\frac{∂F}{∂f'} &= \frac{f'(x)}{\sqrt{1 + (f'(x))^2}} \\
\frac{d}{dx} \frac{∂F}{∂f'} &= \frac{f''(x)}{\sqrt{1 + (f'(x))^2}} - \frac{[f'(x)]^2 f''(x)}{[1 + (f'(x))^2]^{3/2}}
\end{align*}$

Therefore, (7.4) becomes

$\begin{align*}
-\frac{f''(x)}{[1 + (f'(x))^2]^{1/2}} + \frac{(f'(x))^2 f''(x)}{[1 + (f'(x))^2]^{3/2}} &= -\frac{f''(x)}{[1 + (f'(x))^2]^{3/2}} \left[1 + (f'(x))^2 - (f'(x))^2\right] \\
&= -\frac{f''(x)}{[1 + (f'(x))^2]^{3/2}} = 0
\end{align*}$

which implies that

$f''(x) = 0$

In other words, ``f(x) = mx + c`` for some constants ``m`` and ``c``, a straight line.
"""

# ╔═╡ 2a840fbc-b37c-4826-89e4-201c2290ef4d
md"### Important special cases"

# ╔═╡ a597e778-1500-4e1f-a47b-71bd2ea91ace
md"""
**Remark.**
There are two cases to mention, in which the Euler Lagrange equations reduce to something that is often much simpler to solve than (7.4).
Both cases are because (7.4) can be partially integrated, depending on the form of ``F``.
"""

# ╔═╡ d44dd13a-8d9a-4299-8f07-62ad97ecf25d
md"""
**Remark.**
One is the case when ``F[f(x), f'(x), x] = F[f'(x), x]``, that is ``F`` does not depend explicitly on ``f``.
Notice that in Section 7.1 we ended up showing that ``f'(x)`` was a constant via (7.3), implying a straight line, whereas above, we showed instead that ``f''(x) = 0``.
Of course, both are the same, but why did we end up at different places when it seemed like we used the same approach?
"""

# ╔═╡ 6e33f8e6-2b44-45a9-a63e-fd2f1b12390c
md"""
**Remark.**
The reason is because the function (7.5) for the distance between two points does not depend on ``f(x)``, but only on its derivative.
That is ``\frac{∂F}{∂f} = 0`` so (7.4) implies that

$\frac{d}{dx} \frac{∂F}{∂f'} = 0 \quad\text{so}\quad \frac{∂F}{∂f'} = \text{constant} \quad \text{when} \quad F[f(x), f'(x), x] = F[f'(x), x] \tag{7.6}$

which is precisely the statement we concluded with in (7.3).
"""

# ╔═╡ 66d8e299-b019-4283-b609-32c0e4d182bc
md"""
**Remark.**
The second case is ``F[f(x), f'(x), x] = F[f(x), f'(x)]``, that is ``F`` does not depend explicitly on ``x``.
To exploit this, we first multiply (7.6) by ``f'(x)`` to get

$f' \frac{∂F}{∂f} - f' \frac{d}{dx} \frac{∂F}{∂f'} = 0$

Next we realize that

$\frac{d}{dx} \left(f' \frac{∂F}{∂f'}\right) = f'' \frac{∂F}{∂f'} + f' \frac{d}{dx} \frac{∂F}{∂f'}$

Therefore, the Euler Lagrange equation (7.6) becomes

$f' \frac{∂F}{∂f} + f''\frac{∂F}{∂f'} - \frac{d}{dx} \left(f' \frac{∂F}{∂f'}\right) = \frac{d}{dx} \left(F - f' \frac{∂F}{∂f'}\right) - \frac{∂F}{∂x} = 0$

However, the statement that ``F`` does not depend explicitly on ``x`` means that ``\frac{∂F}{∂x} = 0``.
So,

$F - f' \frac{∂F}{∂f'} = \text{constant} \qquad \text{when} \qquad F[f(x), f'(x), x] = F[f(x), f'(x)] \tag{7.7}$

We saw (7.6) applied to the shortest distance between two points, and we will apply (7.7) in Section 7.3.
In classical mechanics, you will learn that (7.6) has to do with "conserved quantities", and (7.7) will be used to prove the conservation of energy.
"""

# ╔═╡ 7ee747af-eeb3-4e2f-b70a-451fb7c5cd5b
md"### Variational notation"

# ╔═╡ 558b780f-a52e-4522-b873-4aa7b0dcb8c6
md"""
**Remark.**
A common notation is used which makes it much easier to work with functionals like ``S[f(x)]``.
If we write ``\delta f = \epsilon \eta(x)``, we can interpret ``\delta f`` as a "small change in ``f(x)``" over the range of ``x`` that we care about.
In that sense,

$\delta S = S[f(x) + \delta f(x)] - S[f(x)] = 0$

is equivalent to finding a function ``f(x)`` which minimizes ``S``.
We say that ``S[f(x)]`` is **stationary** when ``f(x)`` minimizes the functional.
In terms of the explicit form (7.1) we have

$\delta S = \delta ∫_a^b F[f(x), f'(x), x] \,dx = ∫_a^b \left[\frac{∂F}{∂f} \delta f + \frac{∂F}{∂f'} \delta f'\right] dx = 0$

This makes it simple to write down the derivation of (7.4), with the manipulation of the ``\delta``'s looking just like manipulations of differentials.
That is

$∫_a^b \left[\frac{∂F}{∂f} \delta f + \frac{∂F}{∂f'} \delta f'\right] dx = \left.\frac{∂F}{∂f'} \delta f \right|_a^b + ∫_a^b \left[\frac{∂F}{∂f} - \frac{d}{dx} \frac{∂F}{∂f'}\right] \delta f \,dx = 0 \tag{7.8}$
"""

# ╔═╡ 9a66be7a-0ce5-4e44-bf7a-4ac35f4bd961
md"### More than one dependent variable"

# ╔═╡ 6848fb3d-da72-4473-b1e2-27a7960fadc8
md"""
**Remark.**
It is straightforward to generalize (7.1) to the case of more than one dependent variable.
For example, if we have two dependent variables ``f(x)`` and ``g(x)``, then

$S[f(x),g(x)] = ∫_a^b F[f(x),f'(x),g(x),g'(x),x] \,dx \tag{7.9}$
"""

# ╔═╡ 9116f7ff-48e8-4c76-99d8-63f10514cc92
md"## Example: The Brachistochrone Problem"

# ╔═╡ cd716530-dacb-4549-a8a6-a41fe5418b72
md"""
**Remark.**
Let's use this formalism now to attack a practical problem.
Imagine that you have a bead of mass ``m`` sliding down a wire with no friction.
The wire starts at a point ``(x_1, y_1)`` and ends at a point ``(x_2, y_2)``, and you want to know the shape of the wire that lets the beat from the start to the end in the least amount of time.
"""

# ╔═╡ d19f4c93-7ea6-4f58-b30e-e700a0d56676
md"""
**Remark.**
This is known as the **brachistochrone** problem, from the Greek for "shortest time", and the answer is far from obvious.
See the left side of Figure 7.1.
Your first thought might be to take the shortest path length, that is, the straight line.
Or maybe, you want to fall directly down first, to pick up the greatest speed, then move over to the final point.
Or maybe it's somewhere in between.
"""

# ╔═╡ 2dc624a8-53d5-40c2-9eff-df6d48bd3c50
md"""
**Remark.**
To set up the problem, see the right side of Figure 7.1.
Let the bead start out at the origin, and end up at the point ``(x,y) = (a,b)``.
The path traveled will be ``y = f(x)``, and is fixed at the two endpoints.
We want to find the function ``f(x)`` that minimizes the time to fall under gravity.
This is a clear example of a problem to be solved with the calculus of variations.
"""

# ╔═╡ 9106ee21-f2f9-4127-a173-a2c1d59afbec
md"""
**Remark.**
Our axes are defined with ``y`` going down.
That is the bead moves in the ``+y`` direction.
The time ``dt`` it takes for the particle to move a distance ``dℓ = \sqrt{dx^2 + dy^2}`` is ``dℓ / v`` where ``v`` is the particle's speed.
Since the bead starts from rest at the origin, conservation of energy says

$\frac{1}{2} mv^2 - mgy = 0 \qquad\text{so}\qquad v = \sqrt{2gy}$
"""

# ╔═╡ 0aefb040-cb0e-4b1b-a3e2-2553d523ebfb
md"""
**Remark.**
We can therefore write the time it takes for the bead to travel along the path ``y = f(x)`` as

$T[f(x)] = ∫_{0,0}^{a,b} \frac{dℓ}{v} = ∫_{0,0}^{a,b} \frac{\sqrt{dx^2 + dy^2}}{\sqrt{2gy}} = \frac{1}{\sqrt{2g}} ∫_{0,0}^{a,b} \sqrt{\frac{1 + (f'(x))^2}{f(x)}} \,dx$
"""

# ╔═╡ ae5b736e-7d80-4e44-922d-bb1180aa9ad7
md"""
**Remark.**
Finding ``f(x)`` that minimizes ``T[f(x)]`` means to apply the Euler Lagrange equation (7.4) to

$F[f(x), f'(x), x] = \sqrt{\frac{1 + (f'(x))^2}{f(x)}} = \left[\frac{1 + (f'(x))^2}{f(x)}\right]^{1/2}$
"""

# ╔═╡ 44662cd0-4bd8-43be-8630-2e0aed2bcfcb
md"""
**Remark.**
This time ``F[f(x), f'(x), x]`` does not explicitly depend on ``x``, so we can use the Euler Lagrange equation as integrated in (7.7).
That is

$\begin{align*}
F - f' \frac{∂F}{∂f'} &= \left[\frac{1 + (f'(x))^2}{f(x)}\right]^{1/2} - \frac{1}{(f(x))^{1/2}} \frac{(f'(x))^2}{\left[1 + (f'(x))^2\right]^{1/2}} \\
&= \frac{1}{(f(x))^{1/2}} \frac{1}{[1 + (f'(x))^2]^{1/2}} = \text{constant} ≡ \frac{1}{c^{1/2}}
\end{align*}$
"""

# ╔═╡ bc93ff54-b141-44ae-98b1-8fa104f75401
md"""
**Remark.**
Squaring both sides gives us the differential equation

$f(x) = \left[1 + (f'(x))^2\right] = c$

where ``c`` is a constant that we will determine shortly from the boundary conditions.
If we write ``y = f(x)`` the differential equation becomes

$\frac{dy}{dx} = \sqrt{\frac{c - y}{y}}$

where we note that, the way we have defined the axes in Figure 7.1, we expect the derivative to be positive.
Writing this as

$\sqrt{\frac{y}{c - y}} \,dy = dx$

we see that the left side is easy to integrate if we make the substitution ``y = c \sin^2{\theta}``.
Then ``c - y = c \cos^2{\theta}`` and ``dy = 2c \sin{\theta} \cos{\theta} \, d\theta``, and

$\frac{\sin{\theta}}{\cos{\theta}} 2c \sin{\theta} \cos{\theta} \,d\theta = 2c \sin^2{\theta} \,d\theta = c(1 - \cos{2\theta}) = dx$
"""

# ╔═╡ 24275a3e-1086-41e8-855a-295f24426938
md"## Example with Constraints: Lagrange Multipliers"

# ╔═╡ be1fe96c-e305-4c9b-bc32-f588b064ad33
md"""
**Remark.**
It is not uncommon to have a variational calculus problem that involves *constraints* on the quantities involved.
There is a general approach to all such problems that involves the use of **Lagrange Multipliers**.
We will illustrate the approach here with one type of constraint, namely a different integral over the same independent variable which has to be kept at a fixed value.
"""

# ╔═╡ 8e28af83-d886-4036-9474-d9e4ba2ee693
md"""
**Remark.**
Once again, our problem is to find the function ``f(x)`` which minimizes the functional

$S = ∫_a^b F[f(x), f'(x), x] \,dx \tag{7.11}$

This time, however, there is a constraint that the quantity

$L = ∫_a^b G[f(x), f'(x), x] \,dx \tag{7.12}$

must be kept constant.
For example, ``L`` might represent the length of the curve ``y = f(x)``.
Keeping ``L`` constant is the same as writing ``\delta L = 0`` as we vary ``\delta f(x)``.
Since ``\delta S = 0`` for the correct ``f(x)``, we can get a modified form of the Euler-Lagrange equation by writing

$\delta (S + \lambda L) = \delta ∫_a^b \{F[f(x), f'(x), x] + \lambda G[f(x), f'(x), x]\} = 0 \tag{7.13}$

for some constant ``\lambda``.
"""

# ╔═╡ 68e9990a-b887-45b1-a616-06ec9ae4b661
md"# Functions of a Complex Variable"

# ╔═╡ 00f2b295-8878-4a18-8aa9-c581d6f06139
md"""
**Remark.**
This chapter discusses the theory and applications of *functions* of complex variables.
These functions are mappings ``ℂ ↦ ℂ``, which we can write generically as

$w = f(z) = u(x,y) + iv(x,y) \qquad\text{where}\qquad z = x + iy \tag{8.1}$

with ``x,y,u,v ∈ ℝ`` and ``z,w ∈ ℂ``.
In fact, it will be useful to realize that these functions are also mappings ``ℝ^2 ↦ ℝ^2``, which means they should have properties of functions in two spacial dimensions.
Indeed, we'll borrow some things we proved about vector calculus in Chapter 4.
"""

# ╔═╡ fe30458f-2a8d-4a92-8643-f680cbfbc5b3
md"## Differentiability and Convergence"

# ╔═╡ 9112944d-9c7b-41ae-9d8a-2926c93f9ee3
md"""
**Remark.**
It may seem that the generalization to complex functions from real functions is simple, and not worth a lot of discussion, but in fact that is not the case.
I will illustrate this with a couple of examples of fundamental differences between real and complex functions.
"""

# ╔═╡ e0a9f2d8-1f92-4e02-9ab2-2f532e10514b
md"""
**Example.**
Consider the real function

$f(x) = 2 ∫_0^x |x'| \,dx' = \begin{cases} +x^2 & x ≥ 0 \\ -x^2 & x ≤ 0 \end{cases} \tag{8.2}$

which is plotted in Figure 8.1.
It looks like a perfectly reasonable continuous function passing through the origin.
In fact, it has a perfectly definable derivative as ``x = 0``.
That is, taking ``\epsilon`` to be positive,

$f'(x) = \lim_{\epsilon → 0} \frac{f(+\epsilon) - f(-\epsilon)}{2\epsilon} = \lim_{\epsilon → 0} \frac{(+\epsilon)^2 - (-(-\epsilon)^2)}{2\epsilon} = \lim_{\epsilon → 0} \frac{2\epsilon^2}{2\epsilon} = \lim_{\epsilon → 0} \epsilon = 0$

What's more, the first derivative is continuous at ``x = 0``, since ``f(x) = 2x`` for ``x > 0`` and ``f(x) = -2x`` when ``x < 0``, and both of these approach ``f'(0)`` for ``x → 0``, regardless of whether I approach from the negative or positive direction.

Notice, the ``f'(x)`` exists at ``x = 0``, however ``f''(x)`` does not exist.
"""

# ╔═╡ 94f4cfb2-4038-4162-9117-9fa783f4614d
md"""
**Example.**
Consider the real function

$f(x) = \frac{1}{1 + x^2}$

This is perfectly well defined for all real numbers.
However, if we perform a Taylor expansion about ``x = 0`` we find

$f(x) = 1 - x^2 + x^4 - x^6 + ⋯$

and we are going to get into trouble for ``|x| ≥ 1``.
We might have expected something like this if the function were ``1/(1 - x^2)`` because it would be ill defined at ``x = ±1``.
The problem here is that if we made the function complex, that is

$f(z) = \frac{1}{1 + z^2}$

then it would be ill defined for ``z = ±i``.
We therefore say that this function, as well as the function ``1/(1-x^2)``, have **radii of convergence** given by ``|z| < 1``.
"""

# ╔═╡ 35623418-d363-4213-a923-d20d800a82a7
md"## Examples of Complex Functions"

# ╔═╡ 9acfc902-4e99-41bb-a060-1b9db8d6fa28
md"### Power laws"

# ╔═╡ 05485924-9ef5-4f3b-b37b-78a0925dcb93
md"""
**Remark.**
Consider ``w = f(z) = z^2`` where ``z = x + iy``.
We write

$w = z^2 = (x + iy)^2 = x^2 - y^2 + 2ixy = u(x,y) + iv(x,y) \tag{8.3a}$

where

$u(x,y) = x^2 - y^2 \qquad\text{and}\qquad v(x,y) = 2xy \tag{8.3b}$
"""

# ╔═╡ 30ad1273-a0ec-4208-a0ca-128b255a3ed3
md"""
**Remark.**
We can think about the derivative of ``w = f(z)`` with respect to ``z``.
We sort of expect the answer to be ``f'(z) = 2z``, but can we prove it?
We would proceed to write

$f'(z) = \frac{dw}{dz} = \lim_{Δz → 0} \frac{f(z + Δz) - f(z)}{Δz} = \lim_{Δz → 0} \frac{(z + Δz)^2 - z^2}{Δz} = \lim_{Δz → 0} \frac{2z Δz + (Δz)^2}{Δz}$

but we have to be aware of a potential complication, because ``Δz = Δx + iΔy``, so ``Δz`` can approach zero in various ways, depending on how you take the limits ``Δx → 0`` and ``Δy → 0``.
"""

# ╔═╡ 3e09066a-aa5f-47f8-9d63-9acef50a0ffa
md"### Special functions"

# ╔═╡ c81d441e-da08-4861-98e0-237d269b8df3
md"""
**Remark.**
Most of the special functions discussed in Sections 1.5 and 3.6 are more generally expressed as functions of a complex variable ``z = x + iy``.
It is easiest to start with

$f(z) = e^z = e^x e^{iy}$

from which we can define

$\begin{align*}
\cos{z} = \frac{e^{iz} + e^{-iz}}{2} &\qquad \sin{z} = \frac{e^{ix} - e^{-ix}}{2i} \\
\cosh{z} = \frac{e^{z} + e^{-z}}{2} &\qquad \sinh{z} = \frac{e^{z} - e^{-z}}{2}
\end{align*}$
"""

# ╔═╡ 977c9aa4-9156-484e-9294-857be54fe9fc
md"### Peculiar examples"

# ╔═╡ fa539220-9621-4812-87cd-9cb103be3218
md"## Analyticity"

# ╔═╡ 74e34bc1-1829-4a37-b94e-328ddece72b4
md"""
**Remark.**
If a function of complex variable has a derivative that exists at some point in the complex plane, then we say that the function is analytic at that point.
"""

# ╔═╡ fb372af7-9d88-4c20-af29-f94b92ae497c
md"### Cauchy-Riemann relations"

# ╔═╡ 79decf86-e175-4ca2-897c-6f9c0d4b392e
md"""
**Remark.**
Go back to the basics and you'll see a potential problem.
If you approach the limit to the point ``(x,y)`` in the complex plane along a line of constant ``y``, then

$\begin{align*}
\frac{dw}{dz} &= \lim_{\varepsilon → 0} \frac{f(z + \varepsilon) - f(z)}{\varepsilon} \\
&= \lim_{\varepsilon → 0} \frac{u(x + \varepsilon,y) - u(x,y)}{\varepsilon} + i \lim_{\varepsilon → 0} \frac{v(x + \varepsilon, y) - v(x,y)}{\varepsilon} \\
&= \frac{∂u}{∂x} + i \frac{∂v}{∂x} \tag{8.4}
\end{align*}$
"""

# ╔═╡ 2367fe2b-b961-4a8a-bd4c-c9d671298170
md"## Contour Integration"

# ╔═╡ 0bccc559-aace-49cd-8168-11596d891d70
md"""
**Remark.**
It should be clear that if we are going to integrate some function ``f(z)`` between ``z_1`` and ``z_2``, then we'll need to specify the path we take in the complex plane to connect these two complex numbers.
Consequently, complex integration, generally referred to as **contour integration**, will make use of many of the techniques we developed in Chapter 4, especially Section 4.3.
"""

# ╔═╡ 868a47b6-17e1-4589-9d64-0b06f6211ace
md"### Integral around a closed loop"

# ╔═╡ 08ac82f9-e582-4a01-8999-3b2138942d39
md"""
**Remark.**
It is pretty easy to see that if our contour in the two examples of the previous section was a closed loop, starting and ending at ``(x,y) = (1,0)``, along a circular contour ``C`` traced counter clockwise, then we would have found

$∮_C z \,dz = 0 \qquad\text{and}\qquad ∮_C \frac{1}{z} \,dz = 2\pi i$

This is actually a hint of two very useful theorems that we will now discuss.
"""

# ╔═╡ 159d05f1-e447-424b-8842-a76dd3b2d05a
md"""
**Remark.**
First, rewrite (8.7) in terms of two real line integrals in the ``(x,y)`` plane using ``\vec{A} ≡ u \hat{i} - v \hat{j}`` and ``\vec{B} ≡ v \hat{i} + u \hat{j}`` as

$∮_C f(z) \,dz = ∮_C \vec{A} ⋅ d\vec{r} + i ∮_C \vec{B} ⋅ d\vec{r}$

If ``C`` is a closed contour, then we can write each of these two integrals using Stoke's Theorem (Section 4.3.1).
Applying the Cauchy-Riemann relations (8.6), we find

$∮_C \vec{A} ⋅ d\vec{r} = \left[\frac{∂u}{∂y} + \frac{∂v}{∂x}\right] \hat{k} = 0 \qquad\text{and}\qquad ∮_C \vec{B} ⋅ d\vec{r} = \left[\frac{∂v}{∂y} - \frac{∂u}{∂x}\right] \hat{k} = 0$

This proves the **Cauchy-Goursat Theorem**, namely that the integral around any closed contour of any function that is analytic throughout the enclosed region is zero.
This explains the result for the example above when ``f(z) = z``.
We did the integral over a circular contour, but, in fact, it didn't matter whether the contour was circular or not, only that it was closed, since ``f(z) = z`` is analytic everywhere.
"""

# ╔═╡ a9049cb0-507d-47ec-9089-68764bfd0dc3
md"""
**Remark.**
Of course, the reason we don't get zero when ``f(z) = 1/z`` is that this function is not analytic at ``z = 0``.
In this case, however, there is the **Cauchy Integral Theorem** which states that

$∮_C \frac{f(z)}{z - z_0} \,dz = 2 \pi i f(z_0) \tag{8.9}$

where ``C`` is a closed contour containing the point ``z = z_0`` and ``f(z)`` is analytic inside ``C``.
As usually, we assume the contour is traced in a counter clockwise direction.
"""

# ╔═╡ d6350877-232a-4282-b74f-b169b1352e83
md"""
**Remark.**
It is not hard to prove (8.9).
In fact, we've already done most of the work.
We can replace any arbitrary contour ``C`` that encloses ``z = z_0`` with a small circular contour ``C_0`` about the pole, plus the contour shown in Figure 8.2.
The integrals along ``A → B`` and ``B → A`` cancel each other out, so we can replace the integral around ``C`` with the integral around ``C_0``.
Since the radius of ``C_0`` is arbitrarily small, we can take ``f(z_0)`` out of the integral, leaving us with the integral of ``1/(z - z_0)``, which we have already shown to be equal to ``2\pi i``, after translating the axis to put ``z_0`` at the origin.
If you want to be more formal about it, write ``z - z_0 = re^{i\theta}`` and integrate over ``0 ≤ \theta ≤ 2\pi`` with ``dz = ire^{i\theta} \,d\theta``.
This proves (8.9).
"""

# ╔═╡ 14fe32b3-6f6e-4d3a-a323-c7f75ea67f7d
md"### Practical mathematical examples"

# ╔═╡ 86c4bd63-de59-4097-818a-f095b7c32074
md"""
**Remark.**
The Cauchy Integral Theorem (8.9) makes it possible to do many definite integrals which might otherwise seem to be intractable.
It is best to illustrate this with a specific example, although different examples might use different, but similar, approaches.
"""

# ╔═╡ c529a6d2-834c-460d-a322-29531b301b85
md"# Probability and Statistics"

# ╔═╡ 18ce2fa7-e79c-499a-acc3-5c61b5b3e1cb
md"""
**Remark.**
If there are a number ``n`` of potential different outcomes from some experiment or measurement, and all of these different outcomes are equally probable, then coming up with any one of them has a probability of just ``1/n``.
If the outcomes are not equally probable, then we speak of a **probability distribution** of any one of those outcomes.
This distribution is some function of the different outcomes, labeled in whichever way is appropriate.
If I sum this function over the different possible outcomes (or integrate it if the outcomes are continuous) then you have to get unity.
"""

# ╔═╡ 4c60e7a0-3545-4d27-8186-f7a0bbbcf3d6
md"## Throwing Dice"

# ╔═╡ 3abec054-a3c6-48d8-a33b-618099701b3d
md"""
**Remark.**
Dice are a prototype for learning about probability and probability distributions.
Dice are little cubes -- the singular is "die" -- with each side labeled with one through six dots.
See Figure 9.1.
If you throw any one die (and it is "fair") then there is an equal probability of getting any of the faces to land up.
"""

# ╔═╡ 67830e7a-39b6-4b83-8a57-1541e7fce926
md"## Counting Permutations and Combinations"

# ╔═╡ c6c1361f-e633-43bf-8479-ee6df14725ce
md"""
**Remark.**
It should be clear from our example with the dice, that we need to learn how to count efficiently.
For example, we needed to know the number of ways we could select two dice from a collection of six of them, which turned out to be ``6 ⋅ 5 / 2 = 15``.
We will now set up the mathematics for these kinds of calculations in general.
"""

# ╔═╡ c14959bd-c77a-4423-bc02-e02510be4868
md"### Large numbers and Stirling's approximation"

# ╔═╡ de808fca-1092-4cf1-998b-149b91cc9f03
md"""
**Remark.**
Equation (9.1) is key to determining many quantities related to probabilities, and this includes almost the entire field of Statistical Mechanics.
However, the number of "dice" in those examples is very large, on the order of Avogadro's Number, namely ``N_0 = 6.02 × 10^{23}``.
The form (9.1) is not handy for dealing with numbers like this, and we would really prefer to have some closed analytic form for ``n!``.
"""

# ╔═╡ b6b30d14-64e5-4878-aa8d-1a808a33e6c8
md"## Probability Distributions"

# ╔═╡ 10c32f5b-5ebb-45c8-8aed-1178ee2c4527
md"### The binomial distribution"

# ╔═╡ 879b2464-34e3-44da-b9a9-5abfd5777bbb
md"### The Poisson distribution"

# ╔═╡ 4bfae578-9903-40c4-b100-471f5267054b
md"### The normal distribution"

# ╔═╡ 26ca3cbe-9e33-4858-af3b-dfea3aed5af1
md"### Data histograms as approximations to distributions"

# ╔═╡ 8d768937-e135-4e80-abde-8243ded8d91f
md"## Basic Data Analysis"

# ╔═╡ 591c0385-44c0-44c0-bc89-de7f8ff3e338
md"""
**Remark.**
The term "data" is impossibly broad, so we're going to have discussion here of simple topics confined to a simple definition of "data."
It will illustrate some of the most important concepts, though, that you are likely to be concerned with during the studies of physics.
"""

# ╔═╡ 7a83361a-bcfd-4ec9-97a3-d9c6efba7cc2
md"## Mean, variance, and standard deviation"

# ╔═╡ 94d0e8f3-3b86-46de-9c74-c31237671adc
md"""
**Remark.**
A very familiar concept that you would use to describe a set of data ``\{x_i\}`` is the **mean** or **average** of the values.

$\overline{x} = ⟨x⟩ = \frac{1}{N} \sum_{i=1}^N x_i \tag{9.7}$

The **variance** ``\sigma^2`` describes the "spread" of the values around the mean.

$\sigma^2 = ⟨(x - ⟨x⟩)^2⟩ = ⟨x^2⟩ - 2⟨x⟩⟨x⟩ + ⟨x⟩^2 = ⟨x^2⟩ - ⟨x⟩^2 \tag{9.8}$

The square root of the variance, ``\sigma``, is called the **standard deviation**.
"""

# ╔═╡ c356c94e-0c62-42d0-bb9c-5ea4aa94fb95
md"### Application to binomial, Poisson, and Gaussian distributions"

# ╔═╡ 49b06752-0c6f-4877-bb07-9d4d3cdc8517
md"## Fitting data to models"

# ╔═╡ 605afb28-df94-4b3c-a8ed-fc02c32defb6
md"### Fitting to linear models"

# ╔═╡ a224e7c1-952a-4faf-8b70-081fe0ef4cf1
md"## Random Numbers and Monte Carlo Simulations"

# ╔═╡ 02032364-4bb6-4db7-9253-d32858af063d
md"### Random number generation"

# ╔═╡ 17787c10-b3cf-4956-86c0-7c8bf71773fd
md"### Integration using Monte Carlo Techniques"

# ╔═╡ 6c2b126e-3cfd-4452-ab13-fc7960c7c1e5


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
# ╟─1e6c2bda-72eb-11ec-1564-69b9d6573fc6
# ╟─b700e763-b702-44c1-8631-5ad30eacebc4
# ╟─d224cade-8d3f-4224-b6ce-7334e11a2133
# ╟─de648e61-626f-491f-8239-977d625848cb
# ╟─67d7b67d-1299-4c49-af61-5bc0dae57d97
# ╟─351646a9-c172-40fd-9173-8bf9bf38498a
# ╟─d50a2435-6e9f-4296-82a3-0641d0d4fd1e
# ╟─d900edcd-decb-4c15-91ef-dcf18788ea16
# ╟─e8906718-272f-4cd3-bd63-e99e97955a85
# ╟─e1dedc72-ab3e-43f1-885e-75a08bb1f402
# ╟─0d54abd8-dc15-4a46-ac5e-d0fff6b18df7
# ╟─a026c7fa-f960-43a9-96a7-37cb65450096
# ╟─be7bc6d7-d6fc-4c73-9692-0b7bb1a86052
# ╟─3bd94b4c-bf5f-4ba5-ae54-bbf6b880c66e
# ╟─b8fec05a-8431-4a14-8ed8-1e59365f50db
# ╟─f6d11d5d-3d92-4e2e-adc1-93b5f0c24c2a
# ╟─73a66dea-f2d8-4118-b93e-49751bbc7013
# ╟─9e2e73e5-11f7-4b1f-82e8-f9ac1f5d82fe
# ╟─7c011c06-8508-4c3b-a2f0-aabb6688b532
# ╟─16eb6ecb-a28e-4efc-bae6-14337cb5bfa1
# ╟─d8153c23-06d5-4dc5-8f7f-6e538e2d0729
# ╟─4045310a-2e32-4806-a527-16f73ad64dac
# ╟─0f5c4782-2038-49bc-ada2-1cfa4635d683
# ╟─14aa2d2c-1523-48de-87bb-6301ddf0ad36
# ╟─eb9a5d60-8738-4254-ac26-55fc96c203b0
# ╟─2abbc855-ed35-477d-acc9-9c2ff49a00ce
# ╟─2299e0e9-259d-451f-8fdb-c8ae82079035
# ╟─6daf6564-4aa1-4917-b59e-0cd66e10135c
# ╟─87d5d78f-b664-44d4-99ba-68abf3ce7f8e
# ╟─ae68b319-6acd-48f2-a282-a828cee21c57
# ╟─ff4cb6e3-ea49-46ce-b924-37ee06502185
# ╟─b638e313-5956-438c-b180-1693fd1b621a
# ╟─35a1044f-887e-4b75-a8ee-0f00d09f04bf
# ╟─54d59cb1-839f-4b7c-9de8-1df92bf19528
# ╟─c606124c-17eb-4ba3-a1d4-9b98172f149f
# ╟─08b46001-4ed6-4bee-8349-7dfe055ff58f
# ╟─aa4b718c-0dcc-42c3-8551-79ce3bcb6c48
# ╟─4acb3d00-90f9-4865-8239-ceca7755023b
# ╟─c8767e80-569a-4b78-884f-2560bf09357f
# ╟─54d3e5e3-2399-4aa1-ae5d-05ad098a1d58
# ╟─2d8edef5-06d2-4bce-8a11-025c8dc81655
# ╟─e0063c6a-2317-44fb-aee9-015ac3860d4c
# ╟─c9b0f980-8dd3-471b-ba0b-dd8be40ea46a
# ╟─c4ffaebe-ed5d-447c-b141-7df68698909e
# ╟─37433af4-ed08-456e-8d7c-036a74228b86
# ╟─03e58624-c803-4f3f-8903-abe3ed5db7da
# ╟─4d03674c-7a74-4923-98f5-0be43ee8980d
# ╟─ef0eff47-7a60-4e05-b398-a0cfb0699dd4
# ╟─35509852-8338-41a4-8f69-8e36f3d07a85
# ╟─93707313-b526-4268-a561-a8dadd463f2a
# ╟─075cda33-287b-4ae2-a037-498be8d0ea2e
# ╟─d1a9edb3-5e1f-419d-aabb-21fb9824cfa5
# ╟─3b0c635c-4ea9-4a8c-a801-a41b25db2338
# ╟─34e0e7ce-0289-4338-8fd6-d2b500bf5dca
# ╟─27ba5925-ae93-4076-82f7-c9df0d5ad76d
# ╟─1f26c10b-6049-4fa7-b3b0-12689e5c068a
# ╟─5ae2381d-b1c1-4120-ae50-3eb3f288721e
# ╟─8f4ad251-d8aa-4562-a5da-8088f673e61b
# ╟─9c232bfd-22c8-47eb-beff-efa6ea274200
# ╟─5e887d15-dd11-4569-9f9b-6fbaa3b90673
# ╟─c9e8ed0b-83b5-413c-9dec-8d77962d4718
# ╟─e9ed916d-68de-4f35-af90-0d17792511dc
# ╟─455100c1-45ea-4ef1-8d1d-65ca56357677
# ╟─b6eed788-72e5-4536-8d39-4872bb1a0ecf
# ╟─8ca57471-89bb-4d41-931b-c6d365623599
# ╟─e69e39a8-f840-4800-9068-66fb02ed164d
# ╟─729f9b56-d252-41be-90e3-3dc544809ff2
# ╟─622d94f7-ca4a-497e-b4b4-397392386996
# ╟─330dbc7e-96db-4a63-a976-8646632aaf4b
# ╟─617ea303-a31d-4ecc-bd90-3c6c8a569b16
# ╟─3aa5c644-64dd-4d88-9a17-4891f1764b53
# ╟─1c05e75f-2911-4458-bf00-081626467264
# ╟─9f189f6e-4a42-4184-93c9-708c2369c1c9
# ╟─b0540d5e-2c71-4f9a-a1cc-086276be94fc
# ╟─c8446ca9-4424-4aa7-8d7f-39f9a748ef37
# ╟─d0034027-37f7-43f3-bae5-f30d5873577c
# ╟─81dec482-3128-4f4a-ad8e-bfb9144aa4f0
# ╟─c8a6d8b4-70ce-4bd3-af2c-1e65a3f318b3
# ╟─de92608b-17e7-43d6-aa2f-a6767c9580cb
# ╟─f681914e-0065-4329-8143-a77b67a968b9
# ╟─89e4c9c7-7e0d-458e-86cf-182e794e9a8a
# ╟─02f0b23a-6a9b-4a6a-9e0f-84b5fa66a426
# ╟─24b9fe90-ae86-42fd-ac38-8615dfb52d1a
# ╟─f2a0d0f0-fda7-4a27-9aa3-27bee01421cd
# ╟─b3436980-a4db-4aa0-8816-a255d6e8945f
# ╟─64b4f813-21c4-41c6-8347-271e6bb983e7
# ╟─54fad76a-480d-4e1d-ad85-cbcf57f778a9
# ╟─b8960d7e-628a-4431-a9c1-1882690fcb7a
# ╟─1130ca0f-f059-45e0-98ec-38aeffdecaae
# ╟─f2916fd1-3f19-4111-b618-cae497b3357e
# ╟─6f354444-725b-42ff-b98f-dae5883c64bb
# ╟─94ccd27d-91a6-4433-8219-f8604013dbcc
# ╟─f22cc881-fb3c-4cf8-97f8-b869dec46e75
# ╟─a24d76f8-4d1b-40b2-b92c-0ed281348156
# ╟─84d3827b-7c92-47f2-b6be-c968bb4aa130
# ╟─00b20e5f-4e3c-4620-9439-6541c2a6e35f
# ╟─dbbb2ae0-0c0e-4e31-8765-3499b8c63875
# ╟─52c1b3b5-4acc-4062-9b2e-afac40f1a436
# ╟─c95bdefd-755d-4fa0-ac67-d1ce853f8c36
# ╟─534e6545-d01c-4e97-a92f-38318fe35503
# ╟─165e2fc3-8be8-4545-9090-830510e0cd63
# ╟─df4ced76-69d1-4c31-9af5-575592e1cf1a
# ╟─e86b5d40-4aa1-40ad-9a8f-71bc9ef6a197
# ╟─b6e233db-6f62-4968-b00b-e347a5adfce7
# ╟─f1f57fd1-5485-4df3-bfca-607269d98edd
# ╟─d3e26925-08d8-4f17-873f-d4471fc5a1b1
# ╟─1cb95580-be89-4732-ae7c-dcaef6d62491
# ╟─25ad7342-2db2-4233-b99e-1fbf9d3d8a96
# ╟─0f19779e-a5c2-4e0f-ad72-3d449f4bc839
# ╟─7da96f65-9874-42c9-bd55-82ca3dae05d7
# ╟─fc89a445-80c2-4ead-9de4-2684b54e7288
# ╟─ba1d1f51-8c28-469a-9212-84ca96a880ec
# ╟─e06f4efb-fb1b-4d2f-927d-205c9151b7bd
# ╟─ad539f1b-5a80-4288-bc50-686b600e9283
# ╟─19075c05-2a40-4856-af21-cd6e498dfc57
# ╟─12dd9fa0-98ba-4317-af25-ab0bfc4ea418
# ╟─1c466f40-22bf-482d-9e56-ad20019407f6
# ╟─a32141a3-939e-4c8e-97ff-f3893cd8d35c
# ╟─7b61466a-897a-438f-9800-abc6970cca5e
# ╟─c8e03e6b-9bd0-41de-9b06-c5f9f65b8da2
# ╟─981ecba1-18cf-4b15-8ba8-0675453bccb3
# ╟─40f658c7-70ae-4b6c-a82a-8ea7c8504d0a
# ╟─320c4376-bbb7-4203-ba31-66ce9f05a5ff
# ╟─f7afa739-5391-404b-aa2d-cbaaaba0e629
# ╟─df3c2fdd-76e3-435a-b71d-abd1b011cef7
# ╟─699f8d0e-0e54-413a-8292-1520c74c4358
# ╟─d47d4815-2fc9-4d7f-a243-e820a0401de9
# ╟─f9303dc4-a96a-406e-a929-ebb574a27c53
# ╟─f77eb9e7-45a1-46ba-aa53-3e4b2fdfdaef
# ╟─19f534c5-45bb-4483-8b6a-15e0ae1a0202
# ╟─be8991fa-3469-4475-aaa4-8672db53d5e2
# ╟─eb7c30dd-4eea-4018-8f22-01598a927b43
# ╟─c53575b9-0a97-4363-a47d-bcd6f1797a13
# ╟─981b3620-b431-404a-8f9d-918a636741e4
# ╟─8d842048-6083-48ff-a8e8-02c9ce7c3351
# ╟─645c03d5-fab0-424b-9add-5156ede0ddf9
# ╟─436a3e0a-2f02-43f3-a9f0-7fec84ebb740
# ╟─c36f4c56-dd05-4f9a-b99b-7bfed5801e85
# ╟─49a2eca0-cffd-4743-a738-e26b20e25bd1
# ╟─68810c03-84b6-4772-9766-1c99aea5bac0
# ╟─215b9f22-f908-4baa-a72a-65685a50bf56
# ╟─a5128af1-2ce4-44b1-aada-8549fb12cd3c
# ╟─fca30ea8-0d37-4d78-81e4-f2dd21d91b35
# ╟─4b15e9ee-68df-4a46-8ee3-c3307df3961f
# ╟─016b796f-c058-4d6d-923e-0ca1188ade6d
# ╟─9fdbfb34-cd4e-46d2-8575-ca96844afb37
# ╟─af883028-2c74-4f09-ab17-ce06a59947d7
# ╟─3464f348-9a94-41aa-bf41-52346227c008
# ╟─cbb83d37-ac34-439d-bf37-9946c181859d
# ╟─97dd6594-37e8-48b5-80d6-a7e5e0ac60b1
# ╟─41807afb-8d0c-4e76-9468-50773046ffee
# ╟─bcf228fd-faf9-4433-b92b-74ea0942972b
# ╟─6d020c3b-75c0-47f0-9ad3-8015301c85dc
# ╟─833729ec-7316-465d-bc12-8109df740f3f
# ╟─e9f92209-2bcf-4039-bd82-75946afa8695
# ╟─f5a89121-d543-49e1-aca3-017149453294
# ╟─b8e91d8b-3128-4863-90b1-d8e667c1ab2a
# ╟─55f2db9d-06eb-4bc3-93fb-f3299d269875
# ╟─19df86df-58ac-4955-ac11-6fba29adcc7d
# ╟─79b789a2-91e1-4b0d-ae64-ec003dd5704c
# ╟─289631d3-8856-4f4f-b5d7-a69f42163097
# ╟─8f7f7a52-48a5-4d06-843d-17afdd2a2022
# ╟─dc28ca48-f0dd-447d-a001-b6703273c90a
# ╟─045e8f5a-4948-4deb-aac1-d67f65ecf658
# ╟─890d4c3e-8026-4c30-8ef1-11c4891039b7
# ╟─6a29d82e-9564-4978-bd26-1608ddd09c25
# ╟─630e67a1-93b6-46cf-916a-1ee43b4a7d6a
# ╟─fa8970f0-8891-4eb3-be5e-41887f418ad0
# ╟─7980e46c-7870-4c26-a48b-bc5d14334b48
# ╟─8c140014-7d70-462f-87dc-e47fbf2947b5
# ╟─52a0a8c2-ba44-4163-85ff-af2e60189bd4
# ╟─67f13c17-417e-4799-9922-d9494eb68e26
# ╟─9e9ec1eb-a094-40bf-b258-ef73be6941c2
# ╟─bbb0be0c-2af1-4bb0-84c6-90155f5764a5
# ╟─ba761680-fda7-41b0-a8c8-7779c2bf912a
# ╟─a84f61d7-af37-4d18-8c5a-a81533505736
# ╟─3e96c1f0-305a-49ef-825b-391744238159
# ╟─47fc994d-8b4b-4c20-ba1e-e1f1d588db54
# ╟─6b99c81f-468b-455a-aeb6-116536f3afec
# ╟─19dc5a87-b2cb-405f-ba65-362525e205eb
# ╟─b3dfcce8-829f-423b-8f71-063b80dc6aba
# ╟─b5e3a8a8-da9b-4269-97ff-4cf1023e9482
# ╟─d1bd6474-a7fa-4ff1-aea7-a35da2fbde01
# ╟─4f30aa53-aecc-40b7-92d9-8a32723db55a
# ╟─a702a457-e2f9-4b86-9444-8826750e8a05
# ╟─b556b6bc-8625-4479-9e49-da0bd8b19080
# ╟─e0104f91-aa4e-40a7-a7ff-96cdfff26642
# ╟─8ea64597-036c-4fef-a85e-a0e1e80d1777
# ╟─8ece80ff-0bd6-4234-9026-94ec66450b47
# ╟─51309b78-8d44-4dbb-806b-51b4a5077f21
# ╟─ed60797e-dfaa-434d-ba10-952ad330d0fb
# ╟─49be53c1-2a13-41cf-b2e6-f5426ccef4f7
# ╟─cd15d4d6-630d-417f-9ae4-f04ca3f046f9
# ╟─5f5eabae-a354-4063-9eb2-1117facf1e19
# ╟─bf8faaee-07f0-4e69-a919-fc9d164ed84e
# ╟─cd1d3d2f-ebd4-46ce-85b8-65fb82dec8b2
# ╟─64c52950-ffeb-4b5f-bd7e-8c8846092f27
# ╟─b02a8baf-44b2-495e-a81b-5389191936e4
# ╟─6fdcdbdd-355a-4a39-88ae-b5f903fe3050
# ╟─60d48072-afb8-499e-bc6b-8eb15a92b084
# ╟─256970c4-a220-4686-aa74-c6fae52f3516
# ╟─aacbc94e-5943-4cf7-9d0b-8986f0f433c9
# ╟─273fff7b-586a-4ff5-97a8-33e43f01c49b
# ╟─5477d0b3-d887-49a5-bdf8-b6cf41cd9a8a
# ╟─3110c102-7039-4fee-a21e-a4e8103a831d
# ╟─1666d035-af7b-4b16-b75d-a68477f9c30b
# ╟─c8644af2-5617-48c8-a0ca-4cceae9e5db6
# ╟─1a243b9e-6a35-435d-a8cd-88de30bc258a
# ╟─f666d9f7-750a-402f-858d-857908d03f0b
# ╟─4760c32b-1083-46cf-9f02-36bd59258213
# ╟─2da1d70c-1741-41bb-be0d-f5bd6f7feac7
# ╟─a2649f88-c74e-4664-bdaa-4cb5f36759b4
# ╟─347bade3-b367-4ce5-b5d8-7441983c1e33
# ╟─c261a91b-63e4-438b-bf3c-edd1f6518125
# ╟─f556fe81-5408-4204-a214-0b771b3faa20
# ╟─36255014-ce33-4dbd-9a41-f618635d9397
# ╟─d7fab116-219b-45d5-aa9a-eeb553933aff
# ╟─0a80a53d-bbcb-4ffb-9215-8da07c53a0fe
# ╟─eb4df54e-d3fb-47d7-980a-40dd811d3d28
# ╟─8952a529-3364-4367-b84b-a3a7cc68a338
# ╟─48192e5d-a668-4598-8778-a5c9789fa021
# ╟─6607f701-0281-430f-887f-8932ea0b9359
# ╟─429cf533-be28-4472-8e38-3e2b1fb92801
# ╟─59ba803c-31ab-450c-bf26-c2e438a55408
# ╟─dff4adf3-52f4-4596-ba49-3ff4d3a1f929
# ╟─d4bfd821-d20f-4726-86ab-4417fb4c2b65
# ╟─ad8ee374-3e87-4d36-85ed-58a7e42a4e1f
# ╟─fecba165-806a-4a2a-afac-be46f44ed527
# ╟─5223a204-c14a-424e-9c02-a253510f876e
# ╟─d23bb769-74f1-4f45-be3f-8ea01d1f7c6a
# ╟─d4d3392e-065c-4a05-9a3c-ed00de75dc70
# ╟─01cc8bc6-c04c-429e-871a-7a1fd02ff92b
# ╟─1aeca626-b1ee-4b8c-bae3-ce44e348d1de
# ╟─f38d0adc-81b7-45bf-8028-f4d7ec95e329
# ╟─1214a0ef-6990-43b6-9b59-62a6536dc28b
# ╟─0c5d06e6-2b29-4f84-8987-0d372a662e58
# ╟─7f56eb00-dfdf-4247-8a6e-45916a1cb9d7
# ╟─04a4095c-c065-4529-b0e7-32fbe5eef42e
# ╟─da89f317-09f7-4a64-9a04-aa95631da564
# ╟─16f3ff9c-768b-4894-b6f4-554e1b85f06b
# ╟─6fe6c69f-46ab-41bb-8adb-bc5154882a60
# ╟─b51b0f2d-3a9d-4937-9ecd-ead5b2dd6c38
# ╟─1c86656e-2a92-445d-a034-c831f4d03c74
# ╟─b15a9319-9649-415b-93e7-efd52d098877
# ╟─fd9862bc-f651-4de1-8f61-23a40f28037e
# ╟─5d4d12a7-2c73-4015-9a45-a28c105554a2
# ╟─21ba4c2a-e573-40ee-b60f-c839022c8c38
# ╟─896e956c-1bd6-4486-b81b-b00e75340fd0
# ╟─bd87d77b-5add-4345-97b2-9f02f74e8bbb
# ╟─66ea1fd8-95a5-41fe-96aa-42a93e7f237b
# ╟─244867a2-af26-4ba4-b49e-0056a179b843
# ╟─8380781d-4350-4b55-ae0e-cc1e80231c9f
# ╟─1d1c54c5-fdf3-480d-9b72-258765656050
# ╟─42564488-7200-4ee5-8aac-2b7b2c2839a1
# ╟─14e7177f-9c6a-43ac-9906-f155bddbfd8b
# ╟─09059c4e-c3bc-46d5-9a5c-4da76261bc47
# ╟─65c0f71d-3750-431e-9e39-c39309b9f46b
# ╟─5cd4d434-d34b-4e59-bbbe-2ecee22c87ec
# ╟─885dc494-ece9-40ff-a4dc-842f8b685238
# ╟─c098fa7c-05d5-497b-bf78-49a646d8a02e
# ╟─c8378522-a04f-4765-8a81-cb3050dd2143
# ╟─81c3c990-04d5-469e-b8e8-f9642ffb793b
# ╟─112f1e6d-d534-44d7-b3f2-f921d088ef2a
# ╟─a43b9a38-1092-469e-8f5a-01bbdfdcdaa7
# ╟─0a53179b-a47c-4907-8902-8b493fdbeaab
# ╟─d0e61bfb-49e5-4347-a812-160c41e70ac1
# ╟─2dce22a8-950f-4d40-a208-8939e98d453a
# ╟─b99c9a6b-f994-489a-bbf5-8c3ea180aa76
# ╟─985e1b18-ed60-491c-aeec-5ea5cdf0d0bf
# ╟─e3edd155-de00-4b95-aca5-8d2d2a12f996
# ╟─cc3e0528-472e-4cfe-8bc6-f1eb18a4fe9d
# ╟─63e0b2ac-c7e2-4fa5-b3f2-1d0a6bbca7eb
# ╟─50ad9119-27f2-4370-9e55-e7f6b181cfc5
# ╟─21bb474b-f72b-4c4e-8430-2fdd506b9324
# ╟─c13beece-0297-44eb-8711-5d7da5d16f28
# ╟─c6f8db0b-6128-455b-89d0-caf367664b3a
# ╟─eea8ea71-ad8a-441a-b925-3039e196e74d
# ╟─31e0aa5d-fa0d-4585-af2d-918c9d7040e0
# ╟─74ef78df-7bf0-4157-bf79-6cba2526ef31
# ╟─c6e39f41-1889-439c-b2aa-16323e1a457c
# ╟─7647f7ab-7d7f-4526-bc63-caf975d1140e
# ╟─af82e267-9e49-42a4-ae2d-fa226d9e2d0a
# ╟─cece3686-ecba-4db4-a7bf-937eb66b6cd6
# ╟─6aa98677-797a-45dc-a57f-e38cffd9bc58
# ╟─7cfde772-0ae2-4757-a090-e9de718afea1
# ╟─d90442eb-1b3f-4281-b104-e1faf475efb6
# ╟─0e047518-4fb6-42dc-b33a-12ec0759ab59
# ╟─5b38d25d-a47f-45bc-b53c-7cd3b078460b
# ╟─0e404b1e-e234-4b09-b5e1-5224e6cf3b76
# ╟─f0a45194-2763-4a52-9ead-6cfa0b3454ce
# ╟─8492ba2e-882c-42c1-b74d-8ca7b0259c52
# ╟─b07cac7b-bc3e-4b0c-b0c4-8dbd74886697
# ╟─147b515f-bc84-4ecb-bf15-5d0486399373
# ╟─a34b9d07-c482-4fa6-9876-3949f7cce739
# ╟─de64416a-c691-49ab-8046-73e60d3e6067
# ╟─f36c0388-e891-4394-b057-6bc76fd7b853
# ╟─f811aebd-da8f-4d83-b6a1-8bc21374178f
# ╟─1c615e5e-4b0a-4309-834a-380109a7d45b
# ╟─2293864c-ad8e-4d99-9717-2440fc7ccaa2
# ╟─2127a874-cf22-42bf-a5ff-c0cf8bbaffe1
# ╟─ec166085-8ccc-4f15-9044-30f8a4ce1264
# ╟─579d2f90-8789-4b36-927a-beb3368039cd
# ╟─a08ea87e-4121-446c-a6be-0913b6c6b85c
# ╟─d3f2b1c5-3682-4adc-a35d-6c170582e575
# ╟─d2d0c22d-385a-4fc6-8eb3-64076175d764
# ╟─2f22e578-0630-437f-b9ef-32bc817a61c5
# ╟─9a0b576f-d651-4530-a131-22d9367bf391
# ╟─524d8135-348e-448c-821d-31b1f6a53162
# ╟─ac293e65-d961-462c-93bf-c42f48c6dddd
# ╟─626e2c17-0581-48d1-afda-55530c8c82d8
# ╟─0e2bdebd-d60c-40d8-b844-33effac3cce9
# ╟─2ed347e6-4755-40c6-8990-df90e04d760e
# ╟─84456432-c830-4565-a622-e67b7e31ff4e
# ╟─a59f49be-938e-455a-b572-43c587ead3ff
# ╟─c87ff4d1-2d4d-4cc3-954d-e2330208eae0
# ╟─587aa7cd-a629-4116-8d95-e0541ddd9738
# ╟─1bfc333a-467f-4195-aa6b-ef2cd5213c64
# ╟─af132e8f-f0b7-4d17-a774-1ccd824f62e0
# ╟─061a1458-29ad-4f79-92f5-7da70ab23498
# ╟─518913ae-e69b-4958-976c-bcc04a128957
# ╟─b62f1d2d-1528-4614-a5cb-54e3c4b4d4e1
# ╟─afc92633-ccf6-476e-906b-5102b6ffacc3
# ╟─a139657d-d668-4d43-a427-6b10d47f6fea
# ╟─0b6942bc-32b0-4487-b548-7ce784073190
# ╟─0fd4fdb8-601f-45bd-bfe8-e94c3df152b1
# ╟─c163f2d6-3661-485e-a93d-d7e2f64c3525
# ╟─735dbdf7-57a5-45bd-a4ab-e3efd1642e79
# ╟─edbffb1d-002a-47ad-b889-af649cbf8432
# ╟─b62d077e-2a28-42ac-9145-2e619b9b453c
# ╟─bca4c220-6b9d-4d58-9988-b352c614fb93
# ╟─72dcaf9e-aff3-44af-9f4d-e6b5bf5bcf36
# ╟─de838267-81ce-4742-a0ac-ee6099ea0129
# ╟─ec7c34c8-e5b5-4ed1-a0b9-f3cc72fd4d6c
# ╟─1c37664b-8f95-4605-905e-a5a596b43b5b
# ╟─05be8fc5-5475-4073-b889-301d05e3b5b9
# ╟─36b9b8b1-1fff-4ccd-898b-04cc9c58dee6
# ╟─27bf8152-77f2-4a6e-972f-34acc9a714cd
# ╟─34e65b0d-1cb8-4423-8fda-68e5166e2e3c
# ╟─27e2f566-0b8e-4d7d-885f-93799ab3fe6d
# ╟─94f9b71a-9bc6-43c2-a99a-610c03b51bd8
# ╟─b5392053-64c8-4e3c-aba6-56829b01467d
# ╟─2d083f7a-7a5e-47aa-b3a7-e5ec488a9b0d
# ╟─ee18f1f0-fdea-4bbf-90b2-a0efcaf4075d
# ╟─10d03a95-67d0-49f1-9561-4e933a6901df
# ╟─933a156e-460a-4720-add2-6dbe8fa32786
# ╟─53976c43-104a-4d4b-a7e8-15845dd41d47
# ╟─ee0037a5-4b1b-41bb-8be9-f9831e8abb09
# ╟─edc60cab-fb00-45fb-9761-cc75e243d74d
# ╟─26ee3fc0-24f2-4e2e-801d-3a0511003a55
# ╟─b06b4c4d-d3ac-4509-9eb5-0f51609b4041
# ╟─ea445068-fba3-4cad-b7af-fd69f4e17092
# ╟─1bf354cd-bca3-4e93-a3a0-8c631122d257
# ╟─f4af38bc-2375-4ea6-8d42-8b60607e96b6
# ╟─f7ec00ef-9da0-4eb8-98e6-188dec88f6b5
# ╟─8bb4f824-9a0d-44df-8d75-19403165e827
# ╟─62ae317a-445b-4c1e-b4e3-42517201c10f
# ╟─5617f1ea-fc4d-42c0-b175-7702a2cd5f43
# ╟─a5512102-f6bf-4531-abd0-f61582b4d11f
# ╟─0ab4c01d-2f18-4acb-bb76-dc626ecd4c56
# ╟─efb36234-c2c5-4d0f-9aad-045527dc1585
# ╟─3560c00a-e65d-4058-ade7-795f46cbb185
# ╟─9017dc9c-bb73-45b0-ba63-d3f8f7d30025
# ╟─7dff5318-497d-4b18-9e2e-753819386983
# ╟─1d631d43-0bda-4c99-aff6-b03b69f68eca
# ╟─909a23ee-0005-4966-af11-2011d7089e59
# ╟─201340ea-d4be-4db7-831d-c0fa786d5a7a
# ╟─32349015-8e80-4bf8-ae2b-30af8fee2971
# ╟─5f71ff55-0633-4e12-9ea3-beeaf6cf3986
# ╟─dbed838f-5e77-4289-93fb-4d1c20145f02
# ╟─45bc5c3f-edb3-44ef-bd56-832f0b8fb3b2
# ╟─a4455d36-e6a4-4b4a-b8d1-87de4c5c2755
# ╟─52709b64-51c3-4493-955f-fbfa218562da
# ╟─dda653b9-0074-4486-9b82-d0ff2fc165cb
# ╟─6fb28410-104a-4705-9152-38a2a54cbe8b
# ╟─e56ce3d2-ae0e-4ba0-a948-9e42b1db0e65
# ╟─03a2834e-f172-45cb-8b3f-2f38cadef3c8
# ╟─9eff0b57-b86c-44c6-b817-f9b233caa7c6
# ╟─96563cc7-3dfb-4127-bc74-faecdb0bd91d
# ╟─227a4cd2-802c-4581-bc69-ffc60812ed4b
# ╟─199e8607-24a4-4a4b-b0b2-c895cae50fed
# ╟─e16bf7ea-54ad-46cd-8f33-1d4851a2dc55
# ╟─6143b86a-102a-47df-8bc9-8f6eb07eabc9
# ╟─5ef354f0-eec0-42d8-9b93-f73ab0190e0e
# ╟─2a840fbc-b37c-4826-89e4-201c2290ef4d
# ╟─a597e778-1500-4e1f-a47b-71bd2ea91ace
# ╟─d44dd13a-8d9a-4299-8f07-62ad97ecf25d
# ╟─6e33f8e6-2b44-45a9-a63e-fd2f1b12390c
# ╟─66d8e299-b019-4283-b609-32c0e4d182bc
# ╟─7ee747af-eeb3-4e2f-b70a-451fb7c5cd5b
# ╟─558b780f-a52e-4522-b873-4aa7b0dcb8c6
# ╟─9a66be7a-0ce5-4e44-bf7a-4ac35f4bd961
# ╟─6848fb3d-da72-4473-b1e2-27a7960fadc8
# ╟─9116f7ff-48e8-4c76-99d8-63f10514cc92
# ╟─cd716530-dacb-4549-a8a6-a41fe5418b72
# ╟─d19f4c93-7ea6-4f58-b30e-e700a0d56676
# ╟─2dc624a8-53d5-40c2-9eff-df6d48bd3c50
# ╟─9106ee21-f2f9-4127-a173-a2c1d59afbec
# ╟─0aefb040-cb0e-4b1b-a3e2-2553d523ebfb
# ╟─ae5b736e-7d80-4e44-922d-bb1180aa9ad7
# ╟─44662cd0-4bd8-43be-8630-2e0aed2bcfcb
# ╟─bc93ff54-b141-44ae-98b1-8fa104f75401
# ╟─24275a3e-1086-41e8-855a-295f24426938
# ╟─be1fe96c-e305-4c9b-bc32-f588b064ad33
# ╟─8e28af83-d886-4036-9474-d9e4ba2ee693
# ╟─68e9990a-b887-45b1-a616-06ec9ae4b661
# ╟─00f2b295-8878-4a18-8aa9-c581d6f06139
# ╟─fe30458f-2a8d-4a92-8643-f680cbfbc5b3
# ╟─9112944d-9c7b-41ae-9d8a-2926c93f9ee3
# ╟─e0a9f2d8-1f92-4e02-9ab2-2f532e10514b
# ╟─94f4cfb2-4038-4162-9117-9fa783f4614d
# ╟─35623418-d363-4213-a923-d20d800a82a7
# ╟─9acfc902-4e99-41bb-a060-1b9db8d6fa28
# ╟─05485924-9ef5-4f3b-b37b-78a0925dcb93
# ╟─30ad1273-a0ec-4208-a0ca-128b255a3ed3
# ╟─3e09066a-aa5f-47f8-9d63-9acef50a0ffa
# ╟─c81d441e-da08-4861-98e0-237d269b8df3
# ╟─977c9aa4-9156-484e-9294-857be54fe9fc
# ╟─fa539220-9621-4812-87cd-9cb103be3218
# ╟─74e34bc1-1829-4a37-b94e-328ddece72b4
# ╟─fb372af7-9d88-4c20-af29-f94b92ae497c
# ╟─79decf86-e175-4ca2-897c-6f9c0d4b392e
# ╟─2367fe2b-b961-4a8a-bd4c-c9d671298170
# ╟─0bccc559-aace-49cd-8168-11596d891d70
# ╟─868a47b6-17e1-4589-9d64-0b06f6211ace
# ╟─08ac82f9-e582-4a01-8999-3b2138942d39
# ╟─159d05f1-e447-424b-8842-a76dd3b2d05a
# ╟─a9049cb0-507d-47ec-9089-68764bfd0dc3
# ╟─d6350877-232a-4282-b74f-b169b1352e83
# ╟─14fe32b3-6f6e-4d3a-a323-c7f75ea67f7d
# ╟─86c4bd63-de59-4097-818a-f095b7c32074
# ╟─c529a6d2-834c-460d-a322-29531b301b85
# ╟─18ce2fa7-e79c-499a-acc3-5c61b5b3e1cb
# ╟─4c60e7a0-3545-4d27-8186-f7a0bbbcf3d6
# ╟─3abec054-a3c6-48d8-a33b-618099701b3d
# ╟─67830e7a-39b6-4b83-8a57-1541e7fce926
# ╟─c6c1361f-e633-43bf-8479-ee6df14725ce
# ╟─c14959bd-c77a-4423-bc02-e02510be4868
# ╟─de808fca-1092-4cf1-998b-149b91cc9f03
# ╟─b6b30d14-64e5-4878-aa8d-1a808a33e6c8
# ╟─10c32f5b-5ebb-45c8-8aed-1178ee2c4527
# ╟─879b2464-34e3-44da-b9a9-5abfd5777bbb
# ╟─4bfae578-9903-40c4-b100-471f5267054b
# ╟─26ca3cbe-9e33-4858-af3b-dfea3aed5af1
# ╟─8d768937-e135-4e80-abde-8243ded8d91f
# ╟─591c0385-44c0-44c0-bc89-de7f8ff3e338
# ╟─7a83361a-bcfd-4ec9-97a3-d9c6efba7cc2
# ╟─94d0e8f3-3b86-46de-9c74-c31237671adc
# ╟─c356c94e-0c62-42d0-bb9c-5ea4aa94fb95
# ╟─49b06752-0c6f-4877-bb07-9d4d3cdc8517
# ╟─605afb28-df94-4b3c-a8ed-fc02c32defb6
# ╟─a224e7c1-952a-4faf-8b70-081fe0ef4cf1
# ╟─02032364-4bb6-4db7-9253-d32858af063d
# ╟─17787c10-b3cf-4956-86c0-7c8bf71773fd
# ╠═6c2b126e-3cfd-4452-ab13-fc7960c7c1e5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
