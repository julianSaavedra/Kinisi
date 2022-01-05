initialization
newDropListOn: items with: modifierCreation using: settingAccess

	| list |
	list := self newDropList.
	list items: items.
	list selectItem: settingAccess value.
	list
		whenSelectedItemChangedDo: [ :targetItem | 
			[ modifierCreation value: targetItem.
			self doPostUpdateAction ]
				on: Error
				do: [ :error | 
					self showWindowFor: error.
					list selectItem: settingAccess value ] ].
	^ list