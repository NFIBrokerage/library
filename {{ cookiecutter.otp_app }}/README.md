# {{ cookiecutter.otp_app }}

![Actions CI]({{ cookiecutter.storePath }}/workflows/Actions%20CI/badge.svg)

{{ cookiecutter.description }}

## Installation

```elixir
def deps do
  [
    {:{{ cookiecutter.otp_app }}, "~> 0.1"{% if cookiecutter.private == "y" %}, organization: "cuatro"{% endif %}}
  ]
end
```

Check out the docs here: https://{% if cookiecutter.private == "y" %}cuatro.{% endif %}hexdocs.pm/{{ cookiecutter.otp_app }}
