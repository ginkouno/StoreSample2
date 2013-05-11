Ext.define "StoreSample.view.Main",
  extend: "Ext.Container"
  requires: ["StoreSample.view.SampleCal"]
  xtype: "main"
  config:
    layout: "fit"
    items: [
      xtype: "toolbar"
      title: "Sample"
      docked: "top"
    ,
      xtype: "samplecal"
    ]

