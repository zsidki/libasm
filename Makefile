# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zsidki <zsidki@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/09 18:08:29 by zsidki            #+#    #+#              #
#    Updated: 2021/11/05 13:01:23 by zsidki           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS	= ft_strlen.o ft_strcpy.o ft_strcmp.o ft_write.o ft_read.o ft_strdup.o

ASM		= nasm
ASFLAG	= -fmacho64
GCC		= gcc
GCCFLAG	= -Wall -Wextra -Werror -L . -lasm

NAME	= libasm.a
TNAME	= libasm_test

%.o: 		%.s
			${ASM} ${ASFLAG} $< -o $@

${NAME}:	${OBJS}
			ar rcs ${NAME} ${OBJS}

all:		${NAME}

test:		all
			${GCC} -o ${TNAME} main.c ${NAME}
			./${TNAME}

clean:
			rm -f ${OBJS}

fclean: 	clean
			rm -f ${NAME}

re: 		fclean all

.PHONY: 	all clean fclean re
