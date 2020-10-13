outdated - versions
version120: spec
	<version: '1.2' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec description: 'version 1.2'.
		spec author: 'GuillaumeLarcheveque'.
		spec timestamp: '6/27/2014 16:03'.
		spec 
			package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.9';
			package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-JAAyer.7'. ].
