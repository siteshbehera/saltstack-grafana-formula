=============
Grafana-Formula
=============

Formulas to set up and configure Grafana. Tested on CentOS 6.5.
Grafana is an open source, feature rich metrics dashboard and graph editor for 
Graphite, InfluxDB & OpenTSDB. See http://grafana.org/ for details.

.. note::

- Requires a web server, typical choices are Apache or Nginx.
- See the full Salt Formulas installation and usage instructions at http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html.


Available states
================

.. contents::
    :local:

``grafana``
------------

Installs grafana as configured in the pillar.
