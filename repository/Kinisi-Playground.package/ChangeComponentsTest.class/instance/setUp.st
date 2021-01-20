tests
setUp

	super setUp.
	resource := PhysicsTestResource new.
	particle := resource physicalStateWith: resource twoKilograms