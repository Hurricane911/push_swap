/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: joyim <joyim@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/22 23:02:51 by joyim             #+#    #+#             */
/*   Updated: 2024/11/23 11:56:20 by joyim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../push_swap.h"

int	main(int ac, char **av)
{
	t_stack_node		*a;
	t_stack_node		*b;

	a = NULL;
	b = NULL;
	if (ac > 1 && (av[1][0] == ' ' || av[1][0] == '\0'))
	{
		write(2, "Error\n", 6);
		return (1);
	}
	if (ac == 1 || (ac == 2 && !av[1][0]))
		return (1);
	else if (ac == 2)
		process_input(av[1], &a);
	else
		init_stack_a(&a, av + 1);
	sort_valid(&a, &b);
	free_stack(&a);
	return (0);
}
