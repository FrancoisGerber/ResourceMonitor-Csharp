using System;
using System.Windows;
using System.Windows.Input;
using System.Diagnostics;
using System.Windows.Forms;
using System.Management;
using System.Collections.Generic;
using System.Windows.Documents;

namespace ResourceMonitor
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        PerformanceCounter diskPerc = new PerformanceCounter();

        public MainWindow()
        {
            InitializeComponent();
            lblName.Content = Environment.MachineName + " - " + Environment.UserName;
            MyTimer.Start(100);

            System.Windows.Forms.NotifyIcon ni = new System.Windows.Forms.NotifyIcon();
            ni.Icon = new System.Drawing.Icon("Main.ico");
            ni.Visible = true;
            ni.ContextMenu = new System.Windows.Forms.ContextMenu();

            ni.ContextMenu.MenuItems.Add("Show", (s, e) =>
            {
                this.WindowState = WindowState.Normal;
            });
            ni.ContextMenu.MenuItems.Add("Hide", (s, e) =>
            {
                this.WindowState = WindowState.Minimized;
            });
            ni.ContextMenu.MenuItems.Add("Exit", (s, e) => Environment.Exit(0));
           
        }




        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            DoWork();
        }

        private void DoWork()
        {
            MyTimer.TimeEvent += (() =>
            {
                this.Dispatcher.Invoke((Action)(() =>
                {
                    try
                    {
                        MyTimer.GetDisk(diskPerc);
                        decimal disk = int.Parse(Decimal.Round(decimal.Parse(MyTimer.Disk.ToString()), 0).ToString());

                        if (disk <= 100)
                            lblDisk.Content = disk.ToString();
                        else
                            lblDisk.Content = "100";
                        lblCPU.Content = MyTimer.cpu.ToString();
                        lblRam.Content = int.Parse(Decimal.Round(decimal.Parse(MyTimer.ram), 0).ToString());
                        pbCpu.Value = MyTimer.cpu;
                        pbRam.Value = int.Parse(Decimal.Round(decimal.Parse(MyTimer.ram), 0).ToString());
                        pbDisk.Value = int.Parse(Decimal.Round(decimal.Parse(MyTimer.Disk.ToString()), 0).ToString());
                        PowerStatus power = SystemInformation.PowerStatus;
                        int powerPercent = (int)(power.BatteryLifePercent * 100);
                        if (powerPercent <= 100)
                        {
                            pbBat.Value = powerPercent;
                            lblBattery.Content = powerPercent;
                        }
                        else
                            pbBat.Value = 0;
                        lblDate.Content = DateTime.Now.Date;
                        lblTime.Content = DateTime.Now.TimeOfDay.ToString(@"hh\:mm");
                        lblCharge.Content = power.BatteryChargeStatus.ToString();
                    }
                    catch (Exception ex)
                    {
                    }
                }));
            });
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.DragMove();
            }
        }

        private void mClose_Click(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void mCheck_Checked(object sender, RoutedEventArgs e)
        {
            this.Topmost = true;
        }

        private void mCheck_Unchecked(object sender, RoutedEventArgs e)
        {
            this.Topmost = false;
        }
    }
}
