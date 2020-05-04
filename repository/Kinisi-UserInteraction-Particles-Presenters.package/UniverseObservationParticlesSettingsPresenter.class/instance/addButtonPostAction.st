private
addButtonPostAction

	| previousSelectedItem |
	previousSelectedItem := particleObservationList selectedItem.
	self refillParticleObservationList.
	previousSelectedItem ifNil: [ particleObservationList updateList ].
	self performUniverseObservationUpdateAction