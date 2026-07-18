using Products_SRV as service from '../../srv/service';

annotate service.ProductsSet with @(

    /* ############# SelectionFields ############# */
    UI.SelectionFields: [
        currency_code
    ],

    /* ############# FilterRestrictions ############# */
    Capabilities.FilterRestrictions: {
        FilterExpressionRestrictions: [
            {
                $Type              : 'Capabilities.FilterExpressionRestrictionType',
                Property           : currency_code,
                AllowedExpressions : 'SingleValue'      // only allow single value filter expressions for the currency_code property
            }
        ],
        NonFilterableProperties: [ description ]
    },

    /* ############# HeaderInfo ############# */
    UI.HeaderInfo : {
        $Type: 'UI.HeaderInfoType',
        TypeName: 'Product',
        TypeNamePlural: 'Products',
        Title: { $Type: 'UI.DataField', Value: productName },
        Description: { $Type: 'UI.DataField', Value: product }
    },

    /* ############# LineItem ############# */
    UI.LineItem: [
        {
            $Type: 'UI.DataField',
            Value: product
        },
        {
            $Type: 'UI.DataField',
            Value: productName
        },
        {
            $Type: 'UI.DataField',
            Value: description
        },
        {
            $Type: 'UI.DataField',
            Value: price
        }
    ],
);
