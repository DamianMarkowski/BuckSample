# BuckSample

This is a simplified and slightly updated version of the Airbnb's BuckSample project available here: [https://github.com/airbnb/BuckSample](https://github.com/airbnb/BuckSample). 

### To Install

```sh
# Install Buck
make install_buck
```

Note: you may need to [install Java 8](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) before `buck` will run for you locally.

### Running Tests

In order to run the unit tests, execute the following command in a terminal: `make test`.

<img src="https://github.com/airbnb/BuckSample/raw/master/Docs/CommandLineTests.png" width=500 />

### Viewing Targets
You may run `make targets` to see a list of Buck targets available to build/test/etc.

<img src="https://github.com/airbnb/BuckSample/raw/master/Docs/BuckTargets.png" width=450 />

### Viewing Dependencies
You may run `buck query "deps(//App:ExampleAppBinary)" --dot > result.dot` to save Graphviz output of the dependency tree starting at the rule `//App:ExampleAppBinary`. You may then run `dot -Tpng result.dot -o result.png` to create a PNG image showing this dependency structure.

<img src="https://github.com/airbnb/BuckSample/raw/master/Docs/DependencyGraph.png" />

### Generating an Xcode Project
To generate the project from the terminal, just run `make project`. You can then run in the simulator or press `Cmd + U` to run the tests.

You may also use breakpoints, just like normal when using the generated Xcode project.

<img src="https://github.com/airbnb/BuckSample/raw/master/Docs/Breakpoint.png" width=500 />

### Generating a Buck Local Xcode Project
Buck Local is a tool that generates an Xcode project which invokes Buck to do the build when you press the Build button in Xcode. It makes
builds much faster while still allowing you to use Xcode as usual: jumping to definition, auto completion, debugging, etc., all works out of box.

To generate a Buck Local Xcode project, simply run `make buck_local_project`.

### CLI

```bash
# generating and opening a Xcode project
make project

# building with Buck CLI
make debug
```

### Useful resources 
1. [Offical Buck website](https://buck.build)
1. [Slack workspace](https://buckbuild.slack.com)
1. [iOS Tooling at Uber](https://vimeo.com/208053716)
1. [Building iOS Apps without Xcode - iOS Conf SG 2019](https://www.youtube.com/watch?v=JRsWi8KC2Sw)
1. [Basics: Building with Buck](https://www.youtube.com/watch?v=sZdDFfNJeuU)
