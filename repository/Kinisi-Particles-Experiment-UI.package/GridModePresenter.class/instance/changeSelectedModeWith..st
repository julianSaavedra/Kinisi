private
changeSelectedModeWith: newHelper

	currentHelper change: workbench to: newHelper.
	postModelChangeAction value.
	self resetSelectedMode.
	self update