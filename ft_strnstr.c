/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strnstr.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: nschat <nschat@student.codam.nl>             +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/11/03 17:06:11 by nschat        #+#    #+#                 */
/*   Updated: 2019/11/05 17:53:43 by nschat        ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t	hst;
	size_t	ndl;

	hst = 0;
	if (!*needle)
		return ((char *)haystack);
	while (haystack[hst] && hst < len)
	{
		ndl = 0;
		while (haystack[hst + ndl] == needle[ndl] && hst + ndl < len)
		{
			ndl++;
			if (!needle[ndl])
				return ((char *)haystack + hst);
		}
		hst++;
	}
	return (NULL);
}
