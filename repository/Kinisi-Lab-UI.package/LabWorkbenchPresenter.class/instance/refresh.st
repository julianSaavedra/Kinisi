API
refresh

	notebook selectedPage ifNotNil: [:page |
		page presenterProvider refresh]