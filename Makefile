# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: joyim <joyim@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/23 12:19:22 by joyim             #+#    #+#              #
#    Updated: 2024/11/23 12:19:26 by joyim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
