private
updateSelectedChangeSpecificationWith: changeSpecification

	selectedChangeSpecification := self
		instantiate: ChangeComponentSpecificationPresenter
		on: changeSpecification.
	selectedChangeSpecification whenModelChangeDo: [:newSpecification | 
		self inSelectedParticleReplace: changeSpecification with: newSpecification ]