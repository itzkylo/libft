# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kjohnsto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/04 12:15:56 by kjohnsto          #+#    #+#              #
#    Updated: 2019/06/11 14:27:33 by kjohnsto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAG = -Wall -Werror -Wextra

NAME = libft.a

SRC = ft_itoa.c \
	  ft_putchar_fd.c \
	  ft_strcmp.c \
	  ft_strlen.c \
	  ft_strrchr.c \
	  ft_memalloc.c \
	  ft_putendl.c \
	  ft_strcpy.c \
	  ft_strmap.c \
	  ft_strsplit.c \
	  ft_atoi.c \
	  ft_memccpy.c \
	  ft_putnbr.c \
	  ft_strdel.c \
	  ft_strmapi.c \
	  ft_strstr.c \
	  ft_bzero.c \
	  ft_memchr.c \
	  ft_putnbr_fd.c \
	  ft_strdup.c \
	  ft_strncat.c \
	  ft_strsub.c \
	  ft_isalnum.c \
	  ft_memcpy.c \
	  ft_putstr.c \
	  ft_strequ.c \
	  ft_strncmp.c \
	  ft_strtrim.c \
	  ft_isalpha.c \
	  ft_memdel.c \
	  ft_putstr_fd.c \
	  ft_striter.c \
	  ft_strncpy.c \
	  ft_tolower.c \
	  ft_isascii.c \
	  ft_memmove.c \
	  ft_strcat.c \
	  ft_striteri.c \
	  ft_strnequ.c \
	  ft_toupper.c \
	  ft_isdigit.c \
	  ft_memset.c \
	  ft_strchr.c \
	  ft_strjoin.c \
	  ft_strnew.c \
	  ft_isprint.c \
	  ft_putchar.c \
	  ft_strclr.c \
	  ft_strlcat.c \
	  ft_strnstr.c \

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "$(NAME) created"
	@ranlib $(NAME)
	@echo "$(NAME) indexed"

%.o: %.c
	@gcc $(FLAG) -c $< -o $@

clean:
	@rm -f $(OBJ)
	@echo "OBJ files deleted"

fclean: clean
	@rm -f $(OBJ)
	@echo "$(NAME) deleted"

re: fclean all

.PHONY: all, clean, fclean re
