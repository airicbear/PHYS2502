### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ 86f4a1b8-8854-11ec-189d-edf27b56bd06
begin
	using PlutoUI
	
	md"""
	# Homework #4
	
	Eric Nguyen
	"""
end

# ╔═╡ 9c1a6006-b7bc-47f7-8d17-83f145e0759c
md"""
### Problem 1

$\frac{dx}{dt} = x^2 \implies ∫ \frac{dx}{x^2} = ∫ dt \implies -\frac{1}{x} = t + C \implies x = -\frac{1}{t + C}$

Using the initial condition ``x(0) = a`` gives us

$a = -\frac{1}{C} \implies C = -\frac{1}{a} \implies x = -\frac{1}{t - \frac{1}{a}} = \frac{1}{\frac{1}{a} - t}$

The range of times my solution is valid is when ``\frac{1}{a} - t ≠ 0``, that is, when ``t ≠ \frac{1}{a}``.
However, we are given that ``a > 0`` when ``x = a`` at ``t = 0``.
Therefore, the range of times the solution is valid is when ``t ≥ 0``.
"""

# ╔═╡ 0279f42e-776f-4d59-99e9-f7afaab39a93
md"""
### Problem 2

Using the initial conditions, we can evaluate a definite integral on both sides and solve for ``P(T)``,

$\begin{align*}
∫_{P_0}^{P(T)} \frac{dP}{P} &= k ∫_{T_0}^T \frac{dT}{T^2} \\
\log{P(T)} - \log{(P_0)} &= k \left[-\frac{1}{T} + \frac{1}{T_0}\right] \\
\log{P(T)} &= k \left[\frac{1}{T_0} - \frac{1}{T}\right] + \log{(P_0)} \\
P(T) &= P_0 e^{k(1/T_0 - 1/T)}
\end{align*}$
"""

# ╔═╡ 41f2126c-2dd8-4fc6-8a03-dc9894592eb4
md"""
### Problem 3

$\begin{align*}
m \frac{dv}{dt} &= mg - av^2 \\
∫ \frac{m \,dv}{mg - av^2} &= ∫ dt \\
∫ \frac{m \,dv}{mg\left(1 - \frac{a}{mg}v^2\right)} &= ∫ dt \\
∫ \frac{dv}{1 - \frac{a}{mg}v^2} &= g ∫ dt \\
∫ \frac{dv}{1 - \left(v \sqrt{\frac{a}{mg}}\right)^2} &= g ∫ dt \\
\sqrt{\frac{mg}{a}} \tanh^{-1}
{\left(v \sqrt{\frac{a}{mg}}\right)} &= gt + C
\end{align*}$
"""

# ╔═╡ 3a167b9e-de7a-47b8-b27c-111f2f24c67e
PlutoUI.LocalResource("img/hw_4_p3.png", :width => 350)

# ╔═╡ f1890fec-a70b-4fe0-9c2b-a9bf0927b4e8
md"""
$\begin{align*}
v &= \sqrt{\frac{mg}{a}} \tanh{\left(gt \sqrt{\frac{a}{mg}}\right)} + C'
\end{align*}$

Using the initial condition ``v(0) = 0``, we get ``C' = 0``.
So, the final expression for velocity is

$v(t) = \sqrt{\frac{mg}{a}} \tanh{\left(gt \sqrt{\frac{a}{mg}}\right)}$

The dimensions should be ``LT^{-1}``, we can use dimensional analysis to verify that this is true, assuming that the ``\tanh^{-1}`` expression is dimensionless:

$\begin{align*}
[v(t)] &= \left[[MLT^{-2}] [ML^{-1}]^{-1}\right]^{1/2} = [MLT^{-2} M^{-1}L]^{1/2} = [L^2 T^{-2}]^{1/2} = LT^{-1}
\end{align*}$

For a short time such as ``t = 0``, we get ``v(0) = 0``.
For a long time such as ``t → ∞``, we get ``v(t) = \sqrt{\frac{mg}{a}}`` which matches our expectation for terminal velocity.
"""

# ╔═╡ 3801ec92-1bd6-4594-a7aa-889618601411
md"""
### Problem 4

By Kirchoff's loop law, the sum of potential differences is equal to zero.
In other words ``V_R + V_C = 0``.

$\begin{align*}
V_R &= -V_C \\
\frac{dq}{dt} R &= -\frac{q}{C} \\
∫_{q_0}^{q(t)} \frac{dq}{q} &= -∫_0^t \frac{dt}{RC} \\
\log{(q(t))} - \log{(q_0)} &= -\frac{t}{RC} \\
\log{\left(\frac{q(t)}{q_0}\right)} &= -\frac{t}{RC} \\
\frac{q(t)}{q_0} &= e^{-t/RC} \\
q(t) &= q_0 e^{-t/RC}
\end{align*}$
"""

# ╔═╡ 76c7652e-8dc4-46d8-b79e-7f0c7cbb589e
md"""
### Problem 5

Apply Kirchoff's laws to obtain the differential equation,

$\begin{align*}
V_L + V_C &= 0 \\
L \frac{dI}{dt} + \frac{q}{C} &= 0 \\
L \frac{d^2 q}{dt^2} + \frac{q}{C} &= 0 \\
\frac{d^2 q}{dt^2} + \frac{q}{LC} &= 0 \\
\end{align*}$

Make a guess that ``q(t)`` is in the form ``e^{\alpha t}``.
Then we obtain the characteristic equation

$\begin{align*}
\frac{d^2}{dt^2} (e^{\alpha t}) + \frac{e^{\alpha t}}{LC} &= 0 \\
\alpha^2 e^{\alpha t} + \frac{e^{\alpha t}}{LC} &= 0 \\
e^{\alpha t} \left(\alpha^2 + \frac{1}{LC}\right) &= 0 \\
\alpha^2 + \frac{1}{LC} &= 0
\end{align*}$

The solution to the characteristic equation is

$\alpha = ±\sqrt{-\frac{1}{LC}} = ± i \sqrt{\frac{1}{LC}}$

We have a second order differential equation, so we have two linearly independent solutions.
Then using our expression for ``\alpha`` we get the final result

$q(t) = e^{i \sqrt{t/LC}} + e^{-i \sqrt{t/LC}}$
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.34"
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
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

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
git-tree-sha1 = "0b5cfbb704034b5b4c1869e36634438a047df065"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8979e9802b4ac3d58c503a20f2824ad67f9074dd"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.34"

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
# ╟─86f4a1b8-8854-11ec-189d-edf27b56bd06
# ╟─9c1a6006-b7bc-47f7-8d17-83f145e0759c
# ╟─0279f42e-776f-4d59-99e9-f7afaab39a93
# ╟─41f2126c-2dd8-4fc6-8a03-dc9894592eb4
# ╟─3a167b9e-de7a-47b8-b27c-111f2f24c67e
# ╟─f1890fec-a70b-4fe0-9c2b-a9bf0927b4e8
# ╟─3801ec92-1bd6-4594-a7aa-889618601411
# ╟─76c7652e-8dc4-46d8-b79e-7f0c7cbb589e
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
