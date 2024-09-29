
int main(int ac, char **av)
{
    t_stack_node *a;
    t_stack_node *b;

    a = NULL;
    b = NULL;
    if(ac == 1 || (ac == 2 && !av[1][0]))
        return (1);
    else if (ac == 2)
        av = split(av[1], ' ');
    

}