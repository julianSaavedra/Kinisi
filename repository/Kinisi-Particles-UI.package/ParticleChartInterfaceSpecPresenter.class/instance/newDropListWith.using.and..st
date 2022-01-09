private
newDropListWith: items using: interfaceSpecAccesorBlock and: interfaceSpecModifyingBlock

	| itemToSelect aList |
	aList := self newDropList.
	aList items: items.
	aList display: [:model | model name ].
	itemToSelect := aList items detect: [:model | model = interfaceSpecAccesorBlock value ].
	aList selectItem: itemToSelect.
	aList whenSelectedItemChangedDo: [ :selection | 
		selection ifNotNil: [
			self
				updateSpecModelWith: selection
				using: interfaceSpecModifyingBlock ] ].
	^ aList