CREATE TABLE `data_platform_invoice_document_header_data`
(
    `InvoiceDocument`               int(16) NOT NULL,
    `CreationDate`                  date DEFAULT NULL,
    `LastChangeDate`                date DEFAULT NULL,
    `BillFromParty`                 int(12) DEFAULT NULL,
    `BillToParty`                   int(12) DEFAULT NULL,
    `BillFromCountry`               varchar(3) DEFAULT NULL,
    `BillToCountry`                 varchar(3) DEFAULT NULL,
    `Payer`                         int(12) DEFAULT NULL,
    `Payee`                         int(12) DEFAULT NULL,
    `InvoiceDocumentDate`           date DEFAULT NULL,
    `InvoiceDocumentTime`           time DEFAULT NULL,
    `InvoicePeriodStartDate`        date DEFAULT NULL,
    `InvoicePeriodEndDate`          date DEFAULT NULL,
    `AccountingPostingDate`         date DEFAULT NULL,
    `InvoiceDocumentIsCancelled`    tinyint(1) DEFAULT NULL,
    `CancelledInvoiceDocument`      int(16) DEFAULT NULL,
    `IsExportImportDelivery`        tinyint(1) DEFAULT NULL,
    `HeaderBillingIsConfirmed`      tinyint(1) DEFAULT NULL,
    `HeaderBillingConfStatus`       varchar(2) DEFAULT NULL,
    `TotalNetAmount`                float(13) DEFAULT NULL,
    `TotalTaxAmount`                float(13) DEFAULT NULL,
    `TotalGrossAmount`              float(13) DEFAULT NULL,
    `TransactionCurrency`           varchar(5) DEFAULT NULL,
    `Incoterms`                     varchar(3) DEFAULT NULL,
    `PaymentTerms`                  varchar(4) DEFAULT NULL,
    `DueCalculationBaseDate`        date DEFAULT NULL,
    `NetPaymentDays`                int(3) DEFAULT NULL,
    `PaymentDueDate`                date DEFAULT NULL,    
    `PaymentMethod`                 varchar(1) DEFAULT NULL,
    `HeaderPaymentBlockStatus`      tinyint(1) DEFAULT NULL,
    `ExternalReferenceDocument`     varchar(35) DEFAULT NULL,
    `DocumentHeaderText`            varchar(200) DEFAULT NULL,
    `HeaderPaymentRequisitionIsCreated`   tinyint(1) DEFAULT NULL,    
    PRIMARY KEY (`InvoiceDocument`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderDataBillFromParty_fk` FOREIGN KEY (`BillFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderDataBillToParty_fk` FOREIGN KEY (`BillToParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderBillFromCountry_fk` FOREIGN KEY (`BillFromCountry`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderBillToCountry_fk` FOREIGN KEY (`BillToCountry`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderDataPayer_fk` FOREIGN KEY (`Payer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderDataPayee_fk` FOREIGN KEY (`Payee`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),    
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;