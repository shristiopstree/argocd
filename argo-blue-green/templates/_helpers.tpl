{{/*
Generate a fullname based on the release name and chart name
*/}}
{{- define "bluegreen.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate labels for the application
*/}}
{{- define "bluegreen.labels" -}}
app: {{ include "bluegreen.fullname" . }}
release: {{ .Release.Name }}
{{- end -}}

{{/*
Generate selector labels
*/}}
{{- define "bluegreen.selectorLabels" -}}
app: {{ include "bluegreen.fullname" . }}
{{- end -}}
