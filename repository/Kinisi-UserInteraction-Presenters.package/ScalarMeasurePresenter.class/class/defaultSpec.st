specs
defaultSpec
		
	^SpecLayout composed
		newRow: [:row |
			row
				add: #name width: 70;
				newRow: [:valuesRow |
					valuesRow
						add: #amount origin: 0@0 corner: 0.4@1;
						add: #unit origin: 0.4@0 corner: 1@1]
			] height: 20;
		yourself