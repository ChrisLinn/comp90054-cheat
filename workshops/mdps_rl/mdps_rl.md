# MDPs & RL

+ [problems_mdps_rl.pdf](https://github.com/ChrisLinn/comp90054-cheat/blob/master/workshops/mdps_rl/problems_mdps_rl.pdf)
+ [solutions_mdps_rl.pdf](https://github.com/ChrisLinn/comp90054-cheat/blob/master/workshops/mdps_rl/problems_mdps_rl.pdf)

## 1. Differences between Sarsas and Q-learning

## 4. TD
### TD(0)
`V(s) = V(s) + alpha*delta = V(s) + alpha*(r + gama*V(s') - V(s))`

using `alpha = 1`
```
V(Messi, shoot) = -2 + 1*(-2 + 0.9*1 - (-2)) = -1.1
V(Suarez, pass) = -1.2 + 1*(-1 + 0.9*(-2) - (-1.2)) = -2.8
V(Scored, return) = 1 + 1*(2 + 0.9*(-2) - 1) = 0.2
```