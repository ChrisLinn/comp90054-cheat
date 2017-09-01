(define (domain blocksworld)
  (:requirements :strips)

  (:predicates (clear ?x)
               (on-table ?x)
               (holding ?x)
               (on ?x ?y)
               (armFree))

  (:action pickup
           :parameters (?ob)
           :precondition (and (clear ?ob)
                              (on-table ?ob)
                              (armFree))
           :effect (and (holding ?ob)
                        (not (clear ?ob))
                        (not (on-table ?ob))
                        (not (armFree))))

  (:action putdown
           :parameters (?ob)
           :precondition (holding ?ob)
           :effect (and (clear ?ob)
                        (on-table ?ob) 
                        (not (holding ?ob))
                        (armFree)))

  (:action stack
           :parameters (?ob ?underob)
           :precondition (and  (clear ?underob)
                                (holding ?ob))
           :effect (and (clear ?ob)
                        (on ?ob ?underob)
                        (not (clear ?underob))
                        (not (holding ?ob))
                        (armFree)))

  (:action unstack
           :parameters (?ob ?underob)
           :precondition (and (on ?ob ?underob)
                              (clear ?ob)
                              (armFree))
           :effect (and (holding ?ob)
                        (clear ?underob)
                        (not (on ?ob ?underob))
                        (not (clear ?ob))
                        (not (armFree)))))