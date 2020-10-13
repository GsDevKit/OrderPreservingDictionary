outdated - versions
version122: spec
	<version: '1.2.2' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.12';
			package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-monty.9'. ].
