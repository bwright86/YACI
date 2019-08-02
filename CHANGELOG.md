# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Include any notable changes here, and move them to a release section when publishing.


## [1.3.0] - 2019-08-02

### Fixed

- psakebuild.ps1 parameter settings to match with updated PowershellBuild settings
- plasterManifest.xml now has description added to Module Manifest file. It was missing before.

### Removed

- build.psake.ps1 and build.settings.ps1 scripts


## [1.2.0] - 2018-11-14

### Added

- Added PowershellBuild module for psake tasks

### Changed

- Reformatted folder structure, so template files are separate from git repo files

### Deprecated

- Deprecated the build.psake.ps1 and build.settings.ps1 scripts
