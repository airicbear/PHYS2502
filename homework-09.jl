### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 6f915d8a-a7d6-11ec-0039-cbbff20d0352
begin
	using PlutoUI
	
md"""
# HW 9

Eric Nguyen
"""
end

# ╔═╡ 5a928acb-5f63-4429-9bc6-b03e1ea75911
md"""
### Problem 1

The wave equation is defined as

$\frac{1}{v^2} \frac{∂^2 u}{∂t^2} = \frac{∂^2 u}{∂x^2}$

The general solution to the wave equation is of the form

$u(x,t) = f(x - vt) + g(x + vt)$

for any differentiable functions ``f`` and ``g`` and constant velocity ``v``.
We want to show that

$u(x,t) = \frac{1}{2} p(x - vt) + \frac{1}{2} p(x + vt)$

The initial condition ``u(x,0) = p(x)`` gives

$u(x,0) = f(x) + g(x) = p(x) \tag{1}$

The initial condition ``u̇(x,0) = 0`` gives

$u̇(x,0) = -v \dot{f}(x) + v \dot{g}(x) = 0$

Integrating the expressions in the second initial condition with respect to ``t``, we get

$u(x,0) = -v f(x) + v g(x) = 0$

which reduces to

$u(x,0) = -f(x) + g(x) = 0 \tag{2}$

Subtracting and adding the equations ``(1)`` and ``(2)`` together, we get

$\begin{align*}
2f(x) &= p(x) \implies f(x) = \frac{1}{2} p(x) \implies f(x - vt) = \frac{1}{2} p(x - vt) \\
2g(x) &= p(x) \implies g(x) = \frac{1}{2} p(x) \implies g(x + vt) = \frac{1}{2} p(x + vt)
\end{align*}$

Finally, we can rewrite the solution as

$u(x,t) = \frac{1}{2} p(x - vt) + \frac{1}{2} p(x + vt)$

which indeed corresponds to the "splitting" of ``p(x)`` into two pieces, one moving to the left and the other moving to the right such that each piece is equal to one-half of ``p(x)``. 
"""

# ╔═╡ b1b35d3c-8aff-4210-b7e5-26af398f7667
md"""
### Problem 2

**(a).**
We obtain a general solution to the wave equation such that the condition ``u(0,t) = 0`` is satisfied but still is of the form ``u(x,t) = g(x + vt)``.
We get

$u(x,t) = g(x + vt) - g(-x + vt)$

Indeed, this satisfies the condition ``u(0,t) = 0``,

$u(0,t) = g(vt) - g(vt) = 0$

**(b).**
We obtain a general solution to the wave equation such that the condition ``\displaystyle \left.\frac{∂u(x,t)}{∂x}\right|_{x=0} = 0`` is satisfied but is still of the form ``u(x,t) = g(x + vt)``.
We get

$u(x,t) = g(x + vt) + g(-x + vt)$

Indeed, this satisfies the condition ``\displaystyle \left.\frac{∂u(x,t)}{∂x}\right|_{x=0} = 0``,

$\displaystyle \left.\frac{∂u(x,t)}{∂x}\right|_{x=0} = \frac{∂}{∂x} (g(x + vt) + g(-x + vt)) = 1 - 1 = 0$
"""

# ╔═╡ 29ba7a28-2fdd-4e77-96a5-160578539b7a
md"""
### Problem 3

The Fourier Sine decomposition shows a similar motion compared to Lab 8.
"""

# ╔═╡ 244e298f-393a-4a76-b287-f8f1fcd9b94d
PlutoUI.LocalResource("img/hw_9_p3.png")

# ╔═╡ 701dc659-73d1-4264-a179-82d6c61eeaf2
md"""
### Problem 4

$f(x) = \frac{1}{\sigma \sqrt{2\pi}} e^{-x^2 / 2\sigma^2}$

**(a).**
The Fourier Transform ``A(k)`` of ``f(x)`` is

$\begin{align*}
A(k) &= ∫_{-∞}^∞ e^{-2\pi ikx} f(x) \,dx \\
&= \frac{1}{\sigma \sqrt{2\pi}} ∫_{-∞}^∞ e^{-2\pi ikx} e^{-x^2 / 2\sigma^2} \,dx \\
&= \frac{1}{\sigma \sqrt{2\pi}} ∫_{-∞}^∞ e^{-(4 \pi \sigma^2 ikx + x^2) / 2\sigma^2} \,dx \\
&= \frac{1}{\sigma \sqrt{2\pi}} ∫_{-∞}^∞ e^{-[(x + 2\pi \sigma^2 ik)^2 - 4 \pi^2 \sigma^4 i^2 k^2] / 2\sigma^2} \,dx & \text{Complete the square} \\
&= \frac{e^{2 \pi^2 \sigma^2 i^2 k^2}}{\sigma \sqrt{2\pi}} ∫_{-∞}^∞ e^{-(x + 2\pi^2 \sigma^2 ik)^2 / 2\sigma^2} \,dx \\
&= \frac{e^{-2 \pi^2 \sigma^2 k^2}}{\sigma \sqrt{2\pi}} \left[\sqrt{2\pi \sigma^2} \right] & \text{Using } ∫_{-∞}^∞ e^{-a(x+b)^2} \,dx = \sqrt{\frac{\pi}{a}} \\
&= e^{-2\pi^2 \sigma^2 k^2}
\end{align*}$

**(b).**
The width ``Δx`` of ``f(x)`` is found through the following calculations

$\mathcal{A} = ∫_{-∞}^∞ f(x) \,dx = \frac{1}{\sqrt{2 \pi}} ∫_{-∞}^∞ e^{-x^2/2\sigma^2} \,dx = \frac{1}{\sqrt{2\pi}} \left[\sqrt{2\pi\sigma^2}\right] = \sigma$

$\begin{align*}
(Δx)^2 &= \frac{1}{\mathcal{A}} ∫_{-∞}^∞ x^2 f(x) \,dx \\
&= \frac{1}{\sigma^2 \sqrt{2 \pi}} ∫_{-∞}^∞ x^2 e^{-x^2 / 2\sigma^2} \,dx \\
&= \frac{1}{\sigma^2 \sqrt{2 \pi}} \left[\frac{1}{2} \sqrt{\frac{\pi}{(1/2\sigma^2)^3}}\right] \\
&= \frac{1}{\sigma^2 \sqrt{2 \pi}} \left[\frac{1}{2} \sqrt{8\pi \sigma^6}\right] \\
&= \frac{1}{\sigma^2 \sqrt{2 \pi}} \left[\frac{1}{2} \left(2 \sqrt{2 \pi} \sigma^3\right)\right] \\
&= \sigma \\
\end{align*}$

$\implies Δx = \sqrt{\sigma}$

**(c).**
The width ``Δk`` of ``A(k)`` is found through the following calculations

$\mathcal{A} = ∫_{-∞}^∞ A(k) \,dk = ∫_{-∞}^∞ e^{-2\pi^2 \sigma^2 k^2} \,dk = \sqrt{\frac{\pi}{2\pi^2 \sigma^2}}$

$\begin{align*}
(Δk)^2 &= \frac{1}{\mathcal{A}} ∫_{∞}^∞ k^2 A(k) \,dk \\
&= \sqrt{\frac{2\pi^2 \sigma^2}{\pi}} ∫_{∞}^∞ k^2 e^{-2\pi^2 \sigma^2 k^2} \,dk \\
&= \sqrt{\frac{2\pi^2 \sigma^2}{\pi}} \left[\frac{1}{2} \sqrt{\frac{\pi}{(2\pi^2 \sigma^2)^3}}\right] \\
&= \frac{1}{2 (2 \pi^2 \sigma^2)} \\
&= \frac{1}{4 \pi^2 \sigma^2}
\end{align*}$

$\implies Δk = \sqrt{\frac{1}{4\pi^2 \sigma^2}} = \frac{1}{2\pi \sigma}$

**(d).**
The product ``Δx Δk`` is

$Δx Δk = \frac{1}{4\pi^2 \sqrt{\sigma}}$

which implies that it falls to zero even faster than the triangle pulse for ``\displaystyle \sigma ≥ \frac{1}{4 \pi^6}``.
"""

# ╔═╡ 1767eedf-c523-4865-956b-bd9ba83cc9cf
md"""
### Problem 5

**(a).**
Let ``f(x) = x`` for the property

$\int_{-\epsilon}^\epsilon f(x) \delta(x) \,dx = f(0)$

We have ``f(0) = 0``, so we get

$x \delta(x) = 0$

**(b).**

$∫_{-∞}^∞ x \delta'(x) \,dx = x \delta(x)\Big|_{-∞}^∞ - ∫_{-∞}^∞ \delta(x) \,dx = -∫_{-∞}^∞ \delta(x) \,dx$

$\implies x \delta'(x) = -\delta(x)$

**(c).**

$∫_{-∞}^∞ x^2 \delta''(x) \,dx = \left[2x \delta'(x)\right]_{-∞}^∞ - ∫_{-∞}^{∞} 2x \delta'(x) \,dx = ∫_{-∞}^∞ 2\delta(x) \,dx$

$\implies x^2 \delta''(x) \,dx = 2\delta(x)$
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.37"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "e4d36aff991b8dc605f222074120cb6c69173dc8"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

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
version = "0.5.0+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

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
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.81.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

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
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.17+2"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "85b5da0fa43588c75bb1ff986493443f821c70b7"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.3"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "bf0a1121af131d9974241ba53f601211e9303a9e"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.37"

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
version = "0.7.0"

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
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

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
version = "1.2.12+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.0.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.41.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "16.2.1+1"
"""

# ╔═╡ Cell order:
# ╟─6f915d8a-a7d6-11ec-0039-cbbff20d0352
# ╟─5a928acb-5f63-4429-9bc6-b03e1ea75911
# ╟─b1b35d3c-8aff-4210-b7e5-26af398f7667
# ╟─29ba7a28-2fdd-4e77-96a5-160578539b7a
# ╟─244e298f-393a-4a76-b287-f8f1fcd9b94d
# ╟─701dc659-73d1-4264-a179-82d6c61eeaf2
# ╟─1767eedf-c523-4865-956b-bd9ba83cc9cf
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
