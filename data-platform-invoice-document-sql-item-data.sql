CREATE TABLE `data_platform_invoice_document_item_data`
(
    `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
    `InvoiceDocument`                int(10) NOT NULL,
    `InvoiceDocumentItem`            int(6) NOT NULL,
    `DocumentItemCategory`           varchar(4) DEFAULT NULL,  -- 名称変更
    `CreationDate`                   varchar(80) DEFAULT NULL,
    `CreationTime`                   varchar(80) DEFAULT NULL,
    `Division`                       varchar(2) DEFAULT NULL,
    `ProductStandardID`              varchar(18) DEFAULT NULL, -- 新規追加
    `Batch`                          varchar(10) DEFAULT NULL,
    `Product`                        varchar(40) DEFAULT NULL, -- 名称変更
    `ProductGroup`                   varchar(9) DEFAULT NULL,
    `IssuingPlant`                   varchar(4) DEFAULT NULL,  -- 新規追加
    `IssuingPlantStorageLocation`    varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlant`                 varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlantStorageLocation`  varchar(4) DEFAULT NULL,  -- 新規追加
    `InvoiceDocumentItemText`        varchar(200) DEFAULT NULL,
    `ServicesRenderedDate`           varchar(80) DEFAULT NULL,
    `InvoiceQuantity`                varchar(13) DEFAULT NULL,
    `InvoiceQuantityUnit`            varchar(3) DEFAULT NULL,
    `InvoiceQuantityInBaseUnit`      varchar(13) DEFAULT NULL,
    `BaseUnit`                       varchar(3) DEFAULT NULL,
    `ItemGrossWeight`                varchar(17) DEFAULT NULL,　-- 新規追加
    `ItemNetWeight`                  varchar(17) DEFAULT NULL,　-- 新規追加
    `ItemWeightUnit`                 varchar(3) DEFAULT NULL,　 -- 新規追加
    `ItemVolume`                     varchar(17) DEFAULT NULL,　-- 新規追加
    `ItemVolumeUnit`                 varchar(3) DEFAULT NULL,　 -- 新規追加
    `Country`                        varchar(3) DEFAULT NULL,　 -- 名称変更
    `Region`                         varchar(3) DEFAULT NULL,　 -- 名称変更
    `NetAmount`                      varchar(17) DEFAULT NULL,
    `TransactionCurrency`            varchar(5) DEFAULT NULL,
    `BusinessPartnerCurrency`        varchar(5) DEFAULT NULL,　 -- 新規追加
    `GrossAmount`                    varchar(17) DEFAULT NULL,
    `PricingDate`                    varchar(80) DEFAULT NULL,
    `TaxAmount`                      varchar(17) DEFAULT NULL,
    `ProductTaxClassification1`      varchar(1) DEFAULT NULL,
    `BusinessArea`                   varchar(4) DEFAULT NULL,
    `ProfitCenter`                   varchar(10) DEFAULT NULL,
    `Project`                        varchar(24) DEFAULT NULL,
    `OrderID`                        int(10) DEFAULT NULL,       -- 新規追加
    `OrderItem`                      int(6) DEFAULT NULL,        -- 新規追加
    `OrderType`                      varchar(3) DEFAULT NULL,    -- 新規追加
    `ContractType`                   varchar(4) DEFAULT NULL,    -- 新規追加
    `OrderVaridityStartDate`         varchar(80) DEFAULT NULL,   -- 新規追加
    `OrderVaridityEndDate`           varchar(80) DEFAULT NULL,   -- 新規追加
    `InvoiceScheduleStartDate`       varchar(80) DEFAULT NULL,   -- 新規追加
    `InvoiceScheduleEndDate`         varchar(80) DEFAULT NULL,   -- 新規追加
    `DeliveryDocument`               int(10) DEFAULT NULL,       -- 新規追加
    `DeliveryDocumentItem`           int(6) DEFAULT NULL,        -- 新規追加
    `OriginDocument`                 int(10) DEFAULT NULL,
    `OriginDocumentItem`             int(6) DEFAULT NULL,
    `ReferenceDocument`              int(10) DEFAULT NULL,
    `ReferenceDocumentItem`          int(6) DEFAULT NULL,
    `ReferenceDocumentType`          varchar(3) DEFAULT NULL,    -- 新規追加
    `ExternalReferenceDocument`      varchar(35) DEFAULT NULL,   -- 新規追加
    `ExternalReferenceDocumentItem`  varchar(6) DEFAULT NULL,    -- 新規追加
    `OrderSalesOrganization`         varchar(4) DEFAULT NULL,    -- 名称変更
    `OrderPurchaseOrganization`      varchar(4) DEFAULT NULL,    -- 新規追加
    `OrderDistributionChannel`       varchar(2) DEFAULT NULL,    -- 名称変更
    `TaxCode`                        varchar(2) DEFAULT NULL,    -- 新規追加
    `CountryOfOrigin`                varchar(3) DEFAULT NULL,    -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`, `InvoiceDocumentItem`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemData_fk` FOREIGN KEY (`BusinessPartner`, `InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`BusinessPartner`, `InvoiceDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
