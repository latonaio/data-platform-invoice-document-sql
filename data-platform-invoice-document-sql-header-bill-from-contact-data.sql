CREATE TABLE `data_platform_invoice_document_header_bill_from_contact_data`
(
  `BusinessPartner`               int(10) NOT NULL,            -- 新規追加
  `InvoiceDocument`               int(10) NOT NULL,            -- 新規追加
  `BillFromParty`                 int(10) NOT NULL,            -- 新規追加
  `ContactID`                     int(4) NOT NULL,             -- 新規追加
  `ContactPersonName`             varchar(100) DEFAULT NULL,   -- 新規追加
  `EmailAddress`                  varchar(200) DEFAULT NULL,   -- 新規追加
  `PhoneNumber`                   varchar(100) DEFAULT NULL,   -- 新規追加
  `MobilePhoneNumber`             varchar(100) DEFAULT NULL,   -- 新規追加
  `FaxNumber`                     varchar(100) DEFAULT NULL,   -- 新規追加
  `ContactTag1`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag2`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag3`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag4`                   varchar(40) DEFAULT NULL,    -- 新規追加 
  PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`, `BillFromParty`, `ContactID`) ,
  CONSTRAINT `DataPlatformInvoiceDocumentHeaderBillFromContactData_fk` FOREIGN KEY (`BusinessPartner`, `InvoiceDocument`, `BillFromParty`) REFERENCES `data_platform_invoice_document_header_data` (`BusinessPartner`, `DeliveryDocument`, `BillFromParty`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
