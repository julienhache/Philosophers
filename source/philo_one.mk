# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    philo_one.mk                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jhache <jhache@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/18 12:56:15 by jhache            #+#    #+#              #
#    Updated: 2020/05/20 11:04:53 by jhache           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := philo_one

# specific sources, they will be added to SRC
_SRC := dummy.c

_SRC_PATH := philo_one

SRC_NAME := $(addprefix $(_SRC_PATH)/, $(_SRC))


include $(MAKE_PATH)/base.mk