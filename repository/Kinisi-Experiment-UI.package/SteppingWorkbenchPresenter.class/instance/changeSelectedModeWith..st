private
changeSelectedModeWith: newHelper

	currentHelper change: workbench to: newHelper.
	self resetSelectedMode.
	self update