/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbercaco <gbercaco@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/10 14:46:03 by gbercaco          #+#    #+#             */
/*   Updated: 2025/07/25 19:37:43 by gbercaco         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
** Checks if the given character is an alphabetic letter.
** Returns 1 if it is a letter (uppercase or lowercase), otherwise returns 0.
*/

#include "libft.h"

int	ft_isalpha(int c)
{
	return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'));
}
