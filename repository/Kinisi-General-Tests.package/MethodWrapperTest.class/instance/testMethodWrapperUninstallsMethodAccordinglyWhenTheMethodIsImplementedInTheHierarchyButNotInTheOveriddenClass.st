tests
testMethodWrapperUninstallsMethodAccordinglyWhenTheMethodIsImplementedInTheHierarchyButNotInTheOveriddenClass

	| object textToBeReturned returnedText originalReturnedText |
	object := MethodWrapperTest new.
	originalReturnedText := object unexpectedEqualityStringBetween: nil and: nil.
	self
		assertSuperclassButNot: MethodWrapperTest
		implements: #unexpectedEqualityStringBetween:and:.
	
	textToBeReturned := 'A dummy string.'.
	MethodWrapper
		overriding: #unexpectedEqualityStringBetween:and:
		in: MethodWrapperTest
		with: [:receiver :arguments | textToBeReturned ]
		during: [ returnedText := object unexpectedEqualityStringBetween: nil and: nil ].

	self
		assertSuperclassButNot: MethodWrapperTest
		implements: #unexpectedEqualityStringBetween:and:.
		
	self assert: returnedText equals: textToBeReturned.
	self
		assert: originalReturnedText
		equals: (object unexpectedEqualityStringBetween: nil and: nil)