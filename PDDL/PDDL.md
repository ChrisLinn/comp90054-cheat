# PDDL

+ `and` is not supposed to be used in _initial states_ 
+ use `not` for __DELETE__ notation
    * seems legal to have `not` in _initial states_, though doing so is not __STRIP__ at all
+ define your domain carefully!
    * in blocksworld domain, `armFree` should be exclusive with `holding(x)`, but seems __PDDL__ itself provides no syntax to guarantee this
        - but not-having-exclusion is good for __DELETE RELAXATION__