USERNAME='UUUU'
PASSWORD='PPPP'
###############################################################
# Standard Config
# If you change anything below this line, it probably wont 
# be able to connect to your VPN.
################################################################
#!/bin/bash
# Bash Menu Script Test
PS3='Please enter your choice: '
options=("Nord VPN" "IP Vanish" "Digibit" "PureVPN" "PIA" "ExpressVPN" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Nord VPN")
            echo "Running Nord"
				wget -O Nord.sh https://raw.githubusercontent.com/liamkenyon/OpenVPN/master/NordVPN/Nord.sh && sed -i "s/uuuu/$USERNAME/g" Nord.sh && sed -i "s/pppp/$PASSWORD/g" Nord.sh && chmod +x Nord.sh && ./Nord.sh
            ;;
        "IP Vanish")
            echo "Running IP Vanish"
				wget -O IP_Vanish.sh https://raw.githubusercontent.com/liamkenyon/OpenVPN/master/IP_Vanish/IP_Vanish.sh && sed -i "s/uuuu/$USERNAME/g" IP_Vanish.sh && sed -i "s/pppp/$PASSWORD/g" IP_Vanish.sh && chmod +x IP_Vanish.sh && ./IP_Vanish.sh				
            ;;
        "Digibit")
            echo "Running Digibit"
				wget -O Digibit.sh https://raw.githubusercontent.com/liamkenyon/OpenVPN/master/DigiBit/Digibit.sh && sed -i "s/uuuu/$USERNAME/g" Digibit.sh && sed -i "s/pppp/$PASSWORD/g" Digibit.sh && chmod +x Digibit.sh && ./Digibit.sh				
            ;;
        "PureVPN")
            echo "Running PureVPN"
				wget -O Pure.sh https://raw.githubusercontent.com/liamkenyon/OpenVPN/master/PureVPN/Pure.sh && sed -i "s/uuuu/$USERNAME/g" Pure.sh && sed -i "s/pppp/$PASSWORD/g" Pure.sh && chmod +x Pure.sh && ./Pure.sh				
            ;;
	    "PIA")
            echo "Running PIA"
				wget -O PIA.sh https://raw.githubusercontent.com/liamkenyon/OpenVPN/master/PIA_VPN/PIA.sh && sed -i "s/uuuu/$USERNAME/g" PIA.sh && sed -i "s/pppp/$PASSWORD/g" PIA.sh && chmod +x PIA.sh && ./PIA.sh				
            ;;
	    "ExpressVPN")
            echo "Running ExpressVPN"
				wget -O ExpressVPN.sh https://raw.githubusercontent.com/liamkenyon/OpenVPN/master/ExpressVPN/ExpressVPN.sh && sed -i "s/uuuu/$USERNAME/g" ExpressVPN.sh && sed -i "s/pppp/$PASSWORD/g" ExpressVPN.sh && chmod +x ExpressVPN.sh && ./ExpressVPN.sh				
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
