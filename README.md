# YACI
Yet Another CI pipeline project. This is a Powershell CI/CD project project that uses a Plaster template for creating new modules. It includes necessary files for VS Code integration.

# Overview
This project is an almagamation of several articles by Keith Marquette, Warren F (aka Rambling Cookie Monster), and Michael Willis (aka xainey). It provides a good starting structure for a Powershell module that will contain: Module scripts, Tests, Documentation, etc...

Cloning this project should give you a Plaster template that can scaffold into a module skeleton with some examples of: Public/Private functions, a build automation script, .vscode configs, Tests that succeed.

The tests that are included will test the following things:
- Dynamically test comment-based help for all public functions.
- Test the dynamically generated "<moduleName>.psd1" file is valid.
- Test a Private function using InModuleScope.
- Test that all Public functions match their filename. The .psm1 module import needs each public function to be in their own .ps1 file.

# Notable Mentions
Some of the files have been borrowed and slightly modified from other projects, below are links to the original projects:

Module.psm1 - Rambling Cookie Monster ([Link](https://github.com/RamblingCookieMonster/PSStackExchange/commit/db1277453374cb16684b35cf93a8f5c97288c41f))
Module_Help.Tests.ps1 - June Blender ([Link](https://github.com/juneb/PowerShellHelpDeepDive/commit/7f1df0e9c9e9a0d56196f187fc6f5c6230670e2d))
build.psake.ps1 - Plaster Project ([Link](https://github.com/PowerShell/Plaster/commit/bba719f1497e086d57b60bb1de5acc1390900a63))
build.settings.ps1 - Plaster Project ([Link](https://github.com/PowerShell/Plaster/commit/bba719f1497e086d57b60bb1de5acc1390900a63))