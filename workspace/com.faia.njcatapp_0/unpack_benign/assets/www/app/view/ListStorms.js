/*
 * File: app/view/ListStorms.js
 *
 * This file was generated by Sencha Architect version 2.1.0.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Sencha Touch 2.0.x library, under independent license.
 * License of Sencha Architect does not include license for Sencha Touch 2.0.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('CatApp.view.ListStorms', {
    extend: 'Ext.dataview.List',
    alias: 'widget.liststorms',

    config: {
        id: 'listStorms',
        emptyText: 'No notices currently on file.',
        store: 'stormStore',
        disableSelection: true,
        itemTpl: [
            '<div><span class="redHeader">{Name}</span><br><span class="subTextGray"></span></div>'
        ]
    }

});