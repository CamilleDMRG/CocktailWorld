-- display cocktail with ingredient  Vodka
select distinct Name_Cocktail from Dose where  Name_Ingredient = 'Vodka';

-- display cocktail in price order ( smaller to bigger)
select Name_Cocktail from cocktail order by Price_Cocktail;

-- display cocktail from country 
select distinct Name_Cocktail from cocktail where Origin_Cocktail = 'Jaheds';

-- display ingredient from country 
select distinct Name_Ingredient from ingredient where Origin_Ingredient = 'Jaheds';

-- display ingredient of type alcohol
select distinct Name_Ingredient from ingredient where Type_Ingredient = 'alcohol';

-- display ingredient in quest order
select Name_Ingredient from ingredient order by Quest_Ingredient;

-- display difficulty 8 cocktail 
select distinct Name_Cocktail from cocktail where Difficulty_Cocktail = 8;

-- display cocktail by difficulty order
select Name_Cocktail from cocktail order by Difficulty_Cocktail;

-- display dose for Mai _ Tai
select quantity_dose, unit_dose, name_ingredient from dose where Name_cocktail = 'Mai-Tai';

-- display ingredient per type  order
select Name_Ingredient from ingredient order by Type_Ingredient;

-- display ingredient per Price order
select Name_Ingredient from ingredient order by Price_Ingredient desc;

-- display sum price all alcohol
select sum(Price_Ingredient) as Price_Alcohols from Ingredient where Type_ingredient = 'alcohol';

-- display number cocktail with Gin
select count(distinct Name_Cocktail) as nb_cocktail_Gin from Dose where name_ingredient = 'Gin';

-- display join table Cocktail and dose
select * from cocktail,dose where cocktail.Name_Cocktail = dose.Name_Cocktail;

-- display join table dose and ingredient
select * from Ingredient ,dose where Ingredient.Name_Ingredient = dose.Name_Ingredient;