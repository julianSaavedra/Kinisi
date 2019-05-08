asserting
assertEqualDomainOfX: xMeasure y: yMeasure z: zMeasure

	((xMeasure sameDomainAs: yMeasure)
		and: [ yMeasure sameDomainAs: zMeasure ])
		ifFalse: [ PhysicsModelError signal: 'Measures are not in the same domain.' ]