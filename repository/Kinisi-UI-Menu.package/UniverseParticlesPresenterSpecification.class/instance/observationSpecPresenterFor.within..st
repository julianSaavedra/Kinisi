API
observationSpecPresenterFor: interfaceDefinitionSpec within: ownerPresenter

	^(self observationSpecPresenterCreatorWithin: ownerPresenter)
		newPresenterFor: interfaceDefinitionSpec