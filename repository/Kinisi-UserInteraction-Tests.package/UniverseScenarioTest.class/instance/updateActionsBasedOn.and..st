support
updateActionsBasedOn: particleState and: particleColor

	^OrderedCollection new
		add: [:particle | particle particleName: particleState particleName ];
		add: [:particle | particle mass: particleState mass ];
		add: [:particle | particle position: particleState position ];
		add: [:particle | particle velocity: particleState velocity ];
		add: [:particle | particle acceleration: particleState acceleration ];
		add: [:particle | particle color: particleColor ];
		yourself