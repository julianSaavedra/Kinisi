API
whenModelChangesDo: anUniverseChangeAction
 
	notebook pages do: [:page |
		page presenterProvider whenModelChangesDo: anUniverseChangeAction ]