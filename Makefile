# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbercaco <gbercaco@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/01 20:17:25 by gbercaco          #+#    #+#              #
#    Updated: 2025/10/01 20:17:25 by gbercaco         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Nome da biblioteca
NAME = libft.a

# Compilador e flags
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs

# Diretórios
SRC_DIR = src
INC_DIR = include

# Arquivos fonte
SRCS = $(SRC_DIR)/ft_ctype/ft_isalnum.c \
       $(SRC_DIR)/ft_ctype/ft_isalpha.c \
       $(SRC_DIR)/ft_ctype/ft_isascii.c \
       $(SRC_DIR)/ft_ctype/ft_isdigit.c \
       $(SRC_DIR)/ft_ctype/ft_isprint.c \
       $(SRC_DIR)/ft_ctype/ft_tolower.c \
       $(SRC_DIR)/ft_ctype/ft_toupper.c \
       $(SRC_DIR)/ft_string/ft_strlen.c \
       $(SRC_DIR)/ft_string/ft_strncmp.c \
       $(SRC_DIR)/ft_string/ft_strdup.c \
       $(SRC_DIR)/ft_string/ft_strlcat.c \
       $(SRC_DIR)/ft_string/ft_strlcpy.c \
       $(SRC_DIR)/ft_string/ft_memcmp.c \
       $(SRC_DIR)/ft_string/ft_memcpy.c \
       $(SRC_DIR)/ft_string/ft_memmove.c \
       $(SRC_DIR)/ft_string/ft_memset.c \
       $(SRC_DIR)/ft_string/ft_bzero.c \
       $(SRC_DIR)/ft_string/ft_memchr.c \
       $(SRC_DIR)/ft_string/ft_strchr.c \
       $(SRC_DIR)/ft_string/ft_strrchr.c \
       $(SRC_DIR)/ft_stdlib/ft_atoi.c \
       $(SRC_DIR)/ft_stdlib/ft_calloc.c \
       $(SRC_DIR)/ft_linked_list/ft_lstnew.c \
       $(SRC_DIR)/ft_linked_list/ft_lstadd_front.c \
       $(SRC_DIR)/ft_linked_list/ft_lstadd_back.c \
       $(SRC_DIR)/ft_non_standard/ft_putendl_fd.c \
       $(SRC_DIR)/ft_non_standard/ft_striteri.c \
       $(SRC_DIR)/ft_non_standard/ft_strjoin.c \
       $(SRC_DIR)/ft_non_standard/ft_itoa.c \
       $(SRC_DIR)/ft_non_standard/ft_atol.c \
       $(SRC_DIR)/ft_non_standard/ft_strtrim.c \
       $(SRC_DIR)/ft_non_standard/ft_split.c \
       $(SRC_DIR)/ft_non_standard/ft_putnbr_fd.c \
       $(SRC_DIR)/ft_non_standard/ft_substr.c \
       $(SRC_DIR)/ft_non_standard/ft_putstr_fd.c \
       $(SRC_DIR)/ft_non_standard/ft_putchar_fd.c \
       $(SRC_DIR)/ft_non_standard/ft_strmapi.c \
       $(SRC_DIR)/ft_non_standard/ft_get_next_line/get_next_line.c \
       $(SRC_DIR)/ft_non_standard/ft_get_next_line/get_next_line_utils.c \
       $(SRC_DIR)/ft_non_standard/ft_get_next_line/get_next_line_utils_bonus.c \
       $(SRC_DIR)/ft_non_standard/ft_get_next_line/get_next_line_bonus.c

# Objetos
OBJS = $(SRCS:.c=.o)

# Inclusão de headers (todas as subpastas)
INCLUDES = $(patsubst %,-I %,$(shell find include -type d))

# Regras
all: $(NAME)

$(NAME): $(OBJS)
	@$(AR) $(NAME) $(OBJS)

%.o: %.c
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@rm -f $(OBJS)

fclean: clean
	@rm -f $(NAME)
	
re: fclean all

.PHONY: all clean fclean re
