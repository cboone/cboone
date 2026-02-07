## Christopher Boone

<img align="right" src="assets/images/bopca-logo-big-light.svg" width="260">

Hands-on generalist.

[cboone.github.io](https://cboone.github.io)

{{- range recentContributions 100 -}}
{{- if eq .Repo.Owner "cboone" -}}
[{{.Repo.Owner}}/{{.Repo.Name}}]({{.Repo.URL}}){{with .Repo.Description}} ↝ {{.}}{{end}}<br>
{{- end}}
{{- end}}
