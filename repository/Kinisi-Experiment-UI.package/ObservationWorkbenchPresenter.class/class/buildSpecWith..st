support
buildSpecWith: definitionSpec

	^SpBoxLayout newVertical
		add: self periodSpec height: 22;
		add: #interfaceDefinitions withConstraints: [ :contraints | 
			contraints
				expand: true;
				fill: true;
				padding: 5;
				spec: definitionSpec ];
		yourself