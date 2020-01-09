initialization
initializePresenter

	name
		text: particleDraft particleName;
		acceptBlock: [:newName | 
			[particleDraft particleName: newName.
			postNameChangeBlock value.
			self updateTitle] on: Error do: [:error |
				ErrorDialogWindow new text: error messageText; 	open.
				name text: particleDraft particleName] ].
	color changeModelWith: [:newColor | particleDraft color: newColor ]