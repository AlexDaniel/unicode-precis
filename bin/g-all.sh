#!/usr/bin/env sh

generate-module --mod-name='GeneralCatagory' --cat='Ll,Lu,Lo,Nd,Lm,Mn,Mc' UCD
#generate-module --mod-name='Controls' --cat='Cc' \
#                --fields=codepoint,character-name,general-catagory \
#                UnicodeData.txt

generate-module --mod-name='Controls' --cat='Cc' UCD

generate-module --mod-name='JoinControl' --cat='Join_Control' \
                --fields='codepoint,property' PropList.txt

generate-module --mod-name='OldHangulJamo' --cat=V,T,L \
                --fields=codepoint,property HangulSyllableType.txt

generate-module --mod-name='Unassigned' --cat='Cn' \
                --fields=codepoint,property extracted/DerivedGeneralCategory.txt




generate-module --mod-name='NonCharCodepoint' --cat='Noncharacter_Code_Point' \
                --fields='codepoint,property' PropList.txt

generate-module --mod-name='Bidi1stChar' --cat=L,R,AL \
                --fields=codepoint,property extracted/DerivedBidiClass.txt
