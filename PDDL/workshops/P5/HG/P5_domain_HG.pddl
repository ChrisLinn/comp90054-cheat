;;this for the two actions block world
(define (domain block_world)
	(:requirements :strips)
	(:predicates
		(on ?above ?below)
		(onTable ?block)
		(clear ?block)
	)

	(:action putonBlock
		:parameters(?above ?below)
		:precondition(
			and (clear ?above)
				(clear ?below)
				(onTable ?above)
		)
		:effect(
			and 
				(on ?above ?below)
				(not (clear ?below))
				(not (onTable ?above))
		)
	)

	(:action putonTable
		:parameters(?above ?below)
		:precondition(
			and
				(on ?above ?below)
				(clear ?above)
		)
		:effect(
			and
				(onTable ?above)
				(clear ?below)
				(not (on ?above ?below))
		)
	)
)