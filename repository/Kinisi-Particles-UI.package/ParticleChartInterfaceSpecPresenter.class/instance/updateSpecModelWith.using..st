private
updateSpecModelWith: newValue using: interfaceSpecModifyingBlock

	| newSpec |
	newSpec := interfaceSpecModifyingBlock value: newValue.
	modelChangeAction value: newSpec.
	interfaceSpec := newSpec