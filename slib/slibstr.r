	��V�זZ�  8��              �                                 �  05E80012utf-8 MAIN C:\Psg-Prog\slib\slibstr.p,, PROCEDURE initializeProc,, FUNCTION str_LoCharSensitive,character,INPUT pcStr CHARACTER FUNCTION str_HiCharSensitive,character,INPUT pcStr CHARACTER FUNCTION str_LoChar,character,INPUT pcStr CHARACTER FUNCTION str_HiChar,character,INPUT pcStr CHARACTER FUNCTION str_soundex,character,INPUT pcStr CHARACTER FUNCTION str_sortEntries,character,INPUT pcEntryList CHARACTER,INPUT plDescend LOGICAL,INPUT pcDelim CHARACTER FUNCTION str_getEntries,character,INPUT pcEntryList CHARACTER,INPUT piEntryFrom INTEGER,INPUT piEntryTo INTEGER,INPUT pcDelim CHARACTER FUNCTION str_concatL,character,INPUT pcStr CHARACTER,INPUT pcEntry CHARACTER,INPUT pcDelim CHARACTER,INPUT plAddAlways LOGICAL FUNCTION str_concat,character,INPUT pcStr CHARACTER,INPUT pcEntry CHARACTER,INPUT pcDelim CHARACTER,INPUT plAddAlways LOGICAL FUNCTION str_padCenter,character,INPUT pcStr CHARACTER,INPUT pcCh CHARACTER,INPUT piWidth INTEGER FUNCTION str_padRight,character,INPUT pcStr CHARACTER,INPUT pcCh CHARACTER,INPUT piWidth INTEGER FUNCTION str_padLeft,character,INPUT pcStr CHARACTER,INPUT pcCh CHARACTER,INPUT piWidth INTEGER FUNCTION str_alignCenter,character,INPUT pcStr CHARACTER,INPUT piWidth INTEGER,INPUT pcCont CHARACTER FUNCTION str_alignRight,character,INPUT pcStr CHARACTER,INPUT piWidth INTEGER,INPUT pcCont CHARACTER FUNCTION str_alignLeft,character,INPUT pcStr CHARACTER,INPUT piWidth INTEGER,INPUT pcCont CHARACTER FUNCTION str_trimMultipleSpace,character,INPUT pcStr CHARACTER      �              TY              �  �  �W              �"              �     +   $|  �     ? �  $  ISO8859-1                                                                            \                                            �                    W                            �     �I                           �      �                                                         PROGRESS                                       |W          D  P   , $                                                          ��                            ����                            undefined                                                               �           x   `       ��                     �����               �	8        O   ����    e�          O   ����    R�          O   ����    ��          g      �          �n�      }                      |          L  4      ��                     "   d              ��7        O   ����    e�          O   ����    R�          O   ����    ��          �            ��                            ����                                        �                     �                      g                               initializeProc      (              4          �                          �                        str_trimMultipleSpace                   |          $        ��                 B   _   <              ��7        O   ����    e�          O   ����    R�          O   ����    ��      .                       T          �     D   �  �          4   ����T      O   E   ��  ��  |  �     G   �  �          4   �����      O   H   ��  ��  �  T  $   L   (  ���                       �                         � ߱        �     R   l  |          4   ����4      O   S   ��  ��  T  L  $   W   �  ���                       `                         � ߱                  \  l                      ��                   Y   [                   LJ7    �     Y   �      4   ����t      $   Z   �  ���                       �                         � ߱            O   ]   ��  ��  �               0             (                                        �       ��                            ����                            8  �  `  �      �          8                        4  A                      str_alignLeft                             \  D      ��                 c   �   t              �K7        O   ����    e�          O   ����    R�          O   ����    ��      .        �             �          W        �             �          _                       �          \  $   k   0  ���                       �                         � ߱        h
     m   t  �  �      4   �����      $   o   �  ���                                                � ߱               r   �  d	          4   ����`                t	                      ��                  r   |                   7           r   	  �	  $   t   �	  ���                       �                         � ߱               v   �	  <
          4   �����                                                � ߱            $   x   �	  ���                           O   ~   ��  ��  �               4               h �
                                                                                   (   8   H   X          (   8   H   X   ���         ��                            ����                            x  �  �  �      �
          @                       <  k                      str_alignRight                            d  L      ��                 �   �   |              �7        O   ����    e�          O   ����    R�          O   ����    ��      .        �             �          W        �             �          _                       �          d  $   �   8  ���                       �                         � ߱        T     �   |  �  �      4   �����      $   �   �  ���                       �                         � ߱               �   �  l          4   ����                |                      ��                  �   �                   D7           �     �  $   �   �  ���                       $                         � ߱               �   �  �          4   �����      $   �   (  ���                       �                         � ߱            O   �   ��  ��                           �  �   T �                                                                     $   4   D          $   4   D   ���         ��                            ����                            �  �  �  �      l                                   y                      str_alignCenter                 D          8         ��                 �   �   P              �o7        O   ����    e�          O   ����    R�          O   ����    ��      .        �             h          W        �             �          _                       �          $                     4                     X                         � ߱        p  $   �   �  ���                       �     �   �  �  �      4   �����      $   �   �  ���                       �                         � ߱               �     x          4   ����                �                      ��                  �   �                   4�6           �     �  $   �   �  ���                       0                         � ߱               �   �  l          4   ����x  �                     �                                              � ߱            $   �     ���                           O   �   ��  ��  �               |          D  `   | �                                                                                                 ,   <   L   \   l          ,   <   L   \   l   ���         ��                            ����                            T  �  t  �      �          �                       �  �                      str_padLeft                 P          �  �      ��                  �   �   �              �y6        O   ����    e�          O   ����    R�          O   ����    ��      .                     �          �        4                        W                       (          �  $   �   |  ���                       �                         � ߱        �     �   �  �  (      4   �����      $   �   �  ���                       �                         � ߱               �   @  P          4   ����	      $   �   |  ���                       ,	                         � ߱            O   �   ��  ��  �	               \          4  H   T �                                                                     $   4   D          $   4   D   ���         ��                            ����                            �  $  �  0      �          h                       d  �                      str_padRight                    4          �  t      ��                  �   �   �              0c6        O   ����    e�          O   ����    R�          O   ����    ��      .        �             �          �                     �          W                                 �  $   �   `  ���                       �	                         � ߱        �     �   �  �        4   �����	      $   �   �  ���                       �	                         � ߱               �   $  4          4   ����
      $   �   `  ���                       ,
                         � ߱            O   �   ��  ��  `
               @            ,   T �                                                                     $   4   D          $   4   D   ���         ��                            ����                            �    �        �          L                       H  �                      str_padCenter                   |          p  X      ��                  �   �   �              \18        O   ����    e�          O   ����    R�          O   ����    ��      .        �             �          �        �             �          W                       �          l
                     |
                     �
                         � ߱        �  $   �     ���                       �      �   �  �  (       4   �����
      $   �   �  ���                       �
                         � ߱               �   @   P           4   ����X      $   �   |   ���                       x                         � ߱            O   �   ��  ��  �               �!          T!  p!   | �                                                                                                  ,   <   L   \   l          ,   <   L   \   l   ���         ��                            ����                            �  �  �  �      �      	     �!                       �!  �                      str_concat                  �#          �"  �"      ��                      �"              Ф:        O   ����    e�          O   ����    R�          O   ����    ��      .    	    #             �"          �    	    D#             #          �    	    l#             8#          �    	                   `#          $       �#  �#          4   �����      $     �#  ���                       �      	                   � ߱        �$        $  0$          4   ����       $     \$  ���                       \      	                   � ߱            O     ��  ��  �             	  <%          %  (%   T �$                                                                    $   4   D          $   4   D   ����   	     ��                            ����                            �!  4"  �"  @"      �$    	 
     H%                       D%  �   
                   str_concatL                 8'          h&  P&      ��                      �&              �2        O   ����    e�          O   ����    R�          O   ����    ��      .    
    �&             �&          �    
    �&             �&          �    
    '             �&          �    
                   '          �'       P'  `'          4   �����      $     �'  ���                       �      
                   � ߱        8(       �'  �'          4   ����      $     (  ���                       `      
                   � ߱            O     ��  ��  �             
  �(          �(  �(   T �(                                                                    $   4   D          $   4   D   ����   
     ��                            ����                            �%  �%  �&  �%      P(    
      �(                       �(  �                      str_getEntries                  �*          *  *      ��                 !  K  4*              ��h        O   ����    e�          O   ����    R�          O   ����    ��      �        �*             L*                 �*             t*                 �*             �*          �                       �*          ,+     '  +  +          4   �����      O   (  ��  ��  �  �+     *  D+  T+          4   ����      $   +  �+  ���                       8                         � ߱        ,  $   -  �+  ���                       D                         � ߱        �,     1  ,  ,,          4   ����d      $   2  X,  ���                       �                         � ߱        -     4  �,  �,          4   �����      $   5  �,  ���                       �                         � ߱        �-     7  -  ,-          4   �����      $   8  X-  ���                       �                         � ߱        .     :  �-  �-          4   ����      $   ;  �-  ���                       0                         � ߱        �.  $   ?  0.  ���                       <                         � ߱          �.      $/  �/                      ��        0          A  G                  |�>    �/     A  \.      $   A  �.  ���                       H                         � ߱        |/  $   A  P/  ���                       p                         � ߱            4   �����      $   C  �/  ���                       �                         � ߱            O   I  ��  ��  @               �0          �0  �0    � 00                                                                                                          	     0   @   P   `   p   �      	     0   @   P   `   p   �   ����        ��                            ����                            8)  �)  X*  �)      �/          �0                      	 �0  $                     str_sortEntries                 �2          2  �1      ��                 M  �  (2              ��>        O   ����    e�          O   ����    R�          O   ����    ��      �        t2             @2          3       �2             h2          �                       �2          �2     X  �2  �2          4   ����L      O   Y  ��  ��  t  x3     [  3   3          4   �����      $   \  L3  ���                       �                         � ߱        \4     ^  �3  �3          4   �����      $   _  �3  ���                       �                         � ߱        �                            
       
       ,                         � ߱        �4  $   a  �3  ���                         �4      P5  �5                      ��        0          i  �                  �?    �9     i  �4      $   i  $5  ���                       8                         � ߱        �5  $   i  |5  ���                       h                         � ߱            4   �����  6  $   k  �5  ���                       �                         � ߱        �9     m  (6  86  �6      4   �����      $   o  d6  ���                                                � ߱                      `7                      ��                  q  �                  �?           q  �6    p7      �7  08                      ��        0          s  {                  �?    �8     s   7      $   s  �7  ���                              	       	           � ߱         8  $   s  �7  ���                       @       	       	           � ߱            4   ����h  �8  $   u  \8  ���                       �                         � ߱               w  �8  �8          4   �����      O   y  �� ��             }  �8  �8  H9      4   ����\      $     9  ���                       |                         � ߱            $   �  t9  ���                       �                         � ߱            $   �  �9  ���                              
       
           � ߱            O   �  ��  ��  <               <;          �:  ;  , � D:                                                                                                                                                      ,   <   L   \   l   |   �   �   �   �       ,   <   L   \   l   |   �   �   �   �   ���             ��                            ����                            ,1  �1  L2  �1      :          L;                      
 H;  e                     str_soundex                 (=          l<  T<      ��                 �     �<              ?        O   ����    e�          O   ����    R�          O   ����    ��      .                       �<          H                     t                     �                         � ߱        �=  $   �  �<  ���                                 �=  >          �=  �=      ��                  �  �  >              �?    �C     �  T=      4   �����      O   ����  e�          O   ����  R�          O   ����  ��             �  4>  �>  �>      4   �����                       H                         � ߱            $   �  D>  ���                              �  �>  (?  T?      4   ����p  �                     �                         � ߱            $   �  �>  ���                              �  l?  �?  �?      4   ����$  l                     �                         � ߱            $   �  |?  ���                              �  @  `@  �@      4   �����                        d                         � ߱            $   �  @  ���                              �  �@  �@  (A      4   �����  �                                              � ߱            $   �  �@  ���                              �  @A  �A  �A      4   ����@  �                     �                         � ߱            $   �  PA  ���                              �  �A  4B  `B      4   �����  <                     �                         � ߱            $   �  �A  ���                              �  xB  �B  �B      4   �����  �                     4                         � ߱            $   �  �B  ���                              �  C  lC  �C      4   ����\  �                     �                         � ߱            $   �  $C  ���                           $   �  �C  ���                                                � ߱        �F     �  D  DD  pD      4   ����8  �                         � ߱            $   �  D  ���                              �  �D  �D  �D      4   �����  $                         � ߱            $   �  �D  ���                              �  E  DE  pE      4   ����p  �                         � ߱            $   �  E  ���                              �  �E  �E  �E      4   ����  \                         � ߱            $   �  �E  ���                              �  F  DF          4   �����  �                         � ߱            $   �  F  ���                       D                     �                     �                         � ߱        `G  $   �  pF  ���                         pG      �G  0H                      ��        0          �                    �?    �L     �   G      $   �  �G  ���                       �                         � ߱         H  $   �  �G  ���                       �                         � ߱            4   �����  �H  $   �  \H  ���                                                � ߱        DK  p   �  0  �H        I  �H     d  p  |  �      $   �  �H  ���                       �                         � ߱        �I  DI     �  �  �  �  �  �  �  �      $   �  pI  ���                                                 � ߱        J  �I        (       $     �I  ���                       4                          � ߱        pJ  J     H       $     DJ  ���                       T                          � ߱        �J  �J     h   t       $     �J  ���                       �                          � ߱            �J     �       $   	  K  ���                       �                          � ߱                 \K  �K          4   �����                 $L                      ��                                      �?             lK  !                     ,!                         � ߱        PL  $     �K  ���                                hL  xL          4   ����8!      O     �� ��      M       �L  �L          4   ����d!      $     �L  ���                       �!                         � ߱            O     ��  ��  �!               �M          �M  �M   | \M                                                                                                   ,   <   L   \   l          ,   <   L   \   l   �           ��                             ��                            ����                            �;  �;  �<  �;      (M           N                       �M  �                     str_HiChar                  �O          @O  (O      ��                  '  -  XO              �?        O   ����    e�          O   ����    R�          O   ����    ��      .                       pO                 )  �O  �O  �O      4   �����!      O   *  ��  ��  "      O   +  ��  ��  "               DP          4P  <P    $P                                    �       ��                            ����                            `N  �N  |O  �N      �O          LP                       HP  �  
                   str_LoChar                  �Q          lQ  TQ      ��                  /  5  �Q              �?        O   ����    e�          O   ����    R�          O   ����    ��      .                       �Q                 1  �Q  �Q  R      4   ����("      O   2  ��  ��  H"      O   3  ��  ��  T"               pR          `R  hR    PR                                    �       ��                            ����                            �P  �P  �Q  �P      R          xR                       tR  �  
                   str_HiCharSensitive                 �S          �S  �S      ��                  ;  A  �S              � ?        O   ����    e�          O   ����    R�          O   ����    ��      .                       �S                 =  T   T  8T      4   ����`"      O   >  ��  ��  �"      O   ?  ��  ��  �"               �T          �T  �T    �T                                    �       ��                            ����                            �R  S  �S  (S      PT          �T                       �T  �                     str_LoCharSensitive                 ,V          �U  �U      ��                  C  I  �U              x%?        O   ����    e�          O   ����    R�          O   ����    ��      .                       V                 E  DV  TV  lV      4   �����"      O   F  ��  ��  �"      O   G  ��  ��  �"               �V          �V  �V    �V                                    �       ��                            ����                            �T  HU  V  \U      �V          �V                       �V                               
�    G %              G %                  %              %                   "      %                  "      %       �           "     ZG "    Z    �     7G "    7U    "     Z%               U    �     7%                   "    7%              o%   o                "    Z%               � 4       �  L � 5      � 7      �  , � 5    7� 9    a�   � 5      � ;    Z"    7    "    7� 5    a� 5      z     "               "      � >    7%               �   � 5      � >      "      "       "          "    7"    a  4   "      U     � 5          "      "    Z    "    7"    a   "      %              "    7(         "      %                  "      � 4     Z "    7b <     "    Z          "      "    Z%              "    Z"    7"       "          "    7"    a 4    U     � 5          "    a"      "    Z    "    7"    a <  "                "    a"      %              "    7(         "      %                  "      � 4     Zb      "      %              "    Z "    Z"       "    7      "    7"    a    "    7%                  "    7"    a 4 4         U    � 5    ߱"    a"      U     � 5    Z    "      "    Z    "    7"    a (  "           "      %              "    Z(         "      %                  "      � 4     Z "    7b      "    7%              "      "    Zb <     "               "    7"    a%              "    a"      "       "          "    7"    a 4    U     "          "    a"      "    Z    "    7"    a <  "                "    a"      %              "    6"       "          "    7"    a  4   "      U     "          "      "    Z    "    7"    a   "      %              "    7"       "    7      "    7"    a    "    7%                  "    6"    a 4 4         U    "    ߱"    a"      U     "    Z    "      "    Z    "    6"    a (  "           "      %              "    Z"          " 	   6%              � �       H   " 	   6,    S   " 	   Z" 	   7" 	   a%                T      @   " 	     (        " 	   Z� 4     7" 	   Z� 4     7" 	   a" 	         " 
   6%              � �       H   " 
   6,    S   " 
   Z" 
   6" 
   a%                T      @   " 
     (        " 
   Z� 4     7" 
   Z� 4     7" 
   a" 
         "    6%              o%   o               "    7%              � �      �    "      "          "    7%              %                  "    7%              "          "    7%              %                  "    7"    a"      � 4           "      %                   "      %                  "      "       T ,     @   "      (        "    Z� 4     7"    Z� 4     7T   "    Z"    7"    a"          "    7%              o%   o               "    7%              %                   "    7%              � �      �    "    6"    a%               � 4           %              %                   "      %                  "      "      T   "      "      "          "  
  6%               "          %              %                   "  	    %                  "  	    "  
    T   "  	    "      "      P P   (         "      %                   "      "    Z(         "      %                  "    7"    a    "  	  6"  
  a           "      "      "    7�  4    "      "  	  ߱           "    a"    7"    a"           "  
    %              "      �             $     "    7        - "      %                  "    7 "      4       "      "    Z%              � �   Zb      "      "    Z� �   7%                   "    7%              4       "      "    Z%              � �   Zb      "      "    Z� �   7%                   "    7%              4       "      "    Z%              � �   Zb      "      "    Z� �   6%                   "    6%              4       "      "    Z%              � �   Zb      "      "    Z� �   6%                   "    6%              4       "      "    Z%              � �   Zb      "      "    Z� �   7%                   "    7%              4       "      "    Z%              � �   Zb      "      "    Z� �   7%                   "    7%              4       "      "    Z%              � �   Zb      "      "    Z� �   7%                   "    7%              4       "      "    Z%              � �   Zb      "      "    Z� �   7%                   "    7%              4       "      "    Z%              � �   Zb      "      "    Z� �   7%                   "    7%                   "      %              <       "      %              %              � �   Zb      "    a%              � �   a%              <       "      %              %              � �   Zb      "    a%              � �   a%              <       "      %              %              � �   Zb      "    a%              � �   a%              <       "      %              %              � �   Zb      "    a%              � �   a%              <       "      %              %              � �   Zb      "    a%              � �   a%                 "    7%              %              %               "    Z    %              %                   "      %                  "      "      %                 "    7"    a%              � �     � �     � �     � �     %              � �     � �     � �     � �     � �     � �     � �     � �     %              � �     � �     %              � �     %              � �     � �     %              � �     %              (         "      %                  "      "    Z     "    Z     "      "           "    Z%                   "    Z%                @   "      U ,   � �         %               "      "          "    7� 4     a"       "          "    7� 4     a� 4       "          "    7� 4     a�       "          "    7� 4     a� 4       "                      �           x   `       ��                 $   >   �               �7        O   ����    e�          O   ����    R�          O   ����    ��                             $                           � ߱        |  $   ,   �   ���                         �      �  �                      ��        0          0   6                   ��7         0         $   0   �  ���                       <                          � ߱        <  $   0     ���                       l                          � ߱            4   �����   �                       �                           � ߱            $   2   L  ���                                             ,                          � ߱            $   :   �  ���                                    �          x  �    h                                             ��                            ����                            TXS cHiChar cHiCharSensitive i INITIALIZEPROC pcStr     
 
    STR_TRIMMULTIPLESPACE piWidth pcCont iLen STR_ALIGNLEFT STR_ALIGNRIGHT j STR_ALIGNCENTER pcCh STR_PADLEFT STR_PADRIGHT STR_PADCENTER pcEntry pcDelim plAddAlways , STR_CONCAT STR_CONCATL pcEntryList piEntryFrom piEntryTo RetVal STR_GETENTRIES plDescend cStr iPos cStr2 iPos2 iLen2 cEntryList2 STR_SORTENTRIES cRetVal iLast ITE IGHT DG G TIA SHA CHM M DT T CKS X CK C PH F PF WR R KN N PN Z K B P V J Q S D L 0 STR_SOUNDEX STR_HICHAR STR_LOCHAR STR_HICHARSENSITIVE STR_LOCHARSENSITIVE 4  �                �    H                                             "             d      i      �         P           �                   initializeProc  ,   0   2   6   :   >             �         pcStr   h   (            �                         str_trimMultipleSpace   D   E   G   H   L   R   S   W   Y   Z   [   ]   _   x        p     iLen              �     i   �        �        pcStr   �        �        piWidth           �        pcCont  �   0  
      \  �                         str_alignLeft   k   m   o   r   t   v   x   |   ~   �             l     iLen    �        �        pcStr   �        �        piWidth           �        pcCont  �    
      X  t                        str_alignRight  �   �   �   �   �   �   �   �   �   �   X        P     iLen    p        l     i             �     j   �        �        pcStr   �        �        piWidth           �        pcCont  �  (  
      <  �                        str_alignCenter �   �   �   �   �   �   �   �   �   �             d     iLen    �        �        pcStr   �        �        pcCh              �        piWidth �          P  l      �                  str_padLeft �   �   �   �   �   �   �             8     iLen    `        X        pcStr   �        x        pcCh              �        piWidth �  �        $  @      �                  str_padRight    �   �   �   �   �   �   �                iLen    0        ,     i             D     j   h        `        pcStr   �        �        pcCh              �        piWidth �  �     	   �  H      �                  str_padCenter   �   �   �   �   �   �   �   $  	              pcStr   D  	      <        pcEntry d  	      \        pcDelim     	      |        plAddAlways �  �     
             �                  str_concat              �  
      �        pcStr     
              pcEntry <  
      4        pcDelim     
      T        plAddAlways �  �            �      �                  str_concatL             �        �     RetVal  �        �     iLen               	     i   (	        	        pcEntryList L	        @	        piEntryFrom p	        d	        piEntryTo             �	        pcDelim `  �	        �  	      �	                  str_getEntries  '  (  *  +  -  1  2  4  5  7  8  :  ;  ?  A  C  G  I  K  8
        0
     cStr    T
        L
     iPos    p
        h
     iLen    �
        �
     cStr2   �
     	   �
     iPos2   �
     
   �
     iLen2             �
     cEntryList2         �
        pcEntryList ,                 plDescend             D        pcDelim �	  �        
  �
      |                  str_sortEntries X  Y  [  \  ^  _  a  i  k  m  o  q  s  u  w  y  {  }    �  �  �  �  �  �               cRetVal (              iLen    D        <     iPos    `        X     iLast             t     i             �        pcStr   L  �  (      �  x      �                  str_soundex �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        	                                     �        pcStr   �  �            t      �                  str_HiChar  )  *  +  -            �        pcStr   �  <            �      0                  str_LoChar  1  2  3  5            d        pcStr      �            L      �                  str_HiCharSensitive =  >  ?  A            �        pcStr   l  $            �                        str_LoCharSensitive E  F  G  I  �  �        d                              �         x     cHiChar            �     cHiCharSensitive           �I   C:\Psg-Prog\slib\slibstr.p   