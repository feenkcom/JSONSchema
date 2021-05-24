accessing
gtViewPropertiesTreeFor: aView
	<gtView>
	^ aView columnedTree
		title: 'Properties';
		items: [ self gtExpandedProperties associations ];
		children: [ :each | 
			each value gtExpandedProperties associations ];
		column: 'Property' text: [ :assoc | assoc key ];
		column: 'Schema' text: [ :assoc | assoc value ];
		send: #value