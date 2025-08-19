/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbercaco <gbercaco@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/10 19:29:13 by gbercaco          #+#    #+#             */
/*   Updated: 2025/07/25 18:47:20 by gbercaco         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
** Sets the first 'n' bytes of the memory area pointed to by 's'
** to zero (0), clearing the memory.
*/

#include "libft.h"

void	ft_bzero(void *s, size_t n)
{
	size_t			i;
	unsigned char	*str;

	str = (unsigned char *)s;
	i = 0;
	while (i < n)
	{
		str[i] = 0;
		i++;
	}
}
