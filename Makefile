# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fd-agnes <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/15 15:08:48 by fd-agnes          #+#    #+#              #
#    Updated: 2021/01/19 15:17:06 by fd-agnes         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc 
FLAGS = -Wall -Wextra -Werror
RM = rm -f

NAME = libft.a

INCLUDE = libft.h

SRCS = $(wildcard *.c)

OBJS = 	$(SRCS:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJS) $(INCLUDE)
	ar -rcs $(NAME) $(OBJS)
	ranlib $(NAME)

.c.o:
	$(CC) $(FLAGS) -I$(INCLUDE) -c $< -o $(<:.c=.o)

clean:
	$(RM) $(OBJS)

fclean: clean 
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re
