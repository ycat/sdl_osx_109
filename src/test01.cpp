#include <iostream>
#include <SDL.h>

int main(int argc, char* arg[]) {
  if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
    std::cout << "ERROR SDL_Init" << std::endl;
    return -1;
  }

  SDL_Window* window = SDL_CreateWindow("SDL 2 window",
					SDL_WINDOWPOS_CENTERED,
					SDL_WINDOWPOS_CENTERED,
					640,
					480,
					SDL_WINDOW_OPENGL);
  SDL_Delay(5000);
  SDL_DestroyWindow(window);
  SDL_Quit();
  return 0;
}
