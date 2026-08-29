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
					spec
						repository:	'github://devid-rudesheim/Kernel-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimUtility'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/Utility-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimTableQuery'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/Table-Query-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimTooling'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/Tooling-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimOpenCL'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/OpenCL-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimMachineLearning'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/MachineLearning-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimNeuralNetwork'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/NeuralNetwork-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimGeneticAlgorithm'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/GeneticAlgorithm-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimPipe'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/Pipe-Rudesheim-Pharo:develop'.
				];
				baseline:	'RudesheimHTTP'
				with:
				[
					spec
						repository:	'github://devid-rudesheim/HTTP-Rudesheim-Pharo:develop'.
				];
				project:	'RudesheimKernelTests'
				copyFrom:	'RudesheimKernel'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimUtilityTests'
				copyFrom:	'RudesheimUtility'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimTableQueryTests'
				copyFrom:	'RudesheimTableQuery'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimToolingTests'
				copyFrom:	'RudesheimTooling'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimOpenCLTests'
				copyFrom:	'RudesheimOpenCL'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimMachineLearningTests'
				copyFrom:	'RudesheimMachineLearning'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimNeuralNetworkTests'
				copyFrom:	'RudesheimNeuralNetwork'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimGeneticAlgorithmTests'
				copyFrom:	'RudesheimGeneticAlgorithm'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimPipeTests'
				copyFrom:	'RudesheimPipe'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				project:	'RudesheimHTTPTests'
				copyFrom:	'RudesheimHTTP'
				with:
				[
					spec
						loads:	#( 'tests' ).
				];
				group:	#core
				with:
				#(
					'RudesheimKernel'
					'RudesheimUtility'
					'RudesheimTableQuery'
					'RudesheimTooling'
					'RudesheimOpenCL'
					'RudesheimMachineLearning'
					'RudesheimNeuralNetwork'
					'RudesheimGeneticAlgorithm'
					'RudesheimPipe'
					'RudesheimHTTP'
				);
				group:	#tests
				with:
				#(
					'RudesheimKernelTests'
					'RudesheimUtilityTests'
					'RudesheimTableQueryTests'
					'RudesheimToolingTests'
					'RudesheimOpenCLTests'
					'RudesheimMachineLearningTests'
					'RudesheimNeuralNetworkTests'
					'RudesheimGeneticAlgorithmTests'
					'RudesheimPipeTests'
					'RudesheimHTTPTests'
				);
				group:	#default
				with:	#( #core ).
		].
]
