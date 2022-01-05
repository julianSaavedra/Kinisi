menu construction
buildUsing: builder

	| menu |
	menu := self new.
	(builder item: #Kinisi)
		label: 'Kinisi';
		iconName: #remote;
		order: 2.5;
		help: 'Kinisi simulation workbenchs';
		withSeparatorAfter;
		with: [ self buildKinisiSubMenusUsing: builder in: menu ]