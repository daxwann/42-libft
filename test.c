#include <stdio.h>
#include "libft.h"
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <ctype.h>

int	main(void)
{	
	printf("%d\n", atoi("-999999999999999999999999999"));
	printf("%d\n", ft_atoi("-999999999999999999999999999"));
	return (0);
}
