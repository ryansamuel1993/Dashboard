using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Input;
using System.Windows.Interop;
using LiveCharts;
using LiveCharts.Wpf;
using Dashboard.Models;
using Dashboard.ViewModels;

namespace Dashboard.Views
{
    /// <summary>
    /// Interaction logic for MainWindowView.xaml
    /// </summary>
    public partial class MainView : Window
    {
        [DllImport("user32.dll")]
        public static extern IntPtr SendMessage(IntPtr hWnd, int wMsg, int wParam, int lParam);
        public Func<ChartPoint, string> PointLabel { get; set; }
        public SeriesCollection SeriesCollection { get; set; }
        public string[] Labels { get; set; }
        public Func<double, string> Formatter { get; set; }
        
        public MainView()
        {
            InitializeComponent();
            LoadChartData();
            PointLabel = chartPoint => string.Format("{0} ({1:P})", chartPoint.Y, chartPoint.Participation);

        }

        private void pnlControlBar_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            WindowInteropHelper helper = new WindowInteropHelper(this);
            SendMessage(helper.Handle, 161, 2, 0);
        }

        private void pnlControlBar_MouseEnter(object sender, MouseEventArgs e)
        {
            this.MaxHeight = SystemParameters.MaximizedPrimaryScreenHeight;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void btnMaximize_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == WindowState.Normal)
                this.WindowState = WindowState.Maximized;
            else this.WindowState = WindowState.Normal;
        }

        private void SalesChart_OnDataClick(object sender, ChartPoint chartpoint)
        {
            var chart = (LiveCharts.Wpf.PieChart)chartpoint.ChartView;

            //clear selected slice.
            foreach (PieSeries series in chart.Series)
                series.PushOut = 0;

            var selectedSeries = (PieSeries)chartpoint.SeriesView;
            selectedSeries.PushOut = 8;
        }
        private void LoadChartData()
        {
            MainViewModel mvm = new MainViewModel();
            var sales = mvm.LoadData(DateTime.Now.AddYears(-1), DateTime.MaxValue);
            SeriesCollection = new SeriesCollection { };
            //foreach ((KeyValuePair<string, int> kvp, int index) in sales.TopProductsList.Select((item, index) => (item, index)))
            foreach (KeyValuePair<string, int> kvp in sales.TopProductsList)
            {
                
                SeriesCollection.Add(new ColumnSeries
                {
                    Title = kvp.Key,
                    Values = new ChartValues<double> { kvp.Value }
                });
            }
            Labels = new[] { "" };
            Formatter = value => value.ToString("N");
            DataContext = this;
        }
    }
}