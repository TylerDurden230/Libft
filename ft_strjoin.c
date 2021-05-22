/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fd-agnes <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/15 18:52:03 by fd-agnes          #+#    #+#             */
/*   Updated: 2021/01/16 15:20:12 by fd-agnes         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*newstr;
	size_t	size;

	if (!(s1 && s2))
		return (NULL);
	size = ft_strlen(s1) + ft_strlen(s2) + 1;
	if (!(newstr = malloc(size)))
		return (NULL);
	ft_strlcpy(newstr, s1, size);
	ft_strlcat(newstr, s2, size);
	return (newstr);
}
