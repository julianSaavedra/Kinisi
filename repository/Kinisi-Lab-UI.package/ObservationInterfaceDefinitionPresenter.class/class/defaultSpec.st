specs
defaultSpec

	| nameLayout |
	nameLayout := SpBoxLayout newHorizontal
		spacing: 5;
		add: 'Name:' expand: false fill: false padding: 10;
		add: #name width: 300;
		yourself.

	^SpBoxLayout newVertical
		add: nameLayout expand: false;
		add: #spec expand: true fill: true padding: 5;
		yourself