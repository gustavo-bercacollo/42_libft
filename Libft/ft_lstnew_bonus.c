/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbercaco <gbercaco@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/18 21:20:29 by gbercaco          #+#    #+#             */
/*   Updated: 2025/08/05 21:51:14 by gbercaco         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*new_box;

	new_box = malloc(sizeof(t_list));
	if (!new_box)
		return (NULL);
	new_box->content = content;
	new_box->next = NULL;
	return (new_box);
}
