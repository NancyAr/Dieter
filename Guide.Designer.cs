namespace Dieter
{
    partial class Guide
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dietButton = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.cheatButton = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // dietButton
            // 
            this.dietButton.Location = new System.Drawing.Point(46, 149);
            this.dietButton.Name = "dietButton";
            this.dietButton.Size = new System.Drawing.Size(132, 72);
            this.dietButton.TabIndex = 0;
            this.dietButton.Text = "View Diet friendly restaurants";
            this.dietButton.UseVisualStyleBackColor = true;
            this.dietButton.Click += new System.EventHandler(this.dietButton_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Monotype Corsiva", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(132, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(169, 24);
            this.label1.TabIndex = 1;
            this.label1.Text = "What are you craving?";
            // 
            // cheatButton
            // 
            this.cheatButton.Location = new System.Drawing.Point(301, 149);
            this.cheatButton.Name = "cheatButton";
            this.cheatButton.Size = new System.Drawing.Size(132, 72);
            this.cheatButton.TabIndex = 2;
            this.cheatButton.Text = "View non diet friendly restaurants";
            this.cheatButton.UseVisualStyleBackColor = true;
            this.cheatButton.Click += new System.EventHandler(this.cheatButton_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Monotype Corsiva", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(42, 103);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(149, 24);
            this.label2.TabIndex = 3;
            this.label2.Text = "I want to stay clean";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Monotype Corsiva", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(310, 103);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(91, 24);
            this.label3.TabIndex = 4;
            this.label3.Text = "Let\'s cheat!";
            // 
            // Guide
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(468, 271);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cheatButton);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dietButton);
            this.Name = "Guide";
            this.Text = "Guide";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button dietButton;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button cheatButton;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
    }
}