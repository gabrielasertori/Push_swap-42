/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gcosta-d <gcosta-d@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/26 16:46:58 by gcosta-d          #+#    #+#             */
/*   Updated: 2022/02/26 17:39:09 by gcosta-d         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/push_swap.h"

int	check(t_data *data, int argc, char *argv[])
{
	if (argc < 3)
		return (0);
	data->qnt_int = 1;
	printf("%s\n", argv[0]);
	return (0);
}