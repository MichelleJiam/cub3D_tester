# cub3D_tester
An automated tester for checking 42's cub3D project against a variety of valid and invalid inputs.

## Installation

Clone the tester into the root directory of your cub3D

```bash
git clone https://github.com/MichelleJiam/cub3D_tester.git
```

## Usage

If you haven't already, run ```make``` in your cub3d repo to create your ./cub3D executable.

Then from the cub3d_tester repo, run ```bash test.sh``` to run tests. 

Some tests are meant to launch the game. Simply exit the game to continue testing.

Note: the tester assumes your program is able to handle both .PNG and .XPM texture files. 
If that's not the case, you have to change all paths to the appropriate extensions (there are 2 versions of every texture path).
Otherwise you will get an MLX error/segfault.
