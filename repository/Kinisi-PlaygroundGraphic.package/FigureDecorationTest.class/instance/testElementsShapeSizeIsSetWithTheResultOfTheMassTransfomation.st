tests
testElementsShapeSizeIsSetWithTheResultOfTheMassTransfomation

	| element massTrasnformationResult shapeSize testResource physicalState decoration |
	testResource := PhysicsTestResource new.
	physicalState := physicalState := testResource physicalStateWith: testResource twoKilograms.
	element := RTElement new.
	element model: physicalState.
	massTrasnformationResult := 20.
	decoration := FigureDecoration with: Color red and: (ConstantTransformation with: massTrasnformationResult).

	self
		overrideMethodNamed: #size:
		in: RTEllipse
		with: [:receiver :arguments | shapeSize := arguments first]
		during: [ decoration applyOn: element ].

	self assert: shapeSize equals: massTrasnformationResult
	
	
	