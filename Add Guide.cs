﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Dieter
{
    public partial class Add_Guide : Form
    {
        Controller controllerObj;
        public Add_Guide()
        {
            InitializeComponent();
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void Adddgbutton_Click(object sender, EventArgs e)
        {
            controllerObj = new Controller();
            Datacontainer.GuideID = Datacontainer.GuideID + 1;
            DataRow check = controllerObj.CheckGuideID(Datacontainer.GuideID).Rows[0];
            while (Datacontainer.GuideID == (int)check["ID"]) { Datacontainer.GuideID = Datacontainer.GuideID + 1; }
            if (check == null)
            {
                if (restnametextBox.Text == "" || restratetextBox.Text == "" || menulinktextBox.Text == "" || menuitemtextBox.Text == "")
                { MessageBox.Show("The fields marked with * are mandatory for inserting a guide"); }
                else
                {
                    if (Datacontainer.Click == 1)
                    {
                        int r = controllerObj.InsertGuide(Datacontainer.GuideID, restnametextBox.Text, int.Parse(restratetextBox.Text), menulinktextBox.Text, Datacontainer.loginDID, 100002, 100003);
                        int r2 = controllerObj.InsertDietGuide(Datacontainer.GuideID, menuitemtextBox.Text);
                        int r3 = controllerObj.InsertGuideNum(Datacontainer.GuideID, GnumtextBox.Text);
                        int r4 = controllerObj.InsertGuideAddress(Datacontainer.GuideID, GaddtextBox.Text);
                        if (r > 0 && r2 > 0 && r3 > 0 && r4 > 0)
                        { MessageBox.Show("Thank you for helping fellow dieters!"); }
                        else { MessageBox.Show("Something went wrong. Try again later.."); }
                        Hide();
                    }
                    if (Datacontainer.Click == 2)
                    {
                        int r5 = controllerObj.InsertGuide(Datacontainer.GuideID, restnametextBox.Text, int.Parse(restratetextBox.Text), menulinktextBox.Text, Datacontainer.loginPDID, 100002, 100003);
                        int r6 = controllerObj.InsertDietGuide(Datacontainer.GuideID, menuitemtextBox.Text);
                        int r7 = controllerObj.InsertGuideNum(Datacontainer.GuideID, GnumtextBox.Text);
                        int r8 = controllerObj.InsertGuideAddress(Datacontainer.GuideID, GaddtextBox.Text);
                        if (r5 > 0 && r6 > 0 && r7 > 0 && r8 > 0)
                        { MessageBox.Show("Thank you for helping fellow dieters!"); }
                        else { MessageBox.Show("Something went wrong. Try again later.."); }
                        Hide();
                    }
                    if (Datacontainer.Click == 3)
                    {
                        int r9 = controllerObj.InsertGuide(Datacontainer.GuideID, restnametextBox.Text, int.Parse(restratetextBox.Text), menulinktextBox.Text, 100001, 100002, Datacontainer.TraID);
                        int r10 = controllerObj.InsertDietGuide(Datacontainer.GuideID, menuitemtextBox.Text);
                        int r11 = controllerObj.InsertGuideNum(Datacontainer.GuideID, GnumtextBox.Text);
                        int r12 = controllerObj.InsertGuideAddress(Datacontainer.GuideID, GaddtextBox.Text);
                        if (r9 > 0 && r10 > 0 && r11 > 0 && r12 > 0)
                        { MessageBox.Show("Thank you for helping fellow dieters!"); }
                        else { MessageBox.Show("Something went wrong. Try again later.."); }
                        Hide();
                    }
                    if (Datacontainer.Click == 4)
                    {
                        int r13 = controllerObj.InsertGuide(Datacontainer.GuideID, restnametextBox.Text, int.Parse(restratetextBox.Text), menulinktextBox.Text, 100001, Datacontainer.NutID, 100003);
                        int r14 = controllerObj.InsertDietGuide(Datacontainer.GuideID, menuitemtextBox.Text);
                        int r15 = controllerObj.InsertGuideNum(Datacontainer.GuideID, GnumtextBox.Text);
                        int r16 = controllerObj.InsertGuideAddress(Datacontainer.GuideID, GaddtextBox.Text);
                        if (r13 > 0 && r14 > 0 && r15 > 0 && r16 > 0)
                        { MessageBox.Show("Thank you for helping fellow dieters!"); }
                        else { MessageBox.Show("Something went wrong. Try again later.."); }
                        Hide();
                    }
                }
            }
        }

        private void Add_Guide_Load(object sender, EventArgs e)
        {

        }
    }
}
