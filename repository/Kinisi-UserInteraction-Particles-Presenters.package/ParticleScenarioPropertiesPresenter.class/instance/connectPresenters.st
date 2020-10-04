initialization
connectPresenters

	name
		text: particle particleName;
		acceptBlock: [ :newName | 
			[ particle particleName: newName.
			postNameChangeBlock value.
			true ] 	on: Error do: [:error | 
				self openErrorWindowWith: error messageText.
				false ] ].
	color changeModelWith: [ :newColor | particle color: newColor ]