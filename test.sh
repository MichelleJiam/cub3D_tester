# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    test.sh                                            :+:    :+:             #
#                                                      +:+                     #
#    By: mjiam <mjiam@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2020/06/11 14:44:51 by mjiam         #+#    #+#                  #
#    Updated: 2020/06/18 19:05:45 by mjiam         ########   odam.nl          #
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

if [ ! -f "../cub3D" ]; then
    printf "${GREEN}Error: ./cub3D not found. Run make first${RESET}\n"
else
    printf "\n${BLUEBG}${WHITE}Beginning Invalid Map Test${RESET}\n"
    printf "\n${CYAN}Test 1/24: < 0 floor colour values${RESET}\n"
    cd ..; ./cub3D cub3d_tester/maps/col_inv.cub
    printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 2/24: > 255 ceiling colour value${RESET}\n"
        ./cub3D cub3d_tester/maps/col_inv2.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 3/24: invalid character between colour value${RESET}\n"
        ./cub3D cub3d_tester/maps/col_inv3.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 4/24: missing 1 of ceiling colour values${RESET}\n"
        ./cub3D cub3d_tester/maps/col_inv4.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test 5/24: duplicate starting direction${RESET}\n"
        ./cub3D cub3d_tester/maps/dir_dup.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test 6/24: invalid starting direction character${RESET}\n"
        ./cub3D cub3d_tester/maps/dir_inv.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test 7/24: missing starting direction${RESET}\n"
        ./cub3D cub3d_tester/maps/dir_none.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test 8/24: duplicate wall texture${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_dup.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test 9/24: invalid element identifier${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_inv.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test 10/24: invalid sprite texture file${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_invfile.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test 11/24: missing East wall texture${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_miss.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${BLUE}Test 12/24: space in texture file path. Should run correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/tex_space.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 13/24: newline in map${RESET}\n"
        ./cub3D cub3d_tester/maps/map_nl.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 14/24: missing map${RESET}\n"
        ./cub3D cub3d_tester/maps/map_none.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 15/24: invalid open map${RESET}\n"
        ./cub3D cub3d_tester/maps/map_open.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 16/24: invalid open map #2 (sprite)${RESET}\n"
        ./cub3D cub3d_tester/maps/map_opensp.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 17/24: invalid open map #3 (start in wall)${RESET}\n"
        ./cub3D cub3d_tester/maps/map_opendir.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 18/24: invalid open map #4 (diagonal)${RESET}\n"
        ./cub3D cub3d_tester/maps/map_opendiag.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 19/24: map full of sprites. Should render correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/map_sprite.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${CYAN}Test 20/24: valid open map. Should run correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/map_openvalid.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test 21/24: int overflow resolution. Should resize and run correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/res_overfl.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test 22/24: 3600x2800 resolution. Should resize and run correctly.${RESET}\n"
        ./cub3D cub3d_tester/maps/res_big.cub
        printf "\n${BLUEBG}${WHITE}Press ENTER for next test${RESET}\n"
    else
        printf "Exiting test\n"
        exit 1
    fi
    read -s -n 1 KEY
    if [$KEY == ""] ; then
        printf "\n${PURP}Test 23/24: 3600x2800 resolution with --SAVE. Should not resize.${RESET}\n"
        ./cub3D cub3d_tester/maps/res_big.cub --save
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
    printf "\n${PURP}Test 24/24: < 0 resolution. Should error.${RESET}\n"
    ./cub3D cub3d_tester/maps/res_inv.cub
    fi
fi