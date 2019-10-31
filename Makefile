# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: nschat <nschat@student.codam.nl>             +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/29 17:30:18 by nschat        #+#    #+#                  #
#    Updated: 2019/10/31 16:36:39 by nschat        ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

CC = clang
CFLAGS = -g -Wall -Wextra -Werror -I include

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c \
	  ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c \
	  ft_strrchr.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c \
	  ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c \
	  ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
	  ft_itoa.c ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	  ft_putnbr_fd.c

ODIR = obj
OBJ = $(addprefix $(ODIR)/,$(SRC:.c=.o))

NAME = libft.a

vpath %.c src

.PHONY: clean fclean

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $^
	ranlib $@

$(ODIR)/%.o: %.c
	@mkdir -p $(ODIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) -r $(ODIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all
