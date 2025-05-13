using my.orders as db from '../db/scehma';

service CatalogService {

    entity Orders    as projection on db.Orders;
    entity OrderIems as projection on db.OrderIems;

}
