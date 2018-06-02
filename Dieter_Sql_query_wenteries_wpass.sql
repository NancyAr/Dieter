-------------Database creation-------------
--create database Dieter
Create database Dieter
GO
use Dieter

------------Table Creation-----------------
Create table Admin_
( ID int not null,
Fname Varchar(30) not null,
Lname Varchar(30) not null,
pass_word varchar(30) not null,
username varchar(30) not null
Primary Key (ID)
);

Create table Dieter
(ID int not null,
Fname Varchar(30) not null,
Lname Varchar(30) not null,
St_Weight int,
Primary Key (ID)
);

create table Prem_Dieter
(ID int not null,
Payment_Details varchar(30) not null,
pass_word varchar(30) not null,
Primary Key (ID),
Foreign Key (ID) References Dieter
);

Create table Nutritionist 
(ID int not null,
Fname Varchar(30) not null,
Lname Varchar(30) not null,
Degree Varchar(30) not null,
Pass_word varchar (30) not null,
Primary Key (ID)
);

Create table trainer
(ID int not null,
Fname varchar(30) not null,
Lname Varchar(30) not null,
Degree Varchar(30) not null,
Pass_word varchar (30) not null,
Primary Key (ID)
);

create table Diet
(ID int not null,
Title varchar(30)  not null,
Est_weight_Loss nchar(3) ,
Duration Varchar(30) ,
Diet_Path Varchar(200) not null,--comment
Is_Prog BIT ,-- comment
NID int not null,
Primary Key (ID),
Foreign Key (NID) References Nutritionist
);

Create table Work_Out
(ID int not null,
Title Varchar(30)  not null,
Difficulty Varchar(30) ,
Video_path Varchar(200) not null,
Est_cal_Burn int ,
Duration_Min int ,
Type_ Varchar(30) ,
Is_Prog BIT ,
TID int not null,
Primary Key (ID),
Foreign Key (TID) References Trainer
);

Create table Reg_Dieter
(ID int not null,
Loyalty int not null,--comment
Primary Key(ID),--comment
pass_word varchar(30) not null,
DtID int  ,
WoID int ,
Foreign Key (DtID) References Diet(ID) , 
Foreign Key (WoID) References Work_Out(ID) ,
Foreign Key (ID) References Dieter,

);
Create table Recipe
(ID int not null,
Title varchar(30)  not null,
Hours_ int ,
Mins int ,
Energy_Cal Varchar(5) ,
Carbs_gm Varchar(5) ,
Protein_gm Varchar(5) ,
Fats_gm Varchar(5) ,
Ingredients Varchar(200),
Rec_path Varchar(200),
DID int ,
NID int ,
TID int ,
Primary Key (ID),
Foreign Key (DID) References Dieter,
Foreign key (NID) references Nutritionist,
Foreign Key (TID) References Trainer
);

Create table program
(ID int not null,
Title varchar(30)  not null,
Type_ varchar(30) ,
Period varchar(30) ,
Est_Weight_loss nchar(3) ,
Program_Diet_Path Varchar(200) not null,
Program_WorkOuts_Video_Path varchar(200) not null,
Primary Key(ID)
);

Create Table Supplement
(ID Int not null, 
Name varchar(30) not null,
Energy int ,
Carbs int ,
Protein int ,
Fats int ,
Rate int,
DID int,
NID int,
TID int,
Primary Key (ID),
Foreign Key(DID) references Dieter,
Foreign Key (NID) references Nutritionist,
Foreign Key (TID) references Trainer
);
Create table Guide
(ID int not null,
Name varchar(30) not null,
Rating int ,
Menu Varchar(200) ,
DID int ,
NID int ,
TID int ,
Primary Key (ID),
Foreign key (DID) references Dieter,
Foreign key (NID) references Nutritionist,
Foreign Key (TID) references trainer
);


Create table Diet_Guide
(ID int not null,
Menu_Item varchar(30) ,
Primary Key(ID),
Foreign Key (ID) references Guide
)

Create Table Cheat_Guide
(ID int not null,
level_of_cheat varchar(30) ,
Primary Key(ID),
Foreign key (id) references Guide
)

create table progress_diary
(DID int not null,
ID int not null,
Current_Weight int,
Daily_calorie_burn int ,
Daily_calorie_Count int ,
Programs_Finished int ,
Primary Key (ID),
Foreign Key (DID) references Dieter
);
Create table Guide_Add
(GID int not null,
GAddress varchar(100),
--Primary Key(GID),
Foreign Key (GID) references Guide
);

Create table Guide_Number
(GID int not null,
GNumber varchar(11) ,
--Primary Key (GID ),
Foreign Key (GID) references Guide
);

Create table SubPD
(PDID int not null,
DTID int not null,
Primary Key (PDID ,DTID),
Foreign Key (PDID) references Prem_Dieter,
Foreign Key (DTID) references Diet
);

Create Table SubPW
(PDID int not null,
WID int not null,
Primary Key (PDID, WID),
Foreign Key (PDID) references Prem_Dieter,
Foreign Key (WID) references Work_Out
);

Create table SubPP
(PDID int not null,
PID int not null,
Primary Key (PDID,PID),
Foreign Key (PDID) references Prem_Dieter,
Foreign Key (PID) references Program
);

create table Makes
(PID int not null,
NID int not null,
TID int not null,
Primary Key (PID , NID , TID),
Foreign Key (PID) references Program,
Foreign Key (NID) references Nutritionist,
Foreign Key(TID) references Trainer
)

Create table Made_of
(PID int not null,
DTID int not null,
WID  int not null,
Primary Key (PID , DTID ,WID),
Foreign Key (PID) references Program,
Foreign Key (DTID) references Diet,
Foreign key (WID) references Work_Out
);

insert into Admin_
Values ('44444','Ahmed','Osama','nanoos','AhmedO97')


Insert into Dieter
Values ('111111','Mohamed','Amr','100')

Insert into Dieter
Values('111112','Omar','Mohamed','120')

Insert into Dieter
Values ('111113','Ahmed','Ashraf','115')

Insert into Dieter
Values ('111114','Amira','Emad','116')

Insert into Dieter
Values ('111115','Youstina','Medhat','88')

Insert into Dieter
Values ('121111','Sara','Gamal','90')

Insert into Dieter
Values ('121112','Sara','Yehia','100')

Insert into Dieter
Values ('121113','Gamal','Mohamed','91')

Insert into Dieter
Values ('121114','Mohey','Moheb','81')

Insert into Dieter
Values ('100001','NULL','NULL','0')

insert into Prem_Dieter
values('121111','Cash','zxcvbnm')

insert into Prem_Dieter
values('121112','Visa 4557862791587741','zxcvbnm')

insert into Prem_Dieter
values('121113','Visa 4557818847962871','sexysoso')

insert into Prem_Dieter
values('121114','Visa 4557818847962871','moussa')

--insert into Prem_Dieter
--values('121115','Visa 4557818847333871','allahmohamed')

Insert into Nutritionist
values('171111','Mostafa','Bedir','Bachelor','lalalala')

Insert into Nutritionist
Values('171112','Mostafa','Ahmed','PhD','ilovegod')

Insert into Nutritionist
Values('171113','Ahmed','Hamada','Bachelor','angel')

Insert into Nutritionist
Values('171114','Sara','Khedr','PhD','ilovemyhusband')

Insert into Nutritionist
Values('171115','Mirna','Mohsen','Phd','eman')

Insert into Nutritionist
Values('171116','Eman','Ali','Masters degree','ihatemo7')

Insert into Nutritionist
Values('171117','Yasmine','Hatem','PhD','Hussein')

Insert into Nutritionist
Values('171118','Hussein','Hatem','PhD','yasmine')

Insert into Nutritionist
Values('171119','Sara','Khedr','PhD','ilovemyhusband')

Insert into Nutritionist
Values('171120','Omar','Youssry','Expert and Phd','boody')

Insert into Nutritionist
Values('171121','Abdelrahman','Alaa','PhD','4.0gpa')

Insert into Nutritionist
Values('171122','Omar','Samy','PhD','boss')

Insert into Nutritionist
Values('171124','Ali','Tolba','PhD','Bashmohandes')

Insert into Nutritionist
Values('171125','Yahya','Zakria','Masters degree','hahaha')

Insert into Nutritionist
Values('171126','Amr','Khaled','PhD','burger')

Insert into Nutritionist
Values('171127','Obama','Elmasry','PhD','edeha55')

Insert into Nutritionist
Values('171128','Yasmine','Batates','PhD','daddyissues')

Insert into Nutritionist
Values('171129','Nahed','Bakr','PhD','ilovemyhusband')

Insert into Nutritionist
Values('171130','Osama','Abdelatty','PhD','ilovemywife')

Insert into Nutritionist
Values('100002','NULL','NULL','NULL','NULL')

Insert into trainer
Values('161111','Ahmed' , 'Saber','bachelor','lovely')

Insert into trainer
Values('161112','Ahmed','Adel','Bachelor','sisira2eesy')

insert into trainer
Values('161113','Ahmed','Zakaria','Certified fitness expert','yolo')

Insert into trainer
Values('161114','Ahmed' , 'Saber','Yoga Expert','lovely')

Insert into trainer
Values('161115','Miracle' , 'Nassif','Kick-Boxing Expert','strong')

Insert into trainer
Values('161116','Seif' , 'Tarek','Cardio','islam2010')

Insert into trainer
Values('161117','Andrew' , 'Baher','Boxing expert','edeha')

Insert into trainer
Values('161118','Mohamed' , 'Salah','MMA expert','lol')

Insert into trainer
Values('161119','Gideon' , 'Cross','MMA expert','angel')

Insert into trainer
Values('161120','Eva' , 'Cross','Krav Maga','Gideon')

Insert into trainer
Values('161122','Aisha' , 'Hussein','Abs Expert','oldpeople')

Insert into trainer
Values('161123','Mohmed' , 'Ezzat','Boxing','Aisha')

Insert into trainer
Values('161124','Omar' , 'Khaled','Pace expert','vanilia')

Insert into trainer
Values('161125','Ahmed' , 'Saber','bachelor','lovely')

Insert into trainer
Values('161126','Ahmed' , 'Osama','Muay thai','nanosa')

Insert into trainer
Values('161127','Nancy' , 'Ahmed','Belly dancing','ahmod')

Insert into trainer
Values('161128','Salma' , 'Saber','Ballet','blackswan')

Insert into trainer
Values('161129','Mirna' , 'Hatem','Squats','lolssss')

Insert into trainer
Values('100003','NULL','NULL','NULL','NULL')

insert into Diet
Values('181111','low calorie diet','10','7 days','http://www.goodhousekeeping.com/health/diet-nutrition/g4351/1200-calorie-diet-plan/','0','171111')

insert into Diet
Values('181112','Bulking diet','25','18 days','https://www.myprotein.com/thezone/nutrition/bulking-diet/','0','171113')

insert into Diet
Values('181113','Military Diet','5','3 days','http://themilitarydiet.com/wp-content/uploads/2013/01/Military-Diet-Plan.pdf','1','171114')

insert into Diet
Values('181114','28day','10','28 days','http://documents.hants.gov.uk/hms/HealthyEatingontheRun-28dayEatingPlan.pdf','1','171115')

insert into Diet
Values('181115','Eating for power','20','90 days','https://flexmastergeneral.com/wp-content/uploads/2017/04/p90x-xbox-nutrition-guide.pdf','1','171118')

insert into Diet
Values('181116','Military Diet2','5','3 days','http://themilitarydiet.com/wp-content/uploads/2013/01/Military-Diet-Plan.pdf','1','171119')

insert into Diet
Values('181117','Lean meal plan','10','28 days','https://www.muscleandfitness.com/nutrition/meal-plans/28-days-lean-meal-plan','1','171116')

Insert into Diet
Values ('100004','NULL','0','NULL','NULL','0','100002')


insert into Work_Out
Values('191111','Push_ups','Moderate','https://www.fitnessblender.com/videos/intense-hiit-cardio-kickboxing-and-upper-body-strength-workout','300','33','Toning','0','161111')

insert into Work_Out
Values('191112','Squats','Moderate','https://www.fitnessblender.com/videos/no-equipment-butt-and-thigh-workout-at-home-bodyweight-lower-body-workout','300','20','Strength','1','161112')

insert into Work_Out
Values('191113','Abs and HiiT','Moderate','https://www.fitnessblender.com/videos/abs-and-hiit-cardio-workout-no-equipment-lower-body-and-core-challenge','300','39','Cardio','1','161113')

insert into Work_Out
Values('191114','Fat burning HiiT','Advanced','https://www.fitnessblender.com/videos/fat-burning-hiit-cardio-workout-with-advanced-and-low-impact-mods','350','39','Toning','1','161114')

insert into Work_Out
Values('191115','Intense Pyramid','Advanced','https://www.fitnessblender.com/videos/intense-at-home-pyramid-hiit-workout-with-warm-up-and-cool-down','200','26','HiiT','1','161115')

insert into Work_Out
Values('191116','Energy Boosting','Beginner','https://www.fitnessblender.com/videos/jumpstart-cardio-workout-5-minute-energy-boosting-workout','50','23','Low Impact','1','161120')

insert into Work_Out
Values('100005','NULL','NULL','Null','0','0','NULL','0','100003')

insert into Reg_Dieter
Values('111111','80','mamamamama','181111','191111')

insert into Reg_Dieter
Values('111112','90','asdfg','181112','191112')

insert into Reg_Dieter
Values('111113','70','asdfg','181112','191112')

insert into Reg_Dieter
Values('111115','10','mamamamama','181111','191111')

insert into Reg_Dieter
Values('111114','90','asdfg','181112','191112')

insert into Recipe
Values('131111','Grilled Chicken','0','30','147','0','16.79','8.36','http://allrecipes.com/recipe/16160/jennys-grilled-chicken-breasts/','http://allrecipes.com/recipe/16160/jennys-grilled-chicken-breasts/','111111','171112','161112')

insert into Recipe
Values('131112','(0.5 cup) Cooked Molokhya','0','30','107','8','2','5','https://manfuelblog.com/2013/04/25/molokhia-soup-recipe/','https://manfuelblog.com/2013/04/25/molokhia-soup-recipe/','111111','171112','161112')

insert into Recipe
Values('131113','(0.34 lb)Steak with rice ','0','40','293.2','19','12','6.5','http://www.myrecipes.com/recipe/pan-seared-strip-steak','http://www.myrecipes.com/recipe/pan-seared-strip-steak','111111','171111','161111')

insert into Recipe
Values('131114','Cesar Salad (3 oz)','0','20','275','7','12','22','http://allrecipes.com/recipe/14172/caesar-salad-supreme/','http://allrecipes.com/recipe/14172/caesar-salad-supreme/','111112','171113','161113')

insert into Program
Values('100','StayLean','Losing weight','1 month','10','http://themilitarydiet.com/wp-content/uploads/2013/01/Military-Diet-Plan.pdf','https://www.fitnessblender.com/videos/no-equipment-butt-and-thigh-workout-at-home-bodyweight-lower-body-workout')

insert into Program
Values('102','Strict Prog','Losing fast','1 week','5','http://themilitarydiet.com/wp-content/uploads/2013/01/Military-Diet-Plan.pdf','https://www.fitnessblender.com/videos/jumpstart-cardio-workout-5-minute-energy-boosting-workout')

insert into Program
Values('103','BeStrong','Building muscle','1 month','10','https://www.muscleandfitness.com/nutrition/meal-plans/28-days-lean-meal-plan','https://www.fitnessblender.com/videos/abs-and-hiit-cardio-workout-no-equipment-lower-body-and-core-challenge')

insert into Program
Values('104','28day Miracle','Toning','28 days','8','http://documents.hants.gov.uk/hms/HealthyEatingontheRun-28dayEatingPlan.pdf','https://www.fitnessblender.com/videos/abs-and-hiit-cardio-workout-no-equipment-lower-body-and-core-challenge')


insert into Program
Values('105','POWER','Strength','3 months','15','https://flexmastergeneral.com/wp-content/uploads/2017/04/p90x-xbox-nutrition-guide.pdf','https://www.fitnessblender.com/videos/intense-at-home-pyramid-hiit-workout-with-warm-up-and-cool-down')


insert into Program
Values('1000','NULL','NULL','NULL','0','none','none')

insert into Supplement
values('141111','Elite','300','20','10','3','100','100001','171111','100003')

insert into Supplement
Values('141112','Mind','500','10','12','5','200','111113','100002','100003')

insert into Supplement
Values('141113','Quamtrax','100','2','23','1','5','100001','100002','161115')

insert into Guide
Values('151111','Diet House','9','https://www.elmenus.com/cairo/restaurants/diet-house-1967','111113','171112','161112')

insert into Guide
Values('151112','Ovio','10','https://www.elmenus.com/cairo/restaurants/ovio-5288','111111','171112','161111')

insert into Guide
Values('151113','Willys Kitchen','9','https://www.elmenus.com/cairo/restaurants/willys-kitchen-6372','111111','171113','161112')

insert into Guide
Values('151114','Chicken-Fil-A','9','https://www.elmenus.com/cairo/restaurants/chicken-fila-8871','111111','171112','161111')

insert into Diet_Guide
Values('151111','Amino Burger')

insert into Diet_Guide
Values('151112','The Ceasar')

insert into Cheat_Guide
Values('151113','Chessy Mess!')

insert into Cheat_Guide
Values('151114','Best Chicken! Messy!')

insert into progress_diary
Values('111111','15000','120','500','1200','2')

insert into progress_diary
Values('111112','15112','99','700','500','5')

insert into progress_diary
Values('111113','15111','105','700','800','4')

insert into progress_diary
Values('111114','15117','80','1000','500','10')

insert into progress_diary
Values('111115','15127','70','1200','600','15')

insert into progress_diary
Values('121112','15006','70','1200','600','22')

insert into Guide_Add
Values('151111','Maadi, Degla st.15')

insert into Guide_Add
Values('151111','Maspero, Arcadia Mall')

insert into Guide_Add
Values('151112','Maadi, Asarayat, st 18')

insert into Guide_Add
Values('151112','Cairo Festival City Mall')

insert into Guide_Add
Values('151113','Dokki, Al Tharwat St')

insert into Guide_Add
Values('151113','Nasr City, Hafez Ramadan St')

insert into Guide_Add
Values('151114','Mohandessin, 64 Tersana Club Wall')

insert into Guide_Number
Values('151111','0225210158')

insert into Guide_Number
Values('151112','19801')

insert into Guide_Number
Values('151113','19256')

insert into Guide_Number
Values('151114','19803')

insert into SubPD
values('121111','181111')

insert into SubPD
values('121112','181112')

insert into SubPW
values('121112','191111')

insert into SubPP
values('121112','100')

--insert into Makes
--values('101','171111','161111')

insert into Made_of
values('100','181116','191112')

insert into Made_of
values('102','181113','191116')

insert into Made_of
values('103','181117','191114')

insert into Made_of
values('104','181114','191113')

insert into Made_of
values('105','181115','191115')

















































































