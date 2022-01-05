# Kinisi

[![Build](https://github.com/julianSaavedra/Kinisi/actions/workflows/tests.yml/badge.svg)](https://github.com/julianSaavedra/Kinisi/actions/workflows/tests.yml)
[![Travis](https://app.travis-ci.com/julianSaavedra/Kinisi.svg)](https://app.travis-ci.com/julianSaavedra/Kinisi)
[![Coverage](https://coveralls.io/repos/github/julianSaavedra/Kinisi/badge.png)](https://coveralls.io/github/julianSaavedra/Kinisi)

"***Kinisi***" a virtual lab written in [Pharo](https://pharo.org/)  Smalltalk.

Kinisi is a lab to run virtual experiments. Users are able to set up different initial and environmental conditions and see how the subject system behaves. The observation of each experiment is done through interfaces that show the animation of the system, charts, stadistics, or a combination of them, depending on the user needs or desire. 

The name comes from the the pronunciation of the greek word "κίνηση", which means "*movement*".

## Supported Domains
Currently, Kinisi supports two main domains:
- ***Collatz Conjecture***: given an initial natural number, this famous still unresolved problem creates a sequence of numbers that always converge to 1.[^1]
- ***Particles***: a system of point particles can be configured with given initial conditions and see how the interact with each other during an interval of time. Point particles can be used to model small objects or even planets![^2]

[^1]: More details on the conjecture can be found [here](https://en.wikipedia.org/wiki/Collatz_conjecture).
[^2]: Impact is not currently supported. It should be added in the near future.

Let's install Kinisi and start playing with it!

## Download Kinisi

In a Pharo image, execute the following script:

```
Metacello new
    baseline: 'Kinisi';
    githubUser: 'julianSaavedra' project: 'Kinisi' commitish: 'master' path: 'repository';
    load: 'Deployment'
```

### Available packages groups:
- ```Deployment```: it has all the Model, UI and Examples to open Kinisi and play with it.
- ```CI```: includes Deployment and all the project tests that are loaded as part of the CI validations.
- ```Development```: includes all the packages in the repository and it's the one that should be use to extend Kinisi.
