{{- define "lib-chart.serviceaccount" -}}

apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "lib-chart.fullname" . }}
  namespace: {{ .Values.global.namespace | quote }}
  labels:
  {{- include "lib-chart.labels" . | nindent 4 }}
  
{{- end -}}  
