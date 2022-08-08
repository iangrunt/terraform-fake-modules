output "this" {
  value = {
    region                      = data.google_client_config.current.region
    project_info                = data.google_project.this
    region_shortname            = local.gcp_region_shortname
    openid                      = data.google_client_openid_userinfo.this
    region_map                  = zipmap(data.google_compute_regions.available.names, local.available_region_shortnames)
    available_regions           = data.google_compute_regions.available.names
    vpc                         = local.vpc
    subnet_regions              = local.subnet_regions
    available_region_shortnames = local.available_region_shortnames
    subnet_cidr_blocks          = local.subnet_cidr_blocks
    subnets                     = local.subnets
  }
}

