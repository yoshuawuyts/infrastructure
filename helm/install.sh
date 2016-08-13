#!/bin/sh
# from https://github.com/buildkite/helm-charts

if ! [ -d '../secrets' ]; then
  printf 'cannot find dir ../secrets'
  exit 1
fi

printf '[helm] initializing helm-charts\n'
helmc up
helmc repo add buildkite https://github.com/buildkite/helm-charts
[ $? -eq 0 ] && helmc up

printf '[helm] fetching buildkite image\n'
helmc fetch buildkite/buildkite-agent-builder-private-git

printf '[helm] copying secrets\n'
cp ../secrets/helm/buildkite.toml \
  "$(helmc home)"/workspace/charts/buildkite-agent-builder-private-git/tpl/settings.toml

printf '[helm] creating local files\n'
helmc generate -f buildkite-agent-builder-private-git

printf '[helm] installing on kubernetes\n'
helmc install buildkite-agent-builder-private-git
