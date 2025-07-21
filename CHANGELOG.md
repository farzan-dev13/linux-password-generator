# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---
## [v1.3.0] - 2025-07-21
### Added
-Password strength scoring: classify generated passwords from *Very Weak* to *Very Strong*

### Changed
-Code cleanup and comment improvements
-Minor edge case fixes

---

## [1.2.0] - 2025-07-19
### Added
- New option `--output FILE` to save generated passwords to a file
- All previous CLI options from version 1.1.0 retained

---

## [1.1.0] - 2025-07-18
### Added
- CLI option for password length (`--length`)
- Option to generate multiple passwords (`--number`)
- Simple mode without symbols (`--simple`)

---

## [1.0.0] - 2025-07-18
### Added
- Basic password generator using /dev/urandom
