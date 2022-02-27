#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: Uptime Kuma
# Configures NGINX for use with Uptime Kuma
# ==============================================================================
declare admin_port

# Generate Ingress configuration
bashio::var.json \
    interface "$(bashio::addon.ip_address)" \
    port "^$(bashio::addon.ingress_port)" \
    | tempio \
        -template /etc/nginx/templates/ingress.gtpl \
        -out /etc/nginx/servers/ingress.conf

