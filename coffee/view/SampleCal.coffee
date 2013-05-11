Ext.define "StoreSample.view.SampleCal"
  extend: "Ext.Carousel"
  requires: ["StoreSample.view.SampleListA","StoreSample.view.SampleListB","StoreSample.view.SampleListC"]
  xtype: "samplecal"
  config:
    layout: "fit"
    scrollable: false
    items: [
      xtype: "samplelistA"
    ,
      xtype: "samplelistB"
    ,
      xtype: "samplelistC"
    ]


