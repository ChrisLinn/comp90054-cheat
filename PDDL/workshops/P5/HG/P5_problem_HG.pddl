(define (problem bl-world)
	(:domain block_world)
	(:objects A B C)
	(:init
		(onTable B)
		(clear A)
		(clear B)
		(on A C)
		(onTable C)
	)
	(:goal(
		and 
			(on A B)
			(on B C)
		)
	)
)