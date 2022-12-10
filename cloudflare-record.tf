resource "cloudflare_record" "this" {
  for_each = { for record in local.dns-records : "${record.name}-${record.value}" => record }

  name     = each.value.name
  priority = try(each.value.priority, null)
  proxied  = try(each.value.proxied, true)
  type     = try(each.value.type, "CNAME")
  value    = each.value.value
  zone_id  = data.cloudflare_zone.zone.id
}
