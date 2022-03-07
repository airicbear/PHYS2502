### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 8c51843c-9407-11ec-037a-0547f170ed7c
begin
	using PlutoUI
md"""
# Homework 6

Eric Nguyen
"""
end

# ╔═╡ 84fb9a5e-2ff5-44cf-b6d4-d483dd0ae5c1
md"""
### Problem 1

**(a).**
The solutions for ``(\alpha - 1)^2 > 4 \beta^2`` are ``y_1(x) = c_1 x^{r_1}`` and ``y_2(x) = c_2 x^{r_2}`` where

$r_1 = \frac{-(\alpha - 1) + \sqrt{(\alpha - 1)^2 - 4 \beta^2}}{2} \quad\text{ and }\quad r_2 = \frac{-(\alpha - 1) - \sqrt{(\alpha - 1)^2 - 4 \beta^2}}{2}$

The Wronskian of the two solutions gives us

$\begin{align*}
W[y_1(x), y_2(x)] &= \begin{vmatrix} y_1 & y_2 \\ y_1' & y_2' \end{vmatrix} \\
&= y_1(x) y_2'(x) - y_2(x) y_1'(x) \\
&= c_1 x^{r_1} ⋅ \frac{d}{dx} (c_2 x^{r_2}) - c_2 x^{r_2} ⋅ \frac{d}{dx} (c_1 x^{r_1}) \\
&= c_1 x^{r_1} ⋅ (r_2 c_2 x^{r_2 - 1}) - c_2 x^{r_2} ⋅ (c_1 r_1 x^{r_1 - 1}) \\

&= c_1 c_2 (r_2 x^{r_1} x^{r_2 - 1}) - c_1 c_2 (r_1 x^{r_2} x^{r_1 - 1}) \\
&= c_1 c_2 x^{r_1 + r_2 - 1} r_2 - c_1 c_2 x^{r_1 + r_2 - 1} r_1 \\
&= c_1 c_2 x^{r_1 + r_2 - 1} (r_2 - r_1)
\end{align*}$

Write ``r_1 + r_2`` and ``r_2 - r_1`` in terms of ``\alpha`` and ``\beta``.

$\begin{align*}
r_1 + r_2 &= \frac{\left[-(\alpha - 1) + \sqrt{(\alpha - 1)^2 - 4 \beta^2}\right] + \left[-(\alpha - 1) - \sqrt{(\alpha - 1)^2 - 4 \beta^2}\right]}{2} \\
&= \frac{-2(\alpha - 1)}{2} \\
&= 1 - \alpha
\end{align*}$

$\begin{align*}
r_2 - r_1 &= \frac{\left[-(\alpha - 1) - \sqrt{(\alpha - 1)^2 - 4 \beta^2}\right] - \left[-(\alpha - 1) + \sqrt{(\alpha - 1)^2 - 4 \beta^2}\right]}{2} \\
&= \frac{-2\sqrt{(\alpha - 1)^2 - 4 \beta^2}}{2} \\
&= -\sqrt{(\alpha - 1)^2 - 4 \beta^2}
\end{align*}$

$(\alpha - 1)^2 > 4 \beta^2 \implies r_2 - r_1 = -\sqrt{(\alpha - 1)^2 - 4 \beta^2} ≠ 0$

Substituting into the expression for the Wronskian, we get

$\begin{align*}
W[y_1(x), y_(x)] &= c_1 c_2 x^{(1 - \alpha) - 1} \left[-\sqrt{(\alpha - 1)^2 - 4 \beta^2}\right] \\
&= -c_1 c_2 x^{-\alpha} \sqrt{(\alpha - 1)^2 - 4 \beta^2} \\
&≠ 0 \implies \text{Linear independence}
\end{align*}$
"""

# ╔═╡ ea5236fd-9c69-4ffc-a73c-9f2b336f5444
md"""
**(b).**
For the case ``(\alpha - 1)^2 = 4 \beta^2`` then the quadratic equation only gives one solution.
Try

$y(x) = v(x) x^{r}$

$y' = v' x^r + rx^{r - 1} v$

$\begin{align*}
y'' &= v'' x^r + r x^{r - 1} v' + rx^{r - 1} v' + r(r - 1) x^{r - 2} v \\
&= x^r v'' + 2r x^{r - 1} v' + r(r - 1) x^{r - 2} v \\
&= v'' + 2r x^{-1} v' + r(r - 1) x^{-2} v \\
\end{align*}$

Find the homogeneous solution of ``v`` using the ansatz ``v = x^{\alpha}`` we get

$\begin{align*}
v'' + 2r x^{-1} v' + r(r - 1) x^{-2} v &= 0 \\
\left[\alpha(\alpha - 1) x^{\alpha - 2}\right] + 2r x^{-1} \left[\alpha x^{\alpha - 1}\right] + r(r - 1) x^{-2} [x^{\alpha}] &= 0 \\
\alpha^2 x^{\alpha - 2} - \alpha x^{\alpha - 2} + 2r \alpha x^{\alpha - 2} + r^2 x^{\alpha - 2} - r x^{\alpha - 2} &= 0 \\
\alpha^2 - \alpha + 2r \alpha + r^2 - r &= 0 \\
\alpha^2 + (2r - 1) \alpha + r^2 - r &= 0
\end{align*}$

$\begin{align*}
\alpha &= \frac{1 - 2r ± \sqrt{(2r - 1)^2 - 4(r^2 - r)}}{2} \\
&= \frac{1 - 2r ± \sqrt{4r^2 - 4r + 1 - 4r^2 + 4r}}{2} \\
&= \frac{1 - 2r ± 1}{2} \\
&= \frac{-2r}{2} = -r \quad\text{ or }\quad \frac{2 - 2r}{2} = 1 - r
\end{align*}$

$\alpha = -r \quad\text{ or }\quad \alpha = 1 - r$

So,

$v(x) = c_1 x^{-r} + c_2 x^{1 - r}$

which implies that the general solution to the differential equation is

$y(x) = (c_1 x^{-r} + c_2 x^{1 - r}) x^r = c_1 + c_2 x$

where

$y_1(x) = c_1 x^{-r} \qquad\text{and}\qquad y_2(x) = c_2 x^{1 - r}$

The Wronskian of the two solutions is

$\begin{align*}
W[y_1(x),y_2(x)] &= \begin{vmatrix} y_1 & y_2 \\ y_1' & y_2' \end{vmatrix} \\
&= y_1(x) y_2'(x) - y_2(x) y_1'(x) \\
&= c_1 x^{-r} (1 - r) c_2 x^{-r} - c_2 x^{1 - r} (-r) c_1 x^{-r - 1} \\
&= c_1 c_2 x^{-2r} (1 - r) + c_1 c_2 x^{-2r} r \\
&= c_1 c_2 x^{-2r} \left[(1 - r) + r\right] \\
&= c_1 c_2 x^{-2r} \\
&= c_1 c_2 x^{-2 \left[\frac{-(\alpha - 1)}{2}\right]} \\
&= c_1 c_2 x^{\alpha - 1} \\
&≠ 0 \implies \text{Linear independence for } x > 0
\end{align*}$
"""

# ╔═╡ e2708eda-5707-4c8f-a9b8-74929998d37c
md"""
### Problem 2

The Bessel function of the integer order ``m`` is defined as

$J_m(x) = \sum_{k = 0}^∞ \frac{(-1)^k}{k! (m + k)!} \left(\frac{x}{2}\right)^{m + 2k}$

We can then find the Bessel function of the integer order ``-m``, using the ``\Gamma``-Function to interpret ``n!`` for ``n < 0``.

$\begin{align*}
J_{-m}(x) &= \sum_{k = 0}^∞ \frac{(-1)^k}{k! (k - m)!} \left(\frac{x}{2}\right)^{2k - m} \\
&= \sum_{k = m}^∞ \frac{(-1)^{k}}{\Gamma(k + 1) \Gamma(-m + k + 1)} \left(\frac{x}{2}\right)^{2k - m} \\
&= \sum_{k = 0}^∞ \frac{(-1)^{k+m}}{\Gamma(k + m + 1) \Gamma(-m + k + m + 1)} \left(\frac{x}{2}\right)^{2(k + m) - m} \\
&= \left(\frac{x}{2}\right)^{-m} \sum_{k = 0}^∞ \frac{(-1)^{k+m}}{\Gamma(k + m + 1) \Gamma(k + 1)} \left(\frac{x}{2}\right)^{2k + 2m} \\
&= \left(\frac{x}{2}\right)^{-m} \left(\frac{x}{2}\right)^{m} \sum_{k = 0}^∞ \frac{(-1)^{k}(-1)^m}{\Gamma(k + m + 1) \Gamma(k + 1)} \left(\frac{x}{2}\right)^{2k+m} \\
&= (-1)^m \sum_{k = 0}^∞ \frac{(-1)^{k}(-1)^m}{\Gamma(k + m + 1) \Gamma(k + 1)} \left(\frac{x}{2}\right)^{2k+m} \\
&= (-1)^m \sum_{k = 0}^∞ \frac{(-1)^{k}}{(k + m)! k!} \left(\frac{x}{2}\right)^{2k+m} \\
&= (-1)^m J_m(x)
\end{align*}$

This means that

$y(x) = c_1 J_m(x) + c_2 J_{-m}(x)$

cannot be a general solution to Bessel's equation for ``m ∈ ℤ`` because the Gamma function is undefined for ``-m``.
"""

# ╔═╡ 6b011578-0d89-49dc-8130-886a6c9518b2
md"""
### Problem 3

$\begin{align*}
j_0(x) &= \frac{\sin{x}}{x} \\
j_0'(x) &= \frac{x \cos{x} - \sin{x}}{x^2} \\
j_0''(x) &= \frac{x^2 (-x \sin{x}) - (x \cos{x} - \sin{x}) ⋅ 2x}{x^4} \\
&= \frac{-x^3 \sin{x} - 2x^2 \cos{x} + 2x \sin{x}}{x^4} \\
&= \frac{-x^2 \sin{x} - 2x \cos{x} + 2 \sin{x}}{x^3} \\
\end{align*}$

$\begin{align*}
R(r) &= j_0(kr) = \frac{\sin{kr}}{kr} \\
R'(r) &= j_0'(kr) = \frac{kr \cos{kr} - \sin{kr}}{k^2 r^2} \\
R''(r) &= j_0''(kr) = \frac{-k^2 r^2 \sin{kr} - 2kr \cos{kr} + 2 \sin{kr}}{k^3 r^3} \\
\end{align*}$

$\begin{align*}
k^2 r^2 R(r) &= kr \sin{kr} \\
2r R'(r) &= \frac{2kr \cos{kr} - \sin{kr}}{k^2 r} \\
r^2 R''(r) &= \frac{-k^2 r^2 \sin{kr} - 2kr \cos{kr} + 2 \sin{kr}}{k^3 r} \\
\end{align*}$

It doesn't work unless I multiply the terms by ``k^2, k, 1`` respectively...

$\begin{align*}
&r^2 k^2 R''(r) + 2rk R'(r) + k^2 r^2 R(r) \\
&= \frac{-k^2 r^2 \sin{kr} - 2kr \cos{kr} + 2 \sin{kr}}{k r} + \frac{2kr \cos{kr} - 2 \sin{kr}}{k r} + kr \sin{kr} \\
&= \frac{-k^2 r^2 \sin{kr} - 2kr \cos{kr} + 2 \sin{kr}}{kr} + \frac{2kr \cos{kr} - 2 \sin{kr}}{kr} + \frac{k^2 r^2 \sin{kr}}{kr} \\
&= -k^2 r^2 \sin{kr} - 2kr \cos{kr} + 2 \sin{kr} + 2kr \cos{kr} - 2 \sin{kr} + k^2 r^2 \sin{kr} \\
&= 0
\end{align*}$

Indeed,

$j_0(x) = \frac{\sin{x}}{x}$

solves the Helmholtz Equation where ``ℓ = 0``.
"""

# ╔═╡ abcc322f-8dac-4529-bd50-c1917c47d29c
md"""
### Problem 4

The Rodrigues Formula is

$P_ℓ(x) = \frac{1}{2^ℓ ℓ!} \frac{d^ℓ}{dx^ℓ} (x^2 - 1)^ℓ = 1$

We can use this formula to derive the first three Legendre Polynomials ``P_0(x)``, ``P_1(x)``, and ``P_2(x)``.

$\begin{align*}
P_0(x) &= \frac{1}{2^0 0!} \frac{d^0}{dx^0} (x^2 - 1)^0 = 1 \\
P_1(x) &= \frac{1}{2^1 1!} \frac{d^1}{dx^1} (x^2 - 1)^1 = \frac{1}{2} (2x) = x \\
P_2(x) &= \frac{1}{2^2 2!} \frac{d^2}{dx^2} (x^2 - 1)^2 \\
&= \frac{1}{8} \frac{d}{dx}[2(x^2 - 1) ⋅ 2x] \\
&= \frac{1}{2} \frac{d}{dx}(x^3 - x) \\
&= \frac{1}{2} (3x^2 - 1) \\
\end{align*}$

Indeed, these results match the ones given in the course notes.
"""

# ╔═╡ 39f17932-dd54-49d0-baa1-786bb78a218d
md"""
### Problem 5

**(a).**

$\begin{align*}
F_1 = 3m x_1''(t) &= -kx_1 + k(x_2 - x_1) \\
0 &= 3mx_1''(t) + kx_1 - k(x_2 - x_1) \\
0 &= 3mx_1''(t) - kx_2 \\
0 &= 3x_1''(t) + 2 {\omega_0}^2 x_1 - {\omega_0}^2 x_2
\end{align*}$

$\begin{align*}
F_2 = 2m x_2''(t) &= -k(x_2 - x_1) \\
0 &= 2m x_2''(t) + k(x_2 - x_1) \\
0 &= 2m x_2''(t) + kx_2 - kx_1 \\
0 &= 2x_2''(t) + {\omega_0}^2 x_2 - {\omega_0}^2 x_1
\end{align*}$

**(b).**
Using the ansatz

$x_1(t) = a_1 e^{i \omega t} \qquad\text{and}\qquad x_2(t) = a_2 e^{i \omega t}$

we get

$\begin{align*}
-3 \omega^2 a_1 + 2 {\omega_0}^2 a_1 - {\omega_0}^2 a_2 &= 0 \\
-2 \omega^2 a_2 + {\omega_0}^2 a_2 - {\omega_0}^2 a_1 &= 0
\end{align*}$

Combining terms we get

$\begin{align*}
(-3 \omega^2 + 2 {\omega_0}^2) a_1 - {\omega_0}^2 a_2 &= 0 \\
-{\omega_0}^2 a_1 + (- 2 \omega^2 + {\omega_0}^2) a_2 &= 0
\end{align*}$

The setting the ratios of ``a_1`` and ``a_2`` equal to each other gives us

$\frac{-3 \omega^2 + 2 {\omega_0}^2}{-{\omega_0}^2} = \frac{-{\omega_0}^2}{-2\omega^2 + {\omega_0}^2}$

Solving for ``{\omega}^2`` we get

$\begin{align*}
(-3 \omega^2 + 2 {\omega_0}^2)(-2\omega^2 + {\omega_0}^2) &= {\omega_0}^4 \\
6 \omega^4 - 7 \omega^2 {\omega_0}^2 + 2 {\omega_0}^4 &= {\omega_0}^4 \\
6 \omega^4 - 7 \omega^2 {\omega_0}^2 + {\omega_0}^4 &= 0 \\
\end{align*}$

$\omega^2 = \frac{7 {\omega_0}^2 ± \sqrt{49 {\omega_0}^4 - 4(6) {\omega_0}^4}}{2(6)} = \frac{7 {\omega_0}^2 ± \sqrt{25 {\omega_0}^4}}{12} = \frac{7 {\omega_0}^2 ± 5 {\omega_0}^2}{12}$

$\omega^2 = \frac{1}{6} {\omega_0}^2 \qquad\text{or}\qquad \omega^2 = {\omega_0}^2$

Thus the eigenfrequencies are

$\begin{align*}
\omega_1 &= \frac{1}{\sqrt{6}} \omega_0 \\
\omega_2 &= -\frac{1}{\sqrt{6}} \omega_0 \\
\omega_3 &= \omega_0 \\
\omega_4 &= -\omega_0
\end{align*}$

The eigenmode ``x_{-}(t)`` oscillates at a frequency of ``\omega_0`` and the eigenmode ``x_{+}(t)`` oscillates at a frequency of ``\omega_0 / \sqrt{6}``.

**(c).**

$x_1(t) = ae^{i \omega_0 t / \sqrt{6}} + be^{-i \omega_0 t / \sqrt{6}} + ce^{i \omega_0 t} + de^{-i \omega_0 t}$

$x_2(t) = ae^{i \omega_0 t / \sqrt{6}} + be^{-i \omega_0 t / \sqrt{6}} - ce^{i \omega_0 t} - de^{-i \omega_0 t}$

**(d).**
"""

# ╔═╡ da7fe8c2-be38-4247-ab84-29ddfe0efd1c
PlutoUI.LocalResource("img/hw_6_p5_d.png", :width => 450)

# ╔═╡ 8b5f957a-d209-4dcb-ab27-4088b95e4ad4
md"""
**(e).**
"""

# ╔═╡ 6859c1ba-f29f-466c-9ee5-ecf99f033de1
PlutoUI.LocalResource("img/hw_6_p5_e.png", :width=>450)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.35"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "13468f237353112a01b2d6b32f3d0f80219944aa"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "85bf3e4bd279e405f91489ce518dedb1e32119cb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.35"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─8c51843c-9407-11ec-037a-0547f170ed7c
# ╟─84fb9a5e-2ff5-44cf-b6d4-d483dd0ae5c1
# ╟─ea5236fd-9c69-4ffc-a73c-9f2b336f5444
# ╟─e2708eda-5707-4c8f-a9b8-74929998d37c
# ╟─6b011578-0d89-49dc-8130-886a6c9518b2
# ╟─abcc322f-8dac-4529-bd50-c1917c47d29c
# ╟─39f17932-dd54-49d0-baa1-786bb78a218d
# ╟─da7fe8c2-be38-4247-ab84-29ddfe0efd1c
# ╟─8b5f957a-d209-4dcb-ab27-4088b95e4ad4
# ╟─6859c1ba-f29f-466c-9ee5-ecf99f033de1
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
