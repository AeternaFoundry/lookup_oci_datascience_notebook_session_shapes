data "oci_datascience_notebook_session_shapes" "datascience_notebook_session_shapes_lookup" {
  for_each = var.datascience_notebook_session_shapes_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

