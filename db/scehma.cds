namespace my.orders;

using { cuid, managed, localized } from '@sap/cds/common'; 

entity Orders : cuid {
    key ID : UUID @default.uuid;
    orderDate : Date;
    status : String(20);
    totalAmount : Decimal(10,2);
    createdBy : String(50);
    Item : Composition of many OrderIems on Item.order = $self;
}

entity OrderIems {
    key ID : UUID @default.uuid;
    order : Association to Orders;
    product : String(100);
    productName : String(100);
    quantity : Integer;
    price : Decimal(10,2);
    
}
