accessing
gtViewDefinitionsFor: aView
	<gtView>
	^ aView forward
		title: 'Definitions';
		object: [ definitions ];
		view: #gtItemsFor: