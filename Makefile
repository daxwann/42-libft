# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: xwang <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/12 23:29:54 by xwang             #+#    #+#              #
#    Updated: 2018/11/12 18:49:08 by xwang            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_isdigit.c		\
	   ft_memset.c		\
	   ft_strchr.c		\
	   ft_strcpy.c		\
	   ft_strcmp.c		\
	   ft_strdup.c		\
	   ft_strlen.c		\
	   ft_strncpy.c		\
	   ft_tolower.c		\
	   ft_toupper.c		\
	   ft_bzero.c		\
	   ft_memcpy.c		\
	   ft_memccpy.c		\
	   ft_memmove.c		\
	   ft_memchr.c		\
	   ft_memcmp.c		\
	   ft_strcat.c		\
	   ft_strncat.c		\
	   ft_strlcat.c		\
	   ft_strrchr.c		\
	   ft_strstr.c		\
	   ft_strnstr.c		\
	   ft_strncmp.c		\
	   ft_atoi.c		\
	   ft_isalpha.c		\
	   ft_isalnum.c		\
	   ft_isascii.c		\
	   ft_isprint.c		\
	   ft_memalloc.c	\
	   ft_memdel.c		\
	   ft_strnew.c		\
	   ft_strdel.c		\
	   ft_strclr.c		\
	   ft_striter.c		\
	   ft_striteri.c	\
	   ft_strmap.c		\

OBJ = ${SRCS:.c=.o} 

all: $(NAME)
$(NAME):
	gcc -Wall -Werror -Wextra -c -I. $(SRCS)
	ar rcs $(NAME) $(OBJ)
clean:
	/bin/rm -f $(OBJ)
fclean: clean
	/bin/rm -f $(NAME)
re: fclean all
