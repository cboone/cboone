## Christopher Boone

<img align="right" src="assets/images/bopca-logo-big-light.svg" width="260">

Hands-on generalist. ↝ [cboone.github.io](https://cboone.github.io)<br>

{{ range recentContributions 20 }}
{{- if and (eq .Repo.Owner "cboone") (ne (printf "%.9s" .Repo.Name) "homebrew-") -}}
[{{.Repo.Owner}}/{{.Repo.Name}}]({{.Repo.URL}}){{with .Repo.Description}} ↝ {{.}}{{end}}<br>
{{ end -}}
{{ end }}

[Et cetera.](https://github.com/cboone?tab=repositories)
