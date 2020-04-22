INTERFACE zif_amp_metrics_collector
  PUBLIC .

  TYPES: BEGIN OF metric,
           metric_key   TYPE zamp_store-metric_key,
           metric_value TYPE zamp_store-metric_value,
         END OF metric.

  TYPES metrics TYPE STANDARD TABLE OF metric WITH KEY metric_key.

  METHODS get_metrics RETURNING VALUE(metrics) TYPE metrics.

ENDINTERFACE.
