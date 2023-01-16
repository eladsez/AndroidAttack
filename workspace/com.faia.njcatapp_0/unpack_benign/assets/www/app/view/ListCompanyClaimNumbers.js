/*
 * File: app/view/ListCompanyClaimNumbers.js
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

Ext.define('CatApp.view.ListCompanyClaimNumbers', {
    extend: 'Ext.dataview.List',
    alias: 'widget.listcompanyclaimnumbers',

    config: {
        id: 'listCompanyClaimNumbers',
        store: 'CompanyClaimNumberStore',
        disableSelection: true,
        grouped: true,
        indexBar: true,
        itemTpl: [
            '<div><span class="redHeader">{CompanyName}</span></div>'
        ]
    }

});