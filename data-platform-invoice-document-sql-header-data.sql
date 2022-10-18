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
    `InvoiceDocumentTime`        varchar(80) DEFAULT NULL,    -- 新規追加
    `InvoicePeriodStartDate`     varchar(80) DEFAULT NULL,    -- 新規追加
    `InvoicePeriodEndDate`       varchar(80) DEFAULT NULL,    -- 新規追加
    `InvoiceDocumentIsCancelled` tinyint(1) DEFAULT NULL,     -- 名称変更
    `CancelledInvoiceDocument`   int(10) DEFAULT NULL,        -- 名称変更
    `IsExportDelivery`           tinyint(1) DEFAULT NULL,
    `TotalNetAmount`             varchar(11) DEFAULT NULL,
    `TransactionCurrency`        varchar(5) DEFAULT NULL,
    `BusinessPartnerCurrency`    varchar(5) DEFAULT NULL,     -- 新規追加
    `TaxAmount`                  varchar(11) DEFAULT NULL,
    `TotalGrossAmount`           varchar(11) DEFAULT NULL,
    `Incoterms`                  varchar(3) DEFAULT NULL,     -- 名称変更
    `PaymentTerms`               varchar(4) DEFAULT NULL,     -- 名称変更
    `DueCalculationBaseDate`     varchar(80) DEFAULT NULL,    -- 新規追加
    `NetPaymentDays`             int(3) DEFAULT NULL,         -- 新規追加
    `PaymentMethod`              varchar(1) DEFAULT NULL,
    `PaymentBlockingReason`      tinyint(1) DEFAULT NULL,
    `ExternalReferenceDocument`　varchar(35) DEFAULT NULL,    -- 新規追加
    `BillToParty`                int(10) DEFAULT NULL,        -- 新規追加
    `SoldToParty`                int(10) DEFAULT NULL,
    `SupplyFromParty`            int(10) DEFAULT NULL,        -- 新規追加
    `DeliverToParty`             int(10) DEFAULT NULL,        -- 新規追加
    `DocumentHeaderText`         varchar(200) DEFAULT NULL,   -- 新規追加
    `AddressID`                  int(10) DEFAULT NULL,        -- 新規追加
    `Country`                    varchar(3) DEFAULT NULL,
    `LocalRegion`                varchar(3) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
