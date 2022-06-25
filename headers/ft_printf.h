/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gsilva-d <gsilva-d@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/19 12:42:01 by gsilva-d          #+#    #+#             */
/*   Updated: 2022/06/24 16:44:08 by gsilva-d         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <unistd.h>
# include "../libft/libft.h"

int		ft_printf(const char *format, ...);
int		ft_printchar(int c);
int		ft_printstr(char *str);
int		ft_printnbr(int n);
int		ft_printptr(unsigned long long ptr);
int		ft_printpercent(void);
int		ft_printhex(unsigned long int n, char format);
int		ft_print_unsigned(unsigned int n);
#endif