﻿using InstaMacBot.InstaMacBot;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InstaMacBot
{
    partial class Bot_Client : Form
    {
        //all forms of bots
        Form manage_lists;
        Form settings;
        Form scrape_from_user;
        Form scrape_from_hastag;
        Form scrape_from_location;
        Form like_follow_bot;
        Form unfollow_bot;
        Form send_dm_bot;

        //istagram user api
        public UserApi utente;

        //object for manage all bots in a dictionary
        BotClient bot_manager;

        //where save bots files
        string path_account_save_infos;

        bot_file_list file_list;

        public Bot_Client(UserApi _utente,  string _path_save_infos)
        {
            InitializeComponent();
            
            string username = _utente.get_username();

            lb_username.Text = username;
            utente = _utente;
            bot_manager = new BotClient();
            path_account_save_infos = _path_save_infos;

            file_list = new bot_file_list("./Accounts/" + username);

           
        }




        //code for good lock ui
        Button selected_bot_button=null;
        private void select_bot(Button button_clicked)
        {
            if (selected_bot_button == null)
            {
                selected_bot_button = button_clicked;
                button_clicked.BackColor = Color.FromArgb(75, 65, 103);
                button_clicked.ForeColor = Color.White;
            }
            else
            {
                if (button_clicked == selected_bot_button)
                    return;

                button_clicked.BackColor = Color.FromArgb(75, 65, 103);
                button_clicked.ForeColor = Color.White;

                selected_bot_button.ForeColor = Color.Black;
                selected_bot_button.BackColor = Color.FromArgb(120, 255, 255, 255);

                selected_bot_button = button_clicked;
            }
        }

        Form activeForm = null;
        private void open_fill_form(Form fill_form)
        {
            if (activeForm != null)
                activeForm.Hide();

            activeForm = fill_form;
            fill_form.TopLevel = false;
            fill_form.FormBorderStyle = FormBorderStyle.None;
            fill_form.Dock = DockStyle.Fill;
            pn_container_fill_form.Controls.Add(fill_form);
            //pn_manage_your_list.Tag = fill_form;
            fill_form.BringToFront();
            fill_form.Show();
        }


        private void Bot_Client_Load(object sender, EventArgs e)
        {
            manage_lists = new manage_lists_form(file_list);
            settings = new settings_form();
            scrape_from_user = new scrape_from_user_form(utente, bot_manager, path_account_save_infos);
            scrape_from_hastag = new scrape_from_hastag_form(utente, bot_manager, path_account_save_infos);
            scrape_from_location = new scrape_from_location_form(utente, bot_manager, path_account_save_infos);
            like_follow_bot = new follow_like_form(utente, bot_manager, file_list);
            unfollow_bot = new unfollow_form(utente, bot_manager, file_list);
            send_dm_bot = new send_dm_form(utente, bot_manager, file_list);

            SetDoubleBuffered(pn_container_fill_form);
            SetDoubleBuffered(pn_left);
            SetDoubleBuffered(pn_bots);
            SetDoubleBuffered(pn_instamacbot);
            SetDoubleBuffered(pn_conteiner);


        }

        private void bt_manage_lists_Click(object sender, EventArgs e)
        {
             select_bot(((Button)sender));
             open_fill_form(manage_lists);


        }

        private void bt_settings_Click(object sender, EventArgs e)
        {
            select_bot(((Button)sender));
            open_fill_form(settings);
        }

        private void bt_scrape_from_user_Click(object sender, EventArgs e)
        {
            select_bot(((Button)sender));
            open_fill_form(scrape_from_user);



        }

        private void bt_Scrape_from_hastag_Click(object sender, EventArgs e)
        {
            select_bot(((Button)sender));
            open_fill_form(scrape_from_hastag);
        }

        private void Scrape_from_location_Click(object sender, EventArgs e)
        {
            select_bot(((Button)sender));
            open_fill_form(scrape_from_location);
        }

        private void bt_unfollow_bot_Click(object sender, EventArgs e)
        {
            select_bot(((Button)sender));
            open_fill_form(unfollow_bot);
        }


        private void bt_send_dm_bot_Click(object sender, EventArgs e)
        {
            select_bot(((Button)sender));
            open_fill_form(send_dm_bot);
        }

        private void bt_follow_like_bot_Click_1(object sender, EventArgs e)
        {
            select_bot(((Button)sender));
            open_fill_form(like_follow_bot);
        }

        private void bt_new_bot_soon_Click(object sender, EventArgs e)
        {
            MessageBox.Show("just wait", "be patient");
        }

        private void Bot_Client_ResizeBegin(object sender, EventArgs e)
        {
          // SuspendLayout();
           
          
        }

        private void Bot_Client_ResizeEnd(object sender, EventArgs e)
        {
            //ResumeLayout();
          
        }


        //reduce containers flickering
        public static void SetDoubleBuffered(System.Windows.Forms.Control c)
        {
            if (System.Windows.Forms.SystemInformation.TerminalServerSession)
                return;
            System.Reflection.PropertyInfo aProp = typeof(System.Windows.Forms.Control).GetProperty("DoubleBuffered", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
            aProp.SetValue(c, true, null);
        }

        protected override CreateParams CreateParams
        {
            get
            {
                CreateParams cp = base.CreateParams;
                cp.ExStyle |= 0x02000000;
                return cp;
            }
        }

      
    }
}
