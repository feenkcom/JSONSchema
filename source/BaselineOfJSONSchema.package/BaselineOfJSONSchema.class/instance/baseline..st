baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:v17/repository' ];
			baseline: 'Mocketry' with: [
				spec repository: 'github://dionisiydk/Mocketry:v4.0.9' ].
		spec 
			package: 'JSONSchema-Core' with: [
				spec requires: #('NeoJSON' ). ];
			package: 'JSONSchema-Testsuite-Core' with: [
				spec requires: #('JSONSchema-Core' ). ];
			package: 'JSONSchema-Testsuite-Tests' with: [
				spec requires: #('JSONSchema-Core' 'JSONSchema-Testsuite-Core' ). ];
			package: 'JSONSchema-Core-Tests' with: [
				spec requires: #('JSONSchema-Core' 'Mocketry' ). ]. ].
