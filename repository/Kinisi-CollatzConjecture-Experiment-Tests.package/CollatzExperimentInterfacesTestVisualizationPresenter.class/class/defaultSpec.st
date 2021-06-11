specs
defaultSpec

	| classesAndTests |
	classesAndTests := SpBoxLayout newHorizontal.
	classesAndTests
		spacing: 10;
		add: #classes;
		add: #selectedClassTests.
	
	^SpBoxLayout newVertical
		spacing: 10;
		add: classesAndTests height: 150;
		add: #canvas ;
		yourself	