{{/*
Define api base url
*/}}
{{- define "apiBase" -}}
{{- if .Values.repository -}}
{{- printf "https://api.github.com/repos/%s/" .Values.repository -}}
{{- else -}}
{{- printf "https://api.github.com/orgs/%s/" .Values.organisation -}}
{{- end -}}
{{- end -}}

{{/*
Define repo or org name
*/}}
{{- define "repoOrOrg" -}}
{{- if .Values.repository -}}
{{- .Values.repository -}}
{{- else -}}
{{- .Values.organisation -}}
{{- end -}}
{{- end -}}
