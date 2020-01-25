tests
setUp

	super setUp.
	testResource := PhysicsTestResource new.
	oneKilogram := testResource oneKilogram.
	position := testResource oneMeterInAllComponentsVector.
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 2.
	acceleration := testResource velocityVectorWithAllComponentsWithAmount: 3.