   M S B A M L   `   `   `  ����J  FResourceMonitor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ResourceMonitorResourceMonitor  5   	        ResourceMonitor.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ResourceMonitor     5   	   -   5          � Title$  Resource Monitor��5   	   $��237.338��6"   $��198.334��63    � WindowStartupLocation$ Manual=�6Z    � ShowInTaskbar .   � AllowsTransparency .  � WindowStyle$
 None=�6�    J� Opacity$
 0.85Q�6�    � 
ResizeMode$ NoResize=�6�   ��6�   Z� .��5	      �  � ContextMenu 5
   
   �� 5      .@�5      m� -   5         m�Name$ mCheck��5      $��TopMost��6+   	 m� IsCheckable	 . 6�   m� 5      -   5        $ mClose��5      $��Close��6+   6Q   5      .+�5   
   �� $
��Left=�6   $	��212��6/   $	��Top=�6<   $	��169��6T   
 �� RadiusY$
 12.167��6`    �� RadiusX$ 12.167��6q   $
 0.85Q�6�   ���	#FF042246$��	14,15,0,0q�6�    J� Effect 5      -  'System.Windows.Media.Effects.BlurEffect  5         
KernelType$	 Box=�6      RenderingBias$ Quality=�6.      Radius$ 6Q�6F   5      �� 5   
   -   5         ��Name$ lblCPU��5      $��0��6    $
��Left=�6,   $��	93,89,0,0q�6G   $	��Top=�6Z   
�������$
��Bold"�6�   $��34��6�   �� 5   
   -   5        $ lblRam��5      $��0��6    $
��Left=�6,   $��
93,115,0,0q�6G   $	��Top=�6[   
�������$
��Bold"�6�   $��34��6�   �� 5   
   -   5        $ label��5      $��CPU %:��6   $
��Left=�60   $��	24,89,0,0q�6K   $	��Top=�6^   
�������$��Italic$�6�   �� 5   
   -   5        $ label1��5      $��Ram %:��6    $
��Left=�61   $��
24,115,0,0q�6L   $	��Top=�6`   
�������$��Italic$�6�   �� 5   
   -   5        $ 
lblBattery��5      $��0��6$   $
��Left=�60   $��
93,167,0,0q�6K   $	��Top=�6_   
�������$
��Bold"�6�   $��34��6�   �� 5   
   -	   5        $ label1_Copy1��5      $��
Battery %:��6&   $
��Left=�6;   $��
24,167,0,0q�6V   $	��Top=�6j   
�������$��Italic$�6�   �� 5   
   -
   5        $ label1_Copy2��5      $��Disk %:��6&   $
��Left=�68   $��
24,141,0,0q�6S   $	��Top=�6g   
�������$��Italic$�6�   �� 5   
   -   5        $ lblDisk��5      $��0��6!   $
��Left=�6-   $��
93,141,0,0q�6H   $	��Top=�6\   
�������$
��Bold"�6�   $��34��6�   �� 5   
   -   5        $ lblName��5      $��Center=�6!   $�� ��6E   $
��Left=�6P   $��	24,27,0,0q�6k   $	��Top=�6~   
�������$
��Bold"�6�   $	��146��6�   
�������$��1q�6�    5      3  -System.Windows.Media.Effects.DropShadowEffect  5       5"      � 5#   
   -   5         �Name$ pbCpu��5#      $
��Left=�6%   $��10��6@   $��
132,98,0,0q�6L   $	��Top=�6`   $��38��6x   ���	#FF455B75 � SmallChange$ 1Q�6�   � 5$   
   -   5        $ pbRam��5$      $
��Left=�6%   $��10��6@   $��132,124,0,0q�6L   $	��Top=�6a   $��38��6y   ���	#FF289E28$ 1Q�6�   � 5%   
   -   5        $ pbDisk��5%      $
��Left=�6&   $��10��6A   $��132,150,0,0q�6M   $	��Top=�6b   $��38��6z   ���	#FF543089$ 1Q�6�   � 5&   
   -   5        $ pbBat��5&      $
��Left=�6%   $��10��6@   $��132,174,0,0q�6L   $	��Top=�6a   $��38��6y   ���	#FFDFF038$ 1Q�6�   �� 5'   
   -   5        $ lblTime��5'      $��Right=�6!   $�� ��6D   $
��Left=�6O   $��
101,60,0,0q�6j   $	��Top=�6~   
�������$
��Bold"�6�   $��69��6�   �� 5(   
   -   5        $ lblDate��5(      $�� ��6!   $
��Left=�6,   $��	24,60,0,0q�6G   $	��Top=�6Z   
�������$��77��6�   $
��Bold"�6�   �� 5)   
   -   5        $ 	lblCharge��5)      $��Center=�6#   $�� ��6G   $
��Left=�6R   $��
73,193,0,0q�6m   $	��Top=�6�   
�������$��97��6�   $
��Bold"�6�   �� 5*   
   -   5        $ label1_Copy��5*      $��Status:��6%   $
��Left=�67   $��
24,193,0,0q�6R   $	��Top=�6f   
�������$��Italic$�6�   5,      5-      