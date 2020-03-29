private
translate: velocityEndPointElement basedOn: velocity

	| normalizedVector vectorEndPointExtension normalizedVectorPoint |
	normalizedVector := velocity normalized.
	vectorEndPointExtension := 100.
	normalizedVectorPoint := normalizedVector x @ normalizedVector y negated.
	velocityEndPointElement translateTo: normalizedVectorPoint * vectorEndPointExtension