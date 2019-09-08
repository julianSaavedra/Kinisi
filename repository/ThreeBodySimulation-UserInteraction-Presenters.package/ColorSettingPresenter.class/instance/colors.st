initialization
colors

	^Color registeredColorNames sort
		collect: [:colorName | Color named: colorName ]