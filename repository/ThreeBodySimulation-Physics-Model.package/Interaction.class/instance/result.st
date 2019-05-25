accessing
result

	| distanceVector squaredDistance |
	distanceVector := causingBody position - overBody position.
	squaredDistance := distanceVector norm * distanceVector norm.
	^distanceVector normalized
		*
			(self gravitationalConstant * causingBody mass * overBody mass
				/ squaredDistance)