# PDDL

## Basic
+ Requirements
+ Type
    * Type Hierarchy
+ Predicates
+ Action
    * Precondition
    * Effect

## Numeric Type

## Conditional Effects

## Pitfalls
+ `and` is not supposed to be used in _initial states_ 
+ use `not` for __DELETE__ notation
    * seems legal to have `not` in _initial states_, though doing so is not __STRIP__ at all
+ define your domain carefully!
    * in blocksworld domain, `armFree` should be exclusive with `holding(x)`, but seems __PDDL__ itself provides no syntax to guarantee this
        - but not-having-exclusion is good for __DELETE RELAXATION__

## Workshops 4 & 5
[Solution](https://github.com/ChrisLinn/comp90054-cheat/tree/master/PDDL/workshops), forked from Fanny's [repo](https://github.com/FannieHF/AI_S2_2017)

## Further Readings
+ [PDDL](http://idm-lab.org/wiki/icaps/ipc2004/deterministic/DOCS/pddl.ps.gz)
+ [PDDL2.1](http://idm-lab.org/wiki/icaps/ipc2004/deterministic/DOCS/pddl2.1.ps.gz)
+ [PDDL2.2](http://idm-lab.org/wiki/icaps/ipc2004/deterministic/DOCS/pddl2.2.ps.gz)
+ [pddl examples including strips, numeric, and time domains.](https://github.com/yarox/pddl-examples)
