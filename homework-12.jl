### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ f676e962-b4e4-11ec-2dac-8d6608d7d805
begin
	using PlutoUI
md"""
# HW 12

Eric Nguyen
"""
end

# ╔═╡ 3faf246a-ec7d-47d0-bc3c-8147aaef966e
let
md"""
### Problem 1

A particle of mass ``m`` moves in one dimension ``x`` over some time interval ``t_1 ≤ t ≤ t_2``, under the influence of a force ``F(x) = -dV/dx``, for some function ``V(x)``.
Show that finding the function ``x(t)`` which minimizes

$S = ∫_{t_1}^{t_2} L(x,ẋ) \,dt \qquad\text{where}\qquad L(x,ẋ) = \frac{1}{2} mẋ^2 - V(x)$

is the same as showing that ``x(t)`` is determined by Newton's Second Law of Motion.
Then show that since ``L`` does not explicitly depend on ``t``, total mechanical energy is conserved.
"""
md"""
### Problem 1

The motion for the particle is described by the Euler-Langrange equation

$\frac{∂L}{∂x} - \frac{d}{dt} \left(\frac{∂L}{∂ẋ}\right) = 0$

The derivatives in the expression are as follows,

$\frac{∂L}{∂x} = -\frac{dV}{dx} \qquad\text{and}\qquad \frac{d}{dt}\left(\frac{∂L}{∂ẋ}\right) = \frac{d}{dt} \left(mẋ\right) = mẍ$

Substituting our results, we obtain

$mẍ = - \frac{dV}{dx} = F(x)$

Indeed, ``x(t)`` is determined by Newton's Second Law of Motion.
We show that total mechanical energy is conserved since ``L`` is independent of time,

$\frac{dL}{dt} = mẋ ⋅ ẍ + \frac{dV}{dx} ⋅ ẋ = F(x) ⋅ ẋ - F(x) ⋅ ẋ = 0$

We proved that ``\frac{dL}{dt} = 0`` which implies that ``L`` is a constant, i.e., total mechanical energy is conserved.
"""
end

# ╔═╡ 5337a4f7-c71c-490e-a967-21bc45efa8d8
begin
md"""
### Problem 2

We discussed in class two special cases which allowed the Euler-Lagrange equations to be integrated once.
In fact, when we first started talking about the Calculus of Variations, we found that a straight line gave the shortest distance between two points, using the first of these special cases.
Show that the functional for the shortest path between two points is also an example of the second special case, and use that form to show that solution is a straight line.
(As I write this, the second case is shown in Equation 7.7, Section 7.2.1 in the course notes.)
"""
md"""
### Problem 2

$F(f'(x)) = \sqrt{1 + (f'(x))^2}$

Applying the second special case

$F - f' \frac{∂F}{∂f'} = \text{constant},$

we have

$\frac{∂F}{∂f'} = \frac{∂}{∂f'} \left[(1 + (f'(x))^2)^{1/2}\right] = \frac{1}{2} \left[(1 + (f'(x))^2)^{-1/2}\right] ⋅ 2f'(x) = \frac{f'(x)}{\sqrt{1 + (f'(x))^2}}$

which gives us

$\sqrt{1 + (f'(x))^2} - \frac{(f'(x))^2}{\sqrt{1 + (f'(x))^2}} = \frac{1}{\sqrt{1 + (f'(x))^2}} = \text{constant}$

Indeed, the second special case also applies, as its shows ``f'(x) = \text{constant}`` which implies ``f(x)`` is a straight line.
"""
end

# ╔═╡ 9883d6a8-a429-4d56-bd6f-abdca96192d8
md"### Problem 3"

# ╔═╡ f7612e51-3d27-43fe-a2f2-18b30c8647b9
let
md"""
### Problem 3

Use MATHEMATICA to find and plot the brachistochrone solution for a bead starting at the origin and ending at ``(a,b) = (1,2)``.
"""
PlutoUI.LocalResource("img/hw_12_p3.png")
end

# ╔═╡ 8641cf6a-3213-4d0c-8b64-58207808ad00
let
md"""
### Problem 4

A "surface of revolution" is formed when a shape given by ``y = f(x)`` for ``a ≤ x ≤ b`` is rotated about the ``x``-axis, as shown in the figure.
Find the function ``f(x)`` which minimizes the surface area.
"""
md"""
### Problem 4

We consider the infinitesimal area along the edge of the circular slice,

$dA = 2\pi f(x) \,ds$

We rewrite ``ds`` in terms of ``dx``,

$ds = \sqrt{dx^2 + dy^2} = \sqrt{1 + \left(\frac{dy}{dx}\right)^2} \,dx = \sqrt{1 + (f'(x))^2} \,dx$

and the area becomes the functional

$A = 2\pi ∫_a^b f(x) \,ds = 2\pi ∫_a^b f(x) \sqrt{1 + (f'(x))^2} \,dx$

Apply the second special case

$F - f' \frac{∂F}{∂f'} = c \qquad\text{where}\qquad F(f,f',x) = f(x) \sqrt{1 + (f'(x))^2}$

and substituting ``F``, we obtain

$f(x) \sqrt{1 + (f'(x))^2} - \frac{f(x) (f'(x))^2}{\sqrt{1 + (f'(x))^2}} = c \implies \frac{f(x)}{\sqrt{1 + (f'(x))^2}} = c$

Solving for ``f'(x)`` we have

$f'(x) = \sqrt{\frac{(f(x))^2}{c^2} - 1} \implies c f'(x) = \sqrt{(f(x))^2 - c^2}$

Let ``y = f(x)`` such that the expression becomes

$c \frac{dy}{dx} = \sqrt{y^2 - c^2} \implies dx = \frac{c}{\sqrt{y^2 - c^2}} \,dy$

Integrating both sides using the substitution ``y = c \cosh{u}`` and ``dy = c \sinh{u} \,du``, we get

$x = ∫ \frac{c}{\sqrt{y^2 - c^2}} \,dy = c ∫ du = c(u + d) = c\left(\cosh^{-1} \frac{y}{c} + d\right)$

Thus, the function ``f(x)`` that minimizes the surface area has the form

$f(x) = c \cosh{\left(\frac{x}{c} + d\right)}$

where ``c`` and ``d`` are some constants which may be found from the fixed points at ``x = a`` and ``x = b``.
"""
end

# ╔═╡ d38d17cf-218a-485b-b513-6f939647d45c
let
md"""
### Problem 5

A chain of length ``L > 2a`` hangs freely between two points ``x = ±a`` on the ``x``-axis in the ``xy`` plane.
Find the equation ``f(x)`` that describes the resting shape of the chain, assuming that this is the shape that minimizes the center of gravity.
Of course, the length ``L`` must remain fixed, and ``f(±a) = 0``.
"""
md"""
### Problem 5

Consider the infinitesimal

$ds = \left[1 + (f'(x))^2\right]^{1/2} dx$

We want to minimize the functional

$S[f(x)] = ∫_{-a}^a f(x) \,ds = ∫_{-a}^a f(x) \left[1 + (f'(x))^2\right]^{1/2} \,dx$

subject to the constraint that

$L[f(x)] = ∫_{-a}^a ds = ∫_{-a}^a \left[1 + (f'(x))^2\right]^{1/2} dx$

The minimum ``f(x)`` will give ``\delta(S + \lambda L) = 0`` for the correct ``\lambda``,

$\delta(S - \lambda L) = \delta ∫_{-a}^a \left\{(f(x) - \lambda) \left[1 + (f'(x))^2\right]^{1/2}\right\} dx = 0$

where the integral implies

$\frac{f(x) - \lambda}{\left[1 + (f'(x))^2\right]^{1/2}} = c$

We let ``y = f(x)`` and rearrange the expression to get

$\frac{dy}{dx} = \left[\left(\frac{y - \lambda}{c}\right)^2 - 1\right]^{1/2} \implies dx = \left[\left(\frac{y - \lambda}{c}\right)^2 - 1\right]^{1/2} dy$

Integrating both sides using the substitution ``y - \lambda = c \cosh{u}`` and ``dy = c \sinh{u} \,du`` we get

$x = ∫ \frac{c}{\left[(y - \lambda)^2 - c^2\right]^{1/2}} \,dy = \lambda + c ∫ du = \lambda + c (u + d) = \lambda + c \left(\cosh^{-1} \frac{y}{c} + d\right)$

Thus, the function ``f(x)`` that minimizes the center of gravity has the form

$f(x) = \lambda + c \cosh{\left(\frac{x}{c} + d\right)}$

where ``c`` and ``d`` are constants.
The Lagrange multiplier ``\lambda`` has a physical interpretation as the vertical position of the hanging chain.
"""
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.38"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "9189d135f87bb42ffdf8c0fdd7f2d0c021e78ebf"

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
git-tree-sha1 = "621f4f3b4977325b9128d5fae7a8b4829a0c2222"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.4"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "670e559e5c8e191ded66fa9ea89c97f10376bb4c"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.38"

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
# ╟─f676e962-b4e4-11ec-2dac-8d6608d7d805
# ╟─3faf246a-ec7d-47d0-bc3c-8147aaef966e
# ╟─5337a4f7-c71c-490e-a967-21bc45efa8d8
# ╟─9883d6a8-a429-4d56-bd6f-abdca96192d8
# ╟─f7612e51-3d27-43fe-a2f2-18b30c8647b9
# ╟─8641cf6a-3213-4d0c-8b64-58207808ad00
# ╟─d38d17cf-218a-485b-b513-6f939647d45c
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
