support
updateActionsBasedOn: particleState and: particleColor

	^OrderedCollection new
		add: [:particleObservation | particleObservation particleName: particleState particleName ];
		add: [:particleObservation | particleObservation mass: particleState mass ];
		add: [:particleObservation | particleObservation position: particleState position ];
		add: [:particleObservation | particleObservation velocity: particleState velocity ];
		add: [:particleObservation | particleObservation acceleration: particleState acceleration ];
		add: [:particleObservation | particleObservation color: particleColor ];
		yourself