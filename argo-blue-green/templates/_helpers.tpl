{{/*
Expand the name of the chart.
*/}}
{{- define "argocd-blue-green.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create the full name using the release name and the chart name.
*/}}
{{- define "argocd-blue-green.fullname" -}}
{{- printf "%s-%s" (include "argocd-blue-green.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}