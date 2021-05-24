accessing
gtViewPropertiesFor: aView
	<gtView>
	^ aView forward
		title: 'Object Properties';
		object: [ self properties ];
		view: #gtItemsFor: