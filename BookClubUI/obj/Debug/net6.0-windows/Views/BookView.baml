   M S B A M L   `   `   `  ����F  BBookClub.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:BookClub.UI.ViewsBookClub.UI.Views  5           BookClub.UI.Views.BookView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:BookClub.UI.Views     5      .��5	      �   � ColumnDefinitions  5
   
   �� 5      $��* �6   �� 5      $��5* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��60 �6   .+�5   
   �� -   5         ��Name$ lvBooks��5       �� DisplayMemberPath$
 Name��5      ��5      �� *Books+ �� SelectedItem 5      �� *SelectedBook+ �� Mode$ TwoWay=��� 5   
   -   5         ��Name$ 
btnAddBook��5      $��Add Book��6%   $��10q�68   $��1��6D   ��5      �� *AddBookCommand+�� 5   
   $��1��6   y�6%   �� *IsBookSelected+    BooleanToVisibilityConverter �� 	Converter# [  .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��Title��6   $��10q�6(   �� 5      -   5        	 ��Name$	 txtName��5      $	��500��5   ;   $��10q�6G   ��5   +   �� *SelectedBook.Title+$ TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=�5   G   5      �� 5      $ 
Horizontal=�6   .+�5       �� $��Author��6   $��10q�6)   �� 5!      $	��300��6   $��10q�6&   ��5"      �� *SelectedReader.Author+$ TwoWay=��� 5#      $��
Audio Book��6   $��10q�6-   �� 5$      $
��auto��6   $��16��6(    J� RenderTransformOrigin$ 
0.492,0.27&�5%   U    d� Checked 6   �� *SelectedBook.isAudioBook+$ TwoWay=�6U   5&      �� 5(      $ 
Horizontal=�6   .+�5)      �� -   5        $ btnSave��5)      $��Update��6*   $��60��6;   $��10q�6F   ��5*      �� *SaveBookCommand+�� 5+      -   5        $ 	btnDelete��5+      $��Delete��6,   $��60��6=   $��10q�6H   ��5,      �� *DeleteBookCommand+5-      &   System.Windows.Controls.DataGrid  5/      -   5          Name$ 	dgReading��5/      $��10q�6*      AutoGenerateColumns$ False��51         CanUserAddRows$ False��63      CanUserDeleteRows$ False��6J      SelectionMode$ Single=�52      $	��300��53   =   ��50      �� *Book+$
 PropertyChanged=� 53      �� *SelectedBook+   Columns 54      0  *System.Windows.Controls.DataGridTextColumn  55      ,  &System.Windows.Controls.DataGridColumn   Header$ Title��6)      
IsReadOnly$
 True��68   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6J   �� *
Book.Title+56        57      $ 	Author(s)��6*   $
 true��6=    6O   �� *Book.First2Authors+58        59      $ Pages��6)   $
 True��68    6J   �� *
Book.Pages+5:        5;      $ 	Publisher��6)   $
 True��6<    6N   �� *Book.Publisher+5<      4  .System.Windows.Controls.DataGridCheckBoxColumn  5=      $ Audio��6-   $
 true��6<    6N   �� *IsAudioBook+5>        5?      $ Recording time��6)   $
 True��6A    6S   �� *Book.RecordingTime+5@        5A      $ recorded by��6)   $
 True��6>    6P   �� *Book.RecordedBy+5B        5C      $ Notes��6)   $ false��68      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6�    6K   �� *
Book.Notes+$ TwoWay=�$
 PropertyChanged=�5D      5G      5H      5I      5J      