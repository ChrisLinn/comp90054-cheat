(define (domain block_world)
	(:requirements :strips :typing)
	(:types block table)
	(:predicates
		(on ?above - block ?below )
		(clear ?block - block)
	)
	(:action moveB2T
		:parameters(?above - block ?table - table ?below - block)
		:precondition(
			and (on ?above ?table)
				(clear ?below)
				(clear ?above)
		)
		:effect(
			and (on ?above ?below)
				(not (clear ?below))
				(not (on ?above ?below))
		)
	)
	(:action moveT2B
		:parameters(?above - block ?below - block ?table - table)
		:precondition(
			and (on ?above ?below)
				(clear ?above)
		)
		:effect(
			and (on ?above ?table)
				(clear ?below)
				(not (on ?above ?below))
		)
	)
)