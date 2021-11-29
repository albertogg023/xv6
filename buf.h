struct buf {    // representa un sector del disco
  int flags;
  uint dev; // id dispositivo
  uint blockno; // número de bloque dentro del dispositivo
  struct sleeplock lock; // cerrojo
  uint refcnt;
  struct buf *prev; // puntero al anterior sector de la LRU cache list    
  struct buf *next; // puntero al siguiente sector
  struct buf *qnext; // lista operaciones pendientes sobre el sector
  uchar data[BSIZE]; // buffer intermedio para almacenar bloque físico del disco
};
#define B_VALID 0x2  // buffer has been read from disk
#define B_DIRTY 0x4  // buffer needs to be written to disk

