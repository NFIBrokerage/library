#! /bin/bash

echo "running NFIBrokerage/library::hooks/post_gen_project.sh"

# once the project has been generated, we'll
# - format
# - get and lock deps

{% if cookiecutter.private == "y" %}
mix hex.organization auth cuatro --key $(cat /etc/cuatro_secrets/cuatro_hex_key.txt)
{% endif %}

echo "==> mix deps.get"
mix deps.get

echo "==> mix format"
mix format
