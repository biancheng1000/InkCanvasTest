   M S B A M L   `   `   `  ����H  DInkCanvasTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:InkCanvasTestInkCanvasTest  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35`Dclr-namespace:System.Windows.Controls;assembly=PresentationFrameworkSystem.Windows.Controls 5   	       InkCanvasTest.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:InkCanvasTest     5   	   TsysDclr-namespace:System.Windows.Controls;assembly=PresentationFramework     5   	     � Title$  
MainWindow��5	   	   $	��350��6   $	��525��6)    � 	Resources 5
         	EditModel S� 
MethodName S� 
ObjectType2  ,System.Windows.Controls.InkCanvasEditingMode S� MethodParameters M� TypeName  DrawType   InkCanvasTest.DrawTypeEum  RadioButtonList �� 
TargetType �� Property �� Value	 �� 
TargetType
 J� IsHitTestVisible �� 
IsSelected d� 	IsChecked��%�  &	        &	 y     &	 �     S� 5   
   $ 	GetValues��6/   "  5   
    5      M� 5      $ sys:InkCanvasEditingMode��6   5      S� 5   
   $ 	GetValues��6.   "  5   
    5      M� 5      $ local:DrawTypeEum��6   5"      �� 5$   
   " ��6(   .�5&      ��  � �� 6,   Z� �� 5(       � ��$ 0q�60   �� 5*       � �� 5,      �� 5.      " ��6   .�50      ��  � ��$ 2q�63   �� 52       � �� 54      �� 56   "   "	 ��62   .R�58   &   �� 
������ ._�5:   *   	� |�.  
 .  # z 5>      .��5@   .   �� 5B   +   5D   '   5F   #   5J      5L      5P      5Q      5R      .��5S      �  � RowDefinitions 5T   
   �� 5U      �� 5V      $��50 �6    � ColumnDefinitions 5X   
   �� 5Y      �� 5Z      $	��180 �6   .+�5\   
   #   InkCanvasTest.CustomInkCanvas  -   5          Name$
 test��5\   {    �� 
Background
 ����  �� EditingMode 6    ��  �� Path$ SelectedItem� �� ElementName$ 
editSource��   DrawType 6�   �� $ SelectedItem�$ 
DrawSource�� �� DefaultDrawingAttributes 5^      *  $System.Windows.Ink.DrawingAttributes  5_         Color$ White��6$      IsHighlighter .     IgnorePressure .    Width$ 10Q�6^      Height$ 10Q�6i   5a      �� 5c   
   $��形状��6   $��1��6   $��2��6,   .��5d      �� -   5         ��Name$ 
DrawSource��5d      #��[ 6c    �� SelectedIndex$ 0��6�   ��6*   ��  �� Source# [ ��5e      �� 5f      .R�5g      �  � Orientation$ 
Horizontal=�6$   5h      5j      5k      �� 5m   
   $��操作��6   $��1��6   $��2��6/   .��5n      �� -   5        $ 
editSource��5n      #��[ 6d   $ 0��6�   ��6*   �� # [  6�   5o      5p      5q      