# **************************************************************************** #
#                                                                              #
#                                                         LIBFT MAKEFILE       #
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
       $(SRC_DIR)/ft_ctype/ft_islower.c \
       $(SRC_DIR)/ft_ctype/ft_isprint.c \
       $(SRC_DIR)/ft_ctype/ft_isspace.c \
       $(SRC_DIR)/ft_ctype/ft_isupper.c \
       $(SRC_DIR)/ft_ctype/ft_tolower.c \
       $(SRC_DIR)/ft_ctype/ft_toupper.c \
       $(SRC_DIR)/ft_string/ft_strlen.c \
       $(SRC_DIR)/ft_string/ft_strncmp.c \
       $(SRC_DIR)/ft_string/ft_strdup.c \
       $(SRC_DIR)/ft_string/ft_strjoin.c \
       $(SRC_DIR)/ft_stdlib/ft_atoi.c \
       $(SRC_DIR)/ft_stdlib/ft_calloc.c \
       $(SRC_DIR)/ft_linked_list/ft_lstnew.c \
       $(SRC_DIR)/ft_linked_list/ft_lstadd_front.c \
       $(SRC_DIR)/ft_linked_list/ft_lstadd_back.c \
       $(SRC_DIR)/ft_non_standard/get_next_line.c

# Objetos
OBJS = $(SRCS:.c=.o)

# Inclusão de headers
INCLUDES = -I $(INC_DIR)

# Regras

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
