# Week 1 Introduction

# Outline
+ Introduction to AI and (AI) Planning
+ Classical Planning as Heuristic Search and Width-Based Search
+ Beyond Classical Planning
    * Factored-Model-Free
    * Non Determinism
    * Uncertainty
    * Soft goals
    * Plan Recognition
    * Epistemic (social) Planning
+ Reinforcement Learning: Learning through Experience
+ Multi agent Planning
+ Hot/Latest exciting discussions on AI Ethics

# Prerequisite
+ Algo (DP)
+ Set Theory
+ Propositional Logic
+ Probabilistic Theory

# AI
+ automation of intelligent behavior
    *  make rational action choices
+ Rational agents
    * Agents
        - do what
            + sensors -(perceive environment)-> percepts
            + actuators -(act upon environment)-> actions
        - examples
            + humans
            + animals
            + robots
            + software agents (softbots)
    * best case (‘the right thing’) is often unattainable
        - Rationality vs. Omniscience
        - Performance measure × Percepts × Knowledge → Action
+ what do AI do
    *  
    |           | Humanly   | Rationally |
    | -         | -         | -          |
    | Thinking  |           |            |
    | Acting    |           |            |
+ Solver
    * Linear Equations Model
    * tractable
+ AI solver
    * intractable
    * tasks
        - Constraint Satisfaction/SAT   --(generalize with non-boolean)--> CSPs
            + find state that satisfies constraints
            + NP-Complete
                * worst-case exponential in number of variables 
        - Planning Problems
            + find action sequence that produces desired state
        - Planning with Feedback
            + find strategy for producing desired state
+ Planning
    * model-based
    * NP-hard
    * planner
    * classical planning & ai planing