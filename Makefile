# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gcosta-d <gcosta-d@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/26 16:58:00 by gcosta-d          #+#    #+#              #
#    Updated: 2022/02/26 20:30:27 by gcosta-d         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

FLAGS = -Wall -Wextra -Werror

CC = gcc

RULES_PATH = ./rules/
RULES_FILES = pa.c pb.c ra.c rb.c rr.c rra.c rrb.c rrr.c sa.c sb.c ss.c
RULES = $(addprefix $(RULES_PATH),$(RULES_FILES))

SRC_PATH = ./src/
SRC_FILES = check.c init.c main.c
SRC = $(addprefix $(SRC_PATH),$(SRC_FILES))

OBJ_PATH = ./objs/
SRC_OBJ = $(SRC:$(SRC_PATH)%.c=$(OBJ_PATH)%.o)
RULES_OBJ = $(RULES:$(RULES_PATH)%.c=$(OBJ_PATH)%.o)

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@$(CC) $(FLAGS) -c $< -o $@
	@echo -n █

$(OBJ_PATH)%.o: $(RULES_PATH)%.c
	@$(CC) $(FLAGS) -c $< -o $@
	@echo -n █

all: $(NAME)

$(NAME): $(OBJ_PATH) $(SRC_OBJ) $(RULES_OBJ)
	@$(MAKE) --no-print-directory -C ./libft
	@$(CC) $(FLAGS) $(SRC_OBJ) $(RULES_OBJ) ./libft/libft.a -fsanitize=address -o $(NAME)
	@echo -n █
	@echo " 100% complete"

$(OBJ_PATH):
	@echo -n "build  : "
	@mkdir -p objs
	@echo -n █

clean:
	@echo -n "clean  : "
	@$(MAKE) --no-print-directory -C ./libft clean
	@rm -f $(SRC_OBJ) $(RULES_OBJ)
	@echo -n █
	@echo " 100% complete"

fclean: clean
	@echo -n "fclean : "
	@$(MAKE) --no-print-directory -C ./libft fclean
	@rm -rf $(OBJ_PATH)
	@rm -rf $(NAME)
	@echo -n █
	@echo " 100% complete"

re: fclean all
