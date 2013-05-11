Ext.define "StoreSample.model.Parent",
  extend: "Ext.data.Model"
  config:
    fields: [
      name: "name"
      type: "string"
    ,
      name: "age"
      type: "int"
    ]

    hasMany: [
      model: "StoreSample.model.Child"
      name: "children"
    ]


