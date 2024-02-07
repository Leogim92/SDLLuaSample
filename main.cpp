#include <SDL2/SDL.h>
#include <lua.hpp>

#include <iostream>
const int WIDTH {800};
const int HEIGHT {600};
const int FPS {60};
const int FRAME_TIME_LENGTH {1000/FPS};

SDL_Window* window {nullptr};
SDL_Renderer* renderer {nullptr};
bool is_running {false};
int last_frame_time{0};

lua_State* L;

struct Player{
    float x;
    float y;
    float width;
    float height;
};

Player player {};


bool InitializeWindow()
{
    if(SDL_Init(SDL_INIT_EVERYTHING) != 0)
    {
        fprintf(stderr, "Error initializing SDL. \n");
        return false;
    }
    window = SDL_CreateWindow("Game",
                              SDL_WINDOWPOS_CENTERED,
                              SDL_WINDOWPOS_CENTERED,
                              WIDTH, HEIGHT,
                              0);

    if(!window)
    {
        fprintf(stderr, "Error creating SDL window. \n");
        return false;
    }

    renderer = SDL_CreateRenderer(window, -1, 0);
    if(!renderer)
    {
        fprintf(stderr, "Error creating SDL renderer. \n");
        return false;
    }

    return true;
}

void ProcessInput()
{
    SDL_Event event;
    SDL_PollEvent(&event);

    switch (event.type)
    {
    case SDL_QUIT:
        is_running = false;
        break;
    case SDL_KEYDOWN:
        if(event.key.keysym.sym == SDLK_ESCAPE)
        {
            is_running = false;
        }
        break;
    }
}
void Setup()
{
    player.x = 20;
    player.y = 20;
    player.width = 10;
    player.height = 10;
}
void Update()
{
    while(!SDL_TICKS_PASSED(SDL_GetTicks(), last_frame_time + FRAME_TIME_LENGTH));
    float delta_time = (SDL_GetTicks() - last_frame_time)/1000.0f;
    last_frame_time = SDL_GetTicks();

    //call the lua update function
    lua_getglobal(L, "Update");
    if(lua_isfunction(L, -1))
    {
        lua_pushnumber(L, delta_time);
        const int NUM_ARGS = 1;
        const int NUM_RETURNS = 0;

        if (lua_pcall(L, NUM_ARGS, NUM_RETURNS, 0) != LUA_OK)
        {
            luaL_error(L, "Error: %s\n", lua_tostring(L, -1));
        }
    }
}
void Render()
{
    SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);
    SDL_RenderClear(renderer);

    // call the lua render function
    lua_getglobal(L, "Render");
    if (lua_isfunction(L, -1))
    {
        const int NUM_ARGS = 0;
        const int NUM_RETURNS = 0;

        if (lua_pcall(L, NUM_ARGS, NUM_RETURNS, 0) != LUA_OK)
        {
            luaL_error(L, "Error: %s\n", lua_tostring(L, -1));
        }
    }

    SDL_RenderPresent(renderer);
}
int RenderPlayer(lua_State* L)
{
    lua_Number r = lua_tonumber(L, -4);
    lua_Number g = lua_tonumber(L, -3);
    lua_Number b = lua_tonumber(L, -2);
    lua_Number a = lua_tonumber(L, -1);

    SDL_SetRenderDrawColor(renderer, static_cast<int>(r), static_cast<int>(g), static_cast<int>(b), static_cast<int>(a));
    SDL_Rect player_rect = {static_cast<int>(player.x),
                            static_cast<int>(player.y),
                            static_cast<int>(player.width),
                            static_cast<int>(player.height)};
    SDL_RenderFillRect(renderer, &player_rect);
    return 0;
}
void DestroyWindow()
{
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}

int SetPlayerPos(lua_State* L)
{
    lua_Number x = lua_tonumber(L, -2); //get the first added parameter
    lua_Number y = lua_tonumber(L, -1); //get the last added parameter

    player.x = static_cast<int>(x);
    player.y = static_cast<int>(y);

    return 0;
}
int main(int argv, char **args)
{
    L = luaL_newstate();
    luaL_openlibs(L);
    if(luaL_dofile(L, "playermovement.lua") != LUA_OK)
    {
        luaL_error(L, "Error reading playermovement.lua %s\n", lua_tostring(L, -1));
        return EXIT_FAILURE;
    }
    lua_pushcfunction(L, SetPlayerPos);
    lua_setglobal(L, "SetPlayerPos");

    lua_pushcfunction(L, RenderPlayer);
    lua_setglobal(L, "RenderPlayer");

    is_running = InitializeWindow();

    Setup();
    while(is_running)
    {
        ProcessInput();
        Update();
        Render();
    }
    DestroyWindow();

    return 0;
}