CREATE TABLE CUSTOMER ( 
CustomerID				Int			NOT NULL,
FirstName				Char(25)		NULL,
LastName				Char(25)		NULL,
Email					VarChar(100)		NULL,
ZNumber				Char(9)		NULL,
CONSTRAINT	 CustomerPK			Primary Key(CustomerID),
CONSTRAINT EmailAK1			Unique(Email),
CONSTRAINT ZNumberAK1			Unique(Znumber),
CONSTRAINT ZNumberCheck	CHECK(REGEXP_LIKE(ZNumber, '^Z\d{8}$'))
);

CREATE TABLE EMPLOYEE (
EmployeeID			Int			            NOT NULL,
FirstName			CHAR(25)			NOT NULL,
LastName			CHAR(25)			NOT NULL,
Email				VARCHAR(100)		NOT NULL,
ZNumber			CHAR(9)			NULL,
DOB				DATE				NOT NULL,
Role				CHAR(25)			NOT NULL,
IsActive			NUMBER(1)			DEFAULT 1 NOT NULL,
CONSTRAINT EmployeePK			PRIMARY KEY(EmployeeID),
CONSTRAINT EmailAK2			UNIQUE(Email),
CONSTRAINT ZNumberAK2			UNIQUE(ZNumber)
);

CREATE TABLE INGREDIENT(
IngredientID				Int			NOT NULL,
IngredientName			VARCHAR2(40)	NOT NULL,
Quantity				NUMBER		NOT NULL,
Unit					VARCHAR2(30)	NOT NULL,
MinimumStockLevel			NUMBER		NOT NULL,
CONSTRAINT IngredientPK		PRIMARY KEY(IngredientID),
CONSTRAINT QuantityCheck 	CHECK(Quantity >= 0),
CONSTRAINT Stock			CHECK(MinimumStockLevel >= 0),
CONSTRAINT IngredientNameAK1		UNIQUE(IngredientName)
);

CREATE TABLE TRANSACTION(
TransactionID			Int			    NOT NULL,
CustomerID				Int			    NULL,
EmployeeID				Int			    NULL,
TransactionTime			TIMESTAMP		NULL,
SubTotal				NUMBER(6,2)		NOT NULL,
Tax					NUMBER(6,2)		NOT NULL,
Total					NUMBER(6,2)		NOT NULL,
CONSTRAINT TransactionPK		PRIMARY KEY(TransactionID),
CONSTRAINT CustomerFK1			FOREIGN KEY(CustomerID) REFERENCES		CUSTOMER(CustomerID),
CONSTRAINT EmployeeFK1			FOREIGN KEY(EmployeeID) REFERENCES 		EMPLOYEE(EmployeeID),
CONSTRAINT SubtotalCheck	CHECK(SubTotal > 0),
CONSTRAINT TaxCheck		CHECK(Tax > 0),
CONSTRAINT TotalCheck 		CHECK(Total > 0)
);

CREATE TABLE MENU_ITEM(
MenuItemID				Int			NOT NULL,
MenuName				VarChar(25)		NOT NULL,
Category				Char(25)		NULL,
Price					Number(4,2)		NOT NULL,
CONSTRAINT MenuPK			Primary Key(MenuItemID),
CONSTRAINT MenuNameAK		Unique(MenuName),
CONSTRAINT PriceCheck		CHECK( Price >= 0)
);

CREATE TABLE TRANSACTION_ITEM(
TransactionID			Int			NOT NULL,
MenuItemID				Int			NOT NULL,
Quantity				Number(2)		NOT NULL,	
UnitPrice				Number(5,2)		NOT NULL,
ExtendedPrice			Number(5,2)		NOT NULL,
CONSTRAINT TransactionItemPK		Primary Key(TransactionID, MenuItemID),
CONSTRAINT TransactionFK2		Foreign Key(TransactionID) REFERENCES	TRANSACTION(TransactionID),
CONSTRAINT MenuItemFK1			Foreign Key(MenuItemID) REFERENCES 		MENU_ITEM(MenuItemID),
CONSTRAINT QuantityCheck1		CHECK((Quantity >=0) AND (Quantity <= 99))
);

CREATE TABLE INGREDIENT_USE(
MenuItemID				Int			NOT NULL,
IngredientID			Int			NOT NULL,
Quantity				Int			NOT NULL,
Instruction				VarChar(100)		NULL,
CONSTRAINT IngredientUsePK		Primary Key(MenuItemID, IngredientID),
CONSTRAINT MenuItemFK2			Foreign Key(MenuItemID) REFERENCES 	MENU_ITEM(MenuItemID),
CONSTRAINT IngredientFK1		Foreign Key(IngredientID) REFERENCES 	INGREDIENT(IngredientID),
CONSTRAINT QuantityCheck2		CHECK(Quantity > 0)
);

CREATE TABLE ALLERGENS(
AllergensID				    Int			NOT NULL,
AllergenDescription			VarChar(100)		NOT NULL,
CONSTRAINT AllergensPK			Primary Key(AllergensID),
CONSTRAINT AllergenDescriptionAK 	UNIQUE(AllergenDescription)
);

CREATE TABLE MENU_ITEM_ALLERGENS(
MenuItemID				Int			NOT NULL,
AllergensID				Int			NOT NULL,
CONSTRAINT MenuItemAllergenPK		Primary Key(MenuItemID, AllergensID),
CONSTRAINT MenuItemFK3			Foreign Key(MenuItemID) REFERENCES 		MENU_ITEM(MenuItemID),
CONSTRAINT AllergensFK1			Foreign Key(AllergensID) REFERENCES 	ALLERGENS(AllergensID)
);



