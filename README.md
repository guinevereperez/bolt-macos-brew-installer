# Bolt macOS Brew Installer

A Puppet Bolt project for automating the installation of macOS packages using Homebrew.

## Features
- Install multiple brew packages via one plan.
- Fully local and Bolt-compatible.
- GitHub release ready with zip archive.

## Usage

### Run with Bolt:
```bash
bolt plan run mymodule::install_packages packages='["htop", "tree", "wget"]' --targets localhost
```

### Directory Structure
```
bolt_project/
├── bolt.yaml
├── modules/
│   └── mymodule/
│       ├── plans/
│       │   ├── install_packages.pp
│       │   └── install_package_loop.pp
│       └── tasks/
│           ├── install_brew_package.sh
│           └── install_brew_package.json
```

## License
MIT

---

![GitHub release](https://img.shields.io/github/v/release/guinevereperez/bolt-macos-brew-installer)
