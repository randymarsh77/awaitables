// swift-tools-version:5.1
import PackageDescription

let package = Package(
	name: "Awaitables",
	products: [
		.library(
			name: "Awaitables",
			targets: ["Awaitables"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/randymarsh77/async", .branch("master")),
		.package(url: "https://github.com/randymarsh77/cancellation", .branch("master")),
		.package(url: "https://github.com/randymarsh77/streams", .branch("master")),
		.package(url: "https://github.com/randymarsh77/time", .branch("master")),
	],
	targets: [
		.target(
			name: "Awaitables",
			dependencies: ["Async", "Cancellation", "Streams", "Time"]
		),
	]
)
