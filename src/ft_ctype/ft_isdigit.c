/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbercaco <gbercaco@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/10 17:11:37 by gbercaco          #+#    #+#             */
/*   Updated: 2025/07/25 19:41:19 by gbercaco         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
** Checks if the given character is a decimal digit (0 to 9).
** Returns 1 if it is a number, otherwise returns 0.
*/

#include "libft.h"

int	ft_isdigit(int c)
{
	if ((c >= '0' && c <= '9'))
		return (1);
	return (0);
}
