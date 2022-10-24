CREATE TABLE `data_platform_invoice_document_header_pdf_data` -- 新規追加
(
--`BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `InvoiceDocument`                int(16) NOT NULL,          -- 新規追加
  `DocType`                        varchar(20) NOT NULL,      -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `DocID`                          varchar(100) NOT NULL,     -- 新規追加
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,      -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
  
    PRIMARY KEY (`InvoiceDocument`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPDFData_fk` FOREIGN KEY (`InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`InvoiceDocument`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPDFDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPDFDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
