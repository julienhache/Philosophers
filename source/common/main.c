/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jhache <jhache@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/20 10:17:22 by jhache            #+#    #+#             */
/*   Updated: 2020/05/20 11:12:44 by jhache           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	dummy(void);

#include <stdio.h>

int	main(int ac, char **av)
{
	(void)ac;
	(void)av;
	printf("%d\n", dummy());
	return 0;
}