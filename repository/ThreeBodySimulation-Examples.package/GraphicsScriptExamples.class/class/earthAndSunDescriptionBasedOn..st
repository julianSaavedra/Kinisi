examples - grid
earthAndSunDescriptionBasedOn: observableUniverseState

	| sunDescription descriptions earthDescription |
	earthDescription := Dictionary new
		at: #size put: 10;
		at: #color put: Color lightBlue;
		at: #particleName put: #Earth;
		yourself.
	sunDescription := Dictionary new
		at: #size put: 100;
		at: #color put: Color yellow;
		at: #particleName put: #Sun;
		yourself.
	descriptions := Array with: earthDescription with: sunDescription.
	descriptions do: [ :aDescription | 
		observableUniverseState physicalStates
			detect: [ :aPhysicalState | aPhysicalState particleName = (aDescription at: #particleName) ]
			ifFound: [ :physicalState | aDescription at: #position put: physicalState position ] ].

	^descriptions