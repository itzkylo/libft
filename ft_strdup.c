/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kjohnsto <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/21 09:07:10 by kjohnsto          #+#    #+#             */
/*   Updated: 2019/05/24 10:28:54 by kjohnsto         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *src)
{
	char	*dst
	int		i;

	i = 0;
	while(src[i] != '\0')
		i++;
	i++;
	dst = (char *)malloc(sizeof(char) * i);
	while(i >= 0)
	{
		dst[i] = src[i];
		i--;
	}
	return(dst);
}
