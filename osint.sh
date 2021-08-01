#!/bin/bash
NC='\033[0m'
RED='\033[1;38;5;196m'
GREEN='\033[1;38;5;040m'
ORANGE='\033[1;38;5;202m'
BLUE='\033[1;38;5;012m'
BLUE2='\033[1;38;5;032m'
PINK='\033[1;38;5;013m'
GRAY='\033[1;38;5;004m'
NEW='\033[1;38;5;154m'
YELLOW='\033[1;38;5;214m'
CG='\033[1;38;5;087m'
CP='\033[1;38;5;221m'
CPO='\033[1;38;5;205m'
CN='\033[1;38;5;247m'
CNC='\033[1;38;5;051m'

function banner(){
echo -e ${RED}"#############################################################################"
echo -e ${CP}"    ___   _     _____ ____       _____ _       ____ _____ ______             #"
echo -e ${CP}"   / / | | |___|___ /|  _ \     |  ___/ |_ __ |  _ \___ /|  _ \ \            #"
echo -e ${CP}"  | || | | / __| |_ \| |_) |____| |_  | | '_ \| | | ||_ \| |_) | |           #"
echo -e ${CP}" < < | |_| \__ \___) |  _ <_____|  _| | | | | | |_| |__) |  _ < > >          #"
echo -e ${CP}"  | | \___/|___/____/|_| \_\    |_|   |_|_| |_|____/____/|_| \_\ |           #"
echo -e ${CP}"   \_\                                                        /_/            #"
echo -e ${CNC}"           An OSINT Tool To Find User's All Over The InterNet                #"
echo -e ${RED}"                 https://instagram.com/invisibleclay100                      #"
echo -e ${BLUE}"                 https://facebook.com/unknownclay                            #"
echo -e ${PINK}"                    Coded By: Machine404                                     #"
echo -e ${CNC}"                  https://github.com/machine1337                             #"
echo -e ${RED}"#############################################################################"

}



function all(){

echo -e -n ${BLUE}"\n[+] Enter Username: "
read user


echo -e -n  ${CN}"\n[*] Searching username  on: $user \n" 



#Facebook
face=$(curl -s "https://www.facebook.com/$user" -L -H "Accept-Language: en" | grep -o 'This content'; echo $?)


if [[ $face == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Facebook]:  Found! ${RED}https://www.facebook.com/$user\n" 

elif [[ $face == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Facebook]: Not Found \n"
fi
#instagram
inst=$(curl -s -H "Accept-Language: en" "https://www.instagram.com/$user" -L | grep -o 'The link you followed may be broken'; echo $?)


if [[ $inst == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Instagram]:  Found! ${RED}https://www.instagram.com/$user\n" 

elif [[ $inst == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [instagram]: Not Found \n"
fi

#Twitter
tweet=$(curl -s "https://www.twitter.com/$user" -L -H "Accept-Language: en" | grep -o 'page doesn’t exist'; echo $?)


if [[ $tweet == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Twitter]:  Found! ${RED}https://www.twitter.com/$user\n" 

elif [[ $tweet == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Twitter]: Not Found \n"
fi

#YouTube
tube=$(curl -s "https://www.youtube.com/$user" -L -H "Accept-Language: en" | grep -o 'Not Found'; echo $?)


if [[ $tube == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Youtube]:  Found! ${RED}https://www.youtube.com/$user\n" 

elif [[ $tube == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Youtube]: Not Found \n"
fi

#Blogger
blog=$(curl -s "https://$user.blogspot.com" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404'; echo $?)


if [[ $blog == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Blogger]:  Found! ${RED}https://$user.blogspot.com/\n" 

elif [[ $blog == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Blogger]: Not Found \n"
fi

#REDDIT
red=$(curl -s -i "https://www.reddit.com/user/$user" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | head -n1 | grep -o 'HTTP/2 404' ; echo $?)


if [[ $red == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Reddit]:  Found! ${RED}https://www.reddit.com/user/$user\n" 

elif [[ $red == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Reddit]: Not Found \n"
fi
#GitHub
git=$(curl -s -i "https://www.github.com/$user" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?)


if [[ $git == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Github]:  Found! ${RED}https://www.github.com/$user\n" 

elif [[ $git == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Github]: Not Found \n"
fi
#VIMEO
vim=$(curl -s -i "https://vimeo.com/$user" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?)


if [[ $vim == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [VIMEO]:  Found! ${RED}https://vimeo.com/$user\n" 

elif [[ $vim == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [VIMEO]: Not Found \n"
fi
#DailyMotion
dai=$(curl -s -i "https://www.dailymotion.com/$user" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)


if [[ $dai == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [DAILYMOTION]:  Found! ${RED}https://www.dailymotion.com/$user\n" 

elif [[ $dai == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [DAILYMOTION]: Not Found \n"
fi
#lIVEjOURNAL
jou=$(curl -s -i "https://$user.livejournal.com" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)


if [[ $jou == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [livejournal]:  Found! ${RED}https://$user.livejournal.com/\n" 

elif [[ $jou == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [livejournal]: Not Found \n"
fi
#BaseCamp
base=$(curl -s -i "https://$user.basecamphq.com/login" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)


if [[ $base == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [BaseCamp]:  Found! ${RED}https://$user.basecamphq.com/login\n" 

elif [[ $base == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [BaseCamp]: Not Found \n"
fi

#Tripit
trip=$(curl -s -i "https://www.tripit.com/people/$user#/profile/basic-info" -H "Accept-Language: en" -L | grep -o 'location: https://www.tripit.com/home' ; echo $?)


if [[ $trip == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Tripit]:  Found! ${RED}https://www.tripit.com/people/$user#/profile/basic-info\n" 

elif [[ $trip == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Tripit]: Not Found \n"
fi

#Tracky
track=$(curl -s -i "https://tracky.com/user/$user" -H "Accept-Language: en" -L | grep -o 'profile:username' ; echo $?)


if [[ $track == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Tracky]:  Found! ${RED}https://tracky.com/user/$user\n" 

elif [[ $track == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Tracky]: Not Found \n"
fi
#Ello
ell=$(curl -s -i "https://ello.co/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)


if [[ $ell == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Ello]:  Found! ${RED}https://ello.co/$user\n" 

elif [[ $ell == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Ello]: Not Found \n"
fi
#OkCupid
cup=$(curl -s -i "https://www.okcupid.com/profile/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)


if [[ $cup == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [OkCupid]:  Found! ${RED}https://www.okcupid.com/profile/$user\n" 

elif [[ $cup == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [OkCupid]: Not Found \n"
fi
#slack
sla=$(curl -s -i "https://$user.slack.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)


if [[ $sla == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [slack]:  Found! ${RED}https://$user.slack.com\n" 

elif [[ $sla == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [slack]: Not Found \n"
fi
#Ebay
eba=$(curl -s -i "https://www.ebay.com/usr/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found\|eBay Profile - error' ; echo $?)


if [[ $eba == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Ebay]:  Found! ${RED}https://www.ebay.com/usr/$user\n" 

elif [[ $eba == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Ebay]: Not Found \n"
fi
#IFTTT
ift=$(curl -s -i "https://www.ifttt.com/p/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)


if [[ $ift == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [IFTTT]:  Found! ${RED}https://www.ifttt.com/p/$user\n" 

elif [[ $ift == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [IFTTT]: Not Found \n"
fi
#ColourLovers
love=$(curl -s -i "https://www.colourlovers.com/love/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)


if [[ $love == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [ColourLovers]:  Found! ${RED}https://www.colourlovers.com/love/$user\n" 

elif [[ $love == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [ColourLovers]: Not Found \n"
fi
#BandCamp
band=$(curl -s -i "https://www.bandcamp.com/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)


if [[ $band == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [BandCamp]:  Found! ${RED}https://www.bandcamp.com/$user\n" 

elif [[ $band == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [BandCamp]: Not Found \n"
fi
#CodeMentor
code=$(curl -s -i "https://www.codementor.io/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)


if [[ $code == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [CodeMentor]:  Found! ${RED}https://www.codementor.io/$user\n" 

elif [[ $code == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [CodeMentor]: Not Found \n"
fi
#WikiPedia
wiki=$(curl -s -i "https://www.wikipedia.org/wiki/User:$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)


if [[ $wiki == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [WikiPedia]:  Found! ${RED}https://www.wikipedia.org/wiki/User:$user\n" 

elif [[ $wiki == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [WikiPedia]: Not Found \n"
fi
#HackerNews
hack=$(curl -s -i "https://news.ycombinator.com/user?id=$user" -H "Accept-Language: en" -L | grep -o 'No such user' ; echo $?)


if [[ $hack == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [HackerNews]:  Found! ${RED}https://news.ycombinator.com/user?id=$user\n" 

elif [[ $hack == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [HackerNews]: Not Found \n"
fi
#HubPages
hub=$(curl -s -i "https://$user.hubpages.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)


if [[ $hub == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Hubpages]:  Found! ${RED}https://$user.hubpages.com\n" 

elif [[ $hub == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [HubPages]: Not Found \n"
fi
#Pastebin
paste=$(curl -s -i "https://pastebin.com/u/$user" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'location: /index' ; echo $?)


if [[ $paste == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Pastebin]:  Found! ${RED}https://pastebin.com/u/$user\n" 

elif [[ $paste == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Pastebin]: Not Found \n"
fi
#KeyBase
key=$(curl -s -i "https://keybase.io/$user" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)


if [[ $key == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [KeyBase]:  Found! ${RED}https://keybase.io/$user\n" 

elif [[ $key == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [KeyBase]: Not Found \n"
fi
#Scribd
scr=$(curl -s -i "https://www.scribd.com/$user" -H "Accept-Language: en" -L | grep -o 'show_404' ; echo $?)


if [[ $scr == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Scribd]:  Found! ${RED}https://www.scribd.com/$user\n" 

elif [[ $scr == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Scribd]: Not Found \n"
fi
#Medium
med=$(curl -s -i "https://medium.com/@$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)


if [[ $med == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Medium]:  Found! ${RED}https://medium.com/@$user\n" 

elif [[ $med == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Medium]: Not Found \n"
fi
#SlideShare
sli=$(curl -s -i "https://slideshare.net/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)


if [[ $sli == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [SlideShare]:  Found! ${RED}https://slideshare.net/$user\n" 

elif [[ $sli == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [SlideShare]: Not Found \n"
fi
#spotify
spot=$(curl -s -i "https://open.spotify.com/user/$user" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)


if [[ $spot == *'1'* ]]; then
echo -e -n  ${CP}"\n[+] [Spotify]:  Found! ${RED}https://open.spotify.com/user/$user\n" 

elif [[ $spot == *'0'* ]]; then
echo -e -n ${CG}"\n[+] [Spotify]: Not Found \n"
fi
}
clear
banner
all
#Coded By Machine404! Don't Copy this code without giving me credit.
