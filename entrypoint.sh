#!/usr/bin/env bash
/usr/share/metricbeat/bin/metricbeat -e -c /etc/metricbeat/metricbeat.yml -path.home /usr/share/metricbeat -path.config /etc/metricbeat -path.data /var/lib/metricbeat -path.logs /var/log/metricbeat
