namespace santos;

using {
    cuid,
    sap.common.CodeList
} from '@sap/cds/common';

entity Products : cuid {
    product     : String(8)                     @title: 'Product ID'    @mandatory;
    productName : String(120)                   @title: 'Product Name'  @mandatory;
    description : String                        @title: 'Description'   @UI.MultiLineText;
    price       : Decimal(10, 2)                @title: 'Price'         @mandatory  @Measures.Unit: currency_code;
    currency    : Association to VH_Currencies  @title: 'Currency'      @Common.IsUnit;
};

entity VH_Currencies : CodeList {
    key code : String enum {
            usd = 'USD';
            eur = 'EUR';
            gbp = 'GBP';
            jpy = 'JPY';
            aud = 'AUD';
            cad = 'CAD';
            chf = 'CHF';
            cny = 'CNY';
            sek = 'SEK';
            nzd = 'NZD';
        };
};