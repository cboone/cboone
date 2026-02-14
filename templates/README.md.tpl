## Christopher Boone

<img align="right" src="assets/images/bopca-logo-big-light.svg" width="260">

Hands-on generalist. ↝ [cboone.github.io](https://cboone.github.io)<br>

### Projects

{{ range recentContributions 20 }}
{{- if and (eq .Repo.Owner "cboone") (ne (printf "%.9s" .Repo.Name) "homebrew-") -}}
[{{ .Repo.Owner }}/{{ .Repo.Name }}]({{ .Repo.URL }}){{ with .Repo.Description }} ↝ {{ . }}{{ end }}<br>
{{ end -}}
{{ end }}

### Other Contributions

{{ range recentContributions 20 }}
{{- if and (not (eq .Repo.Owner "cboone")) (ne (printf "%.9s" .Repo.Name) "homebrew-") -}}
[{{ .Repo.Owner }}/{{ .Repo.Name }}]({{ .Repo.URL }}){{ with .Repo.Description }} ↝ {{ . }}{{ end }}<br>
{{ end -}}
{{ end }}

### Blog

{{ range rss "https://cboone.github.io/index.xml" 5 -}}
[{{ .Title }}]({{ .URL }}) ({{ humanize .PublishedAt }})<br>
{{- end }}

### Et cetera

[Other Repos](https://github.com/cboone?tab=repositories) |
[Catamount Hardware](https://catamounthardware.com) |
[Instagram](https://instagram.com/catamounthardware) |
[SoundCloud](https://soundcloud.com/cboone)
