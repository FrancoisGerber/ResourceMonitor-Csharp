using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ResourceMonitor
{
    internal static class MyTimer
    {
        internal static int cpu;
        internal static float Disk;
        internal static string ram;
        internal static bool IsDone;

        internal delegate void TimeDelegate();
        internal static event TimeDelegate TimeEvent;

        public static void GetDisk(PerformanceCounter diskPerc)
        {
            diskPerc.CategoryName = "PhysicalDisk";
            diskPerc.CounterName = "% Disk Time";
            diskPerc.InstanceName = "_Total";
            diskPerc.MachineName = Environment.MachineName;

            Disk = diskPerc.NextValue();
                       
        }

        public static int GetCpuUsage()
        {
            var cpuCounter = new PerformanceCounter("Processor", "% Processor Time", "_Total", Environment.MachineName);
            cpuCounter.NextValue();
            System.Threading.Thread.Sleep(1000);
            return (int)cpuCounter.NextValue();
        }
        
        internal static void Start(int Interval)
        {
            Task t = Task.Run(() =>
            {
                IsDone = false;
                while (!IsDone)
                {
                    cpu = GetCpuUsage();
                    Int64 phav = PerformanceInfo.GetPhysicalAvailableMemoryInMiB();
                    Int64 tot = PerformanceInfo.GetTotalMemoryInMiB();
                    decimal percentFree = ((decimal)phav / (decimal)tot) * 100;
                    decimal percentOccupied = 100 - percentFree;
                    // Console.WriteLine("Available Physical Memory (MiB) " + phav.ToString());
                    //   Console.WriteLine("Total Memory (MiB) " + tot.ToString());
                    //  Console.WriteLine("Free (%) " + percentFree.ToString());
                    // Console.WriteLine("Occupied (%) " + percentOccupied.ToString());
                    // decimal d = Decimal.Parse(percentOccupied);

                    decimal ram2 = Decimal.Round(percentOccupied, 2); 
                    decimal rounded = Decimal.Round(percentOccupied, 2);
                    ram = rounded.ToString();

                    if (TimeEvent != null)
                    {
                        TimeEvent();
                    }
                    Thread.Sleep(Interval);
                }
            });
        }
    }
}
