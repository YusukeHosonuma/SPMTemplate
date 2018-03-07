APP={{APP_NAME}}

update:
	swift package update

build:
	swift build

test:
	swift test

debug:
	.build/debug/$(APP)

run: build debug

release-build:
	swift build --disable-sandbox -c release -Xswiftc -static-stdlib

xcode:
	swift package generate-xcodeproj
