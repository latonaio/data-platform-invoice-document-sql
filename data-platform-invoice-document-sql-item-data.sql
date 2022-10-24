CREATE TABLE `data_platform_invoice_document_item_data`
(
--  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
    `InvoiceDocument`                int(16) NOT NULL,
    `InvoiceDocumentItem`            int(6) NOT NULL,
    `DocumentItemCategory`           varchar(4) DEFAULT NULL,   -- 名称変更
    `CreationDate`                   date DEFAULT NULL,
    `CreationTime`                   time DEFAULT NULL,
    `BusinessArea`                   varchar(4) DEFAULT NULL,
--  `Customer`                       int(10) DEFAULT NULL,
--  `Supplier`                       int(10) DEFAULT NULL,      -- 新規追加
    `DeliverToParty`                 int(16) DEFAULT NULL,      -- 新規追加
    `DeliverFromParty`               int(16) DEFAULT NULL,      -- 新規追加
    `ProductStandardID`              varchar(18) DEFAULT NULL,  -- 新規追加
    `Batch`                          varchar(10) DEFAULT NULL,
    `Product`                        varchar(40) DEFAULT NULL,  -- 名称変更
    `ProductGroup`                   varchar(9) DEFAULT NULL,
    `ProductionPlantBusinessPartner` varchar(4) DEFAULT NULL,   -- 新規追加
    `ProductionPlant`                varchar(4) DEFAULT NULL,   -- 新規追加
    `ProductionPlantStorageLocation` varchar(4) DEFAULT NULL,   -- 新規追加
    `IssuingPlantBusinessPartner`    varchar(4) DEFAULT NULL,   -- 新規追加
    `IssuingPlant`                   varchar(4) DEFAULT NULL,   -- 新規追加
    `IssuingPlantStorageLocation`    varchar(4) DEFAULT NULL,   -- 新規追加
    `ReceivingPlantBusinessPartner`  varchar(4) DEFAULT NULL,   -- 新規追加
    `ReceivingPlant`                 varchar(4) DEFAULT NULL,   -- 新規追加
    `ReceivingPlantStorageLocation`  varchar(4) DEFAULT NULL,   -- 新規追加
    `InvoiceDocumentItemText`        varchar(100) DEFAULT NULL,
    `ServicesRenderedDate`           date DEFAULT NULL,
    `InvoiceQuantity`                float(17) DEFAULT NULL,
    `InvoiceQuantityUnit`            varchar(3) DEFAULT NULL,
    `InvoiceQuantityInBaseUnit`      float(17) DEFAULT NULL,
    `BaseUnit`                       varchar(3) DEFAULT NULL,
    `ActualGoodsIssueDate`           date DEFAULT NULL,         -- 新規追加
    `ActualGoodsIssueTime`           time DEFAULT NULL,         -- 新規追加
    `ActualGoodsReceiptDate`         date DEFAULT NULL,         -- 新規追加
    `ActualGoodsReceiptTime`         time DEFAULT NULL,         -- 新規追加
    `ItemGrossWeight`                float(17) DEFAULT NULL,　  -- 新規追加
    `ItemNetWeight`                  float(17) DEFAULT NULL,　  -- 新規追加
    `ItemWeightUnit`                 varchar(3) DEFAULT NULL,　 -- 新規追加
    `ItemVolume`                     float(17) DEFAULT NULL,　  -- 新規追加
    `ItemVolumeUnit`                 varchar(3) DEFAULT NULL,　 -- 新規追加
    `NetAmount`                      float(17) DEFAULT NULL,
    `GoodsIssueOrReceiptSlipNumber`  varchar(35) DEFAULT NULL,
    `TransactionCurrency`            varchar(5) DEFAULT NULL,
    `BusinessPartnerCurrency`        varchar(5) DEFAULT NULL,　 -- 新規追加
    `GrossAmount`                    float(13) DEFAULT NULL,
    `PricingDate`                    date DEFAULT NULL,
    `TaxAmount`                      float(13) DEFAULT NULL,
    `ProductTaxClassification`       varchar(1) DEFAULT NULL,
--  `ProfitCenter`                   varchar(10) DEFAULT NULL,
    `Project`                        varchar(24) DEFAULT NULL,
    `OrderID`                        int(16) DEFAULT NULL,       -- 新規追加
    `OrderItem`                      int(6) DEFAULT NULL,        -- 新規追加
    `OrderType`                      varchar(3) DEFAULT NULL,    -- 新規追加
    `ContractType`                   varchar(4) DEFAULT NULL,    -- 新規追加
    `OrderVaridityStartDate`         date DEFAULT NULL,          -- 新規追加
    `OrderVaridityEndDate`           date DEFAULT NULL,          -- 新規追加
    `InvoiceScheduleStartDate`       date DEFAULT NULL,          -- 新規追加
    `InvoiceScheduleEndDate`         date DEFAULT NULL,          -- 新規追加
    `DeliveryDocument`               int(16) DEFAULT NULL,       -- 新規追加
    `DeliveryDocumentItem`           int(6) DEFAULT NULL,        -- 新規追加
    `OriginDocument`                 int(16) DEFAULT NULL,
    `OriginDocumentItem`             int(6) DEFAULT NULL,
    `ReferenceDocument`              int(16) DEFAULT NULL,
    `ReferenceDocumentItem`          int(6) DEFAULT NULL,
    `ReferenceDocumentType`          varchar(3) DEFAULT NULL,    -- 新規追加
    `ExternalReferenceDocument`      varchar(35) DEFAULT NULL,   -- 新規追加
    `ExternalReferenceDocumentItem`  varchar(6) DEFAULT NULL,    -- 新規追加
--  `OrderSalesOrganization`         varchar(4) DEFAULT NULL,    -- 名称変更
--  `OrderPurchaseOrganization`      varchar(4) DEFAULT NULL,    -- 新規追加
--  `OrderDistributionChannel`       varchar(2) DEFAULT NULL,    -- 名称変更
    `TaxCode`                        varchar(2) DEFAULT NULL,    -- 新規追加
    `TaxRate`                        varchar(6) DEFAULT NULL,    -- 新規追加
    `CountryOfOrigin`                varchar(3) DEFAULT NULL,    -- 新規追加
    
    PRIMARY KEY (`InvoiceDocument`, `InvoiceDocumentItem`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentItemData_fk` FOREIGN KEY (`InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`InvoiceDocument`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataDeliverToParty_fk` FOREIGN KEY (`DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_delivery_document_header_data` (`DeliverToParty`, `DeliverFromParty`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductGroup_fk` FOREIGN KEY (`ProductGroup`) REFERENCES `data_platform_product_group_product_group_data` (`ProductGroup`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataIssuingPlantBusinessPartner_fk` FOREIGN KEY (`IssuingPlantBusinessPartner`, `IssuingPlant`) REFERENCES `data_platform_delivery_document_header_data` (`IssuingPlantBusinessPartner`, `IssuingPlant`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataReceivingPlantBusinessPartner_fk` FOREIGN KEY (`ReceivingPlantBusinessPartner`, `ReceivingPlant`) REFERENCES `data_platform_delivery_document_header_data` (`ReceivingPlantBusinessPartner`, `ReceivingPlant`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataActualGoodsIssueDate_fk` FOREIGN KEY (`ActualGoodsIssueDate`, `ActualGoodsIssueTime`) REFERENCES `data_platform_delivery_document_item_data` (`ActualGoodsIssueDate`, `ActualGoodsIssueTime`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataActualGoodsReceiptDate_fk` FOREIGN KEY (`ActualGoodsReceiptDate`, `ActualGoodsReceiptTime`) REFERENCES `data_platform_delivery_document_item_data` (`ActualGoodsReceiptDate`, `ActualGoodsReceiptTime`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataNetAmount_fk` FOREIGN KEY (`NetAmount`) REFERENCES `data_platform_orders_item_data` (`NetAmount`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataGoodsIssueOrReceiptSlipNumber_fk` FOREIGN KEY (`GoodsIssueOrReceiptSlipNumber`) REFERENCES `data_platform_delivery_document_header_data` (`GoodsIssueOrReceiptSlipNumber`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`, `BusinessPartnerCurrency`) REFERENCES `data_platform_orders_item_data` (`TransactionCurrency`, `BusinessPartnerCurrency`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataPricingDate_fk` FOREIGN KEY (`PricingDate`) REFERENCES `data_platform_orders_item_data` (`PricingDate`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductTaxClassification_fk` FOREIGN KEY (`ProductTaxClassification`) REFERENCES `data_platform_orders_item_data` (`ProductTaxClassification`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataContractType_fk` FOREIGN KEY (`ContractType`) REFERENCES `data_platform_orders_header_data` (`ContractType`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataOrderVaridityStartDate_fk` FOREIGN KEY (`OrderVaridityStartDate`, `OrderValidityEndDate`) REFERENCES `data_platform_orders_header_data` (`ValidityStartDate`, `ValidityEndDate`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataInvoiceScheduleStartDate_fk` FOREIGN KEY (`InvoiceScheduleStartDate`, `InvoiceScheduleEndDate`) REFERENCES `data_platform_orders_header_data` (`InvoiceScheduleStartDate`, `InvoiceScheduleEndDate`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataDeliveryDocument_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`) REFERENCES `data_platform_delivery_document_item_data` (`DeliveryDocument`, `DeliveryDocumentItem`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
