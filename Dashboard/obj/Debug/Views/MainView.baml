   M S B A M L   `   `   `  ????D  @Dashboard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Dashboard.ViewsDashboard.Views  5   	   ;"clr-namespace:Dashboard.ViewModelsDashboard.ViewModels  5   	   U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5   	       Dashboard.Views.MainView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Dashboard.Views     5   	   8	viewModel"clr-namespace:Dashboard.ViewModels     5   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5   	   X TFontAwesome.Sharp, Version=6.1.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5	   	     ? Title$  MainWindowView??5   	   $	??700??6    $
??1300??6-    ? WindowStartupLocation$ CenterScreen=?5   	    ? WindowStyle$
 None=?5   	   
??????  ? AllowsTransparency . .??5      ??  ?? CornerRadius$ 10??6   $??1q?5      ??5   
   ?? 5       ?? 
StartPoint$	 0,0&?6"    ?? EndPoint$	 1,1&?63   .??5      ?    winBorderColor1 ? Color# [  6    ? Offset$ 0Q?6H   ? 5        winBorderColor2# [ 6   $	 0.5Q?6H   ? 5        winBorderColor3# [ 6   $ 1Q?6H   5      ._?5   
   ? 	 ? ColumnDefinitions	 5      ?? 5       $	??250 ?6#   ?? 5!      $??* ?6#   .+?5$      ?? $ 	10,0,0,10??6   $??0??5%      ??5'      ?? 5(      $	 0,0&?6*   $ 1,0.7&?6;   .??5)      ?   secondaryBackColor1# [ 6'   $ 0Q?6T   ? 5*        secondaryBackColor2# [ 6'   $ 1Q?6T   5+      ._?5.      ?? .+?50      ?? 
 ?? Orientation$
 
Horizontal=?6!   $??35??51   !   $??
15,25,0,40q?52   !   .+?54      ?? $,??&/Images/logo-fococlipping-standard.png??6    $??30??6P    J? OpacityMask
 ?   ?6\   ?? 55      $??Samuel Software??6$     titleColor2#??[ 56   $   $??20(?57   $   $??
Montserrat)?58   $   $??Medium"?59   $   $??Center=?5:   $   $??10,0,0,0q?5;   $   5=      	? 5?        
menuButton#??[ 6"    
 color1
 ? Tag# [ 5@   "    d? 	IsChecked$
 TrueY?5A   "   ??5B   "   ?? *ShowHomeViewCommand+.??5C      ?? $
 
Horizontal=?6%   .+?5D      !  FontAwesome.Sharp.IconImage  ?  ?FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.1.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Home=?6+     menuButtonIcon#??[ 67   ?? 5E      $??	Dashboard??6(    	 menuButtonText#??[	 69   5F      5G      	? 5I      #??[ 6"    

 color2# [
 5J   "   ??5K   "   ?? *ShowCustomerViewCommand+.??5L      ?? $
 
Horizontal=?6%   .+?5M        $ 	UserGroup=?6+   #??[ 6<   ?? 5N      $??	Customers??6(   #??[	 69   5O      5P      5R      5T      ?? 5V      $ 	0,10,10,0??6   $??1??5W      ??5Y      ?? 5Z      $	 1,1&?6*   $	 0,0&?6;   .??5[      ?   primaryBackColor1# [ 6'   $ 0Q?6R   ? 5\        primaryBackColor2# [ 6'   $ 1Q?6R   5]      ._?5`      ? 	 5a      ?? 5b      $	??44* ?6+   ?? 5c      $??1003* ?6+    ? RowDefinitions 5f      ?? 5g      $??25 ?6(   ?? 5h      $??35 ?6(   ?? 5i      $??* ?6(   .+?5l      ?? -   5         ??Name$ pnlControlBar??5l   !   $??0??5m   !   $
 
Horizontal=?5n   !   $??RightToLeft=?5o   !   
?????? $??0,10,5.333,0q?5q   !   $??2??5s   G   $??2??6X   .+?5t      ?? -   5         ??Name$ btnClose??5t   !     controlButton#??[ 5u   !    
 color4# [ 5v   !   .??5x        $ Xmark=?6+     controlButtonIcon#??[ 6:   5y      ?? 5z      -   5        $ btnMaximize??5z   !   #??[ 5{   !    
 color6# [ 5|   !   .??5~        $ Square=?6+   #??[ 69   5      ?? 5?      -   5        $ btnMinimize??5?   !   #??[ 5?   !    
 color8# [ 5?   !   .??5?        $ WindowMinimize=?6+   $??12??6A   #??[ 6L   5?      5?      5?      5?      ?? 5?      $ 	10,0,0,10??6   $??1??5?      $??20,59,546,403q?6!   $	??450??68   $	??220??6D   ??5?      ?? 5?      $	 0,0&?6*   $ 1,0.7&?6;   .??5?      ? # [ 6'   $ 0Q?6T   ? 5?      # [ 6'   $ 1Q?6T   5?      ._?5?      #  LiveCharts.Wpf.CartesianChart  &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$
 Left=?6I      Series 6%   ?? *SeriesCollection+   AxisX 5?        LiveCharts.Wpf.Axis     Title$ Products??6#      Labels 64   ?? *Labels+6P      AxisY 5?        $ Quantity sold??6#      LabelFormatter 69   ?? *	Formatter+6`   5?      5?      ?? 5?      $ 	10,0,0,10??6   $??1??5?      $??527,59,32,403q?6!   $	??450??68   $	??220??6D   ??5?      ?? 5?      $	 0,0&?6*   $ 1,0.7&?6;   .??5?      ? # [ 6'   $ 0Q?6T   ? 5?      # [ 6'   $ 1Q?6T   5?      ._?5?        LiveCharts.Wpf.PieChart  -   5        $ Bottom=?5?         	Hoverable .     DataTooltip 6l   Z?  5?        LiveCharts.Wpf.PieSeries    LiveCharts.Wpf.Series   Title$ Maria??6(      Values;	  5LiveCharts.Wpf.Converters.NumericChartValuesConverter$ 3	 66      
DataLabels .    
LabelPoint 5?       ?? *
PointLabel+  5?      $ Charles??6(   $ 4	 68    .  5?       ?? *
PointLabel+  5?      $ Frida??6(   $ 6	 66    .  5?       ?? *
PointLabel+  5?      $ Frederic??6(   $ 2	 69    .  5?       ?? *
PointLabel+5?      5?      5?      5?      5?      