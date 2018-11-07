# br-template

> Your faster way to startup a buildroot project

## About

br-template is a set of Makefile rules and configurations files to easily setup a buildroot based project.
It's a template: you can fork it and personalize it  as you want.

What br-template offers:

* Easy to use project structure: your files are under a br2-external tree so the don't mess with the main buildroot files
* Buildroot is downloaded and extracted as is, so you can version only your files.
* Easily generates an swu update files for swupdate

## Command line

```
br-template help

Building
  all                    - compiles everything
  image                  - produces images files in out/images
  update                 - produces an update swu file in out/update

Cleaning
  clean                  - removes everything but keeps dl folder
  distclean              - reset the project to a clean state
  withdocker             - builds using docker

Buildroot management
qemu_arm_versatile_custom [TARGET]
                         - calls TARGET on qemu_arm_versatile_custom buildroot makefile
qemu_arm_versatile_custom_recovery [TARGET]
                         - calls TARGET on qemu_arm_versatile_custom_recovery buildroot makefile
```
