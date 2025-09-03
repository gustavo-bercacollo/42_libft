/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_front.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: marvin <marvin@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/19 14:37:50 by gbercaco          #+#    #+#             */
/*   Updated: 2025/09/02 21:24:22 by marvin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_linked_list.h"

void	ft_lstadd_front(t_list **lst, t_list *new)
{
	new->next = *lst;
	*lst = new;
}
int	main(void)
{
	t_list *list = NULL;

	t_list *node1 = ft_lstnew("mundo");
	t_list *node2 = ft_lstnew("oi");

	ft_lstadd_front(&list, node1);
	ft_lstadd_front(&list, node2);

	print_list(list);

	
	free(node1);
	free(node2);

	return (0);
}