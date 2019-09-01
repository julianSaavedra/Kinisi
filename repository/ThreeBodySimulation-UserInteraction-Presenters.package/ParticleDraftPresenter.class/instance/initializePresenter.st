initialization
initializePresenter

	position whenModelChangesDo: [ view refresh ].
	velocity whenModelChangesDo: [ view refresh ].
	name
		text: particleDraft particleName;
		acceptBlock: [:newName | 
			[particleDraft particleName: newName.
			self updateTitle] on: Error do: [:error |
				ErrorDialogWindow new text: error messageText; 	open.
				name text: particleDraft particleName] ].
	color
		setSelectedItem: particleDraft color;
		whenSelectedItemChanged: [:newColor |
			particleDraft color: newColor.
			view refresh ]