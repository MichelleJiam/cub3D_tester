# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    test.sh                                            :+:    :+:             #
#                                                      +:+                     #
#    By: mjiam <mjiam@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2020/06/11 14:44:51 by mjiam         #+#    #+#                  #
#    Updated: 2020/06/11 16:29:34 by mjiam         ########   odam.nl          #
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
    printf "\n${CYAN}Test: < 0 floor colour values${RESET}\n"
    cd ..; ./cub3D cub3d_tester/maps/col_inv.cub
    printf "\n${CYAN}Test: > 255 ceiling colour value${RESET}\n"
    ./cub3D cub3d_tester/maps/col_inv2.cub
    printf "\n${PURP}Test: duplicate starting direction${RESET}\n"
    ./cub3D cub3d_tester/maps/dir_dup.cub
    printf "\n${PURP}Test: invalid starting direction character${RESET}\n"
    ./cub3D cub3d_tester/maps/dir_inv.cub
    printf "\n${PURP}Test: missing starting direction${RESET}\n"
    ./cub3D cub3d_tester/maps/dir_none.cub
    printf "\n${BLUE}Test: duplicate wall texture${RESET}\n"
    ./cub3D cub3d_tester/maps/tex_dup.cub
    printf "\n${BLUE}Test: invalid element identifier${RESET}\n"
    ./cub3D cub3d_tester/maps/tex_inv.cub
    printf "\n${BLUE}Test: invalid sprite texture file${RESET}\n"
    ./cub3D cub3d_tester/maps/tex_invfile.cub
    printf "\n${BLUE}Test: missing East wall texture${RESET}\n"
    ./cub3D cub3d_tester/maps/tex_miss.cub
    printf "\n${CYAN}Test: newline in map${RESET}\n"
    ./cub3D cub3d_tester/maps/map_nl.cub
    printf "\n${CYAN}Test: missing map${RESET}\n"
    ./cub3D cub3d_tester/maps/map_none.cub
    printf "\n${CYAN}Test: invalid open map${RESET}\n"
    ./cub3D cub3d_tester/maps/map_open.cub
    printf "\n${CYAN}Test: valid open map. Should run correctly.${RESET}\n"
    ./cub3D cub3d_tester/maps/map_openvalid.cub
    printf "\n${PURP}Test: int overflow resolution. Should resize and run correctly.${RESET}\n"
    ./cub3D cub3d_tester/maps/res_overfl.cub
    printf "\n${PURP}Test: 3600x2800 resolution. Should resize and run correctly.${RESET}\n"
    ./cub3D cub3d_tester/maps/res_big.cub
    printf "\n${PURP}Test: 3600x2800 resolution with --SAVE. Should not resize.${RESET}\n"
    ./cub3D cub3d_tester/maps/res_big.cub --save
    BMP=$(ls -t *.bmp | head -1)
    SIZE=$(file ${BMP} | grep -o -E '[0-9]{1,4} x [0-9]{1,4}')
    if diff <(echo ${SIZE}) <(echo "3600 x 2800") ; then
        printf "Bitmap resolution is correct\n"
    else
        printf "Bitmap resolution is incorrect\n"
    fi
    printf "\n${PURP}Test: < 0 resolution. Should error.${RESET}\n"
    ./cub3D cub3d_tester/maps/res_inv.cub

fi