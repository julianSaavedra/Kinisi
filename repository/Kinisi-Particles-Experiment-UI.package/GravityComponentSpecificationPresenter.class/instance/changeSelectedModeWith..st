private
changeSelectedModeWith: newHelper

	newHelper change: workbench.
	"postModelChangeAction value."
	self resetSelectedMode.
	self update