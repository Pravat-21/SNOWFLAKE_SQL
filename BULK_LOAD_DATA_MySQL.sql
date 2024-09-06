USE PP_PRACTICE;
CREATE TABLE PP_BRITISH_BRILIANT
(
	InvoiceDate	DATE,
    Make VARCHAR(40),	
    CountryName	VARCHAR(40),
    SalePrice BIGINT,
    CostPrice	BIGINT,
    TotalDiscount DECIMAL(10,2),	
    DeliveryCharge	BIGINT,
    SpareParts	BIGINT,
    LaborCost	INT,
    ClientName VARCHAR(70),	
    Model	VARCHAR(50),
    Color	VARCHAR(50),
    ReportingYear VARCHAR(30),	
    ReportingMonth	VARCHAR(30),
    Registration_Date DATE,
    VehicleType	VARCHAR(50),
    InvoiceNumber VARCHAR(200),	
    CountryISOCode	VARCHAR(20),
    OuterPostode	VARCHAR(10),
    Region VARCHAR(50)
);
SELECT * FROM `pp_practice`.`pp_british_briliant`;


