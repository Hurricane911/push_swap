Library = push_swap

CFILES = $(wildcard *.c src/*.c)
OFILES = $(CFILES:.c=.o)

Compiler = gcc
Flags = -Wall -Wextra -Werror

NAME = $(Library)

all: $(NAME)

$(NAME): $(OFILES)
	$(Compiler) $(Flags) -c $< -o $@ -I./

dev: fclean $(OFILES) $(NAME)

clean:
		rm -rf $(OFILES)

fclean:
		rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re

