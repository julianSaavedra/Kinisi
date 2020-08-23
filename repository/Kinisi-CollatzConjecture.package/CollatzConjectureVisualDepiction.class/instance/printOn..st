configuring
printOn: stream

	| text |
	text := 'Color: <1s> - Font: <2s> - Size: <3s> - Background: <4s>'
		expandMacrosWith: color name with: font with: size asString with: background name.
	stream nextPutAll: text
	