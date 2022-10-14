CREATE TABLE `data_platform_invoice_document_header_data`     -- 名称変更
(
    `BusinessPartner`            int(10) NOT NULL,            -- 新規追加
    `InvoiceDocument`            int(10) NOT NULL,            -- 名称変更
    `InvoiceDocumentType`        varchar(2) DEFAULT NULL,     -- 名称変更
    `CreationDate`               varchar(80) DEFAULT NULL,
    `LastChangeDate`             varchar(80) DEFAULT NULL,
    `SalesOrganization`          varchar(4) DEFAULT NULL,
    `PurchaseOrganization`       varchar(4) DEFAULT NULL,     -- 新規追加
    `DistributionChannel`        varchar(2) DEFAULT NULL,
    `Division`                   varchar(2) DEFAULT NULL,
    `InvoiceDocumentDate`        varchar(80) DEFAULT NULL,    -- 名称変更
    `InvoiceDocumentIsCancelled` tinyint(1) DEFAULT NULL,     -- 名称変更
    `CancelledInvoiceDocument`   int(10) DEFAULT NULL,        -- 名称変更
    `IsExportDelivery`           tinyint(1) DEFAULT NULL,
    `TotalNetAmount`             varchar(11) DEFAULT NULL,
    `TransactionCurrency`        varchar(5) DEFAULT NULL,
    `TaxAmount`                  varchar(11) DEFAULT NULL,
    `TotalGrossAmount`           varchar(11) DEFAULT NULL,
    `IncotermsClassification`    varchar(3) DEFAULT NULL,
    `PaymentTerms`               varchar(4) DEFAULT NULL,     -- 名称変更
    `DueCalculationBaseDate`     varchar(80) DEFAULT NULL,    -- 新規追加
    `NetPaymentDays`             int(3) DEFAULT NULL,         -- 新規追加
    `PaymentMethod`              int(1) DEFAULT NULL,
    `PaymentBlockingReason`      tinyint(1) DEFAULT NULL,
    `ExternalReferenceDocument`　varchar(35) DEFAULT NULL,    -- 新規追加
    `SoldToParty`                int(10) DEFAULT NULL,
    `SupplyFromParty`            int(10) DEFAULT NULL,        -- 新規追加
    `DeliverToParty`             int(10) DEFAULT NULL,        -- 新規追加
    `DocumentHeaderText`         varchar(200) DEFAULT NULL,   -- 新規追加
    `AddressID`                  int(10) DEFAULT NULL,        -- 新規追加
    `Country`                    varchar(3) DEFAULT NULL,
    `Region`                     varchar(3) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
