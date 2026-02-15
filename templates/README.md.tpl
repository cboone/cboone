## Christopher Boone

<img align="right" src="assets/images/bopca-logo-big-light.svg" width="260">

Hands-on generalist. ↝ [cboone.github.io](https://cboone.github.io)<br>

### Projects

{{ range recentContributions 25 }}
{{- if and (eq .Repo.Owner "cboone") (ne (printf "%.9s" .Repo.Name) "homebrew-") .Repo.Description -}}
[{{ .Repo.Owner }}/{{ .Repo.Name }}]({{ .Repo.URL }}) ↝ {{ .Repo.Description }}<br>
{{ end -}}
{{ end }}

[And so on.](https://github.com/cboone?tab=repositories)

### Other Contributions

{{ range recentContributions 25 }}
{{- if and (not (eq .Repo.Owner "cboone")) (ne (printf "%.9s" .Repo.Name) "homebrew-") .Repo.Description -}}
[{{ .Repo.Owner }}/{{ .Repo.Name }}]({{ .Repo.URL }}) ↝ {{ .Repo.Description }}<br>
{{ end -}}
{{ end }}

### Blog

{{ range rss "https://cboone.github.io/index.xml" 5 -}}
[{{ .Title }}]({{ .URL }}) ({{ humanize .PublishedAt }})<br>
{{- end }}

### Et cetera

[Catamount Hardware](https://catamounthardware.com) |
[Instagram](https://instagram.com/catamounthardware) |
[SoundCloud](https://soundcloud.com/cboone)
