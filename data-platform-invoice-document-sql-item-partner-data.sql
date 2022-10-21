CREATE TABLE `data_platform_invoice_document_item_partner_data`  -- 名称変更
(
    `BusinessPartner`                 int(10) NOT NULL,           -- 新規追加
    `InvoiceDocument`                 int(10) NOT NULL,           -- 名称変更
    `InvoiceDocumentItem`             int(6) NOT NULL,            -- 名称変更
    `PartnerFunction`                 varchar(2) NOT NULL,
    `PartnerFunctionBusinessPartner`  int(10) DEFAULT NULL,       -- 新規追加
    `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,  -- 新規追加
    `BusinessPartnerName`             varchar(100) DEFAULT NULL,  -- 新規追加
    `AddressID`                       int(10) DEFAULT NULL,       -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`, `InvoiceDocumentItem`, `PartnerFunction`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemPartnerData_fk` FOREIGN KEY (`BusinessPartner`, `InvoiceDocument`, `InvoiceDocumentItem`) REFERENCES `data_platform_invoice_document_item_data` (`BusinessPartner`, `InvoiceDocument`, `InvoiceDocumentItem`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
