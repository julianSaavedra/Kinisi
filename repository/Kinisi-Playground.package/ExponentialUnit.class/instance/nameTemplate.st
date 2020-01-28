accessing
nameTemplate

	| templateConditionValueCollection |
	
	templateConditionValueCollection := OrderedCollection new.
	templateConditionValueCollection
		add: [ exponent = 2 ] -> 'Square <1s>';
		add: [ exponent = 3 ] -> 'Cubic <1s>'.		
	
	^templateConditionValueCollection
		detect: [:conditionValuePair | conditionValuePair key value ]
		ifFound: [:conditionValuePair | conditionValuePair value ]
		ifNone: [ '<1s> raised to ' , exponent asString ]