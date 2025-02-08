# TomCryptSPM
## Setup
##### A note on versions
This package uses build flags that SPM considers unsafe so cannot be used within a versioned Swfit Package. To work around this, please consume this package using branch names instead (E.g. `main` or `release/v1.18.3`)

##### Setup with Swift Package Manager (in project)
* In Xcode select File > Add Packages.
* Enter this project's URL: https://github.com/DavidSouthgate/TomCryptSPM.git
* Specify branch version required (E.g. `main` or `release/v1.18.3`)

##### Setup with Swift Package Manager (in Swift Package)
* Add the following dependency in your package manifest

```
.package(url: "https://github.com/DavidSouthgate/TomCryptSPM.git", branch: "release/v1.18.3")
```