using {santos as service} from './service';

annotate service.Products with @odata.draft.enabled;

/* ############# Searchable ############# */
annotate service.Products with @cds.search: {
    // Enable global search for the following properties
    product      : true,
    productName  : true,
    description  : false
};