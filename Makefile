Library = push_swap

CFILES = $(wildcard *.c src/*.c commands/*.c libft/*.c libft/printf/*.c)
OFILES = $(CFILES:.c=.o)

Compiler = gcc
Flags =  -Wall -Wextra -Werror

OUTN = $(Library)
NAME = $(OUTN)

all: $(NAME)

$(NAME): $(OFILES)
	$(Compiler) $(Flags) -o $(OUTN) $(OFILES)

%.o: %.c
	$(Compiler) $(Flags) -c $< -o $@ -I./

dev: fclean $(OFILES) $(NAME)

clean:
	rm -rf $(OFILES)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
