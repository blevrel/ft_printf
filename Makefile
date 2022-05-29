# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: blevrel <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/21 10:32:08 by blevrel           #+#    #+#              #
#    Updated: 2022/05/06 10:40:16 by blevrel          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS =	libft/ft_isalnum.c libft/ft_isalpha.c libft/ft_isascii.c libft/ft_isdigit.c\
		libft/ft_isprint.c libft/ft_strlen.c libft/ft_memset.c libft/ft_memcpy.c\
		libft/ft_memmove.c libft/ft_strlcpy.c libft/ft_bzero.c libft/ft_strlcat.c\
		libft/ft_toupper.c libft/ft_tolower.c libft/ft_strchr.c libft/ft_strrchr.c\
		libft/ft_strncmp.c libft/ft_memchr.c libft/ft_memcmp.c libft/ft_strnstr.c\
		libft/ft_atoi.c libft/ft_calloc.c libft/ft_strdup.c libft/ft_putchar_fd.c\
		libft/ft_putstr_fd.c libft/ft_putendl_fd.c libft/ft_putnbr_fd.c libft/ft_strjoin.c\
		libft/ft_substr.c libft/ft_itoa.c libft/ft_strtrim.c libft/ft_striteri.c libft/ft_strmapi.c\
		libft/ft_split.c libft/ft_putchar.c libft/ft_putnbr.c libft/ft_putnbr_unsigned.c\
		libft/ft_putnbr_hexa_x.c libft/ft_putnbr_hexa_X.c libft/ft_putnbr_hexa_p.c\
		srcs/ft_putchar_va_arg.c srcs/ft_putstr_va_arg.c srcs/ft_putnbr_va_arg.c\
		srcs/ft_putnbr_unsigned_va_arg.c srcs/ft_putnbr_hexa_va_arg_X.c\
		srcs/ft_putnbr_hexa_va_arg_x.c srcs/ft_putaddr_va_arg.c ft_printf.c


OBJS = ${SRCS:.c=.o}

CC = gcc

CFLAGS = -Wall -Wextra -Werror

ARRC = ar rc

HEAD = includes

RM = rm -f

all: ${NAME}

clean:
	${RM} ${OBJS}

.c.o:
	${CC} ${CFLAGS} -c -I ${HEAD} $< -o ${<:.c=.o}

fclean: clean
	${RM} ${NAME}

re: fclean all

${NAME}:${OBJS}
	${ARRC} ${NAME} ${OBJS}
	ranlib libftprintf.a
