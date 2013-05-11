Ext.define "StoreSample.model.Child",
  extend: "Ext.data.Model"
  config:
    fields: [
      name: "name"
      type: "string"
    ,
      name: "age"
      type: "int"
    ]

    #belongsTo: [
    #  model: "StoreSample.model.Parent"
    #]


