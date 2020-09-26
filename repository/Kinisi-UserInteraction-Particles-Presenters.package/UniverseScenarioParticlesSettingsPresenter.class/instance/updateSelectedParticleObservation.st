private
updateSelectedParticleObservation

	particleObservationList selection selectedItem
		ifNil:
			[ selectedParticleObservation := self instantiate: SpRoassalPresenter ]
		ifNotNil: [ :selection | 
			selectedParticleObservation := self
				instantiate: ParticleScenarioPresenter
				on: selection.
			selectedParticleObservation
				onChangeDo: universeObservationUpdateAction.
			self rebuild.
			particleObservationList selectItem: selection ]