CREATE TABLE `data_platform_invoice_document_header_data`     -- 名称変更
(
--  `BusinessPartner`            int(10) NOT NULL,            -- 新規追加
    `InvoiceDocument`            int(16) NOT NULL,            -- 名称変更
--  `InvoiceDocumentType`        varchar(2) DEFAULT NULL,     -- 名称変更
    `CreationDate`               date DEFAULT NULL,
    `LastChangeDate`             date DEFAULT NULL,
    `BillToParty`                int(16) DEFAULT NULL,
    `BillFromParty`              int(16) DEFAULT NULL,        -- 新規追加
    `BillToPartyLanguage`        varchar(2) DEFAULT NULL,     -- 新規追加
    `BillFromPartyLanguage`      varchar(2) DEFAULT NULL,     -- 新規追加
    `InvoiceDocumentDate`        date DEFAULT NULL,           -- 名称変更
    `InvoiceDocumentTime`        time DEFAULT NULL,           -- 新規追加
    `InvoicePeriodStartDate`     date DEFAULT NULL,           -- 新規追加
    `InvoicePeriodEndDate`       date DEFAULT NULL,           -- 新規追加
    `AccountingPostingDate`      date DEFAULT NULL,           -- 新規追加
    `InvoiceDocumentIsCancelled` tinyint(1) DEFAULT NULL,     -- 名称変更
    `CancelledInvoiceDocument`   int(16) DEFAULT NULL,        -- 名称変更
    `IsExportDelivery`           tinyint(1) DEFAULT NULL,
    `TotalNetAmount`             float(13) DEFAULT NULL,
    `TotalTaxAmount`             float(13) DEFAULT NULL,
    `TotalGrossAmount`           float(13) DEFAULT NULL,
    `TransactionCurrency`        varchar(5) DEFAULT NULL,
    `BusinessPartnerCurrency`    varchar(5) DEFAULT NULL,     -- 新規追加
    `Incoterms`                  varchar(3) DEFAULT NULL,     -- 名称変更
    `PaymentTerms`               varchar(4) DEFAULT NULL,     -- 名称変更
    `DueCalculationBaseDate`     date DEFAULT NULL,           -- 新規追加
    `NetPaymentDays`             int(3) DEFAULT NULL,         -- 新規追加
    `PaymentMethod`              varchar(1) DEFAULT NULL,
    `PaymentBlockingReason`      tinyint(1) DEFAULT NULL,
    `ExternalReferenceDocument`  varchar(35) DEFAULT NULL,    -- 新規追加
    `DocumentHeaderText`         varchar(200) DEFAULT NULL,   -- 新規追加
    `BillToAddressID`            int(12) DEFAULT NULL,        -- 新規追加
    `BillFromAddressID`          int(12) DEFAULT NULL,        -- 新規追加
    `BillToCountry`              varchar(3) DEFAULT NULL,     -- 名称変更
    `BillToLocalRegion`          varchar(3) DEFAULT NULL,     -- 名称変更
    `BillFromCountry`            varchar(3) DEFAULT NULL,     -- 新規追加
    `BillFromLocalRegion`        varchar(3) DEFAULT NULL,     -- 新規追加
    
    PRIMARY KEY (`InvoiceDocument`)
    
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataBillToParty_fk` FOREIGN KEY (`BillToParty`, `BillFromParty`) REFERENCES `data_platform_orders_header_partner_data` (`PartnerFunction`, `PartnerFunction`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataBillToPartyLanguage_fk` FOREIGN KEY (`BillToPartyLanguage`, `BillFromPartyLanguage`) REFERENCES `data_platform_business_partner_general_data` (`Language`, `Language`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_orders_header_data` (`TransactionCurrency`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataBillToAddressID_fk` FOREIGN KEY (`BillToAddressID`, `BillFromAddressID`, `BillToCountry`, `BillToLocalRegion`, `BillFromCountry`, `BillFromLocalRegion`) REFERENCES `data_platform_address_address_data` (`AddressID`, `AddressID`, `Country`, `Country`, `LocalRegion`, `LocalRegion`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
