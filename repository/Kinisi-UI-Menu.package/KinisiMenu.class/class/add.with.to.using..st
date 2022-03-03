private - menu construction
add: exampleItemDefinitions with: selector to: menu using: builder

	exampleItemDefinitions withIndexDo: [ :exampleDefinition :index | 
		| itemName |
		itemName := 'example<1s>' expandMacrosWith: index asString.
		(builder item: itemName)
			label: exampleDefinition label;
			target: menu;
			iconName: #menuPin;
			selector: selector;
			arguments: { exampleDefinition exampleSetting } ]