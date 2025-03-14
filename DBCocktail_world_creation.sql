-- The following sql file is a database of cocktails belonging to a video game
-- Where de player create cocktail by finding ingredient by making quest
CREATE SCHEMA cocktail ;
USE cocktail;
CREATE TABLE Cocktail(
   Name_Cocktail VARCHAR(100) NOT NULL, -- Name of the cocktail
   Origin_Cocktail VARCHAR(50) NOT NULL, -- Where the cocktail is made 
   Difficulty_Cocktail VARCHAR(50) NOT NULL, -- Difficulty of making the cocktail ( if ther ingredients are hard to find)
   Price_Cocktail INT NOT NULL, -- Price of the cocktail
   PRIMARY KEY(Name_Cocktail),
   UNIQUE(Name_Cocktail)
);

CREATE TABLE Ingredient(
   Name_Ingredient VARCHAR(50) NOT NULL, -- name of the ingredient
   Origin_Ingredient VARCHAR(50) NOT NULL, -- where the ingredient can be find
   Rank_Ingredient INT NOT NULL, -- Rank of difficulty to find the ingredient
   Type_Ingredient VARCHAR(50) NOT NULL, -- what type is the ingredient ( alcohol, fruit, vegetable, syrup ...)
   Degre_Ingredient INT NOT NULL, -- degre of alcohol of the ingredient
   Quest_Ingredient INT NOT NULL, -- in which quest the ingredient is find
   Price_Ingredient INT NOT NULL, -- price of the Ingredient
   PRIMARY KEY(Name_Ingredient),
   UNIQUE(Name_Ingredient),
   UNIQUE(Quest_Ingredient)
);

CREATE TABLE Dose(
   ID_Dose INT NOT NULL, -- ID of the Dose
   Quantity_Dose INT NOT NULL, -- Quantity of the dose
   Unit_Dose VARCHAR(50) NOT NULL, -- Unit of the dose (cl, ml ...)
   Name_Cocktail VARCHAR(100) NOT NULL, -- the Cocktail where belong the dose
   Name_Ingredient VARCHAR(50) NOT NULL, -- the ingredient in the dose
   PRIMARY KEY(ID_Dose),
   UNIQUE(ID_Dose),
   FOREIGN KEY(Name_Cocktail) REFERENCES Cocktail(Name_Cocktail), -- a dose belong to a Cocktail
   FOREIGN KEY(Name_Ingredient) REFERENCES Ingredient(Name_Ingredient) -- a dose is made of a particular ingredient
);


