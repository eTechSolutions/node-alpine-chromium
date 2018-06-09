# node-alpine-chromium
### Dockerized chromium, built on top of [official Node alpine](https://hub.docker.com/_/node/) images.

## About image

- [What, why, how?](#-what-why-how)
- [Image tags](#-image-tags)
- [Installed packages](#-installed-packages)
- [Environment variables](#-environment-variables)

### What, why, how?

Image intended to be used for angular build servers, with [Karma test runner](https://karma-runner.github.io/1.0/index.html) via [karma-chrome-launcher](https://github.com/karma-runner/karma-chrome-launcher) which uses headless Chromium

If you're interested into actual Karma configuration, it looks like:
```
  browsers: ['ChromeHeadlessNoSandbox'],
      customLaunchers: {
        ChromeHeadlessNoSandbox: {
          base: "ChromeHeadless",
          flags: ["--no-sandbox"]
        }
      },
```

### Image tags

- etechsolutions/node-alpine-chromium:8.11 (based on: node:8.11-alpine)

### Installed packages

Chromium stuff
- [udev](https://pkgs.alpinelinux.org/package/v3.5/main/x86_64/udev)
- [ttf-opensans](https://pkgs.alpinelinux.org/package/edge/testing/x86_64/ttf-opensans)
- [chromium](https://pkgs.alpinelinux.org/package/edge/community/x86_64/chromium)

### Environment variables
- `CHROME_BIN=/usr/bin/chromium-browser`
- `LIGHTHOUSE_CHROMIUM_PATH=/usr/bin/chromium-browser`

## Issues

If you run into any problems with this image, please check (and potentially file new) issues on the [etechsolutions/node-alpine-chromium](https://github.com/etechsolutions/node-alpine-chromium/issues) repository, which is the source for this image.

## License

node-alpine-chromium is licensed under the [MIT license](http://opensource.org/licenses/MIT).
