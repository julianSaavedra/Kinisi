asserting
assertEqualDomainOfX: xMeasure y: yMeasure z: zMeasure

	((xMeasure sameDomainAs: yMeasure)
		and: [ yMeasure sameDomainAs: zMeasure ])
		ifFalse: [ SimulationError signal: 'Measures are not in the same domain.' ]