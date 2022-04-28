watch "kubectl -n postgres-operator get pods \
  --selector=postgres-operator.crunchydata.com/cluster=hippo,postgres-operator.crunchydata.com/instance \
  -o=jsonpath='{range .items[*]}{.metadata.name}{\"\t\"}{.metadata.labels.postgres-operator\.crunchydata\.com/role}{\"\t\"}{.status.phase}{\"\t\"}{.spec.containers[].resources.limits}{\"\n\"}{end}'"
