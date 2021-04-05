﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using InstagramApiSharp;
using InstagramApiSharp.Classes;
using InstagramApiSharp.Classes.Models;
using InstaMacBot.classi_MacBotClient;
using InstaMacBot.MacBotClient_classes;

namespace InstaMacBot
{
    public partial class Form1 : Form
    {

        BotClient client = new BotClient();
        UserApi utente;
        public Form1()
        {
            InitializeComponent();
        }

   
        private async void bt_login_Click(object sender, EventArgs e)
        {
            if (tx_username.Text == "" || tx_password.Text=="")
            {
                MessageBox.Show("fill username and password", "invalid credentials");
                return;
            }
            utente = new UserApi(tx_username.Text, tx_password.Text);

            string esito = await utente.loginAsync();



            if (utente.is_logged)
            {
                //MessageBox.Show("loggato");
                bt_login.Enabled = false;
                bt_logout.Enabled = true;

                tab_comandi.Enabled = true;
                tx_password.ReadOnly = true;
                tx_password.Enabled = false;

                BotConsole follow_like_console = new DesktopTextBoxConsole(tx_console);
                BotConsole unfollow_console = new DesktopTextBoxConsole(tx_console_unfollow);
                BotConsole extract_console = new DesktopTextBoxConsole(console_extract);
                BotConsole console_hastag = new DesktopTextBoxConsole(tx_console_hastag);


                SSSBot follow_like = new FollowLikeLastsPicBot(utente, tx_console: follow_like_console, like_lasts_pic: 1, delay:60);
                SSSBot unfollow = new UnfollowBot(utente, tx_console: unfollow_console);
                SSSBot extract_from_user = new ExtractFollowersBot(utente, tx_console: extract_console);
                SSSBot extract_from_hastag = new ExtractAccountsFromHastagBot(utente, tx_console: console_hastag);

                client.bots.Add("follow_like", follow_like);
                client.bots.Add("unfollow", unfollow);
                client.bots.Add("extract_from_user", extract_from_user);
                client.bots.Add("extract_from_hastag", extract_from_hastag);
            }
            else
            {
                MessageBox.Show("errore nel login: " + esito);
            }
        }

        private async void button1_Click(object sender, EventArgs e)
        {
            ExtractFollowersBot x = (ExtractFollowersBot)client.bots["extract_from_user"];
            x.set_username(tx_username_estrai_followers.Text);
            x.start();
            console_extract.Text = ("extract process can take some times (more followers more time)");
            do
            {
                string s = console_extract.Text;                
                console_extract.Text=("wait extracting...");
                console_extract.Text+=Environment.NewLine;
                console_extract.Text += s;
                await wait(5);
       
                
            } while (x.is_running);



        }

        private void button2_Click(object sender, EventArgs e)
        {
            ExtractFollowersBot x = (ExtractFollowersBot)client.bots["extract_from_user"];
            x.save_on_file_extracted_list();
        }
        private void button3_Click(object sender, EventArgs e)
        {
            FollowLikeLastsPicBot x = (FollowLikeLastsPicBot)client.bots["follow_like"];
            x.load_list_from_file();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            FollowLikeLastsPicBot x = (FollowLikeLastsPicBot)client.bots["follow_like"];
            x.clear_processing_accounts_list();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            bool spento = false;

            foreach (KeyValuePair<string, SSSBot> entry in client.bots)
            {
                if (entry.Value.is_running)
                {
                    entry.Value.stop(true);
                    spento = true;
                }
            }

            if (spento)
            {
                MessageBox.Show("Stopped all running bots and saved infos in bots files");
            }

        }


      
        private void button5_Click(object sender, EventArgs e)
        {
            client.bots["follow_like"].start();     
            
        }

        private async Task<bool> wait(int seconds)
        {
            int i = 0;
            while (i < seconds)
            {
                await Task.Delay(1000);
                i++;
            }
            return true;
        }

        private async void button4_Click(object sender, EventArgs e)
        {
            client.bots["follow_like"].stop(true);

            int i = 0;
            do
            {
                await wait(1);
                i++;

            } while (client.bots["follow_like"].is_running && i<5);

            if (client.bots["follow_like"].is_running)
            {
                MessageBox.Show("couldn't stop bot: time out exxedeed");
            }
            
           
        }

        



        private async void bt_logout_Click(object sender, EventArgs e)
        {
            string s = await utente.logoutAsync();
            MessageBox.Show(s);

            bt_login.Enabled = true;
            bt_logout.Enabled = false;

            tab_comandi.Enabled = false;
            tx_password.Enabled = false;
            tx_password.ReadOnly = false;

        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            UnfollowBot x = (UnfollowBot) client.bots["unfollow"];
            x.load_followed_accounts();

        }



        private void avvia_bot_unfollow()
        {
            client.bots["unfollow"].start();
        }
 
        private void button6_Click(object sender, EventArgs e)
        {
            avvia_bot_unfollow();
        }

       

        private async void button5_Click_1(object sender, EventArgs e)
        {
            client.bots["unfollow"].stop(true);

            int i = 0;
            do
            {
                await wait(1);
                i++;

            } while (client.bots["unfollow"].is_running && i < 5);

            if (client.bots["unfollow"].is_running)
            {
                MessageBox.Show("couldn't stop bot: time out exxedeed");
            }
        }

      

        private void button5_Click_3(object sender, EventArgs e)
        {
            if (client.bots["follow_like"].is_running)
                MessageBox.Show("ON");
            else
                MessageBox.Show("OFF");
        }

        private void button6_Click_1(object sender, EventArgs e)
        {
            if (client.bots["unfollow"].is_running)
                MessageBox.Show("ON");
            else
                MessageBox.Show("OFF");
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FollowLikeLastsPicBot x = (FollowLikeLastsPicBot)client.bots["follow_like"];
            x.set_likes_last_pic(int.Parse(comboBox1.SelectedItem.ToString()));
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            FollowLikeLastsPicBot x = (FollowLikeLastsPicBot)client.bots["follow_like"];
            x.set_delay(int.Parse(comboBox2.SelectedItem.ToString()));
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            UnfollowBot x = (UnfollowBot)client.bots["unfollow"];
            x.set_delay(int.Parse(comboBox3.SelectedItem.ToString()));
        }

        private async void button7_Click(object sender, EventArgs e)
        {
            ExtractAccountsFromHastagBot x = (ExtractAccountsFromHastagBot)client.bots["extract_from_hastag"];
            x.set_hastag(tx_hastag.Text);
            x.start();

            console_extract.Text = ("extract process can take some times (more followers more time)");
            do
            {
                string s = tx_console_hastag.Text;
                tx_console_hastag.Text = ("wait extracting...");
                tx_console_hastag.Text += Environment.NewLine;
                tx_console_hastag.Text += s;
                await wait(5);


            } while (x.is_running);
        }

        private void button2_Click_2(object sender, EventArgs e)
        {
            ExtractAccountsFromHastagBot x = (ExtractAccountsFromHastagBot)client.bots["extract_from_hastag"];
            x.save_on_file_extracted_list();
        }
    }
}
