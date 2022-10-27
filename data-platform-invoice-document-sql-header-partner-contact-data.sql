CREATE TABLE `data_platform_invoice_document_header_partner_contact_data`
(
  `InvoiceDocument`                   int(16) NOT NULL,
  `PartnerFunction`                   varchar(40) NOT NULL,
  `BusinessPartner`                   int(12) NOT NULL,
  `ContactID`                         int(4) NOT NULL,
  `ContactPersonName`                 varchar(100) DEFAULT NULL,
  `EmailAddress`                      varchar(200) DEFAULT NULL,
  `PhoneNumber`                       varchar(100) DEFAULT NULL,
  `MobilePhoneNumber`                 varchar(100) DEFAULT NULL,
  `FaxNumber`                         varchar(100) DEFAULT NULL,
  `ContactTag1`                       varchar(40) DEFAULT NULL,
  `ContactTag2`                       varchar(40) DEFAULT NULL,
  `ContactTag3`                       varchar(40) DEFAULT NULL,
  `ContactTag4`                       varchar(40) DEFAULT NULL,  
  
  PRIMARY KEY (`InvoiceDocument`, `PartnerFunction`, `BusinessPartner`, `ContactID`) ,
  
  CONSTRAINT `DataPlatformInvoiceDocumentHeaderPartnerContactData_fk` FOREIGN KEY (`InvoiceDocument`, `PartnerFunction`, `BusinessPartner`) REFERENCES `data_platform_invoice_document_header_partner_data` (`InvoiceDocument`, `PartnerFunction`, `BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
