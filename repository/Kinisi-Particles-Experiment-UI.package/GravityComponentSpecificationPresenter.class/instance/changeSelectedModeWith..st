private
changeSelectedModeWith: newHelper

	currentHelper ~= newHelper ifTrue: [
		newHelper change: workbench.
		self resetSelectedMode.
		self update ]