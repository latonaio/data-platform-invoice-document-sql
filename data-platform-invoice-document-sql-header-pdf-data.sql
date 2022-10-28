CREATE TABLE `data_platform_invoice_document_header_pdf_data`
(
  `InvoiceDocument`                int(16) NOT NULL,
  `DocType`                        varchar(40) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  
    PRIMARY KEY (`InvoiceDocument`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPDFData_fk` FOREIGN KEY (`InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`InvoiceDocument`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPDFDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPDFDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
