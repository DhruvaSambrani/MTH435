---
title: Assignment 7
author: Dhruva
date: \today
geometry: margin=1in
---

# Q2

**To Show - $S_n=\Pi_{i=1}^n X_i$ is a martingale**

For this, it is enough to show that $E\left[S_{n+1} | F_n\right] = S_n$.

**Proof:**

$$\begin{aligned}
E\left[S_{n+1}|F_n\right] &= E\left[S_n|F_n\right] E\left[X_{n+1}|F_n\right] \rightarrow \text{ from independence}\\
&= S_n E\left[X_{n+1}\right] \rightarrow \text{ property of expectation}\\
&= S_n E\left[X_0\right] \rightarrow \text{ identically distributed}\\
&= S_n\\
\end{aligned}$$

Thus, $S_n$ is a martingale.

# Q7

$$\begin{aligned}
& E\left[\left(B\left(0\right) + \int_0^t B\left(m\right) dm\right) \left(B\left(0\right)+\int_0^s B\left(m\right) dm\right)\right] - E\left[B\left(0\right) + \int_0^t B\left(m\right) dm\right]E\left[B\left(0\right) + \int_0^s B\left(m\right) dm\right] \\
=& Var\left[B\left(0\right) + \int_0^t \right]+E\left[\left(B\left(0\right) + \int_0^t\right) \left(\int_t^s \right)\right] - E\left[B\left(0\right) + \int_0^t \right]E\left[B\left(0\right)\right] - E\left[B\left(0\right) + \int_0^t \right]E\left[\int_t^s \right]\\
=& Var\left[X\left(t\right)\right] - E\left[X\left(t\right)\right]E\left[B\left(0\right)\right]
\end{aligned}$$

