NAME = libftprintf.a

CC_FLAGS = -Wall -Wextra -Werror

CC = gcc

LIBFT = ./libft/libft.a

SRCS =	ft_printf.c				\
		ft_printchar.c 			\
		ft_printstr.c 			\
		ft_printptr.c 			\
		ft_printnbr.c 			\
		ft_print_unsigned.c 	\
		ft_printhex.c 			\
		ft_printpercent.c 		\
			
OBJS = $(SRCS:.c=.o)
	
all: $(NAME)
	make clean

$(NAME): $(OBJS) $(LIBFT) 
	cp libft/libft.a $(NAME)
	ar -rcs $(NAME) $(OBJS)

$(LIBFT):
	make -C ./libft

$(OBJS):
	$(CC) $(CC_FLAGS) -I./headers -c $(addprefix ./sources/,$(SRCS))

clean: 
	rm -f $(OBJS) $(LIBFT_OBJS)
	make clean -C ./libft

fclean: clean 
	make fclean -C ./libft
	rm -f $(NAME)

re: fclean all

bonus: all

test:
	gcc -g3 -I ./headers main.c $(addprefix ./files/,$(SRCS)) -L ./libft -lft 

#valgrind --show-leak-kinds=all --track-origins=yes  --leak-check=full  
.PHONY: all clean fclean re bonus test
