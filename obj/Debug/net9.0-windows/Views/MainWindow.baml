   M S B A M L   `   `   `  ����L  HUserManagementApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:UserManagementApp.ViewModelsUserManagementApp.ViewModels  5   	   (    "UserManagementApp.Views.MainWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   9vm*clr-namespace:UserManagementApp.ViewModels     5   	     � Title$  Kasir perumahan��5   	   $	��600��6!   $	��900��6.    � WindowStartupLocation$ CenterScreen=�6:    � DataContext 5      0   *UserManagementApp.ViewModels.MainViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��180 �6   �� 5      $��* �6   .+�5   
   �� ���#f2f2f2$��0��6*   .+�5      �� $��	🏠 Home��6   $��10q�6'   $��40��63   �� 5      $��💰 Transaksi��6   $��10q�6,   $��40��68   �� 5      $��⚙ Setting��6   $��10q�6)   $��40��65   �� 5      $��Bottom=�6   $��10q�64   .+�5      �� $��Logout��6   ���#002366
�������$��35��6R   5      5      ]� 5   
   $��1��6   ���#e0e0e0.+�5      ]� $	��Top=�6   ���#002366$��50��6B   .+�5      �� $��Kasir perumahan��6   
�������$��18(�6F   $��Center=�6T   $��10q�6o   5       �� 5#       �� Orientation$ 
Horizontal=�6   $��10q�62   $	��Top=�6>   $
��Left=�6S   .+�5$      �� $	��200��6   $��30��6&   $��0,0,5,0q�62   �� 5%      $��⏷ Filter Role��6   $	��100��61   $��30��6=   $��0,0,5,0q�6I   �� 5&      $��Tambah User Baru��6   $	��130��64   $��30��6@   ���#002366
���������6t   �� *AddUserCommand+5'      &   System.Windows.Controls.DataGrid  5*         AutoGenerateColumns$ False��65      CanUserAddRows$ False��6Q   $��10q�6h   ��6   �� *Users+   Columns 5+      0  *System.Windows.Controls.DataGridTextColumn  5,      ,  &System.Windows.Controls.DataGridColumn   Header$ No��6)   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 40 6L   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 65   �� *No+6L     5-      $ Nama Lengkap��6)   $	 * 6\   
 6?   �� *
Username+6\     5.      $
 Role��6)   $		 100 6P   
 67   �� *Role+6P     5/      $ Status��6)   $	 80 6T   
 69   �� *Status+6T   4  .System.Windows.Controls.DataGridTemplateColumn  50      $
 Aksi��6-   $	 80 6;      CellTemplate 51      �� 52      .R�53   "   �� $��✏ Edit��6)   $��50��6:   $��25��6E   54      56      58      �� 5;      $��Export excel��6   $	��120��6,   $��30��68   ���#002366
�������$��Right=�6l   $��10q�6�   5<      5=      5>      