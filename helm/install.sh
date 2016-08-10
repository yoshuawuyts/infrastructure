#!/bin/sh

set -e

printf '[helm] initializing helm-charts'
helmc up
helmc repo add buildkite https://github.com/buildkite/helm-charts
helmc up
