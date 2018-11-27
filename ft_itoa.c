#include <string.h>

int	find_digits(unsigned int num)
{
	int len;
	
	len = 1;
	while (num / 10 != 0)
	{
		len++;
		num /= 10;
	}
	return len;
}

char	*ft_itoa(int n)
{
	unsigned int	num;
	int		len;
	char		*arr;

	len = 0;
	if (n < 0)
	{
		len = 1;
		num = (unsigned int)(-n);
	}
	else
		num = (unsigned int)(n);
	len += find_digits(num);
	if (!(arr = (char *)malloc(sizeof(*arr) * (len + 1))))
		return (NULL);
	arr[len--] = '\0';
	while (num / 10 != 0)
	{
		arr[len--] = num % 10 + '0';
		num /= 10;
	}
	arr[len] = num;
}
