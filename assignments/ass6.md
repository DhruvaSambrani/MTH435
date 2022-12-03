---
title: Assignment 6
author: Dhruva Sambrani, MS18163
date: October 20
geometry: margin=1in
---

# Q3

Note $P(S_n > n) = 0$, and $P(S_n = i, (i+n) \mod 2 = 0) = 0$

For even $n$

$$\begin{aligned}
E[e^{\alpha S_n}] =& \sum_i P(S_n=i) e^{\alpha i}\\
=& \sum_{i = 2, \text{step}=2}^n \binom{n}{i} \big(p^{\frac{n+i}{2}} (1-p)^{\frac{n-i}{2}} e^{\alpha i}+ p^{\frac{n-i}{2}} (1-p)^{\frac{n+i}{2}} e^{-\alpha i}\big) + p^{\frac{n}{2}}(1-p)^{\frac{n}{2}}\\
\end{aligned}$$

For odd $n$

$$\begin{aligned}
E[e^{\alpha S_n}] =& \sum_i P(S_n=i) e^{\alpha i}\\
=& \sum_{i = 1, \text{step}=2}^n \binom{n}{i} \big(p^{\frac{n+i}{2}} (1-p)^{\frac{n-i}{2}} e^{\alpha i}+ p^{\frac{n-i}{2}} (1-p)^{\frac{n+i}{2}} e^{-\alpha i}\big)
\end{aligned}$$

If SSRW,

$p = 0.5$

For even $n$

$$\begin{aligned}
E[e^{\alpha S_n}] =& 0.5^n \left(\sum_{i = 2, \text{step}=2}^n \binom{n}{i}  \left(e^{\alpha i} + e^{-\alpha i}\right)+1\right)\\
\end{aligned}$$

For odd $n$

$$\begin{aligned}
E[e^{\alpha S_n}] =& 0.5^n \left(\sum_{i = 1, \text{step}=2}^n \binom{n}{i}  \left(e^{\alpha i} + e^{-\alpha i}\right)\right)\\
\end{aligned}$$

# 5 (b)

As proved in class, 

$$\begin{aligned}
P_0(N_0 \ge k) &= 1 - P_0(N_0 < k) = 1 - \sum_{i=1}^{k-1} (1-f_{00}) f_{00}^{i} + (1-f_{00})\\
&= 1 - (1 - f_{00}) \frac{f_{00} (1-f_{00})^{k-1}}{1-f_{00}} - (1 - f_{00})\\
&= 1 - f_{00} (1-f_{00})^{k-1} - 1 + f_{00}\\
&= f_{00}\left(1 - (1-f_{00})^{k-1}\right)
\end{aligned}$$

where $f_{00} = P_0(T_0 < \infty) = \min(p, 1-p)$, and $1 - \min{p,1-p} = \max{p, 1-p}$

Thus,

$P_0 = 2 \min{p, 1-p}^k$
