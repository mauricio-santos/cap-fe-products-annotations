import JourneyRunner from "sap/fe/test/JourneyRunner";
import ListReport from "sap/fe/test/ListReport";
import ObjectPage from "sap/fe/test/ObjectPage";
import CustomProductsSetListGenerated from "./ProductsSetList.gen";
import CustomProductsSetObjectPageGenerated from "./ProductsSetObjectPage.gen";

const runner = new JourneyRunner({
    launchUrl: sap.ui.require.toUrl("productscapcds") + "/test/flp.html#app-preview",
    pages: {
        onTheProductsSetListGenerated: new ListReport(
            {
                appId: "productscapcds",
                componentId: "ProductsSetList",
                contextPath: "/ProductsSet"
            },
            CustomProductsSetListGenerated
        ),
        onTheProductsSetObjectPageGenerated: new ObjectPage(
            {
                appId: "productscapcds",
                componentId: "ProductsSetObjectPage",
                contextPath: "/ProductsSet"
            },
            CustomProductsSetObjectPageGenerated
        )
    },
    async: true
});

export default runner;
