#!/usr/bin/env bash

cd "${BASH_SOURCE%/*}" &&
GitSetup/setup-user && echo &&
GitSetup/setup-hooks && echo &&
GitSetup/setup-gerrit && echo &&
GitSetup/setup-aliases && echo &&
GitSetup/tips

# Rebase master by default
git config rebase.stat true
git config branch.master.rebase true

# Record the version of this setup so Scripts/pre-commit can check it.
SetupForDevelopment_VERSION=1
git config hooks.SetupForDevelopment ${SetupForDevelopment_VERSION}
