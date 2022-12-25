### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ b68c1c08-f71e-450b-b240-0d08afc99a20
md"# Lab Notes"

# ╔═╡ 1f6b5073-0f20-4ea9-a28d-5dc18ee7d68d
md"### Lab #2"

# ╔═╡ bdae7ca2-7d48-11ec-0395-3f290bc48f84
md"""
Field from electric charge:
$E_{\text{point}} = k \frac{q}{r^2}$

$k = \frac{1}{4\pi\epsilon_0}$
"""

# ╔═╡ bd91e166-cff8-43d4-a041-12b2e2a9a487
md"### Lab #3"

# ╔═╡ 44bb7d71-c5b7-4745-8d18-7ee33bb9cdf3
md"Useful YouTube video: [https://youtu.be/34zcw_nNFGU](https://youtu.be/34zcw_nNFGU)"

# ╔═╡ aae5733c-6ef8-4df1-bfef-a16266ea83fc
md"""
The total mechanical energy of a simple pendulum of length ``ℓ`` and bob mass ``m`` is

$E = \frac{1}{2} mℓ^2\dot{\theta}^2 + mgℓ (1 - \cos{\theta}) = mgℓ(1 - \cos{\theta_0})$

where ``-\theta_0 ≤ \theta ≤ \theta_0`` is the angle through which the pendulum swings, and ``\dot{\theta} ≡ d\theta/dt``.
Find an integral for the period ``T(\theta_0)``, divided by the "small angle" period.
Integrate ``dt`` from ``\theta = 0`` to ``\theta = \theta_0`` and then multiply by four.
"""

# ╔═╡ ff6bcb8c-197f-4ae1-a5d3-99d9b3cd7fc9
md"""
$\begin{align*}
\frac{1}{2} m ℓ^2 \dot{\theta}^2 &= mgℓ(1 - \cos{\theta_0}) - mgℓ(1 - \cos{\theta}) \\
\dot{\theta}^2 &= \frac{mgℓ(1 - \cos{\theta_0}) - mgℓ(1 - \cos{\theta})}{\frac{1}{2} m ℓ^2} \\
&= \frac{2g}{ℓ} (1 - \cos{\theta_0} - 1 + \cos{\theta}) \\
&= \frac{2g}{ℓ} (\cos{\theta} - \cos{\theta_0}) \\
\dot{\theta} &= \sqrt{\frac{2g}{ℓ} (\cos{\theta} - \cos{\theta_0})} \\
\frac{d\theta}{dt} &= \sqrt{\frac{2g}{ℓ} (\cos{\theta} - \cos{\theta_0})} \\
dt &= \sqrt{\frac{ℓ}{2g (\cos{\theta} - \cos{\theta_0})}} \,d\theta \\
∫_0^{T / 4} dt &= ∫_0^{\theta_0} \sqrt{\frac{ℓ}{2g (\cos{\theta} - \cos{\theta_0})}} \,d\theta \\
T &= 4 ∫_0^{\theta_0} \sqrt{\frac{ℓ}{2g (\cos{\theta} - \cos{\theta_0})}} \,d\theta \\
\end{align*}$
"""

# ╔═╡ 5baf977f-353f-42c1-ac6f-6143c1f10414
md"""
### Lab #4

Last time in class,

$m \frac{d^2 y}{dt^2} = -mg - bv \implies m \frac{dv}{dt} = -mg - bv$

Today,

$m \frac{d^2 y}{dt^2} = -mg - b \frac{dy}{dt}$

$y(0) = y_0 \qquad y'(0) = v_0$

In Mathematica,

```mathematica
sol = DSolve[{DiffEq, y[0] == y0, y'[0] = v0}, y[t], t]

y = y[t] /. sol
```

Don't forget

```
$Assumptions = {m>0, b>0, …}$
```
"""

# ╔═╡ cd24ade2-de83-4637-9f23-85037c25924f
md"""
### Quiz solution

$\begin{align*}
E &= [p^2 c^2 + m^2 c^4]^{1/2} \qquad p ≪ mc \\
&= mc^2 \left[1 + \frac{p^2}{m^2 c^2}\right]^{1/2} \\
&= mc^2 \left[1 + \frac{p^2}{2m^2 c^2}\right] \\
&= mc^2 + \frac{p^2}{2m}
\end{align*}$
"""

# ╔═╡ f1c28370-6118-4d63-8017-e16e0a980083
md"""
### Lab #6

$\begin{align*}
3m ẍ &= -k x_1 + k(x_2 - x_1) \\
3m ẍ &= -k x_1 + kx_2 - kx_1 \\
3m ẍ &= -2k x_1 + kx_2 \\
0 &= 3m ẍ + 2k x_1 - kx_2 \\
0 &= 3 ẍ + 2{\omega_0}^2 x_1 - {\omega_0}^2 x_2 \\
\end{align*}$

$\begin{align*}
2m ẍ &= -k(x_2 - x_1) \\
2m ẍ &= -k x_2 + k x_1 \\
0 &= 2m ẍ + k x_2 - k x_1 \\
0 &= 2 ẍ + {\omega_0}^2 x_2 - {\omega_0}^2 x_1 \\
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
# ╟─b68c1c08-f71e-450b-b240-0d08afc99a20
# ╟─1f6b5073-0f20-4ea9-a28d-5dc18ee7d68d
# ╟─bdae7ca2-7d48-11ec-0395-3f290bc48f84
# ╟─bd91e166-cff8-43d4-a041-12b2e2a9a487
# ╟─44bb7d71-c5b7-4745-8d18-7ee33bb9cdf3
# ╟─aae5733c-6ef8-4df1-bfef-a16266ea83fc
# ╟─ff6bcb8c-197f-4ae1-a5d3-99d9b3cd7fc9
# ╟─5baf977f-353f-42c1-ac6f-6143c1f10414
# ╟─cd24ade2-de83-4637-9f23-85037c25924f
# ╠═f1c28370-6118-4d63-8017-e16e0a980083
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
