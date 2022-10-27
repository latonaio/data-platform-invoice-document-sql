CREATE TABLE `data_platform_invoice_document_header_partner_data` -- 名称変更
(
    `InvoiceDocument`                 int(16) NOT NULL,           -- 名称変更
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,           -- 新規追加
    `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,  -- 新規追加
    `BusinessPartnerName`             varchar(100) DEFAULT NULL,  -- 新規追加
    `Organization`                    varchar(4) DEFAULT NULL,    -- 新規追加
    `Language`                        varchar(2) DEFAULT NULL,    -- 新規追加
    `Currency`                        varchar(5) DEFAULT NULL,    -- 新規追加
    `ExternalDocumentID`              varchar(40) DEFAULT NULL,   -- 新規追加
    `AddressID`                       int(12) DEFAULT NULL,       -- 新規追加
    
    PRIMARY KEY (`InvoiceDocument`, `PartnerFunction`, `BusinessPartner`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerData_fk` FOREIGN KEY (`InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`InvoiceDocument`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`, `BusinessPartnerFullName`, `BusinessPartnerName`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`, `BusinessPartnerFullName`, `BusinessPartnerName`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_business_partner_general_data` (`Language`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_business_partner_accounting_data` (`Currency`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_business_partner_general_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
