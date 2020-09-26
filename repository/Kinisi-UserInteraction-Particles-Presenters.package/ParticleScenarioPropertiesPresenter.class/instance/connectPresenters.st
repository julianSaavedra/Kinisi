initialization
connectPresenters

	name
		text: particle particleName;
		acceptBlock: [:newName | 
			[particle particleName: newName.
			postNameChangeBlock value.
			self updateTitle] on: Error do: [:error |
				ErrorDialogWindow new text: error messageText; 	open.
				name text: particle particleName] ].
	color changeModelWith: [:newColor | particle color: newColor ]