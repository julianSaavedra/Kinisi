private
translate: velocityEndPointElement basedOn: velocityVector

	| normalizedVector vectorEndPointExtension normalizedVectorPoint |
	normalizedVector := velocityVector normalized.
	vectorEndPointExtension := 100.
	normalizedVectorPoint := normalizedVector x @ normalizedVector y negated.
	velocityEndPointElement translateTo: normalizedVectorPoint * vectorEndPointExtension