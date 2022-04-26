{{/*
Expand the name of the chart.
*/}}
{{- define "cicd-test.name" -}}
{{- default .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cicd-test.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cicd-test.labels" -}}
helm.sh/chart: {{ include "cicd-test.chart" . }}
{{ include "cicd-test.selectorLabels" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/component: backend
app.kubernetes.io/part-of: org.alonso
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cicd-test.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cicd-test.name" . }}
{{- end }}