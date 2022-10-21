CREATE TABLE `data_platform_invoice_document_header_data`     -- 名称変更
(
    `BusinessPartner`            int(10) NOT NULL,            -- 新規追加
    `InvoiceDocument`            int(10) NOT NULL,            -- 名称変更
    `InvoiceDocumentType`        varchar(2) DEFAULT NULL,     -- 名称変更
    `CreationDate`               varchar(80) DEFAULT NULL,
    `LastChangeDate`             varchar(80) DEFAULT NULL,
    `BillToParty`                int(10) DEFAULT NULL,
    `BillFromParty`              int(10) DEFAULT NULL,        -- 新規追加
    `InvoiceDocumentDate`        varchar(80) DEFAULT NULL,    -- 名称変更
    `InvoiceDocumentTime`        varchar(80) DEFAULT NULL,    -- 新規追加
    `InvoicePeriodStartDate`     varchar(80) DEFAULT NULL,    -- 新規追加
    `InvoicePeriodEndDate`       varchar(80) DEFAULT NULL,    -- 新規追加
    `AccountingPostingDate`      varchar(80) DEFAULT NULL,    -- 新規追加
    `InvoiceDocumentIsCancelled` tinyint(1) DEFAULT NULL,     -- 名称変更
    `CancelledInvoiceDocument`   int(10) DEFAULT NULL,        -- 名称変更
    `IsExportDelivery`           tinyint(1) DEFAULT NULL,
    `TotalNetAmount`             varchar(11) DEFAULT NULL,
    `TransactionCurrency`        varchar(5) DEFAULT NULL,
    `BusinessPartnerCurrency`    varchar(5) DEFAULT NULL,     -- 新規追加
    `TotalTaxAmount`             varchar(11) DEFAULT NULL,
    `TotalGrossAmount`           varchar(11) DEFAULT NULL,
    `Incoterms`                  varchar(3) DEFAULT NULL,     -- 名称変更
    `PaymentTerms`               varchar(4) DEFAULT NULL,     -- 名称変更
    `DueCalculationBaseDate`     varchar(80) DEFAULT NULL,    -- 新規追加
    `NetPaymentDays`             int(3) DEFAULT NULL,         -- 新規追加
    `PaymentMethod`              varchar(1) DEFAULT NULL,
    `PaymentBlockingReason`      tinyint(1) DEFAULT NULL,
    `ExternalReferenceDocument`　varchar(35) DEFAULT NULL,    -- 新規追加
    `DocumentHeaderText`         varchar(200) DEFAULT NULL,   -- 新規追加
    `BillToAddressID`            int(10) DEFAULT NULL,        -- 新規追加
    `BillFromAddressID`          int(10) DEFAULT NULL,        -- 新規追加
    `BillToCountry`              varchar(3) DEFAULT NULL,     -- 名称変更
    `BillToLocalRegion`          varchar(3) DEFAULT NULL,     -- 名称変更
    `BillFromCountry`            varchar(3) DEFAULT NULL,     -- 新規追加
    `BillFromLocalRegion`        varchar(3) DEFAULT NULL,     -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `InvoiceDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
