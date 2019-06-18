/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kjohnsto <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/21 09:07:10 by kjohnsto          #+#    #+#             */
/*   Updated: 2019/06/18 14:15:46 by kjohnsto         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *src)
{
	char	*dst;
	int		i;

	i = 0;
	while (src[i] != '\0')
		i++;
	dst = (char *)malloc(sizeof(char) * ft_strlen(src) + 1);
	if (dst == NULL)
		return (NULL);
	while (i >= 0)
	{
		dst[i] = src[i];
		i--;
	}
	dst[i] = '\0';
	return (dst);
}
