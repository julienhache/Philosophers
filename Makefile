# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jhache <jhache@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/18 12:50:32 by jhache            #+#    #+#              #
#    Updated: 2020/05/20 11:05:00 by jhache           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# sub makefiles location
MAKE_PATH := source
export MAKE_PATH

# Exercise-dependent Makefiles definition
PHILO_ONE_MK := $(MAKE_PATH)/philo_one.mk


all: philo_one

philo_one:
	make -f $(PHILO_ONE_MK)

clean:
	make -f $(PHILO_ONE_MK) clean

fclean:
	make -f $(PHILO_ONE_MK) fclean

re: fclean all


.PHONY: all philo_one clean fclean re