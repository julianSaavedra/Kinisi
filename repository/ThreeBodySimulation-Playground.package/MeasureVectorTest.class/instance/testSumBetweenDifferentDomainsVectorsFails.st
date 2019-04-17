tests
testSumBetweenDifferentDomainsVectorsFails

	| newtonVectorialMeasure meterVectorialMeasure |

	newtonVectorialMeasure := MeasureVector x: 1 y: 1 z: 1 with: newton.
	meterVectorialMeasure := MeasureVector x: 2 y: 2 z: 2 with: meter.

	self
		should: [ newtonVectorialMeasure + meterVectorialMeasure ]
		raise: SimulationError