{{- define "sd.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "sd.labels" -}}
app.kubernetes.io/name: {{ include "sd.name" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/part-of: islamic-platform
app.kubernetes.io/managed-by: {{ .Release.Service }}
isb/service-domain: {{ .Values.isb.serviceDomain }}
isb/business-area: {{ .Values.isb.businessArea }}
isb/business-domain: {{ .Values.isb.businessDomain }}
isb/functional-pattern: {{ .Values.isb.functionalPattern }}
{{- end -}}

{{- define "sd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "sd.name" . }}
{{- end -}}
