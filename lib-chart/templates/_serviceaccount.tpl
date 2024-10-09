{{- define "lib-chart.serviceaccount" -}}

apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "lib-chart.fullname" . }}
  labels:
    {{- include "lib-chart.labels" . | nindent 4 }}
