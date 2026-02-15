{{- define "forgejo.name" -}}
forgejo
{{- end -}}

{{- define "forgejo.fullname" -}}
{{ include "forgejo.name" . }}
{{- end -}}
