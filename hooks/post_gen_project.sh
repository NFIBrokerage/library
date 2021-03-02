#! /bin/bash

echo "running NFIBrokerage/library::hooks/post_gen_project.sh"

# once the project has been generated, we'll
# - format
# - get and lock deps

echo "==> mix format"
mix format

echo "==> mix deps.get"
mix deps.get
