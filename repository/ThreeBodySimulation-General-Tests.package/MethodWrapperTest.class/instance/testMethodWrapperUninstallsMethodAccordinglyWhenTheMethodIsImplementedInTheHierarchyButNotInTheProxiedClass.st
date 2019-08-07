tests
testMethodWrapperUninstallsMethodAccordinglyWhenTheMethodIsImplementedInTheHierarchyButNotInTheProxiedClass

	| object |
	object := MethodWrapperTest new.
	object resetCount.
	self
		assertSuperclassButNot: MethodWrapperTest
		implements: #unexpectedEqualityStringBetween:and:.
	
	MethodWrapper
		before: #unexpectedEqualityStringBetween:and:
		in: MethodWrapperTest
		execute: [:receiver :arguments | receiver countOne ]
		during: [ object unexpectedEqualityStringBetween: nil and: nil ].

	self assert: object currentCountResult equals: 1.
	self
		assertSuperclassButNot: MethodWrapperTest
		implements: #unexpectedEqualityStringBetween:and:.

	object unexpectedEqualityStringBetween: nil and: nil.
	self assert: object currentCountResult equals: 1.