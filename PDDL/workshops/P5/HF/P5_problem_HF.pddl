(define (problem bl-world)
	(:domain block_world)
	(:objects A B C - block T - table)
	(:init
		(on B T)
		(clear A)
		(clear B)
		(on A C)
		(on C T)
	)
	(:goal(
		and 
			(on A B)
			(on B C)
		)
	)
)