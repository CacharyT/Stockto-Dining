INSERT INTO CUSTOMER VALUES(
1, ‘John’, ‘Doe’, ‘doeJ@go.stockton.edu’, ‘Z01234567’ 
);
INSERT INTO CUSTOMER VALUES(
2, ‘Billy’, NULL, ‘joelB@go.stockton.edu’, ‘Z01234568’ 
);
INSERT INTO CUSTOMER VALUES(
3, NULL, ‘Kane’, ‘kaneH@go.stockton.edu’, ‘Z01234569’ 
);
INSERT INTO CUSTOMER VALUES(
4, NULL, NULL, NULL, NULL
);
INSERT INTO CUSTOMER VALUES(
5, ‘Lilly’, ‘Shurtz’, NULL,  ‘Z01234572’ 
);
INSERT INTO CUSTOMER VALUES(
6, ‘Tiffany’, ‘Hughes’, ‘hughesT@go.stockton.edu’, NULL
);
INSERT INTO CUSTOMER VALUES(
7, ‘Mikae’, ‘Rigby’, NULL, NULL
);
INSERT INTO CUSTOMER VALUES(
8, NULL, NULL, NULL, ‘Z01234575’ 
);
INSERT INTO CUSTOMER VALUES(
9, NULL, NULL,  ‘bryanZ@go.stockton.edu’, NULL
);
INSERT INTO CUSTOMER VALUES(
10, ‘Billy’, ‘Joel’, ‘billyJ@go.stockton.edu’, ‘Z01234577’ 
);
CREATE sequence seqCID Increment by 1 start with 11;

INSERT INTO EMPLOYEE VALUES(
1, ‘Tyler’, ‘Vans’, ‘vansT@go.stockton.edu’, NULL, TO_DATE(‘02/12/1990’, ‘MM/DD/YYYY’), ‘Floor Manager’, 1
);
INSERT INTO EMPLOYEE VALUES(
2, ‘Deep’, ‘Patel’, ‘patelD@go.stockton.edu’, NULL, TO_DATE(‘05/22/2000’, ‘MM/DD/YYYY’), ‘Chef’, 1
);
INSERT INTO EMPLOYEE VALUES(
3, ‘Jack’, ‘Brown’, ‘brownJ@go.stockton.edu’, NULL, TO_DATE(‘01/08/1995’, ‘MM/DD/YYYY’), ’Janitor’, 1
);
INSERT INTO EMPLOYEE VALUES(
4, ‘Mike’, Power, ‘powerM@go.stockton.edu’, Z09876521, TO_DATE(‘08/20/1999’, ‘MM/DD/YYYY’) ‘Cashier’, 0 
);
INSERT INTO EMPLOYEE VALUES(
5, ‘John’, ‘Hancock’, ‘hancockJ@go.stockton.edu’, Z09876551, TO_DATE(‘03/25/1988’, ‘MM/DD/YYYY’), ‘Chef Manager’, 1 
);
INSERT INTO EMPLOYEE VALUES(
6, ‘Ben’, ‘Simmons’, ‘simmonsB@go.stockton.edu’, Z09886551, TO_DATE(‘07/01/1998’, ‘MM/DD/YYYY’), ‘Director’, 1 
);
INSERT INTO EMPLOYEE VALUES(
7, ‘Zoe’, ‘Powell’, ‘powellZ@go.stockton.edu’, NULL, TO_DATE(‘11/22/2001’, ‘MM/DD/YYYY’), 0
);
INSERT INTO EMPLOYEE VALUES(
8, ‘Mya’, ‘Cruz’, ‘cruzM@go.stockton.edu’, NULL, TO_DATE(‘04/05/1973’, ‘MM/DD/YYYY’), 0
);
INSERT INTO EMPLOYEE VALUES(
9, ‘John’, ‘Doe’, ‘doelJ@go.stockton.edu’, NULL, TO_DATE(‘04/05/1973’, ‘MM/DD/YYYY’), 1 
);
INSERT INTO EMPLOYEE VALUES(
10, ‘John’, ‘Doe’, ‘doeJ@go.stockton.edu’, Z09986551,  TO_DATE(‘04/05/1973’, ‘MM/DD/YYYY’), 1 
);
CREATE sequence seqEID Increment by 1 start with 11;

INSERT INTO INGREDIENT VALUES(
1, ‘Tomato’, 3, ‘kg’, 3
);
INSERT INTO INGREDIENT VALUES(
2, ‘Beef’, 15, ‘kg’, 5
);
INSERT INTO INGREDIENT VALUES(
3, ‘Eggs’, 48, ‘pieces’, 40
);
INSERT INTO INGREDIENT VALUES(
4, ‘Salt’, 5, ‘kg’, 2
);
INSERT INTO INGREDIENT VALUES(
5, ‘Onion’, 5, ‘kg’, 3
);
INSERT INTO INGREDIENT VALUES(
6, ‘Tuna’, 30, ‘cans’, 25
);
INSERT INTO INGREDIENT VALUES(
7, ‘Potatoes’, 30, ‘kg’, 20
);
INSERT INTO INGREDIENT VALUES(
8, ‘Butter’, 10, ‘kg’,  3
);
INSERT INTO INGREDIENT VALUES(
9, ‘Peppers’, 30, ‘pieces’, 10
);
INSERT INTO INGREDIENT VALUES(
10, ‘Rice’, 10, ‘kg’, 5
);
CREATE sequence seqIID Increment by 1 start with 11;

INSERT INTO TRANSACTION VALUES(
1, 1, 2, NULL, 10.00, 0.80, 10.80
);
INSERT INTO TRANSACTION VALUES(
2, 2, 3, TO_TIMESTAMP('2025-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 22.50, 1.80, 24.30
);
INSERT INTO TRANSACTION VALUES(
3, 1, 4, TO_TIMESTAMP('2025-02-14 12:30:45', 'YYYY-MM-DD HH24:MI:SS'), 15.25, 1.22, 16.47
);
INSERT INTO TRANSACTION VALUES(
4, 7, 9, TO_TIMESTAMP('2025-03-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5.00, 0.40, 5.40
);
INSERT INTO TRANSACTION VALUES(
5, 2, 3, TO_TIMESTAMP('2025-04-23 15:45:10', 'YYYY-MM-DD HH24:MI:SS'), 20.10, 1.61, 21.71
);
INSERT INTO TRANSACTION VALUES(
6, 8, 4, NULL, 12.99, 1.04, 14.03
);
INSERT INTO TRANSACTION VALUES(
7, 10, 1, TO_TIMESTAMP('2025-05-05 22:15:55', 'YYYY-MM-DD HH24:MI:SS'), 6.00, 0.48, 6.48
);
INSERT INTO TRANSACTION VALUES(
8, 1, 1, TO_TIMESTAMP('2025-06-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 18.75, 1.50, 20.25
);
INSERT INTO TRANSACTION VALUES(
9, 6, 4, TO_TIMESTAMP('2025-07-04 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 9.90, 0.79, 10.69
);
INSERT INTO TRANSACTION VALUES(
10, 5, 7, NULL, 24.00, 1.92, 25.92
);
CREATE sequence seqTID Increment by 1 start with 11;

INSERT INTO MENU_ITEM VALUES(
1, ‘Roast beef’, ‘Main Course’,  14.99
);
INSERT INTO MENU_ITEM VALUES(
2, ‘Fried rice’, ‘Main Course’,  9.50  
);
INSERT INTO MENU_ITEM VALUES(
3, ‘Caesar salad’, ‘Salad’,  6.25 
);
INSERT INTO MENU_ITEM VALUES(
4, ‘Baked salmon’, ‘Main Course’,  13.75 
);
INSERT INTO MENU_ITEM VALUES(
5, ‘Chicken wings’, ‘Appetizer’,  7.95  
);
INSERT INTO MENU_ITEM VALUES(
6, ‘Mashed potatoes’, ‘Side Dish’,  4.50  
);
INSERT INTO MENU_ITEM VALUES(
7, ‘Steamed vegetables’, NULL,  3.99  
);
INSERT INTO MENU_ITEM VALUES(
8, ‘Spaghetti with marinara’, ‘Main Course’,  8.95  
);
INSERT INTO MENU_ITEM VALUES(
9, ‘Garlic bread’, ‘Side Dish’,  2.75  
);
INSERT INTO MENU_ITEM VALUES(
10, ‘Chocolate cake’, ‘Dessert’,  5.80
);
CREATE sequence seqMID Increment by 1 start with 11;

INSERT INTO TRANSACTION_ITEM VALUES(
1, 2, 2, 9.50, 19.00
);
INSERT INTO TRANSACTION_ITEM VALUES(
2, 5, 4, 7.95, 31.80
);
INSERT INTO TRANSACTION_ITEM VALUES(
3, 1, 2, 13.99, 27.98
);
INSERT INTO TRANSACTION_ITEM VALUES(
4, 2, 1, 6.25, 6.25
);
INSERT INTO TRANSACTION_ITEM VALUES(
5, 6, 4, 2.50, 10.00
);
INSERT INTO TRANSACTION_ITEM VALUES(
6, 9, 5, 2.75, 13.75
);
INSERT INTO TRANSACTION_ITEM VALUES(
7, 10, 1, 5.80, 5.80
);
INSERT INTO TRANSACTION_ITEM VALUES(
8, 2, 3, 7.50, 22.50
);
INSERT INTO TRANSACTION_ITEM VALUES(
9, 8, 2, 8.95, 17.90
);
INSERT INTO TRANSACTION_ITEM VALUES(
10, 10, 2, 5.80, 11.60
);
CREATE sequence seqTIID Increment by 1 start with 11;


INSERT INTO INGREDIENT_USE VALUES(
1, 1, 2, ‘Blend two tomatoes into a puree’
);
INSERT INTO INGREDIENT_USE VALUES(
2, 2, 3, ‘slice into cube chunks’
);
INSERT INTO INGREDIENT_USE VALUES(
3, 3, 6, ‘beat six eggs into a bowl’
);
INSERT INTO INGREDIENT_USE VALUES(
4, 4, 1, ‘sprinkle any dish with a pinch of salt’
);
INSERT INTO INGREDIENT_USE VALUES(
5, 5, 2, ‘chop and mince until fine texture’
);
INSERT INTO INGREDIENT_USE VALUES(
6, 6, 10, ‘slice into three pieces: head, body, and tail’
);
INSERT INTO INGREDIENT_USE VALUES(
7, 7, 5, ‘slice into four equal chunks’
);
INSERT INTO INGREDIENT_USE VALUES(
8, 8, 3, ‘melt into a pan until slightly brown’
);
INSERT INTO INGREDIENT_USE VALUES(
9, 9, 5, NULL
);
INSERT INTO INGREDIENT_USE VALUES(
10, 10, 2, ‘rinse in a bowl, cook for 10 minutes’
);
INSERT INTO INGREDIENT_USE VALUES(
2, 5, 2, ‘Cut onions to cook the fried rice’
);
CREATE sequence seqIUID Increment by 1 start with 12;

INSERT INTO ALLERGENS VALUES(
1, ‘Peanuts’
);
INSERT INTO ALLERGENS VALUES(
2, ‘Tree Nuts’
);
INSERT INTO ALLERGENS VALUES(
3, ‘Milk’
);
INSERT INTO ALLERGENS VALUES(
4, ‘Eggs’
);
INSERT INTO ALLERGENS VALUES(
5, ‘Fish’
);
INSERT INTO ALLERGENS VALUES(
6, ‘Shell Fish’
);
INSERT INTO ALLERGENS VALUES(
7, ‘Soy’
);
INSERT INTO ALLERGENS VALUES(
8, ‘Wheat’
);
INSERT INTO ALLERGENS VALUES(
9, ‘Sesame’
);
INSERT INTO ALLERGENS VALUES(
10, ‘Gluten’
);
CREATE sequence seqAID Increment by 1 start with 11;


INSERT INTO MENU_ITEM_ALLERGENS VALUES(
1, 4
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
2, 10
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
3, 4
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
4, 5
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
5, 7
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
6, 3
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
7, 9
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
8, 8
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
9, 8
);
INSERT INTO MENU_ITEM_ALLERGENS VALUES(
10, 4
);

CREATE sequence seqMIAID Increment by 1 start with 11;

