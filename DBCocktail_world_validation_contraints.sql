-- Constraint of the database

describe cocktail;
describe dose;
describe ingredient;

-- Constrainte 1 for the LV to have to make the Cocktail
alter table cocktail
add constraint ck_LV
check ( LV_Cocktail <= 8 or LV_Cocktail > 0);


-- alter table cocktail drop constraint ck_Difficullty;


-- Constrainte 2 for thre difficulty of the Cocktail
alter table cocktail
add constraint ck_Difficullty
check (( Difficulty_Cocktail <= 8 or Difficulty_Cocktail > 0));


-- Constrainte 3 for the unit of the dose
alter table dose
add constraint ck_Unit
check ( Unit_Dose in ('dL','cL','mL','L','dg','cg','mg','g','wedge','spoon'));

-- alter table dose drop constraint ck_Unit;

-- Constrainte 4 for the Rank of the ingredient
alter table ingredient
add constraint ck_Rank
check (( Rank_Ingredient <= 8 or Rank_Ingredient > 0));

-- Constrainte 5 for the Type of ingredient
alter table ingredient
add constraint ck_Type
check ( Type_Ingredient in ('Fruit','Juice','Vegetable','Syrup','Alcohol','Aromate','Nut','Water','Soda','Special'));

-- Constrainte 6 for the degre of alcohol in the ingredient
alter table ingredient
add constraint ck_Degre_alcohol1
check ( Degre_Ingredient <= 100 or Degre_Ingredient >= 0);

-- Constrainte 7 for the quest where found the ingredient
alter table ingredient
add constraint ck_Quest
check (( Quest_Ingredient > 0));