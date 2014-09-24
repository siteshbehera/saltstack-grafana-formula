{% from "grafana/map.jinja" import grafana with context %}

grafana:
  cmd.run:
    - name: curl http://grafanarel.s3.amazonaws.com/grafana-{{ grafana.version }}.tar.gz | tar zx; mv grafana-{{ grafana.version }}/ {{ grafana.path }};
    - onlyif: "[ ! -f {{ grafana.path }}index.html ]"
  file.managed:
    - name: {{ grafana.path }}config.js
    - source: salt://grafana/files/config.js.jinja
    - template: jinja
    - mode: 644

{% if grafana.http -%}
grafana-http:
  file.managed:
    - name: {{ grafana.http.path }}grafana.conf
    - source: salt://grafana/files/grafana.conf.jinja
    - template: jinja
    - mode: 644
    - requires:
      - pkg: {{ grafana.http.name }}
{% endif -%}