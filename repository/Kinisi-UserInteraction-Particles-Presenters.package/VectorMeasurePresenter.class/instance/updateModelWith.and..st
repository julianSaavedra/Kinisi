private
updateModelWith: newXComponent and: newYComponent

	| newMeasure |
	newMeasure := MeasureVector x: newXComponent y: newYComponent z: measure z.
	measureChangeBlock value: newMeasure.
	measure := newMeasure