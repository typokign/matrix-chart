{{/* vim: set filetype=mustache: */}}
{{/*
Shared secret for the slack server
*/}}
{{- define "matrix.slack.as_token" -}}
{{- randAlphaNum 64 -}}
{{- end }}

{{- define "matrix.slack.hs_token" -}}
{{- randAlphaNum 64 -}}
{{- end }}

{{- define "matrix.slack.passkey" -}}
{{- genPrivateKey "rsa" -}}
{{- end -}}