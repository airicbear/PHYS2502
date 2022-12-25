### A Pluto.jl notebook ###
# v0.17.5

using Markdown
using InteractiveUtils

# ╔═╡ 0d49c888-7432-11ec-0651-1bfd4d893d8a
md"""
# Quiz 1

Eric Nguyen
"""

# ╔═╡ c1162c40-dff6-44b8-83a4-4d34c05eaff9
md"""
### Problem 1

Find the dimension of ``G`` given that

$F = G \frac{m_1 m_2}{r^2}$
"""

# ╔═╡ dc6cbe35-388a-408e-863b-21416be0ba55
md"""
**Solution.** We know that ``F = ma`` where ``[m] = M`` and ``[a] = LT^{-2}``, so ``[F] = MLT^{-2}``.
``[m_1] = [m_2] = M \implies [m_1 m_2] = M^2`` and ``[r]^{-2} = L^{-2}``.
Then

$\begin{align*}
MLT^{-2} &= [G] M^2L^{-2} \\
[G] &= M^{-1} L^3 T^{-2}
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
# ╟─0d49c888-7432-11ec-0651-1bfd4d893d8a
# ╟─c1162c40-dff6-44b8-83a4-4d34c05eaff9
# ╟─dc6cbe35-388a-408e-863b-21416be0ba55
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
