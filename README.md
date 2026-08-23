# Rudesheim-Pharo

Thin aggregator baseline for the published `*-Rudesheim-Pharo` repositories. It contains only
`BaselineOfRudesheim` and loads no code of its own — it exists so that all eight split repositories
can be loaded together with a single Metacello baseline, and so that mutual compatibility across
repositories can be checked before promoting any of them from `develop` to `main`.

Aggregated repositories:

- [Kernel-Rudesheim-Pharo](https://github.com/devid-rudesheim/Kernel-Rudesheim-Pharo)
- [Utility-Rudesheim-Pharo](https://github.com/devid-rudesheim/Utility-Rudesheim-Pharo)
- [Table-Query-Rudesheim-Pharo](https://github.com/devid-rudesheim/Table-Query-Rudesheim-Pharo)
- [Tooling-Rudesheim-Pharo](https://github.com/devid-rudesheim/Tooling-Rudesheim-Pharo)
- [OpenCL-Rudesheim-Pharo](https://github.com/devid-rudesheim/OpenCL-Rudesheim-Pharo)
- [NeuralNetwork-Rudesheim-Pharo](https://github.com/devid-rudesheim/NeuralNetwork-Rudesheim-Pharo)
- [Pipe-Rudesheim-Pharo](https://github.com/devid-rudesheim/Pipe-Rudesheim-Pharo)
- [HTTP-Rudesheim-Pharo](https://github.com/devid-rudesheim/HTTP-Rudesheim-Pharo)

## Branches

- `main` — protected integration branch for the aggregator. It currently pins the eight
  repositories at their own `develop` branch so CI checks the next promoted combination with a
  consistent dependency graph.
- `develop` — pins all eight repositories at their own `develop` branch. Moves continuously as any
  repository's `develop` advances; used to check cross-repository compatibility before promoting a
  `develop` branch to `main` in any of the eight repositories.

## Usage

```smalltalk
Metacello new
	baseline: 'Rudesheim';
	repository: 'github://devid-rudesheim/Rudesheim-Pharo:main';
	load: #tests.
```
