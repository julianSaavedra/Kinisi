tests
testElementInViewIsMovedToPointGivenByPositionInPhysicalStateTransformedByScaleAndWithYValueNegated

	| view testResource physicalState element decoration  meter scale canvas |
	testResource := PhysicsTestResource new.
	view := RTView new.
	physicalState := testResource physicalStateIn: testResource oneMeterInAllComponentsVector.
	element := RTElement new.
	element
		addShape: RTEllipse new;
		model: physicalState.
	view add: element.
	meter := UnitProvider soleInstance meter.
	scale := 10 / (meter with: 1).
	
	decoration := PositionDecoration with: scale.

	decoration applyOn: element.
	
	canvas := view canvas.
	self assert: (canvas shapeForPosition: 10 @ 10 negated) element == element