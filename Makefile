# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: xwang <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/12 23:29:54 by xwang             #+#    #+#              #
#    Updated: 2018/10/26 00:23:21 by xwang            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_isdigit.c \
	   ft_memset.c \
	   ft_strchr.c \
	   ft_strcpy.c \
	   ft_strcmp.c \
	   ft_strdup.c \
	   ft_strlen.c \
	   ft_strncpy.c \
	   ft_tolower.c \
	   ft_toupper.c \
	   ft_bzero.c \
	   ft_memcpy.c \
	   ft_memccpy.c \
	   ft_memmove.c

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
