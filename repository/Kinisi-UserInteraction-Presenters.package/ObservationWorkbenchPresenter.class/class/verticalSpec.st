specs
verticalSpec

	| period |

	period := SpBoxLayout newHorizontal
		add: #periodLabel withConstraints: [ :contraints | 
			contraints bePlacedAtStart; width: 50; padding: 5 ];
		add: #periodAmount withConstraints: [ :contraints | 
			contraints width: 80; padding: 5 ];
		add: #periodUnit withConstraints: [ :contraints | 
			contraints width: 110; padding: 5 ];
		yourself.

	^SpBoxLayout newVertical
		add: period expand: false;
		add: #interfaceDefinitions withConstraints: [:contraints | 
			contraints expand: true; fill: true; padding: 5; spec: #verticalSpec ];
		yourself