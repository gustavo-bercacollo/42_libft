/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbercaco <gbercaco@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/10 18:06:19 by gbercaco          #+#    #+#             */
/*   Updated: 2025/07/25 20:53:35 by gbercaco         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
** ft_isprint - Checks if the character is printable.
**
** @param c: The character to check.
** @return: 1 if 'c' is between 32 and 126 (inclusive), else 0.
**
** Printable characters include letters, digits, symbols, and space.
*/

#include "libft.h"

int	ft_isprint(int c)
{
	if ((c >= 32 && c <= 126))
		return (1);
	return (0);
}
