Class {
	#name : 'BaselineOfRudesheim',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRudesheim',
	#package : 'BaselineOfRudesheim'
}

{ #category : 'baselines' }
BaselineOfRudesheim >> baseline: spec [
	<baseline>

	spec
		for:	#common
		do:
		[
			spec
				baseline:	'RudesheimKernel'
				with:
				[
					spec repository: 'github://devid-rudesheim/Kernel-Rudesheim-Pharo:main'.
				];
				baseline:	'RudesheimUtility'
				with:
				[
					spec repository: 'github://devid-rudesheim/Utility-Rudesheim-Pharo:main'.
				];
				baseline:	'RudesheimTableQuery'
				with:
				[
					spec repository: 'github://devid-rudesheim/Table-Query-Rudesheim-Pharo:main'.
				];
				baseline:	'RudesheimTooling'
				with:
				[
					spec repository: 'github://devid-rudesheim/Tooling-Rudesheim-Pharo:main'.
				];
				baseline:	'RudesheimOpenCL'
				with:
				[
					spec repository: 'github://devid-rudesheim/OpenCL-Rudesheim-Pharo:main'.
				];
				baseline:	'RudesheimNeuralNetwork'
				with:
				[
					spec repository: 'github://devid-rudesheim/NeuralNetwork-Rudesheim-Pharo:main'.
				];
				baseline:	'RudesheimPipe'
				with:
				[
					spec repository: 'github://devid-rudesheim/Pipe-Rudesheim-Pharo:main'.
				];

				project:	'RudesheimKernelTests'       copyFrom: 'RudesheimKernel'       with: [ spec loads: #('tests') ];
				project:	'RudesheimUtilityTests'      copyFrom: 'RudesheimUtility'      with: [ spec loads: #('tests') ];
				project:	'RudesheimTableQueryTests'   copyFrom: 'RudesheimTableQuery'   with: [ spec loads: #('tests') ];
				project:	'RudesheimToolingTests'      copyFrom: 'RudesheimTooling'      with: [ spec loads: #('tests') ];
				project:	'RudesheimOpenCLTests'       copyFrom: 'RudesheimOpenCL'       with: [ spec loads: #('tests') ];
				project:	'RudesheimNeuralNetworkTests' copyFrom: 'RudesheimNeuralNetwork' with: [ spec loads: #('tests') ];
				project:	'RudesheimPipeTests'         copyFrom: 'RudesheimPipe'         with: [ spec loads: #('tests') ];

				group:	#core
				with:
				#(
					'RudesheimKernel' 'RudesheimUtility' 'RudesheimTableQuery'
					'RudesheimTooling' 'RudesheimOpenCL' 'RudesheimNeuralNetwork' 'RudesheimPipe'
				);
				group:	#tests
				with:
				#(
					'RudesheimKernelTests' 'RudesheimUtilityTests' 'RudesheimTableQueryTests'
					'RudesheimToolingTests' 'RudesheimOpenCLTests' 'RudesheimNeuralNetworkTests' 'RudesheimPipeTests'
				);
				group:	#default
				with:	#(#core).
		]
]
