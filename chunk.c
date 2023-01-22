#include <stdlib.h>

#include "chunk.h"

void initChunk(Chunk *chunk)
{
    chunk->capacity = 0;
    chunk->count = 0;
    chunk->code = NULL;
}

void writeChunk(Chunk *chunk, uint8_t byte)
{
    if (chunk->capacity < chunk->count + 1)
    {
        Chunk *newChunk = calloc(sizeof(byte), chunk->capacity + 1);
    }
}