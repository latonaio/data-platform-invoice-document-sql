CREATE TABLE `data_platform_invoice_document_header_partner_contact_data`    -- 新規追加
(
  `BusinessPartner`                   int(10) NOT NULL,            -- 新規追加
  `InvoiceDocument`                   int(10) NOT NULL,            -- 新規追加
  `PartnerFunction`                   varchar(2) NOT NULL,         -- 新規追加
  `ContactID`                         int(4) NOT NULL,             -- 新規追加
  `PartnerFunctionBusinessPartner`    int(10) DEFAULT NULL,        -- 新規追加
  `ContactPersonName`                 varchar(100) DEFAULT NULL,   -- 新規追加
  `EmailAddress`                      varchar(200) DEFAULT NULL,   -- 新規追加
  `PhoneNumber`                       varchar(100) DEFAULT NULL,   -- 新規追加
  `MobilePhoneNumber`                 varchar(100) DEFAULT NULL,   -- 新規追加
  `FaxNumber`                         varchar(100) DEFAULT NULL,   -- 新規追加
  `ContactTag1`                       varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag2`                       varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag3`                       varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag4`                       varchar(40) DEFAULT NULL,    -- 新規追加 
  PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`, `PartnerFunction`, `ContactID`) ,
  CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerContactData_fk` FOREIGN KEY (`BusinessPartner`, `InvoiceDocument`, `PartnerFunction`) REFERENCES `data_platform_invoice_document_header_partner_data` (`BusinessPartner`, `InvoiceDocument`, `PartnerFunction`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
