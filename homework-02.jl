### A Pluto.jl notebook ###
# v0.17.5

using Markdown
using InteractiveUtils

# ╔═╡ dee8f646-7a1c-11ec-1809-491fe32ebc95
begin
	using PhysicalConstants.CODATA2018: g_n
	using Unitful
	
	md"""
	# Homework #2
	
	Eric Nguyen
	"""
end

# ╔═╡ 9dd94ada-33f6-4fe0-a58f-bec9b6b3e76a
md"""
### Problem 1

**(a).**
To show that energy does not change with time, we want to show that ``\frac{d}{dt} E = \frac{d}{dt} (mv^2 / 2 + kx^2 / 2) = 0``.

The derivative of the energy of the simple harmonic oscillator is

$\begin{align*}
\frac{d}{dt} E &= \frac{d}{dt} \left(\frac{mv^2}{2} + \frac{kx^2}{2}\right) \\
&= \frac{d}{dt} \left(\frac{m\left(\frac{dx}{dt}\right)^2}{2} + \frac{kx^2}{2}\right) \\
&= \frac{m\frac{d}{dt}\left(\left(\frac{dx}{dt}\right)^2\right)}{2} + \frac{k\frac{d}{dt} (x^2)}{2} \\
&= \frac{2m\left(\frac{d^2x}{dt^2}\right)}{2} + \frac{2kx}{2} \\
&= ma + kx
\end{align*}$

where ``a = \left(\frac{d^2x}{dt^2}\right)``.
By Newton's Second Law, ``F = ma`` and by Hooke's law, ``F = -kx``.
Then ``\frac{d}{dt} E = F - F = 0``.
Indeed, it is shown that energy is conserved in a simple harmonic oscillator. 

**(b).**
Suppose that ``x`` can be written as a circular function, ``x(t) = \sin{(ft)}``, where ``f`` represents the frequency of oscillation and ``x > 0`` for ``0 ≤ ft ≤ \pi``.
From this definition, velocity ``v(t) = f \cos{(ft)}`` where ``v > 0`` for ``-\frac{\pi}{2} ≤ ft ≤ \frac{\pi}{2}``.
Then period of ``t`` that is positive for both ``v`` and ``x`` is ``0 ≤ t ≤ \frac{\pi}{2f}``.
The integral of ``E`` from ``0 ≤ t ≤ \frac{\pi}{2f}`` is

$\begin{align*}
∫_0^{\frac{\pi}{2f}} E \,dt &= ∫_0^{\frac{\pi}{2f}} \frac{mv^2}{2} + \frac{kx^2}{2} \,dt \\
&= \frac{m}{2} ∫_0^{\frac{\pi}{2f}} v^2 \,dt + \frac{k}{2} ∫_0^{\frac{\pi}{2f}} x^2 \,dt \\
&= \frac{m}{2} ∫_0^{\frac{\pi}{2f}} (f \cos{(ft)})^2 \,dt + \frac{k}{2} ∫_0^{\frac{\pi}{2f}} (\sin{(ft)})^2 \,dt \\
&= \frac{mf^2}{2} ∫_0^{\frac{\pi}{2f}} \frac{\cos{(2ft)} + 1}{2} \,dt + \frac{k}{2} ∫_0^{\frac{\pi}{2f}} \frac{1 - \cos{(2ft)}}{2} \,dt \\
&= \frac{mf^2}{4} \left[∫_0^{\frac{\pi}{2f}} \cos{(2ft)} \,dt + ∫_0^{\frac{\pi}{2f}} dt\right] + \frac{k}{4} \left[∫_0^{\frac{\pi}{2f}} dt - ∫_0^{\frac{\pi}{2f}} 
 \cos{(2ft)} \,dt\right] \\
&= \frac{mf^2}{4} \left[\frac{\sin{(\pi)}}{2f} + \frac{\pi}{2f}\right] + \frac{k}{4} \left[\frac{\pi}{2f} - \frac{\sin{(\pi)}}{2f}\right] \\
&= \frac{mf^2}{4} \left[\frac{\pi}{2f}\right] + \frac{k}{4} \left[\frac{\pi}{2f}\right] \\
&= \frac{mf \pi}{8} + \frac{k \pi}{8f} \\
&= \frac{\pi}{8} \left(\frac{mf^2 + k}{f}\right)
\end{align*}$

We can derive an expression for the period ``T`` in terms of ``k`` and ``m`` by setting our result to ``0`` and solving for ``f``.

$\begin{align*}
\frac{\pi}{8} \left(\frac{mf^2 + k}{f}\right) &= 0 \\
mf^2 + k &= 0 \\
f^2 &= -\frac{k}{m} \\
f &= \sqrt{-\frac{k}{m}}
\end{align*}$

The period ``T`` is ``2\pi ⋅ \frac{1}{f}`` given that the motion is periodic, so

$T = 2π \sqrt{-\frac{m}{k}}$
"""

# ╔═╡ 5136d373-7931-44b6-9a69-6a360db69d46
md"""
### Problem 2

The total force ``F(y)`` acting on the dam at depth ``y`` is the pressure ``p(y)`` times the area of the dam at which the water is in contact with.
The area is given by ``A(y) = 2 ⋅ ((W/2) ⋅ y) = W ⋅ y``.
So the total force acting on the dam at depth ``y`` is

$F(y) = p(y) A(y) = (\rho gy)(W ⋅ y) = W\rho gy^2$

We can verify that the result for ``F(y)`` is dimensionally correct by showing ``[F(y)] = [W \rho gy^2]``.
Note that the dimensions of ``F(y)`` should be ``[F(y)] = [ma] = M L T^{-2}``.
Find the dimensions of ``p(y)``,

$\rho = \frac{m}{V} \implies [\rho] = M L^{-3}$

$g = \frac{m}{s^2} \implies [g] = L T^{-2}$

The dimensions of ``W`` and ``y`` are obviously ``L``.

$[W \rho gy^2] = [L][ML^{-3}][LT^{-2}][L^2] = MLT^{-2} = [F(y)]$

Indeed, the result is dimensionally correct.
"""

# ╔═╡ 9db62ad5-f566-4c96-887e-5ea638a04149
# Calculate the force on the Hoover Dam from Lake Mead
let
	W = 200u"m"
	ρ = 997u"kg/m^3"
	y = 160u"m"

	F = W*ρ*g_n*y^2 |> u"N"

	# In tons of force
	F / 2000
end

# ╔═╡ e1099ca5-07e7-4e8a-b310-b38e2d871696
md"""
The force ``F`` on the Hoover Dam (``W = 200 \text{ m}``) from Lake Mead (``D = 160 \text{ m}``) is

$\begin{align*}
F &= (200 \text{ m}) (997 \text{ kg/m}^3) (9.8 \text{ m/s}^2) (160 \text{m})^2 ≈ 25\,029\,709 \text{ tons of N}
\end{align*}$
"""

# ╔═╡ 108cae9d-97e1-411b-99c8-4b6faac1f778
md"""
### Problem 3

The derivative of ``\tan{x} ≡ \sin{x} / \cos{x}`` is

$\begin{align*}
\frac{d}{dx} (\tan{x}) &= \frac{d}{dx} \left(\frac{\sin{x}}{\cos{x}}\right) \\
&= \frac{\cos{x} \frac{d}{dx} \sin{x} - \sin{x} \frac{d}{dx} \cos{x}}{\cos^2{x}} \\
&= \frac{\cos{x} \cos{x} + \sin{x} \sin{x}}{\cos^2{x}} \\
&= \frac{\cos^2{x} + \sin^2{x}}{\cos^2{x}} \\
&= \frac{1}{\cos^2{x}} \\
&= \sec^2{x}
\end{align*}$

Let ``f(x) = \frac{1}{1 + a^2 x^2}``.
We want to integrate with respect to ``\tan{u} = ax``, so the lower bound becomes ``u = \tan^{-1}(0) = 0`` and the upper bound becomes ``u = \displaystyle\lim_{ax → ∞} \tan^{-1}(ax) = \frac{\pi}{2}``.
Note that ``\frac{d}{dx} (\tan{u}) = a \implies dx = \frac{\sec^2{u}}{a} \,du``.
The integral given in the problem is then evaluated as follows,

$\begin{align*}
∫_0^∞ \frac{dx}{1 + a^2 x^2} &= ∫_0^∞ \frac{dx}{1 + (ax)^2} \\
&= ∫_0^{\frac{\pi}{2}} \frac{\sec^2{u}}{a(1 + (\tan{u})^2)} \,du \\
&= ∫_0^{\frac{\pi}{2}} \frac{\sec^2{u}}{a \sec^2{u}} \, du \\
&= ∫_0^{\frac{\pi}{2}} \frac{1}{a} \, du \\
&= \left[\frac{u}{a}\right]_0^{\frac{\pi}{2}} \\
&= \frac{\pi}{2a} - \frac{0}{a} \\
&= \frac{\pi}{2a}
\end{align*}$
"""

# ╔═╡ 969da775-f4ea-4b0a-b339-b9b20fec0bd8
md"""
### Problem 4

Let ``\displaystyle f(x) = ∫_1^x \frac{1}{t} \,dt``.
We want to show the property ``f(ab) = f(a) + f(b)`` using change of integration of variables.
Let ``e^u = t``.
Then the upper bound becomes ``u = \log{x}`` and the lower bound becomes ``u = \log{1} = 0``.
Note that ``\frac{d}{dt} (e^u) = 1 \implies dt = e^u \,du``.
Then we can write ``f(x)`` as

$f(x) = ∫_0^{\log{x}} \frac{e^u}{e^u} \,du = ∫_0^{\log{x}} \,du = u \,\Big|_0^{\log{x}} = \log{x} - 0 = \log{x}$

So, 

$f(ab) = \log{(ab)} = \log{(a)} + \log{(b)} = f(a) + f(b).$

Hence,

$f(a^n) = \log{(a^n)} = n \log{(a)} = n f(a) \qquad \text{for } n ∈ ℤ^+.$
"""

# ╔═╡ 6b8582b8-8272-4ce6-8c46-09ddbe2aa035
md"""
### Problem 5

**(a).**
The volume ``V`` of a right circular cone of height ``h``, base radius ``r``, and slant height ``ℓ`` is given by the sum of the volume of small disks, ``dV = \pi ℓ^2 \,dz``, from ``0`` to ``h``, where ``ℓ`` gives the radius of the disk at a particular ``z`` and ``ℓ = \frac{r}{h} z`` (imagine that the cone is plotted along the ``x``-axis on the ``xy`` plane and notice how we can apply ``y = mx + b`` to find this expression).
The volume of the cone is

$V = ∫_0^h \pi ℓ^2 \,dz = ∫_0^h \pi \left(\frac{r}{h} z\right)^2 dz = \frac{\pi r^2}{h^2} ∫_0^h z^2 \,dz = \frac{\pi r^2}{h^2} \left[\frac{1}{3} z^3\right]_0^h = \frac{\pi r^2}{h^2} \frac{h^3}{3} = \frac{\pi r^2 h}{3}$

**(b).**
The maximum volume of a right circular cone of height ``h``, base radius ``r``, and fixed slang length ``ℓ``, is found where ``\frac{dV}{dh} = 0`` and ``\frac{dv}{dr} = 0``.

$\frac{dV}{dh} = \frac{d}{dh} \left(\frac{\pi r^2 h}{3}\right)$

We can write ``r`` in terms of ``h`` by using the Pythagorean theorem, ``ℓ^2 = r^2 + h^2 \implies r^2 = ℓ^2 - h^2``, so

$\begin{align*}
\frac{dV}{dh} = \frac{d}{dh}\left(\frac{\pi (ℓ^2 - h^2) h}{3}\right) = \frac{\pi}{3} \frac{d}{dh}\left(ℓ^2 h - h^3\right) = \frac{\pi}{3} (ℓ^2 - 3h^2)
\end{align*}$

Setting the above expression to ``0`` and solving for ``h``, we get

$\begin{align*}
\frac{\pi}{3} (ℓ^2 - 3h^2) &= 0 \\
ℓ^2 - 3h^2 &= 0 \\
3h^2 &= ℓ^2 \\
h^2 &= \frac{ℓ^2}{3} \\
h &= \frac{ℓ}{\sqrt{3}}
\end{align*}$

Using the desired value for ``h`` to find an expression for the desired value of ``r`` in terms of ``ℓ`` we get

$r^2 = ℓ^2 - h^2 = ℓ^2 - \frac{ℓ^2}{3} = \frac{3ℓ^2 - ℓ^2}{3} = \frac{2ℓ^2}{3} \implies r = \sqrt{\frac{2}{3}} ℓ$

The ratio ``h/r`` is

$\frac{h}{r} = \frac{\frac{ℓ}{\sqrt{3}}}{\sqrt{\frac{2}{3}} ℓ} = \frac{ℓ}{\sqrt{3} \sqrt{\frac{2}{3}} ℓ} = \frac{1}{\sqrt{2}}.$
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[compat]
PhysicalConstants = "~0.2.1"
Unitful = "~1.10.1"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.CommonSolve]]
git-tree-sha1 = "68a0743f578349ada8bc911a5cbd5a2ef6ed6d1f"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f74e9d5388b8620b4cee35d4c5a618dd4dc547f4"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.3.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Measurements]]
deps = ["Calculus", "LinearAlgebra", "Printf", "RecipesBase", "Requires"]
git-tree-sha1 = "58390f5617544fb09d27244749484fee0cae6712"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.7.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.PhysicalConstants]]
deps = ["Measurements", "Roots", "Unitful"]
git-tree-sha1 = "2bc26b693b5cbc823c54b33ea88a9209d27e2db7"
uuid = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
version = "0.2.1"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
git-tree-sha1 = "6bf3f380ff52ce0832ddd3a2a7b9538ed1bcca7d"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.2.1"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Roots]]
deps = ["CommonSolve", "Printf", "Setfield"]
git-tree-sha1 = "0abe7fc220977da88ad86d339335a4517944fea2"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.3.14"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "Requires"]
git-tree-sha1 = "0afd9e6c623e379f593da01f20590bacc26d1d14"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "0.8.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Unitful]]
deps = ["ConstructionBase", "Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "b95e0b8a8d1b6a6c3e0b3ca393a7a285af47c264"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.10.1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╟─dee8f646-7a1c-11ec-1809-491fe32ebc95
# ╟─9dd94ada-33f6-4fe0-a58f-bec9b6b3e76a
# ╟─5136d373-7931-44b6-9a69-6a360db69d46
# ╠═9db62ad5-f566-4c96-887e-5ea638a04149
# ╟─e1099ca5-07e7-4e8a-b310-b38e2d871696
# ╟─108cae9d-97e1-411b-99c8-4b6faac1f778
# ╟─969da775-f4ea-4b0a-b339-b9b20fec0bd8
# ╟─6b8582b8-8272-4ce6-8c46-09ddbe2aa035
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
