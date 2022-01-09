initialization
setModelBeforeInitialization: anInterfaceSpec

	super setModelBeforeInitialization: anInterfaceSpec.
	interfaceSpec := anInterfaceSpec.
	modelChangeAction := [:newSpec | ]