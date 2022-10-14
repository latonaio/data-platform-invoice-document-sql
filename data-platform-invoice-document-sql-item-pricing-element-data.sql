CREATE TABLE `data_platform_invoice_document_item_pricing_element_data`  -- 名称変更
(
  `BusinessPartner`             int(10) NOT NULL,          -- 新規追加
  `InvoiceDocument`             int(10) NOT NULL,          -- 名称変更
  `InvoiceDocumentItem`         int(6) NOT NULL,           -- 名称変更
  `PricingProcedureStep`        varchar(3) NOT NULL,
  `PricingProcedureCounter`     int(3) NOT NULL,
  `ConditionType`               varchar(4) DEFAULT NULL,
  `PricingDate`                 varchar(80) DEFAULT NULL,  -- 名称変更
  `ConditionRateValue`          varchar(25) DEFAULT NULL,
  `ConditionCurrency`           varchar(5) DEFAULT NULL,
  `ConditionQuantity`           varchar(6) DEFAULT NULL,
  `ConditionQuantityUnit`       varchar(3) DEFAULT NULL,
  `ConditionRecord`             varchar(10) DEFAULT NULL,
  `ConditionSequentialNumber`   varchar(3) DEFAULT NULL,
  `TaxCode`                     varchar(2) DEFAULT NULL,
  `ConditionAmount`             varchar(25) DEFAULT NULL,
  `TransactionCurrency`         varchar(5) DEFAULT NULL,
  `ConditionIsManuallyChanged`  tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`, `InvoiceDocumentItem`, `PricingProcedureStep`, `PricingProcedureCounter`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemPricingElementData_fk` FOREIGN KEY (`BusinessPartner`, `InvoiceDocument`, `InvoiceDocumentItem`) REFERENCES `data_platform_invoice_document_item_data` (`BusinessPartner`, `InvoiceDocument`, `InvoiceDocumentItem`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
