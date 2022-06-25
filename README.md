# rocm-tests
ROCm Source Code Testing Repository

# Overview
This repository contains a sample of example ROCm programs brought in as 
submodules and Makefiles that will properly build such. The purpose of this
repository is to test various ROCm versions under Gentoo Linux. At the time
of this document's creation these versions include:
* ROCm v4.3 per `dev-util/amd-rocm-meta-4.3.ebuild` per https://github.com/justxi/rocm/pull/204
* ROCm v5.0 per `dev-util/amd-rocm-meta-5.0-r1.ebuild` per https://github.com/justxi/rocm/pull/204
from the https://github.com/justxi/rocm overlay.

# Using This Repository
To use this repository, first ensure ROCm is installed under Gentoo Linux.
(One does not need to install a Linux kernel specific to ROCm.) Then ensure
the git submodules are properly initialized, e.g.,
* `git submodule init`
* `git submodule update`
and finally build and run the examples, e.g.,
* `cd src ; ./build-and-run.sh`
