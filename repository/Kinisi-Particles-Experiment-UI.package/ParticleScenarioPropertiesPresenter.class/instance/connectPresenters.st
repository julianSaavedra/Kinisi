initialization
connectPresenters

	name
		text: particle particleName;
		whenSubmitDo: [ :newName | 
			[ particle particleName: newName text asString.
			postNameChangeBlock value.
			true ] 	on: Error do: [:error | 
				self openErrorWindowWith: error messageText.
				false ] ].
	color changeModelWith: [ :newColor | particle color: newColor ]