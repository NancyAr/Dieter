USE Dieter
GO

CREATE PROCEDURE InsertAdmin
@ID int,
@Fname varchar(30),
@Lname varchar(30),
@pass_word varchar(30),
@username varchar(30)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Admin_]
           ([ID]
           ,[Fname]
		   ,[Lname]
		   ,[pass_word]
		   ,[username])
     VALUES
           (@ID,
			@Fname ,
			@Lname ,
			@pass_word ,
			@username )
           END
GO

CREATE PROCEDURE InsertCheatGuide
@ID int,
@level_of_cheat varchar(30)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Cheat_Guide]
           ([ID]
           ,[level_of_cheat])
     VALUES
           (@ID
           ,@level_of_cheat)
           END
GO

CREATE PROCEDURE InsertDiet
@ID int,
@Title varchar(30),
@Est_weight_Loss nchar(3),
@Duration varchar(30),
@Diet_Path varchar(100),
@NID int
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Diet]
           ([ID]
           ,[Title]
           ,[Est_weight_Loss]
           ,[Duration]
           ,[Diet_Path]
           ,[NID])
     VALUES
           (@ID
           ,@Title
           ,@Est_weight_Loss
           ,@Duration
           ,@Diet_Path
           ,@NID)
           END
GO

CREATE PROCEDURE Insert_Diet_Guide
@ID int,
@Menu_Item varchar(30)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Diet_Guide]
           ([ID]
           ,[Menu_Item])
     VALUES
           (@ID
           ,@Menu_Item)
           END
GO

CREATE PROCEDURE Insert_Dieter
@ID int,
@Fname varchar(30),
@Lname varchar(30),
@St_Weight nchar(3)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Dieter] 
           ([ID]
           ,[Fname]
           ,[Lname]
           ,[St_Weight])
     VALUES
           (@ID
           ,@Fname
           ,@Lname
           ,@St_Weight)
           END
GO

CREATE PROCEDURE Insert_Guide --
@ID int,
@Name varchar(30),
@Rating int,
@Menu varchar(100),
@DID int,
@NID int,
@TID int
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Guide]
           ([ID]
           ,[Name]
           ,[Rating]
           ,[Menu]
           ,[DID]
		   ,[NID]
		   ,[TID])
     VALUES
           (@ID,
           @Name,
           @Rating,
           @Menu,
           @DID,
		   @NID,
		   @TID)
           END
GO

CREATE PROCEDURE Insert_Guide_Add --
@GID int,
@GAddress varchar(100)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Guide_Add]
           ([GID]
           ,[GAddress])
     VALUES
           (@GID
           ,@GAddress)
           END
GO

CREATE PROCEDURE Insert_Guide_Number --
@GID int,
@GNumber varchar(11)
AS
BEGIN
INSERT INTO [Dieter].[dbo].Guide_Number
           ([GID]
           ,[GNumber])
     VALUES
           (@GID
           ,@GNumber)
           END
GO

CREATE PROCEDURE Insert_Made_of
@PID int,
@DTID int,
@WID int
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Made_of]
           ([PID]
           ,[DTID]
           ,[WID])
     VALUES
     (@PID ,
		@DTID ,
		@WID
		)   
           END
GO

CREATE PROCEDURE Insert_Makes
@PID int,
@NID int,
@TID int
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Makes]
           ([PID]
           ,[NID]
           ,[TID])
     VALUES
     (@PID ,
		@NID ,
		@TID
		)   
           END
GO

CREATE PROCEDURE Insert_Nutritionist
@ID int,
@Fname varchar(30),
@Lname varchar(30),
@Degree varchar(30),
@Pass_word varchar (30)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Nutritionist]
           ([ID]
           ,[Fname]
           ,[Lname]
           ,[Degree]
		   ,[Pass_word])
     VALUES
		  (@ID ,
           @Fname ,
           @Lname, 
           @Degree
		   ,@Pass_word)
           END
GO

CREATE PROCEDURE Insert_Prem_Dieter
@ID int,
@Payment_Details varchar(30),
@pass_word varchar (30)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Prem_Dieter]
           ([ID]
           ,[Payment_Details]
		   ,[pass_word])
     VALUES
     (@ID,
      @Payment_Details,
	  @pass_word)
      END
GO

CREATE PROCEDURE Insert_Program
@ID int
,@Title varchar(30)
,@Type_ varchar(30)
,@Period varchar(30)
,@Est_Weight_loss nchar(3)
,@Program_Diet_Path varchar(100)
,@Program_WorkOuts_Video_Path varchar(100)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[program]
           ([ID]
           ,[Title]
           ,[Type_]
           ,[Period]
           ,[Est_Weight_loss]
           ,[Program_Diet_Path]
           ,[Program_WorkOuts_Video_Path])
     VALUES
           (@ID 
           ,@Title 
           ,@Type_ 
           ,@Period 
           ,@Est_Weight_loss
           ,@Program_Diet_Path 
           ,@Program_WorkOuts_Video_Path)
           END
GO

CREATE PROCEDURE Insert_Progress_Diary
@DID int
,@ID int
,@Current_Weight nchar(3)
,@Daily_calorie_burn int
,@Daily_calorie_Count int
,@Programs_Finished bit
AS
BEGIN
INSERT INTO [Dieter].[dbo].[progress_diary]
           ([DID]
           ,[ID]
           ,[Current_Weight]
           ,[Daily_calorie_burn]
           ,[Daily_calorie_Count]
           ,[Programs_Finished])
     VALUES
           (@DID 
           ,@ID 
           ,@Current_Weight 
           ,@Daily_calorie_burn 
           ,@Daily_calorie_Count 
           ,@Programs_Finished )
           END
GO

CREATE PROCEDURE Insert_Recipe --
@ID int
,@Title varchar(30)
,@Hours_ int
,@Mins int
,@Energy_Cal int
,@Carbs_gm int
,@Protein_gm int
,@Fats_gm int
,@Ingredients varchar(100)
,@Rec_path varchar(100)
,@DID int
,@NID int
,@TID int
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Recipe]
           ([ID]
           ,[Title]
           ,[Hours_]
           ,[Mins]
           ,[Energy_Cal]
           ,[Carbs_gm]
           ,[Protein_gm]
           ,[Fats_gm]
           ,[Ingredients]
           ,[Rec_path]
           ,[DID]
		   ,[NID]
		   ,[TID])
     VALUES
           (@ID 
           ,@Title 
           ,@Hours_ 
           ,@Mins 
           ,@Energy_Cal 
           ,@Carbs_gm 
           ,@Protein_gm 
           ,@Fats_gm 
           ,@Ingredients 
           ,@Rec_path 
           ,@DID
		   ,@NID
		   ,@TID )
           END
GO

CREATE PROCEDURE Subscribe_Diet
@PDID int
,@DTID int
AS
BEGIN
INSERT INTO [Dieter].[dbo].[SubPD]
           ([PDID]
           ,[DTID])
     VALUES
           (@PDID 
           ,@DTID )
           END
GO

---CREATE PROCEDURE Subscribe_Program
--@PDID int
----,@PID int
--AS
--BEGIN
--INSERT INTO [Dieter].[dbo].[SubPP]
         --  ([PDID]
       --    ,[PDID])
     --VALUES
      --     (@PDID 
    --       ,@PID )
  --         END
--GO

--CREATE PROCEDURE Subscribe_Workout
--@PDID int
--,@WID int
--AS
--BEGIN
--INSERT INTO [Dieter].[dbo].[SubPW]
        --   ([PDID]
         --  ,[PDID])
     --VALUES
       --    (@PDID 
         --  ,@WID )
           --END
--GO

CREATE PROCEDURE Insert_Supplement --
@ID int
,@Name varchar(30)
,@Energy int
,@Carbs int
,@Protein int
,@Fats int
,@Rate int
,@DID int
,@NID int
,@TID int
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Supplement]
           ([ID]
           ,[Name]
           ,[Energy]
           ,[Carbs]
           ,[Protein]
           ,[Fats]
           ,[Rate]
           ,[DID]
		   ,[NID]
		   ,[TID] )
     VALUES
           (@ID 
           ,@Name 
           ,@Energy 
           ,@Carbs 
           ,@Protein 
           ,@Fats 
           ,@Rate 
           ,@DID
		   ,@NID
		   ,@TID )
           END
GO

CREATE PROCEDURE Insert_Trainer
@ID int
,@name varchar(30)
,@Lname varchar(30)
,@Degree varchar(30)
,@Pass_word varchar (30)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Trainer]
           ([ID]
           ,[Fname]
           ,[Lname]
           ,[Degree]
		   ,[Pass_word])
     VALUES
           (@ID 
           ,@name 
           ,@Lname 
           ,@Degree
		   ,@Pass_word )
           END
GO

CREATE PROCEDURE Insert_Work_Out1
@ID int
,@Title varchar(30)
,@Difficulty varchar(30)
,@Video_path varchar(100)
,@Est_cal_Burn int
,@Duration_Min int
,@Type_ varchar(30)
,@TID int
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Work_Out]
           ([ID]
           ,[Title]
           ,[Difficulty]
           ,[Video_path]
           ,[Est_cal_Burn]
           ,[Duration_Min]
           ,[Type_]
           ,[TID])
     VALUES
           (@ID 
           ,@Title 
           ,@Difficulty 
           ,@Video_path 
           ,@Est_cal_Burn 
           ,@Duration_Min 
           ,@Type_ 
           ,@TID)
		   END
GO

CREATE PROCEDURE Insert_Reg_Dieter
@ID int
,@Loyalty int
,@pass_word varchar(30)
AS
BEGIN
INSERT INTO [Dieter].[dbo].[Reg_Dieter]
           ([ID]
           ,[Loyalty]
		   ,[pass_word])
     VALUES
           (@ID
           ,@Loyalty
		   ,@pass_word)
           END
GO












          








