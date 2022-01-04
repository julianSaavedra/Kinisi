accessing
universalChangeSpecifications

	| universalChangeSpecifiations |
	universalChangeSpecifiations := OrderedCollection new. 
	gravitationalSpecification ifNotNil: [ universalChangeSpecifiations add: gravitationalSpecification ].
	^universalChangeSpecifiations