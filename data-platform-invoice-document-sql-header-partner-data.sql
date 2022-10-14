CREATE TABLE `data_platform_invoice_document_header_partner_data`  -- 名称変更
(
    `BusinessPartner`                 int(10) NOT NULL,      -- 新規追加
    `InvoiceDocument`                 int(10) NOT NULL,      -- 名称変更
    `PartnerFunction`                 varchar(2) NOT NULL,
    `PartnerFunctionBusinessPartner`  int(10) DEFAULT NULL,  -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`, `PartnerFunction`),
    CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerData_fk` FOREIGN KEY (`BusinessPartner`, `InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`BusinessPartner`, `InvoiceDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
