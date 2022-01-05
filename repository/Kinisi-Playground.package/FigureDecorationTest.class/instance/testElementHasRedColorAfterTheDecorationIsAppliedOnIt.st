tests
testElementHasRedColorAfterTheDecorationIsAppliedOnIt

	| element color testResource physicalState decoration |
	testResource := PhysicsTestResource new.
	physicalState := physicalState := testResource physicalStateWith: testResource twoKilograms.
	element := RTElement new.
	element model: physicalState.
	color := Color red.
	decoration := FigureDecoration with: color and: (ConstantTransformation with: 20).

	decoration applyOn: element.
	
	self assert: element color equals: color