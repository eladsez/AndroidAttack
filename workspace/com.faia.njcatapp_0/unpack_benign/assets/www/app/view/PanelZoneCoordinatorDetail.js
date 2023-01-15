/*
 * File: app/view/PanelZoneCoordinatorDetail.js
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

Ext.define('CatApp.view.PanelZoneCoordinatorDetail', {
    extend: 'Ext.Panel',
    alias: 'widget.panelzonecoordinatordetail',

    config: {
        id: 'pnlZCDetails',
        itemId: 'ZoneCoordinatorDetail',
        padding: '10px',
        scrollable: true,
        cls: [
            'whiteBG'
        ],
        items: [
            {
                xtype: 'container',
                id: 'contact',
                tpl: [
                    '<div id="divZoneCoordinatorDetail">',
                    '    <h1>{FullName}</h1><br />',
                    '    ',
                    '    ',
                    '    {Company}<br />',
                    '        {Title}<br />',
                    '        {Address1}<br />',
                    '        {City}, {State} {Zip}</span>',
                    '</div>'
                ]
            },
            {
                xtype: 'container',
                cls: [
                    'detailButtonContainer'
                ],
                id: 'zcDetailButtonContainer',
                layout: {
                    type: 'hbox'
                },
                items: [
                    {
                        xtype: 'button',
                        cls: 'redButton',
                        id: 'btnAddToContact',
                        itemId: 'btnAddToContact',
                        iconCls: 'addContact',
                        iconMask: true
                    },
                    {
                        xtype: 'spacer',
                        width: 20
                    },
                    {
                        xtype: 'button',
                        cls: 'redButton',
                        id: 'btnSendMessage',
                        itemId: 'mybutton7',
                        iconCls: 'compose',
                        iconMask: true
                    },
                    {
                        xtype: 'spacer',
                        width: 20
                    },
                    {
                        xtype: 'button',
                        cls: 'redButton',
                        id: 'btnEmail',
                        itemId: 'mybutton8',
                        iconCls: 'email',
                        iconMask: true
                    },
                    {
                        xtype: 'spacer',
                        width: 20
                    },
                    {
                        xtype: 'button',
                        cls: 'redButton',
                        id: 'btnCall',
                        itemId: 'mybutton9',
                        iconCls: 'phone',
                        iconMask: true,
                        text: 'Call'
                    }
                ]
            }
        ]
    }

});