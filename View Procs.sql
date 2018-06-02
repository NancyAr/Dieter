USE Dieter
GO
--ahmed
CREATE PROCEDURE View_All_Cheat_Guides1
AS
BEGIN
SELECT Name,Rating,Menu,level_of_cheat,Nutritionist.Fname,Nutritionist.Lname,Dieter.Fname,Dieter.Lname,trainer.Fname,trainer.Lname
FROM Guide,dbo.Cheat_Guide,Nutritionist,Dieter,trainer
WHERE Guide.ID = Cheat_Guide.ID AND dbo.Dieter.ID=DID AND dbo.Nutritionist.ID=NID AND dbo.trainer.ID=TID
END
GO

CREATE PROCEDURE View_Cheat_Guides --add
AS
BEGIN
SELECT Name,Rating,Menu,level_of_cheat
FROM Guide,dbo.Cheat_Guide
WHERE Guide.ID = Cheat_Guide.ID 
END
GO

CREATE PROCEDURE View_Diets_Guides --
AS
BEGIN
SELECT Name,Rating,Menu,Menu_Item
FROM dbo.Diet_Guide,Guide
WHERE Guide.ID = Diet_Guide.ID 
END
GO

CREATE PROCEDURE View_Diet_By_ID1
@ID int
AS
BEGIN
SELECT ID,Title,Duration,Est_weight_Loss,Diet_Path
FROM dbo.Diet
WHERE NID=@ID 
END
GO

CREATE PROCEDURE View_All_Diets
AS
BEGIN
SELECT Diet.ID,Title,Duration,Est_weight_Loss,Diet_Path,Fname,Lname
FROM dbo.Diet,dbo.Nutritionist
WHERE Nutritionist.ID = NID
END
GO

CREATE PROCEDURE View_All_Cheat_Guides
AS
BEGIN
SELECT *
FROM dbo.Diet_Guide
END
GO

CREATE PROCEDURE View_All_Diets_Guides
AS
BEGIN
SELECT Name,Rating,Menu,Menu_Item,Nutritionist.Fname,Nutritionist.Lname,Dieter.Fname,Dieter.Lname,trainer.Fname,trainer.Lname
FROM dbo.Diet_Guide,Guide,Nutritionist,Dieter,trainer
WHERE Guide.ID = Diet_Guide.ID AND dbo.Dieter.ID=DID AND dbo.Nutritionist.ID=NID AND dbo.trainer.ID=TID 
END
GO

CREATE PROCEDURE View_All_Dieters
AS 
BEGIN
SELECT *
FROM dbo.Dieter
END
GO


CREATE PROCEDURE View_All_Guides
AS
BEGIN
SELECT *
FROM dbo.Guide
END
GO

CREATE PROCEDURE View_All_Guides_Add_by_ID
@ID int
AS
BEGIN
SELECT *
FROM dbo.Guide_Add
WHERE GID=@ID
END
GO

CREATE PROCEDURE View_All_Guides_Numbers_by_ID
@ID int
AS
BEGIN
SELECT *
FROM dbo.Guide_Number
WHERE GID = @ID
END
GO

CREATE PROCEDURE View_Program_By_ID
@ID int
AS
BEGIN
SELECT ID,Title, Type_, Period,Est_Weight_loss, Program_Diet_Path, Program_WorkOuts_Video_Path
FROM dbo.program , Makes 
WHERE TID=@ID AND  program.ID = PID
END
GO

CREATE PROCEDURE View_Program_By_ID_N
@ID int
AS
BEGIN
SELECT ID,Title, Type_, Period,Est_Weight_loss, Program_Diet_Path, Program_WorkOuts_Video_Path
FROM dbo.program , Makes 
WHERE NID=@ID AND  program.ID = PID
END
GO

CREATE PROCEDURE View_All_Programs
AS
BEGIN
SELECT *
FROM dbo.program
END
GO

CREATE PROCEDURE View_Progress_Diary_By_ID
@ID int
AS
BEGIN
SELECT *
FROM dbo.progress_diary
WHERE ID=@ID
END
GO

CREATE PROCEDURE View_All_Recipes
AS
BEGIN
SELECT Title,Hours_,Mins,Energy_Cal,Carbs_gm,Protein_gm,Fats_gm,Ingredients,Rec_path
FROM dbo.Recipe
END
GO

CREATE PROCEDURE View_All_Supplements --
AS
BEGIN
SELECT Name,Energy,Carbs,Protein,Fats,Rate
FROM dbo.Supplement
END
GO

CREATE PROCEDURE View_Workout_By_ID
@ID int
AS
BEGIN
SELECT W.ID,W.Title,W.Type_,W.Difficulty,W.Duration_Min,W.Est_cal_Burn,W.Video_path
FROM dbo.Work_Out as W
WHERE TID=@ID
END
GO

CREATE PROCEDURE View_All_Workouts
AS
BEGIN
SELECT Work_Out.ID,Title,Difficulty,Est_cal_Burn,Duration_Min,Type_,Video_path,Fname,Lname
FROM dbo.Work_Out,dbo.trainer
WHERE dbo.trainer.ID=TID
END
GO

CREATE PROCEDURE get_Dieter_cal_burn
@ID int
AS
BEGIN
SELECT Daily_calorie_burn
FROM progress_diary
WHERE ID=@ID
END
GO

CREATE PROCEDURE get_Dieter_cal_count 
@ID int 
AS
BEGIN
SELECT Daily_calorie_Count
FROM progress_diary
WHERE DID=@ID
END
GO
