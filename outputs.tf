output "datascience_notebook_session_shapes_lookup_id" {
  description = "Map of id values across all datascience_notebook_session_shapes_lookup, keyed the same as var.datascience_notebook_session_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_datascience_notebook_session_shapes.datascience_notebook_session_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_notebook_session_shapes_lookup_compartment_id" {
  description = "Map of compartment_id values across all datascience_notebook_session_shapes_lookup, keyed the same as var.datascience_notebook_session_shapes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_datascience_notebook_session_shapes.datascience_notebook_session_shapes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datascience_notebook_session_shapes_lookup_filter" {
  description = "Map of filter values across all datascience_notebook_session_shapes_lookup, keyed the same as var.datascience_notebook_session_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_datascience_notebook_session_shapes.datascience_notebook_session_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "datascience_notebook_session_shapes_lookup_notebook_session_shapes" {
  description = "Map of notebook_session_shapes values across all datascience_notebook_session_shapes_lookup, keyed the same as var.datascience_notebook_session_shapes_lookup except keys with no notebook_session_shapes are omitted"
  value       = { for k, v in data.oci_datascience_notebook_session_shapes.datascience_notebook_session_shapes_lookup : k => v.notebook_session_shapes if v.notebook_session_shapes != null && length(v.notebook_session_shapes) > 0 }
}

