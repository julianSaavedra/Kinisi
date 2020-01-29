tests
testNamesAreGeneratedWithPrefixGivenInInstanceCreationAndSuffixIsTheOrderOfEachGeneratedName

	| generator |
	generator := SequentialNameGenerator with: 'GeneratorTest'.

	self assert: generator next equals: 'GeneratorTest1'.
	self assert: generator next equals: 'GeneratorTest2'.
	self assert: generator next equals: 'GeneratorTest3'