/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsplit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: xwang <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/25 19:38:38 by xwang             #+#    #+#             */
/*   Updated: 2018/11/28 14:19:37 by xwang            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

static int	word_count(char const *str, char c)
{
	int i;
	int count;
	int new;

	i = 0;
	count = 0;
	new = 1;
	while (str[i] != '\0')
	{
		if ((str[i] != c) && new == 1)
		{
			new = 0;
			count++;
		}
		else if (str[i] == c)
			new = 1;
		i++;
	}
	return (count);
}

static char	*split_word(const char *str, char c)
{
	char	*word;
	int		i;

	i = 0;
	while (str[i] != c)
		i++;
	if (!(word = (char *)malloc(sizeof(*word) * (i + 1))))
		return (NULL);
	i = 0;
	while (*str != c)
	{
		word[i] = *str;
		str++;
		i++;
	}
	word[i] = '\0';
	return (word);
}

char		**ft_strsplit(char const *str, char c)
{
	char	**words;
	int		len;
	int		i;

	if (!str)
		return (NULL);
	len = word_count(str, c) + 1;
	if (!(words = (char **)malloc(sizeof(*words) * len)))
		return (NULL);
	i = 0;
	while (i < len - 1)
	{
		while (*str == c && *str != '\0')
			str++;
		words[i] = split_word(str, c);
		while (*str != c)
			str++;
		i++;
	}
	words[len - 1] = 0;
	return (words);
}
