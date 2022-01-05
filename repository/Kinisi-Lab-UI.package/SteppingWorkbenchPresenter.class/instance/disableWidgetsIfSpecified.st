initialization
disableWidgetsIfSpecified

	specification isFixed ifTrue: [
		{ delta. modeList. selectedMode } do: [:presenter |
			presenter layout: presenter defaultSpec.
			presenter enabled: false ] ]