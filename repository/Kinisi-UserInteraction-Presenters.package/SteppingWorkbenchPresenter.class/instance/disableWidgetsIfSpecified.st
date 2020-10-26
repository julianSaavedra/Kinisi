initialization
disableWidgetsIfSpecified

	specification isFixed ifTrue: [
		{ delta. modeList. selectedMode } do: [:presenter | presenter enabled: false ] ]