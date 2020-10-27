support
newButtonLabeled: label with: iconName doing: action

	^self newButton
		iconName: iconName;
		label: label;
		action: [ action
				on: Error do: [ :error | self openErrorWindowWith: error messageText ] ];
		yourself