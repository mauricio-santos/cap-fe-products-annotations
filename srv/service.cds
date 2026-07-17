using {santos as entities} from '../db/schema';

service Products_SRV {
    entity ProductsSet as projection on entities.Products;
    @readonly
    entity VH_CurrenciesSet as projection on entities.VH_Currencies;
}