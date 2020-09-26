private
addButtonPostAction

	| previousSelectedItem |

	previousSelectedItem := particleObservationList selection
		selectedItem.
	self refillParticleObservationList.
	previousSelectedItem ifNil: [ particleObservationList updateList ].
	self performUniverseObservationUpdateAction