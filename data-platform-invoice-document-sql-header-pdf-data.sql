CREATE TABLE `data_platform_invoice_document_header_pdf_data` -- 新規追加
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `InvoiceDocument`                int(10) NOT NULL,          -- 新規追加
  `DocType`                        varchar(4) NOT NULL,       -- 新規追加
  `DocID`                          int(20) NOT NULL,          -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`, `DocType`, `DocID`, `DocVersionID`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPDFData_fk` FOREIGN KEY (`BusinessPartner`, `InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`BusinessPartner`, `InvoiceDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
