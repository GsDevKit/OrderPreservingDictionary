outdated - versions
version138: spec 
        <version: '1.3.8' imports: #('1.3.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.33'.
			spec package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-monty.27'.
                ].