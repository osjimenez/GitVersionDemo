﻿using NetStandard20;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public App()
        {
            Class1 c1 = new Class1();
            var tup = c1.GetTuple();
            // VAmos . oo - kk - 1 - 2 - 3
            // F2 => 1 - 2 - 3
            // f3 - 1 - 2
            Debug.WriteLine("" + tup.First);
        }
    }
}
