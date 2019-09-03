private
addButtonPostAction

	| previousSelectedItem |
	previousSelectedItem := particleDraftList selectedItem.
	self setParticleDraftListItemsFromUniverse.
	previousSelectedItem ifNil: [ particleDraftList updateList ]