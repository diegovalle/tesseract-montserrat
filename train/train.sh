#!/bin/bash
declare -a arr=(
"../pdf/homicidios_01012023_v2.pdf"
"../pdf/homicidios_01012024_v2.pdf"



"../pdf/homicidios_01022023_v2.pdf"
"../pdf/homicidios_01022024_v2.pdf"



"../pdf/homicidios_01032023_v2.pdf"
"../pdf/homicidios_01032024_v2.pdf"



"../pdf/homicidios_01042023_v2.pdf"
"../pdf/homicidios_01042024_v2.pdf"



"../pdf/homicidios_01052023_v2.pdf"
"../pdf/homicidios_01052024_v2.pdf"
"../pdf/homicidios_01062019_v2.pdf"



"../pdf/homicidios_01062023_v2.pdf"
"../pdf/homicidios_01062024_v2.pdf"
"../pdf/homicidios_01072019_v2.pdf"



"../pdf/homicidios_01072023_v2.pdf"
"../pdf/homicidios_01072024_v2.pdf"
"../pdf/homicidios_01082019_v2.pdf"



"../pdf/homicidios_01082023_v2.pdf"
"../pdf/homicidios_01082024_v2.pdf"
"../pdf/homicidios_01092019_v2.pdf"



"../pdf/homicidios_01092023_v2.pdf"
"../pdf/homicidios_01092024_v2.pdf"
"../pdf/homicidios_01102019_v2.pdf"



"../pdf/homicidios_01102023_v2.pdf"
"../pdf/homicidios_01102024_v2.pdf"
"../pdf/homicidios_01112019_v2.pdf"



"../pdf/homicidios_01112023_v2.pdf"
"../pdf/homicidios_01122019_v2.pdf"



"../pdf/homicidios_01122023_v2.pdf"



"../pdf/homicidios_02012023_v2.pdf"
"../pdf/homicidios_02012024_v2.pdf"








"../pdf/homicidios_02032023_v2.pdf"
"../pdf/homicidios_02032024_v2.pdf"



"../pdf/homicidios_02042023_v2.pdf"
"../pdf/homicidios_02042024_v2.pdf"
"../pdf/homicidios_02052019_v2.pdf"



"../pdf/homicidios_02052023_v2.pdf"
"../pdf/homicidios_02052024_v2.pdf"
"../pdf/homicidios_02062019_v2.pdf"



"../pdf/homicidios_02062023_v2.pdf"
"../pdf/homicidios_02062024_v2.pdf"
"../pdf/homicidios_02072019_v2.pdf"



"../pdf/homicidios_02072023_v2.pdf"
"../pdf/homicidios_02072024_v2.pdf"
"../pdf/homicidios_02082019_v2.pdf"



"../pdf/homicidios_02082023_v2.pdf"
"../pdf/homicidios_02082024_v2.pdf"
"../pdf/homicidios_02092019_v2.pdf"



"../pdf/homicidios_02092023_v2.pdf"
"../pdf/homicidios_02092024_v2.pdf"
"../pdf/homicidios_02102019_v2.pdf"



"../pdf/homicidios_02102023_v2.pdf"
"../pdf/homicidios_02102024_v2.pdf"
"../pdf/homicidios_02112019_v2.pdf"



"../pdf/homicidios_02112023_v2.pdf"
"../pdf/homicidios_02122019_v2.pdf"



"../pdf/homicidios_02122023_v2.pdf"



"../pdf/homicidios_03012023_v2.pdf"
"../pdf/homicidios_03012024_v2.pdf"



"../pdf/homicidios_03022023_v2.pdf"
"../pdf/homicidios_03022024_v2.pdf"



"../pdf/homicidios_03032023_v2.pdf"
"../pdf/homicidios_03032024_v2.pdf"
"../pdf/homicidios_03042019_v2.pdf"



"../pdf/homicidios_03042023_v2.pdf"
"../pdf/homicidios_03042024_v2.pdf"
"../pdf/homicidios_03052019_v2.pdf"



"../pdf/homicidios_03052023_v2.pdf"
"../pdf/homicidios_03052024_v2.pdf"
"../pdf/homicidios_03062019_v2.pdf"



"../pdf/homicidios_03062023_v2.pdf"
"../pdf/homicidios_03062024_v2.pdf"
"../pdf/homicidios_03072019_v2.pdf"



"../pdf/homicidios_03072023_v2.pdf"
"../pdf/homicidios_03072024_v2.pdf"
"../pdf/homicidios_03082019_v2.pdf"



"../pdf/homicidios_03082023_v2.pdf"
"../pdf/homicidios_03082024_v2.pdf"
"../pdf/homicidios_03092019_v2.pdf"



"../pdf/homicidios_03092023_v2.pdf"
"../pdf/homicidios_03092024_v2.pdf"
"../pdf/homicidios_03102019_v2.pdf"



"../pdf/homicidios_03102023_v2.pdf"
"../pdf/homicidios_03102024_v2.pdf"
"../pdf/homicidios_03112019_v2.pdf"



"../pdf/homicidios_03112023_v2.pdf"
"../pdf/homicidios_03122019_v2.pdf"



"../pdf/homicidios_03122023_v2.pdf"



"../pdf/homicidios_04012023_v2.pdf"
"../pdf/homicidios_04012024_v2.pdf"



"../pdf/homicidios_04022023_v2.pdf"
"../pdf/homicidios_04022024_v2.pdf"



"../pdf/homicidios_04032023_v2.pdf"
"../pdf/homicidios_04032024_v2.pdf"
"../pdf/homicidios_04042019_v2.pdf"



"../pdf/homicidios_04042023_v2.pdf"
"../pdf/homicidios_04042024_v2.pdf"
"../pdf/homicidios_04052019_v2.pdf"



"../pdf/homicidios_04052023_v2.pdf"
"../pdf/homicidios_04052024_v2.pdf"
"../pdf/homicidios_04062019_v2.pdf"



"../pdf/homicidios_04062023_v2.pdf"
"../pdf/homicidios_04062024_v2.pdf"
"../pdf/homicidios_04072019_v2.pdf"



"../pdf/homicidios_04072023_v2.pdf"
"../pdf/homicidios_04072024_v2.pdf"
"../pdf/homicidios_04082019_v2.pdf"



"../pdf/homicidios_04082023_v2.pdf"
"../pdf/homicidios_04082024_v2.pdf"
"../pdf/homicidios_04092019_v2.pdf"



"../pdf/homicidios_04092023_v2.pdf"
"../pdf/homicidios_04092024_v2.pdf"
"../pdf/homicidios_04102019_v2.pdf"



"../pdf/homicidios_04102023_v2.pdf"
"../pdf/homicidios_04102024_v2.pdf"
"../pdf/homicidios_04112019_v2.pdf"



"../pdf/homicidios_04112023_v2.pdf"
"../pdf/homicidios_04122019_v2.pdf"



"../pdf/homicidios_04122023_v2.pdf"



"../pdf/homicidios_05012023_v2.pdf"
"../pdf/homicidios_05012024_v2.pdf"



"../pdf/homicidios_05022023_v2.pdf"
"../pdf/homicidios_05022023_v2.txt"
"../pdf/homicidios_05022024_v2.pdf"



"../pdf/homicidios_05032023_v2.pdf"
"../pdf/homicidios_05032024_v2.pdf"
"../pdf/homicidios_05042019_v2.pdf"



"../pdf/homicidios_05042023_v2.pdf"
"../pdf/homicidios_05042024_v2.pdf"
"../pdf/homicidios_05052019_v2.pdf"



"../pdf/homicidios_05052023_v2.pdf"
"../pdf/homicidios_05052024_v2.pdf"
"../pdf/homicidios_05062019_v2.pdf"



"../pdf/homicidios_05062023_v2.pdf"
"../pdf/homicidios_05062024_v2.pdf"
"../pdf/homicidios_05072019_v2.pdf"



"../pdf/homicidios_05072023_v2.pdf"
"../pdf/homicidios_05072024_v2.pdf"
"../pdf/homicidios_05082019_v2.pdf"



"../pdf/homicidios_05082023_v2.pdf"
"../pdf/homicidios_05082024_v2.pdf"
"../pdf/homicidios_05092019_v2.pdf"



"../pdf/homicidios_05092023_v2.pdf"
"../pdf/homicidios_05092024_v2.pdf"
"../pdf/homicidios_05102019_v2.pdf"



"../pdf/homicidios_05102023_v2.pdf"
"../pdf/homicidios_05102024_v2.pdf"
"../pdf/homicidios_05112019_v2.pdf"



"../pdf/homicidios_05112023_v2.pdf"
"../pdf/homicidios_05122019_v2.pdf"



"../pdf/homicidios_05122023_v2.pdf"



"../pdf/homicidios_06012023_v2.pdf"
"../pdf/homicidios_06012024_v2.pdf"



"../pdf/homicidios_06022023_v2.pdf"
"../pdf/homicidios_06022024_v2.pdf"



"../pdf/homicidios_06032023_v2.pdf"
"../pdf/homicidios_06032024_v2.pdf"
"../pdf/homicidios_06042019_v2.pdf"



"../pdf/homicidios_06042023_v2.pdf"
"../pdf/homicidios_06042024_v2.pdf"
"../pdf/homicidios_06052019_v2.pdf"



"../pdf/homicidios_06052023_v2.pdf"
"../pdf/homicidios_06052024_v2.pdf"
"../pdf/homicidios_06062019_v2.pdf"



"../pdf/homicidios_06062023_v2.pdf"
"../pdf/homicidios_06062024_v2.pdf"
"../pdf/homicidios_06072019_v2.pdf"



"../pdf/homicidios_06072023_v2.pdf"
"../pdf/homicidios_06072024_v2.pdf"
"../pdf/homicidios_06082019_v2.pdf"



"../pdf/homicidios_06082023_v2.pdf"
"../pdf/homicidios_06082024_v2.pdf"
"../pdf/homicidios_06092019_v2.pdf"



"../pdf/homicidios_06092023_v2.pdf"
"../pdf/homicidios_06092024_v2.pdf"
"../pdf/homicidios_06102019_v2.pdf"



"../pdf/homicidios_06102023_v2.pdf"
"../pdf/homicidios_06102024_v2.pdf"
"../pdf/homicidios_06112019_v2.pdf"



"../pdf/homicidios_06112023_v2.pdf"
"../pdf/homicidios_06122019_v2.pdf"



"../pdf/homicidios_06122023_v2.pdf"



"../pdf/homicidios_07012023_v2.pdf"
"../pdf/homicidios_07012024_v2.pdf"



"../pdf/homicidios_07022023_v2.pdf"
"../pdf/homicidios_07022024_v2.pdf"



"../pdf/homicidios_07032023_v2.pdf"
"../pdf/homicidios_07032024_v2.pdf"
"../pdf/homicidios_07042019_v2.pdf"



"../pdf/homicidios_07042023_v2.pdf"
"../pdf/homicidios_07042024_v2.pdf"
"../pdf/homicidios_07052019_v2.pdf"



"../pdf/homicidios_07052023_v2.pdf"
"../pdf/homicidios_07052024_v2.pdf"
"../pdf/homicidios_07062019_v2.pdf"



"../pdf/homicidios_07062023_v2.pdf"
"../pdf/homicidios_07062024_v2.pdf"
"../pdf/homicidios_07072019_v2.pdf"



"../pdf/homicidios_07072023_v2.pdf"
"../pdf/homicidios_07072024_v2.pdf"
"../pdf/homicidios_07082019_v2.pdf"



"../pdf/homicidios_07082023_v2.pdf"
"../pdf/homicidios_07082024_v2.pdf"
"../pdf/homicidios_07092019_v2.pdf"



"../pdf/homicidios_07092023_v2.pdf"
"../pdf/homicidios_07092024_v2.pdf"
"../pdf/homicidios_07102019_v2.pdf"



"../pdf/homicidios_07102023_v2.pdf"
"../pdf/homicidios_07102024_v2.pdf"
"../pdf/homicidios_07112019_v2.pdf"



"../pdf/homicidios_07112023_v2.pdf"
"../pdf/homicidios_07122019_v2.pdf"



"../pdf/homicidios_07122023_v2.pdf"



"../pdf/homicidios_08012023_v2.pdf"
"../pdf/homicidios_08012024_v2.pdf"



"../pdf/homicidios_08022023_v2.pdf"
"../pdf/homicidios_08022024_v2.pdf"



"../pdf/homicidios_08032023_v2.pdf"
"../pdf/homicidios_08032024_v2.pdf"
"../pdf/homicidios_08042019_v2.pdf"



"../pdf/homicidios_08042023_v2.pdf"
"../pdf/homicidios_08042024_v2.pdf"
"../pdf/homicidios_08052019_v2.pdf"



"../pdf/homicidios_08052023_v2.pdf"
"../pdf/homicidios_08052024_v2.pdf"
"../pdf/homicidios_08062019_v2.pdf"



"../pdf/homicidios_08062023_v2.pdf"
"../pdf/homicidios_08062024_v2.pdf"
"../pdf/homicidios_08072019_v2.pdf"



"../pdf/homicidios_08072023_v2.pdf"
"../pdf/homicidios_08072024_v2.pdf"
"../pdf/homicidios_08082019_v2.pdf"



"../pdf/homicidios_08082023_v2.pdf"
"../pdf/homicidios_08082024_v2.pdf"
"../pdf/homicidios_08092019_v2.pdf"



"../pdf/homicidios_08092023_v2.pdf"
"../pdf/homicidios_08092024_v2.pdf"
"../pdf/homicidios_08102019_v2.pdf"



"../pdf/homicidios_08102023_v2.pdf"
"../pdf/homicidios_08102024_v2.pdf"
"../pdf/homicidios_08112019_v2.pdf"



"../pdf/homicidios_08112023_v2.pdf"
"../pdf/homicidios_08122019_v2.pdf"



"../pdf/homicidios_08122023_v2.pdf"



"../pdf/homicidios_09012023_v2.pdf"
"../pdf/homicidios_09012024_v2.pdf"



"../pdf/homicidios_09022023_v2.pdf"
"../pdf/homicidios_09022024_v2.pdf"



"../pdf/homicidios_09032023_v2.pdf"
"../pdf/homicidios_09032024_v2.pdf"
"../pdf/homicidios_09042019_v2.pdf"



"../pdf/homicidios_09042023_v2.pdf"
"../pdf/homicidios_09042024_v2.pdf"
"../pdf/homicidios_09052019_v2.pdf"



"../pdf/homicidios_09052023_v2.pdf"
"../pdf/homicidios_09052024_v2.pdf"
"../pdf/homicidios_09062019_v2.pdf"



"../pdf/homicidios_09062023_v2.pdf"
"../pdf/homicidios_09062024_v2.pdf"



"../pdf/homicidios_09072023_v2.pdf"
"../pdf/homicidios_09072024_v2.pdf"
"../pdf/homicidios_09082019_v2.pdf"



"../pdf/homicidios_09082023_v2.pdf"
"../pdf/homicidios_09082024_v2.pdf"
"../pdf/homicidios_09092019_v2.pdf"



"../pdf/homicidios_09092023_v2.pdf"
"../pdf/homicidios_09092024_v2.pdf"
"../pdf/homicidios_09102019_v2.pdf"



"../pdf/homicidios_09102023_v2.pdf"
"../pdf/homicidios_09102024_v2.pdf"
"../pdf/homicidios_09112019_v2.pdf"



"../pdf/homicidios_09112023_v2.pdf"
"../pdf/homicidios_09122019_v2.pdf"



"../pdf/homicidios_09122023_v2.pdf"



"../pdf/homicidios_10012023_v2.pdf"
"../pdf/homicidios_10012024_v2.pdf"



"../pdf/homicidios_10022023_v2.pdf"
"../pdf/homicidios_10022024_v2.pdf"



"../pdf/homicidios_10032023_v2.pdf"
"../pdf/homicidios_10032024_v2.pdf"
"../pdf/homicidios_10042019_v2.pdf"



"../pdf/homicidios_10042023_v2.pdf"
"../pdf/homicidios_10042024_v2.pdf"
"../pdf/homicidios_10052019_v2.pdf"



"../pdf/homicidios_10052023_v2.pdf"
"../pdf/homicidios_10052024_v2.pdf"
"../pdf/homicidios_10062019_v2.pdf"



"../pdf/homicidios_10062023_v2.pdf"
"../pdf/homicidios_10062024_v2.pdf"
"../pdf/homicidios_10072019_v2.pdf"



"../pdf/homicidios_10072023_v2.pdf"
"../pdf/homicidios_10072024_v2.pdf"
"../pdf/homicidios_10082019_v2.pdf"



"../pdf/homicidios_10082023_v2.pdf"
"../pdf/homicidios_10082024_v2.pdf"
"../pdf/homicidios_10092019_v2.pdf"



"../pdf/homicidios_10092023_v2.pdf"
"../pdf/homicidios_10092024_v2.pdf"
"../pdf/homicidios_10102019_v2.pdf"



"../pdf/homicidios_10102023_v2.pdf"
"../pdf/homicidios_10102024_v2.pdf"
"../pdf/homicidios_10112019_v2.pdf"



"../pdf/homicidios_10112023_v2.pdf"
"../pdf/homicidios_10122019_v2.pdf"



"../pdf/homicidios_10122023_v2.pdf"



"../pdf/homicidios_11012023_v2.pdf"
"../pdf/homicidios_11012024_v2.pdf"



"../pdf/homicidios_11022023_v2.pdf"
"../pdf/homicidios_11022024_v2.pdf"



"../pdf/homicidios_11032023_v2.pdf"
"../pdf/homicidios_11032024_v2.pdf"
"../pdf/homicidios_11042019_v2.pdf"



"../pdf/homicidios_11042023_v2.pdf"
"../pdf/homicidios_11042024_v2.pdf"
"../pdf/homicidios_11052019_v2.pdf"



"../pdf/homicidios_11052023_v2.pdf"
"../pdf/homicidios_11052024_v2.pdf"
"../pdf/homicidios_11062019_v2.pdf"



"../pdf/homicidios_11062023_v2.pdf"
"../pdf/homicidios_11062024_v2.pdf"
"../pdf/homicidios_11072019_v2.pdf"



"../pdf/homicidios_11072023_v2.pdf"
"../pdf/homicidios_11072024_v2.pdf"
"../pdf/homicidios_11082019_v2.pdf"



"../pdf/homicidios_11082023_v2.pdf"
"../pdf/homicidios_11082024_v2.pdf"
"../pdf/homicidios_11092019_v2.pdf"



"../pdf/homicidios_11092023_v2.pdf"
"../pdf/homicidios_11092024_v2.pdf"
"../pdf/homicidios_11102019_v2.pdf"



"../pdf/homicidios_11102023_v2.pdf"
"../pdf/homicidios_11102024_v2.pdf"
"../pdf/homicidios_11112019_v2.pdf"



"../pdf/homicidios_11112023_v2.pdf"
"../pdf/homicidios_11122019_v2.pdf"



"../pdf/homicidios_11122023_v2.pdf"



"../pdf/homicidios_12012023_v2.pdf"
"../pdf/homicidios_12012024_v2.pdf"








"../pdf/homicidios_12032023_v2.pdf"
"../pdf/homicidios_12032024_v2.pdf"
"../pdf/homicidios_12042019_v2.pdf"



"../pdf/homicidios_12042023_v2.pdf"
"../pdf/homicidios_12042024_v2.pdf"
"../pdf/homicidios_12052019_v2.pdf"



"../pdf/homicidios_12052023_v2.pdf"
"../pdf/homicidios_12052024_v2.pdf"
"../pdf/homicidios_12062019_v2.pdf"



"../pdf/homicidios_12062023_v2.pdf"
"../pdf/homicidios_12062024_v2.pdf"
"../pdf/homicidios_12072019_v2.pdf"



"../pdf/homicidios_12072023_v2.pdf"
"../pdf/homicidios_12072024_v2.pdf"
"../pdf/homicidios_12082019_v2.pdf"



"../pdf/homicidios_12082023_v2.pdf"
"../pdf/homicidios_12082024_v2.pdf"
"../pdf/homicidios_12092019_v2.pdf"



"../pdf/homicidios_12092023_v2.pdf"
"../pdf/homicidios_12092024_v2.pdf"
"../pdf/homicidios_12102019_v2.pdf"



"../pdf/homicidios_12102023_v2.pdf"
"../pdf/homicidios_12102024_v2.pdf"
"../pdf/homicidios_12112019_v2.pdf"



"../pdf/homicidios_12112023_v2.pdf"
"../pdf/homicidios_12122019_v2.pdf"



"../pdf/homicidios_12122023_v2.pdf"



"../pdf/homicidios_13012023_v2.pdf"
"../pdf/homicidios_13012024_v2.pdf"



"../pdf/homicidios_13022023_v2.pdf"
"../pdf/homicidios_13022024_v2.pdf"



"../pdf/homicidios_13032023_v2.pdf"
"../pdf/homicidios_13032024_v2.pdf"
"../pdf/homicidios_13042019_v2.pdf"



"../pdf/homicidios_13042023_v2.pdf"
"../pdf/homicidios_13042024_v2.pdf"
"../pdf/homicidios_13052019_v2.pdf"



"../pdf/homicidios_13052023_v2.pdf"
"../pdf/homicidios_13052024_v2.pdf"
"../pdf/homicidios_13062019_v2.pdf"



"../pdf/homicidios_13062023_v2.pdf"
"../pdf/homicidios_13062024_v2.pdf"
"../pdf/homicidios_13072019_v2.pdf"



"../pdf/homicidios_13072023_v2.pdf"
"../pdf/homicidios_13072024_v2.pdf"
"../pdf/homicidios_13082019_v2.pdf"



"../pdf/homicidios_13082023_v2.pdf"
"../pdf/homicidios_13082024_v2.pdf"
"../pdf/homicidios_13092019_v2.pdf"



"../pdf/homicidios_13092023_v2.pdf"
"../pdf/homicidios_13092024_v2.pdf"
"../pdf/homicidios_13102019_v2.pdf"



"../pdf/homicidios_13102023_v2.pdf"
"../pdf/homicidios_13102024_v2.pdf"
"../pdf/homicidios_13112019_v2.pdf"



"../pdf/homicidios_13112023_v2.pdf"
"../pdf/homicidios_13122019_v2.pdf"



"../pdf/homicidios_13122023_v2.pdf"



"../pdf/homicidios_14012023_v2.pdf"
"../pdf/homicidios_14012024_v2.pdf"



"../pdf/homicidios_14022023_v2.pdf"
"../pdf/homicidios_14022024_v2.pdf"



"../pdf/homicidios_14032023_v2.pdf"
"../pdf/homicidios_14032024_v2.pdf"
"../pdf/homicidios_14042019_v2.pdf"



"../pdf/homicidios_14042023_v2.pdf"
"../pdf/homicidios_14042024_v2.pdf"
"../pdf/homicidios_14052019_v2.pdf"



"../pdf/homicidios_14052023_v2.pdf"
"../pdf/homicidios_14052024_v2.pdf"
"../pdf/homicidios_14062019_v2.pdf"



"../pdf/homicidios_14062023_v2.pdf"
"../pdf/homicidios_14062024_v2.pdf"
"../pdf/homicidios_14072019_v2.pdf"



"../pdf/homicidios_14072023_v2.pdf"
"../pdf/homicidios_14072024_v2.pdf"
"../pdf/homicidios_14082019_v2.pdf"



"../pdf/homicidios_14082023_v2.pdf"
"../pdf/homicidios_14082024_v2.pdf"
"../pdf/homicidios_14092019_v2.pdf"



"../pdf/homicidios_14092023_v2.pdf"
"../pdf/homicidios_14092024_v2.pdf"
"../pdf/homicidios_14102019_v2.pdf"



"../pdf/homicidios_14102023_v2.pdf"
"../pdf/homicidios_14102024_v2.pdf"
"../pdf/homicidios_14112019_v2.pdf"



"../pdf/homicidios_14112023_v2.pdf"
"../pdf/homicidios_14122019_v2.pdf"



"../pdf/homicidios_14122023_v2.pdf"



"../pdf/homicidios_15012023_v2.pdf"
"../pdf/homicidios_15012024_v2.pdf"



"../pdf/homicidios_15022023_v2.pdf"
"../pdf/homicidios_15022024_v2.pdf"



"../pdf/homicidios_15032023_v2.pdf"
"../pdf/homicidios_15032024_v2.pdf"
"../pdf/homicidios_15042019_v2.pdf"



"../pdf/homicidios_15042023_v2.pdf"
"../pdf/homicidios_15042024_v2.pdf"
"../pdf/homicidios_15052019_v2.pdf"



"../pdf/homicidios_15052023_v2.pdf"
"../pdf/homicidios_15052024_v2.pdf"
"../pdf/homicidios_15062019_v2.pdf"



"../pdf/homicidios_15062023_v2.pdf"
"../pdf/homicidios_15062024_v2.pdf"
"../pdf/homicidios_15072019_v2.pdf"



"../pdf/homicidios_15072023_v2.pdf"
"../pdf/homicidios_15072024_v2.pdf"
"../pdf/homicidios_15082019_v2.pdf"



"../pdf/homicidios_15082023_v2.pdf"
"../pdf/homicidios_15082024_v2.pdf"
"../pdf/homicidios_15092019_v2.pdf"



"../pdf/homicidios_15092023_v2.pdf"
"../pdf/homicidios_15092024_v2.pdf"
"../pdf/homicidios_15102019_v2.pdf"



"../pdf/homicidios_15102023_v2.pdf"
"../pdf/homicidios_15102024_v2.pdf"
"../pdf/homicidios_15112019_v2.pdf"



"../pdf/homicidios_15112023_v2.pdf"
"../pdf/homicidios_15122019_v2.pdf"



"../pdf/homicidios_15122023_v2.pdf"



"../pdf/homicidios_16012023_v2.pdf"
"../pdf/homicidios_16012024_v2.pdf"



"../pdf/homicidios_16022023_v2.pdf"
"../pdf/homicidios_16022024_v2.pdf"



"../pdf/homicidios_16032023_v2.pdf"
"../pdf/homicidios_16032024_v2.pdf"
"../pdf/homicidios_16042019_v2.pdf"



"../pdf/homicidios_16042023_v2.pdf"
"../pdf/homicidios_16042024_v2.pdf"



"../pdf/homicidios_16052023_v2.pdf"
"../pdf/homicidios_16052024_v2.pdf"
"../pdf/homicidios_16062019_v2.pdf"



"../pdf/homicidios_16062023_v2.pdf"
"../pdf/homicidios_16062024_v2.pdf"
"../pdf/homicidios_16072019_v2.pdf"



"../pdf/homicidios_16072023_v2.pdf"
"../pdf/homicidios_16072024_v2.pdf"
"../pdf/homicidios_16082019_v2.pdf"



"../pdf/homicidios_16082023_v2.pdf"
"../pdf/homicidios_16082024_v2.pdf"
"../pdf/homicidios_16092019_v2.pdf"



"../pdf/homicidios_16092023_v2.pdf"
"../pdf/homicidios_16092024_v2.pdf"
"../pdf/homicidios_16102019_v2.pdf"



"../pdf/homicidios_16102023_v2.pdf"
"../pdf/homicidios_16102024_v2.pdf"
"../pdf/homicidios_16112019_v2.pdf"



"../pdf/homicidios_16112023_v2.pdf"
"../pdf/homicidios_16122019_v2.pdf"



"../pdf/homicidios_16122023_v2.pdf"



"../pdf/homicidios_17012023_v2.pdf"
"../pdf/homicidios_17012024_v2.pdf"



"../pdf/homicidios_17022023_v2.pdf"
"../pdf/homicidios_17022024_v2.pdf"



"../pdf/homicidios_17032023_v2.pdf"
"../pdf/homicidios_17032024_v2.pdf"



"../pdf/homicidios_17042023_v2.pdf"
"../pdf/homicidios_17042024_v2.pdf"
"../pdf/homicidios_17052019_v2.pdf"



"../pdf/homicidios_17052023_v2.pdf"
"../pdf/homicidios_17052024_v2.pdf"
"../pdf/homicidios_17062019_v2.pdf"



"../pdf/homicidios_17062023_v2.pdf"
"../pdf/homicidios_17062024_v2.pdf"
"../pdf/homicidios_17072019_v2.pdf"



"../pdf/homicidios_17072023_v2.pdf"
"../pdf/homicidios_17072024_v2.pdf"
"../pdf/homicidios_17082019_v2.pdf"



"../pdf/homicidios_17082023_v2.pdf"
"../pdf/homicidios_17082024_v2.pdf"
"../pdf/homicidios_17092019_v2.pdf"



"../pdf/homicidios_17092023_v2.pdf"
"../pdf/homicidios_17092024_v2.pdf"
"../pdf/homicidios_17102019_v2.pdf"



"../pdf/homicidios_17102023_v2.pdf"
"../pdf/homicidios_17102024_v2.pdf"
"../pdf/homicidios_17112019_v2.pdf"



"../pdf/homicidios_17112023_v2.pdf"
"../pdf/homicidios_17122019_v2.pdf"



"../pdf/homicidios_17122023_v2.pdf"



"../pdf/homicidios_18012023_v2.pdf"
"../pdf/homicidios_18012024_v2.pdf"



"../pdf/homicidios_18022023_v2.pdf"
"../pdf/homicidios_18022024_v2.pdf"



"../pdf/homicidios_18032023_v2.pdf"
"../pdf/homicidios_18032024_v2.pdf"



"../pdf/homicidios_18042023_v2.pdf"
"../pdf/homicidios_18042024_v2.pdf"
"../pdf/homicidios_18052019_v2.pdf"



"../pdf/homicidios_18052023_v2.pdf"
"../pdf/homicidios_18052024_v2.pdf"
"../pdf/homicidios_18062019_v2.pdf"



"../pdf/homicidios_18062023_v2.pdf"
"../pdf/homicidios_18062024_v2.pdf"
"../pdf/homicidios_18072019_v2.pdf"



"../pdf/homicidios_18072023_v2.pdf"
"../pdf/homicidios_18072024_v2.pdf"
"../pdf/homicidios_18082019_v2.pdf"



"../pdf/homicidios_18082023_v2.pdf"
"../pdf/homicidios_18082024_v2.pdf"
"../pdf/homicidios_18092019_v2.pdf"



"../pdf/homicidios_18092023_v2.pdf"
"../pdf/homicidios_18092024_v2.pdf"
"../pdf/homicidios_18102019_v2.pdf"



"../pdf/homicidios_18102023_v2.pdf"
"../pdf/homicidios_18102024_v2.pdf"
"../pdf/homicidios_18112019_v2.pdf"



"../pdf/homicidios_18112023_v2.pdf"
"../pdf/homicidios_18122019_v2.pdf"



"../pdf/homicidios_18122023_v2.pdf"



"../pdf/homicidios_19012023_v2.pdf"
"../pdf/homicidios_19012024_v2.pdf"



"../pdf/homicidios_19022023_v2.pdf"
"../pdf/homicidios_19022024_v2.pdf"



"../pdf/homicidios_19032023_v2.pdf"
"../pdf/homicidios_19032024_v2.pdf"
"../pdf/homicidios_19042019_v2.pdf"



"../pdf/homicidios_19042023_v2.pdf"
"../pdf/homicidios_19042024_v2.pdf"
"../pdf/homicidios_19052019_v2.pdf"



"../pdf/homicidios_19052023_v2.pdf"
"../pdf/homicidios_19052024_v2.pdf"
"../pdf/homicidios_19062019_v2.pdf"



"../pdf/homicidios_19062023_v2.pdf"
"../pdf/homicidios_19062024_v2.pdf"
"../pdf/homicidios_19072019_v2.pdf"



"../pdf/homicidios_19072023_v2.pdf"
"../pdf/homicidios_19072024_v2.pdf"
"../pdf/homicidios_19082019_v2.pdf"



"../pdf/homicidios_19082023_v2.pdf"
"../pdf/homicidios_19082024_v2.pdf"
"../pdf/homicidios_19092019_v2.pdf"



"../pdf/homicidios_19092023_v2.pdf"
"../pdf/homicidios_19092024_v2.pdf"
"../pdf/homicidios_19102019_v2.pdf"



"../pdf/homicidios_19102023_v2.pdf"
"../pdf/homicidios_19102024_v2.pdf"
"../pdf/homicidios_19112019_v2.pdf"



"../pdf/homicidios_19112023_v2.pdf"
"../pdf/homicidios_19122019_v2.pdf"



"../pdf/homicidios_19122023_v2.pdf"



"../pdf/homicidios_20012023_v2.pdf"
"../pdf/homicidios_20012024_v2.pdf"



"../pdf/homicidios_20022023_v2.pdf"
"../pdf/homicidios_20022024_v2.pdf"



"../pdf/homicidios_20032023_v2.pdf"
"../pdf/homicidios_20032024_v2.pdf"
"../pdf/homicidios_20042019_v2.pdf"



"../pdf/homicidios_20042023_v2.pdf"
"../pdf/homicidios_20042024_v2.pdf"
"../pdf/homicidios_20052019_v2.pdf"



"../pdf/homicidios_20052023_v2.pdf"
"../pdf/homicidios_20052024_v2.pdf"
"../pdf/homicidios_20062019_v2.pdf"



"../pdf/homicidios_20062023_v2.pdf"
"../pdf/homicidios_20062024_v2.pdf"
"../pdf/homicidios_20072019_v2.pdf"



"../pdf/homicidios_20072023_v2.pdf"
"../pdf/homicidios_20072024_v2.pdf"
"../pdf/homicidios_20082019_v2.pdf"



"../pdf/homicidios_20082023_v2.pdf"
"../pdf/homicidios_20082024_v2.pdf"
"../pdf/homicidios_20092019_v2.pdf"



"../pdf/homicidios_20092023_v2.pdf"
"../pdf/homicidios_20092024_v2.pdf"
"../pdf/homicidios_20102019_v2.pdf"



"../pdf/homicidios_20102023_v2.pdf"
"../pdf/homicidios_20102024_v2.pdf"
"../pdf/homicidios_20112019_v2.pdf"



"../pdf/homicidios_20112023_v2.pdf"
"../pdf/homicidios_20122019_v2.pdf"



"../pdf/homicidios_20122023_v2.pdf"



"../pdf/homicidios_21012023_v2.pdf"
"../pdf/homicidios_21012024_v2.pdf"



"../pdf/homicidios_21022023_v2.pdf"
"../pdf/homicidios_21022024_v2.pdf"



"../pdf/homicidios_21032023_v2.pdf"
"../pdf/homicidios_21032024_v2.pdf"



"../pdf/homicidios_21042023_v2.pdf"
"../pdf/homicidios_21042024_v2.pdf"
"../pdf/homicidios_21052019_v2.pdf"



"../pdf/homicidios_21052023_v2.pdf"
"../pdf/homicidios_21052024_v2.pdf"
"../pdf/homicidios_21062019_v2.pdf"



"../pdf/homicidios_21062023_v2.pdf"
"../pdf/homicidios_21062024_v2.pdf"
"../pdf/homicidios_21072019_v2.pdf"



"../pdf/homicidios_21072023_v2.pdf"
"../pdf/homicidios_21072024_v2.pdf"
"../pdf/homicidios_21082019_v2.pdf"



"../pdf/homicidios_21082023_v2.pdf"
"../pdf/homicidios_21082024_v2.pdf"
"../pdf/homicidios_21092019_v2.pdf"



"../pdf/homicidios_21092023_v2.pdf"
"../pdf/homicidios_21092024_v2.pdf"
"../pdf/homicidios_21102019_v2.pdf"



"../pdf/homicidios_21102023_v2.pdf"
"../pdf/homicidios_21102024_v2.pdf"
"../pdf/homicidios_21112019_v2.pdf"



"../pdf/homicidios_21112023_v2.pdf"
"../pdf/homicidios_21122019_v2.pdf"



"../pdf/homicidios_21122023_v2.pdf"



"../pdf/homicidios_22012023_v2.pdf"
"../pdf/homicidios_22012024_v2.pdf"








"../pdf/homicidios_22032023_v2.pdf"
"../pdf/homicidios_22032024_v2.pdf"
"../pdf/homicidios_22042019_v2.pdf"



"../pdf/homicidios_22042023_v2.pdf"
"../pdf/homicidios_22042024_v2.pdf"
"../pdf/homicidios_22052019_v2.pdf"



"../pdf/homicidios_22052023_v2.pdf"
"../pdf/homicidios_22052024_v2.pdf"
"../pdf/homicidios_22062019_v2.pdf"



"../pdf/homicidios_22062023_v2.pdf"
"../pdf/homicidios_22062024_v2.pdf"
"../pdf/homicidios_22072019_v2.pdf"



"../pdf/homicidios_22072023_v2.pdf"
"../pdf/homicidios_22072024_v2.pdf"
"../pdf/homicidios_22082019_v2.pdf"



"../pdf/homicidios_22082023_v2.pdf"
"../pdf/homicidios_22082024_v2.pdf"
"../pdf/homicidios_22092019_v2.pdf"



"../pdf/homicidios_22092023_v2.pdf"
"../pdf/homicidios_22092024_v2.pdf"
"../pdf/homicidios_22102019_v2.pdf"



"../pdf/homicidios_22102023_v2.pdf"
"../pdf/homicidios_22102024_v2.pdf"
"../pdf/homicidios_22112019_v2.pdf"



"../pdf/homicidios_22112023_v2.pdf"
"../pdf/homicidios_22122019_v2.pdf"



"../pdf/homicidios_22122023_v2.pdf"



"../pdf/homicidios_23012023_v2.pdf"
"../pdf/homicidios_23012024_v2.pdf"



"../pdf/homicidios_23022023_v2.pdf"
"../pdf/homicidios_23022024_v2.pdf"



"../pdf/homicidios_23032023_v2.pdf"
"../pdf/homicidios_23032024_v2.pdf"
"../pdf/homicidios_23042019_v2.pdf"



"../pdf/homicidios_23042023_v2.pdf"
"../pdf/homicidios_23042024_v2.pdf"
"../pdf/homicidios_23052019_v2.pdf"



"../pdf/homicidios_23052023_v2.pdf"
"../pdf/homicidios_23052024_v2.pdf"
"../pdf/homicidios_23062019_v2.pdf"



"../pdf/homicidios_23062023_v2.pdf"
"../pdf/homicidios_23062024_v2.pdf"
"../pdf/homicidios_23072019_v2.pdf"



"../pdf/homicidios_23072023_v2.pdf"
"../pdf/homicidios_23072024_v2.pdf"
"../pdf/homicidios_23082019_v2.pdf"



"../pdf/homicidios_23082023_v2.pdf"
"../pdf/homicidios_23082024_v2.pdf"
"../pdf/homicidios_23092019_v2.pdf"



"../pdf/homicidios_23092023_v2.pdf"
"../pdf/homicidios_23092024_v2.pdf"
"../pdf/homicidios_23102019_v2.pdf"



"../pdf/homicidios_23102023_v2.pdf"
"../pdf/homicidios_23102024_v2.pdf"
"../pdf/homicidios_23112019_v2.pdf"



"../pdf/homicidios_23112023_v2.pdf"
"../pdf/homicidios_23122019_v2.pdf"



"../pdf/homicidios_23122023_v2.pdf"



"../pdf/homicidios_24012023_v2.pdf"
"../pdf/homicidios_24012024_v2.pdf"



"../pdf/homicidios_24022023_v2.pdf"
"../pdf/homicidios_24022024_v2.pdf"



"../pdf/homicidios_24032023_v2.pdf"
"../pdf/homicidios_24032024_v2.pdf"
"../pdf/homicidios_24042019_v2.pdf"



"../pdf/homicidios_24042023_v2.pdf"
"../pdf/homicidios_24042024_v2.pdf"
"../pdf/homicidios_24052019_v2.pdf"



"../pdf/homicidios_24052023_v2.pdf"
"../pdf/homicidios_24052024_v2.pdf"
"../pdf/homicidios_24062019_v2.pdf"



"../pdf/homicidios_24062023_v2.pdf"
"../pdf/homicidios_24062024_v2.pdf"
"../pdf/homicidios_24072019_v2.pdf"



"../pdf/homicidios_24072023_v2.pdf"
"../pdf/homicidios_24072024_v2.pdf"
"../pdf/homicidios_24082019_v2.pdf"



"../pdf/homicidios_24082023_v2.pdf"
"../pdf/homicidios_24082024_v2.pdf"
"../pdf/homicidios_24092019_v2.pdf"



"../pdf/homicidios_24092023_v2.pdf"
"../pdf/homicidios_24092024_v2.pdf"
"../pdf/homicidios_24102019_v2.pdf"



"../pdf/homicidios_24102023_v2.pdf"
"../pdf/homicidios_24102024_v2.pdf"
"../pdf/homicidios_24112019_v2.pdf"



"../pdf/homicidios_24112023_v2.pdf"
"../pdf/homicidios_24122019_v2.pdf"



"../pdf/homicidios_24122023_v2.pdf"



"../pdf/homicidios_25012023_v2.pdf"
"../pdf/homicidios_25012024_v2.pdf"
"../pdf/homicidios_25012024_v2.txt"



"../pdf/homicidios_25022023_v2.pdf"
"../pdf/homicidios_25022024_v2.pdf"



"../pdf/homicidios_25032023_v2.pdf"
"../pdf/homicidios_25032024_v2.pdf"
"../pdf/homicidios_25042019_v2.pdf"



"../pdf/homicidios_25042023_v2.pdf"
"../pdf/homicidios_25042024_v2.pdf"
"../pdf/homicidios_25052019_v2.pdf"



"../pdf/homicidios_25052023_v2.pdf"
"../pdf/homicidios_25052024_v2.pdf"
"../pdf/homicidios_25062019_v2.pdf"



"../pdf/homicidios_25062023_v2.pdf"
"../pdf/homicidios_25062024_v2.pdf"
"../pdf/homicidios_25072019_v2.pdf"



"../pdf/homicidios_25072023_v2.pdf"
"../pdf/homicidios_25072024_v2.pdf"
"../pdf/homicidios_25082019_v2.pdf"



"../pdf/homicidios_25082023_v2.pdf"
"../pdf/homicidios_25082024_v2.pdf"
"../pdf/homicidios_25092019_v2.pdf"



"../pdf/homicidios_25092023_v2.pdf"
"../pdf/homicidios_25092024_v2.pdf"
"../pdf/homicidios_25102019_v2.pdf"



"../pdf/homicidios_25102023_v2.pdf"
"../pdf/homicidios_25112019_v2.pdf"



"../pdf/homicidios_25112023_v2.pdf"
"../pdf/homicidios_25122019_v2.pdf"



"../pdf/homicidios_25122023_v2.pdf"



"../pdf/homicidios_26012023_v2.pdf"
"../pdf/homicidios_26012024_v2.pdf"



"../pdf/homicidios_26022023_v2.pdf"
"../pdf/homicidios_26022024_v2.pdf"



"../pdf/homicidios_26032023_v2.pdf"
"../pdf/homicidios_26032024_v2.pdf"
"../pdf/homicidios_26042019_v2.pdf"



"../pdf/homicidios_26042023_v2.pdf"
"../pdf/homicidios_26042024_v2.pdf"
"../pdf/homicidios_26052019_v2.pdf"



"../pdf/homicidios_26052023_v2.pdf"
"../pdf/homicidios_26052024_v2.pdf"
"../pdf/homicidios_26062019_v2.pdf"



"../pdf/homicidios_26062023_v2.pdf"
"../pdf/homicidios_26062024_v2.pdf"
"../pdf/homicidios_26072019_v2.pdf"



"../pdf/homicidios_26072023_v2.pdf"
"../pdf/homicidios_26072024_v2.pdf"
"../pdf/homicidios_26082019_v2.pdf"



"../pdf/homicidios_26082023_v2.pdf"
"../pdf/homicidios_26082024_v2.pdf"
"../pdf/homicidios_26092019_v2.pdf"



"../pdf/homicidios_26092023_v2.pdf"
"../pdf/homicidios_26092024_v2.pdf"
"../pdf/homicidios_26102019_v2.pdf"



"../pdf/homicidios_26102023_v2.pdf"
"../pdf/homicidios_26112019_v2.pdf"



"../pdf/homicidios_26112023_v2.pdf"
"../pdf/homicidios_26122019_v2.pdf"



"../pdf/homicidios_26122023_v2.pdf"



"../pdf/homicidios_27012023_v2.pdf"
"../pdf/homicidios_27012024_v2.pdf"



"../pdf/homicidios_27022023_v2.pdf"
"../pdf/homicidios_27022024_v2.pdf"



"../pdf/homicidios_27032023_v2.pdf"
"../pdf/homicidios_27032024_v2.pdf"
"../pdf/homicidios_27042019_v2.pdf"



"../pdf/homicidios_27042023_v2.pdf"
"../pdf/homicidios_27042024_v2.pdf"



"../pdf/homicidios_27052023_v2.pdf"
"../pdf/homicidios_27052024_v2.pdf"
"../pdf/homicidios_27062019_v2.pdf"



"../pdf/homicidios_27062023_v2.pdf"
"../pdf/homicidios_27062024_v2.pdf"
"../pdf/homicidios_27072019_v2.pdf"



"../pdf/homicidios_27072023_v2.pdf"
"../pdf/homicidios_27072024_v2.pdf"
"../pdf/homicidios_27082019_v2.pdf"



"../pdf/homicidios_27082023_v2.pdf"
"../pdf/homicidios_27082024_v2.pdf"
"../pdf/homicidios_27092019_v2.pdf"



"../pdf/homicidios_27092023_v2.pdf"
"../pdf/homicidios_27092024_v2.pdf"
"../pdf/homicidios_27102019_v2.pdf"



"../pdf/homicidios_27102023_v2.pdf"
"../pdf/homicidios_27112019_v2.pdf"



"../pdf/homicidios_27112023_v2.pdf"
"../pdf/homicidios_27122019_v2.pdf"



"../pdf/homicidios_27122023_v2.pdf"



"../pdf/homicidios_28012023_v2.pdf"
"../pdf/homicidios_28012024_v2.pdf"



"../pdf/homicidios_28022023_v2.pdf"
"../pdf/homicidios_28022024_v2.pdf"



"../pdf/homicidios_28032023_v2.pdf"
"../pdf/homicidios_28032024_v2.pdf"
"../pdf/homicidios_28042019_v2.pdf"



"../pdf/homicidios_28042023_v2.pdf"
"../pdf/homicidios_28042024_v2.pdf"
"../pdf/homicidios_28052019_v2.pdf"



"../pdf/homicidios_28052023_v2.pdf"
"../pdf/homicidios_28052024_v2.pdf"
"../pdf/homicidios_28062019_v2.pdf"



"../pdf/homicidios_28062023_v2.pdf"
"../pdf/homicidios_28062024_v2.pdf"
"../pdf/homicidios_28072019_v2.pdf"



"../pdf/homicidios_28072023_v2.pdf"
"../pdf/homicidios_28072024_v2.pdf"



"../pdf/homicidios_28082023_v2.pdf"
"../pdf/homicidios_28082024_v2.pdf"
"../pdf/homicidios_28092019_v2.pdf"



"../pdf/homicidios_28092023_v2.pdf"
"../pdf/homicidios_28092024_v2.pdf"
"../pdf/homicidios_28102019_v2.pdf"



"../pdf/homicidios_28102023_v2.pdf"
"../pdf/homicidios_28112019_v2.pdf"



"../pdf/homicidios_28112023_v2.pdf"
"../pdf/homicidios_28122019_v2.pdf"



"../pdf/homicidios_28122023_v2.pdf"



"../pdf/homicidios_29012023_v2.pdf"
"../pdf/homicidios_29012024_v2.pdf"

"../pdf/homicidios_29022024_v2.pdf"



"../pdf/homicidios_29032023_v2.pdf"
"../pdf/homicidios_29032024_v2.pdf"
"../pdf/homicidios_29042019_v2.pdf"



"../pdf/homicidios_29042023_v2.pdf"
"../pdf/homicidios_29042024_v2.pdf"
"../pdf/homicidios_29052019_v2.pdf"



"../pdf/homicidios_29052023_v2.pdf"
"../pdf/homicidios_29052024_v2.pdf"
"../pdf/homicidios_29062019_v2.pdf"



"../pdf/homicidios_29062023_v2.pdf"
"../pdf/homicidios_29062024_v2.pdf"
"../pdf/homicidios_29072019_v2.pdf"



"../pdf/homicidios_29072023_v2.pdf"
"../pdf/homicidios_29072024_v2.pdf"
"../pdf/homicidios_29082019_v2.pdf"



"../pdf/homicidios_29082023_v2.pdf"
"../pdf/homicidios_29082024_v2.pdf"
"../pdf/homicidios_29092019_v2.pdf"



"../pdf/homicidios_29092023_v2.pdf"
"../pdf/homicidios_29092024_v2.pdf"
"../pdf/homicidios_29102019_v2.pdf"



"../pdf/homicidios_29102023_v2.pdf"
"../pdf/homicidios_29112019_v2.pdf"



"../pdf/homicidios_29112023_v2.pdf"
"../pdf/homicidios_29122019_v2.pdf"



"../pdf/homicidios_29122023_v2.pdf"



"../pdf/homicidios_30012023_v2.pdf"
"../pdf/homicidios_30012024_v2.pdf"



"../pdf/homicidios_30032023_v2.pdf"
"../pdf/homicidios_30032024_v2.pdf"
"../pdf/homicidios_30042019_v2.pdf"



"../pdf/homicidios_30042023_v2.pdf"
"../pdf/homicidios_30042024_v2.pdf"
"../pdf/homicidios_30052019_v2.pdf"



"../pdf/homicidios_30052023_v2.pdf"
"../pdf/homicidios_30052024_v2.pdf"
"../pdf/homicidios_30062019_v2.pdf"



"../pdf/homicidios_30062023_v2.pdf"
"../pdf/homicidios_30062024_v2.pdf"
"../pdf/homicidios_30072019_v2.pdf")

LANG_CODE="own"
FONT1="montserrat_medium"
FONT2="montserrat_bold"

#for i in "${arr[@]}"
#do
#   echo $(basename "$i")
#   pdftotext -l 1 -nopgbrk -layout  "$i" - | tr -d '\n' | tr -s ' ' >> train_text.txt
#done

text2image --text train_text.txt --outputbase "$LANG_CODE"."$FONT1".exp0 --fonts_dir fonts --font "Montserrat Medium"  --degrade_image false --smooth_noise true --underline_start_prob .6 --exposure -2
text2image --text train_text.txt --outputbase "$LANG_CODE"."$FONT2".exp0 --fonts_dir fonts --font "Montserrat Bold"  --degrade_image false --smooth_noise true --underline_start_prob .6 --exposure -2

tesseract "$LANG_CODE"."$FONT1".exp0.tif "$LANG_CODE"."$FONT1".exp0 box.train
tesseract "$LANG_CODE"."$FONT2".exp0.tif "$LANG_CODE"."$FONT2".exp0 box.train
#awk 'NR==FNR { f[FNR] = $1; next } {print f[FNR], $2, $3, $4, $5, $6}'  montserrat_text.txt train.exp0.box > train.exp0.box2
tesseract own.train.exp0.tif own.train.exp0 box.train
#find . -name "hom*.png" -exec tesseract {} $(basename {} .png).exp0 box.train \;

unicharset_extractor "$LANG_CODE".*.exp0.box

# <fontname> <italic> <bold> <fixed> <serif> <fraktur> 
echo "Montserrat Medium 0 1 0 1 0" > font_properties
#shapeclustering -F font_properties -U unicharset "$LANG_CODE".*.exp0.tr  # only for indic languages
mftraining -F  font_properties -U unicharset -O "$LANG_CODE".unicharset "$LANG_CODE".*.exp0.tr
cntraining "$LANG_CODE".*.exp0.tr

mv shapetable "$LANG_CODE".shapetable
mv normproto "$LANG_CODE".normproto
mv pffmtable "$LANG_CODE".pffmtable
mv inttemp "$LANG_CODE".inttemp


cat <<EOF > wordlist
Aguascalientes
Baja
California
Su
Campeche
Chiapas
Chihuahua
Ciudad 
de 
México
Coahuila
Colima
Durango
Estado 
de 
México
Guanajuato
Guerrero
Hidalgo
Jalisco
Michoacán
Morelos
Nayarit
Nuevo 
León
Oaxaca
Puebla
Queretaro
Quintana 
Roo
San 
Luis 
Potosí
Sinaloa
Sonora
Tabasco
Tamaulipas
Tlaxcala
Veracruz
Yucatán
Zacatecas
Fuente
Fiscalías
de
Entidades
enero
febrero
marzo
abril
mayo
junio
julio
agosto
septiembre
octubre
noviembre
diciembre
Enero
Febrero
Marzo
Abril
Mayo
Junio
Julio
Agosto
Septiembre
Octubre
Noviembre
Diciembre
Victimas
Reportadas
por
Delito
de
Homicidio
Fiscalías
Estatales
y
Dependencias
Federales
EOF

cat <<EOF > bigram_list
Baja California
Baja California Sur
Ciudad de México
Estado de México
Nuevo León
Quintana Roo
San Luis Potosí
Víctimas reportadas por el delito de homciidio
(Fiscalías Estatales y Dependencias Federales)
Fuente: Fiscalías, del
EOF

wordlist2dawg wordlist "$LANG_CODE".freq-dawg "$LANG_CODE".unicharset
wordlist2dawg wordlist "$LANG_CODE".word-dawg "$LANG_CODE".unicharset
wordlist2dawg bigram_list  "$LANG_CODE".bigram-dawg  "$LANG_CODE".unicharset
combine_tessdata "$LANG_CODE".
