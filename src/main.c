#include "../includes/cube.h"

void	init_game(t_env *env)
{
	env->mlx = init_mlx();
	env->win = init_new_window(env->mlx, WIDTH, HEIGHT, "Cube3D");
	//mlx_loop(env->mlx);
	env->img = init_new_image(env->mlx, WIDTH, HEIGHT);

}




int main(void)
{
	t_env	*env;

	init_game(env);
	

	return (0);
}