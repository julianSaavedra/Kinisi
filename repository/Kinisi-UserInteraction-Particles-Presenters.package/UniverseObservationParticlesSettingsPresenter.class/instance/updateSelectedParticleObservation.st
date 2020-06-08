private
updateSelectedParticleObservation

	particleObservationList selectedItem
		ifNil: [ selectedParticleObservation := self instantiate: RoassalModel ]
		ifNotNil: [:selection |
			selectedParticleObservation := self instantiate: ParticleObservationPresenter on: selection.
			selectedParticleObservation onChangeDo: universeObservationUpdateAction.
			self rebuild.
			particleObservationList setSelectedItem: selection]