support
periodSpec

	^SpBoxLayout newHorizontal
		add: #periodLabel withConstraints: [ :contraints | 
			contraints width: 50; padding: 2 ];
		add: #periodAmount withConstraints: [ :contraints | 
			contraints width: 80; padding: 2 ];
		add: #periodUnit withConstraints: [ :contraints | 
			contraints width: 110; padding: 2 ];
		yourself