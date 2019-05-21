/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kjohnsto <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/21 11:56:37 by kjohnsto          #+#    #+#             */
/*   Updated: 2019/05/21 11:59:30 by kjohnsto         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft"

int		ft_isdigit(int c)
{
	if (c >= '0' && c <= '9')
		return (1);
	else
		return (0);
}