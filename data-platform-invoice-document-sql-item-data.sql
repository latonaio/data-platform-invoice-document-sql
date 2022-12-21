CREATE TABLE `data_platform_invoice_document_item_data`
(
    `InvoiceDocument`                   int(16) NOT NULL,
    `InvoiceDocumentItem`               int(6) NOT NULL,
    `InvoiceDocumentItemCategory`       varchar(4) DEFAULT NULL,
    `InvoiceDocumentItemText`           varchar(200) DEFAULT NULL,
    `InvoiceDocumentItemTextByBuyer`    varchar(200) NOT NULL,
    `InvoiceDocumentItemTextBySeller`   varchar(200) NOT NULL,
    `CreationDate`                      date DEFAULT NULL,
    `CreationTime`                      time DEFAULT NULL,
    `ItemBillingIsConfirmed`            tinyint(1) DEFAULT NULL,
    `ItemBillingConfStatus`             varchar(2) DEFAULT NULL,
    `Buyer`                             int(12) DEFAULT NULL,
    `Seller`                            int(12) DEFAULT NULL,
    `DeliverFromParty`                  int(12) DEFAULT NULL,
    `DeliverToParty`                    int(12) DEFAULT NULL,
    `Product`                           varchar(40) DEFAULT NULL,
    `ProductGroup`                      varchar(9) DEFAULT NULL,
    `ProductStandardID`                 varchar(18) DEFAULT NULL,
    `ProductionPlantPartnerFunction`    varchar(40) DEFAULT NULL,
    `ProductionPlantBusinessPartner`    varchar(4) DEFAULT NULL,
    `ProductionPlant`                   varchar(4) DEFAULT NULL,
    `ProductionPlantStorageLocation`    varchar(4) DEFAULT NULL,
    `IssuingPlantPartnerFunction`       varchar(40) DEFAULT NULL,
    `IssuingPlantBusinessPartner`       varchar(4) DEFAULT NULL,
    `IssuingPlant`                      varchar(4) DEFAULT NULL,
    `IssuingPlantStorageLocation`       varchar(4) DEFAULT NULL,
    `ReceivingPlantPartnerFunction`     varchar(40) DEFAULT NULL,
    `ReceivingPlantBusinessPartner`     varchar(4) DEFAULT NULL,
    `ReceivingPlant`                    varchar(4) DEFAULT NULL,
    `ReceivingPlantStorageLocation`     varchar(4) DEFAULT NULL,
    `ServicesRenderedDate`              date DEFAULT NULL,
    `InvoiceQuantity`                   float(17) DEFAULT NULL,
    `InvoiceQuantityUnit`               varchar(3) DEFAULT NULL,
    `InvoiceQuantityInBaseUnit`         float(17) DEFAULT NULL,
    `BaseUnit`                          varchar(3) DEFAULT NULL,
    `ActualGoodsIssueDate`              date DEFAULT NULL,
    `ActualGoodsIssueTime`              time DEFAULT NULL,
    `ActualGoodsReceiptDate`            date DEFAULT NULL,
    `ActualGoodsReceiptTime`            time DEFAULT NULL,
    `ItemGrossWeight`                   float(15) DEFAULT NULL,
    `ItemNetWeight`                     float(15) DEFAULT NULL,
    `ItemWeightUnit`                    varchar(3) DEFAULT NULL,
    `NetAmount`                         float(13) DEFAULT NULL,
    `TaxAmount`                         float(13) DEFAULT NULL,
    `GrossAmount`                       float(13) DEFAULT NULL,
    `ItemPaymentBlockStatus`            tinyint(1) DEFAULT NULL,
    `GoodsIssueOrReceiptSlipNumber`     varchar(35) DEFAULT NULL,
    `TransactionCurrency`               varchar(5) DEFAULT NULL,
    `PricingDate`                       date DEFAULT NULL,
    `ProductTaxClassification`          varchar(1) DEFAULT NULL,
    `Project`                           varchar(24) DEFAULT NULL,
    `OrderID`                           int(16) DEFAULT NULL,
    `OrderItem`                         int(6) DEFAULT NULL,
    `OrderType`                         varchar(3) DEFAULT NULL,
    `ContractType`                      varchar(4) DEFAULT NULL,
    `OrderVaridityStartDate`            date DEFAULT NULL,
    `OrderVaridityEndDate`              date DEFAULT NULL,
    `InvoiceScheduleStartDate`          date DEFAULT NULL,
    `InvoiceScheduleEndDate`            date DEFAULT NULL,
    `DeliveryDocument`                  int(16) DEFAULT NULL,
    `DeliveryDocumentItem`              int(6) DEFAULT NULL,
    `OriginDocument`                    int(16) DEFAULT NULL,
    `OriginDocumentItem`                int(6) DEFAULT NULL,
    `ReferenceDocument`                 int(16) DEFAULT NULL,
    `ReferenceDocumentItem`             int(6) DEFAULT NULL,
    `ReferenceDocumentType`             varchar(3) DEFAULT NULL,
    `ExternalReferenceDocument`         varchar(35) DEFAULT NULL,
    `ExternalReferenceDocumentItem`     varchar(6) DEFAULT NULL,
    `TaxCode`                           varchar(2) DEFAULT NULL,
    `TaxRate`                           float(6) DEFAULT NULL,
    `CountryOfOrigin`                   varchar(3) DEFAULT NULL,
    `ItemPaymentRequisitionIsCreated`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InvoiceDocument`, `InvoiceDocumentItem`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentItemData_fk` FOREIGN KEY (`InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`InvoiceDocument`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataBuyer_fk` FOREIGN KEY (`Buyer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataSeller_fk` FOREIGN KEY (`Seller`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataDeliverFromParty_fk` FOREIGN KEY (`DeliverFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataDeliverToParty_fk` FOREIGN KEY (`DeliverToParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductGroup_fk` FOREIGN KEY (`ProductGroup`) REFERENCES `data_platform_product_group_product_group_data` (`ProductGroup`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductionPlantPartnerFunction_fk` FOREIGN KEY (`ProductionPlantPartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductionPlantBusinessPartner_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductionPlant_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductionPlantStorageLocation_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `ProductionPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataIssuingPlantPartnerFunction_fk` FOREIGN KEY (`IssuingPlantPartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataIssuingPlantBusinessPartner_fk` FOREIGN KEY (`IssuingPlantBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataIssuingPlant_fk` FOREIGN KEY (`IssuingPlantBusinessPartner`, `IssuingPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataIssuingPlantStorageLocation_fk` FOREIGN KEY (`IssuingPlantBusinessPartner`, `IssuingPlant`, `IssuingPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataReceivingPlantPartnerFunction_fk` FOREIGN KEY (`ReceivingPlantPartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataReceivingPlantBusinessPartner_fk` FOREIGN KEY (`ReceivingPlantBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataReceivingPlant_fk` FOREIGN KEY (`ReceivingPlantBusinessPartner`, `ReceivingPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataReceivingPlantStorageLocation_fk` FOREIGN KEY (`ReceivingPlantBusinessPartner`, `ReceivingPlant`, `ReceivingPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataInvoiceQuantityUnit_fk` FOREIGN KEY (`InvoiceQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataItemWeightUnit_fk` FOREIGN KEY (`ItemWeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataOrderItem_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataDeliveryDocumentItem_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`) REFERENCES `data_platform_delivery_document_item_data` (`DeliveryDocument`, `DeliveryDocumentItem`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataTaxCode_fk` FOREIGN KEY (`TaxCode`) REFERENCES `data_platform_tax_code_tax_code_data` (`TaxCode`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataCountryOfOrigin_fk` FOREIGN KEY (`CountryOfOrigin`) REFERENCES `data_platform_country_country_data` (`Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
