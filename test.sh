# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    test.sh                                            :+:    :+:             #
#                                                      +:+                     #
#    By: mjiam <mjiam@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2020/06/11 14:44:51 by mjiam         #+#    #+#                  #
#    Updated: 2020/09/21 19:47:31 by mjiam         ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# COLORS
CYAN="\033[0;36m"
PURP="\033[0;35m"
GREEN="\033[0;72m"
BLUE="\033[0;34m"
BLUEBG="\033[44m"
WHITE="\033[1;97m"
RESET="\033[0m"
TNUM=1

if [ ! -f "../cub3D" ]; then
    printf "${GREEN}Error: ./cub3D not found. Run make first${RESET}\n"
else
    printf "\n${BLUEBG}${WHITE}Beginning Invalid Map Test${RESET}\n"
    printf "\n${CYAN}Test ${TNUM}/28: < 0 floor colour values${RESET}\n"
    cd ..; ./cub3D cub3d_tester/maps/col_inv.cub
    ((TNUM+=1))
    printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: > 255 ceiling colour value${RESET}\n"
        ./cub3D cub3d_tester/maps/col_inv2.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: invalid character between colour value${RESET}\n"
        ./cub3D cub3d_tester/maps/col_inv3.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: missing 1 of ceiling colour values${RESET}\n"
        ./cub3D cub3d_tester/maps/col_inv4.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: invalid character between colour values${RESET}\n"
        ./cub3D cub3d_tester/maps/col_inv5.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: valid 0,0,0 floor colour${RESET}\n"
        ./cub3D cub3d_tester/maps/col_valid0.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test ${TNUM}/28: duplicate starting direction${RESET}\n"
        ./cub3D cub3d_tester/maps/dir_dup.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test ${TNUM}/28: invalid starting direction character${RESET}\n"
        ./cub3D cub3d_tester/maps/dir_inv.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test ${TNUM}/28: missing starting direction${RESET}\n"
        ./cub3D cub3d_tester/maps/dir_none.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test ${TNUM}/28: duplicate wall texture${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_dup.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test ${TNUM}/28: invalid element identifier${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_inv.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test ${TNUM}/28: invalid sprite texture file${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_invfile.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test ${TNUM}/28: missing East wall texture${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_miss.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test ${TNUM}/28: space in texture file path. Should run correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_space.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: newline in map${RESET}\n"
        ./cub3D cub3d_tester/maps/map_nl.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: missing map${RESET}\n"
        ./cub3D cub3d_tester/maps/map_none.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: invalid open map${RESET}\n"
        ./cub3D cub3d_tester/maps/map_open.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: invalid open map #2 (sprite)${RESET}\n"
        ./cub3D cub3d_tester/maps/map_opensp.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: invalid open map #3 (start in wall)${RESET}\n"
        ./cub3D cub3d_tester/maps/map_opendir.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: invalid open map #4 (diagonal)${RESET}\n"
        ./cub3D cub3d_tester/maps/map_opendiag.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: map full of sprites. Should render correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/map_sprite.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: valid open map. Should run correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/map_openvalid.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test ${TNUM}/28: int overflow resolution. Should resize and run correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/res_overfl.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test ${TNUM}/28: 3600x2800 resolution. Should resize and run correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/res_big.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test ${TNUM}/28: 3600x2800 resolution with --SAVE. Should not resize.${RESET}\n"
        ./cub3D cub3d_tester/maps/res_big.cub --save
        ((TNUM+=1))
        BMP=$(ls -t *.bmp | head -1)
        SIZE=$(file ${BMP} | grep -o -E '[0-9]{1,4} x [0-9]{1,4}')
        if diff <(echo ${SIZE}) <(echo "3600 x 2800") ; then
            printf "Bitmap resolution is correct\n"
        else
            printf "Bitmap resolution is incorrect\n"
        fi
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test ${TNUM}/28: invalid character in resolution. Should error.${RESET}\n"
        ./cub3D cub3d_tester/maps/res_inv2.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test ${TNUM}/28: < 0 resolution. Should error.${RESET}\n"
        ./cub3D cub3d_tester/maps/res_inv.cub
        ((TNUM+=1))
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
    printf "\n${PURP}Test ${TNUM}/28: invalid .cub (folder) as input file. Should error without crash.${RESET}\n"
    ./cub3D cub3d_tester/maps/folder.cub
    ((TNUM+=1))
    fi
fi