baseline
baseline: spec 
	<baseline>
	
	spec for: #common do: [ 
		spec project: 'ZincHTTPComponents' with: [ 
			spec 
				className: 'ConfigurationOfZincHTTPComponents';
				repository: 'github://svenvc/zinc/repository';
				loads: #('Core' 'SSO-OAuth2');
				versionString: '3.0.1' ].
		spec project: 'Neo-JSON-Core' with: [ 
			spec 
				className: 'ConfigurationOfNeoJSON';
				repository: 'github://svenvc/NeoJSON/repository';
				versionString: '17' ].
		spec 
			package: 'Google-API' with: [ spec requires: #('ZincHTTPComponents' 'Neo-JSON-Core') ] ]
		