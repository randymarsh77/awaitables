import PackageDescription

let package = Package(
    name: "Awaitables",
    dependencies: [
		.Package(url: "https://github.com/randymarsh77/async", majorVersion: 1),
		.Package(url: "https://github.com/randymarsh77/cancellation", majorVersion: 1),
		.Package(url: "https://github.com/randymarsh77/time", majorVersion: 2),
	]
)
