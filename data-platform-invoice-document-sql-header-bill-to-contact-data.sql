CREATE TABLE `data_platform_invoice_document_header_bill_to_contact_data`
(
  `BusinessPartner`               int(10) NOT NULL,            -- 新規追加
  `InvoiceDocument`               int(10) NOT NULL,            -- 新規追加
  `BillToParty`                   int(10) NOT NULL,            -- 新規追加
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
  PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`, `BillToParty`, `ContactID`) ,
  CONSTRAINT `DataPlatformInvoiceDocumentHeaderBillToContactData_fk` FOREIGN KEY (`BusinessPartner`, `InvoiceDocument`, `BillToParty`) REFERENCES `data_platform_invoice_document_header_data` (`BusinessPartner`, `DeliveryDocument`, `BillToParty`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
