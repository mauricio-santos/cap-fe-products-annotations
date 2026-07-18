sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"productsflexibleprogrammingmodel/test/integration/pages/ProductsSetMain.gen"
], function (JourneyRunner, ProductsSetMainGenerated) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('productsflexibleprogrammingmodel') + '/test/flp.html#app-preview',
        pages: {
			onTheProductsSetMainGenerated: ProductsSetMainGenerated
        },
        async: true
    });

    return runner;
});

