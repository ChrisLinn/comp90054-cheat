(define (domain block_world)
	(:requirements :strips :typing)
	(:types block)
	(:predicates
		(on ?above - block ?below - block)
		(onTable ?block - block)
		(holding ?block - block)
		(armFree)
		(clear ?block - block)
	)
	(:action stack
		:parameters(?above - block ?below - block)
		:precondition(
			and (holding ?above)
				(clear ?below)
		)
		:effect(
			and (clear ?above)
				(on ?above ?below)
				(armFree)
				(not (clear ?below))
				(not (holding ?above))
		)
	)
	(:action unstack
		:parameters(?above - block ?below - block)
		:precondition(
			and
				(clear ?above)
				(on ?above ?below)
				(armFree) 
		)
		:effect(
			and 
				(holding ?above)
				(clear ?below)
				(not (clear ?above))
				(not (on ?above ?below))
				(not (armFree))
		)
	)

	(:action putdown
		:parameters(?block - block)
		:precondition(
			and
				(holding ?block)
		)
		:effect(
			and
				(onTable ?block)
				(armFree)
				(clear ?block)
				(not (holding ?block))
		)
	)

	(:action pickup
		:parameters(?block - block)
		:precondition(
			and
				(onTable ?block)
				(armFree)
				(clear ?block)
		)
		:effect(
			and
				(holding ?block)
				(not (onTable ?block))
				(not (armFree))
				(not (clear ?block))
		)
	)
)