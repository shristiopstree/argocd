{{- define "lib-chart.secrets" -}}

apiVersion: v1
kind: Secret
metadata:
  name: {{ include "lib-chart.fullname" . }}-secret
type: Opaque
data:
  {{- range $key, $value := .Values.secrets }}
  {{ $key }}: {{ $value | b64enc | quote }}
{{- end }}
