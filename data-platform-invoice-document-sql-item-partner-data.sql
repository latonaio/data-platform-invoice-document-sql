CREATE TABLE `data_platform_invoice_document_item_partner_data`
(
    `InvoiceDocument`                 int(16) NOT NULL,
    `InvoiceDocumentItem`             int(6) NOT NULL,
    `PartnerFunction`                 varchar(4) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    
    PRIMARY KEY (`InvoiceDocument`, `InvoiceDocumentItem`, `PartnerFunction`, `BusinessPartner`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentItemPartnerData_fk` FOREIGN KEY (`InvoiceDocument`, `InvoiceDocumentItem`) REFERENCES `data_platform_invoice_document_item_data` (`InvoiceDocument`, `InvoiceDocumentItem`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
