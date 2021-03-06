# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ezaynabi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/25 19:52:51 by ezaynabi          #+#    #+#              #
#    Updated: 2020/11/25 19:52:56 by ezaynabi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c \
	  ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c \
	  ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
	  ft_strnstr.c ft_strncmp.c ft_atoi.c ft_isalpha.c \
	  ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	  ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c \
	  ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
	  ft_itoa.c ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c \
	  ft_putendl_fd.c ft_putnbr_fd.c

SRC_BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
			ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
			ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJ_BONUS = $(SRC_BONUS:.c=.o)

OBJ = $(SRC:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror

INCLD = ./

.c.o:
			$(CC) $(CFLAGS) -I$(INCLD) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJ)
			ar rc $(NAME) $(OBJ)
			ranlib $(NAME)

all:		$(NAME)

bonus:		$(NAME) $(OBJ_BONUS)
			ar rc $(NAME) $(OBJ) $(OBJ_BONUS)
			ranlib $(NAME)

clean:
			@rm -rf $(OBJ) $(OBJ_BONUS)

fclean: 	clean
			@rm -rf $(NAME)

re:			fclean	all