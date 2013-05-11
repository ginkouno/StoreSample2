Ext.define "StoreSample.view.SampleListB",
  extend: "Ext.List"
  xtype: "samplelistB"
  config:
    store: "SamplesB"
    scrollable: true
    layout: 'fit'
    plugins: [
      xclass: 'Ext.plugin.ListPaging'
      autoPaging: true
    ]
    itemTpl: new Ext.XTemplate(
      '<font size="8">{name}(list b)</font><br />'
      '<font size="5">age:{age}</font><br />'
      '<div align="right">'
      '<tpl for="children">'
      '  <font size="4">{name}</font><br />'
      '  <font size="2">age:{age}</font><br />'
      '</tpl>'
      '</div>'
    )
    listeners:
      itemtap: ->
        list = this
        this.getStore().remove(this.getStore().getRange())
        this.getStore().sync()
        this.getStore().load(
          callback: ->
            list.refresh()
            console.log "refreshed!!"
        ) 


