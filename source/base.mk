# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    base.mk                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jhache <jhache@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/20 09:59:00 by jhache            #+#    #+#              #
#    Updated: 2020/05/20 11:14:15 by jhache           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# add common source files
include $(MAKE_PATH)/common.mk
SRC_NAME += $(COMMON_SRC_NAME)


# Paths definitions
SRC_PATH := source
OBJ_PATH := .bin
INC_PATH := $(SRC_PATH)/$(COMMON_SRC_PATH)# base path, the other (implicit) one being the path of the currently compiled source file


# Compiler
CC := gcc
CCFLAGS := -Wall -Werror -Wextra
INCFLAGS := -iquote $(INC_PATH)


# Commands
RM := rm -f
RMDIR := rm -Rdf
MKDIR := mkdir -p


# Main files definitions
SRC := $(addprefix $(SRC_PATH)/, $(SRC_NAME))
OBJ :=	$(addprefix $(OBJ_PATH)/, $(SRC_NAME:.c=.o))
OBJ_DIRS := $(sort $(dir $(OBJ))) $(OBJ_PATH)



# Rules
all: $(NAME)

$(NAME): $(OBJ_DIRS) $(OBJ)
	$(CC) -o $@ $(OBJ)

$(OBJ_DIRS):
	$(MKDIR) $@

$(OBJ_PATH)/%.o: $(addprefix $(SRC_PATH)/, %.c)
	$(CC) $(CCFLAGS) -MMD -MF $(<:.c=.d) $(INCFLAGS) -c $< -o $@

#add dependencies files (*.d)
DEP_FILES = $(SRC:%.c=%.d)
-include $(DEP_FILES)

clean:
	$(RM) $(OBJ)
	$(RMDIR) $(OBJ_DIRS)
	$(RM) $(DEP_FILES)

fclean: clean
	$(RM) $(NAME)

re: fclean all


.PHONY: all clean fclean re