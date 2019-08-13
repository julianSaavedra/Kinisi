initialization
initializedBasedOn: universeDraft and: configuration

	renderersMapping := Dictionary new.
	gridConfiguration := configuration.
	universeDraft particleDrafts do: [:particleDraft |
		renderersMapping at: particleDraft particleName put: particleDraft color ].