NAME = cub3D
CC = cc
OBJ = $(SRC:.c=.o)

FLAGS = -L./includes/mlx -lmlx -lXext -lX11 -lm -lz
INCLUDES = includes/mlx/libmlx.a
SRC = src/main.c

all: $(NAME)

$(NAME): $(INCLUDES) $(OBJ)
	$(CC) $(OBJ) -o $(NAME) $(INCLUDES) $(FLAGS)

$(INCLUDES):
	$(MAKE) -C includes/mlx

%.o: %.c
	$(CC) -I./includes -c $< -o $@

fclean:
	rm -rf $(OBJ)
	rm -rf $(NAME)
	$(MAKE) -C includes/mlx clean

re: fclean all

.PHONY: all fclean re