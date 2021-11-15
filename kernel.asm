
kernel:     formato del fichero elf32-i386


Desensamblado de la sección .text:

80100000 <multiboot_header>:
80100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
80100006:	00 00                	add    %al,(%eax)
80100008:	fe 4f 52             	decb   0x52(%edi)
8010000b:	e4                   	.byte 0xe4

8010000c <entry>:

# Entering xv6 on boot processor, with paging off.
.globl entry
entry:
  # Turn on page size extension for 4Mbyte pages
  movl    %cr4, %eax
8010000c:	0f 20 e0             	mov    %cr4,%eax
  orl     $(CR4_PSE), %eax
8010000f:	83 c8 10             	or     $0x10,%eax
  movl    %eax, %cr4
80100012:	0f 22 e0             	mov    %eax,%cr4
  # Set page directory
  movl    $(V2P_WO(entrypgdir)), %eax
80100015:	b8 00 90 10 00       	mov    $0x109000,%eax
  movl    %eax, %cr3
8010001a:	0f 22 d8             	mov    %eax,%cr3
  # Turn on paging.
  movl    %cr0, %eax
8010001d:	0f 20 c0             	mov    %cr0,%eax
  orl     $(CR0_PG|CR0_WP), %eax
80100020:	0d 00 00 01 80       	or     $0x80010000,%eax
  movl    %eax, %cr0
80100025:	0f 22 c0             	mov    %eax,%cr0

  # Set up the stack pointer.
  movl $(stack + KSTACKSIZE), %esp
80100028:	bc c0 b5 10 80       	mov    $0x8010b5c0,%esp

  # Jump to main(), and switch to executing at
  # high addresses. The indirect call is needed because
  # the assembler produces a PC-relative instruction
  # for a direct jump.
  mov $main, %eax
8010002d:	b8 30 2b 10 80       	mov    $0x80102b30,%eax
  jmp *%eax
80100032:	ff e0                	jmp    *%eax

80100034 <bget>:
// Look through buffer cache for block on device dev.
// If not found, allocate a buffer.
// In either case, return locked buffer.
static struct buf*
bget(uint dev, uint blockno)
{
80100034:	55                   	push   %ebp
80100035:	89 e5                	mov    %esp,%ebp
80100037:	57                   	push   %edi
80100038:	56                   	push   %esi
80100039:	53                   	push   %ebx
8010003a:	83 ec 18             	sub    $0x18,%esp
8010003d:	89 c6                	mov    %eax,%esi
8010003f:	89 d7                	mov    %edx,%edi
  struct buf *b;

  acquire(&bcache.lock);
80100041:	68 c0 b5 10 80       	push   $0x8010b5c0
80100046:	e8 8a 3c 00 00       	call   80103cd5 <acquire>

  // Is the block already cached?
  for(b = bcache.head.next; b != &bcache.head; b = b->next){
8010004b:	8b 1d 10 fd 10 80    	mov    0x8010fd10,%ebx
80100051:	83 c4 10             	add    $0x10,%esp
80100054:	eb 03                	jmp    80100059 <bget+0x25>
80100056:	8b 5b 54             	mov    0x54(%ebx),%ebx
80100059:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
8010005f:	74 30                	je     80100091 <bget+0x5d>
    if(b->dev == dev && b->blockno == blockno){
80100061:	39 73 04             	cmp    %esi,0x4(%ebx)
80100064:	75 f0                	jne    80100056 <bget+0x22>
80100066:	39 7b 08             	cmp    %edi,0x8(%ebx)
80100069:	75 eb                	jne    80100056 <bget+0x22>
      b->refcnt++;
8010006b:	8b 43 4c             	mov    0x4c(%ebx),%eax
8010006e:	83 c0 01             	add    $0x1,%eax
80100071:	89 43 4c             	mov    %eax,0x4c(%ebx)
      release(&bcache.lock);
80100074:	83 ec 0c             	sub    $0xc,%esp
80100077:	68 c0 b5 10 80       	push   $0x8010b5c0
8010007c:	e8 bd 3c 00 00       	call   80103d3e <release>
      acquiresleep(&b->lock);
80100081:	8d 43 0c             	lea    0xc(%ebx),%eax
80100084:	89 04 24             	mov    %eax,(%esp)
80100087:	e8 15 3a 00 00       	call   80103aa1 <acquiresleep>
      return b;
8010008c:	83 c4 10             	add    $0x10,%esp
8010008f:	eb 4c                	jmp    801000dd <bget+0xa9>
  }

  // Not cached; recycle an unused buffer.
  // Even if refcnt==0, B_DIRTY indicates a buffer is in use
  // because log.c has modified it but not yet committed it.
  for(b = bcache.head.prev; b != &bcache.head; b = b->prev){
80100091:	8b 1d 0c fd 10 80    	mov    0x8010fd0c,%ebx
80100097:	eb 03                	jmp    8010009c <bget+0x68>
80100099:	8b 5b 50             	mov    0x50(%ebx),%ebx
8010009c:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
801000a2:	74 43                	je     801000e7 <bget+0xb3>
    if(b->refcnt == 0 && (b->flags & B_DIRTY) == 0) {
801000a4:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
801000a8:	75 ef                	jne    80100099 <bget+0x65>
801000aa:	f6 03 04             	testb  $0x4,(%ebx)
801000ad:	75 ea                	jne    80100099 <bget+0x65>
      b->dev = dev;
801000af:	89 73 04             	mov    %esi,0x4(%ebx)
      b->blockno = blockno;
801000b2:	89 7b 08             	mov    %edi,0x8(%ebx)
      b->flags = 0;
801000b5:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
      b->refcnt = 1;
801000bb:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
      release(&bcache.lock);
801000c2:	83 ec 0c             	sub    $0xc,%esp
801000c5:	68 c0 b5 10 80       	push   $0x8010b5c0
801000ca:	e8 6f 3c 00 00       	call   80103d3e <release>
      acquiresleep(&b->lock);
801000cf:	8d 43 0c             	lea    0xc(%ebx),%eax
801000d2:	89 04 24             	mov    %eax,(%esp)
801000d5:	e8 c7 39 00 00       	call   80103aa1 <acquiresleep>
      return b;
801000da:	83 c4 10             	add    $0x10,%esp
    }
  }
  panic("bget: no buffers");
}
801000dd:	89 d8                	mov    %ebx,%eax
801000df:	8d 65 f4             	lea    -0xc(%ebp),%esp
801000e2:	5b                   	pop    %ebx
801000e3:	5e                   	pop    %esi
801000e4:	5f                   	pop    %edi
801000e5:	5d                   	pop    %ebp
801000e6:	c3                   	ret    
  panic("bget: no buffers");
801000e7:	83 ec 0c             	sub    $0xc,%esp
801000ea:	68 00 67 10 80       	push   $0x80106700
801000ef:	e8 68 02 00 00       	call   8010035c <panic>

801000f4 <binit>:
{
801000f4:	f3 0f 1e fb          	endbr32 
801000f8:	55                   	push   %ebp
801000f9:	89 e5                	mov    %esp,%ebp
801000fb:	53                   	push   %ebx
801000fc:	83 ec 0c             	sub    $0xc,%esp
  initlock(&bcache.lock, "bcache");
801000ff:	68 11 67 10 80       	push   $0x80106711
80100104:	68 c0 b5 10 80       	push   $0x8010b5c0
80100109:	e8 77 3a 00 00       	call   80103b85 <initlock>
  bcache.head.prev = &bcache.head;
8010010e:	c7 05 0c fd 10 80 bc 	movl   $0x8010fcbc,0x8010fd0c
80100115:	fc 10 80 
  bcache.head.next = &bcache.head;
80100118:	c7 05 10 fd 10 80 bc 	movl   $0x8010fcbc,0x8010fd10
8010011f:	fc 10 80 
  for(b = bcache.buf; b < bcache.buf+NBUF; b++){
80100122:	83 c4 10             	add    $0x10,%esp
80100125:	bb f4 b5 10 80       	mov    $0x8010b5f4,%ebx
8010012a:	eb 37                	jmp    80100163 <binit+0x6f>
    b->next = bcache.head.next;
8010012c:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
80100131:	89 43 54             	mov    %eax,0x54(%ebx)
    b->prev = &bcache.head;
80100134:	c7 43 50 bc fc 10 80 	movl   $0x8010fcbc,0x50(%ebx)
    initsleeplock(&b->lock, "buffer");
8010013b:	83 ec 08             	sub    $0x8,%esp
8010013e:	68 18 67 10 80       	push   $0x80106718
80100143:	8d 43 0c             	lea    0xc(%ebx),%eax
80100146:	50                   	push   %eax
80100147:	e8 1e 39 00 00       	call   80103a6a <initsleeplock>
    bcache.head.next->prev = b;
8010014c:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
80100151:	89 58 50             	mov    %ebx,0x50(%eax)
    bcache.head.next = b;
80100154:	89 1d 10 fd 10 80    	mov    %ebx,0x8010fd10
  for(b = bcache.buf; b < bcache.buf+NBUF; b++){
8010015a:	81 c3 5c 02 00 00    	add    $0x25c,%ebx
80100160:	83 c4 10             	add    $0x10,%esp
80100163:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
80100169:	72 c1                	jb     8010012c <binit+0x38>
}
8010016b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010016e:	c9                   	leave  
8010016f:	c3                   	ret    

80100170 <bread>:

// Return a locked buf with the contents of the indicated block.
struct buf*
bread(uint dev, uint blockno)
{
80100170:	f3 0f 1e fb          	endbr32 
80100174:	55                   	push   %ebp
80100175:	89 e5                	mov    %esp,%ebp
80100177:	53                   	push   %ebx
80100178:	83 ec 04             	sub    $0x4,%esp
  struct buf *b;

  b = bget(dev, blockno);
8010017b:	8b 55 0c             	mov    0xc(%ebp),%edx
8010017e:	8b 45 08             	mov    0x8(%ebp),%eax
80100181:	e8 ae fe ff ff       	call   80100034 <bget>
80100186:	89 c3                	mov    %eax,%ebx
  if((b->flags & B_VALID) == 0) {
80100188:	f6 00 02             	testb  $0x2,(%eax)
8010018b:	74 07                	je     80100194 <bread+0x24>
    iderw(b);
  }
  return b;
}
8010018d:	89 d8                	mov    %ebx,%eax
8010018f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100192:	c9                   	leave  
80100193:	c3                   	ret    
    iderw(b);
80100194:	83 ec 0c             	sub    $0xc,%esp
80100197:	50                   	push   %eax
80100198:	e8 07 1d 00 00       	call   80101ea4 <iderw>
8010019d:	83 c4 10             	add    $0x10,%esp
  return b;
801001a0:	eb eb                	jmp    8010018d <bread+0x1d>

801001a2 <bwrite>:

// Write b's contents to disk.  Must be locked.
void
bwrite(struct buf *b)
{
801001a2:	f3 0f 1e fb          	endbr32 
801001a6:	55                   	push   %ebp
801001a7:	89 e5                	mov    %esp,%ebp
801001a9:	53                   	push   %ebx
801001aa:	83 ec 10             	sub    $0x10,%esp
801001ad:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(!holdingsleep(&b->lock))
801001b0:	8d 43 0c             	lea    0xc(%ebx),%eax
801001b3:	50                   	push   %eax
801001b4:	e8 7a 39 00 00       	call   80103b33 <holdingsleep>
801001b9:	83 c4 10             	add    $0x10,%esp
801001bc:	85 c0                	test   %eax,%eax
801001be:	74 14                	je     801001d4 <bwrite+0x32>
    panic("bwrite");
  b->flags |= B_DIRTY;
801001c0:	83 0b 04             	orl    $0x4,(%ebx)
  iderw(b);
801001c3:	83 ec 0c             	sub    $0xc,%esp
801001c6:	53                   	push   %ebx
801001c7:	e8 d8 1c 00 00       	call   80101ea4 <iderw>
}
801001cc:	83 c4 10             	add    $0x10,%esp
801001cf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801001d2:	c9                   	leave  
801001d3:	c3                   	ret    
    panic("bwrite");
801001d4:	83 ec 0c             	sub    $0xc,%esp
801001d7:	68 1f 67 10 80       	push   $0x8010671f
801001dc:	e8 7b 01 00 00       	call   8010035c <panic>

801001e1 <brelse>:

// Release a locked buffer.
// Move to the head of the MRU list.
void
brelse(struct buf *b)
{
801001e1:	f3 0f 1e fb          	endbr32 
801001e5:	55                   	push   %ebp
801001e6:	89 e5                	mov    %esp,%ebp
801001e8:	56                   	push   %esi
801001e9:	53                   	push   %ebx
801001ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(!holdingsleep(&b->lock))
801001ed:	8d 73 0c             	lea    0xc(%ebx),%esi
801001f0:	83 ec 0c             	sub    $0xc,%esp
801001f3:	56                   	push   %esi
801001f4:	e8 3a 39 00 00       	call   80103b33 <holdingsleep>
801001f9:	83 c4 10             	add    $0x10,%esp
801001fc:	85 c0                	test   %eax,%eax
801001fe:	74 6b                	je     8010026b <brelse+0x8a>
    panic("brelse");

  releasesleep(&b->lock);
80100200:	83 ec 0c             	sub    $0xc,%esp
80100203:	56                   	push   %esi
80100204:	e8 eb 38 00 00       	call   80103af4 <releasesleep>

  acquire(&bcache.lock);
80100209:	c7 04 24 c0 b5 10 80 	movl   $0x8010b5c0,(%esp)
80100210:	e8 c0 3a 00 00       	call   80103cd5 <acquire>
  b->refcnt--;
80100215:	8b 43 4c             	mov    0x4c(%ebx),%eax
80100218:	83 e8 01             	sub    $0x1,%eax
8010021b:	89 43 4c             	mov    %eax,0x4c(%ebx)
  if (b->refcnt == 0) {
8010021e:	83 c4 10             	add    $0x10,%esp
80100221:	85 c0                	test   %eax,%eax
80100223:	75 2f                	jne    80100254 <brelse+0x73>
    // no one is waiting for it.
    b->next->prev = b->prev;
80100225:	8b 43 54             	mov    0x54(%ebx),%eax
80100228:	8b 53 50             	mov    0x50(%ebx),%edx
8010022b:	89 50 50             	mov    %edx,0x50(%eax)
    b->prev->next = b->next;
8010022e:	8b 43 50             	mov    0x50(%ebx),%eax
80100231:	8b 53 54             	mov    0x54(%ebx),%edx
80100234:	89 50 54             	mov    %edx,0x54(%eax)
    b->next = bcache.head.next;
80100237:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
8010023c:	89 43 54             	mov    %eax,0x54(%ebx)
    b->prev = &bcache.head;
8010023f:	c7 43 50 bc fc 10 80 	movl   $0x8010fcbc,0x50(%ebx)
    bcache.head.next->prev = b;
80100246:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
8010024b:	89 58 50             	mov    %ebx,0x50(%eax)
    bcache.head.next = b;
8010024e:	89 1d 10 fd 10 80    	mov    %ebx,0x8010fd10
  }
  
  release(&bcache.lock);
80100254:	83 ec 0c             	sub    $0xc,%esp
80100257:	68 c0 b5 10 80       	push   $0x8010b5c0
8010025c:	e8 dd 3a 00 00       	call   80103d3e <release>
}
80100261:	83 c4 10             	add    $0x10,%esp
80100264:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100267:	5b                   	pop    %ebx
80100268:	5e                   	pop    %esi
80100269:	5d                   	pop    %ebp
8010026a:	c3                   	ret    
    panic("brelse");
8010026b:	83 ec 0c             	sub    $0xc,%esp
8010026e:	68 26 67 10 80       	push   $0x80106726
80100273:	e8 e4 00 00 00       	call   8010035c <panic>

80100278 <consoleread>:
  }
}

int
consoleread(struct inode *ip, char *dst, int n)
{
80100278:	f3 0f 1e fb          	endbr32 
8010027c:	55                   	push   %ebp
8010027d:	89 e5                	mov    %esp,%ebp
8010027f:	57                   	push   %edi
80100280:	56                   	push   %esi
80100281:	53                   	push   %ebx
80100282:	83 ec 28             	sub    $0x28,%esp
80100285:	8b 7d 08             	mov    0x8(%ebp),%edi
80100288:	8b 75 0c             	mov    0xc(%ebp),%esi
8010028b:	8b 5d 10             	mov    0x10(%ebp),%ebx
  uint target;
  int c;

  iunlock(ip);
8010028e:	57                   	push   %edi
8010028f:	e8 17 14 00 00       	call   801016ab <iunlock>
  target = n;
80100294:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
  acquire(&cons.lock);
80100297:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
8010029e:	e8 32 3a 00 00       	call   80103cd5 <acquire>
  while(n > 0){
801002a3:	83 c4 10             	add    $0x10,%esp
801002a6:	85 db                	test   %ebx,%ebx
801002a8:	0f 8e 8f 00 00 00    	jle    8010033d <consoleread+0xc5>
    while(input.r == input.w){
801002ae:	a1 a0 ff 10 80       	mov    0x8010ffa0,%eax
801002b3:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
801002b9:	75 47                	jne    80100302 <consoleread+0x8a>
      if(myproc()->killed){
801002bb:	e8 20 30 00 00       	call   801032e0 <myproc>
801002c0:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801002c4:	75 17                	jne    801002dd <consoleread+0x65>
        release(&cons.lock);
        ilock(ip);
        return -1;
      }
      sleep(&input.r, &cons.lock);
801002c6:	83 ec 08             	sub    $0x8,%esp
801002c9:	68 20 a5 10 80       	push   $0x8010a520
801002ce:	68 a0 ff 10 80       	push   $0x8010ffa0
801002d3:	e8 ca 34 00 00       	call   801037a2 <sleep>
801002d8:	83 c4 10             	add    $0x10,%esp
801002db:	eb d1                	jmp    801002ae <consoleread+0x36>
        release(&cons.lock);
801002dd:	83 ec 0c             	sub    $0xc,%esp
801002e0:	68 20 a5 10 80       	push   $0x8010a520
801002e5:	e8 54 3a 00 00       	call   80103d3e <release>
        ilock(ip);
801002ea:	89 3c 24             	mov    %edi,(%esp)
801002ed:	e8 f3 12 00 00       	call   801015e5 <ilock>
        return -1;
801002f2:	83 c4 10             	add    $0x10,%esp
801002f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }
  release(&cons.lock);
  ilock(ip);

  return target - n;
}
801002fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
801002fd:	5b                   	pop    %ebx
801002fe:	5e                   	pop    %esi
801002ff:	5f                   	pop    %edi
80100300:	5d                   	pop    %ebp
80100301:	c3                   	ret    
    c = input.buf[input.r++ % INPUT_BUF];
80100302:	8d 50 01             	lea    0x1(%eax),%edx
80100305:	89 15 a0 ff 10 80    	mov    %edx,0x8010ffa0
8010030b:	89 c2                	mov    %eax,%edx
8010030d:	83 e2 7f             	and    $0x7f,%edx
80100310:	0f b6 92 20 ff 10 80 	movzbl -0x7fef00e0(%edx),%edx
80100317:	0f be ca             	movsbl %dl,%ecx
    if(c == C('D')){  // EOF
8010031a:	80 fa 04             	cmp    $0x4,%dl
8010031d:	74 14                	je     80100333 <consoleread+0xbb>
    *dst++ = c;
8010031f:	8d 46 01             	lea    0x1(%esi),%eax
80100322:	88 16                	mov    %dl,(%esi)
    --n;
80100324:	83 eb 01             	sub    $0x1,%ebx
    if(c == '\n')
80100327:	83 f9 0a             	cmp    $0xa,%ecx
8010032a:	74 11                	je     8010033d <consoleread+0xc5>
    *dst++ = c;
8010032c:	89 c6                	mov    %eax,%esi
8010032e:	e9 73 ff ff ff       	jmp    801002a6 <consoleread+0x2e>
      if(n < target){
80100333:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
80100336:	73 05                	jae    8010033d <consoleread+0xc5>
        input.r--;
80100338:	a3 a0 ff 10 80       	mov    %eax,0x8010ffa0
  release(&cons.lock);
8010033d:	83 ec 0c             	sub    $0xc,%esp
80100340:	68 20 a5 10 80       	push   $0x8010a520
80100345:	e8 f4 39 00 00       	call   80103d3e <release>
  ilock(ip);
8010034a:	89 3c 24             	mov    %edi,(%esp)
8010034d:	e8 93 12 00 00       	call   801015e5 <ilock>
  return target - n;
80100352:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100355:	29 d8                	sub    %ebx,%eax
80100357:	83 c4 10             	add    $0x10,%esp
8010035a:	eb 9e                	jmp    801002fa <consoleread+0x82>

8010035c <panic>:
{
8010035c:	f3 0f 1e fb          	endbr32 
80100360:	55                   	push   %ebp
80100361:	89 e5                	mov    %esp,%ebp
80100363:	53                   	push   %ebx
80100364:	83 ec 34             	sub    $0x34,%esp
}

static inline void
cli(void)
{
  asm volatile("cli");
80100367:	fa                   	cli    
  cons.locking = 0;
80100368:	c7 05 54 a5 10 80 00 	movl   $0x0,0x8010a554
8010036f:	00 00 00 
  cprintf("lapicid %d: panic: ", lapicid());
80100372:	e8 bd 20 00 00       	call   80102434 <lapicid>
80100377:	83 ec 08             	sub    $0x8,%esp
8010037a:	50                   	push   %eax
8010037b:	68 2d 67 10 80       	push   $0x8010672d
80100380:	e8 a4 02 00 00       	call   80100629 <cprintf>
  cprintf(s);
80100385:	83 c4 04             	add    $0x4,%esp
80100388:	ff 75 08             	pushl  0x8(%ebp)
8010038b:	e8 99 02 00 00       	call   80100629 <cprintf>
  cprintf("\n");
80100390:	c7 04 24 5f 70 10 80 	movl   $0x8010705f,(%esp)
80100397:	e8 8d 02 00 00       	call   80100629 <cprintf>
  getcallerpcs(&s, pcs);
8010039c:	83 c4 08             	add    $0x8,%esp
8010039f:	8d 45 d0             	lea    -0x30(%ebp),%eax
801003a2:	50                   	push   %eax
801003a3:	8d 45 08             	lea    0x8(%ebp),%eax
801003a6:	50                   	push   %eax
801003a7:	e8 f8 37 00 00       	call   80103ba4 <getcallerpcs>
  for(i=0; i<10; i++)
801003ac:	83 c4 10             	add    $0x10,%esp
801003af:	bb 00 00 00 00       	mov    $0x0,%ebx
801003b4:	eb 17                	jmp    801003cd <panic+0x71>
    cprintf(" %p", pcs[i]);
801003b6:	83 ec 08             	sub    $0x8,%esp
801003b9:	ff 74 9d d0          	pushl  -0x30(%ebp,%ebx,4)
801003bd:	68 41 67 10 80       	push   $0x80106741
801003c2:	e8 62 02 00 00       	call   80100629 <cprintf>
  for(i=0; i<10; i++)
801003c7:	83 c3 01             	add    $0x1,%ebx
801003ca:	83 c4 10             	add    $0x10,%esp
801003cd:	83 fb 09             	cmp    $0x9,%ebx
801003d0:	7e e4                	jle    801003b6 <panic+0x5a>
  panicked = 1; // freeze other CPU
801003d2:	c7 05 58 a5 10 80 01 	movl   $0x1,0x8010a558
801003d9:	00 00 00 
  for(;;)
801003dc:	eb fe                	jmp    801003dc <panic+0x80>

801003de <cgaputc>:
{
801003de:	55                   	push   %ebp
801003df:	89 e5                	mov    %esp,%ebp
801003e1:	57                   	push   %edi
801003e2:	56                   	push   %esi
801003e3:	53                   	push   %ebx
801003e4:	83 ec 0c             	sub    $0xc,%esp
801003e7:	89 c6                	mov    %eax,%esi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801003e9:	b9 d4 03 00 00       	mov    $0x3d4,%ecx
801003ee:	b8 0e 00 00 00       	mov    $0xe,%eax
801003f3:	89 ca                	mov    %ecx,%edx
801003f5:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801003f6:	bb d5 03 00 00       	mov    $0x3d5,%ebx
801003fb:	89 da                	mov    %ebx,%edx
801003fd:	ec                   	in     (%dx),%al
  pos = inb(CRTPORT+1) << 8;
801003fe:	0f b6 f8             	movzbl %al,%edi
80100401:	c1 e7 08             	shl    $0x8,%edi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80100404:	b8 0f 00 00 00       	mov    $0xf,%eax
80100409:	89 ca                	mov    %ecx,%edx
8010040b:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
8010040c:	89 da                	mov    %ebx,%edx
8010040e:	ec                   	in     (%dx),%al
  pos |= inb(CRTPORT+1);
8010040f:	0f b6 c8             	movzbl %al,%ecx
80100412:	09 f9                	or     %edi,%ecx
  if(c == '\n')
80100414:	83 fe 0a             	cmp    $0xa,%esi
80100417:	74 66                	je     8010047f <cgaputc+0xa1>
  else if(c == BACKSPACE){
80100419:	81 fe 00 01 00 00    	cmp    $0x100,%esi
8010041f:	74 7f                	je     801004a0 <cgaputc+0xc2>
    crt[pos++] = (c&0xff) | 0x0700;  // black on white
80100421:	89 f0                	mov    %esi,%eax
80100423:	0f b6 f0             	movzbl %al,%esi
80100426:	8d 59 01             	lea    0x1(%ecx),%ebx
80100429:	66 81 ce 00 07       	or     $0x700,%si
8010042e:	66 89 b4 09 00 80 0b 	mov    %si,-0x7ff48000(%ecx,%ecx,1)
80100435:	80 
  if(pos < 0 || pos > 25*80)
80100436:	81 fb d0 07 00 00    	cmp    $0x7d0,%ebx
8010043c:	77 6f                	ja     801004ad <cgaputc+0xcf>
  if((pos/80) >= 24){  // Scroll up.
8010043e:	81 fb 7f 07 00 00    	cmp    $0x77f,%ebx
80100444:	7f 74                	jg     801004ba <cgaputc+0xdc>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80100446:	be d4 03 00 00       	mov    $0x3d4,%esi
8010044b:	b8 0e 00 00 00       	mov    $0xe,%eax
80100450:	89 f2                	mov    %esi,%edx
80100452:	ee                   	out    %al,(%dx)
  outb(CRTPORT+1, pos>>8);
80100453:	89 d8                	mov    %ebx,%eax
80100455:	c1 f8 08             	sar    $0x8,%eax
80100458:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
8010045d:	89 ca                	mov    %ecx,%edx
8010045f:	ee                   	out    %al,(%dx)
80100460:	b8 0f 00 00 00       	mov    $0xf,%eax
80100465:	89 f2                	mov    %esi,%edx
80100467:	ee                   	out    %al,(%dx)
80100468:	89 d8                	mov    %ebx,%eax
8010046a:	89 ca                	mov    %ecx,%edx
8010046c:	ee                   	out    %al,(%dx)
  crt[pos] = ' ' | 0x0700;
8010046d:	66 c7 84 1b 00 80 0b 	movw   $0x720,-0x7ff48000(%ebx,%ebx,1)
80100474:	80 20 07 
}
80100477:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010047a:	5b                   	pop    %ebx
8010047b:	5e                   	pop    %esi
8010047c:	5f                   	pop    %edi
8010047d:	5d                   	pop    %ebp
8010047e:	c3                   	ret    
    pos += 80 - pos%80;
8010047f:	ba 67 66 66 66       	mov    $0x66666667,%edx
80100484:	89 c8                	mov    %ecx,%eax
80100486:	f7 ea                	imul   %edx
80100488:	c1 fa 05             	sar    $0x5,%edx
8010048b:	8d 04 92             	lea    (%edx,%edx,4),%eax
8010048e:	c1 e0 04             	shl    $0x4,%eax
80100491:	89 ca                	mov    %ecx,%edx
80100493:	29 c2                	sub    %eax,%edx
80100495:	bb 50 00 00 00       	mov    $0x50,%ebx
8010049a:	29 d3                	sub    %edx,%ebx
8010049c:	01 cb                	add    %ecx,%ebx
8010049e:	eb 96                	jmp    80100436 <cgaputc+0x58>
    if(pos > 0) --pos;
801004a0:	85 c9                	test   %ecx,%ecx
801004a2:	7e 05                	jle    801004a9 <cgaputc+0xcb>
801004a4:	8d 59 ff             	lea    -0x1(%ecx),%ebx
801004a7:	eb 8d                	jmp    80100436 <cgaputc+0x58>
  pos |= inb(CRTPORT+1);
801004a9:	89 cb                	mov    %ecx,%ebx
801004ab:	eb 89                	jmp    80100436 <cgaputc+0x58>
    panic("pos under/overflow");
801004ad:	83 ec 0c             	sub    $0xc,%esp
801004b0:	68 45 67 10 80       	push   $0x80106745
801004b5:	e8 a2 fe ff ff       	call   8010035c <panic>
    memmove(crt, crt+80, sizeof(crt[0])*23*80);
801004ba:	83 ec 04             	sub    $0x4,%esp
801004bd:	68 60 0e 00 00       	push   $0xe60
801004c2:	68 a0 80 0b 80       	push   $0x800b80a0
801004c7:	68 00 80 0b 80       	push   $0x800b8000
801004cc:	e8 38 39 00 00       	call   80103e09 <memmove>
    pos -= 80;
801004d1:	83 eb 50             	sub    $0x50,%ebx
    memset(crt+pos, 0, sizeof(crt[0])*(24*80 - pos));
801004d4:	b8 80 07 00 00       	mov    $0x780,%eax
801004d9:	29 d8                	sub    %ebx,%eax
801004db:	8d 94 1b 00 80 0b 80 	lea    -0x7ff48000(%ebx,%ebx,1),%edx
801004e2:	83 c4 0c             	add    $0xc,%esp
801004e5:	01 c0                	add    %eax,%eax
801004e7:	50                   	push   %eax
801004e8:	6a 00                	push   $0x0
801004ea:	52                   	push   %edx
801004eb:	e8 99 38 00 00       	call   80103d89 <memset>
801004f0:	83 c4 10             	add    $0x10,%esp
801004f3:	e9 4e ff ff ff       	jmp    80100446 <cgaputc+0x68>

801004f8 <consputc>:
  if(panicked){
801004f8:	83 3d 58 a5 10 80 00 	cmpl   $0x0,0x8010a558
801004ff:	74 03                	je     80100504 <consputc+0xc>
  asm volatile("cli");
80100501:	fa                   	cli    
    for(;;)
80100502:	eb fe                	jmp    80100502 <consputc+0xa>
{
80100504:	55                   	push   %ebp
80100505:	89 e5                	mov    %esp,%ebp
80100507:	53                   	push   %ebx
80100508:	83 ec 04             	sub    $0x4,%esp
8010050b:	89 c3                	mov    %eax,%ebx
  if(c == BACKSPACE){
8010050d:	3d 00 01 00 00       	cmp    $0x100,%eax
80100512:	74 18                	je     8010052c <consputc+0x34>
    uartputc(c);
80100514:	83 ec 0c             	sub    $0xc,%esp
80100517:	50                   	push   %eax
80100518:	e8 81 4d 00 00       	call   8010529e <uartputc>
8010051d:	83 c4 10             	add    $0x10,%esp
  cgaputc(c);
80100520:	89 d8                	mov    %ebx,%eax
80100522:	e8 b7 fe ff ff       	call   801003de <cgaputc>
}
80100527:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010052a:	c9                   	leave  
8010052b:	c3                   	ret    
    uartputc('\b'); uartputc(' '); uartputc('\b');
8010052c:	83 ec 0c             	sub    $0xc,%esp
8010052f:	6a 08                	push   $0x8
80100531:	e8 68 4d 00 00       	call   8010529e <uartputc>
80100536:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
8010053d:	e8 5c 4d 00 00       	call   8010529e <uartputc>
80100542:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
80100549:	e8 50 4d 00 00       	call   8010529e <uartputc>
8010054e:	83 c4 10             	add    $0x10,%esp
80100551:	eb cd                	jmp    80100520 <consputc+0x28>

80100553 <printint>:
{
80100553:	55                   	push   %ebp
80100554:	89 e5                	mov    %esp,%ebp
80100556:	57                   	push   %edi
80100557:	56                   	push   %esi
80100558:	53                   	push   %ebx
80100559:	83 ec 2c             	sub    $0x2c,%esp
8010055c:	89 d6                	mov    %edx,%esi
8010055e:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  if(sign && (sign = xx < 0))
80100561:	85 c9                	test   %ecx,%ecx
80100563:	74 0c                	je     80100571 <printint+0x1e>
80100565:	89 c7                	mov    %eax,%edi
80100567:	c1 ef 1f             	shr    $0x1f,%edi
8010056a:	89 7d d4             	mov    %edi,-0x2c(%ebp)
8010056d:	85 c0                	test   %eax,%eax
8010056f:	78 38                	js     801005a9 <printint+0x56>
    x = xx;
80100571:	89 c1                	mov    %eax,%ecx
  i = 0;
80100573:	bb 00 00 00 00       	mov    $0x0,%ebx
    buf[i++] = digits[x % base];
80100578:	89 c8                	mov    %ecx,%eax
8010057a:	ba 00 00 00 00       	mov    $0x0,%edx
8010057f:	f7 f6                	div    %esi
80100581:	89 df                	mov    %ebx,%edi
80100583:	83 c3 01             	add    $0x1,%ebx
80100586:	0f b6 92 70 67 10 80 	movzbl -0x7fef9890(%edx),%edx
8010058d:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
  }while((x /= base) != 0);
80100591:	89 ca                	mov    %ecx,%edx
80100593:	89 c1                	mov    %eax,%ecx
80100595:	39 d6                	cmp    %edx,%esi
80100597:	76 df                	jbe    80100578 <printint+0x25>
  if(sign)
80100599:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
8010059d:	74 1a                	je     801005b9 <printint+0x66>
    buf[i++] = '-';
8010059f:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
801005a4:	8d 5f 02             	lea    0x2(%edi),%ebx
801005a7:	eb 10                	jmp    801005b9 <printint+0x66>
    x = -xx;
801005a9:	f7 d8                	neg    %eax
801005ab:	89 c1                	mov    %eax,%ecx
801005ad:	eb c4                	jmp    80100573 <printint+0x20>
    consputc(buf[i]);
801005af:	0f be 44 1d d8       	movsbl -0x28(%ebp,%ebx,1),%eax
801005b4:	e8 3f ff ff ff       	call   801004f8 <consputc>
  while(--i >= 0)
801005b9:	83 eb 01             	sub    $0x1,%ebx
801005bc:	79 f1                	jns    801005af <printint+0x5c>
}
801005be:	83 c4 2c             	add    $0x2c,%esp
801005c1:	5b                   	pop    %ebx
801005c2:	5e                   	pop    %esi
801005c3:	5f                   	pop    %edi
801005c4:	5d                   	pop    %ebp
801005c5:	c3                   	ret    

801005c6 <consolewrite>:

int
consolewrite(struct inode *ip, char *buf, int n)
{
801005c6:	f3 0f 1e fb          	endbr32 
801005ca:	55                   	push   %ebp
801005cb:	89 e5                	mov    %esp,%ebp
801005cd:	57                   	push   %edi
801005ce:	56                   	push   %esi
801005cf:	53                   	push   %ebx
801005d0:	83 ec 18             	sub    $0x18,%esp
801005d3:	8b 7d 0c             	mov    0xc(%ebp),%edi
801005d6:	8b 75 10             	mov    0x10(%ebp),%esi
  int i;

  iunlock(ip);
801005d9:	ff 75 08             	pushl  0x8(%ebp)
801005dc:	e8 ca 10 00 00       	call   801016ab <iunlock>
  acquire(&cons.lock);
801005e1:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
801005e8:	e8 e8 36 00 00       	call   80103cd5 <acquire>
  for(i = 0; i < n; i++)
801005ed:	83 c4 10             	add    $0x10,%esp
801005f0:	bb 00 00 00 00       	mov    $0x0,%ebx
801005f5:	39 f3                	cmp    %esi,%ebx
801005f7:	7d 0e                	jge    80100607 <consolewrite+0x41>
    consputc(buf[i] & 0xff);
801005f9:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
801005fd:	e8 f6 fe ff ff       	call   801004f8 <consputc>
  for(i = 0; i < n; i++)
80100602:	83 c3 01             	add    $0x1,%ebx
80100605:	eb ee                	jmp    801005f5 <consolewrite+0x2f>
  release(&cons.lock);
80100607:	83 ec 0c             	sub    $0xc,%esp
8010060a:	68 20 a5 10 80       	push   $0x8010a520
8010060f:	e8 2a 37 00 00       	call   80103d3e <release>
  ilock(ip);
80100614:	83 c4 04             	add    $0x4,%esp
80100617:	ff 75 08             	pushl  0x8(%ebp)
8010061a:	e8 c6 0f 00 00       	call   801015e5 <ilock>

  return n;
}
8010061f:	89 f0                	mov    %esi,%eax
80100621:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100624:	5b                   	pop    %ebx
80100625:	5e                   	pop    %esi
80100626:	5f                   	pop    %edi
80100627:	5d                   	pop    %ebp
80100628:	c3                   	ret    

80100629 <cprintf>:
{
80100629:	f3 0f 1e fb          	endbr32 
8010062d:	55                   	push   %ebp
8010062e:	89 e5                	mov    %esp,%ebp
80100630:	57                   	push   %edi
80100631:	56                   	push   %esi
80100632:	53                   	push   %ebx
80100633:	83 ec 1c             	sub    $0x1c,%esp
  locking = cons.locking;
80100636:	a1 54 a5 10 80       	mov    0x8010a554,%eax
8010063b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(locking)
8010063e:	85 c0                	test   %eax,%eax
80100640:	75 10                	jne    80100652 <cprintf+0x29>
  if (fmt == 0)
80100642:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80100646:	74 1c                	je     80100664 <cprintf+0x3b>
  argp = (uint*)(void*)(&fmt + 1);
80100648:	8d 7d 0c             	lea    0xc(%ebp),%edi
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
8010064b:	be 00 00 00 00       	mov    $0x0,%esi
80100650:	eb 27                	jmp    80100679 <cprintf+0x50>
    acquire(&cons.lock);
80100652:	83 ec 0c             	sub    $0xc,%esp
80100655:	68 20 a5 10 80       	push   $0x8010a520
8010065a:	e8 76 36 00 00       	call   80103cd5 <acquire>
8010065f:	83 c4 10             	add    $0x10,%esp
80100662:	eb de                	jmp    80100642 <cprintf+0x19>
    panic("null fmt");
80100664:	83 ec 0c             	sub    $0xc,%esp
80100667:	68 5f 67 10 80       	push   $0x8010675f
8010066c:	e8 eb fc ff ff       	call   8010035c <panic>
      consputc(c);
80100671:	e8 82 fe ff ff       	call   801004f8 <consputc>
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
80100676:	83 c6 01             	add    $0x1,%esi
80100679:	8b 55 08             	mov    0x8(%ebp),%edx
8010067c:	0f b6 04 32          	movzbl (%edx,%esi,1),%eax
80100680:	85 c0                	test   %eax,%eax
80100682:	0f 84 b1 00 00 00    	je     80100739 <cprintf+0x110>
    if(c != '%'){
80100688:	83 f8 25             	cmp    $0x25,%eax
8010068b:	75 e4                	jne    80100671 <cprintf+0x48>
    c = fmt[++i] & 0xff;
8010068d:	83 c6 01             	add    $0x1,%esi
80100690:	0f b6 1c 32          	movzbl (%edx,%esi,1),%ebx
    if(c == 0)
80100694:	85 db                	test   %ebx,%ebx
80100696:	0f 84 9d 00 00 00    	je     80100739 <cprintf+0x110>
    switch(c){
8010069c:	83 fb 70             	cmp    $0x70,%ebx
8010069f:	74 2e                	je     801006cf <cprintf+0xa6>
801006a1:	7f 22                	jg     801006c5 <cprintf+0x9c>
801006a3:	83 fb 25             	cmp    $0x25,%ebx
801006a6:	74 6c                	je     80100714 <cprintf+0xeb>
801006a8:	83 fb 64             	cmp    $0x64,%ebx
801006ab:	75 76                	jne    80100723 <cprintf+0xfa>
      printint(*argp++, 10, 1);
801006ad:	8d 5f 04             	lea    0x4(%edi),%ebx
801006b0:	8b 07                	mov    (%edi),%eax
801006b2:	b9 01 00 00 00       	mov    $0x1,%ecx
801006b7:	ba 0a 00 00 00       	mov    $0xa,%edx
801006bc:	e8 92 fe ff ff       	call   80100553 <printint>
801006c1:	89 df                	mov    %ebx,%edi
      break;
801006c3:	eb b1                	jmp    80100676 <cprintf+0x4d>
    switch(c){
801006c5:	83 fb 73             	cmp    $0x73,%ebx
801006c8:	74 1d                	je     801006e7 <cprintf+0xbe>
801006ca:	83 fb 78             	cmp    $0x78,%ebx
801006cd:	75 54                	jne    80100723 <cprintf+0xfa>
      printint(*argp++, 16, 0);
801006cf:	8d 5f 04             	lea    0x4(%edi),%ebx
801006d2:	8b 07                	mov    (%edi),%eax
801006d4:	b9 00 00 00 00       	mov    $0x0,%ecx
801006d9:	ba 10 00 00 00       	mov    $0x10,%edx
801006de:	e8 70 fe ff ff       	call   80100553 <printint>
801006e3:	89 df                	mov    %ebx,%edi
      break;
801006e5:	eb 8f                	jmp    80100676 <cprintf+0x4d>
      if((s = (char*)*argp++) == 0)
801006e7:	8d 47 04             	lea    0x4(%edi),%eax
801006ea:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801006ed:	8b 1f                	mov    (%edi),%ebx
801006ef:	85 db                	test   %ebx,%ebx
801006f1:	75 05                	jne    801006f8 <cprintf+0xcf>
        s = "(null)";
801006f3:	bb 58 67 10 80       	mov    $0x80106758,%ebx
      for(; *s; s++)
801006f8:	0f b6 03             	movzbl (%ebx),%eax
801006fb:	84 c0                	test   %al,%al
801006fd:	74 0d                	je     8010070c <cprintf+0xe3>
        consputc(*s);
801006ff:	0f be c0             	movsbl %al,%eax
80100702:	e8 f1 fd ff ff       	call   801004f8 <consputc>
      for(; *s; s++)
80100707:	83 c3 01             	add    $0x1,%ebx
8010070a:	eb ec                	jmp    801006f8 <cprintf+0xcf>
      if((s = (char*)*argp++) == 0)
8010070c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
8010070f:	e9 62 ff ff ff       	jmp    80100676 <cprintf+0x4d>
      consputc('%');
80100714:	b8 25 00 00 00       	mov    $0x25,%eax
80100719:	e8 da fd ff ff       	call   801004f8 <consputc>
      break;
8010071e:	e9 53 ff ff ff       	jmp    80100676 <cprintf+0x4d>
      consputc('%');
80100723:	b8 25 00 00 00       	mov    $0x25,%eax
80100728:	e8 cb fd ff ff       	call   801004f8 <consputc>
      consputc(c);
8010072d:	89 d8                	mov    %ebx,%eax
8010072f:	e8 c4 fd ff ff       	call   801004f8 <consputc>
      break;
80100734:	e9 3d ff ff ff       	jmp    80100676 <cprintf+0x4d>
  if(locking)
80100739:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
8010073d:	75 08                	jne    80100747 <cprintf+0x11e>
}
8010073f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100742:	5b                   	pop    %ebx
80100743:	5e                   	pop    %esi
80100744:	5f                   	pop    %edi
80100745:	5d                   	pop    %ebp
80100746:	c3                   	ret    
    release(&cons.lock);
80100747:	83 ec 0c             	sub    $0xc,%esp
8010074a:	68 20 a5 10 80       	push   $0x8010a520
8010074f:	e8 ea 35 00 00       	call   80103d3e <release>
80100754:	83 c4 10             	add    $0x10,%esp
}
80100757:	eb e6                	jmp    8010073f <cprintf+0x116>

80100759 <consoleintr>:
{
80100759:	f3 0f 1e fb          	endbr32 
8010075d:	55                   	push   %ebp
8010075e:	89 e5                	mov    %esp,%ebp
80100760:	57                   	push   %edi
80100761:	56                   	push   %esi
80100762:	53                   	push   %ebx
80100763:	83 ec 18             	sub    $0x18,%esp
80100766:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&cons.lock);
80100769:	68 20 a5 10 80       	push   $0x8010a520
8010076e:	e8 62 35 00 00       	call   80103cd5 <acquire>
  while((c = getc()) >= 0){
80100773:	83 c4 10             	add    $0x10,%esp
  int c, doprocdump = 0;
80100776:	be 00 00 00 00       	mov    $0x0,%esi
  while((c = getc()) >= 0){
8010077b:	eb 13                	jmp    80100790 <consoleintr+0x37>
    switch(c){
8010077d:	83 ff 08             	cmp    $0x8,%edi
80100780:	0f 84 d9 00 00 00    	je     8010085f <consoleintr+0x106>
80100786:	83 ff 10             	cmp    $0x10,%edi
80100789:	75 25                	jne    801007b0 <consoleintr+0x57>
8010078b:	be 01 00 00 00       	mov    $0x1,%esi
  while((c = getc()) >= 0){
80100790:	ff d3                	call   *%ebx
80100792:	89 c7                	mov    %eax,%edi
80100794:	85 c0                	test   %eax,%eax
80100796:	0f 88 f5 00 00 00    	js     80100891 <consoleintr+0x138>
    switch(c){
8010079c:	83 ff 15             	cmp    $0x15,%edi
8010079f:	0f 84 93 00 00 00    	je     80100838 <consoleintr+0xdf>
801007a5:	7e d6                	jle    8010077d <consoleintr+0x24>
801007a7:	83 ff 7f             	cmp    $0x7f,%edi
801007aa:	0f 84 af 00 00 00    	je     8010085f <consoleintr+0x106>
      if(c != 0 && input.e-input.r < INPUT_BUF){
801007b0:	85 ff                	test   %edi,%edi
801007b2:	74 dc                	je     80100790 <consoleintr+0x37>
801007b4:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
801007b9:	89 c2                	mov    %eax,%edx
801007bb:	2b 15 a0 ff 10 80    	sub    0x8010ffa0,%edx
801007c1:	83 fa 7f             	cmp    $0x7f,%edx
801007c4:	77 ca                	ja     80100790 <consoleintr+0x37>
        c = (c == '\r') ? '\n' : c;
801007c6:	83 ff 0d             	cmp    $0xd,%edi
801007c9:	0f 84 b8 00 00 00    	je     80100887 <consoleintr+0x12e>
        input.buf[input.e++ % INPUT_BUF] = c;
801007cf:	8d 50 01             	lea    0x1(%eax),%edx
801007d2:	89 15 a8 ff 10 80    	mov    %edx,0x8010ffa8
801007d8:	83 e0 7f             	and    $0x7f,%eax
801007db:	89 f9                	mov    %edi,%ecx
801007dd:	88 88 20 ff 10 80    	mov    %cl,-0x7fef00e0(%eax)
        consputc(c);
801007e3:	89 f8                	mov    %edi,%eax
801007e5:	e8 0e fd ff ff       	call   801004f8 <consputc>
        if(c == '\n' || c == C('D') || input.e == input.r+INPUT_BUF){
801007ea:	83 ff 0a             	cmp    $0xa,%edi
801007ed:	0f 94 c2             	sete   %dl
801007f0:	83 ff 04             	cmp    $0x4,%edi
801007f3:	0f 94 c0             	sete   %al
801007f6:	08 c2                	or     %al,%dl
801007f8:	75 10                	jne    8010080a <consoleintr+0xb1>
801007fa:	a1 a0 ff 10 80       	mov    0x8010ffa0,%eax
801007ff:	83 e8 80             	sub    $0xffffff80,%eax
80100802:	39 05 a8 ff 10 80    	cmp    %eax,0x8010ffa8
80100808:	75 86                	jne    80100790 <consoleintr+0x37>
          input.w = input.e;
8010080a:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
8010080f:	a3 a4 ff 10 80       	mov    %eax,0x8010ffa4
          wakeup(&input.r);
80100814:	83 ec 0c             	sub    $0xc,%esp
80100817:	68 a0 ff 10 80       	push   $0x8010ffa0
8010081c:	e8 ee 30 00 00       	call   8010390f <wakeup>
80100821:	83 c4 10             	add    $0x10,%esp
80100824:	e9 67 ff ff ff       	jmp    80100790 <consoleintr+0x37>
        input.e--;
80100829:	a3 a8 ff 10 80       	mov    %eax,0x8010ffa8
        consputc(BACKSPACE);
8010082e:	b8 00 01 00 00       	mov    $0x100,%eax
80100833:	e8 c0 fc ff ff       	call   801004f8 <consputc>
      while(input.e != input.w &&
80100838:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
8010083d:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
80100843:	0f 84 47 ff ff ff    	je     80100790 <consoleintr+0x37>
            input.buf[(input.e-1) % INPUT_BUF] != '\n'){
80100849:	83 e8 01             	sub    $0x1,%eax
8010084c:	89 c2                	mov    %eax,%edx
8010084e:	83 e2 7f             	and    $0x7f,%edx
      while(input.e != input.w &&
80100851:	80 ba 20 ff 10 80 0a 	cmpb   $0xa,-0x7fef00e0(%edx)
80100858:	75 cf                	jne    80100829 <consoleintr+0xd0>
8010085a:	e9 31 ff ff ff       	jmp    80100790 <consoleintr+0x37>
      if(input.e != input.w){
8010085f:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
80100864:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
8010086a:	0f 84 20 ff ff ff    	je     80100790 <consoleintr+0x37>
        input.e--;
80100870:	83 e8 01             	sub    $0x1,%eax
80100873:	a3 a8 ff 10 80       	mov    %eax,0x8010ffa8
        consputc(BACKSPACE);
80100878:	b8 00 01 00 00       	mov    $0x100,%eax
8010087d:	e8 76 fc ff ff       	call   801004f8 <consputc>
80100882:	e9 09 ff ff ff       	jmp    80100790 <consoleintr+0x37>
        c = (c == '\r') ? '\n' : c;
80100887:	bf 0a 00 00 00       	mov    $0xa,%edi
8010088c:	e9 3e ff ff ff       	jmp    801007cf <consoleintr+0x76>
  release(&cons.lock);
80100891:	83 ec 0c             	sub    $0xc,%esp
80100894:	68 20 a5 10 80       	push   $0x8010a520
80100899:	e8 a0 34 00 00       	call   80103d3e <release>
  if(doprocdump) {
8010089e:	83 c4 10             	add    $0x10,%esp
801008a1:	85 f6                	test   %esi,%esi
801008a3:	75 08                	jne    801008ad <consoleintr+0x154>
}
801008a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
801008a8:	5b                   	pop    %ebx
801008a9:	5e                   	pop    %esi
801008aa:	5f                   	pop    %edi
801008ab:	5d                   	pop    %ebp
801008ac:	c3                   	ret    
    procdump();  // now call procdump() wo. cons.lock held
801008ad:	e8 02 31 00 00       	call   801039b4 <procdump>
}
801008b2:	eb f1                	jmp    801008a5 <consoleintr+0x14c>

801008b4 <consoleinit>:

void
consoleinit(void)
{
801008b4:	f3 0f 1e fb          	endbr32 
801008b8:	55                   	push   %ebp
801008b9:	89 e5                	mov    %esp,%ebp
801008bb:	83 ec 10             	sub    $0x10,%esp
  initlock(&cons.lock, "console");
801008be:	68 68 67 10 80       	push   $0x80106768
801008c3:	68 20 a5 10 80       	push   $0x8010a520
801008c8:	e8 b8 32 00 00       	call   80103b85 <initlock>

  devsw[CONSOLE].write = consolewrite;
801008cd:	c7 05 6c 09 11 80 c6 	movl   $0x801005c6,0x8011096c
801008d4:	05 10 80 
  devsw[CONSOLE].read = consoleread;
801008d7:	c7 05 68 09 11 80 78 	movl   $0x80100278,0x80110968
801008de:	02 10 80 
  cons.locking = 1;
801008e1:	c7 05 54 a5 10 80 01 	movl   $0x1,0x8010a554
801008e8:	00 00 00 

  ioapicenable(IRQ_KBD, 0);
801008eb:	83 c4 08             	add    $0x8,%esp
801008ee:	6a 00                	push   $0x0
801008f0:	6a 01                	push   $0x1
801008f2:	e8 1f 17 00 00       	call   80102016 <ioapicenable>
}
801008f7:	83 c4 10             	add    $0x10,%esp
801008fa:	c9                   	leave  
801008fb:	c3                   	ret    

801008fc <exec>:
#include "x86.h"
#include "elf.h"

int
exec(char *path, char **argv)
{
801008fc:	f3 0f 1e fb          	endbr32 
80100900:	55                   	push   %ebp
80100901:	89 e5                	mov    %esp,%ebp
80100903:	57                   	push   %edi
80100904:	56                   	push   %esi
80100905:	53                   	push   %ebx
80100906:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
  uint argc, sz, sp, ustack[3+MAXARG+1];
  struct elfhdr elf;
  struct inode *ip;
  struct proghdr ph;
  pde_t *pgdir, *oldpgdir;
  struct proc *curproc = myproc();
8010090c:	e8 cf 29 00 00       	call   801032e0 <myproc>
80100911:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)

  begin_op();
80100917:	e8 4e 1f 00 00       	call   8010286a <begin_op>

  if((ip = namei(path)) == 0){
8010091c:	83 ec 0c             	sub    $0xc,%esp
8010091f:	ff 75 08             	pushl  0x8(%ebp)
80100922:	e8 43 13 00 00       	call   80101c6a <namei>
80100927:	83 c4 10             	add    $0x10,%esp
8010092a:	85 c0                	test   %eax,%eax
8010092c:	74 56                	je     80100984 <exec+0x88>
8010092e:	89 c3                	mov    %eax,%ebx
    end_op();
    cprintf("exec: fail\n");
    return -1;
  }
  ilock(ip);
80100930:	83 ec 0c             	sub    $0xc,%esp
80100933:	50                   	push   %eax
80100934:	e8 ac 0c 00 00       	call   801015e5 <ilock>
  pgdir = 0;

  // Check ELF header
  if(readi(ip, (char*)&elf, 0, sizeof(elf)) != sizeof(elf))
80100939:	6a 34                	push   $0x34
8010093b:	6a 00                	push   $0x0
8010093d:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
80100943:	50                   	push   %eax
80100944:	53                   	push   %ebx
80100945:	e8 a1 0e 00 00       	call   801017eb <readi>
8010094a:	83 c4 20             	add    $0x20,%esp
8010094d:	83 f8 34             	cmp    $0x34,%eax
80100950:	75 0c                	jne    8010095e <exec+0x62>
    goto bad;
  if(elf.magic != ELF_MAGIC)
80100952:	81 bd 24 ff ff ff 7f 	cmpl   $0x464c457f,-0xdc(%ebp)
80100959:	45 4c 46 
8010095c:	74 42                	je     801009a0 <exec+0xa4>
  return 0;

 bad:
  if(pgdir)
    freevm(pgdir);
  if(ip){
8010095e:	85 db                	test   %ebx,%ebx
80100960:	0f 84 d6 02 00 00    	je     80100c3c <exec+0x340>
    iunlockput(ip);
80100966:	83 ec 0c             	sub    $0xc,%esp
80100969:	53                   	push   %ebx
8010096a:	e8 29 0e 00 00       	call   80101798 <iunlockput>
    end_op();
8010096f:	e8 74 1f 00 00       	call   801028e8 <end_op>
80100974:	83 c4 10             	add    $0x10,%esp
  }
  return -1;
80100977:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010097c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010097f:	5b                   	pop    %ebx
80100980:	5e                   	pop    %esi
80100981:	5f                   	pop    %edi
80100982:	5d                   	pop    %ebp
80100983:	c3                   	ret    
    end_op();
80100984:	e8 5f 1f 00 00       	call   801028e8 <end_op>
    cprintf("exec: fail\n");
80100989:	83 ec 0c             	sub    $0xc,%esp
8010098c:	68 81 67 10 80       	push   $0x80106781
80100991:	e8 93 fc ff ff       	call   80100629 <cprintf>
    return -1;
80100996:	83 c4 10             	add    $0x10,%esp
80100999:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010099e:	eb dc                	jmp    8010097c <exec+0x80>
  if((pgdir = setupkvm()) == 0)
801009a0:	e8 db 5a 00 00       	call   80106480 <setupkvm>
801009a5:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
801009ab:	85 c0                	test   %eax,%eax
801009ad:	0f 84 16 01 00 00    	je     80100ac9 <exec+0x1cd>
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
801009b3:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
  sz = 0;
801009b9:	c7 85 f0 fe ff ff 00 	movl   $0x0,-0x110(%ebp)
801009c0:	00 00 00 
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
801009c3:	be 00 00 00 00       	mov    $0x0,%esi
801009c8:	eb 06                	jmp    801009d0 <exec+0xd4>
801009ca:	83 c6 01             	add    $0x1,%esi
801009cd:	8d 47 20             	lea    0x20(%edi),%eax
801009d0:	0f b7 95 50 ff ff ff 	movzwl -0xb0(%ebp),%edx
801009d7:	39 f2                	cmp    %esi,%edx
801009d9:	0f 8e a1 00 00 00    	jle    80100a80 <exec+0x184>
    if(readi(ip, (char*)&ph, off, sizeof(ph)) != sizeof(ph))
801009df:	89 c7                	mov    %eax,%edi
801009e1:	6a 20                	push   $0x20
801009e3:	50                   	push   %eax
801009e4:	8d 85 04 ff ff ff    	lea    -0xfc(%ebp),%eax
801009ea:	50                   	push   %eax
801009eb:	53                   	push   %ebx
801009ec:	e8 fa 0d 00 00       	call   801017eb <readi>
801009f1:	83 c4 10             	add    $0x10,%esp
801009f4:	83 f8 20             	cmp    $0x20,%eax
801009f7:	0f 85 cc 00 00 00    	jne    80100ac9 <exec+0x1cd>
    if(ph.type != ELF_PROG_LOAD || ph.memsz == 0)
801009fd:	83 bd 04 ff ff ff 01 	cmpl   $0x1,-0xfc(%ebp)
80100a04:	75 c4                	jne    801009ca <exec+0xce>
80100a06:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
80100a0c:	85 c0                	test   %eax,%eax
80100a0e:	74 ba                	je     801009ca <exec+0xce>
    if(ph.memsz < ph.filesz)
80100a10:	3b 85 14 ff ff ff    	cmp    -0xec(%ebp),%eax
80100a16:	0f 82 ad 00 00 00    	jb     80100ac9 <exec+0x1cd>
    if(ph.vaddr + ph.memsz < ph.vaddr)
80100a1c:	03 85 0c ff ff ff    	add    -0xf4(%ebp),%eax
80100a22:	0f 82 a1 00 00 00    	jb     80100ac9 <exec+0x1cd>
    if((sz = allocuvm(pgdir, sz, ph.vaddr + ph.memsz)) == 0)
80100a28:	83 ec 04             	sub    $0x4,%esp
80100a2b:	50                   	push   %eax
80100a2c:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100a32:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100a38:	e8 e2 58 00 00       	call   8010631f <allocuvm>
80100a3d:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100a43:	83 c4 10             	add    $0x10,%esp
80100a46:	85 c0                	test   %eax,%eax
80100a48:	74 7f                	je     80100ac9 <exec+0x1cd>
    if(ph.vaddr % PGSIZE != 0)
80100a4a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
80100a50:	a9 ff 0f 00 00       	test   $0xfff,%eax
80100a55:	75 72                	jne    80100ac9 <exec+0x1cd>
    if(loaduvm(pgdir, (char*)ph.vaddr, ip, ph.off, ph.filesz) < 0)
80100a57:	83 ec 0c             	sub    $0xc,%esp
80100a5a:	ff b5 14 ff ff ff    	pushl  -0xec(%ebp)
80100a60:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
80100a66:	53                   	push   %ebx
80100a67:	50                   	push   %eax
80100a68:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100a6e:	e8 77 57 00 00       	call   801061ea <loaduvm>
80100a73:	83 c4 20             	add    $0x20,%esp
80100a76:	85 c0                	test   %eax,%eax
80100a78:	0f 89 4c ff ff ff    	jns    801009ca <exec+0xce>
80100a7e:	eb 49                	jmp    80100ac9 <exec+0x1cd>
  iunlockput(ip);
80100a80:	83 ec 0c             	sub    $0xc,%esp
80100a83:	53                   	push   %ebx
80100a84:	e8 0f 0d 00 00       	call   80101798 <iunlockput>
  end_op();
80100a89:	e8 5a 1e 00 00       	call   801028e8 <end_op>
  sz = PGROUNDUP(sz);
80100a8e:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100a94:	05 ff 0f 00 00       	add    $0xfff,%eax
80100a99:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  if((sz = allocuvm(pgdir, sz, sz + 2*PGSIZE)) == 0)
80100a9e:	83 c4 0c             	add    $0xc,%esp
80100aa1:	8d 90 00 20 00 00    	lea    0x2000(%eax),%edx
80100aa7:	52                   	push   %edx
80100aa8:	50                   	push   %eax
80100aa9:	8b b5 f4 fe ff ff    	mov    -0x10c(%ebp),%esi
80100aaf:	56                   	push   %esi
80100ab0:	e8 6a 58 00 00       	call   8010631f <allocuvm>
80100ab5:	89 c7                	mov    %eax,%edi
80100ab7:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100abd:	83 c4 10             	add    $0x10,%esp
80100ac0:	85 c0                	test   %eax,%eax
80100ac2:	75 24                	jne    80100ae8 <exec+0x1ec>
  ip = 0;
80100ac4:	bb 00 00 00 00       	mov    $0x0,%ebx
  if(pgdir)
80100ac9:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
80100acf:	85 c0                	test   %eax,%eax
80100ad1:	0f 84 87 fe ff ff    	je     8010095e <exec+0x62>
    freevm(pgdir);
80100ad7:	83 ec 0c             	sub    $0xc,%esp
80100ada:	50                   	push   %eax
80100adb:	e8 2c 59 00 00       	call   8010640c <freevm>
80100ae0:	83 c4 10             	add    $0x10,%esp
80100ae3:	e9 76 fe ff ff       	jmp    8010095e <exec+0x62>
  clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
80100ae8:	8d 80 00 e0 ff ff    	lea    -0x2000(%eax),%eax
80100aee:	83 ec 08             	sub    $0x8,%esp
80100af1:	50                   	push   %eax
80100af2:	56                   	push   %esi
80100af3:	e8 15 5a 00 00       	call   8010650d <clearpteu>
  for(argc = 0; argv[argc]; argc++) {
80100af8:	83 c4 10             	add    $0x10,%esp
80100afb:	be 00 00 00 00       	mov    $0x0,%esi
80100b00:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b03:	8d 1c b0             	lea    (%eax,%esi,4),%ebx
80100b06:	8b 03                	mov    (%ebx),%eax
80100b08:	85 c0                	test   %eax,%eax
80100b0a:	74 4d                	je     80100b59 <exec+0x25d>
    if(argc >= MAXARG)
80100b0c:	83 fe 1f             	cmp    $0x1f,%esi
80100b0f:	0f 87 13 01 00 00    	ja     80100c28 <exec+0x32c>
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
80100b15:	83 ec 0c             	sub    $0xc,%esp
80100b18:	50                   	push   %eax
80100b19:	e8 2c 34 00 00       	call   80103f4a <strlen>
80100b1e:	29 c7                	sub    %eax,%edi
80100b20:	83 ef 01             	sub    $0x1,%edi
80100b23:	83 e7 fc             	and    $0xfffffffc,%edi
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
80100b26:	83 c4 04             	add    $0x4,%esp
80100b29:	ff 33                	pushl  (%ebx)
80100b2b:	e8 1a 34 00 00       	call   80103f4a <strlen>
80100b30:	83 c0 01             	add    $0x1,%eax
80100b33:	50                   	push   %eax
80100b34:	ff 33                	pushl  (%ebx)
80100b36:	57                   	push   %edi
80100b37:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100b3d:	e8 25 5b 00 00       	call   80106667 <copyout>
80100b42:	83 c4 20             	add    $0x20,%esp
80100b45:	85 c0                	test   %eax,%eax
80100b47:	0f 88 e5 00 00 00    	js     80100c32 <exec+0x336>
    ustack[3+argc] = sp;
80100b4d:	89 bc b5 64 ff ff ff 	mov    %edi,-0x9c(%ebp,%esi,4)
  for(argc = 0; argv[argc]; argc++) {
80100b54:	83 c6 01             	add    $0x1,%esi
80100b57:	eb a7                	jmp    80100b00 <exec+0x204>
80100b59:	89 f9                	mov    %edi,%ecx
80100b5b:	89 c3                	mov    %eax,%ebx
  ustack[3+argc] = 0;
80100b5d:	c7 84 b5 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%esi,4)
80100b64:	00 00 00 00 
  ustack[0] = 0xffffffff;  // fake return PC
80100b68:	c7 85 58 ff ff ff ff 	movl   $0xffffffff,-0xa8(%ebp)
80100b6f:	ff ff ff 
  ustack[1] = argc;
80100b72:	89 b5 5c ff ff ff    	mov    %esi,-0xa4(%ebp)
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100b78:	8d 04 b5 04 00 00 00 	lea    0x4(,%esi,4),%eax
80100b7f:	89 fa                	mov    %edi,%edx
80100b81:	29 c2                	sub    %eax,%edx
80100b83:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
  sp -= (3+argc+1) * 4;
80100b89:	8d 04 b5 10 00 00 00 	lea    0x10(,%esi,4),%eax
80100b90:	29 c1                	sub    %eax,%ecx
80100b92:	89 ce                	mov    %ecx,%esi
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100b94:	50                   	push   %eax
80100b95:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
80100b9b:	50                   	push   %eax
80100b9c:	51                   	push   %ecx
80100b9d:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100ba3:	e8 bf 5a 00 00       	call   80106667 <copyout>
80100ba8:	83 c4 10             	add    $0x10,%esp
80100bab:	85 c0                	test   %eax,%eax
80100bad:	0f 88 16 ff ff ff    	js     80100ac9 <exec+0x1cd>
  for(last=s=path; *s; s++)
80100bb3:	8b 55 08             	mov    0x8(%ebp),%edx
80100bb6:	89 d0                	mov    %edx,%eax
80100bb8:	eb 03                	jmp    80100bbd <exec+0x2c1>
80100bba:	83 c0 01             	add    $0x1,%eax
80100bbd:	0f b6 08             	movzbl (%eax),%ecx
80100bc0:	84 c9                	test   %cl,%cl
80100bc2:	74 0a                	je     80100bce <exec+0x2d2>
    if(*s == '/')
80100bc4:	80 f9 2f             	cmp    $0x2f,%cl
80100bc7:	75 f1                	jne    80100bba <exec+0x2be>
      last = s+1;
80100bc9:	8d 50 01             	lea    0x1(%eax),%edx
80100bcc:	eb ec                	jmp    80100bba <exec+0x2be>
  safestrcpy(curproc->name, last, sizeof(curproc->name));
80100bce:	8b bd ec fe ff ff    	mov    -0x114(%ebp),%edi
80100bd4:	89 f8                	mov    %edi,%eax
80100bd6:	83 c0 6c             	add    $0x6c,%eax
80100bd9:	83 ec 04             	sub    $0x4,%esp
80100bdc:	6a 10                	push   $0x10
80100bde:	52                   	push   %edx
80100bdf:	50                   	push   %eax
80100be0:	e8 24 33 00 00       	call   80103f09 <safestrcpy>
  oldpgdir = curproc->pgdir;
80100be5:	8b 5f 04             	mov    0x4(%edi),%ebx
  curproc->pgdir = pgdir;
80100be8:	8b 8d f4 fe ff ff    	mov    -0x10c(%ebp),%ecx
80100bee:	89 4f 04             	mov    %ecx,0x4(%edi)
  curproc->sz = sz;
80100bf1:	8b 8d f0 fe ff ff    	mov    -0x110(%ebp),%ecx
80100bf7:	89 0f                	mov    %ecx,(%edi)
  curproc->tf->eip = elf.entry;  // main
80100bf9:	8b 47 18             	mov    0x18(%edi),%eax
80100bfc:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
80100c02:	89 50 38             	mov    %edx,0x38(%eax)
  curproc->tf->esp = sp;
80100c05:	8b 47 18             	mov    0x18(%edi),%eax
80100c08:	89 70 44             	mov    %esi,0x44(%eax)
  switchuvm(curproc);
80100c0b:	89 3c 24             	mov    %edi,(%esp)
80100c0e:	e8 4e 54 00 00       	call   80106061 <switchuvm>
  freevm(oldpgdir);
80100c13:	89 1c 24             	mov    %ebx,(%esp)
80100c16:	e8 f1 57 00 00       	call   8010640c <freevm>
  return 0;
80100c1b:	83 c4 10             	add    $0x10,%esp
80100c1e:	b8 00 00 00 00       	mov    $0x0,%eax
80100c23:	e9 54 fd ff ff       	jmp    8010097c <exec+0x80>
  ip = 0;
80100c28:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c2d:	e9 97 fe ff ff       	jmp    80100ac9 <exec+0x1cd>
80100c32:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c37:	e9 8d fe ff ff       	jmp    80100ac9 <exec+0x1cd>
  return -1;
80100c3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100c41:	e9 36 fd ff ff       	jmp    8010097c <exec+0x80>

80100c46 <fileinit>:
  struct file file[NFILE];
} ftable;

void
fileinit(void)
{
80100c46:	f3 0f 1e fb          	endbr32 
80100c4a:	55                   	push   %ebp
80100c4b:	89 e5                	mov    %esp,%ebp
80100c4d:	83 ec 10             	sub    $0x10,%esp
  initlock(&ftable.lock, "ftable");
80100c50:	68 8d 67 10 80       	push   $0x8010678d
80100c55:	68 c0 ff 10 80       	push   $0x8010ffc0
80100c5a:	e8 26 2f 00 00       	call   80103b85 <initlock>
}
80100c5f:	83 c4 10             	add    $0x10,%esp
80100c62:	c9                   	leave  
80100c63:	c3                   	ret    

80100c64 <filealloc>:

// Allocate a file structure.
struct file*
filealloc(void)
{
80100c64:	f3 0f 1e fb          	endbr32 
80100c68:	55                   	push   %ebp
80100c69:	89 e5                	mov    %esp,%ebp
80100c6b:	53                   	push   %ebx
80100c6c:	83 ec 10             	sub    $0x10,%esp
  struct file *f;

  acquire(&ftable.lock);
80100c6f:	68 c0 ff 10 80       	push   $0x8010ffc0
80100c74:	e8 5c 30 00 00       	call   80103cd5 <acquire>
  for(f = ftable.file; f < ftable.file + NFILE; f++){
80100c79:	83 c4 10             	add    $0x10,%esp
80100c7c:	bb f4 ff 10 80       	mov    $0x8010fff4,%ebx
80100c81:	eb 03                	jmp    80100c86 <filealloc+0x22>
80100c83:	83 c3 18             	add    $0x18,%ebx
80100c86:	81 fb 54 09 11 80    	cmp    $0x80110954,%ebx
80100c8c:	73 24                	jae    80100cb2 <filealloc+0x4e>
    if(f->ref == 0){
80100c8e:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80100c92:	75 ef                	jne    80100c83 <filealloc+0x1f>
      f->ref = 1;
80100c94:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
      release(&ftable.lock);
80100c9b:	83 ec 0c             	sub    $0xc,%esp
80100c9e:	68 c0 ff 10 80       	push   $0x8010ffc0
80100ca3:	e8 96 30 00 00       	call   80103d3e <release>
      return f;
80100ca8:	83 c4 10             	add    $0x10,%esp
    }
  }
  release(&ftable.lock);
  return 0;
}
80100cab:	89 d8                	mov    %ebx,%eax
80100cad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100cb0:	c9                   	leave  
80100cb1:	c3                   	ret    
  release(&ftable.lock);
80100cb2:	83 ec 0c             	sub    $0xc,%esp
80100cb5:	68 c0 ff 10 80       	push   $0x8010ffc0
80100cba:	e8 7f 30 00 00       	call   80103d3e <release>
  return 0;
80100cbf:	83 c4 10             	add    $0x10,%esp
80100cc2:	bb 00 00 00 00       	mov    $0x0,%ebx
80100cc7:	eb e2                	jmp    80100cab <filealloc+0x47>

80100cc9 <filedup>:

// Increment ref count for file f.
struct file*
filedup(struct file *f)
{
80100cc9:	f3 0f 1e fb          	endbr32 
80100ccd:	55                   	push   %ebp
80100cce:	89 e5                	mov    %esp,%ebp
80100cd0:	53                   	push   %ebx
80100cd1:	83 ec 10             	sub    $0x10,%esp
80100cd4:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&ftable.lock);
80100cd7:	68 c0 ff 10 80       	push   $0x8010ffc0
80100cdc:	e8 f4 2f 00 00       	call   80103cd5 <acquire>
  if(f->ref < 1)
80100ce1:	8b 43 04             	mov    0x4(%ebx),%eax
80100ce4:	83 c4 10             	add    $0x10,%esp
80100ce7:	85 c0                	test   %eax,%eax
80100ce9:	7e 1a                	jle    80100d05 <filedup+0x3c>
    panic("filedup");
  f->ref++;
80100ceb:	83 c0 01             	add    $0x1,%eax
80100cee:	89 43 04             	mov    %eax,0x4(%ebx)
  release(&ftable.lock);
80100cf1:	83 ec 0c             	sub    $0xc,%esp
80100cf4:	68 c0 ff 10 80       	push   $0x8010ffc0
80100cf9:	e8 40 30 00 00       	call   80103d3e <release>
  return f;
}
80100cfe:	89 d8                	mov    %ebx,%eax
80100d00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100d03:	c9                   	leave  
80100d04:	c3                   	ret    
    panic("filedup");
80100d05:	83 ec 0c             	sub    $0xc,%esp
80100d08:	68 94 67 10 80       	push   $0x80106794
80100d0d:	e8 4a f6 ff ff       	call   8010035c <panic>

80100d12 <fileclose>:

// Close file f.  (Decrement ref count, close when reaches 0.)
void
fileclose(struct file *f)
{
80100d12:	f3 0f 1e fb          	endbr32 
80100d16:	55                   	push   %ebp
80100d17:	89 e5                	mov    %esp,%ebp
80100d19:	53                   	push   %ebx
80100d1a:	83 ec 30             	sub    $0x30,%esp
80100d1d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct file ff;

  acquire(&ftable.lock);
80100d20:	68 c0 ff 10 80       	push   $0x8010ffc0
80100d25:	e8 ab 2f 00 00       	call   80103cd5 <acquire>
  if(f->ref < 1)
80100d2a:	8b 43 04             	mov    0x4(%ebx),%eax
80100d2d:	83 c4 10             	add    $0x10,%esp
80100d30:	85 c0                	test   %eax,%eax
80100d32:	7e 65                	jle    80100d99 <fileclose+0x87>
    panic("fileclose");
  if(--f->ref > 0){
80100d34:	83 e8 01             	sub    $0x1,%eax
80100d37:	89 43 04             	mov    %eax,0x4(%ebx)
80100d3a:	85 c0                	test   %eax,%eax
80100d3c:	7f 68                	jg     80100da6 <fileclose+0x94>
    release(&ftable.lock);
    return;
  }
  ff = *f;
80100d3e:	8b 03                	mov    (%ebx),%eax
80100d40:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100d43:	8b 43 08             	mov    0x8(%ebx),%eax
80100d46:	89 45 e8             	mov    %eax,-0x18(%ebp)
80100d49:	8b 43 0c             	mov    0xc(%ebx),%eax
80100d4c:	89 45 ec             	mov    %eax,-0x14(%ebp)
80100d4f:	8b 43 10             	mov    0x10(%ebx),%eax
80100d52:	89 45 f0             	mov    %eax,-0x10(%ebp)
  f->ref = 0;
80100d55:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
  f->type = FD_NONE;
80100d5c:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  release(&ftable.lock);
80100d62:	83 ec 0c             	sub    $0xc,%esp
80100d65:	68 c0 ff 10 80       	push   $0x8010ffc0
80100d6a:	e8 cf 2f 00 00       	call   80103d3e <release>

  if(ff.type == FD_PIPE)
80100d6f:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100d72:	83 c4 10             	add    $0x10,%esp
80100d75:	83 f8 01             	cmp    $0x1,%eax
80100d78:	74 41                	je     80100dbb <fileclose+0xa9>
    pipeclose(ff.pipe, ff.writable);
  else if(ff.type == FD_INODE){
80100d7a:	83 f8 02             	cmp    $0x2,%eax
80100d7d:	75 37                	jne    80100db6 <fileclose+0xa4>
    begin_op();
80100d7f:	e8 e6 1a 00 00       	call   8010286a <begin_op>
    iput(ff.ip);
80100d84:	83 ec 0c             	sub    $0xc,%esp
80100d87:	ff 75 f0             	pushl  -0x10(%ebp)
80100d8a:	e8 65 09 00 00       	call   801016f4 <iput>
    end_op();
80100d8f:	e8 54 1b 00 00       	call   801028e8 <end_op>
80100d94:	83 c4 10             	add    $0x10,%esp
80100d97:	eb 1d                	jmp    80100db6 <fileclose+0xa4>
    panic("fileclose");
80100d99:	83 ec 0c             	sub    $0xc,%esp
80100d9c:	68 9c 67 10 80       	push   $0x8010679c
80100da1:	e8 b6 f5 ff ff       	call   8010035c <panic>
    release(&ftable.lock);
80100da6:	83 ec 0c             	sub    $0xc,%esp
80100da9:	68 c0 ff 10 80       	push   $0x8010ffc0
80100dae:	e8 8b 2f 00 00       	call   80103d3e <release>
    return;
80100db3:	83 c4 10             	add    $0x10,%esp
  }
}
80100db6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100db9:	c9                   	leave  
80100dba:	c3                   	ret    
    pipeclose(ff.pipe, ff.writable);
80100dbb:	83 ec 08             	sub    $0x8,%esp
80100dbe:	0f be 45 e9          	movsbl -0x17(%ebp),%eax
80100dc2:	50                   	push   %eax
80100dc3:	ff 75 ec             	pushl  -0x14(%ebp)
80100dc6:	e8 32 21 00 00       	call   80102efd <pipeclose>
80100dcb:	83 c4 10             	add    $0x10,%esp
80100dce:	eb e6                	jmp    80100db6 <fileclose+0xa4>

80100dd0 <filestat>:

// Get metadata about file f.
int
filestat(struct file *f, struct stat *st)
{
80100dd0:	f3 0f 1e fb          	endbr32 
80100dd4:	55                   	push   %ebp
80100dd5:	89 e5                	mov    %esp,%ebp
80100dd7:	53                   	push   %ebx
80100dd8:	83 ec 04             	sub    $0x4,%esp
80100ddb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(f->type == FD_INODE){
80100dde:	83 3b 02             	cmpl   $0x2,(%ebx)
80100de1:	75 31                	jne    80100e14 <filestat+0x44>
    ilock(f->ip);
80100de3:	83 ec 0c             	sub    $0xc,%esp
80100de6:	ff 73 10             	pushl  0x10(%ebx)
80100de9:	e8 f7 07 00 00       	call   801015e5 <ilock>
    stati(f->ip, st);
80100dee:	83 c4 08             	add    $0x8,%esp
80100df1:	ff 75 0c             	pushl  0xc(%ebp)
80100df4:	ff 73 10             	pushl  0x10(%ebx)
80100df7:	e8 c0 09 00 00       	call   801017bc <stati>
    iunlock(f->ip);
80100dfc:	83 c4 04             	add    $0x4,%esp
80100dff:	ff 73 10             	pushl  0x10(%ebx)
80100e02:	e8 a4 08 00 00       	call   801016ab <iunlock>
    return 0;
80100e07:	83 c4 10             	add    $0x10,%esp
80100e0a:	b8 00 00 00 00       	mov    $0x0,%eax
  }
  return -1;
}
80100e0f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100e12:	c9                   	leave  
80100e13:	c3                   	ret    
  return -1;
80100e14:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100e19:	eb f4                	jmp    80100e0f <filestat+0x3f>

80100e1b <fileread>:

// Read from file f.
int
fileread(struct file *f, char *addr, int n)
{
80100e1b:	f3 0f 1e fb          	endbr32 
80100e1f:	55                   	push   %ebp
80100e20:	89 e5                	mov    %esp,%ebp
80100e22:	56                   	push   %esi
80100e23:	53                   	push   %ebx
80100e24:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int r;

  if(f->readable == 0)
80100e27:	80 7b 08 00          	cmpb   $0x0,0x8(%ebx)
80100e2b:	74 70                	je     80100e9d <fileread+0x82>
    return -1;
  if(f->type == FD_PIPE)
80100e2d:	8b 03                	mov    (%ebx),%eax
80100e2f:	83 f8 01             	cmp    $0x1,%eax
80100e32:	74 44                	je     80100e78 <fileread+0x5d>
    return piperead(f->pipe, addr, n);
  if(f->type == FD_INODE){
80100e34:	83 f8 02             	cmp    $0x2,%eax
80100e37:	75 57                	jne    80100e90 <fileread+0x75>
    ilock(f->ip);
80100e39:	83 ec 0c             	sub    $0xc,%esp
80100e3c:	ff 73 10             	pushl  0x10(%ebx)
80100e3f:	e8 a1 07 00 00       	call   801015e5 <ilock>
    if((r = readi(f->ip, addr, f->off, n)) > 0)
80100e44:	ff 75 10             	pushl  0x10(%ebp)
80100e47:	ff 73 14             	pushl  0x14(%ebx)
80100e4a:	ff 75 0c             	pushl  0xc(%ebp)
80100e4d:	ff 73 10             	pushl  0x10(%ebx)
80100e50:	e8 96 09 00 00       	call   801017eb <readi>
80100e55:	89 c6                	mov    %eax,%esi
80100e57:	83 c4 20             	add    $0x20,%esp
80100e5a:	85 c0                	test   %eax,%eax
80100e5c:	7e 03                	jle    80100e61 <fileread+0x46>
      f->off += r;
80100e5e:	01 43 14             	add    %eax,0x14(%ebx)
    iunlock(f->ip);
80100e61:	83 ec 0c             	sub    $0xc,%esp
80100e64:	ff 73 10             	pushl  0x10(%ebx)
80100e67:	e8 3f 08 00 00       	call   801016ab <iunlock>
    return r;
80100e6c:	83 c4 10             	add    $0x10,%esp
  }
  panic("fileread");
}
80100e6f:	89 f0                	mov    %esi,%eax
80100e71:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100e74:	5b                   	pop    %ebx
80100e75:	5e                   	pop    %esi
80100e76:	5d                   	pop    %ebp
80100e77:	c3                   	ret    
    return piperead(f->pipe, addr, n);
80100e78:	83 ec 04             	sub    $0x4,%esp
80100e7b:	ff 75 10             	pushl  0x10(%ebp)
80100e7e:	ff 75 0c             	pushl  0xc(%ebp)
80100e81:	ff 73 0c             	pushl  0xc(%ebx)
80100e84:	e8 ce 21 00 00       	call   80103057 <piperead>
80100e89:	89 c6                	mov    %eax,%esi
80100e8b:	83 c4 10             	add    $0x10,%esp
80100e8e:	eb df                	jmp    80100e6f <fileread+0x54>
  panic("fileread");
80100e90:	83 ec 0c             	sub    $0xc,%esp
80100e93:	68 a6 67 10 80       	push   $0x801067a6
80100e98:	e8 bf f4 ff ff       	call   8010035c <panic>
    return -1;
80100e9d:	be ff ff ff ff       	mov    $0xffffffff,%esi
80100ea2:	eb cb                	jmp    80100e6f <fileread+0x54>

80100ea4 <filewrite>:

//PAGEBREAK!
// Write to file f.
int
filewrite(struct file *f, char *addr, int n)
{
80100ea4:	f3 0f 1e fb          	endbr32 
80100ea8:	55                   	push   %ebp
80100ea9:	89 e5                	mov    %esp,%ebp
80100eab:	57                   	push   %edi
80100eac:	56                   	push   %esi
80100ead:	53                   	push   %ebx
80100eae:	83 ec 1c             	sub    $0x1c,%esp
80100eb1:	8b 75 08             	mov    0x8(%ebp),%esi
  int r;

  if(f->writable == 0)
80100eb4:	80 7e 09 00          	cmpb   $0x0,0x9(%esi)
80100eb8:	0f 84 cc 00 00 00    	je     80100f8a <filewrite+0xe6>
    return -1;
  if(f->type == FD_PIPE)
80100ebe:	8b 06                	mov    (%esi),%eax
80100ec0:	83 f8 01             	cmp    $0x1,%eax
80100ec3:	74 10                	je     80100ed5 <filewrite+0x31>
    return pipewrite(f->pipe, addr, n);
  if(f->type == FD_INODE){
80100ec5:	83 f8 02             	cmp    $0x2,%eax
80100ec8:	0f 85 af 00 00 00    	jne    80100f7d <filewrite+0xd9>
    // i-node, indirect block, allocation blocks,
    // and 2 blocks of slop for non-aligned writes.
    // this really belongs lower down, since writei()
    // might be writing a device like the console.
    int max = ((MAXOPBLOCKS-1-1-2) / 2) * 512;
    int i = 0;
80100ece:	bf 00 00 00 00       	mov    $0x0,%edi
80100ed3:	eb 67                	jmp    80100f3c <filewrite+0x98>
    return pipewrite(f->pipe, addr, n);
80100ed5:	83 ec 04             	sub    $0x4,%esp
80100ed8:	ff 75 10             	pushl  0x10(%ebp)
80100edb:	ff 75 0c             	pushl  0xc(%ebp)
80100ede:	ff 76 0c             	pushl  0xc(%esi)
80100ee1:	e8 a7 20 00 00       	call   80102f8d <pipewrite>
80100ee6:	83 c4 10             	add    $0x10,%esp
80100ee9:	e9 82 00 00 00       	jmp    80100f70 <filewrite+0xcc>
    while(i < n){
      int n1 = n - i;
      if(n1 > max)
        n1 = max;

      begin_op();
80100eee:	e8 77 19 00 00       	call   8010286a <begin_op>
      ilock(f->ip);
80100ef3:	83 ec 0c             	sub    $0xc,%esp
80100ef6:	ff 76 10             	pushl  0x10(%esi)
80100ef9:	e8 e7 06 00 00       	call   801015e5 <ilock>
      if ((r = writei(f->ip, addr + i, f->off, n1)) > 0)
80100efe:	ff 75 e4             	pushl  -0x1c(%ebp)
80100f01:	ff 76 14             	pushl  0x14(%esi)
80100f04:	89 f8                	mov    %edi,%eax
80100f06:	03 45 0c             	add    0xc(%ebp),%eax
80100f09:	50                   	push   %eax
80100f0a:	ff 76 10             	pushl  0x10(%esi)
80100f0d:	e8 da 09 00 00       	call   801018ec <writei>
80100f12:	89 c3                	mov    %eax,%ebx
80100f14:	83 c4 20             	add    $0x20,%esp
80100f17:	85 c0                	test   %eax,%eax
80100f19:	7e 03                	jle    80100f1e <filewrite+0x7a>
        f->off += r;
80100f1b:	01 46 14             	add    %eax,0x14(%esi)
      iunlock(f->ip);
80100f1e:	83 ec 0c             	sub    $0xc,%esp
80100f21:	ff 76 10             	pushl  0x10(%esi)
80100f24:	e8 82 07 00 00       	call   801016ab <iunlock>
      end_op();
80100f29:	e8 ba 19 00 00       	call   801028e8 <end_op>

      if(r < 0)
80100f2e:	83 c4 10             	add    $0x10,%esp
80100f31:	85 db                	test   %ebx,%ebx
80100f33:	78 31                	js     80100f66 <filewrite+0xc2>
        break;
      if(r != n1)
80100f35:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
80100f38:	75 1f                	jne    80100f59 <filewrite+0xb5>
        panic("short filewrite");
      i += r;
80100f3a:	01 df                	add    %ebx,%edi
    while(i < n){
80100f3c:	3b 7d 10             	cmp    0x10(%ebp),%edi
80100f3f:	7d 25                	jge    80100f66 <filewrite+0xc2>
      int n1 = n - i;
80100f41:	8b 45 10             	mov    0x10(%ebp),%eax
80100f44:	29 f8                	sub    %edi,%eax
80100f46:	89 45 e4             	mov    %eax,-0x1c(%ebp)
      if(n1 > max)
80100f49:	3d 00 06 00 00       	cmp    $0x600,%eax
80100f4e:	7e 9e                	jle    80100eee <filewrite+0x4a>
        n1 = max;
80100f50:	c7 45 e4 00 06 00 00 	movl   $0x600,-0x1c(%ebp)
80100f57:	eb 95                	jmp    80100eee <filewrite+0x4a>
        panic("short filewrite");
80100f59:	83 ec 0c             	sub    $0xc,%esp
80100f5c:	68 af 67 10 80       	push   $0x801067af
80100f61:	e8 f6 f3 ff ff       	call   8010035c <panic>
    }
    return i == n ? n : -1;
80100f66:	3b 7d 10             	cmp    0x10(%ebp),%edi
80100f69:	74 0d                	je     80100f78 <filewrite+0xd4>
80100f6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }
  panic("filewrite");
}
80100f70:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100f73:	5b                   	pop    %ebx
80100f74:	5e                   	pop    %esi
80100f75:	5f                   	pop    %edi
80100f76:	5d                   	pop    %ebp
80100f77:	c3                   	ret    
    return i == n ? n : -1;
80100f78:	8b 45 10             	mov    0x10(%ebp),%eax
80100f7b:	eb f3                	jmp    80100f70 <filewrite+0xcc>
  panic("filewrite");
80100f7d:	83 ec 0c             	sub    $0xc,%esp
80100f80:	68 b5 67 10 80       	push   $0x801067b5
80100f85:	e8 d2 f3 ff ff       	call   8010035c <panic>
    return -1;
80100f8a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100f8f:	eb df                	jmp    80100f70 <filewrite+0xcc>

80100f91 <skipelem>:
//   skipelem("a", name) = "", setting name = "a"
//   skipelem("", name) = skipelem("////", name) = 0
//
static char*
skipelem(char *path, char *name)
{
80100f91:	55                   	push   %ebp
80100f92:	89 e5                	mov    %esp,%ebp
80100f94:	57                   	push   %edi
80100f95:	56                   	push   %esi
80100f96:	53                   	push   %ebx
80100f97:	83 ec 0c             	sub    $0xc,%esp
80100f9a:	89 d6                	mov    %edx,%esi
  char *s;
  int len;

  while(*path == '/')
80100f9c:	0f b6 10             	movzbl (%eax),%edx
80100f9f:	80 fa 2f             	cmp    $0x2f,%dl
80100fa2:	75 05                	jne    80100fa9 <skipelem+0x18>
    path++;
80100fa4:	83 c0 01             	add    $0x1,%eax
80100fa7:	eb f3                	jmp    80100f9c <skipelem+0xb>
  if(*path == 0)
80100fa9:	84 d2                	test   %dl,%dl
80100fab:	74 59                	je     80101006 <skipelem+0x75>
80100fad:	89 c3                	mov    %eax,%ebx
    return 0;
  s = path;
  while(*path != '/' && *path != 0)
80100faf:	0f b6 13             	movzbl (%ebx),%edx
80100fb2:	80 fa 2f             	cmp    $0x2f,%dl
80100fb5:	0f 95 c1             	setne  %cl
80100fb8:	84 d2                	test   %dl,%dl
80100fba:	0f 95 c2             	setne  %dl
80100fbd:	84 d1                	test   %dl,%cl
80100fbf:	74 05                	je     80100fc6 <skipelem+0x35>
    path++;
80100fc1:	83 c3 01             	add    $0x1,%ebx
80100fc4:	eb e9                	jmp    80100faf <skipelem+0x1e>
  len = path - s;
80100fc6:	89 df                	mov    %ebx,%edi
80100fc8:	29 c7                	sub    %eax,%edi
  if(len >= DIRSIZ)
80100fca:	83 ff 0d             	cmp    $0xd,%edi
80100fcd:	7e 11                	jle    80100fe0 <skipelem+0x4f>
    memmove(name, s, DIRSIZ);
80100fcf:	83 ec 04             	sub    $0x4,%esp
80100fd2:	6a 0e                	push   $0xe
80100fd4:	50                   	push   %eax
80100fd5:	56                   	push   %esi
80100fd6:	e8 2e 2e 00 00       	call   80103e09 <memmove>
80100fdb:	83 c4 10             	add    $0x10,%esp
80100fde:	eb 17                	jmp    80100ff7 <skipelem+0x66>
  else {
    memmove(name, s, len);
80100fe0:	83 ec 04             	sub    $0x4,%esp
80100fe3:	57                   	push   %edi
80100fe4:	50                   	push   %eax
80100fe5:	56                   	push   %esi
80100fe6:	e8 1e 2e 00 00       	call   80103e09 <memmove>
    name[len] = 0;
80100feb:	c6 04 3e 00          	movb   $0x0,(%esi,%edi,1)
80100fef:	83 c4 10             	add    $0x10,%esp
80100ff2:	eb 03                	jmp    80100ff7 <skipelem+0x66>
  }
  while(*path == '/')
    path++;
80100ff4:	83 c3 01             	add    $0x1,%ebx
  while(*path == '/')
80100ff7:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80100ffa:	74 f8                	je     80100ff4 <skipelem+0x63>
  return path;
}
80100ffc:	89 d8                	mov    %ebx,%eax
80100ffe:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101001:	5b                   	pop    %ebx
80101002:	5e                   	pop    %esi
80101003:	5f                   	pop    %edi
80101004:	5d                   	pop    %ebp
80101005:	c3                   	ret    
    return 0;
80101006:	bb 00 00 00 00       	mov    $0x0,%ebx
8010100b:	eb ef                	jmp    80100ffc <skipelem+0x6b>

8010100d <bzero>:
{
8010100d:	55                   	push   %ebp
8010100e:	89 e5                	mov    %esp,%ebp
80101010:	53                   	push   %ebx
80101011:	83 ec 0c             	sub    $0xc,%esp
  bp = bread(dev, bno);
80101014:	52                   	push   %edx
80101015:	50                   	push   %eax
80101016:	e8 55 f1 ff ff       	call   80100170 <bread>
8010101b:	89 c3                	mov    %eax,%ebx
  memset(bp->data, 0, BSIZE);
8010101d:	8d 40 5c             	lea    0x5c(%eax),%eax
80101020:	83 c4 0c             	add    $0xc,%esp
80101023:	68 00 02 00 00       	push   $0x200
80101028:	6a 00                	push   $0x0
8010102a:	50                   	push   %eax
8010102b:	e8 59 2d 00 00       	call   80103d89 <memset>
  log_write(bp);
80101030:	89 1c 24             	mov    %ebx,(%esp)
80101033:	e8 63 19 00 00       	call   8010299b <log_write>
  brelse(bp);
80101038:	89 1c 24             	mov    %ebx,(%esp)
8010103b:	e8 a1 f1 ff ff       	call   801001e1 <brelse>
}
80101040:	83 c4 10             	add    $0x10,%esp
80101043:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101046:	c9                   	leave  
80101047:	c3                   	ret    

80101048 <balloc>:
{
80101048:	55                   	push   %ebp
80101049:	89 e5                	mov    %esp,%ebp
8010104b:	57                   	push   %edi
8010104c:	56                   	push   %esi
8010104d:	53                   	push   %ebx
8010104e:	83 ec 1c             	sub    $0x1c,%esp
80101051:	89 45 d8             	mov    %eax,-0x28(%ebp)
  for(b = 0; b < sb.size; b += BPB){
80101054:	be 00 00 00 00       	mov    $0x0,%esi
80101059:	eb 14                	jmp    8010106f <balloc+0x27>
    brelse(bp);
8010105b:	83 ec 0c             	sub    $0xc,%esp
8010105e:	ff 75 e4             	pushl  -0x1c(%ebp)
80101061:	e8 7b f1 ff ff       	call   801001e1 <brelse>
  for(b = 0; b < sb.size; b += BPB){
80101066:	81 c6 00 10 00 00    	add    $0x1000,%esi
8010106c:	83 c4 10             	add    $0x10,%esp
8010106f:	39 35 c0 09 11 80    	cmp    %esi,0x801109c0
80101075:	76 75                	jbe    801010ec <balloc+0xa4>
    bp = bread(dev, BBLOCK(b, sb));
80101077:	8d 86 ff 0f 00 00    	lea    0xfff(%esi),%eax
8010107d:	85 f6                	test   %esi,%esi
8010107f:	0f 49 c6             	cmovns %esi,%eax
80101082:	c1 f8 0c             	sar    $0xc,%eax
80101085:	83 ec 08             	sub    $0x8,%esp
80101088:	03 05 d8 09 11 80    	add    0x801109d8,%eax
8010108e:	50                   	push   %eax
8010108f:	ff 75 d8             	pushl  -0x28(%ebp)
80101092:	e8 d9 f0 ff ff       	call   80100170 <bread>
80101097:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
8010109a:	83 c4 10             	add    $0x10,%esp
8010109d:	b8 00 00 00 00       	mov    $0x0,%eax
801010a2:	3d ff 0f 00 00       	cmp    $0xfff,%eax
801010a7:	7f b2                	jg     8010105b <balloc+0x13>
801010a9:	8d 1c 06             	lea    (%esi,%eax,1),%ebx
801010ac:	89 5d e0             	mov    %ebx,-0x20(%ebp)
801010af:	3b 1d c0 09 11 80    	cmp    0x801109c0,%ebx
801010b5:	73 a4                	jae    8010105b <balloc+0x13>
      m = 1 << (bi % 8);
801010b7:	99                   	cltd   
801010b8:	c1 ea 1d             	shr    $0x1d,%edx
801010bb:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
801010be:	83 e1 07             	and    $0x7,%ecx
801010c1:	29 d1                	sub    %edx,%ecx
801010c3:	ba 01 00 00 00       	mov    $0x1,%edx
801010c8:	d3 e2                	shl    %cl,%edx
      if((bp->data[bi/8] & m) == 0){  // Is block free?
801010ca:	8d 48 07             	lea    0x7(%eax),%ecx
801010cd:	85 c0                	test   %eax,%eax
801010cf:	0f 49 c8             	cmovns %eax,%ecx
801010d2:	c1 f9 03             	sar    $0x3,%ecx
801010d5:	89 4d dc             	mov    %ecx,-0x24(%ebp)
801010d8:	8b 7d e4             	mov    -0x1c(%ebp),%edi
801010db:	0f b6 4c 0f 5c       	movzbl 0x5c(%edi,%ecx,1),%ecx
801010e0:	0f b6 f9             	movzbl %cl,%edi
801010e3:	85 d7                	test   %edx,%edi
801010e5:	74 12                	je     801010f9 <balloc+0xb1>
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
801010e7:	83 c0 01             	add    $0x1,%eax
801010ea:	eb b6                	jmp    801010a2 <balloc+0x5a>
  panic("balloc: out of blocks");
801010ec:	83 ec 0c             	sub    $0xc,%esp
801010ef:	68 bf 67 10 80       	push   $0x801067bf
801010f4:	e8 63 f2 ff ff       	call   8010035c <panic>
        bp->data[bi/8] |= m;  // Mark block in use.
801010f9:	09 ca                	or     %ecx,%edx
801010fb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801010fe:	8b 75 dc             	mov    -0x24(%ebp),%esi
80101101:	88 54 30 5c          	mov    %dl,0x5c(%eax,%esi,1)
        log_write(bp);
80101105:	83 ec 0c             	sub    $0xc,%esp
80101108:	89 c6                	mov    %eax,%esi
8010110a:	50                   	push   %eax
8010110b:	e8 8b 18 00 00       	call   8010299b <log_write>
        brelse(bp);
80101110:	89 34 24             	mov    %esi,(%esp)
80101113:	e8 c9 f0 ff ff       	call   801001e1 <brelse>
        bzero(dev, b + bi);
80101118:	89 da                	mov    %ebx,%edx
8010111a:	8b 45 d8             	mov    -0x28(%ebp),%eax
8010111d:	e8 eb fe ff ff       	call   8010100d <bzero>
}
80101122:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101125:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101128:	5b                   	pop    %ebx
80101129:	5e                   	pop    %esi
8010112a:	5f                   	pop    %edi
8010112b:	5d                   	pop    %ebp
8010112c:	c3                   	ret    

8010112d <bmap>:
{
8010112d:	55                   	push   %ebp
8010112e:	89 e5                	mov    %esp,%ebp
80101130:	57                   	push   %edi
80101131:	56                   	push   %esi
80101132:	53                   	push   %ebx
80101133:	83 ec 1c             	sub    $0x1c,%esp
80101136:	89 c3                	mov    %eax,%ebx
80101138:	89 d7                	mov    %edx,%edi
  if(bn < NDIRECT){
8010113a:	83 fa 0b             	cmp    $0xb,%edx
8010113d:	76 45                	jbe    80101184 <bmap+0x57>
  bn -= NDIRECT;
8010113f:	8d 72 f4             	lea    -0xc(%edx),%esi
  if(bn < NINDIRECT){
80101142:	83 fe 7f             	cmp    $0x7f,%esi
80101145:	77 7f                	ja     801011c6 <bmap+0x99>
    if((addr = ip->addrs[NDIRECT]) == 0)
80101147:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
8010114d:	85 c0                	test   %eax,%eax
8010114f:	74 4a                	je     8010119b <bmap+0x6e>
    bp = bread(ip->dev, addr);
80101151:	83 ec 08             	sub    $0x8,%esp
80101154:	50                   	push   %eax
80101155:	ff 33                	pushl  (%ebx)
80101157:	e8 14 f0 ff ff       	call   80100170 <bread>
8010115c:	89 c7                	mov    %eax,%edi
    if((addr = a[bn]) == 0){
8010115e:	8d 44 b0 5c          	lea    0x5c(%eax,%esi,4),%eax
80101162:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101165:	8b 30                	mov    (%eax),%esi
80101167:	83 c4 10             	add    $0x10,%esp
8010116a:	85 f6                	test   %esi,%esi
8010116c:	74 3c                	je     801011aa <bmap+0x7d>
    brelse(bp);
8010116e:	83 ec 0c             	sub    $0xc,%esp
80101171:	57                   	push   %edi
80101172:	e8 6a f0 ff ff       	call   801001e1 <brelse>
    return addr;
80101177:	83 c4 10             	add    $0x10,%esp
}
8010117a:	89 f0                	mov    %esi,%eax
8010117c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010117f:	5b                   	pop    %ebx
80101180:	5e                   	pop    %esi
80101181:	5f                   	pop    %edi
80101182:	5d                   	pop    %ebp
80101183:	c3                   	ret    
    if((addr = ip->addrs[bn]) == 0)
80101184:	8b 74 90 5c          	mov    0x5c(%eax,%edx,4),%esi
80101188:	85 f6                	test   %esi,%esi
8010118a:	75 ee                	jne    8010117a <bmap+0x4d>
      ip->addrs[bn] = addr = balloc(ip->dev);
8010118c:	8b 00                	mov    (%eax),%eax
8010118e:	e8 b5 fe ff ff       	call   80101048 <balloc>
80101193:	89 c6                	mov    %eax,%esi
80101195:	89 44 bb 5c          	mov    %eax,0x5c(%ebx,%edi,4)
    return addr;
80101199:	eb df                	jmp    8010117a <bmap+0x4d>
      ip->addrs[NDIRECT] = addr = balloc(ip->dev);
8010119b:	8b 03                	mov    (%ebx),%eax
8010119d:	e8 a6 fe ff ff       	call   80101048 <balloc>
801011a2:	89 83 8c 00 00 00    	mov    %eax,0x8c(%ebx)
801011a8:	eb a7                	jmp    80101151 <bmap+0x24>
      a[bn] = addr = balloc(ip->dev);
801011aa:	8b 03                	mov    (%ebx),%eax
801011ac:	e8 97 fe ff ff       	call   80101048 <balloc>
801011b1:	89 c6                	mov    %eax,%esi
801011b3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801011b6:	89 30                	mov    %esi,(%eax)
      log_write(bp);
801011b8:	83 ec 0c             	sub    $0xc,%esp
801011bb:	57                   	push   %edi
801011bc:	e8 da 17 00 00       	call   8010299b <log_write>
801011c1:	83 c4 10             	add    $0x10,%esp
801011c4:	eb a8                	jmp    8010116e <bmap+0x41>
  panic("bmap: out of range");
801011c6:	83 ec 0c             	sub    $0xc,%esp
801011c9:	68 d5 67 10 80       	push   $0x801067d5
801011ce:	e8 89 f1 ff ff       	call   8010035c <panic>

801011d3 <iget>:
{
801011d3:	55                   	push   %ebp
801011d4:	89 e5                	mov    %esp,%ebp
801011d6:	57                   	push   %edi
801011d7:	56                   	push   %esi
801011d8:	53                   	push   %ebx
801011d9:	83 ec 28             	sub    $0x28,%esp
801011dc:	89 c7                	mov    %eax,%edi
801011de:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  acquire(&icache.lock);
801011e1:	68 e0 09 11 80       	push   $0x801109e0
801011e6:	e8 ea 2a 00 00       	call   80103cd5 <acquire>
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011eb:	83 c4 10             	add    $0x10,%esp
  empty = 0;
801011ee:	be 00 00 00 00       	mov    $0x0,%esi
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011f3:	bb 14 0a 11 80       	mov    $0x80110a14,%ebx
801011f8:	eb 0a                	jmp    80101204 <iget+0x31>
    if(empty == 0 && ip->ref == 0)    // Remember empty slot.
801011fa:	85 f6                	test   %esi,%esi
801011fc:	74 3b                	je     80101239 <iget+0x66>
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011fe:	81 c3 90 00 00 00    	add    $0x90,%ebx
80101204:	81 fb 34 26 11 80    	cmp    $0x80112634,%ebx
8010120a:	73 35                	jae    80101241 <iget+0x6e>
    if(ip->ref > 0 && ip->dev == dev && ip->inum == inum){
8010120c:	8b 43 08             	mov    0x8(%ebx),%eax
8010120f:	85 c0                	test   %eax,%eax
80101211:	7e e7                	jle    801011fa <iget+0x27>
80101213:	39 3b                	cmp    %edi,(%ebx)
80101215:	75 e3                	jne    801011fa <iget+0x27>
80101217:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
8010121a:	39 4b 04             	cmp    %ecx,0x4(%ebx)
8010121d:	75 db                	jne    801011fa <iget+0x27>
      ip->ref++;
8010121f:	83 c0 01             	add    $0x1,%eax
80101222:	89 43 08             	mov    %eax,0x8(%ebx)
      release(&icache.lock);
80101225:	83 ec 0c             	sub    $0xc,%esp
80101228:	68 e0 09 11 80       	push   $0x801109e0
8010122d:	e8 0c 2b 00 00       	call   80103d3e <release>
      return ip;
80101232:	83 c4 10             	add    $0x10,%esp
80101235:	89 de                	mov    %ebx,%esi
80101237:	eb 32                	jmp    8010126b <iget+0x98>
    if(empty == 0 && ip->ref == 0)    // Remember empty slot.
80101239:	85 c0                	test   %eax,%eax
8010123b:	75 c1                	jne    801011fe <iget+0x2b>
      empty = ip;
8010123d:	89 de                	mov    %ebx,%esi
8010123f:	eb bd                	jmp    801011fe <iget+0x2b>
  if(empty == 0)
80101241:	85 f6                	test   %esi,%esi
80101243:	74 30                	je     80101275 <iget+0xa2>
  ip->dev = dev;
80101245:	89 3e                	mov    %edi,(%esi)
  ip->inum = inum;
80101247:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010124a:	89 46 04             	mov    %eax,0x4(%esi)
  ip->ref = 1;
8010124d:	c7 46 08 01 00 00 00 	movl   $0x1,0x8(%esi)
  ip->valid = 0;
80101254:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
  release(&icache.lock);
8010125b:	83 ec 0c             	sub    $0xc,%esp
8010125e:	68 e0 09 11 80       	push   $0x801109e0
80101263:	e8 d6 2a 00 00       	call   80103d3e <release>
  return ip;
80101268:	83 c4 10             	add    $0x10,%esp
}
8010126b:	89 f0                	mov    %esi,%eax
8010126d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101270:	5b                   	pop    %ebx
80101271:	5e                   	pop    %esi
80101272:	5f                   	pop    %edi
80101273:	5d                   	pop    %ebp
80101274:	c3                   	ret    
    panic("iget: no inodes");
80101275:	83 ec 0c             	sub    $0xc,%esp
80101278:	68 e8 67 10 80       	push   $0x801067e8
8010127d:	e8 da f0 ff ff       	call   8010035c <panic>

80101282 <readsb>:
{
80101282:	f3 0f 1e fb          	endbr32 
80101286:	55                   	push   %ebp
80101287:	89 e5                	mov    %esp,%ebp
80101289:	53                   	push   %ebx
8010128a:	83 ec 0c             	sub    $0xc,%esp
  bp = bread(dev, 1);
8010128d:	6a 01                	push   $0x1
8010128f:	ff 75 08             	pushl  0x8(%ebp)
80101292:	e8 d9 ee ff ff       	call   80100170 <bread>
80101297:	89 c3                	mov    %eax,%ebx
  memmove(sb, bp->data, sizeof(*sb));
80101299:	8d 40 5c             	lea    0x5c(%eax),%eax
8010129c:	83 c4 0c             	add    $0xc,%esp
8010129f:	6a 1c                	push   $0x1c
801012a1:	50                   	push   %eax
801012a2:	ff 75 0c             	pushl  0xc(%ebp)
801012a5:	e8 5f 2b 00 00       	call   80103e09 <memmove>
  brelse(bp);
801012aa:	89 1c 24             	mov    %ebx,(%esp)
801012ad:	e8 2f ef ff ff       	call   801001e1 <brelse>
}
801012b2:	83 c4 10             	add    $0x10,%esp
801012b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801012b8:	c9                   	leave  
801012b9:	c3                   	ret    

801012ba <bfree>:
{
801012ba:	55                   	push   %ebp
801012bb:	89 e5                	mov    %esp,%ebp
801012bd:	57                   	push   %edi
801012be:	56                   	push   %esi
801012bf:	53                   	push   %ebx
801012c0:	83 ec 14             	sub    $0x14,%esp
801012c3:	89 c3                	mov    %eax,%ebx
801012c5:	89 d6                	mov    %edx,%esi
  readsb(dev, &sb);
801012c7:	68 c0 09 11 80       	push   $0x801109c0
801012cc:	50                   	push   %eax
801012cd:	e8 b0 ff ff ff       	call   80101282 <readsb>
  bp = bread(dev, BBLOCK(b, sb));
801012d2:	89 f0                	mov    %esi,%eax
801012d4:	c1 e8 0c             	shr    $0xc,%eax
801012d7:	83 c4 08             	add    $0x8,%esp
801012da:	03 05 d8 09 11 80    	add    0x801109d8,%eax
801012e0:	50                   	push   %eax
801012e1:	53                   	push   %ebx
801012e2:	e8 89 ee ff ff       	call   80100170 <bread>
801012e7:	89 c3                	mov    %eax,%ebx
  bi = b % BPB;
801012e9:	89 f7                	mov    %esi,%edi
801012eb:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
  m = 1 << (bi % 8);
801012f1:	89 f1                	mov    %esi,%ecx
801012f3:	83 e1 07             	and    $0x7,%ecx
801012f6:	b8 01 00 00 00       	mov    $0x1,%eax
801012fb:	d3 e0                	shl    %cl,%eax
  if((bp->data[bi/8] & m) == 0)
801012fd:	83 c4 10             	add    $0x10,%esp
80101300:	c1 ff 03             	sar    $0x3,%edi
80101303:	0f b6 54 3b 5c       	movzbl 0x5c(%ebx,%edi,1),%edx
80101308:	0f b6 ca             	movzbl %dl,%ecx
8010130b:	85 c1                	test   %eax,%ecx
8010130d:	74 24                	je     80101333 <bfree+0x79>
  bp->data[bi/8] &= ~m;
8010130f:	f7 d0                	not    %eax
80101311:	21 d0                	and    %edx,%eax
80101313:	88 44 3b 5c          	mov    %al,0x5c(%ebx,%edi,1)
  log_write(bp);
80101317:	83 ec 0c             	sub    $0xc,%esp
8010131a:	53                   	push   %ebx
8010131b:	e8 7b 16 00 00       	call   8010299b <log_write>
  brelse(bp);
80101320:	89 1c 24             	mov    %ebx,(%esp)
80101323:	e8 b9 ee ff ff       	call   801001e1 <brelse>
}
80101328:	83 c4 10             	add    $0x10,%esp
8010132b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010132e:	5b                   	pop    %ebx
8010132f:	5e                   	pop    %esi
80101330:	5f                   	pop    %edi
80101331:	5d                   	pop    %ebp
80101332:	c3                   	ret    
    panic("freeing free block");
80101333:	83 ec 0c             	sub    $0xc,%esp
80101336:	68 f8 67 10 80       	push   $0x801067f8
8010133b:	e8 1c f0 ff ff       	call   8010035c <panic>

80101340 <iinit>:
{
80101340:	f3 0f 1e fb          	endbr32 
80101344:	55                   	push   %ebp
80101345:	89 e5                	mov    %esp,%ebp
80101347:	53                   	push   %ebx
80101348:	83 ec 0c             	sub    $0xc,%esp
  initlock(&icache.lock, "icache");
8010134b:	68 0b 68 10 80       	push   $0x8010680b
80101350:	68 e0 09 11 80       	push   $0x801109e0
80101355:	e8 2b 28 00 00       	call   80103b85 <initlock>
  for(i = 0; i < NINODE; i++) {
8010135a:	83 c4 10             	add    $0x10,%esp
8010135d:	bb 00 00 00 00       	mov    $0x0,%ebx
80101362:	83 fb 31             	cmp    $0x31,%ebx
80101365:	7f 23                	jg     8010138a <iinit+0x4a>
    initsleeplock(&icache.inode[i].lock, "inode");
80101367:	83 ec 08             	sub    $0x8,%esp
8010136a:	68 12 68 10 80       	push   $0x80106812
8010136f:	8d 14 db             	lea    (%ebx,%ebx,8),%edx
80101372:	89 d0                	mov    %edx,%eax
80101374:	c1 e0 04             	shl    $0x4,%eax
80101377:	05 20 0a 11 80       	add    $0x80110a20,%eax
8010137c:	50                   	push   %eax
8010137d:	e8 e8 26 00 00       	call   80103a6a <initsleeplock>
  for(i = 0; i < NINODE; i++) {
80101382:	83 c3 01             	add    $0x1,%ebx
80101385:	83 c4 10             	add    $0x10,%esp
80101388:	eb d8                	jmp    80101362 <iinit+0x22>
  readsb(dev, &sb);
8010138a:	83 ec 08             	sub    $0x8,%esp
8010138d:	68 c0 09 11 80       	push   $0x801109c0
80101392:	ff 75 08             	pushl  0x8(%ebp)
80101395:	e8 e8 fe ff ff       	call   80101282 <readsb>
  cprintf("sb: size %d nblocks %d ninodes %d nlog %d logstart %d\
8010139a:	ff 35 d8 09 11 80    	pushl  0x801109d8
801013a0:	ff 35 d4 09 11 80    	pushl  0x801109d4
801013a6:	ff 35 d0 09 11 80    	pushl  0x801109d0
801013ac:	ff 35 cc 09 11 80    	pushl  0x801109cc
801013b2:	ff 35 c8 09 11 80    	pushl  0x801109c8
801013b8:	ff 35 c4 09 11 80    	pushl  0x801109c4
801013be:	ff 35 c0 09 11 80    	pushl  0x801109c0
801013c4:	68 78 68 10 80       	push   $0x80106878
801013c9:	e8 5b f2 ff ff       	call   80100629 <cprintf>
}
801013ce:	83 c4 30             	add    $0x30,%esp
801013d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801013d4:	c9                   	leave  
801013d5:	c3                   	ret    

801013d6 <ialloc>:
{
801013d6:	f3 0f 1e fb          	endbr32 
801013da:	55                   	push   %ebp
801013db:	89 e5                	mov    %esp,%ebp
801013dd:	57                   	push   %edi
801013de:	56                   	push   %esi
801013df:	53                   	push   %ebx
801013e0:	83 ec 1c             	sub    $0x1c,%esp
801013e3:	8b 45 0c             	mov    0xc(%ebp),%eax
801013e6:	89 45 e0             	mov    %eax,-0x20(%ebp)
  for(inum = 1; inum < sb.ninodes; inum++){
801013e9:	bb 01 00 00 00       	mov    $0x1,%ebx
801013ee:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
801013f1:	39 1d c8 09 11 80    	cmp    %ebx,0x801109c8
801013f7:	76 76                	jbe    8010146f <ialloc+0x99>
    bp = bread(dev, IBLOCK(inum, sb));
801013f9:	89 d8                	mov    %ebx,%eax
801013fb:	c1 e8 03             	shr    $0x3,%eax
801013fe:	83 ec 08             	sub    $0x8,%esp
80101401:	03 05 d4 09 11 80    	add    0x801109d4,%eax
80101407:	50                   	push   %eax
80101408:	ff 75 08             	pushl  0x8(%ebp)
8010140b:	e8 60 ed ff ff       	call   80100170 <bread>
80101410:	89 c6                	mov    %eax,%esi
    dip = (struct dinode*)bp->data + inum%IPB;
80101412:	89 d8                	mov    %ebx,%eax
80101414:	83 e0 07             	and    $0x7,%eax
80101417:	c1 e0 06             	shl    $0x6,%eax
8010141a:	8d 7c 06 5c          	lea    0x5c(%esi,%eax,1),%edi
    if(dip->type == 0){  // a free inode
8010141e:	83 c4 10             	add    $0x10,%esp
80101421:	66 83 3f 00          	cmpw   $0x0,(%edi)
80101425:	74 11                	je     80101438 <ialloc+0x62>
    brelse(bp);
80101427:	83 ec 0c             	sub    $0xc,%esp
8010142a:	56                   	push   %esi
8010142b:	e8 b1 ed ff ff       	call   801001e1 <brelse>
  for(inum = 1; inum < sb.ninodes; inum++){
80101430:	83 c3 01             	add    $0x1,%ebx
80101433:	83 c4 10             	add    $0x10,%esp
80101436:	eb b6                	jmp    801013ee <ialloc+0x18>
      memset(dip, 0, sizeof(*dip));
80101438:	83 ec 04             	sub    $0x4,%esp
8010143b:	6a 40                	push   $0x40
8010143d:	6a 00                	push   $0x0
8010143f:	57                   	push   %edi
80101440:	e8 44 29 00 00       	call   80103d89 <memset>
      dip->type = type;
80101445:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
80101449:	66 89 07             	mov    %ax,(%edi)
      log_write(bp);   // mark it allocated on the disk
8010144c:	89 34 24             	mov    %esi,(%esp)
8010144f:	e8 47 15 00 00       	call   8010299b <log_write>
      brelse(bp);
80101454:	89 34 24             	mov    %esi,(%esp)
80101457:	e8 85 ed ff ff       	call   801001e1 <brelse>
      return iget(dev, inum);
8010145c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
8010145f:	8b 45 08             	mov    0x8(%ebp),%eax
80101462:	e8 6c fd ff ff       	call   801011d3 <iget>
}
80101467:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010146a:	5b                   	pop    %ebx
8010146b:	5e                   	pop    %esi
8010146c:	5f                   	pop    %edi
8010146d:	5d                   	pop    %ebp
8010146e:	c3                   	ret    
  panic("ialloc: no inodes");
8010146f:	83 ec 0c             	sub    $0xc,%esp
80101472:	68 18 68 10 80       	push   $0x80106818
80101477:	e8 e0 ee ff ff       	call   8010035c <panic>

8010147c <iupdate>:
{
8010147c:	f3 0f 1e fb          	endbr32 
80101480:	55                   	push   %ebp
80101481:	89 e5                	mov    %esp,%ebp
80101483:	56                   	push   %esi
80101484:	53                   	push   %ebx
80101485:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = bread(ip->dev, IBLOCK(ip->inum, sb));
80101488:	8b 43 04             	mov    0x4(%ebx),%eax
8010148b:	c1 e8 03             	shr    $0x3,%eax
8010148e:	83 ec 08             	sub    $0x8,%esp
80101491:	03 05 d4 09 11 80    	add    0x801109d4,%eax
80101497:	50                   	push   %eax
80101498:	ff 33                	pushl  (%ebx)
8010149a:	e8 d1 ec ff ff       	call   80100170 <bread>
8010149f:	89 c6                	mov    %eax,%esi
  dip = (struct dinode*)bp->data + ip->inum%IPB;
801014a1:	8b 43 04             	mov    0x4(%ebx),%eax
801014a4:	83 e0 07             	and    $0x7,%eax
801014a7:	c1 e0 06             	shl    $0x6,%eax
801014aa:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
  dip->type = ip->type;
801014ae:	0f b7 53 50          	movzwl 0x50(%ebx),%edx
801014b2:	66 89 10             	mov    %dx,(%eax)
  dip->major = ip->major;
801014b5:	0f b7 53 52          	movzwl 0x52(%ebx),%edx
801014b9:	66 89 50 02          	mov    %dx,0x2(%eax)
  dip->minor = ip->minor;
801014bd:	0f b7 53 54          	movzwl 0x54(%ebx),%edx
801014c1:	66 89 50 04          	mov    %dx,0x4(%eax)
  dip->nlink = ip->nlink;
801014c5:	0f b7 53 56          	movzwl 0x56(%ebx),%edx
801014c9:	66 89 50 06          	mov    %dx,0x6(%eax)
  dip->size = ip->size;
801014cd:	8b 53 58             	mov    0x58(%ebx),%edx
801014d0:	89 50 08             	mov    %edx,0x8(%eax)
  memmove(dip->addrs, ip->addrs, sizeof(ip->addrs));
801014d3:	83 c3 5c             	add    $0x5c,%ebx
801014d6:	83 c0 0c             	add    $0xc,%eax
801014d9:	83 c4 0c             	add    $0xc,%esp
801014dc:	6a 34                	push   $0x34
801014de:	53                   	push   %ebx
801014df:	50                   	push   %eax
801014e0:	e8 24 29 00 00       	call   80103e09 <memmove>
  log_write(bp);
801014e5:	89 34 24             	mov    %esi,(%esp)
801014e8:	e8 ae 14 00 00       	call   8010299b <log_write>
  brelse(bp);
801014ed:	89 34 24             	mov    %esi,(%esp)
801014f0:	e8 ec ec ff ff       	call   801001e1 <brelse>
}
801014f5:	83 c4 10             	add    $0x10,%esp
801014f8:	8d 65 f8             	lea    -0x8(%ebp),%esp
801014fb:	5b                   	pop    %ebx
801014fc:	5e                   	pop    %esi
801014fd:	5d                   	pop    %ebp
801014fe:	c3                   	ret    

801014ff <itrunc>:
{
801014ff:	55                   	push   %ebp
80101500:	89 e5                	mov    %esp,%ebp
80101502:	57                   	push   %edi
80101503:	56                   	push   %esi
80101504:	53                   	push   %ebx
80101505:	83 ec 1c             	sub    $0x1c,%esp
80101508:	89 c6                	mov    %eax,%esi
  for(i = 0; i < NDIRECT; i++){
8010150a:	bb 00 00 00 00       	mov    $0x0,%ebx
8010150f:	eb 03                	jmp    80101514 <itrunc+0x15>
80101511:	83 c3 01             	add    $0x1,%ebx
80101514:	83 fb 0b             	cmp    $0xb,%ebx
80101517:	7f 19                	jg     80101532 <itrunc+0x33>
    if(ip->addrs[i]){
80101519:	8b 54 9e 5c          	mov    0x5c(%esi,%ebx,4),%edx
8010151d:	85 d2                	test   %edx,%edx
8010151f:	74 f0                	je     80101511 <itrunc+0x12>
      bfree(ip->dev, ip->addrs[i]);
80101521:	8b 06                	mov    (%esi),%eax
80101523:	e8 92 fd ff ff       	call   801012ba <bfree>
      ip->addrs[i] = 0;
80101528:	c7 44 9e 5c 00 00 00 	movl   $0x0,0x5c(%esi,%ebx,4)
8010152f:	00 
80101530:	eb df                	jmp    80101511 <itrunc+0x12>
  if(ip->addrs[NDIRECT]){
80101532:	8b 86 8c 00 00 00    	mov    0x8c(%esi),%eax
80101538:	85 c0                	test   %eax,%eax
8010153a:	75 1b                	jne    80101557 <itrunc+0x58>
  ip->size = 0;
8010153c:	c7 46 58 00 00 00 00 	movl   $0x0,0x58(%esi)
  iupdate(ip);
80101543:	83 ec 0c             	sub    $0xc,%esp
80101546:	56                   	push   %esi
80101547:	e8 30 ff ff ff       	call   8010147c <iupdate>
}
8010154c:	83 c4 10             	add    $0x10,%esp
8010154f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101552:	5b                   	pop    %ebx
80101553:	5e                   	pop    %esi
80101554:	5f                   	pop    %edi
80101555:	5d                   	pop    %ebp
80101556:	c3                   	ret    
    bp = bread(ip->dev, ip->addrs[NDIRECT]);
80101557:	83 ec 08             	sub    $0x8,%esp
8010155a:	50                   	push   %eax
8010155b:	ff 36                	pushl  (%esi)
8010155d:	e8 0e ec ff ff       	call   80100170 <bread>
80101562:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a = (uint*)bp->data;
80101565:	8d 78 5c             	lea    0x5c(%eax),%edi
    for(j = 0; j < NINDIRECT; j++){
80101568:	83 c4 10             	add    $0x10,%esp
8010156b:	bb 00 00 00 00       	mov    $0x0,%ebx
80101570:	eb 0a                	jmp    8010157c <itrunc+0x7d>
        bfree(ip->dev, a[j]);
80101572:	8b 06                	mov    (%esi),%eax
80101574:	e8 41 fd ff ff       	call   801012ba <bfree>
    for(j = 0; j < NINDIRECT; j++){
80101579:	83 c3 01             	add    $0x1,%ebx
8010157c:	83 fb 7f             	cmp    $0x7f,%ebx
8010157f:	77 09                	ja     8010158a <itrunc+0x8b>
      if(a[j])
80101581:	8b 14 9f             	mov    (%edi,%ebx,4),%edx
80101584:	85 d2                	test   %edx,%edx
80101586:	74 f1                	je     80101579 <itrunc+0x7a>
80101588:	eb e8                	jmp    80101572 <itrunc+0x73>
    brelse(bp);
8010158a:	83 ec 0c             	sub    $0xc,%esp
8010158d:	ff 75 e4             	pushl  -0x1c(%ebp)
80101590:	e8 4c ec ff ff       	call   801001e1 <brelse>
    bfree(ip->dev, ip->addrs[NDIRECT]);
80101595:	8b 06                	mov    (%esi),%eax
80101597:	8b 96 8c 00 00 00    	mov    0x8c(%esi),%edx
8010159d:	e8 18 fd ff ff       	call   801012ba <bfree>
    ip->addrs[NDIRECT] = 0;
801015a2:	c7 86 8c 00 00 00 00 	movl   $0x0,0x8c(%esi)
801015a9:	00 00 00 
801015ac:	83 c4 10             	add    $0x10,%esp
801015af:	eb 8b                	jmp    8010153c <itrunc+0x3d>

801015b1 <idup>:
{
801015b1:	f3 0f 1e fb          	endbr32 
801015b5:	55                   	push   %ebp
801015b6:	89 e5                	mov    %esp,%ebp
801015b8:	53                   	push   %ebx
801015b9:	83 ec 10             	sub    $0x10,%esp
801015bc:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&icache.lock);
801015bf:	68 e0 09 11 80       	push   $0x801109e0
801015c4:	e8 0c 27 00 00       	call   80103cd5 <acquire>
  ip->ref++;
801015c9:	8b 43 08             	mov    0x8(%ebx),%eax
801015cc:	83 c0 01             	add    $0x1,%eax
801015cf:	89 43 08             	mov    %eax,0x8(%ebx)
  release(&icache.lock);
801015d2:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
801015d9:	e8 60 27 00 00       	call   80103d3e <release>
}
801015de:	89 d8                	mov    %ebx,%eax
801015e0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801015e3:	c9                   	leave  
801015e4:	c3                   	ret    

801015e5 <ilock>:
{
801015e5:	f3 0f 1e fb          	endbr32 
801015e9:	55                   	push   %ebp
801015ea:	89 e5                	mov    %esp,%ebp
801015ec:	56                   	push   %esi
801015ed:	53                   	push   %ebx
801015ee:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(ip == 0 || ip->ref < 1)
801015f1:	85 db                	test   %ebx,%ebx
801015f3:	74 22                	je     80101617 <ilock+0x32>
801015f5:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
801015f9:	7e 1c                	jle    80101617 <ilock+0x32>
  acquiresleep(&ip->lock);
801015fb:	83 ec 0c             	sub    $0xc,%esp
801015fe:	8d 43 0c             	lea    0xc(%ebx),%eax
80101601:	50                   	push   %eax
80101602:	e8 9a 24 00 00       	call   80103aa1 <acquiresleep>
  if(ip->valid == 0){
80101607:	83 c4 10             	add    $0x10,%esp
8010160a:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
8010160e:	74 14                	je     80101624 <ilock+0x3f>
}
80101610:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101613:	5b                   	pop    %ebx
80101614:	5e                   	pop    %esi
80101615:	5d                   	pop    %ebp
80101616:	c3                   	ret    
    panic("ilock");
80101617:	83 ec 0c             	sub    $0xc,%esp
8010161a:	68 2a 68 10 80       	push   $0x8010682a
8010161f:	e8 38 ed ff ff       	call   8010035c <panic>
    bp = bread(ip->dev, IBLOCK(ip->inum, sb));
80101624:	8b 43 04             	mov    0x4(%ebx),%eax
80101627:	c1 e8 03             	shr    $0x3,%eax
8010162a:	83 ec 08             	sub    $0x8,%esp
8010162d:	03 05 d4 09 11 80    	add    0x801109d4,%eax
80101633:	50                   	push   %eax
80101634:	ff 33                	pushl  (%ebx)
80101636:	e8 35 eb ff ff       	call   80100170 <bread>
8010163b:	89 c6                	mov    %eax,%esi
    dip = (struct dinode*)bp->data + ip->inum%IPB;
8010163d:	8b 43 04             	mov    0x4(%ebx),%eax
80101640:	83 e0 07             	and    $0x7,%eax
80101643:	c1 e0 06             	shl    $0x6,%eax
80101646:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
    ip->type = dip->type;
8010164a:	0f b7 10             	movzwl (%eax),%edx
8010164d:	66 89 53 50          	mov    %dx,0x50(%ebx)
    ip->major = dip->major;
80101651:	0f b7 50 02          	movzwl 0x2(%eax),%edx
80101655:	66 89 53 52          	mov    %dx,0x52(%ebx)
    ip->minor = dip->minor;
80101659:	0f b7 50 04          	movzwl 0x4(%eax),%edx
8010165d:	66 89 53 54          	mov    %dx,0x54(%ebx)
    ip->nlink = dip->nlink;
80101661:	0f b7 50 06          	movzwl 0x6(%eax),%edx
80101665:	66 89 53 56          	mov    %dx,0x56(%ebx)
    ip->size = dip->size;
80101669:	8b 50 08             	mov    0x8(%eax),%edx
8010166c:	89 53 58             	mov    %edx,0x58(%ebx)
    memmove(ip->addrs, dip->addrs, sizeof(ip->addrs));
8010166f:	83 c0 0c             	add    $0xc,%eax
80101672:	8d 53 5c             	lea    0x5c(%ebx),%edx
80101675:	83 c4 0c             	add    $0xc,%esp
80101678:	6a 34                	push   $0x34
8010167a:	50                   	push   %eax
8010167b:	52                   	push   %edx
8010167c:	e8 88 27 00 00       	call   80103e09 <memmove>
    brelse(bp);
80101681:	89 34 24             	mov    %esi,(%esp)
80101684:	e8 58 eb ff ff       	call   801001e1 <brelse>
    ip->valid = 1;
80101689:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
    if(ip->type == 0)
80101690:	83 c4 10             	add    $0x10,%esp
80101693:	66 83 7b 50 00       	cmpw   $0x0,0x50(%ebx)
80101698:	0f 85 72 ff ff ff    	jne    80101610 <ilock+0x2b>
      panic("ilock: no type");
8010169e:	83 ec 0c             	sub    $0xc,%esp
801016a1:	68 30 68 10 80       	push   $0x80106830
801016a6:	e8 b1 ec ff ff       	call   8010035c <panic>

801016ab <iunlock>:
{
801016ab:	f3 0f 1e fb          	endbr32 
801016af:	55                   	push   %ebp
801016b0:	89 e5                	mov    %esp,%ebp
801016b2:	56                   	push   %esi
801016b3:	53                   	push   %ebx
801016b4:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(ip == 0 || !holdingsleep(&ip->lock) || ip->ref < 1)
801016b7:	85 db                	test   %ebx,%ebx
801016b9:	74 2c                	je     801016e7 <iunlock+0x3c>
801016bb:	8d 73 0c             	lea    0xc(%ebx),%esi
801016be:	83 ec 0c             	sub    $0xc,%esp
801016c1:	56                   	push   %esi
801016c2:	e8 6c 24 00 00       	call   80103b33 <holdingsleep>
801016c7:	83 c4 10             	add    $0x10,%esp
801016ca:	85 c0                	test   %eax,%eax
801016cc:	74 19                	je     801016e7 <iunlock+0x3c>
801016ce:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
801016d2:	7e 13                	jle    801016e7 <iunlock+0x3c>
  releasesleep(&ip->lock);
801016d4:	83 ec 0c             	sub    $0xc,%esp
801016d7:	56                   	push   %esi
801016d8:	e8 17 24 00 00       	call   80103af4 <releasesleep>
}
801016dd:	83 c4 10             	add    $0x10,%esp
801016e0:	8d 65 f8             	lea    -0x8(%ebp),%esp
801016e3:	5b                   	pop    %ebx
801016e4:	5e                   	pop    %esi
801016e5:	5d                   	pop    %ebp
801016e6:	c3                   	ret    
    panic("iunlock");
801016e7:	83 ec 0c             	sub    $0xc,%esp
801016ea:	68 3f 68 10 80       	push   $0x8010683f
801016ef:	e8 68 ec ff ff       	call   8010035c <panic>

801016f4 <iput>:
{
801016f4:	f3 0f 1e fb          	endbr32 
801016f8:	55                   	push   %ebp
801016f9:	89 e5                	mov    %esp,%ebp
801016fb:	57                   	push   %edi
801016fc:	56                   	push   %esi
801016fd:	53                   	push   %ebx
801016fe:	83 ec 18             	sub    $0x18,%esp
80101701:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquiresleep(&ip->lock);
80101704:	8d 73 0c             	lea    0xc(%ebx),%esi
80101707:	56                   	push   %esi
80101708:	e8 94 23 00 00       	call   80103aa1 <acquiresleep>
  if(ip->valid && ip->nlink == 0){
8010170d:	83 c4 10             	add    $0x10,%esp
80101710:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
80101714:	74 07                	je     8010171d <iput+0x29>
80101716:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
8010171b:	74 35                	je     80101752 <iput+0x5e>
  releasesleep(&ip->lock);
8010171d:	83 ec 0c             	sub    $0xc,%esp
80101720:	56                   	push   %esi
80101721:	e8 ce 23 00 00       	call   80103af4 <releasesleep>
  acquire(&icache.lock);
80101726:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
8010172d:	e8 a3 25 00 00       	call   80103cd5 <acquire>
  ip->ref--;
80101732:	8b 43 08             	mov    0x8(%ebx),%eax
80101735:	83 e8 01             	sub    $0x1,%eax
80101738:	89 43 08             	mov    %eax,0x8(%ebx)
  release(&icache.lock);
8010173b:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101742:	e8 f7 25 00 00       	call   80103d3e <release>
}
80101747:	83 c4 10             	add    $0x10,%esp
8010174a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010174d:	5b                   	pop    %ebx
8010174e:	5e                   	pop    %esi
8010174f:	5f                   	pop    %edi
80101750:	5d                   	pop    %ebp
80101751:	c3                   	ret    
    acquire(&icache.lock);
80101752:	83 ec 0c             	sub    $0xc,%esp
80101755:	68 e0 09 11 80       	push   $0x801109e0
8010175a:	e8 76 25 00 00       	call   80103cd5 <acquire>
    int r = ip->ref;
8010175f:	8b 7b 08             	mov    0x8(%ebx),%edi
    release(&icache.lock);
80101762:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101769:	e8 d0 25 00 00       	call   80103d3e <release>
    if(r == 1){
8010176e:	83 c4 10             	add    $0x10,%esp
80101771:	83 ff 01             	cmp    $0x1,%edi
80101774:	75 a7                	jne    8010171d <iput+0x29>
      itrunc(ip);
80101776:	89 d8                	mov    %ebx,%eax
80101778:	e8 82 fd ff ff       	call   801014ff <itrunc>
      ip->type = 0;
8010177d:	66 c7 43 50 00 00    	movw   $0x0,0x50(%ebx)
      iupdate(ip);
80101783:	83 ec 0c             	sub    $0xc,%esp
80101786:	53                   	push   %ebx
80101787:	e8 f0 fc ff ff       	call   8010147c <iupdate>
      ip->valid = 0;
8010178c:	c7 43 4c 00 00 00 00 	movl   $0x0,0x4c(%ebx)
80101793:	83 c4 10             	add    $0x10,%esp
80101796:	eb 85                	jmp    8010171d <iput+0x29>

80101798 <iunlockput>:
{
80101798:	f3 0f 1e fb          	endbr32 
8010179c:	55                   	push   %ebp
8010179d:	89 e5                	mov    %esp,%ebp
8010179f:	53                   	push   %ebx
801017a0:	83 ec 10             	sub    $0x10,%esp
801017a3:	8b 5d 08             	mov    0x8(%ebp),%ebx
  iunlock(ip);
801017a6:	53                   	push   %ebx
801017a7:	e8 ff fe ff ff       	call   801016ab <iunlock>
  iput(ip);
801017ac:	89 1c 24             	mov    %ebx,(%esp)
801017af:	e8 40 ff ff ff       	call   801016f4 <iput>
}
801017b4:	83 c4 10             	add    $0x10,%esp
801017b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801017ba:	c9                   	leave  
801017bb:	c3                   	ret    

801017bc <stati>:
{
801017bc:	f3 0f 1e fb          	endbr32 
801017c0:	55                   	push   %ebp
801017c1:	89 e5                	mov    %esp,%ebp
801017c3:	8b 55 08             	mov    0x8(%ebp),%edx
801017c6:	8b 45 0c             	mov    0xc(%ebp),%eax
  st->dev = ip->dev;
801017c9:	8b 0a                	mov    (%edx),%ecx
801017cb:	89 48 04             	mov    %ecx,0x4(%eax)
  st->ino = ip->inum;
801017ce:	8b 4a 04             	mov    0x4(%edx),%ecx
801017d1:	89 48 08             	mov    %ecx,0x8(%eax)
  st->type = ip->type;
801017d4:	0f b7 4a 50          	movzwl 0x50(%edx),%ecx
801017d8:	66 89 08             	mov    %cx,(%eax)
  st->nlink = ip->nlink;
801017db:	0f b7 4a 56          	movzwl 0x56(%edx),%ecx
801017df:	66 89 48 0c          	mov    %cx,0xc(%eax)
  st->size = ip->size;
801017e3:	8b 52 58             	mov    0x58(%edx),%edx
801017e6:	89 50 10             	mov    %edx,0x10(%eax)
}
801017e9:	5d                   	pop    %ebp
801017ea:	c3                   	ret    

801017eb <readi>:
{
801017eb:	f3 0f 1e fb          	endbr32 
801017ef:	55                   	push   %ebp
801017f0:	89 e5                	mov    %esp,%ebp
801017f2:	57                   	push   %edi
801017f3:	56                   	push   %esi
801017f4:	53                   	push   %ebx
801017f5:	83 ec 1c             	sub    $0x1c,%esp
801017f8:	8b 75 10             	mov    0x10(%ebp),%esi
  if(ip->type == T_DEV){
801017fb:	8b 45 08             	mov    0x8(%ebp),%eax
801017fe:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101803:	74 2c                	je     80101831 <readi+0x46>
  if(off > ip->size || off + n < off)
80101805:	8b 45 08             	mov    0x8(%ebp),%eax
80101808:	8b 40 58             	mov    0x58(%eax),%eax
8010180b:	39 f0                	cmp    %esi,%eax
8010180d:	0f 82 cb 00 00 00    	jb     801018de <readi+0xf3>
80101813:	89 f2                	mov    %esi,%edx
80101815:	03 55 14             	add    0x14(%ebp),%edx
80101818:	0f 82 c7 00 00 00    	jb     801018e5 <readi+0xfa>
  if(off + n > ip->size)
8010181e:	39 d0                	cmp    %edx,%eax
80101820:	73 05                	jae    80101827 <readi+0x3c>
    n = ip->size - off;
80101822:	29 f0                	sub    %esi,%eax
80101824:	89 45 14             	mov    %eax,0x14(%ebp)
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
80101827:	bf 00 00 00 00       	mov    $0x0,%edi
8010182c:	e9 8f 00 00 00       	jmp    801018c0 <readi+0xd5>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].read)
80101831:	0f b7 40 52          	movzwl 0x52(%eax),%eax
80101835:	66 83 f8 09          	cmp    $0x9,%ax
80101839:	0f 87 91 00 00 00    	ja     801018d0 <readi+0xe5>
8010183f:	98                   	cwtl   
80101840:	8b 04 c5 60 09 11 80 	mov    -0x7feef6a0(,%eax,8),%eax
80101847:	85 c0                	test   %eax,%eax
80101849:	0f 84 88 00 00 00    	je     801018d7 <readi+0xec>
    return devsw[ip->major].read(ip, dst, n);
8010184f:	83 ec 04             	sub    $0x4,%esp
80101852:	ff 75 14             	pushl  0x14(%ebp)
80101855:	ff 75 0c             	pushl  0xc(%ebp)
80101858:	ff 75 08             	pushl  0x8(%ebp)
8010185b:	ff d0                	call   *%eax
8010185d:	83 c4 10             	add    $0x10,%esp
80101860:	eb 66                	jmp    801018c8 <readi+0xdd>
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
80101862:	89 f2                	mov    %esi,%edx
80101864:	c1 ea 09             	shr    $0x9,%edx
80101867:	8b 45 08             	mov    0x8(%ebp),%eax
8010186a:	e8 be f8 ff ff       	call   8010112d <bmap>
8010186f:	83 ec 08             	sub    $0x8,%esp
80101872:	50                   	push   %eax
80101873:	8b 45 08             	mov    0x8(%ebp),%eax
80101876:	ff 30                	pushl  (%eax)
80101878:	e8 f3 e8 ff ff       	call   80100170 <bread>
8010187d:	89 c1                	mov    %eax,%ecx
    m = min(n - tot, BSIZE - off%BSIZE);
8010187f:	89 f0                	mov    %esi,%eax
80101881:	25 ff 01 00 00       	and    $0x1ff,%eax
80101886:	bb 00 02 00 00       	mov    $0x200,%ebx
8010188b:	29 c3                	sub    %eax,%ebx
8010188d:	8b 55 14             	mov    0x14(%ebp),%edx
80101890:	29 fa                	sub    %edi,%edx
80101892:	83 c4 0c             	add    $0xc,%esp
80101895:	39 d3                	cmp    %edx,%ebx
80101897:	0f 47 da             	cmova  %edx,%ebx
    memmove(dst, bp->data + off%BSIZE, m);
8010189a:	53                   	push   %ebx
8010189b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
8010189e:	8d 44 01 5c          	lea    0x5c(%ecx,%eax,1),%eax
801018a2:	50                   	push   %eax
801018a3:	ff 75 0c             	pushl  0xc(%ebp)
801018a6:	e8 5e 25 00 00       	call   80103e09 <memmove>
    brelse(bp);
801018ab:	83 c4 04             	add    $0x4,%esp
801018ae:	ff 75 e4             	pushl  -0x1c(%ebp)
801018b1:	e8 2b e9 ff ff       	call   801001e1 <brelse>
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
801018b6:	01 df                	add    %ebx,%edi
801018b8:	01 de                	add    %ebx,%esi
801018ba:	01 5d 0c             	add    %ebx,0xc(%ebp)
801018bd:	83 c4 10             	add    $0x10,%esp
801018c0:	39 7d 14             	cmp    %edi,0x14(%ebp)
801018c3:	77 9d                	ja     80101862 <readi+0x77>
  return n;
801018c5:	8b 45 14             	mov    0x14(%ebp),%eax
}
801018c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
801018cb:	5b                   	pop    %ebx
801018cc:	5e                   	pop    %esi
801018cd:	5f                   	pop    %edi
801018ce:	5d                   	pop    %ebp
801018cf:	c3                   	ret    
      return -1;
801018d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018d5:	eb f1                	jmp    801018c8 <readi+0xdd>
801018d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018dc:	eb ea                	jmp    801018c8 <readi+0xdd>
    return -1;
801018de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018e3:	eb e3                	jmp    801018c8 <readi+0xdd>
801018e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018ea:	eb dc                	jmp    801018c8 <readi+0xdd>

801018ec <writei>:
{
801018ec:	f3 0f 1e fb          	endbr32 
801018f0:	55                   	push   %ebp
801018f1:	89 e5                	mov    %esp,%ebp
801018f3:	57                   	push   %edi
801018f4:	56                   	push   %esi
801018f5:	53                   	push   %ebx
801018f6:	83 ec 1c             	sub    $0x1c,%esp
801018f9:	8b 75 10             	mov    0x10(%ebp),%esi
  if(ip->type == T_DEV){
801018fc:	8b 45 08             	mov    0x8(%ebp),%eax
801018ff:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101904:	0f 84 9b 00 00 00    	je     801019a5 <writei+0xb9>
  if(off > ip->size || off + n < off)
8010190a:	8b 45 08             	mov    0x8(%ebp),%eax
8010190d:	39 70 58             	cmp    %esi,0x58(%eax)
80101910:	0f 82 f0 00 00 00    	jb     80101a06 <writei+0x11a>
80101916:	89 f0                	mov    %esi,%eax
80101918:	03 45 14             	add    0x14(%ebp),%eax
8010191b:	0f 82 ec 00 00 00    	jb     80101a0d <writei+0x121>
  if(off + n > MAXFILE*BSIZE)
80101921:	3d 00 18 01 00       	cmp    $0x11800,%eax
80101926:	0f 87 e8 00 00 00    	ja     80101a14 <writei+0x128>
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
8010192c:	bf 00 00 00 00       	mov    $0x0,%edi
80101931:	3b 7d 14             	cmp    0x14(%ebp),%edi
80101934:	0f 83 94 00 00 00    	jae    801019ce <writei+0xe2>
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
8010193a:	89 f2                	mov    %esi,%edx
8010193c:	c1 ea 09             	shr    $0x9,%edx
8010193f:	8b 45 08             	mov    0x8(%ebp),%eax
80101942:	e8 e6 f7 ff ff       	call   8010112d <bmap>
80101947:	83 ec 08             	sub    $0x8,%esp
8010194a:	50                   	push   %eax
8010194b:	8b 45 08             	mov    0x8(%ebp),%eax
8010194e:	ff 30                	pushl  (%eax)
80101950:	e8 1b e8 ff ff       	call   80100170 <bread>
80101955:	89 c1                	mov    %eax,%ecx
    m = min(n - tot, BSIZE - off%BSIZE);
80101957:	89 f0                	mov    %esi,%eax
80101959:	25 ff 01 00 00       	and    $0x1ff,%eax
8010195e:	bb 00 02 00 00       	mov    $0x200,%ebx
80101963:	29 c3                	sub    %eax,%ebx
80101965:	8b 55 14             	mov    0x14(%ebp),%edx
80101968:	29 fa                	sub    %edi,%edx
8010196a:	83 c4 0c             	add    $0xc,%esp
8010196d:	39 d3                	cmp    %edx,%ebx
8010196f:	0f 47 da             	cmova  %edx,%ebx
    memmove(bp->data + off%BSIZE, src, m);
80101972:	53                   	push   %ebx
80101973:	ff 75 0c             	pushl  0xc(%ebp)
80101976:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80101979:	8d 44 01 5c          	lea    0x5c(%ecx,%eax,1),%eax
8010197d:	50                   	push   %eax
8010197e:	e8 86 24 00 00       	call   80103e09 <memmove>
    log_write(bp);
80101983:	83 c4 04             	add    $0x4,%esp
80101986:	ff 75 e4             	pushl  -0x1c(%ebp)
80101989:	e8 0d 10 00 00       	call   8010299b <log_write>
    brelse(bp);
8010198e:	83 c4 04             	add    $0x4,%esp
80101991:	ff 75 e4             	pushl  -0x1c(%ebp)
80101994:	e8 48 e8 ff ff       	call   801001e1 <brelse>
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
80101999:	01 df                	add    %ebx,%edi
8010199b:	01 de                	add    %ebx,%esi
8010199d:	01 5d 0c             	add    %ebx,0xc(%ebp)
801019a0:	83 c4 10             	add    $0x10,%esp
801019a3:	eb 8c                	jmp    80101931 <writei+0x45>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].write)
801019a5:	0f b7 40 52          	movzwl 0x52(%eax),%eax
801019a9:	66 83 f8 09          	cmp    $0x9,%ax
801019ad:	77 49                	ja     801019f8 <writei+0x10c>
801019af:	98                   	cwtl   
801019b0:	8b 04 c5 64 09 11 80 	mov    -0x7feef69c(,%eax,8),%eax
801019b7:	85 c0                	test   %eax,%eax
801019b9:	74 44                	je     801019ff <writei+0x113>
    return devsw[ip->major].write(ip, src, n);
801019bb:	83 ec 04             	sub    $0x4,%esp
801019be:	ff 75 14             	pushl  0x14(%ebp)
801019c1:	ff 75 0c             	pushl  0xc(%ebp)
801019c4:	ff 75 08             	pushl  0x8(%ebp)
801019c7:	ff d0                	call   *%eax
801019c9:	83 c4 10             	add    $0x10,%esp
801019cc:	eb 11                	jmp    801019df <writei+0xf3>
  if(n > 0 && off > ip->size){
801019ce:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
801019d2:	74 08                	je     801019dc <writei+0xf0>
801019d4:	8b 45 08             	mov    0x8(%ebp),%eax
801019d7:	39 70 58             	cmp    %esi,0x58(%eax)
801019da:	72 0b                	jb     801019e7 <writei+0xfb>
  return n;
801019dc:	8b 45 14             	mov    0x14(%ebp),%eax
}
801019df:	8d 65 f4             	lea    -0xc(%ebp),%esp
801019e2:	5b                   	pop    %ebx
801019e3:	5e                   	pop    %esi
801019e4:	5f                   	pop    %edi
801019e5:	5d                   	pop    %ebp
801019e6:	c3                   	ret    
    ip->size = off;
801019e7:	89 70 58             	mov    %esi,0x58(%eax)
    iupdate(ip);
801019ea:	83 ec 0c             	sub    $0xc,%esp
801019ed:	50                   	push   %eax
801019ee:	e8 89 fa ff ff       	call   8010147c <iupdate>
801019f3:	83 c4 10             	add    $0x10,%esp
801019f6:	eb e4                	jmp    801019dc <writei+0xf0>
      return -1;
801019f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801019fd:	eb e0                	jmp    801019df <writei+0xf3>
801019ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a04:	eb d9                	jmp    801019df <writei+0xf3>
    return -1;
80101a06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a0b:	eb d2                	jmp    801019df <writei+0xf3>
80101a0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a12:	eb cb                	jmp    801019df <writei+0xf3>
    return -1;
80101a14:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a19:	eb c4                	jmp    801019df <writei+0xf3>

80101a1b <namecmp>:
{
80101a1b:	f3 0f 1e fb          	endbr32 
80101a1f:	55                   	push   %ebp
80101a20:	89 e5                	mov    %esp,%ebp
80101a22:	83 ec 0c             	sub    $0xc,%esp
  return strncmp(s, t, DIRSIZ);
80101a25:	6a 0e                	push   $0xe
80101a27:	ff 75 0c             	pushl  0xc(%ebp)
80101a2a:	ff 75 08             	pushl  0x8(%ebp)
80101a2d:	e8 49 24 00 00       	call   80103e7b <strncmp>
}
80101a32:	c9                   	leave  
80101a33:	c3                   	ret    

80101a34 <dirlookup>:
{
80101a34:	f3 0f 1e fb          	endbr32 
80101a38:	55                   	push   %ebp
80101a39:	89 e5                	mov    %esp,%ebp
80101a3b:	57                   	push   %edi
80101a3c:	56                   	push   %esi
80101a3d:	53                   	push   %ebx
80101a3e:	83 ec 1c             	sub    $0x1c,%esp
80101a41:	8b 75 08             	mov    0x8(%ebp),%esi
80101a44:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(dp->type != T_DIR)
80101a47:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101a4c:	75 07                	jne    80101a55 <dirlookup+0x21>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101a4e:	bb 00 00 00 00       	mov    $0x0,%ebx
80101a53:	eb 1d                	jmp    80101a72 <dirlookup+0x3e>
    panic("dirlookup not DIR");
80101a55:	83 ec 0c             	sub    $0xc,%esp
80101a58:	68 47 68 10 80       	push   $0x80106847
80101a5d:	e8 fa e8 ff ff       	call   8010035c <panic>
      panic("dirlookup read");
80101a62:	83 ec 0c             	sub    $0xc,%esp
80101a65:	68 59 68 10 80       	push   $0x80106859
80101a6a:	e8 ed e8 ff ff       	call   8010035c <panic>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101a6f:	83 c3 10             	add    $0x10,%ebx
80101a72:	39 5e 58             	cmp    %ebx,0x58(%esi)
80101a75:	76 48                	jbe    80101abf <dirlookup+0x8b>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101a77:	6a 10                	push   $0x10
80101a79:	53                   	push   %ebx
80101a7a:	8d 45 d8             	lea    -0x28(%ebp),%eax
80101a7d:	50                   	push   %eax
80101a7e:	56                   	push   %esi
80101a7f:	e8 67 fd ff ff       	call   801017eb <readi>
80101a84:	83 c4 10             	add    $0x10,%esp
80101a87:	83 f8 10             	cmp    $0x10,%eax
80101a8a:	75 d6                	jne    80101a62 <dirlookup+0x2e>
    if(de.inum == 0)
80101a8c:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101a91:	74 dc                	je     80101a6f <dirlookup+0x3b>
    if(namecmp(name, de.name) == 0){
80101a93:	83 ec 08             	sub    $0x8,%esp
80101a96:	8d 45 da             	lea    -0x26(%ebp),%eax
80101a99:	50                   	push   %eax
80101a9a:	57                   	push   %edi
80101a9b:	e8 7b ff ff ff       	call   80101a1b <namecmp>
80101aa0:	83 c4 10             	add    $0x10,%esp
80101aa3:	85 c0                	test   %eax,%eax
80101aa5:	75 c8                	jne    80101a6f <dirlookup+0x3b>
      if(poff)
80101aa7:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80101aab:	74 05                	je     80101ab2 <dirlookup+0x7e>
        *poff = off;
80101aad:	8b 45 10             	mov    0x10(%ebp),%eax
80101ab0:	89 18                	mov    %ebx,(%eax)
      inum = de.inum;
80101ab2:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
      return iget(dp->dev, inum);
80101ab6:	8b 06                	mov    (%esi),%eax
80101ab8:	e8 16 f7 ff ff       	call   801011d3 <iget>
80101abd:	eb 05                	jmp    80101ac4 <dirlookup+0x90>
  return 0;
80101abf:	b8 00 00 00 00       	mov    $0x0,%eax
}
80101ac4:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101ac7:	5b                   	pop    %ebx
80101ac8:	5e                   	pop    %esi
80101ac9:	5f                   	pop    %edi
80101aca:	5d                   	pop    %ebp
80101acb:	c3                   	ret    

80101acc <namex>:
// If parent != 0, return the inode for the parent and copy the final
// path element into name, which must have room for DIRSIZ bytes.
// Must be called inside a transaction since it calls iput().
static struct inode*
namex(char *path, int nameiparent, char *name)
{
80101acc:	55                   	push   %ebp
80101acd:	89 e5                	mov    %esp,%ebp
80101acf:	57                   	push   %edi
80101ad0:	56                   	push   %esi
80101ad1:	53                   	push   %ebx
80101ad2:	83 ec 1c             	sub    $0x1c,%esp
80101ad5:	89 c3                	mov    %eax,%ebx
80101ad7:	89 55 e0             	mov    %edx,-0x20(%ebp)
80101ada:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  struct inode *ip, *next;

  if(*path == '/')
80101add:	80 38 2f             	cmpb   $0x2f,(%eax)
80101ae0:	74 17                	je     80101af9 <namex+0x2d>
    ip = iget(ROOTDEV, ROOTINO);
  else
    ip = idup(myproc()->cwd);
80101ae2:	e8 f9 17 00 00       	call   801032e0 <myproc>
80101ae7:	83 ec 0c             	sub    $0xc,%esp
80101aea:	ff 70 68             	pushl  0x68(%eax)
80101aed:	e8 bf fa ff ff       	call   801015b1 <idup>
80101af2:	89 c6                	mov    %eax,%esi
80101af4:	83 c4 10             	add    $0x10,%esp
80101af7:	eb 53                	jmp    80101b4c <namex+0x80>
    ip = iget(ROOTDEV, ROOTINO);
80101af9:	ba 01 00 00 00       	mov    $0x1,%edx
80101afe:	b8 01 00 00 00       	mov    $0x1,%eax
80101b03:	e8 cb f6 ff ff       	call   801011d3 <iget>
80101b08:	89 c6                	mov    %eax,%esi
80101b0a:	eb 40                	jmp    80101b4c <namex+0x80>

  while((path = skipelem(path, name)) != 0){
    ilock(ip);
    if(ip->type != T_DIR){
      iunlockput(ip);
80101b0c:	83 ec 0c             	sub    $0xc,%esp
80101b0f:	56                   	push   %esi
80101b10:	e8 83 fc ff ff       	call   80101798 <iunlockput>
      return 0;
80101b15:	83 c4 10             	add    $0x10,%esp
80101b18:	be 00 00 00 00       	mov    $0x0,%esi
  if(nameiparent){
    iput(ip);
    return 0;
  }
  return ip;
}
80101b1d:	89 f0                	mov    %esi,%eax
80101b1f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101b22:	5b                   	pop    %ebx
80101b23:	5e                   	pop    %esi
80101b24:	5f                   	pop    %edi
80101b25:	5d                   	pop    %ebp
80101b26:	c3                   	ret    
    if((next = dirlookup(ip, name, 0)) == 0){
80101b27:	83 ec 04             	sub    $0x4,%esp
80101b2a:	6a 00                	push   $0x0
80101b2c:	ff 75 e4             	pushl  -0x1c(%ebp)
80101b2f:	56                   	push   %esi
80101b30:	e8 ff fe ff ff       	call   80101a34 <dirlookup>
80101b35:	89 c7                	mov    %eax,%edi
80101b37:	83 c4 10             	add    $0x10,%esp
80101b3a:	85 c0                	test   %eax,%eax
80101b3c:	74 4a                	je     80101b88 <namex+0xbc>
    iunlockput(ip);
80101b3e:	83 ec 0c             	sub    $0xc,%esp
80101b41:	56                   	push   %esi
80101b42:	e8 51 fc ff ff       	call   80101798 <iunlockput>
80101b47:	83 c4 10             	add    $0x10,%esp
    ip = next;
80101b4a:	89 fe                	mov    %edi,%esi
  while((path = skipelem(path, name)) != 0){
80101b4c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101b4f:	89 d8                	mov    %ebx,%eax
80101b51:	e8 3b f4 ff ff       	call   80100f91 <skipelem>
80101b56:	89 c3                	mov    %eax,%ebx
80101b58:	85 c0                	test   %eax,%eax
80101b5a:	74 3c                	je     80101b98 <namex+0xcc>
    ilock(ip);
80101b5c:	83 ec 0c             	sub    $0xc,%esp
80101b5f:	56                   	push   %esi
80101b60:	e8 80 fa ff ff       	call   801015e5 <ilock>
    if(ip->type != T_DIR){
80101b65:	83 c4 10             	add    $0x10,%esp
80101b68:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101b6d:	75 9d                	jne    80101b0c <namex+0x40>
    if(nameiparent && *path == '\0'){
80101b6f:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80101b73:	74 b2                	je     80101b27 <namex+0x5b>
80101b75:	80 3b 00             	cmpb   $0x0,(%ebx)
80101b78:	75 ad                	jne    80101b27 <namex+0x5b>
      iunlock(ip);
80101b7a:	83 ec 0c             	sub    $0xc,%esp
80101b7d:	56                   	push   %esi
80101b7e:	e8 28 fb ff ff       	call   801016ab <iunlock>
      return ip;
80101b83:	83 c4 10             	add    $0x10,%esp
80101b86:	eb 95                	jmp    80101b1d <namex+0x51>
      iunlockput(ip);
80101b88:	83 ec 0c             	sub    $0xc,%esp
80101b8b:	56                   	push   %esi
80101b8c:	e8 07 fc ff ff       	call   80101798 <iunlockput>
      return 0;
80101b91:	83 c4 10             	add    $0x10,%esp
80101b94:	89 fe                	mov    %edi,%esi
80101b96:	eb 85                	jmp    80101b1d <namex+0x51>
  if(nameiparent){
80101b98:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80101b9c:	0f 84 7b ff ff ff    	je     80101b1d <namex+0x51>
    iput(ip);
80101ba2:	83 ec 0c             	sub    $0xc,%esp
80101ba5:	56                   	push   %esi
80101ba6:	e8 49 fb ff ff       	call   801016f4 <iput>
    return 0;
80101bab:	83 c4 10             	add    $0x10,%esp
80101bae:	89 de                	mov    %ebx,%esi
80101bb0:	e9 68 ff ff ff       	jmp    80101b1d <namex+0x51>

80101bb5 <dirlink>:
{
80101bb5:	f3 0f 1e fb          	endbr32 
80101bb9:	55                   	push   %ebp
80101bba:	89 e5                	mov    %esp,%ebp
80101bbc:	57                   	push   %edi
80101bbd:	56                   	push   %esi
80101bbe:	53                   	push   %ebx
80101bbf:	83 ec 20             	sub    $0x20,%esp
80101bc2:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101bc5:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if((ip = dirlookup(dp, name, 0)) != 0){
80101bc8:	6a 00                	push   $0x0
80101bca:	57                   	push   %edi
80101bcb:	53                   	push   %ebx
80101bcc:	e8 63 fe ff ff       	call   80101a34 <dirlookup>
80101bd1:	83 c4 10             	add    $0x10,%esp
80101bd4:	85 c0                	test   %eax,%eax
80101bd6:	75 07                	jne    80101bdf <dirlink+0x2a>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101bd8:	b8 00 00 00 00       	mov    $0x0,%eax
80101bdd:	eb 23                	jmp    80101c02 <dirlink+0x4d>
    iput(ip);
80101bdf:	83 ec 0c             	sub    $0xc,%esp
80101be2:	50                   	push   %eax
80101be3:	e8 0c fb ff ff       	call   801016f4 <iput>
    return -1;
80101be8:	83 c4 10             	add    $0x10,%esp
80101beb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101bf0:	eb 63                	jmp    80101c55 <dirlink+0xa0>
      panic("dirlink read");
80101bf2:	83 ec 0c             	sub    $0xc,%esp
80101bf5:	68 68 68 10 80       	push   $0x80106868
80101bfa:	e8 5d e7 ff ff       	call   8010035c <panic>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101bff:	8d 46 10             	lea    0x10(%esi),%eax
80101c02:	89 c6                	mov    %eax,%esi
80101c04:	39 43 58             	cmp    %eax,0x58(%ebx)
80101c07:	76 1c                	jbe    80101c25 <dirlink+0x70>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101c09:	6a 10                	push   $0x10
80101c0b:	50                   	push   %eax
80101c0c:	8d 45 d8             	lea    -0x28(%ebp),%eax
80101c0f:	50                   	push   %eax
80101c10:	53                   	push   %ebx
80101c11:	e8 d5 fb ff ff       	call   801017eb <readi>
80101c16:	83 c4 10             	add    $0x10,%esp
80101c19:	83 f8 10             	cmp    $0x10,%eax
80101c1c:	75 d4                	jne    80101bf2 <dirlink+0x3d>
    if(de.inum == 0)
80101c1e:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101c23:	75 da                	jne    80101bff <dirlink+0x4a>
  strncpy(de.name, name, DIRSIZ);
80101c25:	83 ec 04             	sub    $0x4,%esp
80101c28:	6a 0e                	push   $0xe
80101c2a:	57                   	push   %edi
80101c2b:	8d 7d d8             	lea    -0x28(%ebp),%edi
80101c2e:	8d 45 da             	lea    -0x26(%ebp),%eax
80101c31:	50                   	push   %eax
80101c32:	e8 85 22 00 00       	call   80103ebc <strncpy>
  de.inum = inum;
80101c37:	8b 45 10             	mov    0x10(%ebp),%eax
80101c3a:	66 89 45 d8          	mov    %ax,-0x28(%ebp)
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101c3e:	6a 10                	push   $0x10
80101c40:	56                   	push   %esi
80101c41:	57                   	push   %edi
80101c42:	53                   	push   %ebx
80101c43:	e8 a4 fc ff ff       	call   801018ec <writei>
80101c48:	83 c4 20             	add    $0x20,%esp
80101c4b:	83 f8 10             	cmp    $0x10,%eax
80101c4e:	75 0d                	jne    80101c5d <dirlink+0xa8>
  return 0;
80101c50:	b8 00 00 00 00       	mov    $0x0,%eax
}
80101c55:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101c58:	5b                   	pop    %ebx
80101c59:	5e                   	pop    %esi
80101c5a:	5f                   	pop    %edi
80101c5b:	5d                   	pop    %ebp
80101c5c:	c3                   	ret    
    panic("dirlink");
80101c5d:	83 ec 0c             	sub    $0xc,%esp
80101c60:	68 58 6e 10 80       	push   $0x80106e58
80101c65:	e8 f2 e6 ff ff       	call   8010035c <panic>

80101c6a <namei>:

struct inode*
namei(char *path)
{
80101c6a:	f3 0f 1e fb          	endbr32 
80101c6e:	55                   	push   %ebp
80101c6f:	89 e5                	mov    %esp,%ebp
80101c71:	83 ec 18             	sub    $0x18,%esp
  char name[DIRSIZ];
  return namex(path, 0, name);
80101c74:	8d 4d ea             	lea    -0x16(%ebp),%ecx
80101c77:	ba 00 00 00 00       	mov    $0x0,%edx
80101c7c:	8b 45 08             	mov    0x8(%ebp),%eax
80101c7f:	e8 48 fe ff ff       	call   80101acc <namex>
}
80101c84:	c9                   	leave  
80101c85:	c3                   	ret    

80101c86 <nameiparent>:

struct inode*
nameiparent(char *path, char *name)
{
80101c86:	f3 0f 1e fb          	endbr32 
80101c8a:	55                   	push   %ebp
80101c8b:	89 e5                	mov    %esp,%ebp
80101c8d:	83 ec 08             	sub    $0x8,%esp
  return namex(path, 1, name);
80101c90:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80101c93:	ba 01 00 00 00       	mov    $0x1,%edx
80101c98:	8b 45 08             	mov    0x8(%ebp),%eax
80101c9b:	e8 2c fe ff ff       	call   80101acc <namex>
}
80101ca0:	c9                   	leave  
80101ca1:	c3                   	ret    

80101ca2 <idewait>:
static void idestart(struct buf*);

// Wait for IDE disk to become ready.
static int
idewait(int checkerr)
{
80101ca2:	89 c1                	mov    %eax,%ecx
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80101ca4:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101ca9:	ec                   	in     (%dx),%al
80101caa:	89 c2                	mov    %eax,%edx
  int r;

  while(((r = inb(0x1f7)) & (IDE_BSY|IDE_DRDY)) != IDE_DRDY)
80101cac:	83 e0 c0             	and    $0xffffffc0,%eax
80101caf:	3c 40                	cmp    $0x40,%al
80101cb1:	75 f1                	jne    80101ca4 <idewait+0x2>
    ;
  if(checkerr && (r & (IDE_DF|IDE_ERR)) != 0)
80101cb3:	85 c9                	test   %ecx,%ecx
80101cb5:	74 0a                	je     80101cc1 <idewait+0x1f>
80101cb7:	f6 c2 21             	test   $0x21,%dl
80101cba:	75 08                	jne    80101cc4 <idewait+0x22>
    return -1;
  return 0;
80101cbc:	b9 00 00 00 00       	mov    $0x0,%ecx
}
80101cc1:	89 c8                	mov    %ecx,%eax
80101cc3:	c3                   	ret    
    return -1;
80101cc4:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
80101cc9:	eb f6                	jmp    80101cc1 <idewait+0x1f>

80101ccb <idestart>:
}

// Start the request for b.  Caller must hold idelock.
static void
idestart(struct buf *b)
{
80101ccb:	55                   	push   %ebp
80101ccc:	89 e5                	mov    %esp,%ebp
80101cce:	56                   	push   %esi
80101ccf:	53                   	push   %ebx
  if(b == 0)
80101cd0:	85 c0                	test   %eax,%eax
80101cd2:	0f 84 91 00 00 00    	je     80101d69 <idestart+0x9e>
80101cd8:	89 c6                	mov    %eax,%esi
    panic("idestart");
  if(b->blockno >= FSSIZE)
80101cda:	8b 58 08             	mov    0x8(%eax),%ebx
80101cdd:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
80101ce3:	0f 87 8d 00 00 00    	ja     80101d76 <idestart+0xab>
  int read_cmd = (sector_per_block == 1) ? IDE_CMD_READ :  IDE_CMD_RDMUL;
  int write_cmd = (sector_per_block == 1) ? IDE_CMD_WRITE : IDE_CMD_WRMUL;

  if (sector_per_block > 7) panic("idestart");

  idewait(0);
80101ce9:	b8 00 00 00 00       	mov    $0x0,%eax
80101cee:	e8 af ff ff ff       	call   80101ca2 <idewait>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101cf3:	b8 00 00 00 00       	mov    $0x0,%eax
80101cf8:	ba f6 03 00 00       	mov    $0x3f6,%edx
80101cfd:	ee                   	out    %al,(%dx)
80101cfe:	b8 01 00 00 00       	mov    $0x1,%eax
80101d03:	ba f2 01 00 00       	mov    $0x1f2,%edx
80101d08:	ee                   	out    %al,(%dx)
80101d09:	ba f3 01 00 00       	mov    $0x1f3,%edx
80101d0e:	89 d8                	mov    %ebx,%eax
80101d10:	ee                   	out    %al,(%dx)
  outb(0x3f6, 0);  // generate interrupt
  outb(0x1f2, sector_per_block);  // number of sectors
  outb(0x1f3, sector & 0xff);
  outb(0x1f4, (sector >> 8) & 0xff);
80101d11:	89 d8                	mov    %ebx,%eax
80101d13:	c1 f8 08             	sar    $0x8,%eax
80101d16:	ba f4 01 00 00       	mov    $0x1f4,%edx
80101d1b:	ee                   	out    %al,(%dx)
  outb(0x1f5, (sector >> 16) & 0xff);
80101d1c:	89 d8                	mov    %ebx,%eax
80101d1e:	c1 f8 10             	sar    $0x10,%eax
80101d21:	ba f5 01 00 00       	mov    $0x1f5,%edx
80101d26:	ee                   	out    %al,(%dx)
  outb(0x1f6, 0xe0 | ((b->dev&1)<<4) | ((sector>>24)&0x0f));
80101d27:	0f b6 46 04          	movzbl 0x4(%esi),%eax
80101d2b:	c1 e0 04             	shl    $0x4,%eax
80101d2e:	83 e0 10             	and    $0x10,%eax
80101d31:	c1 fb 18             	sar    $0x18,%ebx
80101d34:	83 e3 0f             	and    $0xf,%ebx
80101d37:	09 d8                	or     %ebx,%eax
80101d39:	83 c8 e0             	or     $0xffffffe0,%eax
80101d3c:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101d41:	ee                   	out    %al,(%dx)
  if(b->flags & B_DIRTY){
80101d42:	f6 06 04             	testb  $0x4,(%esi)
80101d45:	74 3c                	je     80101d83 <idestart+0xb8>
80101d47:	b8 30 00 00 00       	mov    $0x30,%eax
80101d4c:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d51:	ee                   	out    %al,(%dx)
    outb(0x1f7, write_cmd);
    outsl(0x1f0, b->data, BSIZE/4);
80101d52:	83 c6 5c             	add    $0x5c,%esi
  asm volatile("cld; rep outsl" :
80101d55:	b9 80 00 00 00       	mov    $0x80,%ecx
80101d5a:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101d5f:	fc                   	cld    
80101d60:	f3 6f                	rep outsl %ds:(%esi),(%dx)
  } else {
    outb(0x1f7, read_cmd);
  }
}
80101d62:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101d65:	5b                   	pop    %ebx
80101d66:	5e                   	pop    %esi
80101d67:	5d                   	pop    %ebp
80101d68:	c3                   	ret    
    panic("idestart");
80101d69:	83 ec 0c             	sub    $0xc,%esp
80101d6c:	68 cb 68 10 80       	push   $0x801068cb
80101d71:	e8 e6 e5 ff ff       	call   8010035c <panic>
    panic("incorrect blockno");
80101d76:	83 ec 0c             	sub    $0xc,%esp
80101d79:	68 d4 68 10 80       	push   $0x801068d4
80101d7e:	e8 d9 e5 ff ff       	call   8010035c <panic>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101d83:	b8 20 00 00 00       	mov    $0x20,%eax
80101d88:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d8d:	ee                   	out    %al,(%dx)
}
80101d8e:	eb d2                	jmp    80101d62 <idestart+0x97>

80101d90 <ideinit>:
{
80101d90:	f3 0f 1e fb          	endbr32 
80101d94:	55                   	push   %ebp
80101d95:	89 e5                	mov    %esp,%ebp
80101d97:	83 ec 10             	sub    $0x10,%esp
  initlock(&idelock, "ide");
80101d9a:	68 e6 68 10 80       	push   $0x801068e6
80101d9f:	68 80 a5 10 80       	push   $0x8010a580
80101da4:	e8 dc 1d 00 00       	call   80103b85 <initlock>
  ioapicenable(IRQ_IDE, ncpu - 1);
80101da9:	83 c4 08             	add    $0x8,%esp
80101dac:	a1 00 2d 11 80       	mov    0x80112d00,%eax
80101db1:	83 e8 01             	sub    $0x1,%eax
80101db4:	50                   	push   %eax
80101db5:	6a 0e                	push   $0xe
80101db7:	e8 5a 02 00 00       	call   80102016 <ioapicenable>
  idewait(0);
80101dbc:	b8 00 00 00 00       	mov    $0x0,%eax
80101dc1:	e8 dc fe ff ff       	call   80101ca2 <idewait>
80101dc6:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
80101dcb:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101dd0:	ee                   	out    %al,(%dx)
  for(i=0; i<1000; i++){
80101dd1:	83 c4 10             	add    $0x10,%esp
80101dd4:	b9 00 00 00 00       	mov    $0x0,%ecx
80101dd9:	eb 03                	jmp    80101dde <ideinit+0x4e>
80101ddb:	83 c1 01             	add    $0x1,%ecx
80101dde:	81 f9 e7 03 00 00    	cmp    $0x3e7,%ecx
80101de4:	7f 14                	jg     80101dfa <ideinit+0x6a>
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80101de6:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101deb:	ec                   	in     (%dx),%al
    if(inb(0x1f7) != 0){
80101dec:	84 c0                	test   %al,%al
80101dee:	74 eb                	je     80101ddb <ideinit+0x4b>
      havedisk1 = 1;
80101df0:	c7 05 60 a5 10 80 01 	movl   $0x1,0x8010a560
80101df7:	00 00 00 
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101dfa:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
80101dff:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101e04:	ee                   	out    %al,(%dx)
}
80101e05:	c9                   	leave  
80101e06:	c3                   	ret    

80101e07 <ideintr>:

// Interrupt handler.
void
ideintr(void)
{
80101e07:	f3 0f 1e fb          	endbr32 
80101e0b:	55                   	push   %ebp
80101e0c:	89 e5                	mov    %esp,%ebp
80101e0e:	57                   	push   %edi
80101e0f:	53                   	push   %ebx
  struct buf *b;

  // First queued buffer is the active request.
  acquire(&idelock);
80101e10:	83 ec 0c             	sub    $0xc,%esp
80101e13:	68 80 a5 10 80       	push   $0x8010a580
80101e18:	e8 b8 1e 00 00       	call   80103cd5 <acquire>

  if((b = idequeue) == 0){
80101e1d:	8b 1d 64 a5 10 80    	mov    0x8010a564,%ebx
80101e23:	83 c4 10             	add    $0x10,%esp
80101e26:	85 db                	test   %ebx,%ebx
80101e28:	74 48                	je     80101e72 <ideintr+0x6b>
    release(&idelock);
    return;
  }
  idequeue = b->qnext;
80101e2a:	8b 43 58             	mov    0x58(%ebx),%eax
80101e2d:	a3 64 a5 10 80       	mov    %eax,0x8010a564

  // Read data if needed.
  if(!(b->flags & B_DIRTY) && idewait(1) >= 0)
80101e32:	f6 03 04             	testb  $0x4,(%ebx)
80101e35:	74 4d                	je     80101e84 <ideintr+0x7d>
    insl(0x1f0, b->data, BSIZE/4);

  // Wake process waiting for this buf.
  b->flags |= B_VALID;
80101e37:	8b 03                	mov    (%ebx),%eax
80101e39:	83 c8 02             	or     $0x2,%eax
  b->flags &= ~B_DIRTY;
80101e3c:	83 e0 fb             	and    $0xfffffffb,%eax
80101e3f:	89 03                	mov    %eax,(%ebx)
  wakeup(b);
80101e41:	83 ec 0c             	sub    $0xc,%esp
80101e44:	53                   	push   %ebx
80101e45:	e8 c5 1a 00 00       	call   8010390f <wakeup>

  // Start disk on next buf in queue.
  if(idequeue != 0)
80101e4a:	a1 64 a5 10 80       	mov    0x8010a564,%eax
80101e4f:	83 c4 10             	add    $0x10,%esp
80101e52:	85 c0                	test   %eax,%eax
80101e54:	74 05                	je     80101e5b <ideintr+0x54>
    idestart(idequeue);
80101e56:	e8 70 fe ff ff       	call   80101ccb <idestart>

  release(&idelock);
80101e5b:	83 ec 0c             	sub    $0xc,%esp
80101e5e:	68 80 a5 10 80       	push   $0x8010a580
80101e63:	e8 d6 1e 00 00       	call   80103d3e <release>
80101e68:	83 c4 10             	add    $0x10,%esp
}
80101e6b:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101e6e:	5b                   	pop    %ebx
80101e6f:	5f                   	pop    %edi
80101e70:	5d                   	pop    %ebp
80101e71:	c3                   	ret    
    release(&idelock);
80101e72:	83 ec 0c             	sub    $0xc,%esp
80101e75:	68 80 a5 10 80       	push   $0x8010a580
80101e7a:	e8 bf 1e 00 00       	call   80103d3e <release>
    return;
80101e7f:	83 c4 10             	add    $0x10,%esp
80101e82:	eb e7                	jmp    80101e6b <ideintr+0x64>
  if(!(b->flags & B_DIRTY) && idewait(1) >= 0)
80101e84:	b8 01 00 00 00       	mov    $0x1,%eax
80101e89:	e8 14 fe ff ff       	call   80101ca2 <idewait>
80101e8e:	85 c0                	test   %eax,%eax
80101e90:	78 a5                	js     80101e37 <ideintr+0x30>
    insl(0x1f0, b->data, BSIZE/4);
80101e92:	8d 7b 5c             	lea    0x5c(%ebx),%edi
  asm volatile("cld; rep insl" :
80101e95:	b9 80 00 00 00       	mov    $0x80,%ecx
80101e9a:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101e9f:	fc                   	cld    
80101ea0:	f3 6d                	rep insl (%dx),%es:(%edi)
}
80101ea2:	eb 93                	jmp    80101e37 <ideintr+0x30>

80101ea4 <iderw>:
// Sync buf with disk.
// If B_DIRTY is set, write buf to disk, clear B_DIRTY, set B_VALID.
// Else if B_VALID is not set, read buf from disk, set B_VALID.
void
iderw(struct buf *b)
{
80101ea4:	f3 0f 1e fb          	endbr32 
80101ea8:	55                   	push   %ebp
80101ea9:	89 e5                	mov    %esp,%ebp
80101eab:	53                   	push   %ebx
80101eac:	83 ec 10             	sub    $0x10,%esp
80101eaf:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct buf **pp;

  if(!holdingsleep(&b->lock))
80101eb2:	8d 43 0c             	lea    0xc(%ebx),%eax
80101eb5:	50                   	push   %eax
80101eb6:	e8 78 1c 00 00       	call   80103b33 <holdingsleep>
80101ebb:	83 c4 10             	add    $0x10,%esp
80101ebe:	85 c0                	test   %eax,%eax
80101ec0:	74 37                	je     80101ef9 <iderw+0x55>
    panic("iderw: buf not locked");
  if((b->flags & (B_VALID|B_DIRTY)) == B_VALID)
80101ec2:	8b 03                	mov    (%ebx),%eax
80101ec4:	83 e0 06             	and    $0x6,%eax
80101ec7:	83 f8 02             	cmp    $0x2,%eax
80101eca:	74 3a                	je     80101f06 <iderw+0x62>
    panic("iderw: nothing to do");
  if(b->dev != 0 && !havedisk1)
80101ecc:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80101ed0:	74 09                	je     80101edb <iderw+0x37>
80101ed2:	83 3d 60 a5 10 80 00 	cmpl   $0x0,0x8010a560
80101ed9:	74 38                	je     80101f13 <iderw+0x6f>
    panic("iderw: ide disk 1 not present");

  acquire(&idelock);  //DOC:acquire-lock
80101edb:	83 ec 0c             	sub    $0xc,%esp
80101ede:	68 80 a5 10 80       	push   $0x8010a580
80101ee3:	e8 ed 1d 00 00       	call   80103cd5 <acquire>

  // Append b to idequeue.
  b->qnext = 0;
80101ee8:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
80101eef:	83 c4 10             	add    $0x10,%esp
80101ef2:	ba 64 a5 10 80       	mov    $0x8010a564,%edx
80101ef7:	eb 2a                	jmp    80101f23 <iderw+0x7f>
    panic("iderw: buf not locked");
80101ef9:	83 ec 0c             	sub    $0xc,%esp
80101efc:	68 ea 68 10 80       	push   $0x801068ea
80101f01:	e8 56 e4 ff ff       	call   8010035c <panic>
    panic("iderw: nothing to do");
80101f06:	83 ec 0c             	sub    $0xc,%esp
80101f09:	68 00 69 10 80       	push   $0x80106900
80101f0e:	e8 49 e4 ff ff       	call   8010035c <panic>
    panic("iderw: ide disk 1 not present");
80101f13:	83 ec 0c             	sub    $0xc,%esp
80101f16:	68 15 69 10 80       	push   $0x80106915
80101f1b:	e8 3c e4 ff ff       	call   8010035c <panic>
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
80101f20:	8d 50 58             	lea    0x58(%eax),%edx
80101f23:	8b 02                	mov    (%edx),%eax
80101f25:	85 c0                	test   %eax,%eax
80101f27:	75 f7                	jne    80101f20 <iderw+0x7c>
    ;
  *pp = b;
80101f29:	89 1a                	mov    %ebx,(%edx)

  // Start disk if necessary.
  if(idequeue == b)
80101f2b:	39 1d 64 a5 10 80    	cmp    %ebx,0x8010a564
80101f31:	75 1a                	jne    80101f4d <iderw+0xa9>
    idestart(b);
80101f33:	89 d8                	mov    %ebx,%eax
80101f35:	e8 91 fd ff ff       	call   80101ccb <idestart>
80101f3a:	eb 11                	jmp    80101f4d <iderw+0xa9>

  // Wait for request to finish.
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
    sleep(b, &idelock);
80101f3c:	83 ec 08             	sub    $0x8,%esp
80101f3f:	68 80 a5 10 80       	push   $0x8010a580
80101f44:	53                   	push   %ebx
80101f45:	e8 58 18 00 00       	call   801037a2 <sleep>
80101f4a:	83 c4 10             	add    $0x10,%esp
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
80101f4d:	8b 03                	mov    (%ebx),%eax
80101f4f:	83 e0 06             	and    $0x6,%eax
80101f52:	83 f8 02             	cmp    $0x2,%eax
80101f55:	75 e5                	jne    80101f3c <iderw+0x98>
  }


  release(&idelock);
80101f57:	83 ec 0c             	sub    $0xc,%esp
80101f5a:	68 80 a5 10 80       	push   $0x8010a580
80101f5f:	e8 da 1d 00 00       	call   80103d3e <release>
}
80101f64:	83 c4 10             	add    $0x10,%esp
80101f67:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101f6a:	c9                   	leave  
80101f6b:	c3                   	ret    

80101f6c <ioapicread>:
};

static uint
ioapicread(int reg)
{
  ioapic->reg = reg;
80101f6c:	8b 15 34 26 11 80    	mov    0x80112634,%edx
80101f72:	89 02                	mov    %eax,(%edx)
  return ioapic->data;
80101f74:	a1 34 26 11 80       	mov    0x80112634,%eax
80101f79:	8b 40 10             	mov    0x10(%eax),%eax
}
80101f7c:	c3                   	ret    

80101f7d <ioapicwrite>:

static void
ioapicwrite(int reg, uint data)
{
  ioapic->reg = reg;
80101f7d:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
80101f83:	89 01                	mov    %eax,(%ecx)
  ioapic->data = data;
80101f85:	a1 34 26 11 80       	mov    0x80112634,%eax
80101f8a:	89 50 10             	mov    %edx,0x10(%eax)
}
80101f8d:	c3                   	ret    

80101f8e <ioapicinit>:

void
ioapicinit(void)
{
80101f8e:	f3 0f 1e fb          	endbr32 
80101f92:	55                   	push   %ebp
80101f93:	89 e5                	mov    %esp,%ebp
80101f95:	57                   	push   %edi
80101f96:	56                   	push   %esi
80101f97:	53                   	push   %ebx
80101f98:	83 ec 0c             	sub    $0xc,%esp
  int i, id, maxintr;

  ioapic = (volatile struct ioapic*)IOAPIC;
80101f9b:	c7 05 34 26 11 80 00 	movl   $0xfec00000,0x80112634
80101fa2:	00 c0 fe 
  maxintr = (ioapicread(REG_VER) >> 16) & 0xFF;
80101fa5:	b8 01 00 00 00       	mov    $0x1,%eax
80101faa:	e8 bd ff ff ff       	call   80101f6c <ioapicread>
80101faf:	c1 e8 10             	shr    $0x10,%eax
80101fb2:	0f b6 f8             	movzbl %al,%edi
  id = ioapicread(REG_ID) >> 24;
80101fb5:	b8 00 00 00 00       	mov    $0x0,%eax
80101fba:	e8 ad ff ff ff       	call   80101f6c <ioapicread>
80101fbf:	c1 e8 18             	shr    $0x18,%eax
  if(id != ioapicid)
80101fc2:	0f b6 15 60 27 11 80 	movzbl 0x80112760,%edx
80101fc9:	39 c2                	cmp    %eax,%edx
80101fcb:	75 2f                	jne    80101ffc <ioapicinit+0x6e>
{
80101fcd:	bb 00 00 00 00       	mov    $0x0,%ebx
    cprintf("ioapicinit: id isn't equal to ioapicid; not a MP\n");

  // Mark all interrupts edge-triggered, active high, disabled,
  // and not routed to any CPUs.
  for(i = 0; i <= maxintr; i++){
80101fd2:	39 fb                	cmp    %edi,%ebx
80101fd4:	7f 38                	jg     8010200e <ioapicinit+0x80>
    ioapicwrite(REG_TABLE+2*i, INT_DISABLED | (T_IRQ0 + i));
80101fd6:	8d 53 20             	lea    0x20(%ebx),%edx
80101fd9:	81 ca 00 00 01 00    	or     $0x10000,%edx
80101fdf:	8d 74 1b 10          	lea    0x10(%ebx,%ebx,1),%esi
80101fe3:	89 f0                	mov    %esi,%eax
80101fe5:	e8 93 ff ff ff       	call   80101f7d <ioapicwrite>
    ioapicwrite(REG_TABLE+2*i+1, 0);
80101fea:	8d 46 01             	lea    0x1(%esi),%eax
80101fed:	ba 00 00 00 00       	mov    $0x0,%edx
80101ff2:	e8 86 ff ff ff       	call   80101f7d <ioapicwrite>
  for(i = 0; i <= maxintr; i++){
80101ff7:	83 c3 01             	add    $0x1,%ebx
80101ffa:	eb d6                	jmp    80101fd2 <ioapicinit+0x44>
    cprintf("ioapicinit: id isn't equal to ioapicid; not a MP\n");
80101ffc:	83 ec 0c             	sub    $0xc,%esp
80101fff:	68 34 69 10 80       	push   $0x80106934
80102004:	e8 20 e6 ff ff       	call   80100629 <cprintf>
80102009:	83 c4 10             	add    $0x10,%esp
8010200c:	eb bf                	jmp    80101fcd <ioapicinit+0x3f>
  }
}
8010200e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102011:	5b                   	pop    %ebx
80102012:	5e                   	pop    %esi
80102013:	5f                   	pop    %edi
80102014:	5d                   	pop    %ebp
80102015:	c3                   	ret    

80102016 <ioapicenable>:

void
ioapicenable(int irq, int cpunum)
{
80102016:	f3 0f 1e fb          	endbr32 
8010201a:	55                   	push   %ebp
8010201b:	89 e5                	mov    %esp,%ebp
8010201d:	53                   	push   %ebx
8010201e:	83 ec 04             	sub    $0x4,%esp
80102021:	8b 45 08             	mov    0x8(%ebp),%eax
  // Mark interrupt edge-triggered, active high,
  // enabled, and routed to the given cpunum,
  // which happens to be that cpu's APIC ID.
  ioapicwrite(REG_TABLE+2*irq, T_IRQ0 + irq);
80102024:	8d 50 20             	lea    0x20(%eax),%edx
80102027:	8d 5c 00 10          	lea    0x10(%eax,%eax,1),%ebx
8010202b:	89 d8                	mov    %ebx,%eax
8010202d:	e8 4b ff ff ff       	call   80101f7d <ioapicwrite>
  ioapicwrite(REG_TABLE+2*irq+1, cpunum << 24);
80102032:	8b 55 0c             	mov    0xc(%ebp),%edx
80102035:	c1 e2 18             	shl    $0x18,%edx
80102038:	8d 43 01             	lea    0x1(%ebx),%eax
8010203b:	e8 3d ff ff ff       	call   80101f7d <ioapicwrite>
}
80102040:	83 c4 04             	add    $0x4,%esp
80102043:	5b                   	pop    %ebx
80102044:	5d                   	pop    %ebp
80102045:	c3                   	ret    

80102046 <kfree>:
// which normally should have been returned by a
// call to kalloc().  (The exception is when
// initializing the allocator; see kinit above.)
void
kfree(char *v)
{
80102046:	f3 0f 1e fb          	endbr32 
8010204a:	55                   	push   %ebp
8010204b:	89 e5                	mov    %esp,%ebp
8010204d:	53                   	push   %ebx
8010204e:	83 ec 04             	sub    $0x4,%esp
80102051:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct run *r;

  if((uint)v % PGSIZE || v < end || V2P(v) >= PHYSTOP)
80102054:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
8010205a:	75 4c                	jne    801020a8 <kfree+0x62>
8010205c:	81 fb a8 54 11 80    	cmp    $0x801154a8,%ebx
80102062:	72 44                	jb     801020a8 <kfree+0x62>
80102064:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
8010206a:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
8010206f:	77 37                	ja     801020a8 <kfree+0x62>
    panic("kfree");

  // Fill with junk to catch dangling refs.
  memset(v, 1, PGSIZE);
80102071:	83 ec 04             	sub    $0x4,%esp
80102074:	68 00 10 00 00       	push   $0x1000
80102079:	6a 01                	push   $0x1
8010207b:	53                   	push   %ebx
8010207c:	e8 08 1d 00 00       	call   80103d89 <memset>

  if(kmem.use_lock)
80102081:	83 c4 10             	add    $0x10,%esp
80102084:	83 3d 74 26 11 80 00 	cmpl   $0x0,0x80112674
8010208b:	75 28                	jne    801020b5 <kfree+0x6f>
    acquire(&kmem.lock);
  r = (struct run*)v;
  r->next = kmem.freelist;
8010208d:	a1 78 26 11 80       	mov    0x80112678,%eax
80102092:	89 03                	mov    %eax,(%ebx)
  kmem.freelist = r;
80102094:	89 1d 78 26 11 80    	mov    %ebx,0x80112678
  if(kmem.use_lock)
8010209a:	83 3d 74 26 11 80 00 	cmpl   $0x0,0x80112674
801020a1:	75 24                	jne    801020c7 <kfree+0x81>
    release(&kmem.lock);
}
801020a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801020a6:	c9                   	leave  
801020a7:	c3                   	ret    
    panic("kfree");
801020a8:	83 ec 0c             	sub    $0xc,%esp
801020ab:	68 66 69 10 80       	push   $0x80106966
801020b0:	e8 a7 e2 ff ff       	call   8010035c <panic>
    acquire(&kmem.lock);
801020b5:	83 ec 0c             	sub    $0xc,%esp
801020b8:	68 40 26 11 80       	push   $0x80112640
801020bd:	e8 13 1c 00 00       	call   80103cd5 <acquire>
801020c2:	83 c4 10             	add    $0x10,%esp
801020c5:	eb c6                	jmp    8010208d <kfree+0x47>
    release(&kmem.lock);
801020c7:	83 ec 0c             	sub    $0xc,%esp
801020ca:	68 40 26 11 80       	push   $0x80112640
801020cf:	e8 6a 1c 00 00       	call   80103d3e <release>
801020d4:	83 c4 10             	add    $0x10,%esp
}
801020d7:	eb ca                	jmp    801020a3 <kfree+0x5d>

801020d9 <freerange>:
{
801020d9:	f3 0f 1e fb          	endbr32 
801020dd:	55                   	push   %ebp
801020de:	89 e5                	mov    %esp,%ebp
801020e0:	56                   	push   %esi
801020e1:	53                   	push   %ebx
801020e2:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  p = (char*)PGROUNDUP((uint)vstart);
801020e5:	8b 45 08             	mov    0x8(%ebp),%eax
801020e8:	05 ff 0f 00 00       	add    $0xfff,%eax
801020ed:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  for(; p + PGSIZE <= (char*)vend; p += PGSIZE)
801020f2:	8d b0 00 10 00 00    	lea    0x1000(%eax),%esi
801020f8:	39 de                	cmp    %ebx,%esi
801020fa:	77 10                	ja     8010210c <freerange+0x33>
    kfree(p);
801020fc:	83 ec 0c             	sub    $0xc,%esp
801020ff:	50                   	push   %eax
80102100:	e8 41 ff ff ff       	call   80102046 <kfree>
80102105:	83 c4 10             	add    $0x10,%esp
  for(; p + PGSIZE <= (char*)vend; p += PGSIZE)
80102108:	89 f0                	mov    %esi,%eax
8010210a:	eb e6                	jmp    801020f2 <freerange+0x19>
}
8010210c:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010210f:	5b                   	pop    %ebx
80102110:	5e                   	pop    %esi
80102111:	5d                   	pop    %ebp
80102112:	c3                   	ret    

80102113 <kinit1>:
{
80102113:	f3 0f 1e fb          	endbr32 
80102117:	55                   	push   %ebp
80102118:	89 e5                	mov    %esp,%ebp
8010211a:	83 ec 10             	sub    $0x10,%esp
  initlock(&kmem.lock, "kmem");
8010211d:	68 6c 69 10 80       	push   $0x8010696c
80102122:	68 40 26 11 80       	push   $0x80112640
80102127:	e8 59 1a 00 00       	call   80103b85 <initlock>
  kmem.use_lock = 0;
8010212c:	c7 05 74 26 11 80 00 	movl   $0x0,0x80112674
80102133:	00 00 00 
  freerange(vstart, vend);
80102136:	83 c4 08             	add    $0x8,%esp
80102139:	ff 75 0c             	pushl  0xc(%ebp)
8010213c:	ff 75 08             	pushl  0x8(%ebp)
8010213f:	e8 95 ff ff ff       	call   801020d9 <freerange>
}
80102144:	83 c4 10             	add    $0x10,%esp
80102147:	c9                   	leave  
80102148:	c3                   	ret    

80102149 <kinit2>:
{
80102149:	f3 0f 1e fb          	endbr32 
8010214d:	55                   	push   %ebp
8010214e:	89 e5                	mov    %esp,%ebp
80102150:	83 ec 10             	sub    $0x10,%esp
  freerange(vstart, vend);
80102153:	ff 75 0c             	pushl  0xc(%ebp)
80102156:	ff 75 08             	pushl  0x8(%ebp)
80102159:	e8 7b ff ff ff       	call   801020d9 <freerange>
  kmem.use_lock = 1;
8010215e:	c7 05 74 26 11 80 01 	movl   $0x1,0x80112674
80102165:	00 00 00 
}
80102168:	83 c4 10             	add    $0x10,%esp
8010216b:	c9                   	leave  
8010216c:	c3                   	ret    

8010216d <kalloc>:
// Allocate one 4096-byte page of physical memory.
// Returns a pointer that the kernel can use.
// Returns 0 if the memory cannot be allocated.
char*
kalloc(void)
{
8010216d:	f3 0f 1e fb          	endbr32 
80102171:	55                   	push   %ebp
80102172:	89 e5                	mov    %esp,%ebp
80102174:	53                   	push   %ebx
80102175:	83 ec 04             	sub    $0x4,%esp
  struct run *r;

  if(kmem.use_lock)
80102178:	83 3d 74 26 11 80 00 	cmpl   $0x0,0x80112674
8010217f:	75 21                	jne    801021a2 <kalloc+0x35>
    acquire(&kmem.lock);
  r = kmem.freelist;
80102181:	8b 1d 78 26 11 80    	mov    0x80112678,%ebx
  if(r)
80102187:	85 db                	test   %ebx,%ebx
80102189:	74 07                	je     80102192 <kalloc+0x25>
    kmem.freelist = r->next;
8010218b:	8b 03                	mov    (%ebx),%eax
8010218d:	a3 78 26 11 80       	mov    %eax,0x80112678
  if(kmem.use_lock)
80102192:	83 3d 74 26 11 80 00 	cmpl   $0x0,0x80112674
80102199:	75 19                	jne    801021b4 <kalloc+0x47>
    release(&kmem.lock);
  return (char*)r;
}
8010219b:	89 d8                	mov    %ebx,%eax
8010219d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801021a0:	c9                   	leave  
801021a1:	c3                   	ret    
    acquire(&kmem.lock);
801021a2:	83 ec 0c             	sub    $0xc,%esp
801021a5:	68 40 26 11 80       	push   $0x80112640
801021aa:	e8 26 1b 00 00       	call   80103cd5 <acquire>
801021af:	83 c4 10             	add    $0x10,%esp
801021b2:	eb cd                	jmp    80102181 <kalloc+0x14>
    release(&kmem.lock);
801021b4:	83 ec 0c             	sub    $0xc,%esp
801021b7:	68 40 26 11 80       	push   $0x80112640
801021bc:	e8 7d 1b 00 00       	call   80103d3e <release>
801021c1:	83 c4 10             	add    $0x10,%esp
  return (char*)r;
801021c4:	eb d5                	jmp    8010219b <kalloc+0x2e>

801021c6 <kbdgetc>:
#include "defs.h"
#include "kbd.h"

int
kbdgetc(void)
{
801021c6:	f3 0f 1e fb          	endbr32 
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801021ca:	ba 64 00 00 00       	mov    $0x64,%edx
801021cf:	ec                   	in     (%dx),%al
    normalmap, shiftmap, ctlmap, ctlmap
  };
  uint st, data, c;

  st = inb(KBSTATP);
  if((st & KBS_DIB) == 0)
801021d0:	a8 01                	test   $0x1,%al
801021d2:	0f 84 ad 00 00 00    	je     80102285 <kbdgetc+0xbf>
801021d8:	ba 60 00 00 00       	mov    $0x60,%edx
801021dd:	ec                   	in     (%dx),%al
    return -1;
  data = inb(KBDATAP);
801021de:	0f b6 d0             	movzbl %al,%edx

  if(data == 0xE0){
801021e1:	3c e0                	cmp    $0xe0,%al
801021e3:	74 5b                	je     80102240 <kbdgetc+0x7a>
    shift |= E0ESC;
    return 0;
  } else if(data & 0x80){
801021e5:	84 c0                	test   %al,%al
801021e7:	78 64                	js     8010224d <kbdgetc+0x87>
    // Key released
    data = (shift & E0ESC ? data : data & 0x7F);
    shift &= ~(shiftcode[data] | E0ESC);
    return 0;
  } else if(shift & E0ESC){
801021e9:	8b 0d b4 a5 10 80    	mov    0x8010a5b4,%ecx
801021ef:	f6 c1 40             	test   $0x40,%cl
801021f2:	74 0f                	je     80102203 <kbdgetc+0x3d>
    // Last character was an E0 escape; or with 0x80
    data |= 0x80;
801021f4:	83 c8 80             	or     $0xffffff80,%eax
801021f7:	0f b6 d0             	movzbl %al,%edx
    shift &= ~E0ESC;
801021fa:	83 e1 bf             	and    $0xffffffbf,%ecx
801021fd:	89 0d b4 a5 10 80    	mov    %ecx,0x8010a5b4
  }

  shift |= shiftcode[data];
80102203:	0f b6 8a a0 6a 10 80 	movzbl -0x7fef9560(%edx),%ecx
8010220a:	0b 0d b4 a5 10 80    	or     0x8010a5b4,%ecx
  shift ^= togglecode[data];
80102210:	0f b6 82 a0 69 10 80 	movzbl -0x7fef9660(%edx),%eax
80102217:	31 c1                	xor    %eax,%ecx
80102219:	89 0d b4 a5 10 80    	mov    %ecx,0x8010a5b4
  c = charcode[shift & (CTL | SHIFT)][data];
8010221f:	89 c8                	mov    %ecx,%eax
80102221:	83 e0 03             	and    $0x3,%eax
80102224:	8b 04 85 80 69 10 80 	mov    -0x7fef9680(,%eax,4),%eax
8010222b:	0f b6 04 10          	movzbl (%eax,%edx,1),%eax
  if(shift & CAPSLOCK){
8010222f:	f6 c1 08             	test   $0x8,%cl
80102232:	74 56                	je     8010228a <kbdgetc+0xc4>
    if('a' <= c && c <= 'z')
80102234:	8d 50 9f             	lea    -0x61(%eax),%edx
80102237:	83 fa 19             	cmp    $0x19,%edx
8010223a:	77 3d                	ja     80102279 <kbdgetc+0xb3>
      c += 'A' - 'a';
8010223c:	83 e8 20             	sub    $0x20,%eax
8010223f:	c3                   	ret    
    shift |= E0ESC;
80102240:	83 0d b4 a5 10 80 40 	orl    $0x40,0x8010a5b4
    return 0;
80102247:	b8 00 00 00 00       	mov    $0x0,%eax
8010224c:	c3                   	ret    
    data = (shift & E0ESC ? data : data & 0x7F);
8010224d:	8b 0d b4 a5 10 80    	mov    0x8010a5b4,%ecx
80102253:	f6 c1 40             	test   $0x40,%cl
80102256:	75 05                	jne    8010225d <kbdgetc+0x97>
80102258:	89 c2                	mov    %eax,%edx
8010225a:	83 e2 7f             	and    $0x7f,%edx
    shift &= ~(shiftcode[data] | E0ESC);
8010225d:	0f b6 82 a0 6a 10 80 	movzbl -0x7fef9560(%edx),%eax
80102264:	83 c8 40             	or     $0x40,%eax
80102267:	0f b6 c0             	movzbl %al,%eax
8010226a:	f7 d0                	not    %eax
8010226c:	21 c8                	and    %ecx,%eax
8010226e:	a3 b4 a5 10 80       	mov    %eax,0x8010a5b4
    return 0;
80102273:	b8 00 00 00 00       	mov    $0x0,%eax
80102278:	c3                   	ret    
    else if('A' <= c && c <= 'Z')
80102279:	8d 50 bf             	lea    -0x41(%eax),%edx
8010227c:	83 fa 19             	cmp    $0x19,%edx
8010227f:	77 09                	ja     8010228a <kbdgetc+0xc4>
      c += 'a' - 'A';
80102281:	83 c0 20             	add    $0x20,%eax
  }
  return c;
80102284:	c3                   	ret    
    return -1;
80102285:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010228a:	c3                   	ret    

8010228b <kbdintr>:

void
kbdintr(void)
{
8010228b:	f3 0f 1e fb          	endbr32 
8010228f:	55                   	push   %ebp
80102290:	89 e5                	mov    %esp,%ebp
80102292:	83 ec 14             	sub    $0x14,%esp
  consoleintr(kbdgetc);
80102295:	68 c6 21 10 80       	push   $0x801021c6
8010229a:	e8 ba e4 ff ff       	call   80100759 <consoleintr>
}
8010229f:	83 c4 10             	add    $0x10,%esp
801022a2:	c9                   	leave  
801022a3:	c3                   	ret    

801022a4 <lapicw>:

//PAGEBREAK!
static void
lapicw(int index, int value)
{
  lapic[index] = value;
801022a4:	8b 0d 7c 26 11 80    	mov    0x8011267c,%ecx
801022aa:	8d 04 81             	lea    (%ecx,%eax,4),%eax
801022ad:	89 10                	mov    %edx,(%eax)
  lapic[ID];  // wait for write to finish, by reading
801022af:	a1 7c 26 11 80       	mov    0x8011267c,%eax
801022b4:	8b 40 20             	mov    0x20(%eax),%eax
}
801022b7:	c3                   	ret    

801022b8 <cmos_read>:
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801022b8:	ba 70 00 00 00       	mov    $0x70,%edx
801022bd:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801022be:	ba 71 00 00 00       	mov    $0x71,%edx
801022c3:	ec                   	in     (%dx),%al
cmos_read(uint reg)
{
  outb(CMOS_PORT,  reg);
  microdelay(200);

  return inb(CMOS_RETURN);
801022c4:	0f b6 c0             	movzbl %al,%eax
}
801022c7:	c3                   	ret    

801022c8 <fill_rtcdate>:

static void
fill_rtcdate(struct rtcdate *r)
{
801022c8:	55                   	push   %ebp
801022c9:	89 e5                	mov    %esp,%ebp
801022cb:	53                   	push   %ebx
801022cc:	83 ec 04             	sub    $0x4,%esp
801022cf:	89 c3                	mov    %eax,%ebx
  r->second = cmos_read(SECS);
801022d1:	b8 00 00 00 00       	mov    $0x0,%eax
801022d6:	e8 dd ff ff ff       	call   801022b8 <cmos_read>
801022db:	89 03                	mov    %eax,(%ebx)
  r->minute = cmos_read(MINS);
801022dd:	b8 02 00 00 00       	mov    $0x2,%eax
801022e2:	e8 d1 ff ff ff       	call   801022b8 <cmos_read>
801022e7:	89 43 04             	mov    %eax,0x4(%ebx)
  r->hour   = cmos_read(HOURS);
801022ea:	b8 04 00 00 00       	mov    $0x4,%eax
801022ef:	e8 c4 ff ff ff       	call   801022b8 <cmos_read>
801022f4:	89 43 08             	mov    %eax,0x8(%ebx)
  r->day    = cmos_read(DAY);
801022f7:	b8 07 00 00 00       	mov    $0x7,%eax
801022fc:	e8 b7 ff ff ff       	call   801022b8 <cmos_read>
80102301:	89 43 0c             	mov    %eax,0xc(%ebx)
  r->month  = cmos_read(MONTH);
80102304:	b8 08 00 00 00       	mov    $0x8,%eax
80102309:	e8 aa ff ff ff       	call   801022b8 <cmos_read>
8010230e:	89 43 10             	mov    %eax,0x10(%ebx)
  r->year   = cmos_read(YEAR);
80102311:	b8 09 00 00 00       	mov    $0x9,%eax
80102316:	e8 9d ff ff ff       	call   801022b8 <cmos_read>
8010231b:	89 43 14             	mov    %eax,0x14(%ebx)
}
8010231e:	83 c4 04             	add    $0x4,%esp
80102321:	5b                   	pop    %ebx
80102322:	5d                   	pop    %ebp
80102323:	c3                   	ret    

80102324 <lapicinit>:
{
80102324:	f3 0f 1e fb          	endbr32 
  if(!lapic)
80102328:	83 3d 7c 26 11 80 00 	cmpl   $0x0,0x8011267c
8010232f:	0f 84 fe 00 00 00    	je     80102433 <lapicinit+0x10f>
{
80102335:	55                   	push   %ebp
80102336:	89 e5                	mov    %esp,%ebp
80102338:	83 ec 08             	sub    $0x8,%esp
  lapicw(SVR, ENABLE | (T_IRQ0 + IRQ_SPURIOUS));
8010233b:	ba 3f 01 00 00       	mov    $0x13f,%edx
80102340:	b8 3c 00 00 00       	mov    $0x3c,%eax
80102345:	e8 5a ff ff ff       	call   801022a4 <lapicw>
  lapicw(TDCR, X1);
8010234a:	ba 0b 00 00 00       	mov    $0xb,%edx
8010234f:	b8 f8 00 00 00       	mov    $0xf8,%eax
80102354:	e8 4b ff ff ff       	call   801022a4 <lapicw>
  lapicw(TIMER, PERIODIC | (T_IRQ0 + IRQ_TIMER));
80102359:	ba 20 00 02 00       	mov    $0x20020,%edx
8010235e:	b8 c8 00 00 00       	mov    $0xc8,%eax
80102363:	e8 3c ff ff ff       	call   801022a4 <lapicw>
  lapicw(TICR, 10000000);
80102368:	ba 80 96 98 00       	mov    $0x989680,%edx
8010236d:	b8 e0 00 00 00       	mov    $0xe0,%eax
80102372:	e8 2d ff ff ff       	call   801022a4 <lapicw>
  lapicw(LINT0, MASKED);
80102377:	ba 00 00 01 00       	mov    $0x10000,%edx
8010237c:	b8 d4 00 00 00       	mov    $0xd4,%eax
80102381:	e8 1e ff ff ff       	call   801022a4 <lapicw>
  lapicw(LINT1, MASKED);
80102386:	ba 00 00 01 00       	mov    $0x10000,%edx
8010238b:	b8 d8 00 00 00       	mov    $0xd8,%eax
80102390:	e8 0f ff ff ff       	call   801022a4 <lapicw>
  if(((lapic[VER]>>16) & 0xFF) >= 4)
80102395:	a1 7c 26 11 80       	mov    0x8011267c,%eax
8010239a:	8b 40 30             	mov    0x30(%eax),%eax
8010239d:	c1 e8 10             	shr    $0x10,%eax
801023a0:	a8 fc                	test   $0xfc,%al
801023a2:	75 7b                	jne    8010241f <lapicinit+0xfb>
  lapicw(ERROR, T_IRQ0 + IRQ_ERROR);
801023a4:	ba 33 00 00 00       	mov    $0x33,%edx
801023a9:	b8 dc 00 00 00       	mov    $0xdc,%eax
801023ae:	e8 f1 fe ff ff       	call   801022a4 <lapicw>
  lapicw(ESR, 0);
801023b3:	ba 00 00 00 00       	mov    $0x0,%edx
801023b8:	b8 a0 00 00 00       	mov    $0xa0,%eax
801023bd:	e8 e2 fe ff ff       	call   801022a4 <lapicw>
  lapicw(ESR, 0);
801023c2:	ba 00 00 00 00       	mov    $0x0,%edx
801023c7:	b8 a0 00 00 00       	mov    $0xa0,%eax
801023cc:	e8 d3 fe ff ff       	call   801022a4 <lapicw>
  lapicw(EOI, 0);
801023d1:	ba 00 00 00 00       	mov    $0x0,%edx
801023d6:	b8 2c 00 00 00       	mov    $0x2c,%eax
801023db:	e8 c4 fe ff ff       	call   801022a4 <lapicw>
  lapicw(ICRHI, 0);
801023e0:	ba 00 00 00 00       	mov    $0x0,%edx
801023e5:	b8 c4 00 00 00       	mov    $0xc4,%eax
801023ea:	e8 b5 fe ff ff       	call   801022a4 <lapicw>
  lapicw(ICRLO, BCAST | INIT | LEVEL);
801023ef:	ba 00 85 08 00       	mov    $0x88500,%edx
801023f4:	b8 c0 00 00 00       	mov    $0xc0,%eax
801023f9:	e8 a6 fe ff ff       	call   801022a4 <lapicw>
  while(lapic[ICRLO] & DELIVS)
801023fe:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102403:	8b 80 00 03 00 00    	mov    0x300(%eax),%eax
80102409:	f6 c4 10             	test   $0x10,%ah
8010240c:	75 f0                	jne    801023fe <lapicinit+0xda>
  lapicw(TPR, 0);
8010240e:	ba 00 00 00 00       	mov    $0x0,%edx
80102413:	b8 20 00 00 00       	mov    $0x20,%eax
80102418:	e8 87 fe ff ff       	call   801022a4 <lapicw>
}
8010241d:	c9                   	leave  
8010241e:	c3                   	ret    
    lapicw(PCINT, MASKED);
8010241f:	ba 00 00 01 00       	mov    $0x10000,%edx
80102424:	b8 d0 00 00 00       	mov    $0xd0,%eax
80102429:	e8 76 fe ff ff       	call   801022a4 <lapicw>
8010242e:	e9 71 ff ff ff       	jmp    801023a4 <lapicinit+0x80>
80102433:	c3                   	ret    

80102434 <lapicid>:
{
80102434:	f3 0f 1e fb          	endbr32 
  if (!lapic)
80102438:	a1 7c 26 11 80       	mov    0x8011267c,%eax
8010243d:	85 c0                	test   %eax,%eax
8010243f:	74 07                	je     80102448 <lapicid+0x14>
  return lapic[ID] >> 24;
80102441:	8b 40 20             	mov    0x20(%eax),%eax
80102444:	c1 e8 18             	shr    $0x18,%eax
80102447:	c3                   	ret    
    return 0;
80102448:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010244d:	c3                   	ret    

8010244e <lapiceoi>:
{
8010244e:	f3 0f 1e fb          	endbr32 
  if(lapic)
80102452:	83 3d 7c 26 11 80 00 	cmpl   $0x0,0x8011267c
80102459:	74 17                	je     80102472 <lapiceoi+0x24>
{
8010245b:	55                   	push   %ebp
8010245c:	89 e5                	mov    %esp,%ebp
8010245e:	83 ec 08             	sub    $0x8,%esp
    lapicw(EOI, 0);
80102461:	ba 00 00 00 00       	mov    $0x0,%edx
80102466:	b8 2c 00 00 00       	mov    $0x2c,%eax
8010246b:	e8 34 fe ff ff       	call   801022a4 <lapicw>
}
80102470:	c9                   	leave  
80102471:	c3                   	ret    
80102472:	c3                   	ret    

80102473 <microdelay>:
{
80102473:	f3 0f 1e fb          	endbr32 
}
80102477:	c3                   	ret    

80102478 <lapicstartap>:
{
80102478:	f3 0f 1e fb          	endbr32 
8010247c:	55                   	push   %ebp
8010247d:	89 e5                	mov    %esp,%ebp
8010247f:	57                   	push   %edi
80102480:	56                   	push   %esi
80102481:	53                   	push   %ebx
80102482:	83 ec 0c             	sub    $0xc,%esp
80102485:	8b 75 08             	mov    0x8(%ebp),%esi
80102488:	8b 7d 0c             	mov    0xc(%ebp),%edi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
8010248b:	b8 0f 00 00 00       	mov    $0xf,%eax
80102490:	ba 70 00 00 00       	mov    $0x70,%edx
80102495:	ee                   	out    %al,(%dx)
80102496:	b8 0a 00 00 00       	mov    $0xa,%eax
8010249b:	ba 71 00 00 00       	mov    $0x71,%edx
801024a0:	ee                   	out    %al,(%dx)
  wrv[0] = 0;
801024a1:	66 c7 05 67 04 00 80 	movw   $0x0,0x80000467
801024a8:	00 00 
  wrv[1] = addr >> 4;
801024aa:	89 f8                	mov    %edi,%eax
801024ac:	c1 e8 04             	shr    $0x4,%eax
801024af:	66 a3 69 04 00 80    	mov    %ax,0x80000469
  lapicw(ICRHI, apicid<<24);
801024b5:	c1 e6 18             	shl    $0x18,%esi
801024b8:	89 f2                	mov    %esi,%edx
801024ba:	b8 c4 00 00 00       	mov    $0xc4,%eax
801024bf:	e8 e0 fd ff ff       	call   801022a4 <lapicw>
  lapicw(ICRLO, INIT | LEVEL | ASSERT);
801024c4:	ba 00 c5 00 00       	mov    $0xc500,%edx
801024c9:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024ce:	e8 d1 fd ff ff       	call   801022a4 <lapicw>
  lapicw(ICRLO, INIT | LEVEL);
801024d3:	ba 00 85 00 00       	mov    $0x8500,%edx
801024d8:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024dd:	e8 c2 fd ff ff       	call   801022a4 <lapicw>
  for(i = 0; i < 2; i++){
801024e2:	bb 00 00 00 00       	mov    $0x0,%ebx
801024e7:	eb 21                	jmp    8010250a <lapicstartap+0x92>
    lapicw(ICRHI, apicid<<24);
801024e9:	89 f2                	mov    %esi,%edx
801024eb:	b8 c4 00 00 00       	mov    $0xc4,%eax
801024f0:	e8 af fd ff ff       	call   801022a4 <lapicw>
    lapicw(ICRLO, STARTUP | (addr>>12));
801024f5:	89 fa                	mov    %edi,%edx
801024f7:	c1 ea 0c             	shr    $0xc,%edx
801024fa:	80 ce 06             	or     $0x6,%dh
801024fd:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102502:	e8 9d fd ff ff       	call   801022a4 <lapicw>
  for(i = 0; i < 2; i++){
80102507:	83 c3 01             	add    $0x1,%ebx
8010250a:	83 fb 01             	cmp    $0x1,%ebx
8010250d:	7e da                	jle    801024e9 <lapicstartap+0x71>
}
8010250f:	83 c4 0c             	add    $0xc,%esp
80102512:	5b                   	pop    %ebx
80102513:	5e                   	pop    %esi
80102514:	5f                   	pop    %edi
80102515:	5d                   	pop    %ebp
80102516:	c3                   	ret    

80102517 <cmostime>:

// qemu seems to use 24-hour GWT and the values are BCD encoded
void
cmostime(struct rtcdate *r)
{
80102517:	f3 0f 1e fb          	endbr32 
8010251b:	55                   	push   %ebp
8010251c:	89 e5                	mov    %esp,%ebp
8010251e:	57                   	push   %edi
8010251f:	56                   	push   %esi
80102520:	53                   	push   %ebx
80102521:	83 ec 3c             	sub    $0x3c,%esp
80102524:	8b 75 08             	mov    0x8(%ebp),%esi
  struct rtcdate t1, t2;
  int sb, bcd;

  sb = cmos_read(CMOS_STATB);
80102527:	b8 0b 00 00 00       	mov    $0xb,%eax
8010252c:	e8 87 fd ff ff       	call   801022b8 <cmos_read>

  bcd = (sb & (1 << 2)) == 0;
80102531:	83 e0 04             	and    $0x4,%eax
80102534:	89 c7                	mov    %eax,%edi

  // make sure CMOS doesn't modify time while we read it
  for(;;) {
    fill_rtcdate(&t1);
80102536:	8d 45 d0             	lea    -0x30(%ebp),%eax
80102539:	e8 8a fd ff ff       	call   801022c8 <fill_rtcdate>
    if(cmos_read(CMOS_STATA) & CMOS_UIP)
8010253e:	b8 0a 00 00 00       	mov    $0xa,%eax
80102543:	e8 70 fd ff ff       	call   801022b8 <cmos_read>
80102548:	a8 80                	test   $0x80,%al
8010254a:	75 ea                	jne    80102536 <cmostime+0x1f>
        continue;
    fill_rtcdate(&t2);
8010254c:	8d 5d b8             	lea    -0x48(%ebp),%ebx
8010254f:	89 d8                	mov    %ebx,%eax
80102551:	e8 72 fd ff ff       	call   801022c8 <fill_rtcdate>
    if(memcmp(&t1, &t2, sizeof(t1)) == 0)
80102556:	83 ec 04             	sub    $0x4,%esp
80102559:	6a 18                	push   $0x18
8010255b:	53                   	push   %ebx
8010255c:	8d 45 d0             	lea    -0x30(%ebp),%eax
8010255f:	50                   	push   %eax
80102560:	e8 6b 18 00 00       	call   80103dd0 <memcmp>
80102565:	83 c4 10             	add    $0x10,%esp
80102568:	85 c0                	test   %eax,%eax
8010256a:	75 ca                	jne    80102536 <cmostime+0x1f>
      break;
  }

  // convert
  if(bcd) {
8010256c:	85 ff                	test   %edi,%edi
8010256e:	75 78                	jne    801025e8 <cmostime+0xd1>
#define    CONV(x)     (t1.x = ((t1.x >> 4) * 10) + (t1.x & 0xf))
    CONV(second);
80102570:	8b 45 d0             	mov    -0x30(%ebp),%eax
80102573:	89 c2                	mov    %eax,%edx
80102575:	c1 ea 04             	shr    $0x4,%edx
80102578:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010257b:	83 e0 0f             	and    $0xf,%eax
8010257e:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102581:	89 45 d0             	mov    %eax,-0x30(%ebp)
    CONV(minute);
80102584:	8b 45 d4             	mov    -0x2c(%ebp),%eax
80102587:	89 c2                	mov    %eax,%edx
80102589:	c1 ea 04             	shr    $0x4,%edx
8010258c:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010258f:	83 e0 0f             	and    $0xf,%eax
80102592:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102595:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    CONV(hour  );
80102598:	8b 45 d8             	mov    -0x28(%ebp),%eax
8010259b:	89 c2                	mov    %eax,%edx
8010259d:	c1 ea 04             	shr    $0x4,%edx
801025a0:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025a3:	83 e0 0f             	and    $0xf,%eax
801025a6:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025a9:	89 45 d8             	mov    %eax,-0x28(%ebp)
    CONV(day   );
801025ac:	8b 45 dc             	mov    -0x24(%ebp),%eax
801025af:	89 c2                	mov    %eax,%edx
801025b1:	c1 ea 04             	shr    $0x4,%edx
801025b4:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025b7:	83 e0 0f             	and    $0xf,%eax
801025ba:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025bd:	89 45 dc             	mov    %eax,-0x24(%ebp)
    CONV(month );
801025c0:	8b 45 e0             	mov    -0x20(%ebp),%eax
801025c3:	89 c2                	mov    %eax,%edx
801025c5:	c1 ea 04             	shr    $0x4,%edx
801025c8:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025cb:	83 e0 0f             	and    $0xf,%eax
801025ce:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025d1:	89 45 e0             	mov    %eax,-0x20(%ebp)
    CONV(year  );
801025d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801025d7:	89 c2                	mov    %eax,%edx
801025d9:	c1 ea 04             	shr    $0x4,%edx
801025dc:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025df:	83 e0 0f             	and    $0xf,%eax
801025e2:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025e5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
#undef     CONV
  }

  *r = t1;
801025e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
801025eb:	89 06                	mov    %eax,(%esi)
801025ed:	8b 45 d4             	mov    -0x2c(%ebp),%eax
801025f0:	89 46 04             	mov    %eax,0x4(%esi)
801025f3:	8b 45 d8             	mov    -0x28(%ebp),%eax
801025f6:	89 46 08             	mov    %eax,0x8(%esi)
801025f9:	8b 45 dc             	mov    -0x24(%ebp),%eax
801025fc:	89 46 0c             	mov    %eax,0xc(%esi)
801025ff:	8b 45 e0             	mov    -0x20(%ebp),%eax
80102602:	89 46 10             	mov    %eax,0x10(%esi)
80102605:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102608:	89 46 14             	mov    %eax,0x14(%esi)
  r->year += 2000;
8010260b:	81 46 14 d0 07 00 00 	addl   $0x7d0,0x14(%esi)
}
80102612:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102615:	5b                   	pop    %ebx
80102616:	5e                   	pop    %esi
80102617:	5f                   	pop    %edi
80102618:	5d                   	pop    %ebp
80102619:	c3                   	ret    

8010261a <read_head>:
}

// Read the log header from disk into the in-memory log header
static void
read_head(void)
{
8010261a:	55                   	push   %ebp
8010261b:	89 e5                	mov    %esp,%ebp
8010261d:	53                   	push   %ebx
8010261e:	83 ec 0c             	sub    $0xc,%esp
  struct buf *buf = bread(log.dev, log.start);
80102621:	ff 35 b4 26 11 80    	pushl  0x801126b4
80102627:	ff 35 c4 26 11 80    	pushl  0x801126c4
8010262d:	e8 3e db ff ff       	call   80100170 <bread>
  struct logheader *lh = (struct logheader *) (buf->data);
  int i;
  log.lh.n = lh->n;
80102632:	8b 58 5c             	mov    0x5c(%eax),%ebx
80102635:	89 1d c8 26 11 80    	mov    %ebx,0x801126c8
  for (i = 0; i < log.lh.n; i++) {
8010263b:	83 c4 10             	add    $0x10,%esp
8010263e:	ba 00 00 00 00       	mov    $0x0,%edx
80102643:	39 d3                	cmp    %edx,%ebx
80102645:	7e 10                	jle    80102657 <read_head+0x3d>
    log.lh.block[i] = lh->block[i];
80102647:	8b 4c 90 60          	mov    0x60(%eax,%edx,4),%ecx
8010264b:	89 0c 95 cc 26 11 80 	mov    %ecx,-0x7feed934(,%edx,4)
  for (i = 0; i < log.lh.n; i++) {
80102652:	83 c2 01             	add    $0x1,%edx
80102655:	eb ec                	jmp    80102643 <read_head+0x29>
  }
  brelse(buf);
80102657:	83 ec 0c             	sub    $0xc,%esp
8010265a:	50                   	push   %eax
8010265b:	e8 81 db ff ff       	call   801001e1 <brelse>
}
80102660:	83 c4 10             	add    $0x10,%esp
80102663:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102666:	c9                   	leave  
80102667:	c3                   	ret    

80102668 <install_trans>:
{
80102668:	55                   	push   %ebp
80102669:	89 e5                	mov    %esp,%ebp
8010266b:	57                   	push   %edi
8010266c:	56                   	push   %esi
8010266d:	53                   	push   %ebx
8010266e:	83 ec 0c             	sub    $0xc,%esp
  for (tail = 0; tail < log.lh.n; tail++) {
80102671:	be 00 00 00 00       	mov    $0x0,%esi
80102676:	39 35 c8 26 11 80    	cmp    %esi,0x801126c8
8010267c:	7e 68                	jle    801026e6 <install_trans+0x7e>
    struct buf *lbuf = bread(log.dev, log.start+tail+1); // read log block
8010267e:	89 f0                	mov    %esi,%eax
80102680:	03 05 b4 26 11 80    	add    0x801126b4,%eax
80102686:	83 c0 01             	add    $0x1,%eax
80102689:	83 ec 08             	sub    $0x8,%esp
8010268c:	50                   	push   %eax
8010268d:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102693:	e8 d8 da ff ff       	call   80100170 <bread>
80102698:	89 c7                	mov    %eax,%edi
    struct buf *dbuf = bread(log.dev, log.lh.block[tail]); // read dst
8010269a:	83 c4 08             	add    $0x8,%esp
8010269d:	ff 34 b5 cc 26 11 80 	pushl  -0x7feed934(,%esi,4)
801026a4:	ff 35 c4 26 11 80    	pushl  0x801126c4
801026aa:	e8 c1 da ff ff       	call   80100170 <bread>
801026af:	89 c3                	mov    %eax,%ebx
    memmove(dbuf->data, lbuf->data, BSIZE);  // copy block to dst
801026b1:	8d 57 5c             	lea    0x5c(%edi),%edx
801026b4:	8d 40 5c             	lea    0x5c(%eax),%eax
801026b7:	83 c4 0c             	add    $0xc,%esp
801026ba:	68 00 02 00 00       	push   $0x200
801026bf:	52                   	push   %edx
801026c0:	50                   	push   %eax
801026c1:	e8 43 17 00 00       	call   80103e09 <memmove>
    bwrite(dbuf);  // write dst to disk
801026c6:	89 1c 24             	mov    %ebx,(%esp)
801026c9:	e8 d4 da ff ff       	call   801001a2 <bwrite>
    brelse(lbuf);
801026ce:	89 3c 24             	mov    %edi,(%esp)
801026d1:	e8 0b db ff ff       	call   801001e1 <brelse>
    brelse(dbuf);
801026d6:	89 1c 24             	mov    %ebx,(%esp)
801026d9:	e8 03 db ff ff       	call   801001e1 <brelse>
  for (tail = 0; tail < log.lh.n; tail++) {
801026de:	83 c6 01             	add    $0x1,%esi
801026e1:	83 c4 10             	add    $0x10,%esp
801026e4:	eb 90                	jmp    80102676 <install_trans+0xe>
}
801026e6:	8d 65 f4             	lea    -0xc(%ebp),%esp
801026e9:	5b                   	pop    %ebx
801026ea:	5e                   	pop    %esi
801026eb:	5f                   	pop    %edi
801026ec:	5d                   	pop    %ebp
801026ed:	c3                   	ret    

801026ee <write_head>:
// Write in-memory log header to disk.
// This is the true point at which the
// current transaction commits.
static void
write_head(void)
{
801026ee:	55                   	push   %ebp
801026ef:	89 e5                	mov    %esp,%ebp
801026f1:	53                   	push   %ebx
801026f2:	83 ec 0c             	sub    $0xc,%esp
  struct buf *buf = bread(log.dev, log.start);
801026f5:	ff 35 b4 26 11 80    	pushl  0x801126b4
801026fb:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102701:	e8 6a da ff ff       	call   80100170 <bread>
80102706:	89 c3                	mov    %eax,%ebx
  struct logheader *hb = (struct logheader *) (buf->data);
  int i;
  hb->n = log.lh.n;
80102708:	8b 0d c8 26 11 80    	mov    0x801126c8,%ecx
8010270e:	89 48 5c             	mov    %ecx,0x5c(%eax)
  for (i = 0; i < log.lh.n; i++) {
80102711:	83 c4 10             	add    $0x10,%esp
80102714:	b8 00 00 00 00       	mov    $0x0,%eax
80102719:	39 c1                	cmp    %eax,%ecx
8010271b:	7e 10                	jle    8010272d <write_head+0x3f>
    hb->block[i] = log.lh.block[i];
8010271d:	8b 14 85 cc 26 11 80 	mov    -0x7feed934(,%eax,4),%edx
80102724:	89 54 83 60          	mov    %edx,0x60(%ebx,%eax,4)
  for (i = 0; i < log.lh.n; i++) {
80102728:	83 c0 01             	add    $0x1,%eax
8010272b:	eb ec                	jmp    80102719 <write_head+0x2b>
  }
  bwrite(buf);
8010272d:	83 ec 0c             	sub    $0xc,%esp
80102730:	53                   	push   %ebx
80102731:	e8 6c da ff ff       	call   801001a2 <bwrite>
  brelse(buf);
80102736:	89 1c 24             	mov    %ebx,(%esp)
80102739:	e8 a3 da ff ff       	call   801001e1 <brelse>
}
8010273e:	83 c4 10             	add    $0x10,%esp
80102741:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102744:	c9                   	leave  
80102745:	c3                   	ret    

80102746 <recover_from_log>:

static void
recover_from_log(void)
{
80102746:	55                   	push   %ebp
80102747:	89 e5                	mov    %esp,%ebp
80102749:	83 ec 08             	sub    $0x8,%esp
  read_head();
8010274c:	e8 c9 fe ff ff       	call   8010261a <read_head>
  install_trans(); // if committed, copy from log to disk
80102751:	e8 12 ff ff ff       	call   80102668 <install_trans>
  log.lh.n = 0;
80102756:	c7 05 c8 26 11 80 00 	movl   $0x0,0x801126c8
8010275d:	00 00 00 
  write_head(); // clear the log
80102760:	e8 89 ff ff ff       	call   801026ee <write_head>
}
80102765:	c9                   	leave  
80102766:	c3                   	ret    

80102767 <write_log>:
}

// Copy modified blocks from cache to log.
static void
write_log(void)
{
80102767:	55                   	push   %ebp
80102768:	89 e5                	mov    %esp,%ebp
8010276a:	57                   	push   %edi
8010276b:	56                   	push   %esi
8010276c:	53                   	push   %ebx
8010276d:	83 ec 0c             	sub    $0xc,%esp
  int tail;

  for (tail = 0; tail < log.lh.n; tail++) {
80102770:	be 00 00 00 00       	mov    $0x0,%esi
80102775:	39 35 c8 26 11 80    	cmp    %esi,0x801126c8
8010277b:	7e 68                	jle    801027e5 <write_log+0x7e>
    struct buf *to = bread(log.dev, log.start+tail+1); // log block
8010277d:	89 f0                	mov    %esi,%eax
8010277f:	03 05 b4 26 11 80    	add    0x801126b4,%eax
80102785:	83 c0 01             	add    $0x1,%eax
80102788:	83 ec 08             	sub    $0x8,%esp
8010278b:	50                   	push   %eax
8010278c:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102792:	e8 d9 d9 ff ff       	call   80100170 <bread>
80102797:	89 c3                	mov    %eax,%ebx
    struct buf *from = bread(log.dev, log.lh.block[tail]); // cache block
80102799:	83 c4 08             	add    $0x8,%esp
8010279c:	ff 34 b5 cc 26 11 80 	pushl  -0x7feed934(,%esi,4)
801027a3:	ff 35 c4 26 11 80    	pushl  0x801126c4
801027a9:	e8 c2 d9 ff ff       	call   80100170 <bread>
801027ae:	89 c7                	mov    %eax,%edi
    memmove(to->data, from->data, BSIZE);
801027b0:	8d 50 5c             	lea    0x5c(%eax),%edx
801027b3:	8d 43 5c             	lea    0x5c(%ebx),%eax
801027b6:	83 c4 0c             	add    $0xc,%esp
801027b9:	68 00 02 00 00       	push   $0x200
801027be:	52                   	push   %edx
801027bf:	50                   	push   %eax
801027c0:	e8 44 16 00 00       	call   80103e09 <memmove>
    bwrite(to);  // write the log
801027c5:	89 1c 24             	mov    %ebx,(%esp)
801027c8:	e8 d5 d9 ff ff       	call   801001a2 <bwrite>
    brelse(from);
801027cd:	89 3c 24             	mov    %edi,(%esp)
801027d0:	e8 0c da ff ff       	call   801001e1 <brelse>
    brelse(to);
801027d5:	89 1c 24             	mov    %ebx,(%esp)
801027d8:	e8 04 da ff ff       	call   801001e1 <brelse>
  for (tail = 0; tail < log.lh.n; tail++) {
801027dd:	83 c6 01             	add    $0x1,%esi
801027e0:	83 c4 10             	add    $0x10,%esp
801027e3:	eb 90                	jmp    80102775 <write_log+0xe>
  }
}
801027e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
801027e8:	5b                   	pop    %ebx
801027e9:	5e                   	pop    %esi
801027ea:	5f                   	pop    %edi
801027eb:	5d                   	pop    %ebp
801027ec:	c3                   	ret    

801027ed <commit>:

static void
commit()
{
  if (log.lh.n > 0) {
801027ed:	83 3d c8 26 11 80 00 	cmpl   $0x0,0x801126c8
801027f4:	7f 01                	jg     801027f7 <commit+0xa>
801027f6:	c3                   	ret    
{
801027f7:	55                   	push   %ebp
801027f8:	89 e5                	mov    %esp,%ebp
801027fa:	83 ec 08             	sub    $0x8,%esp
    write_log();     // Write modified blocks from cache to log
801027fd:	e8 65 ff ff ff       	call   80102767 <write_log>
    write_head();    // Write header to disk -- the real commit
80102802:	e8 e7 fe ff ff       	call   801026ee <write_head>
    install_trans(); // Now install writes to home locations
80102807:	e8 5c fe ff ff       	call   80102668 <install_trans>
    log.lh.n = 0;
8010280c:	c7 05 c8 26 11 80 00 	movl   $0x0,0x801126c8
80102813:	00 00 00 
    write_head();    // Erase the transaction from the log
80102816:	e8 d3 fe ff ff       	call   801026ee <write_head>
  }
}
8010281b:	c9                   	leave  
8010281c:	c3                   	ret    

8010281d <initlog>:
{
8010281d:	f3 0f 1e fb          	endbr32 
80102821:	55                   	push   %ebp
80102822:	89 e5                	mov    %esp,%ebp
80102824:	53                   	push   %ebx
80102825:	83 ec 2c             	sub    $0x2c,%esp
80102828:	8b 5d 08             	mov    0x8(%ebp),%ebx
  initlock(&log.lock, "log");
8010282b:	68 a0 6b 10 80       	push   $0x80106ba0
80102830:	68 80 26 11 80       	push   $0x80112680
80102835:	e8 4b 13 00 00       	call   80103b85 <initlock>
  readsb(dev, &sb);
8010283a:	83 c4 08             	add    $0x8,%esp
8010283d:	8d 45 dc             	lea    -0x24(%ebp),%eax
80102840:	50                   	push   %eax
80102841:	53                   	push   %ebx
80102842:	e8 3b ea ff ff       	call   80101282 <readsb>
  log.start = sb.logstart;
80102847:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010284a:	a3 b4 26 11 80       	mov    %eax,0x801126b4
  log.size = sb.nlog;
8010284f:	8b 45 e8             	mov    -0x18(%ebp),%eax
80102852:	a3 b8 26 11 80       	mov    %eax,0x801126b8
  log.dev = dev;
80102857:	89 1d c4 26 11 80    	mov    %ebx,0x801126c4
  recover_from_log();
8010285d:	e8 e4 fe ff ff       	call   80102746 <recover_from_log>
}
80102862:	83 c4 10             	add    $0x10,%esp
80102865:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102868:	c9                   	leave  
80102869:	c3                   	ret    

8010286a <begin_op>:
{
8010286a:	f3 0f 1e fb          	endbr32 
8010286e:	55                   	push   %ebp
8010286f:	89 e5                	mov    %esp,%ebp
80102871:	83 ec 14             	sub    $0x14,%esp
  acquire(&log.lock);
80102874:	68 80 26 11 80       	push   $0x80112680
80102879:	e8 57 14 00 00       	call   80103cd5 <acquire>
8010287e:	83 c4 10             	add    $0x10,%esp
80102881:	eb 15                	jmp    80102898 <begin_op+0x2e>
      sleep(&log, &log.lock);
80102883:	83 ec 08             	sub    $0x8,%esp
80102886:	68 80 26 11 80       	push   $0x80112680
8010288b:	68 80 26 11 80       	push   $0x80112680
80102890:	e8 0d 0f 00 00       	call   801037a2 <sleep>
80102895:	83 c4 10             	add    $0x10,%esp
    if(log.committing){
80102898:	83 3d c0 26 11 80 00 	cmpl   $0x0,0x801126c0
8010289f:	75 e2                	jne    80102883 <begin_op+0x19>
    } else if(log.lh.n + (log.outstanding+1)*MAXOPBLOCKS > LOGSIZE){
801028a1:	a1 bc 26 11 80       	mov    0x801126bc,%eax
801028a6:	83 c0 01             	add    $0x1,%eax
801028a9:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
801028ac:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
801028af:	03 15 c8 26 11 80    	add    0x801126c8,%edx
801028b5:	83 fa 1e             	cmp    $0x1e,%edx
801028b8:	7e 17                	jle    801028d1 <begin_op+0x67>
      sleep(&log, &log.lock);
801028ba:	83 ec 08             	sub    $0x8,%esp
801028bd:	68 80 26 11 80       	push   $0x80112680
801028c2:	68 80 26 11 80       	push   $0x80112680
801028c7:	e8 d6 0e 00 00       	call   801037a2 <sleep>
801028cc:	83 c4 10             	add    $0x10,%esp
801028cf:	eb c7                	jmp    80102898 <begin_op+0x2e>
      log.outstanding += 1;
801028d1:	a3 bc 26 11 80       	mov    %eax,0x801126bc
      release(&log.lock);
801028d6:	83 ec 0c             	sub    $0xc,%esp
801028d9:	68 80 26 11 80       	push   $0x80112680
801028de:	e8 5b 14 00 00       	call   80103d3e <release>
}
801028e3:	83 c4 10             	add    $0x10,%esp
801028e6:	c9                   	leave  
801028e7:	c3                   	ret    

801028e8 <end_op>:
{
801028e8:	f3 0f 1e fb          	endbr32 
801028ec:	55                   	push   %ebp
801028ed:	89 e5                	mov    %esp,%ebp
801028ef:	53                   	push   %ebx
801028f0:	83 ec 10             	sub    $0x10,%esp
  acquire(&log.lock);
801028f3:	68 80 26 11 80       	push   $0x80112680
801028f8:	e8 d8 13 00 00       	call   80103cd5 <acquire>
  log.outstanding -= 1;
801028fd:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102902:	83 e8 01             	sub    $0x1,%eax
80102905:	a3 bc 26 11 80       	mov    %eax,0x801126bc
  if(log.committing)
8010290a:	8b 1d c0 26 11 80    	mov    0x801126c0,%ebx
80102910:	83 c4 10             	add    $0x10,%esp
80102913:	85 db                	test   %ebx,%ebx
80102915:	75 2c                	jne    80102943 <end_op+0x5b>
  if(log.outstanding == 0){
80102917:	85 c0                	test   %eax,%eax
80102919:	75 35                	jne    80102950 <end_op+0x68>
    log.committing = 1;
8010291b:	c7 05 c0 26 11 80 01 	movl   $0x1,0x801126c0
80102922:	00 00 00 
    do_commit = 1;
80102925:	bb 01 00 00 00       	mov    $0x1,%ebx
  release(&log.lock);
8010292a:	83 ec 0c             	sub    $0xc,%esp
8010292d:	68 80 26 11 80       	push   $0x80112680
80102932:	e8 07 14 00 00       	call   80103d3e <release>
  if(do_commit){
80102937:	83 c4 10             	add    $0x10,%esp
8010293a:	85 db                	test   %ebx,%ebx
8010293c:	75 24                	jne    80102962 <end_op+0x7a>
}
8010293e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102941:	c9                   	leave  
80102942:	c3                   	ret    
    panic("log.committing");
80102943:	83 ec 0c             	sub    $0xc,%esp
80102946:	68 a4 6b 10 80       	push   $0x80106ba4
8010294b:	e8 0c da ff ff       	call   8010035c <panic>
    wakeup(&log);
80102950:	83 ec 0c             	sub    $0xc,%esp
80102953:	68 80 26 11 80       	push   $0x80112680
80102958:	e8 b2 0f 00 00       	call   8010390f <wakeup>
8010295d:	83 c4 10             	add    $0x10,%esp
80102960:	eb c8                	jmp    8010292a <end_op+0x42>
    commit();
80102962:	e8 86 fe ff ff       	call   801027ed <commit>
    acquire(&log.lock);
80102967:	83 ec 0c             	sub    $0xc,%esp
8010296a:	68 80 26 11 80       	push   $0x80112680
8010296f:	e8 61 13 00 00       	call   80103cd5 <acquire>
    log.committing = 0;
80102974:	c7 05 c0 26 11 80 00 	movl   $0x0,0x801126c0
8010297b:	00 00 00 
    wakeup(&log);
8010297e:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102985:	e8 85 0f 00 00       	call   8010390f <wakeup>
    release(&log.lock);
8010298a:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102991:	e8 a8 13 00 00       	call   80103d3e <release>
80102996:	83 c4 10             	add    $0x10,%esp
}
80102999:	eb a3                	jmp    8010293e <end_op+0x56>

8010299b <log_write>:
//   modify bp->data[]
//   log_write(bp)
//   brelse(bp)
void
log_write(struct buf *b)
{
8010299b:	f3 0f 1e fb          	endbr32 
8010299f:	55                   	push   %ebp
801029a0:	89 e5                	mov    %esp,%ebp
801029a2:	53                   	push   %ebx
801029a3:	83 ec 04             	sub    $0x4,%esp
801029a6:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int i;

  if (log.lh.n >= LOGSIZE || log.lh.n >= log.size - 1)
801029a9:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
801029af:	83 fa 1d             	cmp    $0x1d,%edx
801029b2:	7f 45                	jg     801029f9 <log_write+0x5e>
801029b4:	a1 b8 26 11 80       	mov    0x801126b8,%eax
801029b9:	83 e8 01             	sub    $0x1,%eax
801029bc:	39 c2                	cmp    %eax,%edx
801029be:	7d 39                	jge    801029f9 <log_write+0x5e>
    panic("too big a transaction");
  if (log.outstanding < 1)
801029c0:	83 3d bc 26 11 80 00 	cmpl   $0x0,0x801126bc
801029c7:	7e 3d                	jle    80102a06 <log_write+0x6b>
    panic("log_write outside of trans");

  acquire(&log.lock);
801029c9:	83 ec 0c             	sub    $0xc,%esp
801029cc:	68 80 26 11 80       	push   $0x80112680
801029d1:	e8 ff 12 00 00       	call   80103cd5 <acquire>
  for (i = 0; i < log.lh.n; i++) {
801029d6:	83 c4 10             	add    $0x10,%esp
801029d9:	b8 00 00 00 00       	mov    $0x0,%eax
801029de:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
801029e4:	39 c2                	cmp    %eax,%edx
801029e6:	7e 2b                	jle    80102a13 <log_write+0x78>
    if (log.lh.block[i] == b->blockno)   // log absorbtion
801029e8:	8b 4b 08             	mov    0x8(%ebx),%ecx
801029eb:	39 0c 85 cc 26 11 80 	cmp    %ecx,-0x7feed934(,%eax,4)
801029f2:	74 1f                	je     80102a13 <log_write+0x78>
  for (i = 0; i < log.lh.n; i++) {
801029f4:	83 c0 01             	add    $0x1,%eax
801029f7:	eb e5                	jmp    801029de <log_write+0x43>
    panic("too big a transaction");
801029f9:	83 ec 0c             	sub    $0xc,%esp
801029fc:	68 b3 6b 10 80       	push   $0x80106bb3
80102a01:	e8 56 d9 ff ff       	call   8010035c <panic>
    panic("log_write outside of trans");
80102a06:	83 ec 0c             	sub    $0xc,%esp
80102a09:	68 c9 6b 10 80       	push   $0x80106bc9
80102a0e:	e8 49 d9 ff ff       	call   8010035c <panic>
      break;
  }
  log.lh.block[i] = b->blockno;
80102a13:	8b 4b 08             	mov    0x8(%ebx),%ecx
80102a16:	89 0c 85 cc 26 11 80 	mov    %ecx,-0x7feed934(,%eax,4)
  if (i == log.lh.n)
80102a1d:	39 c2                	cmp    %eax,%edx
80102a1f:	74 18                	je     80102a39 <log_write+0x9e>
    log.lh.n++;
  b->flags |= B_DIRTY; // prevent eviction
80102a21:	83 0b 04             	orl    $0x4,(%ebx)
  release(&log.lock);
80102a24:	83 ec 0c             	sub    $0xc,%esp
80102a27:	68 80 26 11 80       	push   $0x80112680
80102a2c:	e8 0d 13 00 00       	call   80103d3e <release>
}
80102a31:	83 c4 10             	add    $0x10,%esp
80102a34:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102a37:	c9                   	leave  
80102a38:	c3                   	ret    
    log.lh.n++;
80102a39:	83 c2 01             	add    $0x1,%edx
80102a3c:	89 15 c8 26 11 80    	mov    %edx,0x801126c8
80102a42:	eb dd                	jmp    80102a21 <log_write+0x86>

80102a44 <startothers>:
pde_t entrypgdir[];  // For entry.S

// Start the non-boot (AP) processors.
static void
startothers(void)
{
80102a44:	55                   	push   %ebp
80102a45:	89 e5                	mov    %esp,%ebp
80102a47:	53                   	push   %ebx
80102a48:	83 ec 08             	sub    $0x8,%esp

  // Write entry code to unused memory at 0x7000.
  // The linker has placed the image of entryother.S in
  // _binary_entryother_start.
  code = P2V(0x7000);
  memmove(code, _binary_entryother_start, (uint)_binary_entryother_size);
80102a4b:	68 8e 00 00 00       	push   $0x8e
80102a50:	68 8c a4 10 80       	push   $0x8010a48c
80102a55:	68 00 70 00 80       	push   $0x80007000
80102a5a:	e8 aa 13 00 00       	call   80103e09 <memmove>

  for(c = cpus; c < cpus+ncpu; c++){
80102a5f:	83 c4 10             	add    $0x10,%esp
80102a62:	bb 80 27 11 80       	mov    $0x80112780,%ebx
80102a67:	eb 47                	jmp    80102ab0 <startothers+0x6c>
      continue;

    // Tell entryother.S what stack to use, where to enter, and what
    // pgdir to use. We cannot use kpgdir yet, because the AP processor
    // is running in low  memory, so we use entrypgdir for the APs too.
    stack = kalloc();
80102a69:	e8 ff f6 ff ff       	call   8010216d <kalloc>
    *(void**)(code-4) = stack + KSTACKSIZE;
80102a6e:	05 00 10 00 00       	add    $0x1000,%eax
80102a73:	a3 fc 6f 00 80       	mov    %eax,0x80006ffc
    *(void(**)(void))(code-8) = mpenter;
80102a78:	c7 05 f8 6f 00 80 12 	movl   $0x80102b12,0x80006ff8
80102a7f:	2b 10 80 
    *(int**)(code-12) = (void *) V2P(entrypgdir);
80102a82:	c7 05 f4 6f 00 80 00 	movl   $0x109000,0x80006ff4
80102a89:	90 10 00 

    lapicstartap(c->apicid, V2P(code));
80102a8c:	83 ec 08             	sub    $0x8,%esp
80102a8f:	68 00 70 00 00       	push   $0x7000
80102a94:	0f b6 03             	movzbl (%ebx),%eax
80102a97:	50                   	push   %eax
80102a98:	e8 db f9 ff ff       	call   80102478 <lapicstartap>

    // wait for cpu to finish mpmain()
    while(c->started == 0)
80102a9d:	83 c4 10             	add    $0x10,%esp
80102aa0:	8b 83 a0 00 00 00    	mov    0xa0(%ebx),%eax
80102aa6:	85 c0                	test   %eax,%eax
80102aa8:	74 f6                	je     80102aa0 <startothers+0x5c>
  for(c = cpus; c < cpus+ncpu; c++){
80102aaa:	81 c3 b0 00 00 00    	add    $0xb0,%ebx
80102ab0:	69 05 00 2d 11 80 b0 	imul   $0xb0,0x80112d00,%eax
80102ab7:	00 00 00 
80102aba:	05 80 27 11 80       	add    $0x80112780,%eax
80102abf:	39 d8                	cmp    %ebx,%eax
80102ac1:	76 0b                	jbe    80102ace <startothers+0x8a>
    if(c == mycpu())  // We've started already.
80102ac3:	e8 99 07 00 00       	call   80103261 <mycpu>
80102ac8:	39 c3                	cmp    %eax,%ebx
80102aca:	74 de                	je     80102aaa <startothers+0x66>
80102acc:	eb 9b                	jmp    80102a69 <startothers+0x25>
      ;
  }
}
80102ace:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102ad1:	c9                   	leave  
80102ad2:	c3                   	ret    

80102ad3 <mpmain>:
{
80102ad3:	55                   	push   %ebp
80102ad4:	89 e5                	mov    %esp,%ebp
80102ad6:	53                   	push   %ebx
80102ad7:	83 ec 04             	sub    $0x4,%esp
  cprintf("cpu%d: starting %d\n", cpuid(), cpuid());
80102ada:	e8 e2 07 00 00       	call   801032c1 <cpuid>
80102adf:	89 c3                	mov    %eax,%ebx
80102ae1:	e8 db 07 00 00       	call   801032c1 <cpuid>
80102ae6:	83 ec 04             	sub    $0x4,%esp
80102ae9:	53                   	push   %ebx
80102aea:	50                   	push   %eax
80102aeb:	68 e4 6b 10 80       	push   $0x80106be4
80102af0:	e8 34 db ff ff       	call   80100629 <cprintf>
  idtinit();       // load idt register
80102af5:	e8 35 25 00 00       	call   8010502f <idtinit>
  xchg(&(mycpu()->started), 1); // tell startothers() we're up
80102afa:	e8 62 07 00 00       	call   80103261 <mycpu>
80102aff:	89 c2                	mov    %eax,%edx
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
80102b01:	b8 01 00 00 00       	mov    $0x1,%eax
80102b06:	f0 87 82 a0 00 00 00 	lock xchg %eax,0xa0(%edx)
  scheduler();     // start running processes
80102b0d:	e8 5b 0a 00 00       	call   8010356d <scheduler>

80102b12 <mpenter>:
{
80102b12:	f3 0f 1e fb          	endbr32 
80102b16:	55                   	push   %ebp
80102b17:	89 e5                	mov    %esp,%ebp
80102b19:	83 ec 08             	sub    $0x8,%esp
  switchkvm();
80102b1c:	e8 2e 35 00 00       	call   8010604f <switchkvm>
  seginit();
80102b21:	e8 d9 33 00 00       	call   80105eff <seginit>
  lapicinit();
80102b26:	e8 f9 f7 ff ff       	call   80102324 <lapicinit>
  mpmain();
80102b2b:	e8 a3 ff ff ff       	call   80102ad3 <mpmain>

80102b30 <main>:
{
80102b30:	f3 0f 1e fb          	endbr32 
80102b34:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80102b38:	83 e4 f0             	and    $0xfffffff0,%esp
80102b3b:	ff 71 fc             	pushl  -0x4(%ecx)
80102b3e:	55                   	push   %ebp
80102b3f:	89 e5                	mov    %esp,%ebp
80102b41:	51                   	push   %ecx
80102b42:	83 ec 0c             	sub    $0xc,%esp
  kinit1(end, P2V(4*1024*1024)); // phys page allocator
80102b45:	68 00 00 40 80       	push   $0x80400000
80102b4a:	68 a8 54 11 80       	push   $0x801154a8
80102b4f:	e8 bf f5 ff ff       	call   80102113 <kinit1>
  kvmalloc();      // kernel page table
80102b54:	e8 99 39 00 00       	call   801064f2 <kvmalloc>
  mpinit();        // detect other processors
80102b59:	e8 c1 01 00 00       	call   80102d1f <mpinit>
  lapicinit();     // interrupt controller
80102b5e:	e8 c1 f7 ff ff       	call   80102324 <lapicinit>
  seginit();       // segment descriptors
80102b63:	e8 97 33 00 00       	call   80105eff <seginit>
  picinit();       // disable pic
80102b68:	e8 8c 02 00 00       	call   80102df9 <picinit>
  ioapicinit();    // another interrupt controller
80102b6d:	e8 1c f4 ff ff       	call   80101f8e <ioapicinit>
  consoleinit();   // console hardware
80102b72:	e8 3d dd ff ff       	call   801008b4 <consoleinit>
  uartinit();      // serial port
80102b77:	e8 6b 27 00 00       	call   801052e7 <uartinit>
  pinit();         // process table
80102b7c:	e8 c2 06 00 00       	call   80103243 <pinit>
  tvinit();        // trap vectors
80102b81:	e8 f4 23 00 00       	call   80104f7a <tvinit>
  binit();         // buffer cache
80102b86:	e8 69 d5 ff ff       	call   801000f4 <binit>
  fileinit();      // file table
80102b8b:	e8 b6 e0 ff ff       	call   80100c46 <fileinit>
  ideinit();       // disk 
80102b90:	e8 fb f1 ff ff       	call   80101d90 <ideinit>
  startothers();   // start other processors
80102b95:	e8 aa fe ff ff       	call   80102a44 <startothers>
  kinit2(P2V(4*1024*1024), P2V(PHYSTOP)); // must come after startothers()
80102b9a:	83 c4 08             	add    $0x8,%esp
80102b9d:	68 00 00 00 8e       	push   $0x8e000000
80102ba2:	68 00 00 40 80       	push   $0x80400000
80102ba7:	e8 9d f5 ff ff       	call   80102149 <kinit2>
  userinit();      // first user process
80102bac:	e8 57 07 00 00       	call   80103308 <userinit>
  mpmain();        // finish this processor's setup
80102bb1:	e8 1d ff ff ff       	call   80102ad3 <mpmain>

80102bb6 <sum>:
int ncpu;
uchar ioapicid;

static uchar
sum(uchar *addr, int len)
{
80102bb6:	55                   	push   %ebp
80102bb7:	89 e5                	mov    %esp,%ebp
80102bb9:	56                   	push   %esi
80102bba:	53                   	push   %ebx
80102bbb:	89 c6                	mov    %eax,%esi
  int i, sum;

  sum = 0;
80102bbd:	b8 00 00 00 00       	mov    $0x0,%eax
  for(i=0; i<len; i++)
80102bc2:	b9 00 00 00 00       	mov    $0x0,%ecx
80102bc7:	39 d1                	cmp    %edx,%ecx
80102bc9:	7d 0b                	jge    80102bd6 <sum+0x20>
    sum += addr[i];
80102bcb:	0f b6 1c 0e          	movzbl (%esi,%ecx,1),%ebx
80102bcf:	01 d8                	add    %ebx,%eax
  for(i=0; i<len; i++)
80102bd1:	83 c1 01             	add    $0x1,%ecx
80102bd4:	eb f1                	jmp    80102bc7 <sum+0x11>
  return sum;
}
80102bd6:	5b                   	pop    %ebx
80102bd7:	5e                   	pop    %esi
80102bd8:	5d                   	pop    %ebp
80102bd9:	c3                   	ret    

80102bda <mpsearch1>:

// Look for an MP structure in the len bytes at addr.
static struct mp*
mpsearch1(uint a, int len)
{
80102bda:	55                   	push   %ebp
80102bdb:	89 e5                	mov    %esp,%ebp
80102bdd:	56                   	push   %esi
80102bde:	53                   	push   %ebx
  uchar *e, *p, *addr;

  addr = P2V(a);
80102bdf:	8d b0 00 00 00 80    	lea    -0x80000000(%eax),%esi
80102be5:	89 f3                	mov    %esi,%ebx
  e = addr+len;
80102be7:	01 d6                	add    %edx,%esi
  for(p = addr; p < e; p += sizeof(struct mp))
80102be9:	eb 03                	jmp    80102bee <mpsearch1+0x14>
80102beb:	83 c3 10             	add    $0x10,%ebx
80102bee:	39 f3                	cmp    %esi,%ebx
80102bf0:	73 29                	jae    80102c1b <mpsearch1+0x41>
    if(memcmp(p, "_MP_", 4) == 0 && sum(p, sizeof(struct mp)) == 0)
80102bf2:	83 ec 04             	sub    $0x4,%esp
80102bf5:	6a 04                	push   $0x4
80102bf7:	68 f8 6b 10 80       	push   $0x80106bf8
80102bfc:	53                   	push   %ebx
80102bfd:	e8 ce 11 00 00       	call   80103dd0 <memcmp>
80102c02:	83 c4 10             	add    $0x10,%esp
80102c05:	85 c0                	test   %eax,%eax
80102c07:	75 e2                	jne    80102beb <mpsearch1+0x11>
80102c09:	ba 10 00 00 00       	mov    $0x10,%edx
80102c0e:	89 d8                	mov    %ebx,%eax
80102c10:	e8 a1 ff ff ff       	call   80102bb6 <sum>
80102c15:	84 c0                	test   %al,%al
80102c17:	75 d2                	jne    80102beb <mpsearch1+0x11>
80102c19:	eb 05                	jmp    80102c20 <mpsearch1+0x46>
      return (struct mp*)p;
  return 0;
80102c1b:	bb 00 00 00 00       	mov    $0x0,%ebx
}
80102c20:	89 d8                	mov    %ebx,%eax
80102c22:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102c25:	5b                   	pop    %ebx
80102c26:	5e                   	pop    %esi
80102c27:	5d                   	pop    %ebp
80102c28:	c3                   	ret    

80102c29 <mpsearch>:
// 1) in the first KB of the EBDA;
// 2) in the last KB of system base memory;
// 3) in the BIOS ROM between 0xE0000 and 0xFFFFF.
static struct mp*
mpsearch(void)
{
80102c29:	55                   	push   %ebp
80102c2a:	89 e5                	mov    %esp,%ebp
80102c2c:	83 ec 08             	sub    $0x8,%esp
  uchar *bda;
  uint p;
  struct mp *mp;

  bda = (uchar *) P2V(0x400);
  if((p = ((bda[0x0F]<<8)| bda[0x0E]) << 4)){
80102c2f:	0f b6 05 0f 04 00 80 	movzbl 0x8000040f,%eax
80102c36:	c1 e0 08             	shl    $0x8,%eax
80102c39:	0f b6 15 0e 04 00 80 	movzbl 0x8000040e,%edx
80102c40:	09 d0                	or     %edx,%eax
80102c42:	c1 e0 04             	shl    $0x4,%eax
80102c45:	74 1f                	je     80102c66 <mpsearch+0x3d>
    if((mp = mpsearch1(p, 1024)))
80102c47:	ba 00 04 00 00       	mov    $0x400,%edx
80102c4c:	e8 89 ff ff ff       	call   80102bda <mpsearch1>
80102c51:	85 c0                	test   %eax,%eax
80102c53:	75 0f                	jne    80102c64 <mpsearch+0x3b>
  } else {
    p = ((bda[0x14]<<8)|bda[0x13])*1024;
    if((mp = mpsearch1(p-1024, 1024)))
      return mp;
  }
  return mpsearch1(0xF0000, 0x10000);
80102c55:	ba 00 00 01 00       	mov    $0x10000,%edx
80102c5a:	b8 00 00 0f 00       	mov    $0xf0000,%eax
80102c5f:	e8 76 ff ff ff       	call   80102bda <mpsearch1>
}
80102c64:	c9                   	leave  
80102c65:	c3                   	ret    
    p = ((bda[0x14]<<8)|bda[0x13])*1024;
80102c66:	0f b6 05 14 04 00 80 	movzbl 0x80000414,%eax
80102c6d:	c1 e0 08             	shl    $0x8,%eax
80102c70:	0f b6 15 13 04 00 80 	movzbl 0x80000413,%edx
80102c77:	09 d0                	or     %edx,%eax
80102c79:	c1 e0 0a             	shl    $0xa,%eax
    if((mp = mpsearch1(p-1024, 1024)))
80102c7c:	2d 00 04 00 00       	sub    $0x400,%eax
80102c81:	ba 00 04 00 00       	mov    $0x400,%edx
80102c86:	e8 4f ff ff ff       	call   80102bda <mpsearch1>
80102c8b:	85 c0                	test   %eax,%eax
80102c8d:	75 d5                	jne    80102c64 <mpsearch+0x3b>
80102c8f:	eb c4                	jmp    80102c55 <mpsearch+0x2c>

80102c91 <mpconfig>:
// Check for correct signature, calculate the checksum and,
// if correct, check the version.
// To do: check extended table checksum.
static struct mpconf*
mpconfig(struct mp **pmp)
{
80102c91:	55                   	push   %ebp
80102c92:	89 e5                	mov    %esp,%ebp
80102c94:	57                   	push   %edi
80102c95:	56                   	push   %esi
80102c96:	53                   	push   %ebx
80102c97:	83 ec 1c             	sub    $0x1c,%esp
80102c9a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  struct mpconf *conf;
  struct mp *mp;

  if((mp = mpsearch()) == 0 || mp->physaddr == 0)
80102c9d:	e8 87 ff ff ff       	call   80102c29 <mpsearch>
80102ca2:	89 c3                	mov    %eax,%ebx
80102ca4:	85 c0                	test   %eax,%eax
80102ca6:	74 5a                	je     80102d02 <mpconfig+0x71>
80102ca8:	8b 70 04             	mov    0x4(%eax),%esi
80102cab:	85 f6                	test   %esi,%esi
80102cad:	74 57                	je     80102d06 <mpconfig+0x75>
    return 0;
  conf = (struct mpconf*) P2V((uint) mp->physaddr);
80102caf:	8d be 00 00 00 80    	lea    -0x80000000(%esi),%edi
  if(memcmp(conf, "PCMP", 4) != 0)
80102cb5:	83 ec 04             	sub    $0x4,%esp
80102cb8:	6a 04                	push   $0x4
80102cba:	68 fd 6b 10 80       	push   $0x80106bfd
80102cbf:	57                   	push   %edi
80102cc0:	e8 0b 11 00 00       	call   80103dd0 <memcmp>
80102cc5:	83 c4 10             	add    $0x10,%esp
80102cc8:	85 c0                	test   %eax,%eax
80102cca:	75 3e                	jne    80102d0a <mpconfig+0x79>
    return 0;
  if(conf->version != 1 && conf->version != 4)
80102ccc:	0f b6 86 06 00 00 80 	movzbl -0x7ffffffa(%esi),%eax
80102cd3:	3c 01                	cmp    $0x1,%al
80102cd5:	0f 95 c2             	setne  %dl
80102cd8:	3c 04                	cmp    $0x4,%al
80102cda:	0f 95 c0             	setne  %al
80102cdd:	84 c2                	test   %al,%dl
80102cdf:	75 30                	jne    80102d11 <mpconfig+0x80>
    return 0;
  if(sum((uchar*)conf, conf->length) != 0)
80102ce1:	0f b7 96 04 00 00 80 	movzwl -0x7ffffffc(%esi),%edx
80102ce8:	89 f8                	mov    %edi,%eax
80102cea:	e8 c7 fe ff ff       	call   80102bb6 <sum>
80102cef:	84 c0                	test   %al,%al
80102cf1:	75 25                	jne    80102d18 <mpconfig+0x87>
    return 0;
  *pmp = mp;
80102cf3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102cf6:	89 18                	mov    %ebx,(%eax)
  return conf;
}
80102cf8:	89 f8                	mov    %edi,%eax
80102cfa:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102cfd:	5b                   	pop    %ebx
80102cfe:	5e                   	pop    %esi
80102cff:	5f                   	pop    %edi
80102d00:	5d                   	pop    %ebp
80102d01:	c3                   	ret    
    return 0;
80102d02:	89 c7                	mov    %eax,%edi
80102d04:	eb f2                	jmp    80102cf8 <mpconfig+0x67>
80102d06:	89 f7                	mov    %esi,%edi
80102d08:	eb ee                	jmp    80102cf8 <mpconfig+0x67>
    return 0;
80102d0a:	bf 00 00 00 00       	mov    $0x0,%edi
80102d0f:	eb e7                	jmp    80102cf8 <mpconfig+0x67>
    return 0;
80102d11:	bf 00 00 00 00       	mov    $0x0,%edi
80102d16:	eb e0                	jmp    80102cf8 <mpconfig+0x67>
    return 0;
80102d18:	bf 00 00 00 00       	mov    $0x0,%edi
80102d1d:	eb d9                	jmp    80102cf8 <mpconfig+0x67>

80102d1f <mpinit>:

void
mpinit(void)
{
80102d1f:	f3 0f 1e fb          	endbr32 
80102d23:	55                   	push   %ebp
80102d24:	89 e5                	mov    %esp,%ebp
80102d26:	57                   	push   %edi
80102d27:	56                   	push   %esi
80102d28:	53                   	push   %ebx
80102d29:	83 ec 1c             	sub    $0x1c,%esp
  struct mp *mp;
  struct mpconf *conf;
  struct mpproc *proc;
  struct mpioapic *ioapic;

  if((conf = mpconfig(&mp)) == 0)
80102d2c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80102d2f:	e8 5d ff ff ff       	call   80102c91 <mpconfig>
80102d34:	85 c0                	test   %eax,%eax
80102d36:	74 19                	je     80102d51 <mpinit+0x32>
    panic("Expect to run on an SMP");
  ismp = 1;
  lapic = (uint*)conf->lapicaddr;
80102d38:	8b 50 24             	mov    0x24(%eax),%edx
80102d3b:	89 15 7c 26 11 80    	mov    %edx,0x8011267c
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102d41:	8d 50 2c             	lea    0x2c(%eax),%edx
80102d44:	0f b7 48 04          	movzwl 0x4(%eax),%ecx
80102d48:	01 c1                	add    %eax,%ecx
  ismp = 1;
80102d4a:	bb 01 00 00 00       	mov    $0x1,%ebx
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102d4f:	eb 20                	jmp    80102d71 <mpinit+0x52>
    panic("Expect to run on an SMP");
80102d51:	83 ec 0c             	sub    $0xc,%esp
80102d54:	68 02 6c 10 80       	push   $0x80106c02
80102d59:	e8 fe d5 ff ff       	call   8010035c <panic>
    switch(*p){
80102d5e:	bb 00 00 00 00       	mov    $0x0,%ebx
80102d63:	eb 0c                	jmp    80102d71 <mpinit+0x52>
80102d65:	83 e8 03             	sub    $0x3,%eax
80102d68:	3c 01                	cmp    $0x1,%al
80102d6a:	76 1a                	jbe    80102d86 <mpinit+0x67>
80102d6c:	bb 00 00 00 00       	mov    $0x0,%ebx
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102d71:	39 ca                	cmp    %ecx,%edx
80102d73:	73 4d                	jae    80102dc2 <mpinit+0xa3>
    switch(*p){
80102d75:	0f b6 02             	movzbl (%edx),%eax
80102d78:	3c 02                	cmp    $0x2,%al
80102d7a:	74 38                	je     80102db4 <mpinit+0x95>
80102d7c:	77 e7                	ja     80102d65 <mpinit+0x46>
80102d7e:	84 c0                	test   %al,%al
80102d80:	74 09                	je     80102d8b <mpinit+0x6c>
80102d82:	3c 01                	cmp    $0x1,%al
80102d84:	75 d8                	jne    80102d5e <mpinit+0x3f>
      p += sizeof(struct mpioapic);
      continue;
    case MPBUS:
    case MPIOINTR:
    case MPLINTR:
      p += 8;
80102d86:	83 c2 08             	add    $0x8,%edx
      continue;
80102d89:	eb e6                	jmp    80102d71 <mpinit+0x52>
      if(ncpu < NCPU) {
80102d8b:	8b 35 00 2d 11 80    	mov    0x80112d00,%esi
80102d91:	83 fe 07             	cmp    $0x7,%esi
80102d94:	7f 19                	jg     80102daf <mpinit+0x90>
        cpus[ncpu].apicid = proc->apicid;  // apicid may differ from ncpu
80102d96:	0f b6 42 01          	movzbl 0x1(%edx),%eax
80102d9a:	69 fe b0 00 00 00    	imul   $0xb0,%esi,%edi
80102da0:	88 87 80 27 11 80    	mov    %al,-0x7feed880(%edi)
        ncpu++;
80102da6:	83 c6 01             	add    $0x1,%esi
80102da9:	89 35 00 2d 11 80    	mov    %esi,0x80112d00
      p += sizeof(struct mpproc);
80102daf:	83 c2 14             	add    $0x14,%edx
      continue;
80102db2:	eb bd                	jmp    80102d71 <mpinit+0x52>
      ioapicid = ioapic->apicno;
80102db4:	0f b6 42 01          	movzbl 0x1(%edx),%eax
80102db8:	a2 60 27 11 80       	mov    %al,0x80112760
      p += sizeof(struct mpioapic);
80102dbd:	83 c2 08             	add    $0x8,%edx
      continue;
80102dc0:	eb af                	jmp    80102d71 <mpinit+0x52>
    default:
      ismp = 0;
      break;
    }
  }
  if(!ismp)
80102dc2:	85 db                	test   %ebx,%ebx
80102dc4:	74 26                	je     80102dec <mpinit+0xcd>
    panic("Didn't find a suitable machine");

  if(mp->imcrp){
80102dc6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102dc9:	80 78 0c 00          	cmpb   $0x0,0xc(%eax)
80102dcd:	74 15                	je     80102de4 <mpinit+0xc5>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102dcf:	b8 70 00 00 00       	mov    $0x70,%eax
80102dd4:	ba 22 00 00 00       	mov    $0x22,%edx
80102dd9:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80102dda:	ba 23 00 00 00       	mov    $0x23,%edx
80102ddf:	ec                   	in     (%dx),%al
    // Bochs doesn't support IMCR, so this doesn't run on Bochs.
    // But it would on real hardware.
    outb(0x22, 0x70);   // Select IMCR
    outb(0x23, inb(0x23) | 1);  // Mask external interrupts.
80102de0:	83 c8 01             	or     $0x1,%eax
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102de3:	ee                   	out    %al,(%dx)
  }
}
80102de4:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102de7:	5b                   	pop    %ebx
80102de8:	5e                   	pop    %esi
80102de9:	5f                   	pop    %edi
80102dea:	5d                   	pop    %ebp
80102deb:	c3                   	ret    
    panic("Didn't find a suitable machine");
80102dec:	83 ec 0c             	sub    $0xc,%esp
80102def:	68 1c 6c 10 80       	push   $0x80106c1c
80102df4:	e8 63 d5 ff ff       	call   8010035c <panic>

80102df9 <picinit>:
#define IO_PIC2         0xA0    // Slave (IRQs 8-15)

// Don't use the 8259A interrupt controllers.  Xv6 assumes SMP hardware.
void
picinit(void)
{
80102df9:	f3 0f 1e fb          	endbr32 
80102dfd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102e02:	ba 21 00 00 00       	mov    $0x21,%edx
80102e07:	ee                   	out    %al,(%dx)
80102e08:	ba a1 00 00 00       	mov    $0xa1,%edx
80102e0d:	ee                   	out    %al,(%dx)
  // mask all interrupts
  outb(IO_PIC1+1, 0xFF);
  outb(IO_PIC2+1, 0xFF);
}
80102e0e:	c3                   	ret    

80102e0f <pipealloc>:
  int writeopen;  // write fd is still open
};

int
pipealloc(struct file **f0, struct file **f1)
{
80102e0f:	f3 0f 1e fb          	endbr32 
80102e13:	55                   	push   %ebp
80102e14:	89 e5                	mov    %esp,%ebp
80102e16:	57                   	push   %edi
80102e17:	56                   	push   %esi
80102e18:	53                   	push   %ebx
80102e19:	83 ec 0c             	sub    $0xc,%esp
80102e1c:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102e1f:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct pipe *p;

  p = 0;
  *f0 = *f1 = 0;
80102e22:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80102e28:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  if((*f0 = filealloc()) == 0 || (*f1 = filealloc()) == 0)
80102e2e:	e8 31 de ff ff       	call   80100c64 <filealloc>
80102e33:	89 03                	mov    %eax,(%ebx)
80102e35:	85 c0                	test   %eax,%eax
80102e37:	0f 84 88 00 00 00    	je     80102ec5 <pipealloc+0xb6>
80102e3d:	e8 22 de ff ff       	call   80100c64 <filealloc>
80102e42:	89 06                	mov    %eax,(%esi)
80102e44:	85 c0                	test   %eax,%eax
80102e46:	74 7d                	je     80102ec5 <pipealloc+0xb6>
    goto bad;
  if((p = (struct pipe*)kalloc()) == 0)
80102e48:	e8 20 f3 ff ff       	call   8010216d <kalloc>
80102e4d:	89 c7                	mov    %eax,%edi
80102e4f:	85 c0                	test   %eax,%eax
80102e51:	74 72                	je     80102ec5 <pipealloc+0xb6>
    goto bad;
  p->readopen = 1;
80102e53:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
80102e5a:	00 00 00 
  p->writeopen = 1;
80102e5d:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
80102e64:	00 00 00 
  p->nwrite = 0;
80102e67:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
80102e6e:	00 00 00 
  p->nread = 0;
80102e71:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
80102e78:	00 00 00 
  initlock(&p->lock, "pipe");
80102e7b:	83 ec 08             	sub    $0x8,%esp
80102e7e:	68 3b 6c 10 80       	push   $0x80106c3b
80102e83:	50                   	push   %eax
80102e84:	e8 fc 0c 00 00       	call   80103b85 <initlock>
  (*f0)->type = FD_PIPE;
80102e89:	8b 03                	mov    (%ebx),%eax
80102e8b:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f0)->readable = 1;
80102e91:	8b 03                	mov    (%ebx),%eax
80102e93:	c6 40 08 01          	movb   $0x1,0x8(%eax)
  (*f0)->writable = 0;
80102e97:	8b 03                	mov    (%ebx),%eax
80102e99:	c6 40 09 00          	movb   $0x0,0x9(%eax)
  (*f0)->pipe = p;
80102e9d:	8b 03                	mov    (%ebx),%eax
80102e9f:	89 78 0c             	mov    %edi,0xc(%eax)
  (*f1)->type = FD_PIPE;
80102ea2:	8b 06                	mov    (%esi),%eax
80102ea4:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f1)->readable = 0;
80102eaa:	8b 06                	mov    (%esi),%eax
80102eac:	c6 40 08 00          	movb   $0x0,0x8(%eax)
  (*f1)->writable = 1;
80102eb0:	8b 06                	mov    (%esi),%eax
80102eb2:	c6 40 09 01          	movb   $0x1,0x9(%eax)
  (*f1)->pipe = p;
80102eb6:	8b 06                	mov    (%esi),%eax
80102eb8:	89 78 0c             	mov    %edi,0xc(%eax)
  return 0;
80102ebb:	83 c4 10             	add    $0x10,%esp
80102ebe:	b8 00 00 00 00       	mov    $0x0,%eax
80102ec3:	eb 29                	jmp    80102eee <pipealloc+0xdf>

//PAGEBREAK: 20
 bad:
  if(p)
    kfree((char*)p);
  if(*f0)
80102ec5:	8b 03                	mov    (%ebx),%eax
80102ec7:	85 c0                	test   %eax,%eax
80102ec9:	74 0c                	je     80102ed7 <pipealloc+0xc8>
    fileclose(*f0);
80102ecb:	83 ec 0c             	sub    $0xc,%esp
80102ece:	50                   	push   %eax
80102ecf:	e8 3e de ff ff       	call   80100d12 <fileclose>
80102ed4:	83 c4 10             	add    $0x10,%esp
  if(*f1)
80102ed7:	8b 06                	mov    (%esi),%eax
80102ed9:	85 c0                	test   %eax,%eax
80102edb:	74 19                	je     80102ef6 <pipealloc+0xe7>
    fileclose(*f1);
80102edd:	83 ec 0c             	sub    $0xc,%esp
80102ee0:	50                   	push   %eax
80102ee1:	e8 2c de ff ff       	call   80100d12 <fileclose>
80102ee6:	83 c4 10             	add    $0x10,%esp
  return -1;
80102ee9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80102eee:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102ef1:	5b                   	pop    %ebx
80102ef2:	5e                   	pop    %esi
80102ef3:	5f                   	pop    %edi
80102ef4:	5d                   	pop    %ebp
80102ef5:	c3                   	ret    
  return -1;
80102ef6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102efb:	eb f1                	jmp    80102eee <pipealloc+0xdf>

80102efd <pipeclose>:

void
pipeclose(struct pipe *p, int writable)
{
80102efd:	f3 0f 1e fb          	endbr32 
80102f01:	55                   	push   %ebp
80102f02:	89 e5                	mov    %esp,%ebp
80102f04:	53                   	push   %ebx
80102f05:	83 ec 10             	sub    $0x10,%esp
80102f08:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&p->lock);
80102f0b:	53                   	push   %ebx
80102f0c:	e8 c4 0d 00 00       	call   80103cd5 <acquire>
  if(writable){
80102f11:	83 c4 10             	add    $0x10,%esp
80102f14:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
80102f18:	74 3f                	je     80102f59 <pipeclose+0x5c>
    p->writeopen = 0;
80102f1a:	c7 83 40 02 00 00 00 	movl   $0x0,0x240(%ebx)
80102f21:	00 00 00 
    wakeup(&p->nread);
80102f24:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102f2a:	83 ec 0c             	sub    $0xc,%esp
80102f2d:	50                   	push   %eax
80102f2e:	e8 dc 09 00 00       	call   8010390f <wakeup>
80102f33:	83 c4 10             	add    $0x10,%esp
  } else {
    p->readopen = 0;
    wakeup(&p->nwrite);
  }
  if(p->readopen == 0 && p->writeopen == 0){
80102f36:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
80102f3d:	75 09                	jne    80102f48 <pipeclose+0x4b>
80102f3f:	83 bb 40 02 00 00 00 	cmpl   $0x0,0x240(%ebx)
80102f46:	74 2f                	je     80102f77 <pipeclose+0x7a>
    release(&p->lock);
    kfree((char*)p);
  } else
    release(&p->lock);
80102f48:	83 ec 0c             	sub    $0xc,%esp
80102f4b:	53                   	push   %ebx
80102f4c:	e8 ed 0d 00 00       	call   80103d3e <release>
80102f51:	83 c4 10             	add    $0x10,%esp
}
80102f54:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102f57:	c9                   	leave  
80102f58:	c3                   	ret    
    p->readopen = 0;
80102f59:	c7 83 3c 02 00 00 00 	movl   $0x0,0x23c(%ebx)
80102f60:	00 00 00 
    wakeup(&p->nwrite);
80102f63:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102f69:	83 ec 0c             	sub    $0xc,%esp
80102f6c:	50                   	push   %eax
80102f6d:	e8 9d 09 00 00       	call   8010390f <wakeup>
80102f72:	83 c4 10             	add    $0x10,%esp
80102f75:	eb bf                	jmp    80102f36 <pipeclose+0x39>
    release(&p->lock);
80102f77:	83 ec 0c             	sub    $0xc,%esp
80102f7a:	53                   	push   %ebx
80102f7b:	e8 be 0d 00 00       	call   80103d3e <release>
    kfree((char*)p);
80102f80:	89 1c 24             	mov    %ebx,(%esp)
80102f83:	e8 be f0 ff ff       	call   80102046 <kfree>
80102f88:	83 c4 10             	add    $0x10,%esp
80102f8b:	eb c7                	jmp    80102f54 <pipeclose+0x57>

80102f8d <pipewrite>:

//PAGEBREAK: 40
int
pipewrite(struct pipe *p, char *addr, int n)
{
80102f8d:	f3 0f 1e fb          	endbr32 
80102f91:	55                   	push   %ebp
80102f92:	89 e5                	mov    %esp,%ebp
80102f94:	57                   	push   %edi
80102f95:	56                   	push   %esi
80102f96:	53                   	push   %ebx
80102f97:	83 ec 18             	sub    $0x18,%esp
80102f9a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int i;

  acquire(&p->lock);
80102f9d:	89 de                	mov    %ebx,%esi
80102f9f:	53                   	push   %ebx
80102fa0:	e8 30 0d 00 00       	call   80103cd5 <acquire>
  for(i = 0; i < n; i++){
80102fa5:	83 c4 10             	add    $0x10,%esp
80102fa8:	bf 00 00 00 00       	mov    $0x0,%edi
80102fad:	3b 7d 10             	cmp    0x10(%ebp),%edi
80102fb0:	7c 41                	jl     80102ff3 <pipewrite+0x66>
      wakeup(&p->nread);
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
    }
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
  }
  wakeup(&p->nread);  //DOC: pipewrite-wakeup1
80102fb2:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102fb8:	83 ec 0c             	sub    $0xc,%esp
80102fbb:	50                   	push   %eax
80102fbc:	e8 4e 09 00 00       	call   8010390f <wakeup>
  release(&p->lock);
80102fc1:	89 1c 24             	mov    %ebx,(%esp)
80102fc4:	e8 75 0d 00 00       	call   80103d3e <release>
  return n;
80102fc9:	83 c4 10             	add    $0x10,%esp
80102fcc:	8b 45 10             	mov    0x10(%ebp),%eax
80102fcf:	eb 5c                	jmp    8010302d <pipewrite+0xa0>
      wakeup(&p->nread);
80102fd1:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102fd7:	83 ec 0c             	sub    $0xc,%esp
80102fda:	50                   	push   %eax
80102fdb:	e8 2f 09 00 00       	call   8010390f <wakeup>
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
80102fe0:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102fe6:	83 c4 08             	add    $0x8,%esp
80102fe9:	56                   	push   %esi
80102fea:	50                   	push   %eax
80102feb:	e8 b2 07 00 00       	call   801037a2 <sleep>
80102ff0:	83 c4 10             	add    $0x10,%esp
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
80102ff3:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
80102ff9:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80102fff:	05 00 02 00 00       	add    $0x200,%eax
80103004:	39 c2                	cmp    %eax,%edx
80103006:	75 2d                	jne    80103035 <pipewrite+0xa8>
      if(p->readopen == 0 || myproc()->killed){
80103008:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
8010300f:	74 0b                	je     8010301c <pipewrite+0x8f>
80103011:	e8 ca 02 00 00       	call   801032e0 <myproc>
80103016:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
8010301a:	74 b5                	je     80102fd1 <pipewrite+0x44>
        release(&p->lock);
8010301c:	83 ec 0c             	sub    $0xc,%esp
8010301f:	53                   	push   %ebx
80103020:	e8 19 0d 00 00       	call   80103d3e <release>
        return -1;
80103025:	83 c4 10             	add    $0x10,%esp
80103028:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010302d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103030:	5b                   	pop    %ebx
80103031:	5e                   	pop    %esi
80103032:	5f                   	pop    %edi
80103033:	5d                   	pop    %ebp
80103034:	c3                   	ret    
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
80103035:	8d 42 01             	lea    0x1(%edx),%eax
80103038:	89 83 38 02 00 00    	mov    %eax,0x238(%ebx)
8010303e:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
80103044:	8b 45 0c             	mov    0xc(%ebp),%eax
80103047:	0f b6 04 38          	movzbl (%eax,%edi,1),%eax
8010304b:	88 44 13 34          	mov    %al,0x34(%ebx,%edx,1)
  for(i = 0; i < n; i++){
8010304f:	83 c7 01             	add    $0x1,%edi
80103052:	e9 56 ff ff ff       	jmp    80102fad <pipewrite+0x20>

80103057 <piperead>:

int
piperead(struct pipe *p, char *addr, int n)
{
80103057:	f3 0f 1e fb          	endbr32 
8010305b:	55                   	push   %ebp
8010305c:	89 e5                	mov    %esp,%ebp
8010305e:	57                   	push   %edi
8010305f:	56                   	push   %esi
80103060:	53                   	push   %ebx
80103061:	83 ec 18             	sub    $0x18,%esp
80103064:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int i;

  acquire(&p->lock);
80103067:	89 df                	mov    %ebx,%edi
80103069:	53                   	push   %ebx
8010306a:	e8 66 0c 00 00       	call   80103cd5 <acquire>
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
8010306f:	83 c4 10             	add    $0x10,%esp
80103072:	eb 13                	jmp    80103087 <piperead+0x30>
    if(myproc()->killed){
      release(&p->lock);
      return -1;
    }
    sleep(&p->nread, &p->lock); //DOC: piperead-sleep
80103074:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
8010307a:	83 ec 08             	sub    $0x8,%esp
8010307d:	57                   	push   %edi
8010307e:	50                   	push   %eax
8010307f:	e8 1e 07 00 00       	call   801037a2 <sleep>
80103084:	83 c4 10             	add    $0x10,%esp
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
80103087:	8b 83 38 02 00 00    	mov    0x238(%ebx),%eax
8010308d:	39 83 34 02 00 00    	cmp    %eax,0x234(%ebx)
80103093:	75 28                	jne    801030bd <piperead+0x66>
80103095:	8b b3 40 02 00 00    	mov    0x240(%ebx),%esi
8010309b:	85 f6                	test   %esi,%esi
8010309d:	74 23                	je     801030c2 <piperead+0x6b>
    if(myproc()->killed){
8010309f:	e8 3c 02 00 00       	call   801032e0 <myproc>
801030a4:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801030a8:	74 ca                	je     80103074 <piperead+0x1d>
      release(&p->lock);
801030aa:	83 ec 0c             	sub    $0xc,%esp
801030ad:	53                   	push   %ebx
801030ae:	e8 8b 0c 00 00       	call   80103d3e <release>
      return -1;
801030b3:	83 c4 10             	add    $0x10,%esp
801030b6:	be ff ff ff ff       	mov    $0xffffffff,%esi
801030bb:	eb 50                	jmp    8010310d <piperead+0xb6>
801030bd:	be 00 00 00 00       	mov    $0x0,%esi
  }
  for(i = 0; i < n; i++){  //DOC: piperead-copy
801030c2:	3b 75 10             	cmp    0x10(%ebp),%esi
801030c5:	7d 2c                	jge    801030f3 <piperead+0x9c>
    if(p->nread == p->nwrite)
801030c7:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
801030cd:	3b 83 38 02 00 00    	cmp    0x238(%ebx),%eax
801030d3:	74 1e                	je     801030f3 <piperead+0x9c>
      break;
    addr[i] = p->data[p->nread++ % PIPESIZE];
801030d5:	8d 50 01             	lea    0x1(%eax),%edx
801030d8:	89 93 34 02 00 00    	mov    %edx,0x234(%ebx)
801030de:	25 ff 01 00 00       	and    $0x1ff,%eax
801030e3:	0f b6 44 03 34       	movzbl 0x34(%ebx,%eax,1),%eax
801030e8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
801030eb:	88 04 31             	mov    %al,(%ecx,%esi,1)
  for(i = 0; i < n; i++){  //DOC: piperead-copy
801030ee:	83 c6 01             	add    $0x1,%esi
801030f1:	eb cf                	jmp    801030c2 <piperead+0x6b>
  }
  wakeup(&p->nwrite);  //DOC: piperead-wakeup
801030f3:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
801030f9:	83 ec 0c             	sub    $0xc,%esp
801030fc:	50                   	push   %eax
801030fd:	e8 0d 08 00 00       	call   8010390f <wakeup>
  release(&p->lock);
80103102:	89 1c 24             	mov    %ebx,(%esp)
80103105:	e8 34 0c 00 00       	call   80103d3e <release>
  return i;
8010310a:	83 c4 10             	add    $0x10,%esp
}
8010310d:	89 f0                	mov    %esi,%eax
8010310f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103112:	5b                   	pop    %ebx
80103113:	5e                   	pop    %esi
80103114:	5f                   	pop    %edi
80103115:	5d                   	pop    %ebp
80103116:	c3                   	ret    

80103117 <wakeup1>:
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103117:	ba 54 2d 11 80       	mov    $0x80112d54,%edx
8010311c:	eb 0a                	jmp    80103128 <wakeup1+0x11>
    if(p->state == SLEEPING && p->chan == chan)
      p->state = RUNNABLE;
8010311e:	c7 42 0c 03 00 00 00 	movl   $0x3,0xc(%edx)
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103125:	83 c2 7c             	add    $0x7c,%edx
80103128:	81 fa 54 4c 11 80    	cmp    $0x80114c54,%edx
8010312e:	73 0d                	jae    8010313d <wakeup1+0x26>
    if(p->state == SLEEPING && p->chan == chan)
80103130:	83 7a 0c 02          	cmpl   $0x2,0xc(%edx)
80103134:	75 ef                	jne    80103125 <wakeup1+0xe>
80103136:	39 42 20             	cmp    %eax,0x20(%edx)
80103139:	75 ea                	jne    80103125 <wakeup1+0xe>
8010313b:	eb e1                	jmp    8010311e <wakeup1+0x7>
}
8010313d:	c3                   	ret    

8010313e <allocproc>:
{
8010313e:	55                   	push   %ebp
8010313f:	89 e5                	mov    %esp,%ebp
80103141:	53                   	push   %ebx
80103142:	83 ec 10             	sub    $0x10,%esp
  acquire(&ptable.lock);
80103145:	68 20 2d 11 80       	push   $0x80112d20
8010314a:	e8 86 0b 00 00       	call   80103cd5 <acquire>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
8010314f:	83 c4 10             	add    $0x10,%esp
80103152:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80103157:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
8010315d:	73 7b                	jae    801031da <allocproc+0x9c>
    if(p->state == UNUSED)
8010315f:	83 7b 0c 00          	cmpl   $0x0,0xc(%ebx)
80103163:	74 05                	je     8010316a <allocproc+0x2c>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103165:	83 c3 7c             	add    $0x7c,%ebx
80103168:	eb ed                	jmp    80103157 <allocproc+0x19>
  p->state = EMBRYO;
8010316a:	c7 43 0c 01 00 00 00 	movl   $0x1,0xc(%ebx)
  p->pid = nextpid++;
80103171:	a1 04 a0 10 80       	mov    0x8010a004,%eax
80103176:	8d 50 01             	lea    0x1(%eax),%edx
80103179:	89 15 04 a0 10 80    	mov    %edx,0x8010a004
8010317f:	89 43 10             	mov    %eax,0x10(%ebx)
  release(&ptable.lock);
80103182:	83 ec 0c             	sub    $0xc,%esp
80103185:	68 20 2d 11 80       	push   $0x80112d20
8010318a:	e8 af 0b 00 00       	call   80103d3e <release>
  if((p->kstack = kalloc()) == 0){
8010318f:	e8 d9 ef ff ff       	call   8010216d <kalloc>
80103194:	89 43 08             	mov    %eax,0x8(%ebx)
80103197:	83 c4 10             	add    $0x10,%esp
8010319a:	85 c0                	test   %eax,%eax
8010319c:	74 53                	je     801031f1 <allocproc+0xb3>
  sp -= sizeof *p->tf;
8010319e:	8d 90 b4 0f 00 00    	lea    0xfb4(%eax),%edx
  p->tf = (struct trapframe*)sp;
801031a4:	89 53 18             	mov    %edx,0x18(%ebx)
  *(uint*)sp = (uint)trapret;
801031a7:	c7 80 b0 0f 00 00 6f 	movl   $0x80104f6f,0xfb0(%eax)
801031ae:	4f 10 80 
  sp -= sizeof *p->context;
801031b1:	05 9c 0f 00 00       	add    $0xf9c,%eax
  p->context = (struct context*)sp;
801031b6:	89 43 1c             	mov    %eax,0x1c(%ebx)
  memset(p->context, 0, sizeof *p->context);
801031b9:	83 ec 04             	sub    $0x4,%esp
801031bc:	6a 14                	push   $0x14
801031be:	6a 00                	push   $0x0
801031c0:	50                   	push   %eax
801031c1:	e8 c3 0b 00 00       	call   80103d89 <memset>
  p->context->eip = (uint)forkret;
801031c6:	8b 43 1c             	mov    0x1c(%ebx),%eax
801031c9:	c7 40 10 fc 31 10 80 	movl   $0x801031fc,0x10(%eax)
  return p;
801031d0:	83 c4 10             	add    $0x10,%esp
}
801031d3:	89 d8                	mov    %ebx,%eax
801031d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801031d8:	c9                   	leave  
801031d9:	c3                   	ret    
  release(&ptable.lock);
801031da:	83 ec 0c             	sub    $0xc,%esp
801031dd:	68 20 2d 11 80       	push   $0x80112d20
801031e2:	e8 57 0b 00 00       	call   80103d3e <release>
  return 0;
801031e7:	83 c4 10             	add    $0x10,%esp
801031ea:	bb 00 00 00 00       	mov    $0x0,%ebx
801031ef:	eb e2                	jmp    801031d3 <allocproc+0x95>
    p->state = UNUSED;
801031f1:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return 0;
801031f8:	89 c3                	mov    %eax,%ebx
801031fa:	eb d7                	jmp    801031d3 <allocproc+0x95>

801031fc <forkret>:
{
801031fc:	f3 0f 1e fb          	endbr32 
80103200:	55                   	push   %ebp
80103201:	89 e5                	mov    %esp,%ebp
80103203:	83 ec 14             	sub    $0x14,%esp
  release(&ptable.lock);
80103206:	68 20 2d 11 80       	push   $0x80112d20
8010320b:	e8 2e 0b 00 00       	call   80103d3e <release>
  if (first) {
80103210:	83 c4 10             	add    $0x10,%esp
80103213:	83 3d 00 a0 10 80 00 	cmpl   $0x0,0x8010a000
8010321a:	75 02                	jne    8010321e <forkret+0x22>
}
8010321c:	c9                   	leave  
8010321d:	c3                   	ret    
    first = 0;
8010321e:	c7 05 00 a0 10 80 00 	movl   $0x0,0x8010a000
80103225:	00 00 00 
    iinit(ROOTDEV);
80103228:	83 ec 0c             	sub    $0xc,%esp
8010322b:	6a 01                	push   $0x1
8010322d:	e8 0e e1 ff ff       	call   80101340 <iinit>
    initlog(ROOTDEV);
80103232:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80103239:	e8 df f5 ff ff       	call   8010281d <initlog>
8010323e:	83 c4 10             	add    $0x10,%esp
}
80103241:	eb d9                	jmp    8010321c <forkret+0x20>

80103243 <pinit>:
{
80103243:	f3 0f 1e fb          	endbr32 
80103247:	55                   	push   %ebp
80103248:	89 e5                	mov    %esp,%ebp
8010324a:	83 ec 10             	sub    $0x10,%esp
  initlock(&ptable.lock, "ptable");
8010324d:	68 40 6c 10 80       	push   $0x80106c40
80103252:	68 20 2d 11 80       	push   $0x80112d20
80103257:	e8 29 09 00 00       	call   80103b85 <initlock>
}
8010325c:	83 c4 10             	add    $0x10,%esp
8010325f:	c9                   	leave  
80103260:	c3                   	ret    

80103261 <mycpu>:
{
80103261:	f3 0f 1e fb          	endbr32 
80103265:	55                   	push   %ebp
80103266:	89 e5                	mov    %esp,%ebp
80103268:	83 ec 08             	sub    $0x8,%esp
  asm volatile("pushfl; popl %0" : "=r" (eflags));
8010326b:	9c                   	pushf  
8010326c:	58                   	pop    %eax
  if(readeflags()&FL_IF)
8010326d:	f6 c4 02             	test   $0x2,%ah
80103270:	75 28                	jne    8010329a <mycpu+0x39>
  apicid = lapicid();
80103272:	e8 bd f1 ff ff       	call   80102434 <lapicid>
  for (i = 0; i < ncpu; ++i) {
80103277:	ba 00 00 00 00       	mov    $0x0,%edx
8010327c:	39 15 00 2d 11 80    	cmp    %edx,0x80112d00
80103282:	7e 30                	jle    801032b4 <mycpu+0x53>
    if (cpus[i].apicid == apicid)
80103284:	69 ca b0 00 00 00    	imul   $0xb0,%edx,%ecx
8010328a:	0f b6 89 80 27 11 80 	movzbl -0x7feed880(%ecx),%ecx
80103291:	39 c1                	cmp    %eax,%ecx
80103293:	74 12                	je     801032a7 <mycpu+0x46>
  for (i = 0; i < ncpu; ++i) {
80103295:	83 c2 01             	add    $0x1,%edx
80103298:	eb e2                	jmp    8010327c <mycpu+0x1b>
    panic("mycpu called with interrupts enabled\n");
8010329a:	83 ec 0c             	sub    $0xc,%esp
8010329d:	68 24 6d 10 80       	push   $0x80106d24
801032a2:	e8 b5 d0 ff ff       	call   8010035c <panic>
      return &cpus[i];
801032a7:	69 c2 b0 00 00 00    	imul   $0xb0,%edx,%eax
801032ad:	05 80 27 11 80       	add    $0x80112780,%eax
}
801032b2:	c9                   	leave  
801032b3:	c3                   	ret    
  panic("unknown apicid\n");
801032b4:	83 ec 0c             	sub    $0xc,%esp
801032b7:	68 47 6c 10 80       	push   $0x80106c47
801032bc:	e8 9b d0 ff ff       	call   8010035c <panic>

801032c1 <cpuid>:
cpuid() {
801032c1:	f3 0f 1e fb          	endbr32 
801032c5:	55                   	push   %ebp
801032c6:	89 e5                	mov    %esp,%ebp
801032c8:	83 ec 08             	sub    $0x8,%esp
  return mycpu()-cpus;
801032cb:	e8 91 ff ff ff       	call   80103261 <mycpu>
801032d0:	2d 80 27 11 80       	sub    $0x80112780,%eax
801032d5:	c1 f8 04             	sar    $0x4,%eax
801032d8:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
}
801032de:	c9                   	leave  
801032df:	c3                   	ret    

801032e0 <myproc>:
myproc(void) {
801032e0:	f3 0f 1e fb          	endbr32 
801032e4:	55                   	push   %ebp
801032e5:	89 e5                	mov    %esp,%ebp
801032e7:	53                   	push   %ebx
801032e8:	83 ec 04             	sub    $0x4,%esp
  pushcli();
801032eb:	e8 fc 08 00 00       	call   80103bec <pushcli>
  c = mycpu();
801032f0:	e8 6c ff ff ff       	call   80103261 <mycpu>
  p = c->proc;
801032f5:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
  popcli();
801032fb:	e8 2d 09 00 00       	call   80103c2d <popcli>
}
80103300:	89 d8                	mov    %ebx,%eax
80103302:	83 c4 04             	add    $0x4,%esp
80103305:	5b                   	pop    %ebx
80103306:	5d                   	pop    %ebp
80103307:	c3                   	ret    

80103308 <userinit>:
{
80103308:	f3 0f 1e fb          	endbr32 
8010330c:	55                   	push   %ebp
8010330d:	89 e5                	mov    %esp,%ebp
8010330f:	53                   	push   %ebx
80103310:	83 ec 04             	sub    $0x4,%esp
  p = allocproc();
80103313:	e8 26 fe ff ff       	call   8010313e <allocproc>
80103318:	89 c3                	mov    %eax,%ebx
  initproc = p;
8010331a:	a3 b8 a5 10 80       	mov    %eax,0x8010a5b8
  if((p->pgdir = setupkvm()) == 0)
8010331f:	e8 5c 31 00 00       	call   80106480 <setupkvm>
80103324:	89 43 04             	mov    %eax,0x4(%ebx)
80103327:	85 c0                	test   %eax,%eax
80103329:	0f 84 b8 00 00 00    	je     801033e7 <userinit+0xdf>
  inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
8010332f:	83 ec 04             	sub    $0x4,%esp
80103332:	68 2c 00 00 00       	push   $0x2c
80103337:	68 60 a4 10 80       	push   $0x8010a460
8010333c:	50                   	push   %eax
8010333d:	e8 3b 2e 00 00       	call   8010617d <inituvm>
  p->sz = PGSIZE;
80103342:	c7 03 00 10 00 00    	movl   $0x1000,(%ebx)
  memset(p->tf, 0, sizeof(*p->tf));
80103348:	8b 43 18             	mov    0x18(%ebx),%eax
8010334b:	83 c4 0c             	add    $0xc,%esp
8010334e:	6a 4c                	push   $0x4c
80103350:	6a 00                	push   $0x0
80103352:	50                   	push   %eax
80103353:	e8 31 0a 00 00       	call   80103d89 <memset>
  p->tf->cs = (SEG_UCODE << 3) | DPL_USER;
80103358:	8b 43 18             	mov    0x18(%ebx),%eax
8010335b:	66 c7 40 3c 1b 00    	movw   $0x1b,0x3c(%eax)
  p->tf->ds = (SEG_UDATA << 3) | DPL_USER;
80103361:	8b 43 18             	mov    0x18(%ebx),%eax
80103364:	66 c7 40 2c 23 00    	movw   $0x23,0x2c(%eax)
  p->tf->es = p->tf->ds;
8010336a:	8b 43 18             	mov    0x18(%ebx),%eax
8010336d:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103371:	66 89 50 28          	mov    %dx,0x28(%eax)
  p->tf->ss = p->tf->ds;
80103375:	8b 43 18             	mov    0x18(%ebx),%eax
80103378:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
8010337c:	66 89 50 48          	mov    %dx,0x48(%eax)
  p->tf->eflags = FL_IF;
80103380:	8b 43 18             	mov    0x18(%ebx),%eax
80103383:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
  p->tf->esp = PGSIZE;
8010338a:	8b 43 18             	mov    0x18(%ebx),%eax
8010338d:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
  p->tf->eip = 0;  // beginning of initcode.S
80103394:	8b 43 18             	mov    0x18(%ebx),%eax
80103397:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
  safestrcpy(p->name, "initcode", sizeof(p->name));
8010339e:	8d 43 6c             	lea    0x6c(%ebx),%eax
801033a1:	83 c4 0c             	add    $0xc,%esp
801033a4:	6a 10                	push   $0x10
801033a6:	68 70 6c 10 80       	push   $0x80106c70
801033ab:	50                   	push   %eax
801033ac:	e8 58 0b 00 00       	call   80103f09 <safestrcpy>
  p->cwd = namei("/");
801033b1:	c7 04 24 79 6c 10 80 	movl   $0x80106c79,(%esp)
801033b8:	e8 ad e8 ff ff       	call   80101c6a <namei>
801033bd:	89 43 68             	mov    %eax,0x68(%ebx)
  acquire(&ptable.lock);
801033c0:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801033c7:	e8 09 09 00 00       	call   80103cd5 <acquire>
  p->state = RUNNABLE;
801033cc:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)
  release(&ptable.lock);
801033d3:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801033da:	e8 5f 09 00 00       	call   80103d3e <release>
}
801033df:	83 c4 10             	add    $0x10,%esp
801033e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801033e5:	c9                   	leave  
801033e6:	c3                   	ret    
    panic("userinit: out of memory?");
801033e7:	83 ec 0c             	sub    $0xc,%esp
801033ea:	68 57 6c 10 80       	push   $0x80106c57
801033ef:	e8 68 cf ff ff       	call   8010035c <panic>

801033f4 <growproc>:
{
801033f4:	f3 0f 1e fb          	endbr32 
801033f8:	55                   	push   %ebp
801033f9:	89 e5                	mov    %esp,%ebp
801033fb:	56                   	push   %esi
801033fc:	53                   	push   %ebx
801033fd:	8b 75 08             	mov    0x8(%ebp),%esi
  struct proc *curproc = myproc();
80103400:	e8 db fe ff ff       	call   801032e0 <myproc>
80103405:	89 c3                	mov    %eax,%ebx
  sz = curproc->sz;
80103407:	8b 00                	mov    (%eax),%eax
  if(n > 0){
80103409:	85 f6                	test   %esi,%esi
8010340b:	7f 1b                	jg     80103428 <growproc+0x34>
  } else if(n < 0){
8010340d:	78 36                	js     80103445 <growproc+0x51>
  curproc->sz = sz;
8010340f:	89 03                	mov    %eax,(%ebx)
  lcr3(V2P(curproc->pgdir));  // Invalidate TLB.
80103411:	8b 43 04             	mov    0x4(%ebx),%eax
80103414:	05 00 00 00 80       	add    $0x80000000,%eax
}

static inline void
lcr3(uint val)
{
  asm volatile("movl %0,%%cr3" : : "r" (val));
80103419:	0f 22 d8             	mov    %eax,%cr3
  return 0;
8010341c:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103421:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103424:	5b                   	pop    %ebx
80103425:	5e                   	pop    %esi
80103426:	5d                   	pop    %ebp
80103427:	c3                   	ret    
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0)
80103428:	83 ec 04             	sub    $0x4,%esp
8010342b:	01 c6                	add    %eax,%esi
8010342d:	56                   	push   %esi
8010342e:	50                   	push   %eax
8010342f:	ff 73 04             	pushl  0x4(%ebx)
80103432:	e8 e8 2e 00 00       	call   8010631f <allocuvm>
80103437:	83 c4 10             	add    $0x10,%esp
8010343a:	85 c0                	test   %eax,%eax
8010343c:	75 d1                	jne    8010340f <growproc+0x1b>
      return -1;
8010343e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103443:	eb dc                	jmp    80103421 <growproc+0x2d>
    if((sz = deallocuvm(curproc->pgdir, sz, sz + n)) == 0)
80103445:	83 ec 04             	sub    $0x4,%esp
80103448:	01 c6                	add    %eax,%esi
8010344a:	56                   	push   %esi
8010344b:	50                   	push   %eax
8010344c:	ff 73 04             	pushl  0x4(%ebx)
8010344f:	e8 35 2e 00 00       	call   80106289 <deallocuvm>
80103454:	83 c4 10             	add    $0x10,%esp
80103457:	85 c0                	test   %eax,%eax
80103459:	75 b4                	jne    8010340f <growproc+0x1b>
      return -1;
8010345b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103460:	eb bf                	jmp    80103421 <growproc+0x2d>

80103462 <fork>:
{
80103462:	f3 0f 1e fb          	endbr32 
80103466:	55                   	push   %ebp
80103467:	89 e5                	mov    %esp,%ebp
80103469:	57                   	push   %edi
8010346a:	56                   	push   %esi
8010346b:	53                   	push   %ebx
8010346c:	83 ec 1c             	sub    $0x1c,%esp
  struct proc *curproc = myproc();
8010346f:	e8 6c fe ff ff       	call   801032e0 <myproc>
80103474:	89 c3                	mov    %eax,%ebx
  if((np = allocproc()) == 0){
80103476:	e8 c3 fc ff ff       	call   8010313e <allocproc>
8010347b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010347e:	85 c0                	test   %eax,%eax
80103480:	0f 84 e0 00 00 00    	je     80103566 <fork+0x104>
80103486:	89 c7                	mov    %eax,%edi
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
80103488:	83 ec 08             	sub    $0x8,%esp
8010348b:	ff 33                	pushl  (%ebx)
8010348d:	ff 73 04             	pushl  0x4(%ebx)
80103490:	e8 a8 30 00 00       	call   8010653d <copyuvm>
80103495:	89 47 04             	mov    %eax,0x4(%edi)
80103498:	83 c4 10             	add    $0x10,%esp
8010349b:	85 c0                	test   %eax,%eax
8010349d:	74 2a                	je     801034c9 <fork+0x67>
  np->sz = curproc->sz;
8010349f:	8b 03                	mov    (%ebx),%eax
801034a1:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801034a4:	89 01                	mov    %eax,(%ecx)
  np->parent = curproc;
801034a6:	89 c8                	mov    %ecx,%eax
801034a8:	89 59 14             	mov    %ebx,0x14(%ecx)
  *np->tf = *curproc->tf;
801034ab:	8b 73 18             	mov    0x18(%ebx),%esi
801034ae:	8b 79 18             	mov    0x18(%ecx),%edi
801034b1:	b9 13 00 00 00       	mov    $0x13,%ecx
801034b6:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  np->tf->eax = 0;
801034b8:	8b 40 18             	mov    0x18(%eax),%eax
801034bb:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
  for(i = 0; i < NOFILE; i++)
801034c2:	be 00 00 00 00       	mov    $0x0,%esi
801034c7:	eb 3c                	jmp    80103505 <fork+0xa3>
    kfree(np->kstack);
801034c9:	83 ec 0c             	sub    $0xc,%esp
801034cc:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
801034cf:	ff 73 08             	pushl  0x8(%ebx)
801034d2:	e8 6f eb ff ff       	call   80102046 <kfree>
    np->kstack = 0;
801034d7:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
    np->state = UNUSED;
801034de:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return -1;
801034e5:	83 c4 10             	add    $0x10,%esp
801034e8:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801034ed:	eb 6d                	jmp    8010355c <fork+0xfa>
      np->ofile[i] = filedup(curproc->ofile[i]);
801034ef:	83 ec 0c             	sub    $0xc,%esp
801034f2:	50                   	push   %eax
801034f3:	e8 d1 d7 ff ff       	call   80100cc9 <filedup>
801034f8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801034fb:	89 44 b2 28          	mov    %eax,0x28(%edx,%esi,4)
801034ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < NOFILE; i++)
80103502:	83 c6 01             	add    $0x1,%esi
80103505:	83 fe 0f             	cmp    $0xf,%esi
80103508:	7f 0a                	jg     80103514 <fork+0xb2>
    if(curproc->ofile[i])
8010350a:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
8010350e:	85 c0                	test   %eax,%eax
80103510:	75 dd                	jne    801034ef <fork+0x8d>
80103512:	eb ee                	jmp    80103502 <fork+0xa0>
  np->cwd = idup(curproc->cwd);
80103514:	83 ec 0c             	sub    $0xc,%esp
80103517:	ff 73 68             	pushl  0x68(%ebx)
8010351a:	e8 92 e0 ff ff       	call   801015b1 <idup>
8010351f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80103522:	89 47 68             	mov    %eax,0x68(%edi)
  safestrcpy(np->name, curproc->name, sizeof(curproc->name));
80103525:	83 c3 6c             	add    $0x6c,%ebx
80103528:	8d 47 6c             	lea    0x6c(%edi),%eax
8010352b:	83 c4 0c             	add    $0xc,%esp
8010352e:	6a 10                	push   $0x10
80103530:	53                   	push   %ebx
80103531:	50                   	push   %eax
80103532:	e8 d2 09 00 00       	call   80103f09 <safestrcpy>
  pid = np->pid;
80103537:	8b 5f 10             	mov    0x10(%edi),%ebx
  acquire(&ptable.lock);
8010353a:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103541:	e8 8f 07 00 00       	call   80103cd5 <acquire>
  np->state = RUNNABLE;
80103546:	c7 47 0c 03 00 00 00 	movl   $0x3,0xc(%edi)
  release(&ptable.lock);
8010354d:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103554:	e8 e5 07 00 00       	call   80103d3e <release>
  return pid;
80103559:	83 c4 10             	add    $0x10,%esp
}
8010355c:	89 d8                	mov    %ebx,%eax
8010355e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103561:	5b                   	pop    %ebx
80103562:	5e                   	pop    %esi
80103563:	5f                   	pop    %edi
80103564:	5d                   	pop    %ebp
80103565:	c3                   	ret    
    return -1;
80103566:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
8010356b:	eb ef                	jmp    8010355c <fork+0xfa>

8010356d <scheduler>:
{
8010356d:	f3 0f 1e fb          	endbr32 
80103571:	55                   	push   %ebp
80103572:	89 e5                	mov    %esp,%ebp
80103574:	56                   	push   %esi
80103575:	53                   	push   %ebx
  struct cpu *c = mycpu();
80103576:	e8 e6 fc ff ff       	call   80103261 <mycpu>
8010357b:	89 c6                	mov    %eax,%esi
  c->proc = 0;
8010357d:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
80103584:	00 00 00 
80103587:	eb 5a                	jmp    801035e3 <scheduler+0x76>
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103589:	83 c3 7c             	add    $0x7c,%ebx
8010358c:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
80103592:	73 3f                	jae    801035d3 <scheduler+0x66>
      if(p->state != RUNNABLE)
80103594:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
80103598:	75 ef                	jne    80103589 <scheduler+0x1c>
      c->proc = p;
8010359a:	89 9e ac 00 00 00    	mov    %ebx,0xac(%esi)
      switchuvm(p);
801035a0:	83 ec 0c             	sub    $0xc,%esp
801035a3:	53                   	push   %ebx
801035a4:	e8 b8 2a 00 00       	call   80106061 <switchuvm>
      p->state = RUNNING;
801035a9:	c7 43 0c 04 00 00 00 	movl   $0x4,0xc(%ebx)
      swtch(&(c->scheduler), p->context);
801035b0:	83 c4 08             	add    $0x8,%esp
801035b3:	ff 73 1c             	pushl  0x1c(%ebx)
801035b6:	8d 46 04             	lea    0x4(%esi),%eax
801035b9:	50                   	push   %eax
801035ba:	e8 a7 09 00 00       	call   80103f66 <swtch>
      switchkvm();
801035bf:	e8 8b 2a 00 00       	call   8010604f <switchkvm>
      c->proc = 0;
801035c4:	c7 86 ac 00 00 00 00 	movl   $0x0,0xac(%esi)
801035cb:	00 00 00 
801035ce:	83 c4 10             	add    $0x10,%esp
801035d1:	eb b6                	jmp    80103589 <scheduler+0x1c>
    release(&ptable.lock);
801035d3:	83 ec 0c             	sub    $0xc,%esp
801035d6:	68 20 2d 11 80       	push   $0x80112d20
801035db:	e8 5e 07 00 00       	call   80103d3e <release>
    sti();
801035e0:	83 c4 10             	add    $0x10,%esp
  asm volatile("sti");
801035e3:	fb                   	sti    
    acquire(&ptable.lock);
801035e4:	83 ec 0c             	sub    $0xc,%esp
801035e7:	68 20 2d 11 80       	push   $0x80112d20
801035ec:	e8 e4 06 00 00       	call   80103cd5 <acquire>
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801035f1:	83 c4 10             	add    $0x10,%esp
801035f4:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
801035f9:	eb 91                	jmp    8010358c <scheduler+0x1f>

801035fb <sched>:
{
801035fb:	f3 0f 1e fb          	endbr32 
801035ff:	55                   	push   %ebp
80103600:	89 e5                	mov    %esp,%ebp
80103602:	56                   	push   %esi
80103603:	53                   	push   %ebx
  struct proc *p = myproc();
80103604:	e8 d7 fc ff ff       	call   801032e0 <myproc>
80103609:	89 c3                	mov    %eax,%ebx
  if(!holding(&ptable.lock))
8010360b:	83 ec 0c             	sub    $0xc,%esp
8010360e:	68 20 2d 11 80       	push   $0x80112d20
80103613:	e8 79 06 00 00       	call   80103c91 <holding>
80103618:	83 c4 10             	add    $0x10,%esp
8010361b:	85 c0                	test   %eax,%eax
8010361d:	74 4f                	je     8010366e <sched+0x73>
  if(mycpu()->ncli != 1)
8010361f:	e8 3d fc ff ff       	call   80103261 <mycpu>
80103624:	83 b8 a4 00 00 00 01 	cmpl   $0x1,0xa4(%eax)
8010362b:	75 4e                	jne    8010367b <sched+0x80>
  if(p->state == RUNNING)
8010362d:	83 7b 0c 04          	cmpl   $0x4,0xc(%ebx)
80103631:	74 55                	je     80103688 <sched+0x8d>
  asm volatile("pushfl; popl %0" : "=r" (eflags));
80103633:	9c                   	pushf  
80103634:	58                   	pop    %eax
  if(readeflags()&FL_IF)
80103635:	f6 c4 02             	test   $0x2,%ah
80103638:	75 5b                	jne    80103695 <sched+0x9a>
  intena = mycpu()->intena;
8010363a:	e8 22 fc ff ff       	call   80103261 <mycpu>
8010363f:	8b b0 a8 00 00 00    	mov    0xa8(%eax),%esi
  swtch(&p->context, mycpu()->scheduler);
80103645:	e8 17 fc ff ff       	call   80103261 <mycpu>
8010364a:	83 ec 08             	sub    $0x8,%esp
8010364d:	ff 70 04             	pushl  0x4(%eax)
80103650:	83 c3 1c             	add    $0x1c,%ebx
80103653:	53                   	push   %ebx
80103654:	e8 0d 09 00 00       	call   80103f66 <swtch>
  mycpu()->intena = intena;
80103659:	e8 03 fc ff ff       	call   80103261 <mycpu>
8010365e:	89 b0 a8 00 00 00    	mov    %esi,0xa8(%eax)
}
80103664:	83 c4 10             	add    $0x10,%esp
80103667:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010366a:	5b                   	pop    %ebx
8010366b:	5e                   	pop    %esi
8010366c:	5d                   	pop    %ebp
8010366d:	c3                   	ret    
    panic("sched ptable.lock");
8010366e:	83 ec 0c             	sub    $0xc,%esp
80103671:	68 7b 6c 10 80       	push   $0x80106c7b
80103676:	e8 e1 cc ff ff       	call   8010035c <panic>
    panic("sched locks");
8010367b:	83 ec 0c             	sub    $0xc,%esp
8010367e:	68 8d 6c 10 80       	push   $0x80106c8d
80103683:	e8 d4 cc ff ff       	call   8010035c <panic>
    panic("sched running");
80103688:	83 ec 0c             	sub    $0xc,%esp
8010368b:	68 99 6c 10 80       	push   $0x80106c99
80103690:	e8 c7 cc ff ff       	call   8010035c <panic>
    panic("sched interruptible");
80103695:	83 ec 0c             	sub    $0xc,%esp
80103698:	68 a7 6c 10 80       	push   $0x80106ca7
8010369d:	e8 ba cc ff ff       	call   8010035c <panic>

801036a2 <exit>:
{
801036a2:	f3 0f 1e fb          	endbr32 
801036a6:	55                   	push   %ebp
801036a7:	89 e5                	mov    %esp,%ebp
801036a9:	56                   	push   %esi
801036aa:	53                   	push   %ebx
  struct proc *curproc = myproc();
801036ab:	e8 30 fc ff ff       	call   801032e0 <myproc>
  if(curproc == initproc)
801036b0:	39 05 b8 a5 10 80    	cmp    %eax,0x8010a5b8
801036b6:	74 09                	je     801036c1 <exit+0x1f>
801036b8:	89 c6                	mov    %eax,%esi
  for(fd = 0; fd < NOFILE; fd++){
801036ba:	bb 00 00 00 00       	mov    $0x0,%ebx
801036bf:	eb 24                	jmp    801036e5 <exit+0x43>
    panic("init exiting");
801036c1:	83 ec 0c             	sub    $0xc,%esp
801036c4:	68 bb 6c 10 80       	push   $0x80106cbb
801036c9:	e8 8e cc ff ff       	call   8010035c <panic>
      fileclose(curproc->ofile[fd]);
801036ce:	83 ec 0c             	sub    $0xc,%esp
801036d1:	50                   	push   %eax
801036d2:	e8 3b d6 ff ff       	call   80100d12 <fileclose>
      curproc->ofile[fd] = 0;
801036d7:	c7 44 9e 28 00 00 00 	movl   $0x0,0x28(%esi,%ebx,4)
801036de:	00 
801036df:	83 c4 10             	add    $0x10,%esp
  for(fd = 0; fd < NOFILE; fd++){
801036e2:	83 c3 01             	add    $0x1,%ebx
801036e5:	83 fb 0f             	cmp    $0xf,%ebx
801036e8:	7f 0a                	jg     801036f4 <exit+0x52>
    if(curproc->ofile[fd]){
801036ea:	8b 44 9e 28          	mov    0x28(%esi,%ebx,4),%eax
801036ee:	85 c0                	test   %eax,%eax
801036f0:	75 dc                	jne    801036ce <exit+0x2c>
801036f2:	eb ee                	jmp    801036e2 <exit+0x40>
  begin_op();
801036f4:	e8 71 f1 ff ff       	call   8010286a <begin_op>
  iput(curproc->cwd);
801036f9:	83 ec 0c             	sub    $0xc,%esp
801036fc:	ff 76 68             	pushl  0x68(%esi)
801036ff:	e8 f0 df ff ff       	call   801016f4 <iput>
  end_op();
80103704:	e8 df f1 ff ff       	call   801028e8 <end_op>
  curproc->cwd = 0;
80103709:	c7 46 68 00 00 00 00 	movl   $0x0,0x68(%esi)
  acquire(&ptable.lock);
80103710:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103717:	e8 b9 05 00 00       	call   80103cd5 <acquire>
  wakeup1(curproc->parent);
8010371c:	8b 46 14             	mov    0x14(%esi),%eax
8010371f:	e8 f3 f9 ff ff       	call   80103117 <wakeup1>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103724:	83 c4 10             	add    $0x10,%esp
80103727:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
8010372c:	eb 03                	jmp    80103731 <exit+0x8f>
8010372e:	83 c3 7c             	add    $0x7c,%ebx
80103731:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
80103737:	73 1a                	jae    80103753 <exit+0xb1>
    if(p->parent == curproc){
80103739:	39 73 14             	cmp    %esi,0x14(%ebx)
8010373c:	75 f0                	jne    8010372e <exit+0x8c>
      p->parent = initproc;
8010373e:	a1 b8 a5 10 80       	mov    0x8010a5b8,%eax
80103743:	89 43 14             	mov    %eax,0x14(%ebx)
      if(p->state == ZOMBIE)
80103746:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
8010374a:	75 e2                	jne    8010372e <exit+0x8c>
        wakeup1(initproc);
8010374c:	e8 c6 f9 ff ff       	call   80103117 <wakeup1>
80103751:	eb db                	jmp    8010372e <exit+0x8c>
  curproc->state = ZOMBIE;
80103753:	c7 46 0c 05 00 00 00 	movl   $0x5,0xc(%esi)
  sched();
8010375a:	e8 9c fe ff ff       	call   801035fb <sched>
  panic("zombie exit");
8010375f:	83 ec 0c             	sub    $0xc,%esp
80103762:	68 c8 6c 10 80       	push   $0x80106cc8
80103767:	e8 f0 cb ff ff       	call   8010035c <panic>

8010376c <yield>:
{
8010376c:	f3 0f 1e fb          	endbr32 
80103770:	55                   	push   %ebp
80103771:	89 e5                	mov    %esp,%ebp
80103773:	83 ec 14             	sub    $0x14,%esp
  acquire(&ptable.lock);  //DOC: yieldlock
80103776:	68 20 2d 11 80       	push   $0x80112d20
8010377b:	e8 55 05 00 00       	call   80103cd5 <acquire>
  myproc()->state = RUNNABLE;
80103780:	e8 5b fb ff ff       	call   801032e0 <myproc>
80103785:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
  sched();
8010378c:	e8 6a fe ff ff       	call   801035fb <sched>
  release(&ptable.lock);
80103791:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103798:	e8 a1 05 00 00       	call   80103d3e <release>
}
8010379d:	83 c4 10             	add    $0x10,%esp
801037a0:	c9                   	leave  
801037a1:	c3                   	ret    

801037a2 <sleep>:
{
801037a2:	f3 0f 1e fb          	endbr32 
801037a6:	55                   	push   %ebp
801037a7:	89 e5                	mov    %esp,%ebp
801037a9:	56                   	push   %esi
801037aa:	53                   	push   %ebx
801037ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct proc *p = myproc();
801037ae:	e8 2d fb ff ff       	call   801032e0 <myproc>
  if(p == 0)
801037b3:	85 c0                	test   %eax,%eax
801037b5:	74 66                	je     8010381d <sleep+0x7b>
801037b7:	89 c3                	mov    %eax,%ebx
  if(lk == 0)
801037b9:	85 f6                	test   %esi,%esi
801037bb:	74 6d                	je     8010382a <sleep+0x88>
  if(lk != &ptable.lock){  //DOC: sleeplock0
801037bd:	81 fe 20 2d 11 80    	cmp    $0x80112d20,%esi
801037c3:	74 18                	je     801037dd <sleep+0x3b>
    acquire(&ptable.lock);  //DOC: sleeplock1
801037c5:	83 ec 0c             	sub    $0xc,%esp
801037c8:	68 20 2d 11 80       	push   $0x80112d20
801037cd:	e8 03 05 00 00       	call   80103cd5 <acquire>
    release(lk);
801037d2:	89 34 24             	mov    %esi,(%esp)
801037d5:	e8 64 05 00 00       	call   80103d3e <release>
801037da:	83 c4 10             	add    $0x10,%esp
  p->chan = chan;
801037dd:	8b 45 08             	mov    0x8(%ebp),%eax
801037e0:	89 43 20             	mov    %eax,0x20(%ebx)
  p->state = SLEEPING;
801037e3:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)
  sched();
801037ea:	e8 0c fe ff ff       	call   801035fb <sched>
  p->chan = 0;
801037ef:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
  if(lk != &ptable.lock){  //DOC: sleeplock2
801037f6:	81 fe 20 2d 11 80    	cmp    $0x80112d20,%esi
801037fc:	74 18                	je     80103816 <sleep+0x74>
    release(&ptable.lock);
801037fe:	83 ec 0c             	sub    $0xc,%esp
80103801:	68 20 2d 11 80       	push   $0x80112d20
80103806:	e8 33 05 00 00       	call   80103d3e <release>
    acquire(lk);
8010380b:	89 34 24             	mov    %esi,(%esp)
8010380e:	e8 c2 04 00 00       	call   80103cd5 <acquire>
80103813:	83 c4 10             	add    $0x10,%esp
}
80103816:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103819:	5b                   	pop    %ebx
8010381a:	5e                   	pop    %esi
8010381b:	5d                   	pop    %ebp
8010381c:	c3                   	ret    
    panic("sleep");
8010381d:	83 ec 0c             	sub    $0xc,%esp
80103820:	68 d4 6c 10 80       	push   $0x80106cd4
80103825:	e8 32 cb ff ff       	call   8010035c <panic>
    panic("sleep without lk");
8010382a:	83 ec 0c             	sub    $0xc,%esp
8010382d:	68 da 6c 10 80       	push   $0x80106cda
80103832:	e8 25 cb ff ff       	call   8010035c <panic>

80103837 <wait>:
{
80103837:	f3 0f 1e fb          	endbr32 
8010383b:	55                   	push   %ebp
8010383c:	89 e5                	mov    %esp,%ebp
8010383e:	56                   	push   %esi
8010383f:	53                   	push   %ebx
  struct proc *curproc = myproc();
80103840:	e8 9b fa ff ff       	call   801032e0 <myproc>
80103845:	89 c6                	mov    %eax,%esi
  acquire(&ptable.lock);
80103847:	83 ec 0c             	sub    $0xc,%esp
8010384a:	68 20 2d 11 80       	push   $0x80112d20
8010384f:	e8 81 04 00 00       	call   80103cd5 <acquire>
80103854:	83 c4 10             	add    $0x10,%esp
    havekids = 0;
80103857:	b8 00 00 00 00       	mov    $0x0,%eax
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
8010385c:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80103861:	eb 5b                	jmp    801038be <wait+0x87>
        pid = p->pid;
80103863:	8b 73 10             	mov    0x10(%ebx),%esi
        kfree(p->kstack);
80103866:	83 ec 0c             	sub    $0xc,%esp
80103869:	ff 73 08             	pushl  0x8(%ebx)
8010386c:	e8 d5 e7 ff ff       	call   80102046 <kfree>
        p->kstack = 0;
80103871:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
        freevm(p->pgdir);
80103878:	83 c4 04             	add    $0x4,%esp
8010387b:	ff 73 04             	pushl  0x4(%ebx)
8010387e:	e8 89 2b 00 00       	call   8010640c <freevm>
        p->pid = 0;
80103883:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
        p->parent = 0;
8010388a:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
        p->name[0] = 0;
80103891:	c6 43 6c 00          	movb   $0x0,0x6c(%ebx)
        p->killed = 0;
80103895:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
        p->state = UNUSED;
8010389c:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
        release(&ptable.lock);
801038a3:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801038aa:	e8 8f 04 00 00       	call   80103d3e <release>
        return pid;
801038af:	83 c4 10             	add    $0x10,%esp
}
801038b2:	89 f0                	mov    %esi,%eax
801038b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
801038b7:	5b                   	pop    %ebx
801038b8:	5e                   	pop    %esi
801038b9:	5d                   	pop    %ebp
801038ba:	c3                   	ret    
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801038bb:	83 c3 7c             	add    $0x7c,%ebx
801038be:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
801038c4:	73 12                	jae    801038d8 <wait+0xa1>
      if(p->parent != curproc)
801038c6:	39 73 14             	cmp    %esi,0x14(%ebx)
801038c9:	75 f0                	jne    801038bb <wait+0x84>
      if(p->state == ZOMBIE){
801038cb:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
801038cf:	74 92                	je     80103863 <wait+0x2c>
      havekids = 1;
801038d1:	b8 01 00 00 00       	mov    $0x1,%eax
801038d6:	eb e3                	jmp    801038bb <wait+0x84>
    if(!havekids || curproc->killed){
801038d8:	85 c0                	test   %eax,%eax
801038da:	74 06                	je     801038e2 <wait+0xab>
801038dc:	83 7e 24 00          	cmpl   $0x0,0x24(%esi)
801038e0:	74 17                	je     801038f9 <wait+0xc2>
      release(&ptable.lock);
801038e2:	83 ec 0c             	sub    $0xc,%esp
801038e5:	68 20 2d 11 80       	push   $0x80112d20
801038ea:	e8 4f 04 00 00       	call   80103d3e <release>
      return -1;
801038ef:	83 c4 10             	add    $0x10,%esp
801038f2:	be ff ff ff ff       	mov    $0xffffffff,%esi
801038f7:	eb b9                	jmp    801038b2 <wait+0x7b>
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
801038f9:	83 ec 08             	sub    $0x8,%esp
801038fc:	68 20 2d 11 80       	push   $0x80112d20
80103901:	56                   	push   %esi
80103902:	e8 9b fe ff ff       	call   801037a2 <sleep>
    havekids = 0;
80103907:	83 c4 10             	add    $0x10,%esp
8010390a:	e9 48 ff ff ff       	jmp    80103857 <wait+0x20>

8010390f <wakeup>:

// Wake up all processes sleeping on chan.
void
wakeup(void *chan)
{
8010390f:	f3 0f 1e fb          	endbr32 
80103913:	55                   	push   %ebp
80103914:	89 e5                	mov    %esp,%ebp
80103916:	83 ec 14             	sub    $0x14,%esp
  acquire(&ptable.lock);
80103919:	68 20 2d 11 80       	push   $0x80112d20
8010391e:	e8 b2 03 00 00       	call   80103cd5 <acquire>
  wakeup1(chan);
80103923:	8b 45 08             	mov    0x8(%ebp),%eax
80103926:	e8 ec f7 ff ff       	call   80103117 <wakeup1>
  release(&ptable.lock);
8010392b:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103932:	e8 07 04 00 00       	call   80103d3e <release>
}
80103937:	83 c4 10             	add    $0x10,%esp
8010393a:	c9                   	leave  
8010393b:	c3                   	ret    

8010393c <kill>:
// Kill the process with the given pid.
// Process won't exit until it returns
// to user space (see trap in trap.c).
int
kill(int pid)
{
8010393c:	f3 0f 1e fb          	endbr32 
80103940:	55                   	push   %ebp
80103941:	89 e5                	mov    %esp,%ebp
80103943:	53                   	push   %ebx
80103944:	83 ec 10             	sub    $0x10,%esp
80103947:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *p;

  acquire(&ptable.lock);
8010394a:	68 20 2d 11 80       	push   $0x80112d20
8010394f:	e8 81 03 00 00       	call   80103cd5 <acquire>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103954:	83 c4 10             	add    $0x10,%esp
80103957:	b8 54 2d 11 80       	mov    $0x80112d54,%eax
8010395c:	3d 54 4c 11 80       	cmp    $0x80114c54,%eax
80103961:	73 3a                	jae    8010399d <kill+0x61>
    if(p->pid == pid){
80103963:	39 58 10             	cmp    %ebx,0x10(%eax)
80103966:	74 05                	je     8010396d <kill+0x31>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103968:	83 c0 7c             	add    $0x7c,%eax
8010396b:	eb ef                	jmp    8010395c <kill+0x20>
      p->killed = 1;
8010396d:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
80103974:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
80103978:	74 1a                	je     80103994 <kill+0x58>
        p->state = RUNNABLE;
      release(&ptable.lock);
8010397a:	83 ec 0c             	sub    $0xc,%esp
8010397d:	68 20 2d 11 80       	push   $0x80112d20
80103982:	e8 b7 03 00 00       	call   80103d3e <release>
      return 0;
80103987:	83 c4 10             	add    $0x10,%esp
8010398a:	b8 00 00 00 00       	mov    $0x0,%eax
    }
  }
  release(&ptable.lock);
  return -1;
}
8010398f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103992:	c9                   	leave  
80103993:	c3                   	ret    
        p->state = RUNNABLE;
80103994:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
8010399b:	eb dd                	jmp    8010397a <kill+0x3e>
  release(&ptable.lock);
8010399d:	83 ec 0c             	sub    $0xc,%esp
801039a0:	68 20 2d 11 80       	push   $0x80112d20
801039a5:	e8 94 03 00 00       	call   80103d3e <release>
  return -1;
801039aa:	83 c4 10             	add    $0x10,%esp
801039ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801039b2:	eb db                	jmp    8010398f <kill+0x53>

801039b4 <procdump>:
// Print a process listing to console.  For debugging.
// Runs when user types ^P on console.
// No lock to avoid wedging a stuck machine further.
void
procdump(void)
{
801039b4:	f3 0f 1e fb          	endbr32 
801039b8:	55                   	push   %ebp
801039b9:	89 e5                	mov    %esp,%ebp
801039bb:	56                   	push   %esi
801039bc:	53                   	push   %ebx
801039bd:	83 ec 30             	sub    $0x30,%esp
  int i;
  struct proc *p;
  char *state;
  uint pc[10];

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801039c0:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
801039c5:	eb 33                	jmp    801039fa <procdump+0x46>
    if(p->state == UNUSED)
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
      state = states[p->state];
    else
      state = "???";
801039c7:	b8 eb 6c 10 80       	mov    $0x80106ceb,%eax
    cprintf("%d %s %s", p->pid, state, p->name);
801039cc:	8d 53 6c             	lea    0x6c(%ebx),%edx
801039cf:	52                   	push   %edx
801039d0:	50                   	push   %eax
801039d1:	ff 73 10             	pushl  0x10(%ebx)
801039d4:	68 ef 6c 10 80       	push   $0x80106cef
801039d9:	e8 4b cc ff ff       	call   80100629 <cprintf>
    if(p->state == SLEEPING){
801039de:	83 c4 10             	add    $0x10,%esp
801039e1:	83 7b 0c 02          	cmpl   $0x2,0xc(%ebx)
801039e5:	74 39                	je     80103a20 <procdump+0x6c>
      getcallerpcs((uint*)p->context->ebp+2, pc);
      for(i=0; i<10 && pc[i] != 0; i++)
        cprintf(" %p", pc[i]);
    }
    cprintf("\n");
801039e7:	83 ec 0c             	sub    $0xc,%esp
801039ea:	68 5f 70 10 80       	push   $0x8010705f
801039ef:	e8 35 cc ff ff       	call   80100629 <cprintf>
801039f4:	83 c4 10             	add    $0x10,%esp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801039f7:	83 c3 7c             	add    $0x7c,%ebx
801039fa:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
80103a00:	73 61                	jae    80103a63 <procdump+0xaf>
    if(p->state == UNUSED)
80103a02:	8b 43 0c             	mov    0xc(%ebx),%eax
80103a05:	85 c0                	test   %eax,%eax
80103a07:	74 ee                	je     801039f7 <procdump+0x43>
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
80103a09:	83 f8 05             	cmp    $0x5,%eax
80103a0c:	77 b9                	ja     801039c7 <procdump+0x13>
80103a0e:	8b 04 85 4c 6d 10 80 	mov    -0x7fef92b4(,%eax,4),%eax
80103a15:	85 c0                	test   %eax,%eax
80103a17:	75 b3                	jne    801039cc <procdump+0x18>
      state = "???";
80103a19:	b8 eb 6c 10 80       	mov    $0x80106ceb,%eax
80103a1e:	eb ac                	jmp    801039cc <procdump+0x18>
      getcallerpcs((uint*)p->context->ebp+2, pc);
80103a20:	8b 43 1c             	mov    0x1c(%ebx),%eax
80103a23:	8b 40 0c             	mov    0xc(%eax),%eax
80103a26:	83 c0 08             	add    $0x8,%eax
80103a29:	83 ec 08             	sub    $0x8,%esp
80103a2c:	8d 55 d0             	lea    -0x30(%ebp),%edx
80103a2f:	52                   	push   %edx
80103a30:	50                   	push   %eax
80103a31:	e8 6e 01 00 00       	call   80103ba4 <getcallerpcs>
      for(i=0; i<10 && pc[i] != 0; i++)
80103a36:	83 c4 10             	add    $0x10,%esp
80103a39:	be 00 00 00 00       	mov    $0x0,%esi
80103a3e:	eb 14                	jmp    80103a54 <procdump+0xa0>
        cprintf(" %p", pc[i]);
80103a40:	83 ec 08             	sub    $0x8,%esp
80103a43:	50                   	push   %eax
80103a44:	68 41 67 10 80       	push   $0x80106741
80103a49:	e8 db cb ff ff       	call   80100629 <cprintf>
      for(i=0; i<10 && pc[i] != 0; i++)
80103a4e:	83 c6 01             	add    $0x1,%esi
80103a51:	83 c4 10             	add    $0x10,%esp
80103a54:	83 fe 09             	cmp    $0x9,%esi
80103a57:	7f 8e                	jg     801039e7 <procdump+0x33>
80103a59:	8b 44 b5 d0          	mov    -0x30(%ebp,%esi,4),%eax
80103a5d:	85 c0                	test   %eax,%eax
80103a5f:	75 df                	jne    80103a40 <procdump+0x8c>
80103a61:	eb 84                	jmp    801039e7 <procdump+0x33>
  }
}
80103a63:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103a66:	5b                   	pop    %ebx
80103a67:	5e                   	pop    %esi
80103a68:	5d                   	pop    %ebp
80103a69:	c3                   	ret    

80103a6a <initsleeplock>:
#include "spinlock.h"
#include "sleeplock.h"

void
initsleeplock(struct sleeplock *lk, char *name)
{
80103a6a:	f3 0f 1e fb          	endbr32 
80103a6e:	55                   	push   %ebp
80103a6f:	89 e5                	mov    %esp,%ebp
80103a71:	53                   	push   %ebx
80103a72:	83 ec 0c             	sub    $0xc,%esp
80103a75:	8b 5d 08             	mov    0x8(%ebp),%ebx
  initlock(&lk->lk, "sleep lock");
80103a78:	68 64 6d 10 80       	push   $0x80106d64
80103a7d:	8d 43 04             	lea    0x4(%ebx),%eax
80103a80:	50                   	push   %eax
80103a81:	e8 ff 00 00 00       	call   80103b85 <initlock>
  lk->name = name;
80103a86:	8b 45 0c             	mov    0xc(%ebp),%eax
80103a89:	89 43 38             	mov    %eax,0x38(%ebx)
  lk->locked = 0;
80103a8c:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  lk->pid = 0;
80103a92:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
}
80103a99:	83 c4 10             	add    $0x10,%esp
80103a9c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103a9f:	c9                   	leave  
80103aa0:	c3                   	ret    

80103aa1 <acquiresleep>:

void
acquiresleep(struct sleeplock *lk)
{
80103aa1:	f3 0f 1e fb          	endbr32 
80103aa5:	55                   	push   %ebp
80103aa6:	89 e5                	mov    %esp,%ebp
80103aa8:	56                   	push   %esi
80103aa9:	53                   	push   %ebx
80103aaa:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&lk->lk);
80103aad:	8d 73 04             	lea    0x4(%ebx),%esi
80103ab0:	83 ec 0c             	sub    $0xc,%esp
80103ab3:	56                   	push   %esi
80103ab4:	e8 1c 02 00 00       	call   80103cd5 <acquire>
  while (lk->locked) {
80103ab9:	83 c4 10             	add    $0x10,%esp
80103abc:	83 3b 00             	cmpl   $0x0,(%ebx)
80103abf:	74 0f                	je     80103ad0 <acquiresleep+0x2f>
    sleep(lk, &lk->lk);
80103ac1:	83 ec 08             	sub    $0x8,%esp
80103ac4:	56                   	push   %esi
80103ac5:	53                   	push   %ebx
80103ac6:	e8 d7 fc ff ff       	call   801037a2 <sleep>
80103acb:	83 c4 10             	add    $0x10,%esp
80103ace:	eb ec                	jmp    80103abc <acquiresleep+0x1b>
  }
  lk->locked = 1;
80103ad0:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  lk->pid = myproc()->pid;
80103ad6:	e8 05 f8 ff ff       	call   801032e0 <myproc>
80103adb:	8b 40 10             	mov    0x10(%eax),%eax
80103ade:	89 43 3c             	mov    %eax,0x3c(%ebx)
  release(&lk->lk);
80103ae1:	83 ec 0c             	sub    $0xc,%esp
80103ae4:	56                   	push   %esi
80103ae5:	e8 54 02 00 00       	call   80103d3e <release>
}
80103aea:	83 c4 10             	add    $0x10,%esp
80103aed:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103af0:	5b                   	pop    %ebx
80103af1:	5e                   	pop    %esi
80103af2:	5d                   	pop    %ebp
80103af3:	c3                   	ret    

80103af4 <releasesleep>:

void
releasesleep(struct sleeplock *lk)
{
80103af4:	f3 0f 1e fb          	endbr32 
80103af8:	55                   	push   %ebp
80103af9:	89 e5                	mov    %esp,%ebp
80103afb:	56                   	push   %esi
80103afc:	53                   	push   %ebx
80103afd:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&lk->lk);
80103b00:	8d 73 04             	lea    0x4(%ebx),%esi
80103b03:	83 ec 0c             	sub    $0xc,%esp
80103b06:	56                   	push   %esi
80103b07:	e8 c9 01 00 00       	call   80103cd5 <acquire>
  lk->locked = 0;
80103b0c:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  lk->pid = 0;
80103b12:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
  wakeup(lk);
80103b19:	89 1c 24             	mov    %ebx,(%esp)
80103b1c:	e8 ee fd ff ff       	call   8010390f <wakeup>
  release(&lk->lk);
80103b21:	89 34 24             	mov    %esi,(%esp)
80103b24:	e8 15 02 00 00       	call   80103d3e <release>
}
80103b29:	83 c4 10             	add    $0x10,%esp
80103b2c:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103b2f:	5b                   	pop    %ebx
80103b30:	5e                   	pop    %esi
80103b31:	5d                   	pop    %ebp
80103b32:	c3                   	ret    

80103b33 <holdingsleep>:

int
holdingsleep(struct sleeplock *lk)
{
80103b33:	f3 0f 1e fb          	endbr32 
80103b37:	55                   	push   %ebp
80103b38:	89 e5                	mov    %esp,%ebp
80103b3a:	56                   	push   %esi
80103b3b:	53                   	push   %ebx
80103b3c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int r;
  
  acquire(&lk->lk);
80103b3f:	8d 73 04             	lea    0x4(%ebx),%esi
80103b42:	83 ec 0c             	sub    $0xc,%esp
80103b45:	56                   	push   %esi
80103b46:	e8 8a 01 00 00       	call   80103cd5 <acquire>
  r = lk->locked && (lk->pid == myproc()->pid);
80103b4b:	83 c4 10             	add    $0x10,%esp
80103b4e:	83 3b 00             	cmpl   $0x0,(%ebx)
80103b51:	75 17                	jne    80103b6a <holdingsleep+0x37>
80103b53:	bb 00 00 00 00       	mov    $0x0,%ebx
  release(&lk->lk);
80103b58:	83 ec 0c             	sub    $0xc,%esp
80103b5b:	56                   	push   %esi
80103b5c:	e8 dd 01 00 00       	call   80103d3e <release>
  return r;
}
80103b61:	89 d8                	mov    %ebx,%eax
80103b63:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103b66:	5b                   	pop    %ebx
80103b67:	5e                   	pop    %esi
80103b68:	5d                   	pop    %ebp
80103b69:	c3                   	ret    
  r = lk->locked && (lk->pid == myproc()->pid);
80103b6a:	8b 5b 3c             	mov    0x3c(%ebx),%ebx
80103b6d:	e8 6e f7 ff ff       	call   801032e0 <myproc>
80103b72:	3b 58 10             	cmp    0x10(%eax),%ebx
80103b75:	74 07                	je     80103b7e <holdingsleep+0x4b>
80103b77:	bb 00 00 00 00       	mov    $0x0,%ebx
80103b7c:	eb da                	jmp    80103b58 <holdingsleep+0x25>
80103b7e:	bb 01 00 00 00       	mov    $0x1,%ebx
80103b83:	eb d3                	jmp    80103b58 <holdingsleep+0x25>

80103b85 <initlock>:
#include "proc.h"
#include "spinlock.h"

void
initlock(struct spinlock *lk, char *name)
{
80103b85:	f3 0f 1e fb          	endbr32 
80103b89:	55                   	push   %ebp
80103b8a:	89 e5                	mov    %esp,%ebp
80103b8c:	8b 45 08             	mov    0x8(%ebp),%eax
  lk->name = name;
80103b8f:	8b 55 0c             	mov    0xc(%ebp),%edx
80103b92:	89 50 04             	mov    %edx,0x4(%eax)
  lk->locked = 0;
80103b95:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lk->cpu = 0;
80103b9b:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
}
80103ba2:	5d                   	pop    %ebp
80103ba3:	c3                   	ret    

80103ba4 <getcallerpcs>:
}

// Record the current call stack in pcs[] by following the %ebp chain.
void
getcallerpcs(void *v, uint pcs[])
{
80103ba4:	f3 0f 1e fb          	endbr32 
80103ba8:	55                   	push   %ebp
80103ba9:	89 e5                	mov    %esp,%ebp
80103bab:	53                   	push   %ebx
80103bac:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  uint *ebp;
  int i;

  ebp = (uint*)v - 2;
80103baf:	8b 45 08             	mov    0x8(%ebp),%eax
80103bb2:	8d 50 f8             	lea    -0x8(%eax),%edx
  for(i = 0; i < 10; i++){
80103bb5:	b8 00 00 00 00       	mov    $0x0,%eax
80103bba:	83 f8 09             	cmp    $0x9,%eax
80103bbd:	7f 25                	jg     80103be4 <getcallerpcs+0x40>
    if(ebp == 0 || ebp < (uint*)KERNBASE || ebp == (uint*)0xffffffff)
80103bbf:	8d 9a 00 00 00 80    	lea    -0x80000000(%edx),%ebx
80103bc5:	81 fb fe ff ff 7f    	cmp    $0x7ffffffe,%ebx
80103bcb:	77 17                	ja     80103be4 <getcallerpcs+0x40>
      break;
    pcs[i] = ebp[1];     // saved %eip
80103bcd:	8b 5a 04             	mov    0x4(%edx),%ebx
80103bd0:	89 1c 81             	mov    %ebx,(%ecx,%eax,4)
    ebp = (uint*)ebp[0]; // saved %ebp
80103bd3:	8b 12                	mov    (%edx),%edx
  for(i = 0; i < 10; i++){
80103bd5:	83 c0 01             	add    $0x1,%eax
80103bd8:	eb e0                	jmp    80103bba <getcallerpcs+0x16>
  }
  for(; i < 10; i++)
    pcs[i] = 0;
80103bda:	c7 04 81 00 00 00 00 	movl   $0x0,(%ecx,%eax,4)
  for(; i < 10; i++)
80103be1:	83 c0 01             	add    $0x1,%eax
80103be4:	83 f8 09             	cmp    $0x9,%eax
80103be7:	7e f1                	jle    80103bda <getcallerpcs+0x36>
}
80103be9:	5b                   	pop    %ebx
80103bea:	5d                   	pop    %ebp
80103beb:	c3                   	ret    

80103bec <pushcli>:
// it takes two popcli to undo two pushcli.  Also, if interrupts
// are off, then pushcli, popcli leaves them off.

void
pushcli(void)
{
80103bec:	f3 0f 1e fb          	endbr32 
80103bf0:	55                   	push   %ebp
80103bf1:	89 e5                	mov    %esp,%ebp
80103bf3:	53                   	push   %ebx
80103bf4:	83 ec 04             	sub    $0x4,%esp
80103bf7:	9c                   	pushf  
80103bf8:	5b                   	pop    %ebx
  asm volatile("cli");
80103bf9:	fa                   	cli    
  int eflags;

  eflags = readeflags();
  cli();
  if(mycpu()->ncli == 0)
80103bfa:	e8 62 f6 ff ff       	call   80103261 <mycpu>
80103bff:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80103c06:	74 12                	je     80103c1a <pushcli+0x2e>
    mycpu()->intena = eflags & FL_IF;
  mycpu()->ncli += 1;
80103c08:	e8 54 f6 ff ff       	call   80103261 <mycpu>
80103c0d:	83 80 a4 00 00 00 01 	addl   $0x1,0xa4(%eax)
}
80103c14:	83 c4 04             	add    $0x4,%esp
80103c17:	5b                   	pop    %ebx
80103c18:	5d                   	pop    %ebp
80103c19:	c3                   	ret    
    mycpu()->intena = eflags & FL_IF;
80103c1a:	e8 42 f6 ff ff       	call   80103261 <mycpu>
80103c1f:	81 e3 00 02 00 00    	and    $0x200,%ebx
80103c25:	89 98 a8 00 00 00    	mov    %ebx,0xa8(%eax)
80103c2b:	eb db                	jmp    80103c08 <pushcli+0x1c>

80103c2d <popcli>:

void
popcli(void)
{
80103c2d:	f3 0f 1e fb          	endbr32 
80103c31:	55                   	push   %ebp
80103c32:	89 e5                	mov    %esp,%ebp
80103c34:	83 ec 08             	sub    $0x8,%esp
  asm volatile("pushfl; popl %0" : "=r" (eflags));
80103c37:	9c                   	pushf  
80103c38:	58                   	pop    %eax
  if(readeflags()&FL_IF)
80103c39:	f6 c4 02             	test   $0x2,%ah
80103c3c:	75 28                	jne    80103c66 <popcli+0x39>
    panic("popcli - interruptible");
  if(--mycpu()->ncli < 0)
80103c3e:	e8 1e f6 ff ff       	call   80103261 <mycpu>
80103c43:	8b 88 a4 00 00 00    	mov    0xa4(%eax),%ecx
80103c49:	8d 51 ff             	lea    -0x1(%ecx),%edx
80103c4c:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
80103c52:	85 d2                	test   %edx,%edx
80103c54:	78 1d                	js     80103c73 <popcli+0x46>
    panic("popcli");
  if(mycpu()->ncli == 0 && mycpu()->intena)
80103c56:	e8 06 f6 ff ff       	call   80103261 <mycpu>
80103c5b:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80103c62:	74 1c                	je     80103c80 <popcli+0x53>
    sti();
}
80103c64:	c9                   	leave  
80103c65:	c3                   	ret    
    panic("popcli - interruptible");
80103c66:	83 ec 0c             	sub    $0xc,%esp
80103c69:	68 6f 6d 10 80       	push   $0x80106d6f
80103c6e:	e8 e9 c6 ff ff       	call   8010035c <panic>
    panic("popcli");
80103c73:	83 ec 0c             	sub    $0xc,%esp
80103c76:	68 86 6d 10 80       	push   $0x80106d86
80103c7b:	e8 dc c6 ff ff       	call   8010035c <panic>
  if(mycpu()->ncli == 0 && mycpu()->intena)
80103c80:	e8 dc f5 ff ff       	call   80103261 <mycpu>
80103c85:	83 b8 a8 00 00 00 00 	cmpl   $0x0,0xa8(%eax)
80103c8c:	74 d6                	je     80103c64 <popcli+0x37>
  asm volatile("sti");
80103c8e:	fb                   	sti    
}
80103c8f:	eb d3                	jmp    80103c64 <popcli+0x37>

80103c91 <holding>:
{
80103c91:	f3 0f 1e fb          	endbr32 
80103c95:	55                   	push   %ebp
80103c96:	89 e5                	mov    %esp,%ebp
80103c98:	53                   	push   %ebx
80103c99:	83 ec 04             	sub    $0x4,%esp
80103c9c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  pushcli();
80103c9f:	e8 48 ff ff ff       	call   80103bec <pushcli>
  r = lock->locked && lock->cpu == mycpu();
80103ca4:	83 3b 00             	cmpl   $0x0,(%ebx)
80103ca7:	75 12                	jne    80103cbb <holding+0x2a>
80103ca9:	bb 00 00 00 00       	mov    $0x0,%ebx
  popcli();
80103cae:	e8 7a ff ff ff       	call   80103c2d <popcli>
}
80103cb3:	89 d8                	mov    %ebx,%eax
80103cb5:	83 c4 04             	add    $0x4,%esp
80103cb8:	5b                   	pop    %ebx
80103cb9:	5d                   	pop    %ebp
80103cba:	c3                   	ret    
  r = lock->locked && lock->cpu == mycpu();
80103cbb:	8b 5b 08             	mov    0x8(%ebx),%ebx
80103cbe:	e8 9e f5 ff ff       	call   80103261 <mycpu>
80103cc3:	39 c3                	cmp    %eax,%ebx
80103cc5:	74 07                	je     80103cce <holding+0x3d>
80103cc7:	bb 00 00 00 00       	mov    $0x0,%ebx
80103ccc:	eb e0                	jmp    80103cae <holding+0x1d>
80103cce:	bb 01 00 00 00       	mov    $0x1,%ebx
80103cd3:	eb d9                	jmp    80103cae <holding+0x1d>

80103cd5 <acquire>:
{
80103cd5:	f3 0f 1e fb          	endbr32 
80103cd9:	55                   	push   %ebp
80103cda:	89 e5                	mov    %esp,%ebp
80103cdc:	53                   	push   %ebx
80103cdd:	83 ec 04             	sub    $0x4,%esp
  pushcli(); // disable interrupts to avoid deadlock.
80103ce0:	e8 07 ff ff ff       	call   80103bec <pushcli>
  if(holding(lk))
80103ce5:	83 ec 0c             	sub    $0xc,%esp
80103ce8:	ff 75 08             	pushl  0x8(%ebp)
80103ceb:	e8 a1 ff ff ff       	call   80103c91 <holding>
80103cf0:	83 c4 10             	add    $0x10,%esp
80103cf3:	85 c0                	test   %eax,%eax
80103cf5:	75 3a                	jne    80103d31 <acquire+0x5c>
  while(xchg(&lk->locked, 1) != 0)
80103cf7:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("lock; xchgl %0, %1" :
80103cfa:	b8 01 00 00 00       	mov    $0x1,%eax
80103cff:	f0 87 02             	lock xchg %eax,(%edx)
80103d02:	85 c0                	test   %eax,%eax
80103d04:	75 f1                	jne    80103cf7 <acquire+0x22>
  __sync_synchronize();
80103d06:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
  lk->cpu = mycpu();
80103d0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103d0e:	e8 4e f5 ff ff       	call   80103261 <mycpu>
80103d13:	89 43 08             	mov    %eax,0x8(%ebx)
  getcallerpcs(&lk, lk->pcs);
80103d16:	8b 45 08             	mov    0x8(%ebp),%eax
80103d19:	83 c0 0c             	add    $0xc,%eax
80103d1c:	83 ec 08             	sub    $0x8,%esp
80103d1f:	50                   	push   %eax
80103d20:	8d 45 08             	lea    0x8(%ebp),%eax
80103d23:	50                   	push   %eax
80103d24:	e8 7b fe ff ff       	call   80103ba4 <getcallerpcs>
}
80103d29:	83 c4 10             	add    $0x10,%esp
80103d2c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103d2f:	c9                   	leave  
80103d30:	c3                   	ret    
    panic("acquire");
80103d31:	83 ec 0c             	sub    $0xc,%esp
80103d34:	68 8d 6d 10 80       	push   $0x80106d8d
80103d39:	e8 1e c6 ff ff       	call   8010035c <panic>

80103d3e <release>:
{
80103d3e:	f3 0f 1e fb          	endbr32 
80103d42:	55                   	push   %ebp
80103d43:	89 e5                	mov    %esp,%ebp
80103d45:	53                   	push   %ebx
80103d46:	83 ec 10             	sub    $0x10,%esp
80103d49:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(!holding(lk))
80103d4c:	53                   	push   %ebx
80103d4d:	e8 3f ff ff ff       	call   80103c91 <holding>
80103d52:	83 c4 10             	add    $0x10,%esp
80103d55:	85 c0                	test   %eax,%eax
80103d57:	74 23                	je     80103d7c <release+0x3e>
  lk->pcs[0] = 0;
80103d59:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
  lk->cpu = 0;
80103d60:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
  __sync_synchronize();
80103d67:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
80103d6c:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  popcli();
80103d72:	e8 b6 fe ff ff       	call   80103c2d <popcli>
}
80103d77:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103d7a:	c9                   	leave  
80103d7b:	c3                   	ret    
    panic("release");
80103d7c:	83 ec 0c             	sub    $0xc,%esp
80103d7f:	68 95 6d 10 80       	push   $0x80106d95
80103d84:	e8 d3 c5 ff ff       	call   8010035c <panic>

80103d89 <memset>:
#include "types.h"
#include "x86.h"

void*
memset(void *dst, int c, uint n)
{
80103d89:	f3 0f 1e fb          	endbr32 
80103d8d:	55                   	push   %ebp
80103d8e:	89 e5                	mov    %esp,%ebp
80103d90:	57                   	push   %edi
80103d91:	53                   	push   %ebx
80103d92:	8b 55 08             	mov    0x8(%ebp),%edx
80103d95:	8b 45 0c             	mov    0xc(%ebp),%eax
80103d98:	8b 4d 10             	mov    0x10(%ebp),%ecx
  if ((int)dst%4 == 0 && n%4 == 0){
80103d9b:	f6 c2 03             	test   $0x3,%dl
80103d9e:	75 25                	jne    80103dc5 <memset+0x3c>
80103da0:	f6 c1 03             	test   $0x3,%cl
80103da3:	75 20                	jne    80103dc5 <memset+0x3c>
    c &= 0xFF;
80103da5:	0f b6 f8             	movzbl %al,%edi
    stosl(dst, (c<<24)|(c<<16)|(c<<8)|c, n/4);
80103da8:	c1 e9 02             	shr    $0x2,%ecx
80103dab:	c1 e0 18             	shl    $0x18,%eax
80103dae:	89 fb                	mov    %edi,%ebx
80103db0:	c1 e3 10             	shl    $0x10,%ebx
80103db3:	09 d8                	or     %ebx,%eax
80103db5:	89 fb                	mov    %edi,%ebx
80103db7:	c1 e3 08             	shl    $0x8,%ebx
80103dba:	09 d8                	or     %ebx,%eax
80103dbc:	09 f8                	or     %edi,%eax
  asm volatile("cld; rep stosl" :
80103dbe:	89 d7                	mov    %edx,%edi
80103dc0:	fc                   	cld    
80103dc1:	f3 ab                	rep stos %eax,%es:(%edi)
}
80103dc3:	eb 05                	jmp    80103dca <memset+0x41>
  asm volatile("cld; rep stosb" :
80103dc5:	89 d7                	mov    %edx,%edi
80103dc7:	fc                   	cld    
80103dc8:	f3 aa                	rep stos %al,%es:(%edi)
  } else
    stosb(dst, c, n);
  return dst;
}
80103dca:	89 d0                	mov    %edx,%eax
80103dcc:	5b                   	pop    %ebx
80103dcd:	5f                   	pop    %edi
80103dce:	5d                   	pop    %ebp
80103dcf:	c3                   	ret    

80103dd0 <memcmp>:

int
memcmp(const void *v1, const void *v2, uint n)
{
80103dd0:	f3 0f 1e fb          	endbr32 
80103dd4:	55                   	push   %ebp
80103dd5:	89 e5                	mov    %esp,%ebp
80103dd7:	56                   	push   %esi
80103dd8:	53                   	push   %ebx
80103dd9:	8b 4d 08             	mov    0x8(%ebp),%ecx
80103ddc:	8b 55 0c             	mov    0xc(%ebp),%edx
80103ddf:	8b 45 10             	mov    0x10(%ebp),%eax
  const uchar *s1, *s2;

  s1 = v1;
  s2 = v2;
  while(n-- > 0){
80103de2:	8d 70 ff             	lea    -0x1(%eax),%esi
80103de5:	85 c0                	test   %eax,%eax
80103de7:	74 1c                	je     80103e05 <memcmp+0x35>
    if(*s1 != *s2)
80103de9:	0f b6 01             	movzbl (%ecx),%eax
80103dec:	0f b6 1a             	movzbl (%edx),%ebx
80103def:	38 d8                	cmp    %bl,%al
80103df1:	75 0a                	jne    80103dfd <memcmp+0x2d>
      return *s1 - *s2;
    s1++, s2++;
80103df3:	83 c1 01             	add    $0x1,%ecx
80103df6:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0){
80103df9:	89 f0                	mov    %esi,%eax
80103dfb:	eb e5                	jmp    80103de2 <memcmp+0x12>
      return *s1 - *s2;
80103dfd:	0f b6 c0             	movzbl %al,%eax
80103e00:	0f b6 db             	movzbl %bl,%ebx
80103e03:	29 d8                	sub    %ebx,%eax
  }

  return 0;
}
80103e05:	5b                   	pop    %ebx
80103e06:	5e                   	pop    %esi
80103e07:	5d                   	pop    %ebp
80103e08:	c3                   	ret    

80103e09 <memmove>:

void*
memmove(void *dst, const void *src, uint n)
{
80103e09:	f3 0f 1e fb          	endbr32 
80103e0d:	55                   	push   %ebp
80103e0e:	89 e5                	mov    %esp,%ebp
80103e10:	56                   	push   %esi
80103e11:	53                   	push   %ebx
80103e12:	8b 75 08             	mov    0x8(%ebp),%esi
80103e15:	8b 55 0c             	mov    0xc(%ebp),%edx
80103e18:	8b 45 10             	mov    0x10(%ebp),%eax
  const char *s;
  char *d;

  s = src;
  d = dst;
  if(s < d && s + n > d){
80103e1b:	39 f2                	cmp    %esi,%edx
80103e1d:	73 3a                	jae    80103e59 <memmove+0x50>
80103e1f:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
80103e22:	39 f1                	cmp    %esi,%ecx
80103e24:	76 37                	jbe    80103e5d <memmove+0x54>
    s += n;
    d += n;
80103e26:	8d 14 06             	lea    (%esi,%eax,1),%edx
    while(n-- > 0)
80103e29:	8d 58 ff             	lea    -0x1(%eax),%ebx
80103e2c:	85 c0                	test   %eax,%eax
80103e2e:	74 23                	je     80103e53 <memmove+0x4a>
      *--d = *--s;
80103e30:	83 e9 01             	sub    $0x1,%ecx
80103e33:	83 ea 01             	sub    $0x1,%edx
80103e36:	0f b6 01             	movzbl (%ecx),%eax
80103e39:	88 02                	mov    %al,(%edx)
    while(n-- > 0)
80103e3b:	89 d8                	mov    %ebx,%eax
80103e3d:	eb ea                	jmp    80103e29 <memmove+0x20>
  } else
    while(n-- > 0)
      *d++ = *s++;
80103e3f:	0f b6 02             	movzbl (%edx),%eax
80103e42:	88 01                	mov    %al,(%ecx)
80103e44:	8d 49 01             	lea    0x1(%ecx),%ecx
80103e47:	8d 52 01             	lea    0x1(%edx),%edx
    while(n-- > 0)
80103e4a:	89 d8                	mov    %ebx,%eax
80103e4c:	8d 58 ff             	lea    -0x1(%eax),%ebx
80103e4f:	85 c0                	test   %eax,%eax
80103e51:	75 ec                	jne    80103e3f <memmove+0x36>

  return dst;
}
80103e53:	89 f0                	mov    %esi,%eax
80103e55:	5b                   	pop    %ebx
80103e56:	5e                   	pop    %esi
80103e57:	5d                   	pop    %ebp
80103e58:	c3                   	ret    
80103e59:	89 f1                	mov    %esi,%ecx
80103e5b:	eb ef                	jmp    80103e4c <memmove+0x43>
80103e5d:	89 f1                	mov    %esi,%ecx
80103e5f:	eb eb                	jmp    80103e4c <memmove+0x43>

80103e61 <memcpy>:

// memcpy exists to placate GCC.  Use memmove.
void*
memcpy(void *dst, const void *src, uint n)
{
80103e61:	f3 0f 1e fb          	endbr32 
80103e65:	55                   	push   %ebp
80103e66:	89 e5                	mov    %esp,%ebp
80103e68:	83 ec 0c             	sub    $0xc,%esp
  return memmove(dst, src, n);
80103e6b:	ff 75 10             	pushl  0x10(%ebp)
80103e6e:	ff 75 0c             	pushl  0xc(%ebp)
80103e71:	ff 75 08             	pushl  0x8(%ebp)
80103e74:	e8 90 ff ff ff       	call   80103e09 <memmove>
}
80103e79:	c9                   	leave  
80103e7a:	c3                   	ret    

80103e7b <strncmp>:

int
strncmp(const char *p, const char *q, uint n)
{
80103e7b:	f3 0f 1e fb          	endbr32 
80103e7f:	55                   	push   %ebp
80103e80:	89 e5                	mov    %esp,%ebp
80103e82:	53                   	push   %ebx
80103e83:	8b 55 08             	mov    0x8(%ebp),%edx
80103e86:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103e89:	8b 45 10             	mov    0x10(%ebp),%eax
  while(n > 0 && *p && *p == *q)
80103e8c:	eb 09                	jmp    80103e97 <strncmp+0x1c>
    n--, p++, q++;
80103e8e:	83 e8 01             	sub    $0x1,%eax
80103e91:	83 c2 01             	add    $0x1,%edx
80103e94:	83 c1 01             	add    $0x1,%ecx
  while(n > 0 && *p && *p == *q)
80103e97:	85 c0                	test   %eax,%eax
80103e99:	74 0b                	je     80103ea6 <strncmp+0x2b>
80103e9b:	0f b6 1a             	movzbl (%edx),%ebx
80103e9e:	84 db                	test   %bl,%bl
80103ea0:	74 04                	je     80103ea6 <strncmp+0x2b>
80103ea2:	3a 19                	cmp    (%ecx),%bl
80103ea4:	74 e8                	je     80103e8e <strncmp+0x13>
  if(n == 0)
80103ea6:	85 c0                	test   %eax,%eax
80103ea8:	74 0b                	je     80103eb5 <strncmp+0x3a>
    return 0;
  return (uchar)*p - (uchar)*q;
80103eaa:	0f b6 02             	movzbl (%edx),%eax
80103ead:	0f b6 11             	movzbl (%ecx),%edx
80103eb0:	29 d0                	sub    %edx,%eax
}
80103eb2:	5b                   	pop    %ebx
80103eb3:	5d                   	pop    %ebp
80103eb4:	c3                   	ret    
    return 0;
80103eb5:	b8 00 00 00 00       	mov    $0x0,%eax
80103eba:	eb f6                	jmp    80103eb2 <strncmp+0x37>

80103ebc <strncpy>:

char*
strncpy(char *s, const char *t, int n)
{
80103ebc:	f3 0f 1e fb          	endbr32 
80103ec0:	55                   	push   %ebp
80103ec1:	89 e5                	mov    %esp,%ebp
80103ec3:	57                   	push   %edi
80103ec4:	56                   	push   %esi
80103ec5:	53                   	push   %ebx
80103ec6:	8b 7d 08             	mov    0x8(%ebp),%edi
80103ec9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103ecc:	8b 45 10             	mov    0x10(%ebp),%eax
  char *os;

  os = s;
  while(n-- > 0 && (*s++ = *t++) != 0)
80103ecf:	89 fa                	mov    %edi,%edx
80103ed1:	eb 04                	jmp    80103ed7 <strncpy+0x1b>
80103ed3:	89 f1                	mov    %esi,%ecx
80103ed5:	89 da                	mov    %ebx,%edx
80103ed7:	89 c3                	mov    %eax,%ebx
80103ed9:	83 e8 01             	sub    $0x1,%eax
80103edc:	85 db                	test   %ebx,%ebx
80103ede:	7e 1b                	jle    80103efb <strncpy+0x3f>
80103ee0:	8d 71 01             	lea    0x1(%ecx),%esi
80103ee3:	8d 5a 01             	lea    0x1(%edx),%ebx
80103ee6:	0f b6 09             	movzbl (%ecx),%ecx
80103ee9:	88 0a                	mov    %cl,(%edx)
80103eeb:	84 c9                	test   %cl,%cl
80103eed:	75 e4                	jne    80103ed3 <strncpy+0x17>
80103eef:	89 da                	mov    %ebx,%edx
80103ef1:	eb 08                	jmp    80103efb <strncpy+0x3f>
    ;
  while(n-- > 0)
    *s++ = 0;
80103ef3:	c6 02 00             	movb   $0x0,(%edx)
  while(n-- > 0)
80103ef6:	89 c8                	mov    %ecx,%eax
    *s++ = 0;
80103ef8:	8d 52 01             	lea    0x1(%edx),%edx
  while(n-- > 0)
80103efb:	8d 48 ff             	lea    -0x1(%eax),%ecx
80103efe:	85 c0                	test   %eax,%eax
80103f00:	7f f1                	jg     80103ef3 <strncpy+0x37>
  return os;
}
80103f02:	89 f8                	mov    %edi,%eax
80103f04:	5b                   	pop    %ebx
80103f05:	5e                   	pop    %esi
80103f06:	5f                   	pop    %edi
80103f07:	5d                   	pop    %ebp
80103f08:	c3                   	ret    

80103f09 <safestrcpy>:

// Like strncpy but guaranteed to NUL-terminate.
char*
safestrcpy(char *s, const char *t, int n)
{
80103f09:	f3 0f 1e fb          	endbr32 
80103f0d:	55                   	push   %ebp
80103f0e:	89 e5                	mov    %esp,%ebp
80103f10:	57                   	push   %edi
80103f11:	56                   	push   %esi
80103f12:	53                   	push   %ebx
80103f13:	8b 7d 08             	mov    0x8(%ebp),%edi
80103f16:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103f19:	8b 45 10             	mov    0x10(%ebp),%eax
  char *os;

  os = s;
  if(n <= 0)
80103f1c:	85 c0                	test   %eax,%eax
80103f1e:	7e 23                	jle    80103f43 <safestrcpy+0x3a>
80103f20:	89 fa                	mov    %edi,%edx
80103f22:	eb 04                	jmp    80103f28 <safestrcpy+0x1f>
    return os;
  while(--n > 0 && (*s++ = *t++) != 0)
80103f24:	89 f1                	mov    %esi,%ecx
80103f26:	89 da                	mov    %ebx,%edx
80103f28:	83 e8 01             	sub    $0x1,%eax
80103f2b:	85 c0                	test   %eax,%eax
80103f2d:	7e 11                	jle    80103f40 <safestrcpy+0x37>
80103f2f:	8d 71 01             	lea    0x1(%ecx),%esi
80103f32:	8d 5a 01             	lea    0x1(%edx),%ebx
80103f35:	0f b6 09             	movzbl (%ecx),%ecx
80103f38:	88 0a                	mov    %cl,(%edx)
80103f3a:	84 c9                	test   %cl,%cl
80103f3c:	75 e6                	jne    80103f24 <safestrcpy+0x1b>
80103f3e:	89 da                	mov    %ebx,%edx
    ;
  *s = 0;
80103f40:	c6 02 00             	movb   $0x0,(%edx)
  return os;
}
80103f43:	89 f8                	mov    %edi,%eax
80103f45:	5b                   	pop    %ebx
80103f46:	5e                   	pop    %esi
80103f47:	5f                   	pop    %edi
80103f48:	5d                   	pop    %ebp
80103f49:	c3                   	ret    

80103f4a <strlen>:

int
strlen(const char *s)
{
80103f4a:	f3 0f 1e fb          	endbr32 
80103f4e:	55                   	push   %ebp
80103f4f:	89 e5                	mov    %esp,%ebp
80103f51:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
80103f54:	b8 00 00 00 00       	mov    $0x0,%eax
80103f59:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
80103f5d:	74 05                	je     80103f64 <strlen+0x1a>
80103f5f:	83 c0 01             	add    $0x1,%eax
80103f62:	eb f5                	jmp    80103f59 <strlen+0xf>
    ;
  return n;
}
80103f64:	5d                   	pop    %ebp
80103f65:	c3                   	ret    

80103f66 <swtch>:
# a struct context, and save its address in *old.
# Switch stacks to new and pop previously-saved registers.

.globl swtch
swtch:
  movl 4(%esp), %eax
80103f66:	8b 44 24 04          	mov    0x4(%esp),%eax
  movl 8(%esp), %edx
80103f6a:	8b 54 24 08          	mov    0x8(%esp),%edx

  # Save old callee-saved registers
  pushl %ebp
80103f6e:	55                   	push   %ebp
  pushl %ebx
80103f6f:	53                   	push   %ebx
  pushl %esi
80103f70:	56                   	push   %esi
  pushl %edi
80103f71:	57                   	push   %edi

  # Switch stacks
  movl %esp, (%eax)
80103f72:	89 20                	mov    %esp,(%eax)
  movl %edx, %esp
80103f74:	89 d4                	mov    %edx,%esp

  # Load new callee-saved registers
  popl %edi
80103f76:	5f                   	pop    %edi
  popl %esi
80103f77:	5e                   	pop    %esi
  popl %ebx
80103f78:	5b                   	pop    %ebx
  popl %ebp
80103f79:	5d                   	pop    %ebp
  ret
80103f7a:	c3                   	ret    

80103f7b <fetchint>:
// to a saved program counter, and then the first argument.

// Fetch the int at addr from the current process.
int
fetchint(uint addr, int *ip)
{
80103f7b:	f3 0f 1e fb          	endbr32 
80103f7f:	55                   	push   %ebp
80103f80:	89 e5                	mov    %esp,%ebp
80103f82:	53                   	push   %ebx
80103f83:	83 ec 04             	sub    $0x4,%esp
80103f86:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *curproc = myproc();
80103f89:	e8 52 f3 ff ff       	call   801032e0 <myproc>

  if(addr >= curproc->sz || addr+4 > curproc->sz)
80103f8e:	8b 00                	mov    (%eax),%eax
80103f90:	39 d8                	cmp    %ebx,%eax
80103f92:	76 19                	jbe    80103fad <fetchint+0x32>
80103f94:	8d 53 04             	lea    0x4(%ebx),%edx
80103f97:	39 d0                	cmp    %edx,%eax
80103f99:	72 19                	jb     80103fb4 <fetchint+0x39>
    return -1;
  *ip = *(int*)(addr);
80103f9b:	8b 13                	mov    (%ebx),%edx
80103f9d:	8b 45 0c             	mov    0xc(%ebp),%eax
80103fa0:	89 10                	mov    %edx,(%eax)
  return 0;
80103fa2:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103fa7:	83 c4 04             	add    $0x4,%esp
80103faa:	5b                   	pop    %ebx
80103fab:	5d                   	pop    %ebp
80103fac:	c3                   	ret    
    return -1;
80103fad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103fb2:	eb f3                	jmp    80103fa7 <fetchint+0x2c>
80103fb4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103fb9:	eb ec                	jmp    80103fa7 <fetchint+0x2c>

80103fbb <fetchstr>:
// Fetch the nul-terminated string at addr from the current process.
// Doesn't actually copy the string - just sets *pp to point at it.
// Returns length of string, not including nul.
int
fetchstr(uint addr, char **pp)
{
80103fbb:	f3 0f 1e fb          	endbr32 
80103fbf:	55                   	push   %ebp
80103fc0:	89 e5                	mov    %esp,%ebp
80103fc2:	53                   	push   %ebx
80103fc3:	83 ec 04             	sub    $0x4,%esp
80103fc6:	8b 5d 08             	mov    0x8(%ebp),%ebx
  char *s, *ep;
  struct proc *curproc = myproc();
80103fc9:	e8 12 f3 ff ff       	call   801032e0 <myproc>

  if(addr >= curproc->sz)
80103fce:	39 18                	cmp    %ebx,(%eax)
80103fd0:	76 26                	jbe    80103ff8 <fetchstr+0x3d>
    return -1;
  *pp = (char*)addr;
80103fd2:	8b 55 0c             	mov    0xc(%ebp),%edx
80103fd5:	89 1a                	mov    %ebx,(%edx)
  ep = (char*)curproc->sz;
80103fd7:	8b 10                	mov    (%eax),%edx
  for(s = *pp; s < ep; s++){
80103fd9:	89 d8                	mov    %ebx,%eax
80103fdb:	39 d0                	cmp    %edx,%eax
80103fdd:	73 0e                	jae    80103fed <fetchstr+0x32>
    if(*s == 0)
80103fdf:	80 38 00             	cmpb   $0x0,(%eax)
80103fe2:	74 05                	je     80103fe9 <fetchstr+0x2e>
  for(s = *pp; s < ep; s++){
80103fe4:	83 c0 01             	add    $0x1,%eax
80103fe7:	eb f2                	jmp    80103fdb <fetchstr+0x20>
      return s - *pp;
80103fe9:	29 d8                	sub    %ebx,%eax
80103feb:	eb 05                	jmp    80103ff2 <fetchstr+0x37>
  }
  return -1;
80103fed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80103ff2:	83 c4 04             	add    $0x4,%esp
80103ff5:	5b                   	pop    %ebx
80103ff6:	5d                   	pop    %ebp
80103ff7:	c3                   	ret    
    return -1;
80103ff8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103ffd:	eb f3                	jmp    80103ff2 <fetchstr+0x37>

80103fff <argint>:

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
80103fff:	f3 0f 1e fb          	endbr32 
80104003:	55                   	push   %ebp
80104004:	89 e5                	mov    %esp,%ebp
80104006:	83 ec 08             	sub    $0x8,%esp
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
80104009:	e8 d2 f2 ff ff       	call   801032e0 <myproc>
8010400e:	8b 50 18             	mov    0x18(%eax),%edx
80104011:	8b 45 08             	mov    0x8(%ebp),%eax
80104014:	c1 e0 02             	shl    $0x2,%eax
80104017:	03 42 44             	add    0x44(%edx),%eax
8010401a:	83 ec 08             	sub    $0x8,%esp
8010401d:	ff 75 0c             	pushl  0xc(%ebp)
80104020:	83 c0 04             	add    $0x4,%eax
80104023:	50                   	push   %eax
80104024:	e8 52 ff ff ff       	call   80103f7b <fetchint>
}
80104029:	c9                   	leave  
8010402a:	c3                   	ret    

8010402b <argptr>:
// Fetch the nth word-sized system call argument as a pointer
// to a block of memory of size bytes.  Check that the pointer
// lies within the process address space.
int
argptr(int n, void **pp, int size)
{
8010402b:	f3 0f 1e fb          	endbr32 
8010402f:	55                   	push   %ebp
80104030:	89 e5                	mov    %esp,%ebp
80104032:	56                   	push   %esi
80104033:	53                   	push   %ebx
80104034:	83 ec 10             	sub    $0x10,%esp
80104037:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int i;
  struct proc *curproc = myproc();
8010403a:	e8 a1 f2 ff ff       	call   801032e0 <myproc>
8010403f:	89 c6                	mov    %eax,%esi
 
  if(argint(n, &i) < 0)
80104041:	83 ec 08             	sub    $0x8,%esp
80104044:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104047:	50                   	push   %eax
80104048:	ff 75 08             	pushl  0x8(%ebp)
8010404b:	e8 af ff ff ff       	call   80103fff <argint>
80104050:	83 c4 10             	add    $0x10,%esp
80104053:	85 c0                	test   %eax,%eax
80104055:	78 24                	js     8010407b <argptr+0x50>
    return -1;
  if(size < 0 || (uint)i >= curproc->sz || (uint)i+size > curproc->sz)
80104057:	85 db                	test   %ebx,%ebx
80104059:	78 27                	js     80104082 <argptr+0x57>
8010405b:	8b 16                	mov    (%esi),%edx
8010405d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104060:	39 c2                	cmp    %eax,%edx
80104062:	76 25                	jbe    80104089 <argptr+0x5e>
80104064:	01 c3                	add    %eax,%ebx
80104066:	39 da                	cmp    %ebx,%edx
80104068:	72 26                	jb     80104090 <argptr+0x65>
    return -1;
  *pp = (void*)i;
8010406a:	8b 55 0c             	mov    0xc(%ebp),%edx
8010406d:	89 02                	mov    %eax,(%edx)
  return 0;
8010406f:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104074:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104077:	5b                   	pop    %ebx
80104078:	5e                   	pop    %esi
80104079:	5d                   	pop    %ebp
8010407a:	c3                   	ret    
    return -1;
8010407b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104080:	eb f2                	jmp    80104074 <argptr+0x49>
    return -1;
80104082:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104087:	eb eb                	jmp    80104074 <argptr+0x49>
80104089:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010408e:	eb e4                	jmp    80104074 <argptr+0x49>
80104090:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104095:	eb dd                	jmp    80104074 <argptr+0x49>

80104097 <argstr>:
// Check that the pointer is valid and the string is nul-terminated.
// (There is no shared writable memory, so the string can't change
// between this check and being used by the kernel.)
int
argstr(int n, char **pp)
{
80104097:	f3 0f 1e fb          	endbr32 
8010409b:	55                   	push   %ebp
8010409c:	89 e5                	mov    %esp,%ebp
8010409e:	83 ec 20             	sub    $0x20,%esp
  int addr;
  if(argint(n, &addr) < 0)
801040a1:	8d 45 f4             	lea    -0xc(%ebp),%eax
801040a4:	50                   	push   %eax
801040a5:	ff 75 08             	pushl  0x8(%ebp)
801040a8:	e8 52 ff ff ff       	call   80103fff <argint>
801040ad:	83 c4 10             	add    $0x10,%esp
801040b0:	85 c0                	test   %eax,%eax
801040b2:	78 13                	js     801040c7 <argstr+0x30>
    return -1;
  return fetchstr(addr, pp);
801040b4:	83 ec 08             	sub    $0x8,%esp
801040b7:	ff 75 0c             	pushl  0xc(%ebp)
801040ba:	ff 75 f4             	pushl  -0xc(%ebp)
801040bd:	e8 f9 fe ff ff       	call   80103fbb <fetchstr>
801040c2:	83 c4 10             	add    $0x10,%esp
}
801040c5:	c9                   	leave  
801040c6:	c3                   	ret    
    return -1;
801040c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801040cc:	eb f7                	jmp    801040c5 <argstr+0x2e>

801040ce <syscall>:
[SYS_dup2]    sys_dup2,
};

void
syscall(void)
{
801040ce:	f3 0f 1e fb          	endbr32 
801040d2:	55                   	push   %ebp
801040d3:	89 e5                	mov    %esp,%ebp
801040d5:	53                   	push   %ebx
801040d6:	83 ec 04             	sub    $0x4,%esp
  int num;
  struct proc *curproc = myproc();
801040d9:	e8 02 f2 ff ff       	call   801032e0 <myproc>
801040de:	89 c3                	mov    %eax,%ebx

  num = curproc->tf->eax;
801040e0:	8b 40 18             	mov    0x18(%eax),%eax
801040e3:	8b 40 1c             	mov    0x1c(%eax),%eax
  if(num > 0 && num < NELEM(syscalls) && syscalls[num]) {
801040e6:	8d 50 ff             	lea    -0x1(%eax),%edx
801040e9:	83 fa 16             	cmp    $0x16,%edx
801040ec:	77 17                	ja     80104105 <syscall+0x37>
801040ee:	8b 14 85 c0 6d 10 80 	mov    -0x7fef9240(,%eax,4),%edx
801040f5:	85 d2                	test   %edx,%edx
801040f7:	74 0c                	je     80104105 <syscall+0x37>
    curproc->tf->eax = syscalls[num]();
801040f9:	ff d2                	call   *%edx
801040fb:	89 c2                	mov    %eax,%edx
801040fd:	8b 43 18             	mov    0x18(%ebx),%eax
80104100:	89 50 1c             	mov    %edx,0x1c(%eax)
80104103:	eb 1f                	jmp    80104124 <syscall+0x56>
  } else {
    cprintf("%d %s: unknown sys call %d\n",
            curproc->pid, curproc->name, num);
80104105:	8d 53 6c             	lea    0x6c(%ebx),%edx
    cprintf("%d %s: unknown sys call %d\n",
80104108:	50                   	push   %eax
80104109:	52                   	push   %edx
8010410a:	ff 73 10             	pushl  0x10(%ebx)
8010410d:	68 9d 6d 10 80       	push   $0x80106d9d
80104112:	e8 12 c5 ff ff       	call   80100629 <cprintf>
    curproc->tf->eax = -1;
80104117:	8b 43 18             	mov    0x18(%ebx),%eax
8010411a:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
80104121:	83 c4 10             	add    $0x10,%esp
  }
}
80104124:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104127:	c9                   	leave  
80104128:	c3                   	ret    

80104129 <argfd>:

// Fetch the nth word-sized system call argument as a file descriptor
// and return both the descriptor and the corresponding struct file.
static int
argfd(int n, int *pfd, struct file **pf)
{
80104129:	55                   	push   %ebp
8010412a:	89 e5                	mov    %esp,%ebp
8010412c:	56                   	push   %esi
8010412d:	53                   	push   %ebx
8010412e:	83 ec 18             	sub    $0x18,%esp
80104131:	89 d6                	mov    %edx,%esi
80104133:	89 cb                	mov    %ecx,%ebx
  int fd;
  struct file *f;

  if(argint(n, &fd) < 0)
80104135:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104138:	52                   	push   %edx
80104139:	50                   	push   %eax
8010413a:	e8 c0 fe ff ff       	call   80103fff <argint>
8010413f:	83 c4 10             	add    $0x10,%esp
80104142:	85 c0                	test   %eax,%eax
80104144:	78 35                	js     8010417b <argfd+0x52>
    return -1;
  if(fd < 0 || fd >= NOFILE || (f=myproc()->ofile[fd]) == 0)
80104146:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
8010414a:	77 28                	ja     80104174 <argfd+0x4b>
8010414c:	e8 8f f1 ff ff       	call   801032e0 <myproc>
80104151:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104154:	8b 44 90 28          	mov    0x28(%eax,%edx,4),%eax
80104158:	85 c0                	test   %eax,%eax
8010415a:	74 18                	je     80104174 <argfd+0x4b>
    return -1;
  if(pfd)
8010415c:	85 f6                	test   %esi,%esi
8010415e:	74 02                	je     80104162 <argfd+0x39>
    *pfd = fd;
80104160:	89 16                	mov    %edx,(%esi)
  if(pf)
80104162:	85 db                	test   %ebx,%ebx
80104164:	74 1c                	je     80104182 <argfd+0x59>
    *pf = f;
80104166:	89 03                	mov    %eax,(%ebx)
  return 0;
80104168:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010416d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104170:	5b                   	pop    %ebx
80104171:	5e                   	pop    %esi
80104172:	5d                   	pop    %ebp
80104173:	c3                   	ret    
    return -1;
80104174:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104179:	eb f2                	jmp    8010416d <argfd+0x44>
    return -1;
8010417b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104180:	eb eb                	jmp    8010416d <argfd+0x44>
  return 0;
80104182:	b8 00 00 00 00       	mov    $0x0,%eax
80104187:	eb e4                	jmp    8010416d <argfd+0x44>

80104189 <fdalloc>:

// Allocate a file descriptor for the given file.
// Takes over file reference from caller on success.
static int
fdalloc(struct file *f)
{
80104189:	55                   	push   %ebp
8010418a:	89 e5                	mov    %esp,%ebp
8010418c:	53                   	push   %ebx
8010418d:	83 ec 04             	sub    $0x4,%esp
80104190:	89 c3                	mov    %eax,%ebx
  int fd;
  struct proc *curproc = myproc();
80104192:	e8 49 f1 ff ff       	call   801032e0 <myproc>
80104197:	89 c2                	mov    %eax,%edx

  for(fd = 0; fd < NOFILE; fd++){
80104199:	b8 00 00 00 00       	mov    $0x0,%eax
8010419e:	83 f8 0f             	cmp    $0xf,%eax
801041a1:	7f 12                	jg     801041b5 <fdalloc+0x2c>
    if(curproc->ofile[fd] == 0){
801041a3:	83 7c 82 28 00       	cmpl   $0x0,0x28(%edx,%eax,4)
801041a8:	74 05                	je     801041af <fdalloc+0x26>
  for(fd = 0; fd < NOFILE; fd++){
801041aa:	83 c0 01             	add    $0x1,%eax
801041ad:	eb ef                	jmp    8010419e <fdalloc+0x15>
      curproc->ofile[fd] = f;
801041af:	89 5c 82 28          	mov    %ebx,0x28(%edx,%eax,4)
      return fd;
801041b3:	eb 05                	jmp    801041ba <fdalloc+0x31>
    }
  }
  return -1;
801041b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
801041ba:	83 c4 04             	add    $0x4,%esp
801041bd:	5b                   	pop    %ebx
801041be:	5d                   	pop    %ebp
801041bf:	c3                   	ret    

801041c0 <isdirempty>:
}

// Is the directory dp empty except for "." and ".." ?
static int
isdirempty(struct inode *dp)
{
801041c0:	55                   	push   %ebp
801041c1:	89 e5                	mov    %esp,%ebp
801041c3:	56                   	push   %esi
801041c4:	53                   	push   %ebx
801041c5:	83 ec 10             	sub    $0x10,%esp
801041c8:	89 c3                	mov    %eax,%ebx
  int off;
  struct dirent de;

  for(off=2*sizeof(de); off<dp->size; off+=sizeof(de)){
801041ca:	b8 20 00 00 00       	mov    $0x20,%eax
801041cf:	89 c6                	mov    %eax,%esi
801041d1:	39 43 58             	cmp    %eax,0x58(%ebx)
801041d4:	76 2e                	jbe    80104204 <isdirempty+0x44>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
801041d6:	6a 10                	push   $0x10
801041d8:	50                   	push   %eax
801041d9:	8d 45 e8             	lea    -0x18(%ebp),%eax
801041dc:	50                   	push   %eax
801041dd:	53                   	push   %ebx
801041de:	e8 08 d6 ff ff       	call   801017eb <readi>
801041e3:	83 c4 10             	add    $0x10,%esp
801041e6:	83 f8 10             	cmp    $0x10,%eax
801041e9:	75 0c                	jne    801041f7 <isdirempty+0x37>
      panic("isdirempty: readi");
    if(de.inum != 0)
801041eb:	66 83 7d e8 00       	cmpw   $0x0,-0x18(%ebp)
801041f0:	75 1e                	jne    80104210 <isdirempty+0x50>
  for(off=2*sizeof(de); off<dp->size; off+=sizeof(de)){
801041f2:	8d 46 10             	lea    0x10(%esi),%eax
801041f5:	eb d8                	jmp    801041cf <isdirempty+0xf>
      panic("isdirempty: readi");
801041f7:	83 ec 0c             	sub    $0xc,%esp
801041fa:	68 20 6e 10 80       	push   $0x80106e20
801041ff:	e8 58 c1 ff ff       	call   8010035c <panic>
      return 0;
  }
  return 1;
80104204:	b8 01 00 00 00       	mov    $0x1,%eax
}
80104209:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010420c:	5b                   	pop    %ebx
8010420d:	5e                   	pop    %esi
8010420e:	5d                   	pop    %ebp
8010420f:	c3                   	ret    
      return 0;
80104210:	b8 00 00 00 00       	mov    $0x0,%eax
80104215:	eb f2                	jmp    80104209 <isdirempty+0x49>

80104217 <create>:
  return -1;
}

static struct inode*
create(char *path, short type, short major, short minor)
{
80104217:	55                   	push   %ebp
80104218:	89 e5                	mov    %esp,%ebp
8010421a:	57                   	push   %edi
8010421b:	56                   	push   %esi
8010421c:	53                   	push   %ebx
8010421d:	83 ec 44             	sub    $0x44,%esp
80104220:	89 55 c4             	mov    %edx,-0x3c(%ebp)
80104223:	89 4d c0             	mov    %ecx,-0x40(%ebp)
80104226:	8b 7d 08             	mov    0x8(%ebp),%edi
  uint off;
  struct inode *ip, *dp;
  char name[DIRSIZ];

  if((dp = nameiparent(path, name)) == 0)
80104229:	8d 55 d6             	lea    -0x2a(%ebp),%edx
8010422c:	52                   	push   %edx
8010422d:	50                   	push   %eax
8010422e:	e8 53 da ff ff       	call   80101c86 <nameiparent>
80104233:	89 c6                	mov    %eax,%esi
80104235:	83 c4 10             	add    $0x10,%esp
80104238:	85 c0                	test   %eax,%eax
8010423a:	0f 84 35 01 00 00    	je     80104375 <create+0x15e>
    return 0;
  ilock(dp);
80104240:	83 ec 0c             	sub    $0xc,%esp
80104243:	50                   	push   %eax
80104244:	e8 9c d3 ff ff       	call   801015e5 <ilock>

  if((ip = dirlookup(dp, name, &off)) != 0){
80104249:	83 c4 0c             	add    $0xc,%esp
8010424c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
8010424f:	50                   	push   %eax
80104250:	8d 45 d6             	lea    -0x2a(%ebp),%eax
80104253:	50                   	push   %eax
80104254:	56                   	push   %esi
80104255:	e8 da d7 ff ff       	call   80101a34 <dirlookup>
8010425a:	89 c3                	mov    %eax,%ebx
8010425c:	83 c4 10             	add    $0x10,%esp
8010425f:	85 c0                	test   %eax,%eax
80104261:	74 3d                	je     801042a0 <create+0x89>
    iunlockput(dp);
80104263:	83 ec 0c             	sub    $0xc,%esp
80104266:	56                   	push   %esi
80104267:	e8 2c d5 ff ff       	call   80101798 <iunlockput>
    ilock(ip);
8010426c:	89 1c 24             	mov    %ebx,(%esp)
8010426f:	e8 71 d3 ff ff       	call   801015e5 <ilock>
    if(type == T_FILE && ip->type == T_FILE)
80104274:	83 c4 10             	add    $0x10,%esp
80104277:	66 83 7d c4 02       	cmpw   $0x2,-0x3c(%ebp)
8010427c:	75 07                	jne    80104285 <create+0x6e>
8010427e:	66 83 7b 50 02       	cmpw   $0x2,0x50(%ebx)
80104283:	74 11                	je     80104296 <create+0x7f>
      return ip;
    iunlockput(ip);
80104285:	83 ec 0c             	sub    $0xc,%esp
80104288:	53                   	push   %ebx
80104289:	e8 0a d5 ff ff       	call   80101798 <iunlockput>
    return 0;
8010428e:	83 c4 10             	add    $0x10,%esp
80104291:	bb 00 00 00 00       	mov    $0x0,%ebx
    panic("create: dirlink");

  iunlockput(dp);

  return ip;
}
80104296:	89 d8                	mov    %ebx,%eax
80104298:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010429b:	5b                   	pop    %ebx
8010429c:	5e                   	pop    %esi
8010429d:	5f                   	pop    %edi
8010429e:	5d                   	pop    %ebp
8010429f:	c3                   	ret    
  if((ip = ialloc(dp->dev, type)) == 0)
801042a0:	83 ec 08             	sub    $0x8,%esp
801042a3:	0f bf 45 c4          	movswl -0x3c(%ebp),%eax
801042a7:	50                   	push   %eax
801042a8:	ff 36                	pushl  (%esi)
801042aa:	e8 27 d1 ff ff       	call   801013d6 <ialloc>
801042af:	89 c3                	mov    %eax,%ebx
801042b1:	83 c4 10             	add    $0x10,%esp
801042b4:	85 c0                	test   %eax,%eax
801042b6:	74 52                	je     8010430a <create+0xf3>
  ilock(ip);
801042b8:	83 ec 0c             	sub    $0xc,%esp
801042bb:	50                   	push   %eax
801042bc:	e8 24 d3 ff ff       	call   801015e5 <ilock>
  ip->major = major;
801042c1:	0f b7 45 c0          	movzwl -0x40(%ebp),%eax
801042c5:	66 89 43 52          	mov    %ax,0x52(%ebx)
  ip->minor = minor;
801042c9:	66 89 7b 54          	mov    %di,0x54(%ebx)
  ip->nlink = 1;
801042cd:	66 c7 43 56 01 00    	movw   $0x1,0x56(%ebx)
  iupdate(ip);
801042d3:	89 1c 24             	mov    %ebx,(%esp)
801042d6:	e8 a1 d1 ff ff       	call   8010147c <iupdate>
  if(type == T_DIR){  // Create . and .. entries.
801042db:	83 c4 10             	add    $0x10,%esp
801042de:	66 83 7d c4 01       	cmpw   $0x1,-0x3c(%ebp)
801042e3:	74 32                	je     80104317 <create+0x100>
  if(dirlink(dp, name, ip->inum) < 0)
801042e5:	83 ec 04             	sub    $0x4,%esp
801042e8:	ff 73 04             	pushl  0x4(%ebx)
801042eb:	8d 45 d6             	lea    -0x2a(%ebp),%eax
801042ee:	50                   	push   %eax
801042ef:	56                   	push   %esi
801042f0:	e8 c0 d8 ff ff       	call   80101bb5 <dirlink>
801042f5:	83 c4 10             	add    $0x10,%esp
801042f8:	85 c0                	test   %eax,%eax
801042fa:	78 6c                	js     80104368 <create+0x151>
  iunlockput(dp);
801042fc:	83 ec 0c             	sub    $0xc,%esp
801042ff:	56                   	push   %esi
80104300:	e8 93 d4 ff ff       	call   80101798 <iunlockput>
  return ip;
80104305:	83 c4 10             	add    $0x10,%esp
80104308:	eb 8c                	jmp    80104296 <create+0x7f>
    panic("create: ialloc");
8010430a:	83 ec 0c             	sub    $0xc,%esp
8010430d:	68 32 6e 10 80       	push   $0x80106e32
80104312:	e8 45 c0 ff ff       	call   8010035c <panic>
    dp->nlink++;  // for ".."
80104317:	0f b7 46 56          	movzwl 0x56(%esi),%eax
8010431b:	83 c0 01             	add    $0x1,%eax
8010431e:	66 89 46 56          	mov    %ax,0x56(%esi)
    iupdate(dp);
80104322:	83 ec 0c             	sub    $0xc,%esp
80104325:	56                   	push   %esi
80104326:	e8 51 d1 ff ff       	call   8010147c <iupdate>
    if(dirlink(ip, ".", ip->inum) < 0 || dirlink(ip, "..", dp->inum) < 0)
8010432b:	83 c4 0c             	add    $0xc,%esp
8010432e:	ff 73 04             	pushl  0x4(%ebx)
80104331:	68 42 6e 10 80       	push   $0x80106e42
80104336:	53                   	push   %ebx
80104337:	e8 79 d8 ff ff       	call   80101bb5 <dirlink>
8010433c:	83 c4 10             	add    $0x10,%esp
8010433f:	85 c0                	test   %eax,%eax
80104341:	78 18                	js     8010435b <create+0x144>
80104343:	83 ec 04             	sub    $0x4,%esp
80104346:	ff 76 04             	pushl  0x4(%esi)
80104349:	68 41 6e 10 80       	push   $0x80106e41
8010434e:	53                   	push   %ebx
8010434f:	e8 61 d8 ff ff       	call   80101bb5 <dirlink>
80104354:	83 c4 10             	add    $0x10,%esp
80104357:	85 c0                	test   %eax,%eax
80104359:	79 8a                	jns    801042e5 <create+0xce>
      panic("create dots");
8010435b:	83 ec 0c             	sub    $0xc,%esp
8010435e:	68 44 6e 10 80       	push   $0x80106e44
80104363:	e8 f4 bf ff ff       	call   8010035c <panic>
    panic("create: dirlink");
80104368:	83 ec 0c             	sub    $0xc,%esp
8010436b:	68 50 6e 10 80       	push   $0x80106e50
80104370:	e8 e7 bf ff ff       	call   8010035c <panic>
    return 0;
80104375:	89 c3                	mov    %eax,%ebx
80104377:	e9 1a ff ff ff       	jmp    80104296 <create+0x7f>

8010437c <sys_dup>:
{
8010437c:	f3 0f 1e fb          	endbr32 
80104380:	55                   	push   %ebp
80104381:	89 e5                	mov    %esp,%ebp
80104383:	53                   	push   %ebx
80104384:	83 ec 14             	sub    $0x14,%esp
  if(argfd(0, 0, &f) < 0)
80104387:	8d 4d f4             	lea    -0xc(%ebp),%ecx
8010438a:	ba 00 00 00 00       	mov    $0x0,%edx
8010438f:	b8 00 00 00 00       	mov    $0x0,%eax
80104394:	e8 90 fd ff ff       	call   80104129 <argfd>
80104399:	85 c0                	test   %eax,%eax
8010439b:	78 23                	js     801043c0 <sys_dup+0x44>
  if((fd=fdalloc(f)) < 0)
8010439d:	8b 45 f4             	mov    -0xc(%ebp),%eax
801043a0:	e8 e4 fd ff ff       	call   80104189 <fdalloc>
801043a5:	89 c3                	mov    %eax,%ebx
801043a7:	85 c0                	test   %eax,%eax
801043a9:	78 1c                	js     801043c7 <sys_dup+0x4b>
  filedup(f);
801043ab:	83 ec 0c             	sub    $0xc,%esp
801043ae:	ff 75 f4             	pushl  -0xc(%ebp)
801043b1:	e8 13 c9 ff ff       	call   80100cc9 <filedup>
  return fd;
801043b6:	83 c4 10             	add    $0x10,%esp
}
801043b9:	89 d8                	mov    %ebx,%eax
801043bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801043be:	c9                   	leave  
801043bf:	c3                   	ret    
    return -1;
801043c0:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801043c5:	eb f2                	jmp    801043b9 <sys_dup+0x3d>
    return -1;
801043c7:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801043cc:	eb eb                	jmp    801043b9 <sys_dup+0x3d>

801043ce <sys_dup2>:
{
801043ce:	f3 0f 1e fb          	endbr32 
801043d2:	55                   	push   %ebp
801043d3:	89 e5                	mov    %esp,%ebp
801043d5:	53                   	push   %ebx
801043d6:	83 ec 14             	sub    $0x14,%esp
 if(argfd(0,&fd_old,(struct file **)&f_old)<0 || fd_old < 0)
801043d9:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801043dc:	8d 55 ec             	lea    -0x14(%ebp),%edx
801043df:	b8 00 00 00 00       	mov    $0x0,%eax
801043e4:	e8 40 fd ff ff       	call   80104129 <argfd>
801043e9:	85 c0                	test   %eax,%eax
801043eb:	0f 88 86 00 00 00    	js     80104477 <sys_dup2+0xa9>
801043f1:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
801043f5:	0f 88 83 00 00 00    	js     8010447e <sys_dup2+0xb0>
 if(argint(1,&fd_new)<0 || fd_new<0)
801043fb:	83 ec 08             	sub    $0x8,%esp
801043fe:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104401:	50                   	push   %eax
80104402:	6a 01                	push   $0x1
80104404:	e8 f6 fb ff ff       	call   80103fff <argint>
80104409:	83 c4 10             	add    $0x10,%esp
8010440c:	85 c0                	test   %eax,%eax
8010440e:	78 75                	js     80104485 <sys_dup2+0xb7>
80104410:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104413:	85 c0                	test   %eax,%eax
80104415:	78 75                	js     8010448c <sys_dup2+0xbe>
 if(fd_new == fd_old)
80104417:	3b 45 ec             	cmp    -0x14(%ebp),%eax
8010441a:	74 56                	je     80104472 <sys_dup2+0xa4>
 if(myproc()->ofile[fd_new] != 0)
8010441c:	e8 bf ee ff ff       	call   801032e0 <myproc>
80104421:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104424:	83 7c 90 28 00       	cmpl   $0x0,0x28(%eax,%edx,4)
80104429:	74 28                	je     80104453 <sys_dup2+0x85>
  f_new = myproc()->ofile[fd_new];
8010442b:	e8 b0 ee ff ff       	call   801032e0 <myproc>
80104430:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104433:	8b 5c 90 28          	mov    0x28(%eax,%edx,4),%ebx
  myproc()->ofile[fd_new] = 0;
80104437:	e8 a4 ee ff ff       	call   801032e0 <myproc>
8010443c:	8b 55 f0             	mov    -0x10(%ebp),%edx
8010443f:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
80104446:	00 
  fileclose(f_new);
80104447:	83 ec 0c             	sub    $0xc,%esp
8010444a:	53                   	push   %ebx
8010444b:	e8 c2 c8 ff ff       	call   80100d12 <fileclose>
80104450:	83 c4 10             	add    $0x10,%esp
 filedup(f_old);
80104453:	83 ec 0c             	sub    $0xc,%esp
80104456:	ff 75 f4             	pushl  -0xc(%ebp)
80104459:	e8 6b c8 ff ff       	call   80100cc9 <filedup>
 myproc()->ofile[fd_new] = f_old;
8010445e:	e8 7d ee ff ff       	call   801032e0 <myproc>
80104463:	89 c2                	mov    %eax,%edx
80104465:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104468:	8b 4d f4             	mov    -0xc(%ebp),%ecx
8010446b:	89 4c 82 28          	mov    %ecx,0x28(%edx,%eax,4)
 return fd_new;
8010446f:	83 c4 10             	add    $0x10,%esp
}
80104472:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104475:	c9                   	leave  
80104476:	c3                   	ret    
 	return -1;
80104477:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010447c:	eb f4                	jmp    80104472 <sys_dup2+0xa4>
8010447e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104483:	eb ed                	jmp    80104472 <sys_dup2+0xa4>
 	return -1;
80104485:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010448a:	eb e6                	jmp    80104472 <sys_dup2+0xa4>
8010448c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104491:	eb df                	jmp    80104472 <sys_dup2+0xa4>

80104493 <sys_read>:
{
80104493:	f3 0f 1e fb          	endbr32 
80104497:	55                   	push   %ebp
80104498:	89 e5                	mov    %esp,%ebp
8010449a:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argint(2, &n) < 0 || argptr(1, (void**)&p, n) < 0)
8010449d:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801044a0:	ba 00 00 00 00       	mov    $0x0,%edx
801044a5:	b8 00 00 00 00       	mov    $0x0,%eax
801044aa:	e8 7a fc ff ff       	call   80104129 <argfd>
801044af:	85 c0                	test   %eax,%eax
801044b1:	78 43                	js     801044f6 <sys_read+0x63>
801044b3:	83 ec 08             	sub    $0x8,%esp
801044b6:	8d 45 f0             	lea    -0x10(%ebp),%eax
801044b9:	50                   	push   %eax
801044ba:	6a 02                	push   $0x2
801044bc:	e8 3e fb ff ff       	call   80103fff <argint>
801044c1:	83 c4 10             	add    $0x10,%esp
801044c4:	85 c0                	test   %eax,%eax
801044c6:	78 2e                	js     801044f6 <sys_read+0x63>
801044c8:	83 ec 04             	sub    $0x4,%esp
801044cb:	ff 75 f0             	pushl  -0x10(%ebp)
801044ce:	8d 45 ec             	lea    -0x14(%ebp),%eax
801044d1:	50                   	push   %eax
801044d2:	6a 01                	push   $0x1
801044d4:	e8 52 fb ff ff       	call   8010402b <argptr>
801044d9:	83 c4 10             	add    $0x10,%esp
801044dc:	85 c0                	test   %eax,%eax
801044de:	78 16                	js     801044f6 <sys_read+0x63>
  return fileread(f, p, n);
801044e0:	83 ec 04             	sub    $0x4,%esp
801044e3:	ff 75 f0             	pushl  -0x10(%ebp)
801044e6:	ff 75 ec             	pushl  -0x14(%ebp)
801044e9:	ff 75 f4             	pushl  -0xc(%ebp)
801044ec:	e8 2a c9 ff ff       	call   80100e1b <fileread>
801044f1:	83 c4 10             	add    $0x10,%esp
}
801044f4:	c9                   	leave  
801044f5:	c3                   	ret    
    return -1;
801044f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801044fb:	eb f7                	jmp    801044f4 <sys_read+0x61>

801044fd <sys_write>:
{
801044fd:	f3 0f 1e fb          	endbr32 
80104501:	55                   	push   %ebp
80104502:	89 e5                	mov    %esp,%ebp
80104504:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argint(2, &n) < 0 || argptr(1, (void**)&p, n) < 0)
80104507:	8d 4d f4             	lea    -0xc(%ebp),%ecx
8010450a:	ba 00 00 00 00       	mov    $0x0,%edx
8010450f:	b8 00 00 00 00       	mov    $0x0,%eax
80104514:	e8 10 fc ff ff       	call   80104129 <argfd>
80104519:	85 c0                	test   %eax,%eax
8010451b:	78 43                	js     80104560 <sys_write+0x63>
8010451d:	83 ec 08             	sub    $0x8,%esp
80104520:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104523:	50                   	push   %eax
80104524:	6a 02                	push   $0x2
80104526:	e8 d4 fa ff ff       	call   80103fff <argint>
8010452b:	83 c4 10             	add    $0x10,%esp
8010452e:	85 c0                	test   %eax,%eax
80104530:	78 2e                	js     80104560 <sys_write+0x63>
80104532:	83 ec 04             	sub    $0x4,%esp
80104535:	ff 75 f0             	pushl  -0x10(%ebp)
80104538:	8d 45 ec             	lea    -0x14(%ebp),%eax
8010453b:	50                   	push   %eax
8010453c:	6a 01                	push   $0x1
8010453e:	e8 e8 fa ff ff       	call   8010402b <argptr>
80104543:	83 c4 10             	add    $0x10,%esp
80104546:	85 c0                	test   %eax,%eax
80104548:	78 16                	js     80104560 <sys_write+0x63>
  return filewrite(f, p, n);
8010454a:	83 ec 04             	sub    $0x4,%esp
8010454d:	ff 75 f0             	pushl  -0x10(%ebp)
80104550:	ff 75 ec             	pushl  -0x14(%ebp)
80104553:	ff 75 f4             	pushl  -0xc(%ebp)
80104556:	e8 49 c9 ff ff       	call   80100ea4 <filewrite>
8010455b:	83 c4 10             	add    $0x10,%esp
}
8010455e:	c9                   	leave  
8010455f:	c3                   	ret    
    return -1;
80104560:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104565:	eb f7                	jmp    8010455e <sys_write+0x61>

80104567 <sys_close>:
{
80104567:	f3 0f 1e fb          	endbr32 
8010456b:	55                   	push   %ebp
8010456c:	89 e5                	mov    %esp,%ebp
8010456e:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, &fd, &f) < 0)
80104571:	8d 4d f0             	lea    -0x10(%ebp),%ecx
80104574:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104577:	b8 00 00 00 00       	mov    $0x0,%eax
8010457c:	e8 a8 fb ff ff       	call   80104129 <argfd>
80104581:	85 c0                	test   %eax,%eax
80104583:	78 25                	js     801045aa <sys_close+0x43>
  myproc()->ofile[fd] = 0;
80104585:	e8 56 ed ff ff       	call   801032e0 <myproc>
8010458a:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010458d:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
80104594:	00 
  fileclose(f);
80104595:	83 ec 0c             	sub    $0xc,%esp
80104598:	ff 75 f0             	pushl  -0x10(%ebp)
8010459b:	e8 72 c7 ff ff       	call   80100d12 <fileclose>
  return 0;
801045a0:	83 c4 10             	add    $0x10,%esp
801045a3:	b8 00 00 00 00       	mov    $0x0,%eax
}
801045a8:	c9                   	leave  
801045a9:	c3                   	ret    
    return -1;
801045aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801045af:	eb f7                	jmp    801045a8 <sys_close+0x41>

801045b1 <sys_fstat>:
{
801045b1:	f3 0f 1e fb          	endbr32 
801045b5:	55                   	push   %ebp
801045b6:	89 e5                	mov    %esp,%ebp
801045b8:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argptr(1, (void*)&st, sizeof(*st)) < 0)
801045bb:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801045be:	ba 00 00 00 00       	mov    $0x0,%edx
801045c3:	b8 00 00 00 00       	mov    $0x0,%eax
801045c8:	e8 5c fb ff ff       	call   80104129 <argfd>
801045cd:	85 c0                	test   %eax,%eax
801045cf:	78 2a                	js     801045fb <sys_fstat+0x4a>
801045d1:	83 ec 04             	sub    $0x4,%esp
801045d4:	6a 14                	push   $0x14
801045d6:	8d 45 f0             	lea    -0x10(%ebp),%eax
801045d9:	50                   	push   %eax
801045da:	6a 01                	push   $0x1
801045dc:	e8 4a fa ff ff       	call   8010402b <argptr>
801045e1:	83 c4 10             	add    $0x10,%esp
801045e4:	85 c0                	test   %eax,%eax
801045e6:	78 13                	js     801045fb <sys_fstat+0x4a>
  return filestat(f, st);
801045e8:	83 ec 08             	sub    $0x8,%esp
801045eb:	ff 75 f0             	pushl  -0x10(%ebp)
801045ee:	ff 75 f4             	pushl  -0xc(%ebp)
801045f1:	e8 da c7 ff ff       	call   80100dd0 <filestat>
801045f6:	83 c4 10             	add    $0x10,%esp
}
801045f9:	c9                   	leave  
801045fa:	c3                   	ret    
    return -1;
801045fb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104600:	eb f7                	jmp    801045f9 <sys_fstat+0x48>

80104602 <sys_link>:
{
80104602:	f3 0f 1e fb          	endbr32 
80104606:	55                   	push   %ebp
80104607:	89 e5                	mov    %esp,%ebp
80104609:	56                   	push   %esi
8010460a:	53                   	push   %ebx
8010460b:	83 ec 28             	sub    $0x28,%esp
  if(argstr(0, &old) < 0 || argstr(1, &new) < 0)
8010460e:	8d 45 e0             	lea    -0x20(%ebp),%eax
80104611:	50                   	push   %eax
80104612:	6a 00                	push   $0x0
80104614:	e8 7e fa ff ff       	call   80104097 <argstr>
80104619:	83 c4 10             	add    $0x10,%esp
8010461c:	85 c0                	test   %eax,%eax
8010461e:	0f 88 d3 00 00 00    	js     801046f7 <sys_link+0xf5>
80104624:	83 ec 08             	sub    $0x8,%esp
80104627:	8d 45 e4             	lea    -0x1c(%ebp),%eax
8010462a:	50                   	push   %eax
8010462b:	6a 01                	push   $0x1
8010462d:	e8 65 fa ff ff       	call   80104097 <argstr>
80104632:	83 c4 10             	add    $0x10,%esp
80104635:	85 c0                	test   %eax,%eax
80104637:	0f 88 ba 00 00 00    	js     801046f7 <sys_link+0xf5>
  begin_op();
8010463d:	e8 28 e2 ff ff       	call   8010286a <begin_op>
  if((ip = namei(old)) == 0){
80104642:	83 ec 0c             	sub    $0xc,%esp
80104645:	ff 75 e0             	pushl  -0x20(%ebp)
80104648:	e8 1d d6 ff ff       	call   80101c6a <namei>
8010464d:	89 c3                	mov    %eax,%ebx
8010464f:	83 c4 10             	add    $0x10,%esp
80104652:	85 c0                	test   %eax,%eax
80104654:	0f 84 a4 00 00 00    	je     801046fe <sys_link+0xfc>
  ilock(ip);
8010465a:	83 ec 0c             	sub    $0xc,%esp
8010465d:	50                   	push   %eax
8010465e:	e8 82 cf ff ff       	call   801015e5 <ilock>
  if(ip->type == T_DIR){
80104663:	83 c4 10             	add    $0x10,%esp
80104666:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
8010466b:	0f 84 99 00 00 00    	je     8010470a <sys_link+0x108>
  ip->nlink++;
80104671:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
80104675:	83 c0 01             	add    $0x1,%eax
80104678:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
8010467c:	83 ec 0c             	sub    $0xc,%esp
8010467f:	53                   	push   %ebx
80104680:	e8 f7 cd ff ff       	call   8010147c <iupdate>
  iunlock(ip);
80104685:	89 1c 24             	mov    %ebx,(%esp)
80104688:	e8 1e d0 ff ff       	call   801016ab <iunlock>
  if((dp = nameiparent(new, name)) == 0)
8010468d:	83 c4 08             	add    $0x8,%esp
80104690:	8d 45 ea             	lea    -0x16(%ebp),%eax
80104693:	50                   	push   %eax
80104694:	ff 75 e4             	pushl  -0x1c(%ebp)
80104697:	e8 ea d5 ff ff       	call   80101c86 <nameiparent>
8010469c:	89 c6                	mov    %eax,%esi
8010469e:	83 c4 10             	add    $0x10,%esp
801046a1:	85 c0                	test   %eax,%eax
801046a3:	0f 84 85 00 00 00    	je     8010472e <sys_link+0x12c>
  ilock(dp);
801046a9:	83 ec 0c             	sub    $0xc,%esp
801046ac:	50                   	push   %eax
801046ad:	e8 33 cf ff ff       	call   801015e5 <ilock>
  if(dp->dev != ip->dev || dirlink(dp, name, ip->inum) < 0){
801046b2:	83 c4 10             	add    $0x10,%esp
801046b5:	8b 03                	mov    (%ebx),%eax
801046b7:	39 06                	cmp    %eax,(%esi)
801046b9:	75 67                	jne    80104722 <sys_link+0x120>
801046bb:	83 ec 04             	sub    $0x4,%esp
801046be:	ff 73 04             	pushl  0x4(%ebx)
801046c1:	8d 45 ea             	lea    -0x16(%ebp),%eax
801046c4:	50                   	push   %eax
801046c5:	56                   	push   %esi
801046c6:	e8 ea d4 ff ff       	call   80101bb5 <dirlink>
801046cb:	83 c4 10             	add    $0x10,%esp
801046ce:	85 c0                	test   %eax,%eax
801046d0:	78 50                	js     80104722 <sys_link+0x120>
  iunlockput(dp);
801046d2:	83 ec 0c             	sub    $0xc,%esp
801046d5:	56                   	push   %esi
801046d6:	e8 bd d0 ff ff       	call   80101798 <iunlockput>
  iput(ip);
801046db:	89 1c 24             	mov    %ebx,(%esp)
801046de:	e8 11 d0 ff ff       	call   801016f4 <iput>
  end_op();
801046e3:	e8 00 e2 ff ff       	call   801028e8 <end_op>
  return 0;
801046e8:	83 c4 10             	add    $0x10,%esp
801046eb:	b8 00 00 00 00       	mov    $0x0,%eax
}
801046f0:	8d 65 f8             	lea    -0x8(%ebp),%esp
801046f3:	5b                   	pop    %ebx
801046f4:	5e                   	pop    %esi
801046f5:	5d                   	pop    %ebp
801046f6:	c3                   	ret    
    return -1;
801046f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801046fc:	eb f2                	jmp    801046f0 <sys_link+0xee>
    end_op();
801046fe:	e8 e5 e1 ff ff       	call   801028e8 <end_op>
    return -1;
80104703:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104708:	eb e6                	jmp    801046f0 <sys_link+0xee>
    iunlockput(ip);
8010470a:	83 ec 0c             	sub    $0xc,%esp
8010470d:	53                   	push   %ebx
8010470e:	e8 85 d0 ff ff       	call   80101798 <iunlockput>
    end_op();
80104713:	e8 d0 e1 ff ff       	call   801028e8 <end_op>
    return -1;
80104718:	83 c4 10             	add    $0x10,%esp
8010471b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104720:	eb ce                	jmp    801046f0 <sys_link+0xee>
    iunlockput(dp);
80104722:	83 ec 0c             	sub    $0xc,%esp
80104725:	56                   	push   %esi
80104726:	e8 6d d0 ff ff       	call   80101798 <iunlockput>
    goto bad;
8010472b:	83 c4 10             	add    $0x10,%esp
  ilock(ip);
8010472e:	83 ec 0c             	sub    $0xc,%esp
80104731:	53                   	push   %ebx
80104732:	e8 ae ce ff ff       	call   801015e5 <ilock>
  ip->nlink--;
80104737:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
8010473b:	83 e8 01             	sub    $0x1,%eax
8010473e:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
80104742:	89 1c 24             	mov    %ebx,(%esp)
80104745:	e8 32 cd ff ff       	call   8010147c <iupdate>
  iunlockput(ip);
8010474a:	89 1c 24             	mov    %ebx,(%esp)
8010474d:	e8 46 d0 ff ff       	call   80101798 <iunlockput>
  end_op();
80104752:	e8 91 e1 ff ff       	call   801028e8 <end_op>
  return -1;
80104757:	83 c4 10             	add    $0x10,%esp
8010475a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010475f:	eb 8f                	jmp    801046f0 <sys_link+0xee>

80104761 <sys_unlink>:
{
80104761:	f3 0f 1e fb          	endbr32 
80104765:	55                   	push   %ebp
80104766:	89 e5                	mov    %esp,%ebp
80104768:	57                   	push   %edi
80104769:	56                   	push   %esi
8010476a:	53                   	push   %ebx
8010476b:	83 ec 44             	sub    $0x44,%esp
  if(argstr(0, &path) < 0)
8010476e:	8d 45 c4             	lea    -0x3c(%ebp),%eax
80104771:	50                   	push   %eax
80104772:	6a 00                	push   $0x0
80104774:	e8 1e f9 ff ff       	call   80104097 <argstr>
80104779:	83 c4 10             	add    $0x10,%esp
8010477c:	85 c0                	test   %eax,%eax
8010477e:	0f 88 83 01 00 00    	js     80104907 <sys_unlink+0x1a6>
  begin_op();
80104784:	e8 e1 e0 ff ff       	call   8010286a <begin_op>
  if((dp = nameiparent(path, name)) == 0){
80104789:	83 ec 08             	sub    $0x8,%esp
8010478c:	8d 45 ca             	lea    -0x36(%ebp),%eax
8010478f:	50                   	push   %eax
80104790:	ff 75 c4             	pushl  -0x3c(%ebp)
80104793:	e8 ee d4 ff ff       	call   80101c86 <nameiparent>
80104798:	89 c6                	mov    %eax,%esi
8010479a:	83 c4 10             	add    $0x10,%esp
8010479d:	85 c0                	test   %eax,%eax
8010479f:	0f 84 ed 00 00 00    	je     80104892 <sys_unlink+0x131>
  ilock(dp);
801047a5:	83 ec 0c             	sub    $0xc,%esp
801047a8:	50                   	push   %eax
801047a9:	e8 37 ce ff ff       	call   801015e5 <ilock>
  if(namecmp(name, ".") == 0 || namecmp(name, "..") == 0)
801047ae:	83 c4 08             	add    $0x8,%esp
801047b1:	68 42 6e 10 80       	push   $0x80106e42
801047b6:	8d 45 ca             	lea    -0x36(%ebp),%eax
801047b9:	50                   	push   %eax
801047ba:	e8 5c d2 ff ff       	call   80101a1b <namecmp>
801047bf:	83 c4 10             	add    $0x10,%esp
801047c2:	85 c0                	test   %eax,%eax
801047c4:	0f 84 fc 00 00 00    	je     801048c6 <sys_unlink+0x165>
801047ca:	83 ec 08             	sub    $0x8,%esp
801047cd:	68 41 6e 10 80       	push   $0x80106e41
801047d2:	8d 45 ca             	lea    -0x36(%ebp),%eax
801047d5:	50                   	push   %eax
801047d6:	e8 40 d2 ff ff       	call   80101a1b <namecmp>
801047db:	83 c4 10             	add    $0x10,%esp
801047de:	85 c0                	test   %eax,%eax
801047e0:	0f 84 e0 00 00 00    	je     801048c6 <sys_unlink+0x165>
  if((ip = dirlookup(dp, name, &off)) == 0)
801047e6:	83 ec 04             	sub    $0x4,%esp
801047e9:	8d 45 c0             	lea    -0x40(%ebp),%eax
801047ec:	50                   	push   %eax
801047ed:	8d 45 ca             	lea    -0x36(%ebp),%eax
801047f0:	50                   	push   %eax
801047f1:	56                   	push   %esi
801047f2:	e8 3d d2 ff ff       	call   80101a34 <dirlookup>
801047f7:	89 c3                	mov    %eax,%ebx
801047f9:	83 c4 10             	add    $0x10,%esp
801047fc:	85 c0                	test   %eax,%eax
801047fe:	0f 84 c2 00 00 00    	je     801048c6 <sys_unlink+0x165>
  ilock(ip);
80104804:	83 ec 0c             	sub    $0xc,%esp
80104807:	50                   	push   %eax
80104808:	e8 d8 cd ff ff       	call   801015e5 <ilock>
  if(ip->nlink < 1)
8010480d:	83 c4 10             	add    $0x10,%esp
80104810:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
80104815:	0f 8e 83 00 00 00    	jle    8010489e <sys_unlink+0x13d>
  if(ip->type == T_DIR && !isdirempty(ip)){
8010481b:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104820:	0f 84 85 00 00 00    	je     801048ab <sys_unlink+0x14a>
  memset(&de, 0, sizeof(de));
80104826:	83 ec 04             	sub    $0x4,%esp
80104829:	6a 10                	push   $0x10
8010482b:	6a 00                	push   $0x0
8010482d:	8d 7d d8             	lea    -0x28(%ebp),%edi
80104830:	57                   	push   %edi
80104831:	e8 53 f5 ff ff       	call   80103d89 <memset>
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80104836:	6a 10                	push   $0x10
80104838:	ff 75 c0             	pushl  -0x40(%ebp)
8010483b:	57                   	push   %edi
8010483c:	56                   	push   %esi
8010483d:	e8 aa d0 ff ff       	call   801018ec <writei>
80104842:	83 c4 20             	add    $0x20,%esp
80104845:	83 f8 10             	cmp    $0x10,%eax
80104848:	0f 85 90 00 00 00    	jne    801048de <sys_unlink+0x17d>
  if(ip->type == T_DIR){
8010484e:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104853:	0f 84 92 00 00 00    	je     801048eb <sys_unlink+0x18a>
  iunlockput(dp);
80104859:	83 ec 0c             	sub    $0xc,%esp
8010485c:	56                   	push   %esi
8010485d:	e8 36 cf ff ff       	call   80101798 <iunlockput>
  ip->nlink--;
80104862:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
80104866:	83 e8 01             	sub    $0x1,%eax
80104869:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
8010486d:	89 1c 24             	mov    %ebx,(%esp)
80104870:	e8 07 cc ff ff       	call   8010147c <iupdate>
  iunlockput(ip);
80104875:	89 1c 24             	mov    %ebx,(%esp)
80104878:	e8 1b cf ff ff       	call   80101798 <iunlockput>
  end_op();
8010487d:	e8 66 e0 ff ff       	call   801028e8 <end_op>
  return 0;
80104882:	83 c4 10             	add    $0x10,%esp
80104885:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010488a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010488d:	5b                   	pop    %ebx
8010488e:	5e                   	pop    %esi
8010488f:	5f                   	pop    %edi
80104890:	5d                   	pop    %ebp
80104891:	c3                   	ret    
    end_op();
80104892:	e8 51 e0 ff ff       	call   801028e8 <end_op>
    return -1;
80104897:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010489c:	eb ec                	jmp    8010488a <sys_unlink+0x129>
    panic("unlink: nlink < 1");
8010489e:	83 ec 0c             	sub    $0xc,%esp
801048a1:	68 60 6e 10 80       	push   $0x80106e60
801048a6:	e8 b1 ba ff ff       	call   8010035c <panic>
  if(ip->type == T_DIR && !isdirempty(ip)){
801048ab:	89 d8                	mov    %ebx,%eax
801048ad:	e8 0e f9 ff ff       	call   801041c0 <isdirempty>
801048b2:	85 c0                	test   %eax,%eax
801048b4:	0f 85 6c ff ff ff    	jne    80104826 <sys_unlink+0xc5>
    iunlockput(ip);
801048ba:	83 ec 0c             	sub    $0xc,%esp
801048bd:	53                   	push   %ebx
801048be:	e8 d5 ce ff ff       	call   80101798 <iunlockput>
    goto bad;
801048c3:	83 c4 10             	add    $0x10,%esp
  iunlockput(dp);
801048c6:	83 ec 0c             	sub    $0xc,%esp
801048c9:	56                   	push   %esi
801048ca:	e8 c9 ce ff ff       	call   80101798 <iunlockput>
  end_op();
801048cf:	e8 14 e0 ff ff       	call   801028e8 <end_op>
  return -1;
801048d4:	83 c4 10             	add    $0x10,%esp
801048d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801048dc:	eb ac                	jmp    8010488a <sys_unlink+0x129>
    panic("unlink: writei");
801048de:	83 ec 0c             	sub    $0xc,%esp
801048e1:	68 72 6e 10 80       	push   $0x80106e72
801048e6:	e8 71 ba ff ff       	call   8010035c <panic>
    dp->nlink--;
801048eb:	0f b7 46 56          	movzwl 0x56(%esi),%eax
801048ef:	83 e8 01             	sub    $0x1,%eax
801048f2:	66 89 46 56          	mov    %ax,0x56(%esi)
    iupdate(dp);
801048f6:	83 ec 0c             	sub    $0xc,%esp
801048f9:	56                   	push   %esi
801048fa:	e8 7d cb ff ff       	call   8010147c <iupdate>
801048ff:	83 c4 10             	add    $0x10,%esp
80104902:	e9 52 ff ff ff       	jmp    80104859 <sys_unlink+0xf8>
    return -1;
80104907:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010490c:	e9 79 ff ff ff       	jmp    8010488a <sys_unlink+0x129>

80104911 <sys_open>:

int
sys_open(void)
{
80104911:	f3 0f 1e fb          	endbr32 
80104915:	55                   	push   %ebp
80104916:	89 e5                	mov    %esp,%ebp
80104918:	57                   	push   %edi
80104919:	56                   	push   %esi
8010491a:	53                   	push   %ebx
8010491b:	83 ec 24             	sub    $0x24,%esp
  char *path;
  int fd, omode;
  struct file *f;
  struct inode *ip;

  if(argstr(0, &path) < 0 || argint(1, &omode) < 0)
8010491e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104921:	50                   	push   %eax
80104922:	6a 00                	push   $0x0
80104924:	e8 6e f7 ff ff       	call   80104097 <argstr>
80104929:	83 c4 10             	add    $0x10,%esp
8010492c:	85 c0                	test   %eax,%eax
8010492e:	0f 88 a0 00 00 00    	js     801049d4 <sys_open+0xc3>
80104934:	83 ec 08             	sub    $0x8,%esp
80104937:	8d 45 e0             	lea    -0x20(%ebp),%eax
8010493a:	50                   	push   %eax
8010493b:	6a 01                	push   $0x1
8010493d:	e8 bd f6 ff ff       	call   80103fff <argint>
80104942:	83 c4 10             	add    $0x10,%esp
80104945:	85 c0                	test   %eax,%eax
80104947:	0f 88 87 00 00 00    	js     801049d4 <sys_open+0xc3>
    return -1;

  begin_op();
8010494d:	e8 18 df ff ff       	call   8010286a <begin_op>

  if(omode & O_CREATE){
80104952:	f6 45 e1 02          	testb  $0x2,-0x1f(%ebp)
80104956:	0f 84 8b 00 00 00    	je     801049e7 <sys_open+0xd6>
    ip = create(path, T_FILE, 0, 0);
8010495c:	83 ec 0c             	sub    $0xc,%esp
8010495f:	6a 00                	push   $0x0
80104961:	b9 00 00 00 00       	mov    $0x0,%ecx
80104966:	ba 02 00 00 00       	mov    $0x2,%edx
8010496b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010496e:	e8 a4 f8 ff ff       	call   80104217 <create>
80104973:	89 c6                	mov    %eax,%esi
    if(ip == 0){
80104975:	83 c4 10             	add    $0x10,%esp
80104978:	85 c0                	test   %eax,%eax
8010497a:	74 5f                	je     801049db <sys_open+0xca>
      end_op();
      return -1;
    }
  }

  if((f = filealloc()) == 0 || (fd = fdalloc(f)) < 0){
8010497c:	e8 e3 c2 ff ff       	call   80100c64 <filealloc>
80104981:	89 c3                	mov    %eax,%ebx
80104983:	85 c0                	test   %eax,%eax
80104985:	0f 84 b5 00 00 00    	je     80104a40 <sys_open+0x12f>
8010498b:	e8 f9 f7 ff ff       	call   80104189 <fdalloc>
80104990:	89 c7                	mov    %eax,%edi
80104992:	85 c0                	test   %eax,%eax
80104994:	0f 88 a6 00 00 00    	js     80104a40 <sys_open+0x12f>
      fileclose(f);
    iunlockput(ip);
    end_op();
    return -1;
  }
  iunlock(ip);
8010499a:	83 ec 0c             	sub    $0xc,%esp
8010499d:	56                   	push   %esi
8010499e:	e8 08 cd ff ff       	call   801016ab <iunlock>
  end_op();
801049a3:	e8 40 df ff ff       	call   801028e8 <end_op>

  f->type = FD_INODE;
801049a8:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  f->ip = ip;
801049ae:	89 73 10             	mov    %esi,0x10(%ebx)
  f->off = 0;
801049b1:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
  f->readable = !(omode & O_WRONLY);
801049b8:	8b 45 e0             	mov    -0x20(%ebp),%eax
801049bb:	83 c4 10             	add    $0x10,%esp
801049be:	a8 01                	test   $0x1,%al
801049c0:	0f 94 43 08          	sete   0x8(%ebx)
  f->writable = (omode & O_WRONLY) || (omode & O_RDWR);
801049c4:	a8 03                	test   $0x3,%al
801049c6:	0f 95 43 09          	setne  0x9(%ebx)
  return fd;
}
801049ca:	89 f8                	mov    %edi,%eax
801049cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
801049cf:	5b                   	pop    %ebx
801049d0:	5e                   	pop    %esi
801049d1:	5f                   	pop    %edi
801049d2:	5d                   	pop    %ebp
801049d3:	c3                   	ret    
    return -1;
801049d4:	bf ff ff ff ff       	mov    $0xffffffff,%edi
801049d9:	eb ef                	jmp    801049ca <sys_open+0xb9>
      end_op();
801049db:	e8 08 df ff ff       	call   801028e8 <end_op>
      return -1;
801049e0:	bf ff ff ff ff       	mov    $0xffffffff,%edi
801049e5:	eb e3                	jmp    801049ca <sys_open+0xb9>
    if((ip = namei(path)) == 0){
801049e7:	83 ec 0c             	sub    $0xc,%esp
801049ea:	ff 75 e4             	pushl  -0x1c(%ebp)
801049ed:	e8 78 d2 ff ff       	call   80101c6a <namei>
801049f2:	89 c6                	mov    %eax,%esi
801049f4:	83 c4 10             	add    $0x10,%esp
801049f7:	85 c0                	test   %eax,%eax
801049f9:	74 39                	je     80104a34 <sys_open+0x123>
    ilock(ip);
801049fb:	83 ec 0c             	sub    $0xc,%esp
801049fe:	50                   	push   %eax
801049ff:	e8 e1 cb ff ff       	call   801015e5 <ilock>
    if(ip->type == T_DIR && omode != O_RDONLY){
80104a04:	83 c4 10             	add    $0x10,%esp
80104a07:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80104a0c:	0f 85 6a ff ff ff    	jne    8010497c <sys_open+0x6b>
80104a12:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80104a16:	0f 84 60 ff ff ff    	je     8010497c <sys_open+0x6b>
      iunlockput(ip);
80104a1c:	83 ec 0c             	sub    $0xc,%esp
80104a1f:	56                   	push   %esi
80104a20:	e8 73 cd ff ff       	call   80101798 <iunlockput>
      end_op();
80104a25:	e8 be de ff ff       	call   801028e8 <end_op>
      return -1;
80104a2a:	83 c4 10             	add    $0x10,%esp
80104a2d:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104a32:	eb 96                	jmp    801049ca <sys_open+0xb9>
      end_op();
80104a34:	e8 af de ff ff       	call   801028e8 <end_op>
      return -1;
80104a39:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104a3e:	eb 8a                	jmp    801049ca <sys_open+0xb9>
    if(f)
80104a40:	85 db                	test   %ebx,%ebx
80104a42:	74 0c                	je     80104a50 <sys_open+0x13f>
      fileclose(f);
80104a44:	83 ec 0c             	sub    $0xc,%esp
80104a47:	53                   	push   %ebx
80104a48:	e8 c5 c2 ff ff       	call   80100d12 <fileclose>
80104a4d:	83 c4 10             	add    $0x10,%esp
    iunlockput(ip);
80104a50:	83 ec 0c             	sub    $0xc,%esp
80104a53:	56                   	push   %esi
80104a54:	e8 3f cd ff ff       	call   80101798 <iunlockput>
    end_op();
80104a59:	e8 8a de ff ff       	call   801028e8 <end_op>
    return -1;
80104a5e:	83 c4 10             	add    $0x10,%esp
80104a61:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104a66:	e9 5f ff ff ff       	jmp    801049ca <sys_open+0xb9>

80104a6b <sys_mkdir>:

int
sys_mkdir(void)
{
80104a6b:	f3 0f 1e fb          	endbr32 
80104a6f:	55                   	push   %ebp
80104a70:	89 e5                	mov    %esp,%ebp
80104a72:	83 ec 18             	sub    $0x18,%esp
  char *path;
  struct inode *ip;

  begin_op();
80104a75:	e8 f0 dd ff ff       	call   8010286a <begin_op>
  if(argstr(0, &path) < 0 || (ip = create(path, T_DIR, 0, 0)) == 0){
80104a7a:	83 ec 08             	sub    $0x8,%esp
80104a7d:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104a80:	50                   	push   %eax
80104a81:	6a 00                	push   $0x0
80104a83:	e8 0f f6 ff ff       	call   80104097 <argstr>
80104a88:	83 c4 10             	add    $0x10,%esp
80104a8b:	85 c0                	test   %eax,%eax
80104a8d:	78 36                	js     80104ac5 <sys_mkdir+0x5a>
80104a8f:	83 ec 0c             	sub    $0xc,%esp
80104a92:	6a 00                	push   $0x0
80104a94:	b9 00 00 00 00       	mov    $0x0,%ecx
80104a99:	ba 01 00 00 00       	mov    $0x1,%edx
80104a9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104aa1:	e8 71 f7 ff ff       	call   80104217 <create>
80104aa6:	83 c4 10             	add    $0x10,%esp
80104aa9:	85 c0                	test   %eax,%eax
80104aab:	74 18                	je     80104ac5 <sys_mkdir+0x5a>
    end_op();
    return -1;
  }
  iunlockput(ip);
80104aad:	83 ec 0c             	sub    $0xc,%esp
80104ab0:	50                   	push   %eax
80104ab1:	e8 e2 cc ff ff       	call   80101798 <iunlockput>
  end_op();
80104ab6:	e8 2d de ff ff       	call   801028e8 <end_op>
  return 0;
80104abb:	83 c4 10             	add    $0x10,%esp
80104abe:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104ac3:	c9                   	leave  
80104ac4:	c3                   	ret    
    end_op();
80104ac5:	e8 1e de ff ff       	call   801028e8 <end_op>
    return -1;
80104aca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104acf:	eb f2                	jmp    80104ac3 <sys_mkdir+0x58>

80104ad1 <sys_mknod>:

int
sys_mknod(void)
{
80104ad1:	f3 0f 1e fb          	endbr32 
80104ad5:	55                   	push   %ebp
80104ad6:	89 e5                	mov    %esp,%ebp
80104ad8:	83 ec 18             	sub    $0x18,%esp
  struct inode *ip;
  char *path;
  int major, minor;

  begin_op();
80104adb:	e8 8a dd ff ff       	call   8010286a <begin_op>
  if((argstr(0, &path)) < 0 ||
80104ae0:	83 ec 08             	sub    $0x8,%esp
80104ae3:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104ae6:	50                   	push   %eax
80104ae7:	6a 00                	push   $0x0
80104ae9:	e8 a9 f5 ff ff       	call   80104097 <argstr>
80104aee:	83 c4 10             	add    $0x10,%esp
80104af1:	85 c0                	test   %eax,%eax
80104af3:	78 62                	js     80104b57 <sys_mknod+0x86>
     argint(1, &major) < 0 ||
80104af5:	83 ec 08             	sub    $0x8,%esp
80104af8:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104afb:	50                   	push   %eax
80104afc:	6a 01                	push   $0x1
80104afe:	e8 fc f4 ff ff       	call   80103fff <argint>
  if((argstr(0, &path)) < 0 ||
80104b03:	83 c4 10             	add    $0x10,%esp
80104b06:	85 c0                	test   %eax,%eax
80104b08:	78 4d                	js     80104b57 <sys_mknod+0x86>
     argint(2, &minor) < 0 ||
80104b0a:	83 ec 08             	sub    $0x8,%esp
80104b0d:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104b10:	50                   	push   %eax
80104b11:	6a 02                	push   $0x2
80104b13:	e8 e7 f4 ff ff       	call   80103fff <argint>
     argint(1, &major) < 0 ||
80104b18:	83 c4 10             	add    $0x10,%esp
80104b1b:	85 c0                	test   %eax,%eax
80104b1d:	78 38                	js     80104b57 <sys_mknod+0x86>
     (ip = create(path, T_DEV, major, minor)) == 0){
80104b1f:	0f bf 4d f0          	movswl -0x10(%ebp),%ecx
80104b23:	83 ec 0c             	sub    $0xc,%esp
80104b26:	0f bf 45 ec          	movswl -0x14(%ebp),%eax
80104b2a:	50                   	push   %eax
80104b2b:	ba 03 00 00 00       	mov    $0x3,%edx
80104b30:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104b33:	e8 df f6 ff ff       	call   80104217 <create>
     argint(2, &minor) < 0 ||
80104b38:	83 c4 10             	add    $0x10,%esp
80104b3b:	85 c0                	test   %eax,%eax
80104b3d:	74 18                	je     80104b57 <sys_mknod+0x86>
    end_op();
    return -1;
  }
  iunlockput(ip);
80104b3f:	83 ec 0c             	sub    $0xc,%esp
80104b42:	50                   	push   %eax
80104b43:	e8 50 cc ff ff       	call   80101798 <iunlockput>
  end_op();
80104b48:	e8 9b dd ff ff       	call   801028e8 <end_op>
  return 0;
80104b4d:	83 c4 10             	add    $0x10,%esp
80104b50:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104b55:	c9                   	leave  
80104b56:	c3                   	ret    
    end_op();
80104b57:	e8 8c dd ff ff       	call   801028e8 <end_op>
    return -1;
80104b5c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b61:	eb f2                	jmp    80104b55 <sys_mknod+0x84>

80104b63 <sys_chdir>:

int
sys_chdir(void)
{
80104b63:	f3 0f 1e fb          	endbr32 
80104b67:	55                   	push   %ebp
80104b68:	89 e5                	mov    %esp,%ebp
80104b6a:	56                   	push   %esi
80104b6b:	53                   	push   %ebx
80104b6c:	83 ec 10             	sub    $0x10,%esp
  char *path;
  struct inode *ip;
  struct proc *curproc = myproc();
80104b6f:	e8 6c e7 ff ff       	call   801032e0 <myproc>
80104b74:	89 c6                	mov    %eax,%esi
  
  begin_op();
80104b76:	e8 ef dc ff ff       	call   8010286a <begin_op>
  if(argstr(0, &path) < 0 || (ip = namei(path)) == 0){
80104b7b:	83 ec 08             	sub    $0x8,%esp
80104b7e:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104b81:	50                   	push   %eax
80104b82:	6a 00                	push   $0x0
80104b84:	e8 0e f5 ff ff       	call   80104097 <argstr>
80104b89:	83 c4 10             	add    $0x10,%esp
80104b8c:	85 c0                	test   %eax,%eax
80104b8e:	78 52                	js     80104be2 <sys_chdir+0x7f>
80104b90:	83 ec 0c             	sub    $0xc,%esp
80104b93:	ff 75 f4             	pushl  -0xc(%ebp)
80104b96:	e8 cf d0 ff ff       	call   80101c6a <namei>
80104b9b:	89 c3                	mov    %eax,%ebx
80104b9d:	83 c4 10             	add    $0x10,%esp
80104ba0:	85 c0                	test   %eax,%eax
80104ba2:	74 3e                	je     80104be2 <sys_chdir+0x7f>
    end_op();
    return -1;
  }
  ilock(ip);
80104ba4:	83 ec 0c             	sub    $0xc,%esp
80104ba7:	50                   	push   %eax
80104ba8:	e8 38 ca ff ff       	call   801015e5 <ilock>
  if(ip->type != T_DIR){
80104bad:	83 c4 10             	add    $0x10,%esp
80104bb0:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104bb5:	75 37                	jne    80104bee <sys_chdir+0x8b>
    iunlockput(ip);
    end_op();
    return -1;
  }
  iunlock(ip);
80104bb7:	83 ec 0c             	sub    $0xc,%esp
80104bba:	53                   	push   %ebx
80104bbb:	e8 eb ca ff ff       	call   801016ab <iunlock>
  iput(curproc->cwd);
80104bc0:	83 c4 04             	add    $0x4,%esp
80104bc3:	ff 76 68             	pushl  0x68(%esi)
80104bc6:	e8 29 cb ff ff       	call   801016f4 <iput>
  end_op();
80104bcb:	e8 18 dd ff ff       	call   801028e8 <end_op>
  curproc->cwd = ip;
80104bd0:	89 5e 68             	mov    %ebx,0x68(%esi)
  return 0;
80104bd3:	83 c4 10             	add    $0x10,%esp
80104bd6:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104bdb:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104bde:	5b                   	pop    %ebx
80104bdf:	5e                   	pop    %esi
80104be0:	5d                   	pop    %ebp
80104be1:	c3                   	ret    
    end_op();
80104be2:	e8 01 dd ff ff       	call   801028e8 <end_op>
    return -1;
80104be7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104bec:	eb ed                	jmp    80104bdb <sys_chdir+0x78>
    iunlockput(ip);
80104bee:	83 ec 0c             	sub    $0xc,%esp
80104bf1:	53                   	push   %ebx
80104bf2:	e8 a1 cb ff ff       	call   80101798 <iunlockput>
    end_op();
80104bf7:	e8 ec dc ff ff       	call   801028e8 <end_op>
    return -1;
80104bfc:	83 c4 10             	add    $0x10,%esp
80104bff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c04:	eb d5                	jmp    80104bdb <sys_chdir+0x78>

80104c06 <sys_exec>:

int
sys_exec(void)
{
80104c06:	f3 0f 1e fb          	endbr32 
80104c0a:	55                   	push   %ebp
80104c0b:	89 e5                	mov    %esp,%ebp
80104c0d:	53                   	push   %ebx
80104c0e:	81 ec 9c 00 00 00    	sub    $0x9c,%esp
  char *path, *argv[MAXARG];
  int i;
  uint uargv, uarg;

  if(argstr(0, &path) < 0 || argint(1, (int*)&uargv) < 0){
80104c14:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104c17:	50                   	push   %eax
80104c18:	6a 00                	push   $0x0
80104c1a:	e8 78 f4 ff ff       	call   80104097 <argstr>
80104c1f:	83 c4 10             	add    $0x10,%esp
80104c22:	85 c0                	test   %eax,%eax
80104c24:	78 38                	js     80104c5e <sys_exec+0x58>
80104c26:	83 ec 08             	sub    $0x8,%esp
80104c29:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
80104c2f:	50                   	push   %eax
80104c30:	6a 01                	push   $0x1
80104c32:	e8 c8 f3 ff ff       	call   80103fff <argint>
80104c37:	83 c4 10             	add    $0x10,%esp
80104c3a:	85 c0                	test   %eax,%eax
80104c3c:	78 20                	js     80104c5e <sys_exec+0x58>
    return -1;
  }
  memset(argv, 0, sizeof(argv));
80104c3e:	83 ec 04             	sub    $0x4,%esp
80104c41:	68 80 00 00 00       	push   $0x80
80104c46:	6a 00                	push   $0x0
80104c48:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
80104c4e:	50                   	push   %eax
80104c4f:	e8 35 f1 ff ff       	call   80103d89 <memset>
80104c54:	83 c4 10             	add    $0x10,%esp
  for(i=0;; i++){
80104c57:	bb 00 00 00 00       	mov    $0x0,%ebx
80104c5c:	eb 2c                	jmp    80104c8a <sys_exec+0x84>
    return -1;
80104c5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c63:	eb 78                	jmp    80104cdd <sys_exec+0xd7>
    if(i >= NELEM(argv))
      return -1;
    if(fetchint(uargv+4*i, (int*)&uarg) < 0)
      return -1;
    if(uarg == 0){
      argv[i] = 0;
80104c65:	c7 84 9d 74 ff ff ff 	movl   $0x0,-0x8c(%ebp,%ebx,4)
80104c6c:	00 00 00 00 
      break;
    }
    if(fetchstr(uarg, &argv[i]) < 0)
      return -1;
  }
  return exec(path, argv);
80104c70:	83 ec 08             	sub    $0x8,%esp
80104c73:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
80104c79:	50                   	push   %eax
80104c7a:	ff 75 f4             	pushl  -0xc(%ebp)
80104c7d:	e8 7a bc ff ff       	call   801008fc <exec>
80104c82:	83 c4 10             	add    $0x10,%esp
80104c85:	eb 56                	jmp    80104cdd <sys_exec+0xd7>
  for(i=0;; i++){
80104c87:	83 c3 01             	add    $0x1,%ebx
    if(i >= NELEM(argv))
80104c8a:	83 fb 1f             	cmp    $0x1f,%ebx
80104c8d:	77 49                	ja     80104cd8 <sys_exec+0xd2>
    if(fetchint(uargv+4*i, (int*)&uarg) < 0)
80104c8f:	83 ec 08             	sub    $0x8,%esp
80104c92:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
80104c98:	50                   	push   %eax
80104c99:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
80104c9f:	8d 04 98             	lea    (%eax,%ebx,4),%eax
80104ca2:	50                   	push   %eax
80104ca3:	e8 d3 f2 ff ff       	call   80103f7b <fetchint>
80104ca8:	83 c4 10             	add    $0x10,%esp
80104cab:	85 c0                	test   %eax,%eax
80104cad:	78 33                	js     80104ce2 <sys_exec+0xdc>
    if(uarg == 0){
80104caf:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
80104cb5:	85 c0                	test   %eax,%eax
80104cb7:	74 ac                	je     80104c65 <sys_exec+0x5f>
    if(fetchstr(uarg, &argv[i]) < 0)
80104cb9:	83 ec 08             	sub    $0x8,%esp
80104cbc:	8d 94 9d 74 ff ff ff 	lea    -0x8c(%ebp,%ebx,4),%edx
80104cc3:	52                   	push   %edx
80104cc4:	50                   	push   %eax
80104cc5:	e8 f1 f2 ff ff       	call   80103fbb <fetchstr>
80104cca:	83 c4 10             	add    $0x10,%esp
80104ccd:	85 c0                	test   %eax,%eax
80104ccf:	79 b6                	jns    80104c87 <sys_exec+0x81>
      return -1;
80104cd1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104cd6:	eb 05                	jmp    80104cdd <sys_exec+0xd7>
      return -1;
80104cd8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80104cdd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104ce0:	c9                   	leave  
80104ce1:	c3                   	ret    
      return -1;
80104ce2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ce7:	eb f4                	jmp    80104cdd <sys_exec+0xd7>

80104ce9 <sys_pipe>:

int
sys_pipe(void)
{
80104ce9:	f3 0f 1e fb          	endbr32 
80104ced:	55                   	push   %ebp
80104cee:	89 e5                	mov    %esp,%ebp
80104cf0:	53                   	push   %ebx
80104cf1:	83 ec 18             	sub    $0x18,%esp
  int *fd;
  struct file *rf, *wf;
  int fd0, fd1;

  if(argptr(0, (void*)&fd, 2*sizeof(fd[0])) < 0)
80104cf4:	6a 08                	push   $0x8
80104cf6:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104cf9:	50                   	push   %eax
80104cfa:	6a 00                	push   $0x0
80104cfc:	e8 2a f3 ff ff       	call   8010402b <argptr>
80104d01:	83 c4 10             	add    $0x10,%esp
80104d04:	85 c0                	test   %eax,%eax
80104d06:	78 79                	js     80104d81 <sys_pipe+0x98>
    return -1;
  if(pipealloc(&rf, &wf) < 0)
80104d08:	83 ec 08             	sub    $0x8,%esp
80104d0b:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104d0e:	50                   	push   %eax
80104d0f:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104d12:	50                   	push   %eax
80104d13:	e8 f7 e0 ff ff       	call   80102e0f <pipealloc>
80104d18:	83 c4 10             	add    $0x10,%esp
80104d1b:	85 c0                	test   %eax,%eax
80104d1d:	78 69                	js     80104d88 <sys_pipe+0x9f>
    return -1;
  fd0 = -1;
  if((fd0 = fdalloc(rf)) < 0 || (fd1 = fdalloc(wf)) < 0){
80104d1f:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104d22:	e8 62 f4 ff ff       	call   80104189 <fdalloc>
80104d27:	89 c3                	mov    %eax,%ebx
80104d29:	85 c0                	test   %eax,%eax
80104d2b:	78 21                	js     80104d4e <sys_pipe+0x65>
80104d2d:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104d30:	e8 54 f4 ff ff       	call   80104189 <fdalloc>
80104d35:	85 c0                	test   %eax,%eax
80104d37:	78 15                	js     80104d4e <sys_pipe+0x65>
      myproc()->ofile[fd0] = 0;
    fileclose(rf);
    fileclose(wf);
    return -1;
  }
  fd[0] = fd0;
80104d39:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104d3c:	89 1a                	mov    %ebx,(%edx)
  fd[1] = fd1;
80104d3e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104d41:	89 42 04             	mov    %eax,0x4(%edx)
  return 0;
80104d44:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104d49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104d4c:	c9                   	leave  
80104d4d:	c3                   	ret    
    if(fd0 >= 0)
80104d4e:	85 db                	test   %ebx,%ebx
80104d50:	79 20                	jns    80104d72 <sys_pipe+0x89>
    fileclose(rf);
80104d52:	83 ec 0c             	sub    $0xc,%esp
80104d55:	ff 75 f0             	pushl  -0x10(%ebp)
80104d58:	e8 b5 bf ff ff       	call   80100d12 <fileclose>
    fileclose(wf);
80104d5d:	83 c4 04             	add    $0x4,%esp
80104d60:	ff 75 ec             	pushl  -0x14(%ebp)
80104d63:	e8 aa bf ff ff       	call   80100d12 <fileclose>
    return -1;
80104d68:	83 c4 10             	add    $0x10,%esp
80104d6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d70:	eb d7                	jmp    80104d49 <sys_pipe+0x60>
      myproc()->ofile[fd0] = 0;
80104d72:	e8 69 e5 ff ff       	call   801032e0 <myproc>
80104d77:	c7 44 98 28 00 00 00 	movl   $0x0,0x28(%eax,%ebx,4)
80104d7e:	00 
80104d7f:	eb d1                	jmp    80104d52 <sys_pipe+0x69>
    return -1;
80104d81:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d86:	eb c1                	jmp    80104d49 <sys_pipe+0x60>
    return -1;
80104d88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d8d:	eb ba                	jmp    80104d49 <sys_pipe+0x60>

80104d8f <sys_date>:
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_date(void){
80104d8f:	f3 0f 1e fb          	endbr32 
80104d93:	55                   	push   %ebp
80104d94:	89 e5                	mov    %esp,%ebp
80104d96:	83 ec 0c             	sub    $0xc,%esp
    struct rtcdate * r = NULL;

    if(argptr(0, (void**)r, sizeof(struct rtcdate)) < 0)
80104d99:	6a 18                	push   $0x18
80104d9b:	6a 00                	push   $0x0
80104d9d:	6a 00                	push   $0x0
80104d9f:	e8 87 f2 ff ff       	call   8010402b <argptr>
80104da4:	83 c4 10             	add    $0x10,%esp
80104da7:	85 c0                	test   %eax,%eax
80104da9:	78 14                	js     80104dbf <sys_date+0x30>
        return -1;

    cmostime(r);
80104dab:	83 ec 0c             	sub    $0xc,%esp
80104dae:	6a 00                	push   $0x0
80104db0:	e8 62 d7 ff ff       	call   80102517 <cmostime>

    return 0;
80104db5:	83 c4 10             	add    $0x10,%esp
80104db8:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104dbd:	c9                   	leave  
80104dbe:	c3                   	ret    
        return -1;
80104dbf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104dc4:	eb f7                	jmp    80104dbd <sys_date+0x2e>

80104dc6 <sys_fork>:


int
sys_fork(void)
{
80104dc6:	f3 0f 1e fb          	endbr32 
80104dca:	55                   	push   %ebp
80104dcb:	89 e5                	mov    %esp,%ebp
80104dcd:	83 ec 08             	sub    $0x8,%esp
  return fork();
80104dd0:	e8 8d e6 ff ff       	call   80103462 <fork>
}
80104dd5:	c9                   	leave  
80104dd6:	c3                   	ret    

80104dd7 <sys_exit>:

int
sys_exit(void)
{
80104dd7:	f3 0f 1e fb          	endbr32 
80104ddb:	55                   	push   %ebp
80104ddc:	89 e5                	mov    %esp,%ebp
80104dde:	83 ec 08             	sub    $0x8,%esp
  exit();
80104de1:	e8 bc e8 ff ff       	call   801036a2 <exit>
  return 0;  // not reached
}
80104de6:	b8 00 00 00 00       	mov    $0x0,%eax
80104deb:	c9                   	leave  
80104dec:	c3                   	ret    

80104ded <sys_wait>:

int
sys_wait(void)
{
80104ded:	f3 0f 1e fb          	endbr32 
80104df1:	55                   	push   %ebp
80104df2:	89 e5                	mov    %esp,%ebp
80104df4:	83 ec 08             	sub    $0x8,%esp
  return wait();
80104df7:	e8 3b ea ff ff       	call   80103837 <wait>
}
80104dfc:	c9                   	leave  
80104dfd:	c3                   	ret    

80104dfe <sys_kill>:

int
sys_kill(void)
{
80104dfe:	f3 0f 1e fb          	endbr32 
80104e02:	55                   	push   %ebp
80104e03:	89 e5                	mov    %esp,%ebp
80104e05:	83 ec 20             	sub    $0x20,%esp
  int pid;

  if(argint(0, &pid) < 0)
80104e08:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104e0b:	50                   	push   %eax
80104e0c:	6a 00                	push   $0x0
80104e0e:	e8 ec f1 ff ff       	call   80103fff <argint>
80104e13:	83 c4 10             	add    $0x10,%esp
80104e16:	85 c0                	test   %eax,%eax
80104e18:	78 10                	js     80104e2a <sys_kill+0x2c>
    return -1;
  return kill(pid);
80104e1a:	83 ec 0c             	sub    $0xc,%esp
80104e1d:	ff 75 f4             	pushl  -0xc(%ebp)
80104e20:	e8 17 eb ff ff       	call   8010393c <kill>
80104e25:	83 c4 10             	add    $0x10,%esp
}
80104e28:	c9                   	leave  
80104e29:	c3                   	ret    
    return -1;
80104e2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104e2f:	eb f7                	jmp    80104e28 <sys_kill+0x2a>

80104e31 <sys_getpid>:

int
sys_getpid(void)
{
80104e31:	f3 0f 1e fb          	endbr32 
80104e35:	55                   	push   %ebp
80104e36:	89 e5                	mov    %esp,%ebp
80104e38:	83 ec 08             	sub    $0x8,%esp
  return myproc()->pid;
80104e3b:	e8 a0 e4 ff ff       	call   801032e0 <myproc>
80104e40:	8b 40 10             	mov    0x10(%eax),%eax
}
80104e43:	c9                   	leave  
80104e44:	c3                   	ret    

80104e45 <sys_sbrk>:

int
sys_sbrk(void)
{
80104e45:	f3 0f 1e fb          	endbr32 
80104e49:	55                   	push   %ebp
80104e4a:	89 e5                	mov    %esp,%ebp
80104e4c:	53                   	push   %ebx
80104e4d:	83 ec 1c             	sub    $0x1c,%esp
  int addr;
  int n;

  if(argint(0, &n) < 0)
80104e50:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104e53:	50                   	push   %eax
80104e54:	6a 00                	push   $0x0
80104e56:	e8 a4 f1 ff ff       	call   80103fff <argint>
80104e5b:	83 c4 10             	add    $0x10,%esp
80104e5e:	85 c0                	test   %eax,%eax
80104e60:	78 20                	js     80104e82 <sys_sbrk+0x3d>
    return -1;
  addr = myproc()->sz;
80104e62:	e8 79 e4 ff ff       	call   801032e0 <myproc>
80104e67:	8b 18                	mov    (%eax),%ebx
  if(growproc(n) < 0)
80104e69:	83 ec 0c             	sub    $0xc,%esp
80104e6c:	ff 75 f4             	pushl  -0xc(%ebp)
80104e6f:	e8 80 e5 ff ff       	call   801033f4 <growproc>
80104e74:	83 c4 10             	add    $0x10,%esp
80104e77:	85 c0                	test   %eax,%eax
80104e79:	78 0e                	js     80104e89 <sys_sbrk+0x44>
    return -1;
  return addr;
}
80104e7b:	89 d8                	mov    %ebx,%eax
80104e7d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104e80:	c9                   	leave  
80104e81:	c3                   	ret    
    return -1;
80104e82:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104e87:	eb f2                	jmp    80104e7b <sys_sbrk+0x36>
    return -1;
80104e89:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104e8e:	eb eb                	jmp    80104e7b <sys_sbrk+0x36>

80104e90 <sys_sleep>:

int
sys_sleep(void)
{
80104e90:	f3 0f 1e fb          	endbr32 
80104e94:	55                   	push   %ebp
80104e95:	89 e5                	mov    %esp,%ebp
80104e97:	53                   	push   %ebx
80104e98:	83 ec 1c             	sub    $0x1c,%esp
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
80104e9b:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104e9e:	50                   	push   %eax
80104e9f:	6a 00                	push   $0x0
80104ea1:	e8 59 f1 ff ff       	call   80103fff <argint>
80104ea6:	83 c4 10             	add    $0x10,%esp
80104ea9:	85 c0                	test   %eax,%eax
80104eab:	78 75                	js     80104f22 <sys_sleep+0x92>
    return -1;
  acquire(&tickslock);
80104ead:	83 ec 0c             	sub    $0xc,%esp
80104eb0:	68 60 4c 11 80       	push   $0x80114c60
80104eb5:	e8 1b ee ff ff       	call   80103cd5 <acquire>
  ticks0 = ticks;
80104eba:	8b 1d a0 54 11 80    	mov    0x801154a0,%ebx
  while(ticks - ticks0 < n){
80104ec0:	83 c4 10             	add    $0x10,%esp
80104ec3:	a1 a0 54 11 80       	mov    0x801154a0,%eax
80104ec8:	29 d8                	sub    %ebx,%eax
80104eca:	3b 45 f4             	cmp    -0xc(%ebp),%eax
80104ecd:	73 39                	jae    80104f08 <sys_sleep+0x78>
    if(myproc()->killed){
80104ecf:	e8 0c e4 ff ff       	call   801032e0 <myproc>
80104ed4:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104ed8:	75 17                	jne    80104ef1 <sys_sleep+0x61>
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
80104eda:	83 ec 08             	sub    $0x8,%esp
80104edd:	68 60 4c 11 80       	push   $0x80114c60
80104ee2:	68 a0 54 11 80       	push   $0x801154a0
80104ee7:	e8 b6 e8 ff ff       	call   801037a2 <sleep>
80104eec:	83 c4 10             	add    $0x10,%esp
80104eef:	eb d2                	jmp    80104ec3 <sys_sleep+0x33>
      release(&tickslock);
80104ef1:	83 ec 0c             	sub    $0xc,%esp
80104ef4:	68 60 4c 11 80       	push   $0x80114c60
80104ef9:	e8 40 ee ff ff       	call   80103d3e <release>
      return -1;
80104efe:	83 c4 10             	add    $0x10,%esp
80104f01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104f06:	eb 15                	jmp    80104f1d <sys_sleep+0x8d>
  }
  release(&tickslock);
80104f08:	83 ec 0c             	sub    $0xc,%esp
80104f0b:	68 60 4c 11 80       	push   $0x80114c60
80104f10:	e8 29 ee ff ff       	call   80103d3e <release>
  return 0;
80104f15:	83 c4 10             	add    $0x10,%esp
80104f18:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104f1d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104f20:	c9                   	leave  
80104f21:	c3                   	ret    
    return -1;
80104f22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104f27:	eb f4                	jmp    80104f1d <sys_sleep+0x8d>

80104f29 <sys_uptime>:

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
80104f29:	f3 0f 1e fb          	endbr32 
80104f2d:	55                   	push   %ebp
80104f2e:	89 e5                	mov    %esp,%ebp
80104f30:	53                   	push   %ebx
80104f31:	83 ec 10             	sub    $0x10,%esp
  uint xticks;

  acquire(&tickslock);
80104f34:	68 60 4c 11 80       	push   $0x80114c60
80104f39:	e8 97 ed ff ff       	call   80103cd5 <acquire>
  xticks = ticks;
80104f3e:	8b 1d a0 54 11 80    	mov    0x801154a0,%ebx
  release(&tickslock);
80104f44:	c7 04 24 60 4c 11 80 	movl   $0x80114c60,(%esp)
80104f4b:	e8 ee ed ff ff       	call   80103d3e <release>
  return xticks;
}
80104f50:	89 d8                	mov    %ebx,%eax
80104f52:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104f55:	c9                   	leave  
80104f56:	c3                   	ret    

80104f57 <alltraps>:

  # vectors.S sends all traps here.
.globl alltraps
alltraps:
  # Build trap frame.
  pushl %ds
80104f57:	1e                   	push   %ds
  pushl %es
80104f58:	06                   	push   %es
  pushl %fs
80104f59:	0f a0                	push   %fs
  pushl %gs
80104f5b:	0f a8                	push   %gs
  pushal
80104f5d:	60                   	pusha  
  
  # Set up data segments.
  movw $(SEG_KDATA<<3), %ax
80104f5e:	66 b8 10 00          	mov    $0x10,%ax
  movw %ax, %ds
80104f62:	8e d8                	mov    %eax,%ds
  movw %ax, %es
80104f64:	8e c0                	mov    %eax,%es

  # Call trap(tf), where tf=%esp
  pushl %esp
80104f66:	54                   	push   %esp
  call trap
80104f67:	e8 eb 00 00 00       	call   80105057 <trap>
  addl $4, %esp
80104f6c:	83 c4 04             	add    $0x4,%esp

80104f6f <trapret>:

  # Return falls through to trapret...
.globl trapret
trapret:
  popal
80104f6f:	61                   	popa   
  popl %gs
80104f70:	0f a9                	pop    %gs
  popl %fs
80104f72:	0f a1                	pop    %fs
  popl %es
80104f74:	07                   	pop    %es
  popl %ds
80104f75:	1f                   	pop    %ds
  addl $0x8, %esp  # trapno and errcode
80104f76:	83 c4 08             	add    $0x8,%esp
  iret
80104f79:	cf                   	iret   

80104f7a <tvinit>:
struct spinlock tickslock;
uint ticks;

void
tvinit(void)
{
80104f7a:	f3 0f 1e fb          	endbr32 
80104f7e:	55                   	push   %ebp
80104f7f:	89 e5                	mov    %esp,%ebp
80104f81:	83 ec 08             	sub    $0x8,%esp
  int i;

  for(i = 0; i < 256; i++)
80104f84:	b8 00 00 00 00       	mov    $0x0,%eax
80104f89:	3d ff 00 00 00       	cmp    $0xff,%eax
80104f8e:	7f 4c                	jg     80104fdc <tvinit+0x62>
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
80104f90:	8b 0c 85 08 a0 10 80 	mov    -0x7fef5ff8(,%eax,4),%ecx
80104f97:	66 89 0c c5 a0 4c 11 	mov    %cx,-0x7feeb360(,%eax,8)
80104f9e:	80 
80104f9f:	66 c7 04 c5 a2 4c 11 	movw   $0x8,-0x7feeb35e(,%eax,8)
80104fa6:	80 08 00 
80104fa9:	c6 04 c5 a4 4c 11 80 	movb   $0x0,-0x7feeb35c(,%eax,8)
80104fb0:	00 
80104fb1:	0f b6 14 c5 a5 4c 11 	movzbl -0x7feeb35b(,%eax,8),%edx
80104fb8:	80 
80104fb9:	83 e2 f0             	and    $0xfffffff0,%edx
80104fbc:	83 ca 0e             	or     $0xe,%edx
80104fbf:	83 e2 8f             	and    $0xffffff8f,%edx
80104fc2:	83 ca 80             	or     $0xffffff80,%edx
80104fc5:	88 14 c5 a5 4c 11 80 	mov    %dl,-0x7feeb35b(,%eax,8)
80104fcc:	c1 e9 10             	shr    $0x10,%ecx
80104fcf:	66 89 0c c5 a6 4c 11 	mov    %cx,-0x7feeb35a(,%eax,8)
80104fd6:	80 
  for(i = 0; i < 256; i++)
80104fd7:	83 c0 01             	add    $0x1,%eax
80104fda:	eb ad                	jmp    80104f89 <tvinit+0xf>
  SETGATE(idt[T_SYSCALL], 1, SEG_KCODE<<3, vectors[T_SYSCALL], DPL_USER);
80104fdc:	8b 15 08 a1 10 80    	mov    0x8010a108,%edx
80104fe2:	66 89 15 a0 4e 11 80 	mov    %dx,0x80114ea0
80104fe9:	66 c7 05 a2 4e 11 80 	movw   $0x8,0x80114ea2
80104ff0:	08 00 
80104ff2:	c6 05 a4 4e 11 80 00 	movb   $0x0,0x80114ea4
80104ff9:	0f b6 05 a5 4e 11 80 	movzbl 0x80114ea5,%eax
80105000:	83 c8 0f             	or     $0xf,%eax
80105003:	83 e0 ef             	and    $0xffffffef,%eax
80105006:	83 c8 e0             	or     $0xffffffe0,%eax
80105009:	a2 a5 4e 11 80       	mov    %al,0x80114ea5
8010500e:	c1 ea 10             	shr    $0x10,%edx
80105011:	66 89 15 a6 4e 11 80 	mov    %dx,0x80114ea6

  initlock(&tickslock, "time");
80105018:	83 ec 08             	sub    $0x8,%esp
8010501b:	68 81 6e 10 80       	push   $0x80106e81
80105020:	68 60 4c 11 80       	push   $0x80114c60
80105025:	e8 5b eb ff ff       	call   80103b85 <initlock>
}
8010502a:	83 c4 10             	add    $0x10,%esp
8010502d:	c9                   	leave  
8010502e:	c3                   	ret    

8010502f <idtinit>:

void
idtinit(void)
{
8010502f:	f3 0f 1e fb          	endbr32 
80105033:	55                   	push   %ebp
80105034:	89 e5                	mov    %esp,%ebp
80105036:	83 ec 10             	sub    $0x10,%esp
  pd[0] = size-1;
80105039:	66 c7 45 fa ff 07    	movw   $0x7ff,-0x6(%ebp)
  pd[1] = (uint)p;
8010503f:	b8 a0 4c 11 80       	mov    $0x80114ca0,%eax
80105044:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  pd[2] = (uint)p >> 16;
80105048:	c1 e8 10             	shr    $0x10,%eax
8010504b:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  asm volatile("lidt (%0)" : : "r" (pd));
8010504f:	8d 45 fa             	lea    -0x6(%ebp),%eax
80105052:	0f 01 18             	lidtl  (%eax)
  lidt(idt, sizeof(idt));
}
80105055:	c9                   	leave  
80105056:	c3                   	ret    

80105057 <trap>:

//PAGEBREAK: 41
void
trap(struct trapframe *tf)
{
80105057:	f3 0f 1e fb          	endbr32 
8010505b:	55                   	push   %ebp
8010505c:	89 e5                	mov    %esp,%ebp
8010505e:	57                   	push   %edi
8010505f:	56                   	push   %esi
80105060:	53                   	push   %ebx
80105061:	83 ec 1c             	sub    $0x1c,%esp
80105064:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(tf->trapno == T_SYSCALL){
80105067:	8b 43 30             	mov    0x30(%ebx),%eax
8010506a:	83 f8 40             	cmp    $0x40,%eax
8010506d:	74 14                	je     80105083 <trap+0x2c>
    if(myproc()->killed)
      exit();
    return;
  }

  switch(tf->trapno){
8010506f:	83 e8 20             	sub    $0x20,%eax
80105072:	83 f8 1f             	cmp    $0x1f,%eax
80105075:	0f 87 3b 01 00 00    	ja     801051b6 <trap+0x15f>
8010507b:	3e ff 24 85 28 6f 10 	notrack jmp *-0x7fef90d8(,%eax,4)
80105082:	80 
    if(myproc()->killed)
80105083:	e8 58 e2 ff ff       	call   801032e0 <myproc>
80105088:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
8010508c:	75 1f                	jne    801050ad <trap+0x56>
    myproc()->tf = tf;
8010508e:	e8 4d e2 ff ff       	call   801032e0 <myproc>
80105093:	89 58 18             	mov    %ebx,0x18(%eax)
    syscall();
80105096:	e8 33 f0 ff ff       	call   801040ce <syscall>
    if(myproc()->killed)
8010509b:	e8 40 e2 ff ff       	call   801032e0 <myproc>
801050a0:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801050a4:	74 7e                	je     80105124 <trap+0xcd>
      exit();
801050a6:	e8 f7 e5 ff ff       	call   801036a2 <exit>
    return;
801050ab:	eb 77                	jmp    80105124 <trap+0xcd>
      exit();
801050ad:	e8 f0 e5 ff ff       	call   801036a2 <exit>
801050b2:	eb da                	jmp    8010508e <trap+0x37>
  case T_IRQ0 + IRQ_TIMER:
    if(cpuid() == 0){
801050b4:	e8 08 e2 ff ff       	call   801032c1 <cpuid>
801050b9:	85 c0                	test   %eax,%eax
801050bb:	74 6f                	je     8010512c <trap+0xd5>
      acquire(&tickslock);
      ticks++;
      wakeup(&ticks);
      release(&tickslock);
    }
    lapiceoi();
801050bd:	e8 8c d3 ff ff       	call   8010244e <lapiceoi>
  }

  // Force process exit if it has been killed and is in user space.
  // (If it is still executing in the kernel, let it keep running
  // until it gets to the regular system call return.)
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
801050c2:	e8 19 e2 ff ff       	call   801032e0 <myproc>
801050c7:	85 c0                	test   %eax,%eax
801050c9:	74 1c                	je     801050e7 <trap+0x90>
801050cb:	e8 10 e2 ff ff       	call   801032e0 <myproc>
801050d0:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801050d4:	74 11                	je     801050e7 <trap+0x90>
801050d6:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
801050da:	83 e0 03             	and    $0x3,%eax
801050dd:	66 83 f8 03          	cmp    $0x3,%ax
801050e1:	0f 84 62 01 00 00    	je     80105249 <trap+0x1f2>
    exit();

  // Force process to give up CPU on clock tick.
  // If interrupts were on while locks held, would need to check nlock.
  if(myproc() && myproc()->state == RUNNING &&
801050e7:	e8 f4 e1 ff ff       	call   801032e0 <myproc>
801050ec:	85 c0                	test   %eax,%eax
801050ee:	74 0f                	je     801050ff <trap+0xa8>
801050f0:	e8 eb e1 ff ff       	call   801032e0 <myproc>
801050f5:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
801050f9:	0f 84 54 01 00 00    	je     80105253 <trap+0x1fc>
     tf->trapno == T_IRQ0+IRQ_TIMER)
    yield();

  // Check if the process has been killed since we yielded
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
801050ff:	e8 dc e1 ff ff       	call   801032e0 <myproc>
80105104:	85 c0                	test   %eax,%eax
80105106:	74 1c                	je     80105124 <trap+0xcd>
80105108:	e8 d3 e1 ff ff       	call   801032e0 <myproc>
8010510d:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105111:	74 11                	je     80105124 <trap+0xcd>
80105113:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
80105117:	83 e0 03             	and    $0x3,%eax
8010511a:	66 83 f8 03          	cmp    $0x3,%ax
8010511e:	0f 84 43 01 00 00    	je     80105267 <trap+0x210>
    exit();
}
80105124:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105127:	5b                   	pop    %ebx
80105128:	5e                   	pop    %esi
80105129:	5f                   	pop    %edi
8010512a:	5d                   	pop    %ebp
8010512b:	c3                   	ret    
      acquire(&tickslock);
8010512c:	83 ec 0c             	sub    $0xc,%esp
8010512f:	68 60 4c 11 80       	push   $0x80114c60
80105134:	e8 9c eb ff ff       	call   80103cd5 <acquire>
      ticks++;
80105139:	83 05 a0 54 11 80 01 	addl   $0x1,0x801154a0
      wakeup(&ticks);
80105140:	c7 04 24 a0 54 11 80 	movl   $0x801154a0,(%esp)
80105147:	e8 c3 e7 ff ff       	call   8010390f <wakeup>
      release(&tickslock);
8010514c:	c7 04 24 60 4c 11 80 	movl   $0x80114c60,(%esp)
80105153:	e8 e6 eb ff ff       	call   80103d3e <release>
80105158:	83 c4 10             	add    $0x10,%esp
8010515b:	e9 5d ff ff ff       	jmp    801050bd <trap+0x66>
    ideintr();
80105160:	e8 a2 cc ff ff       	call   80101e07 <ideintr>
    lapiceoi();
80105165:	e8 e4 d2 ff ff       	call   8010244e <lapiceoi>
    break;
8010516a:	e9 53 ff ff ff       	jmp    801050c2 <trap+0x6b>
    kbdintr();
8010516f:	e8 17 d1 ff ff       	call   8010228b <kbdintr>
    lapiceoi();
80105174:	e8 d5 d2 ff ff       	call   8010244e <lapiceoi>
    break;
80105179:	e9 44 ff ff ff       	jmp    801050c2 <trap+0x6b>
    uartintr();
8010517e:	e8 0a 02 00 00       	call   8010538d <uartintr>
    lapiceoi();
80105183:	e8 c6 d2 ff ff       	call   8010244e <lapiceoi>
    break;
80105188:	e9 35 ff ff ff       	jmp    801050c2 <trap+0x6b>
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
8010518d:	8b 7b 38             	mov    0x38(%ebx),%edi
            cpuid(), tf->cs, tf->eip);
80105190:	0f b7 73 3c          	movzwl 0x3c(%ebx),%esi
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
80105194:	e8 28 e1 ff ff       	call   801032c1 <cpuid>
80105199:	57                   	push   %edi
8010519a:	0f b7 f6             	movzwl %si,%esi
8010519d:	56                   	push   %esi
8010519e:	50                   	push   %eax
8010519f:	68 8c 6e 10 80       	push   $0x80106e8c
801051a4:	e8 80 b4 ff ff       	call   80100629 <cprintf>
    lapiceoi();
801051a9:	e8 a0 d2 ff ff       	call   8010244e <lapiceoi>
    break;
801051ae:	83 c4 10             	add    $0x10,%esp
801051b1:	e9 0c ff ff ff       	jmp    801050c2 <trap+0x6b>
    if(myproc() == 0 || (tf->cs&3) == 0){
801051b6:	e8 25 e1 ff ff       	call   801032e0 <myproc>
801051bb:	85 c0                	test   %eax,%eax
801051bd:	74 5f                	je     8010521e <trap+0x1c7>
801051bf:	f6 43 3c 03          	testb  $0x3,0x3c(%ebx)
801051c3:	74 59                	je     8010521e <trap+0x1c7>
  asm volatile("movl %%cr2,%0" : "=r" (val));
801051c5:	0f 20 d7             	mov    %cr2,%edi
    cprintf("pid %d %s: trap %d err %d on cpu %d "
801051c8:	8b 43 38             	mov    0x38(%ebx),%eax
801051cb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801051ce:	e8 ee e0 ff ff       	call   801032c1 <cpuid>
801051d3:	89 45 e0             	mov    %eax,-0x20(%ebp)
801051d6:	8b 53 34             	mov    0x34(%ebx),%edx
801051d9:	89 55 dc             	mov    %edx,-0x24(%ebp)
801051dc:	8b 73 30             	mov    0x30(%ebx),%esi
            myproc()->pid, myproc()->name, tf->trapno,
801051df:	e8 fc e0 ff ff       	call   801032e0 <myproc>
801051e4:	8d 48 6c             	lea    0x6c(%eax),%ecx
801051e7:	89 4d d8             	mov    %ecx,-0x28(%ebp)
801051ea:	e8 f1 e0 ff ff       	call   801032e0 <myproc>
    cprintf("pid %d %s: trap %d err %d on cpu %d "
801051ef:	57                   	push   %edi
801051f0:	ff 75 e4             	pushl  -0x1c(%ebp)
801051f3:	ff 75 e0             	pushl  -0x20(%ebp)
801051f6:	ff 75 dc             	pushl  -0x24(%ebp)
801051f9:	56                   	push   %esi
801051fa:	ff 75 d8             	pushl  -0x28(%ebp)
801051fd:	ff 70 10             	pushl  0x10(%eax)
80105200:	68 e4 6e 10 80       	push   $0x80106ee4
80105205:	e8 1f b4 ff ff       	call   80100629 <cprintf>
    myproc()->killed = 1;
8010520a:	83 c4 20             	add    $0x20,%esp
8010520d:	e8 ce e0 ff ff       	call   801032e0 <myproc>
80105212:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
80105219:	e9 a4 fe ff ff       	jmp    801050c2 <trap+0x6b>
8010521e:	0f 20 d7             	mov    %cr2,%edi
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
80105221:	8b 73 38             	mov    0x38(%ebx),%esi
80105224:	e8 98 e0 ff ff       	call   801032c1 <cpuid>
80105229:	83 ec 0c             	sub    $0xc,%esp
8010522c:	57                   	push   %edi
8010522d:	56                   	push   %esi
8010522e:	50                   	push   %eax
8010522f:	ff 73 30             	pushl  0x30(%ebx)
80105232:	68 b0 6e 10 80       	push   $0x80106eb0
80105237:	e8 ed b3 ff ff       	call   80100629 <cprintf>
      panic("trap");
8010523c:	83 c4 14             	add    $0x14,%esp
8010523f:	68 86 6e 10 80       	push   $0x80106e86
80105244:	e8 13 b1 ff ff       	call   8010035c <panic>
    exit();
80105249:	e8 54 e4 ff ff       	call   801036a2 <exit>
8010524e:	e9 94 fe ff ff       	jmp    801050e7 <trap+0x90>
  if(myproc() && myproc()->state == RUNNING &&
80105253:	83 7b 30 20          	cmpl   $0x20,0x30(%ebx)
80105257:	0f 85 a2 fe ff ff    	jne    801050ff <trap+0xa8>
    yield();
8010525d:	e8 0a e5 ff ff       	call   8010376c <yield>
80105262:	e9 98 fe ff ff       	jmp    801050ff <trap+0xa8>
    exit();
80105267:	e8 36 e4 ff ff       	call   801036a2 <exit>
8010526c:	e9 b3 fe ff ff       	jmp    80105124 <trap+0xcd>

80105271 <uartgetc>:
  outb(COM1+0, c);
}

static int
uartgetc(void)
{
80105271:	f3 0f 1e fb          	endbr32 
  if(!uart)
80105275:	83 3d bc a5 10 80 00 	cmpl   $0x0,0x8010a5bc
8010527c:	74 14                	je     80105292 <uartgetc+0x21>
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
8010527e:	ba fd 03 00 00       	mov    $0x3fd,%edx
80105283:	ec                   	in     (%dx),%al
    return -1;
  if(!(inb(COM1+5) & 0x01))
80105284:	a8 01                	test   $0x1,%al
80105286:	74 10                	je     80105298 <uartgetc+0x27>
80105288:	ba f8 03 00 00       	mov    $0x3f8,%edx
8010528d:	ec                   	in     (%dx),%al
    return -1;
  return inb(COM1+0);
8010528e:	0f b6 c0             	movzbl %al,%eax
80105291:	c3                   	ret    
    return -1;
80105292:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105297:	c3                   	ret    
    return -1;
80105298:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010529d:	c3                   	ret    

8010529e <uartputc>:
{
8010529e:	f3 0f 1e fb          	endbr32 
  if(!uart)
801052a2:	83 3d bc a5 10 80 00 	cmpl   $0x0,0x8010a5bc
801052a9:	74 3b                	je     801052e6 <uartputc+0x48>
{
801052ab:	55                   	push   %ebp
801052ac:	89 e5                	mov    %esp,%ebp
801052ae:	53                   	push   %ebx
801052af:	83 ec 04             	sub    $0x4,%esp
  for(i = 0; i < 128 && !(inb(COM1+5) & 0x20); i++)
801052b2:	bb 00 00 00 00       	mov    $0x0,%ebx
801052b7:	83 fb 7f             	cmp    $0x7f,%ebx
801052ba:	7f 1c                	jg     801052d8 <uartputc+0x3a>
801052bc:	ba fd 03 00 00       	mov    $0x3fd,%edx
801052c1:	ec                   	in     (%dx),%al
801052c2:	a8 20                	test   $0x20,%al
801052c4:	75 12                	jne    801052d8 <uartputc+0x3a>
    microdelay(10);
801052c6:	83 ec 0c             	sub    $0xc,%esp
801052c9:	6a 0a                	push   $0xa
801052cb:	e8 a3 d1 ff ff       	call   80102473 <microdelay>
  for(i = 0; i < 128 && !(inb(COM1+5) & 0x20); i++)
801052d0:	83 c3 01             	add    $0x1,%ebx
801052d3:	83 c4 10             	add    $0x10,%esp
801052d6:	eb df                	jmp    801052b7 <uartputc+0x19>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801052d8:	8b 45 08             	mov    0x8(%ebp),%eax
801052db:	ba f8 03 00 00       	mov    $0x3f8,%edx
801052e0:	ee                   	out    %al,(%dx)
}
801052e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801052e4:	c9                   	leave  
801052e5:	c3                   	ret    
801052e6:	c3                   	ret    

801052e7 <uartinit>:
{
801052e7:	f3 0f 1e fb          	endbr32 
801052eb:	55                   	push   %ebp
801052ec:	89 e5                	mov    %esp,%ebp
801052ee:	56                   	push   %esi
801052ef:	53                   	push   %ebx
801052f0:	b9 00 00 00 00       	mov    $0x0,%ecx
801052f5:	ba fa 03 00 00       	mov    $0x3fa,%edx
801052fa:	89 c8                	mov    %ecx,%eax
801052fc:	ee                   	out    %al,(%dx)
801052fd:	be fb 03 00 00       	mov    $0x3fb,%esi
80105302:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
80105307:	89 f2                	mov    %esi,%edx
80105309:	ee                   	out    %al,(%dx)
8010530a:	b8 0c 00 00 00       	mov    $0xc,%eax
8010530f:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105314:	ee                   	out    %al,(%dx)
80105315:	bb f9 03 00 00       	mov    $0x3f9,%ebx
8010531a:	89 c8                	mov    %ecx,%eax
8010531c:	89 da                	mov    %ebx,%edx
8010531e:	ee                   	out    %al,(%dx)
8010531f:	b8 03 00 00 00       	mov    $0x3,%eax
80105324:	89 f2                	mov    %esi,%edx
80105326:	ee                   	out    %al,(%dx)
80105327:	ba fc 03 00 00       	mov    $0x3fc,%edx
8010532c:	89 c8                	mov    %ecx,%eax
8010532e:	ee                   	out    %al,(%dx)
8010532f:	b8 01 00 00 00       	mov    $0x1,%eax
80105334:	89 da                	mov    %ebx,%edx
80105336:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80105337:	ba fd 03 00 00       	mov    $0x3fd,%edx
8010533c:	ec                   	in     (%dx),%al
  if(inb(COM1+5) == 0xFF)
8010533d:	3c ff                	cmp    $0xff,%al
8010533f:	74 45                	je     80105386 <uartinit+0x9f>
  uart = 1;
80105341:	c7 05 bc a5 10 80 01 	movl   $0x1,0x8010a5bc
80105348:	00 00 00 
8010534b:	ba fa 03 00 00       	mov    $0x3fa,%edx
80105350:	ec                   	in     (%dx),%al
80105351:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105356:	ec                   	in     (%dx),%al
  ioapicenable(IRQ_COM1, 0);
80105357:	83 ec 08             	sub    $0x8,%esp
8010535a:	6a 00                	push   $0x0
8010535c:	6a 04                	push   $0x4
8010535e:	e8 b3 cc ff ff       	call   80102016 <ioapicenable>
  for(p="xv6...\n"; *p; p++)
80105363:	83 c4 10             	add    $0x10,%esp
80105366:	bb a8 6f 10 80       	mov    $0x80106fa8,%ebx
8010536b:	eb 12                	jmp    8010537f <uartinit+0x98>
    uartputc(*p);
8010536d:	83 ec 0c             	sub    $0xc,%esp
80105370:	0f be c0             	movsbl %al,%eax
80105373:	50                   	push   %eax
80105374:	e8 25 ff ff ff       	call   8010529e <uartputc>
  for(p="xv6...\n"; *p; p++)
80105379:	83 c3 01             	add    $0x1,%ebx
8010537c:	83 c4 10             	add    $0x10,%esp
8010537f:	0f b6 03             	movzbl (%ebx),%eax
80105382:	84 c0                	test   %al,%al
80105384:	75 e7                	jne    8010536d <uartinit+0x86>
}
80105386:	8d 65 f8             	lea    -0x8(%ebp),%esp
80105389:	5b                   	pop    %ebx
8010538a:	5e                   	pop    %esi
8010538b:	5d                   	pop    %ebp
8010538c:	c3                   	ret    

8010538d <uartintr>:

void
uartintr(void)
{
8010538d:	f3 0f 1e fb          	endbr32 
80105391:	55                   	push   %ebp
80105392:	89 e5                	mov    %esp,%ebp
80105394:	83 ec 14             	sub    $0x14,%esp
  consoleintr(uartgetc);
80105397:	68 71 52 10 80       	push   $0x80105271
8010539c:	e8 b8 b3 ff ff       	call   80100759 <consoleintr>
}
801053a1:	83 c4 10             	add    $0x10,%esp
801053a4:	c9                   	leave  
801053a5:	c3                   	ret    

801053a6 <vector0>:
# generated by vectors.pl - do not edit
# handlers
.globl alltraps
.globl vector0
vector0:
  pushl $0
801053a6:	6a 00                	push   $0x0
  pushl $0
801053a8:	6a 00                	push   $0x0
  jmp alltraps
801053aa:	e9 a8 fb ff ff       	jmp    80104f57 <alltraps>

801053af <vector1>:
.globl vector1
vector1:
  pushl $0
801053af:	6a 00                	push   $0x0
  pushl $1
801053b1:	6a 01                	push   $0x1
  jmp alltraps
801053b3:	e9 9f fb ff ff       	jmp    80104f57 <alltraps>

801053b8 <vector2>:
.globl vector2
vector2:
  pushl $0
801053b8:	6a 00                	push   $0x0
  pushl $2
801053ba:	6a 02                	push   $0x2
  jmp alltraps
801053bc:	e9 96 fb ff ff       	jmp    80104f57 <alltraps>

801053c1 <vector3>:
.globl vector3
vector3:
  pushl $0
801053c1:	6a 00                	push   $0x0
  pushl $3
801053c3:	6a 03                	push   $0x3
  jmp alltraps
801053c5:	e9 8d fb ff ff       	jmp    80104f57 <alltraps>

801053ca <vector4>:
.globl vector4
vector4:
  pushl $0
801053ca:	6a 00                	push   $0x0
  pushl $4
801053cc:	6a 04                	push   $0x4
  jmp alltraps
801053ce:	e9 84 fb ff ff       	jmp    80104f57 <alltraps>

801053d3 <vector5>:
.globl vector5
vector5:
  pushl $0
801053d3:	6a 00                	push   $0x0
  pushl $5
801053d5:	6a 05                	push   $0x5
  jmp alltraps
801053d7:	e9 7b fb ff ff       	jmp    80104f57 <alltraps>

801053dc <vector6>:
.globl vector6
vector6:
  pushl $0
801053dc:	6a 00                	push   $0x0
  pushl $6
801053de:	6a 06                	push   $0x6
  jmp alltraps
801053e0:	e9 72 fb ff ff       	jmp    80104f57 <alltraps>

801053e5 <vector7>:
.globl vector7
vector7:
  pushl $0
801053e5:	6a 00                	push   $0x0
  pushl $7
801053e7:	6a 07                	push   $0x7
  jmp alltraps
801053e9:	e9 69 fb ff ff       	jmp    80104f57 <alltraps>

801053ee <vector8>:
.globl vector8
vector8:
  pushl $8
801053ee:	6a 08                	push   $0x8
  jmp alltraps
801053f0:	e9 62 fb ff ff       	jmp    80104f57 <alltraps>

801053f5 <vector9>:
.globl vector9
vector9:
  pushl $0
801053f5:	6a 00                	push   $0x0
  pushl $9
801053f7:	6a 09                	push   $0x9
  jmp alltraps
801053f9:	e9 59 fb ff ff       	jmp    80104f57 <alltraps>

801053fe <vector10>:
.globl vector10
vector10:
  pushl $10
801053fe:	6a 0a                	push   $0xa
  jmp alltraps
80105400:	e9 52 fb ff ff       	jmp    80104f57 <alltraps>

80105405 <vector11>:
.globl vector11
vector11:
  pushl $11
80105405:	6a 0b                	push   $0xb
  jmp alltraps
80105407:	e9 4b fb ff ff       	jmp    80104f57 <alltraps>

8010540c <vector12>:
.globl vector12
vector12:
  pushl $12
8010540c:	6a 0c                	push   $0xc
  jmp alltraps
8010540e:	e9 44 fb ff ff       	jmp    80104f57 <alltraps>

80105413 <vector13>:
.globl vector13
vector13:
  pushl $13
80105413:	6a 0d                	push   $0xd
  jmp alltraps
80105415:	e9 3d fb ff ff       	jmp    80104f57 <alltraps>

8010541a <vector14>:
.globl vector14
vector14:
  pushl $14
8010541a:	6a 0e                	push   $0xe
  jmp alltraps
8010541c:	e9 36 fb ff ff       	jmp    80104f57 <alltraps>

80105421 <vector15>:
.globl vector15
vector15:
  pushl $0
80105421:	6a 00                	push   $0x0
  pushl $15
80105423:	6a 0f                	push   $0xf
  jmp alltraps
80105425:	e9 2d fb ff ff       	jmp    80104f57 <alltraps>

8010542a <vector16>:
.globl vector16
vector16:
  pushl $0
8010542a:	6a 00                	push   $0x0
  pushl $16
8010542c:	6a 10                	push   $0x10
  jmp alltraps
8010542e:	e9 24 fb ff ff       	jmp    80104f57 <alltraps>

80105433 <vector17>:
.globl vector17
vector17:
  pushl $17
80105433:	6a 11                	push   $0x11
  jmp alltraps
80105435:	e9 1d fb ff ff       	jmp    80104f57 <alltraps>

8010543a <vector18>:
.globl vector18
vector18:
  pushl $0
8010543a:	6a 00                	push   $0x0
  pushl $18
8010543c:	6a 12                	push   $0x12
  jmp alltraps
8010543e:	e9 14 fb ff ff       	jmp    80104f57 <alltraps>

80105443 <vector19>:
.globl vector19
vector19:
  pushl $0
80105443:	6a 00                	push   $0x0
  pushl $19
80105445:	6a 13                	push   $0x13
  jmp alltraps
80105447:	e9 0b fb ff ff       	jmp    80104f57 <alltraps>

8010544c <vector20>:
.globl vector20
vector20:
  pushl $0
8010544c:	6a 00                	push   $0x0
  pushl $20
8010544e:	6a 14                	push   $0x14
  jmp alltraps
80105450:	e9 02 fb ff ff       	jmp    80104f57 <alltraps>

80105455 <vector21>:
.globl vector21
vector21:
  pushl $0
80105455:	6a 00                	push   $0x0
  pushl $21
80105457:	6a 15                	push   $0x15
  jmp alltraps
80105459:	e9 f9 fa ff ff       	jmp    80104f57 <alltraps>

8010545e <vector22>:
.globl vector22
vector22:
  pushl $0
8010545e:	6a 00                	push   $0x0
  pushl $22
80105460:	6a 16                	push   $0x16
  jmp alltraps
80105462:	e9 f0 fa ff ff       	jmp    80104f57 <alltraps>

80105467 <vector23>:
.globl vector23
vector23:
  pushl $0
80105467:	6a 00                	push   $0x0
  pushl $23
80105469:	6a 17                	push   $0x17
  jmp alltraps
8010546b:	e9 e7 fa ff ff       	jmp    80104f57 <alltraps>

80105470 <vector24>:
.globl vector24
vector24:
  pushl $0
80105470:	6a 00                	push   $0x0
  pushl $24
80105472:	6a 18                	push   $0x18
  jmp alltraps
80105474:	e9 de fa ff ff       	jmp    80104f57 <alltraps>

80105479 <vector25>:
.globl vector25
vector25:
  pushl $0
80105479:	6a 00                	push   $0x0
  pushl $25
8010547b:	6a 19                	push   $0x19
  jmp alltraps
8010547d:	e9 d5 fa ff ff       	jmp    80104f57 <alltraps>

80105482 <vector26>:
.globl vector26
vector26:
  pushl $0
80105482:	6a 00                	push   $0x0
  pushl $26
80105484:	6a 1a                	push   $0x1a
  jmp alltraps
80105486:	e9 cc fa ff ff       	jmp    80104f57 <alltraps>

8010548b <vector27>:
.globl vector27
vector27:
  pushl $0
8010548b:	6a 00                	push   $0x0
  pushl $27
8010548d:	6a 1b                	push   $0x1b
  jmp alltraps
8010548f:	e9 c3 fa ff ff       	jmp    80104f57 <alltraps>

80105494 <vector28>:
.globl vector28
vector28:
  pushl $0
80105494:	6a 00                	push   $0x0
  pushl $28
80105496:	6a 1c                	push   $0x1c
  jmp alltraps
80105498:	e9 ba fa ff ff       	jmp    80104f57 <alltraps>

8010549d <vector29>:
.globl vector29
vector29:
  pushl $0
8010549d:	6a 00                	push   $0x0
  pushl $29
8010549f:	6a 1d                	push   $0x1d
  jmp alltraps
801054a1:	e9 b1 fa ff ff       	jmp    80104f57 <alltraps>

801054a6 <vector30>:
.globl vector30
vector30:
  pushl $0
801054a6:	6a 00                	push   $0x0
  pushl $30
801054a8:	6a 1e                	push   $0x1e
  jmp alltraps
801054aa:	e9 a8 fa ff ff       	jmp    80104f57 <alltraps>

801054af <vector31>:
.globl vector31
vector31:
  pushl $0
801054af:	6a 00                	push   $0x0
  pushl $31
801054b1:	6a 1f                	push   $0x1f
  jmp alltraps
801054b3:	e9 9f fa ff ff       	jmp    80104f57 <alltraps>

801054b8 <vector32>:
.globl vector32
vector32:
  pushl $0
801054b8:	6a 00                	push   $0x0
  pushl $32
801054ba:	6a 20                	push   $0x20
  jmp alltraps
801054bc:	e9 96 fa ff ff       	jmp    80104f57 <alltraps>

801054c1 <vector33>:
.globl vector33
vector33:
  pushl $0
801054c1:	6a 00                	push   $0x0
  pushl $33
801054c3:	6a 21                	push   $0x21
  jmp alltraps
801054c5:	e9 8d fa ff ff       	jmp    80104f57 <alltraps>

801054ca <vector34>:
.globl vector34
vector34:
  pushl $0
801054ca:	6a 00                	push   $0x0
  pushl $34
801054cc:	6a 22                	push   $0x22
  jmp alltraps
801054ce:	e9 84 fa ff ff       	jmp    80104f57 <alltraps>

801054d3 <vector35>:
.globl vector35
vector35:
  pushl $0
801054d3:	6a 00                	push   $0x0
  pushl $35
801054d5:	6a 23                	push   $0x23
  jmp alltraps
801054d7:	e9 7b fa ff ff       	jmp    80104f57 <alltraps>

801054dc <vector36>:
.globl vector36
vector36:
  pushl $0
801054dc:	6a 00                	push   $0x0
  pushl $36
801054de:	6a 24                	push   $0x24
  jmp alltraps
801054e0:	e9 72 fa ff ff       	jmp    80104f57 <alltraps>

801054e5 <vector37>:
.globl vector37
vector37:
  pushl $0
801054e5:	6a 00                	push   $0x0
  pushl $37
801054e7:	6a 25                	push   $0x25
  jmp alltraps
801054e9:	e9 69 fa ff ff       	jmp    80104f57 <alltraps>

801054ee <vector38>:
.globl vector38
vector38:
  pushl $0
801054ee:	6a 00                	push   $0x0
  pushl $38
801054f0:	6a 26                	push   $0x26
  jmp alltraps
801054f2:	e9 60 fa ff ff       	jmp    80104f57 <alltraps>

801054f7 <vector39>:
.globl vector39
vector39:
  pushl $0
801054f7:	6a 00                	push   $0x0
  pushl $39
801054f9:	6a 27                	push   $0x27
  jmp alltraps
801054fb:	e9 57 fa ff ff       	jmp    80104f57 <alltraps>

80105500 <vector40>:
.globl vector40
vector40:
  pushl $0
80105500:	6a 00                	push   $0x0
  pushl $40
80105502:	6a 28                	push   $0x28
  jmp alltraps
80105504:	e9 4e fa ff ff       	jmp    80104f57 <alltraps>

80105509 <vector41>:
.globl vector41
vector41:
  pushl $0
80105509:	6a 00                	push   $0x0
  pushl $41
8010550b:	6a 29                	push   $0x29
  jmp alltraps
8010550d:	e9 45 fa ff ff       	jmp    80104f57 <alltraps>

80105512 <vector42>:
.globl vector42
vector42:
  pushl $0
80105512:	6a 00                	push   $0x0
  pushl $42
80105514:	6a 2a                	push   $0x2a
  jmp alltraps
80105516:	e9 3c fa ff ff       	jmp    80104f57 <alltraps>

8010551b <vector43>:
.globl vector43
vector43:
  pushl $0
8010551b:	6a 00                	push   $0x0
  pushl $43
8010551d:	6a 2b                	push   $0x2b
  jmp alltraps
8010551f:	e9 33 fa ff ff       	jmp    80104f57 <alltraps>

80105524 <vector44>:
.globl vector44
vector44:
  pushl $0
80105524:	6a 00                	push   $0x0
  pushl $44
80105526:	6a 2c                	push   $0x2c
  jmp alltraps
80105528:	e9 2a fa ff ff       	jmp    80104f57 <alltraps>

8010552d <vector45>:
.globl vector45
vector45:
  pushl $0
8010552d:	6a 00                	push   $0x0
  pushl $45
8010552f:	6a 2d                	push   $0x2d
  jmp alltraps
80105531:	e9 21 fa ff ff       	jmp    80104f57 <alltraps>

80105536 <vector46>:
.globl vector46
vector46:
  pushl $0
80105536:	6a 00                	push   $0x0
  pushl $46
80105538:	6a 2e                	push   $0x2e
  jmp alltraps
8010553a:	e9 18 fa ff ff       	jmp    80104f57 <alltraps>

8010553f <vector47>:
.globl vector47
vector47:
  pushl $0
8010553f:	6a 00                	push   $0x0
  pushl $47
80105541:	6a 2f                	push   $0x2f
  jmp alltraps
80105543:	e9 0f fa ff ff       	jmp    80104f57 <alltraps>

80105548 <vector48>:
.globl vector48
vector48:
  pushl $0
80105548:	6a 00                	push   $0x0
  pushl $48
8010554a:	6a 30                	push   $0x30
  jmp alltraps
8010554c:	e9 06 fa ff ff       	jmp    80104f57 <alltraps>

80105551 <vector49>:
.globl vector49
vector49:
  pushl $0
80105551:	6a 00                	push   $0x0
  pushl $49
80105553:	6a 31                	push   $0x31
  jmp alltraps
80105555:	e9 fd f9 ff ff       	jmp    80104f57 <alltraps>

8010555a <vector50>:
.globl vector50
vector50:
  pushl $0
8010555a:	6a 00                	push   $0x0
  pushl $50
8010555c:	6a 32                	push   $0x32
  jmp alltraps
8010555e:	e9 f4 f9 ff ff       	jmp    80104f57 <alltraps>

80105563 <vector51>:
.globl vector51
vector51:
  pushl $0
80105563:	6a 00                	push   $0x0
  pushl $51
80105565:	6a 33                	push   $0x33
  jmp alltraps
80105567:	e9 eb f9 ff ff       	jmp    80104f57 <alltraps>

8010556c <vector52>:
.globl vector52
vector52:
  pushl $0
8010556c:	6a 00                	push   $0x0
  pushl $52
8010556e:	6a 34                	push   $0x34
  jmp alltraps
80105570:	e9 e2 f9 ff ff       	jmp    80104f57 <alltraps>

80105575 <vector53>:
.globl vector53
vector53:
  pushl $0
80105575:	6a 00                	push   $0x0
  pushl $53
80105577:	6a 35                	push   $0x35
  jmp alltraps
80105579:	e9 d9 f9 ff ff       	jmp    80104f57 <alltraps>

8010557e <vector54>:
.globl vector54
vector54:
  pushl $0
8010557e:	6a 00                	push   $0x0
  pushl $54
80105580:	6a 36                	push   $0x36
  jmp alltraps
80105582:	e9 d0 f9 ff ff       	jmp    80104f57 <alltraps>

80105587 <vector55>:
.globl vector55
vector55:
  pushl $0
80105587:	6a 00                	push   $0x0
  pushl $55
80105589:	6a 37                	push   $0x37
  jmp alltraps
8010558b:	e9 c7 f9 ff ff       	jmp    80104f57 <alltraps>

80105590 <vector56>:
.globl vector56
vector56:
  pushl $0
80105590:	6a 00                	push   $0x0
  pushl $56
80105592:	6a 38                	push   $0x38
  jmp alltraps
80105594:	e9 be f9 ff ff       	jmp    80104f57 <alltraps>

80105599 <vector57>:
.globl vector57
vector57:
  pushl $0
80105599:	6a 00                	push   $0x0
  pushl $57
8010559b:	6a 39                	push   $0x39
  jmp alltraps
8010559d:	e9 b5 f9 ff ff       	jmp    80104f57 <alltraps>

801055a2 <vector58>:
.globl vector58
vector58:
  pushl $0
801055a2:	6a 00                	push   $0x0
  pushl $58
801055a4:	6a 3a                	push   $0x3a
  jmp alltraps
801055a6:	e9 ac f9 ff ff       	jmp    80104f57 <alltraps>

801055ab <vector59>:
.globl vector59
vector59:
  pushl $0
801055ab:	6a 00                	push   $0x0
  pushl $59
801055ad:	6a 3b                	push   $0x3b
  jmp alltraps
801055af:	e9 a3 f9 ff ff       	jmp    80104f57 <alltraps>

801055b4 <vector60>:
.globl vector60
vector60:
  pushl $0
801055b4:	6a 00                	push   $0x0
  pushl $60
801055b6:	6a 3c                	push   $0x3c
  jmp alltraps
801055b8:	e9 9a f9 ff ff       	jmp    80104f57 <alltraps>

801055bd <vector61>:
.globl vector61
vector61:
  pushl $0
801055bd:	6a 00                	push   $0x0
  pushl $61
801055bf:	6a 3d                	push   $0x3d
  jmp alltraps
801055c1:	e9 91 f9 ff ff       	jmp    80104f57 <alltraps>

801055c6 <vector62>:
.globl vector62
vector62:
  pushl $0
801055c6:	6a 00                	push   $0x0
  pushl $62
801055c8:	6a 3e                	push   $0x3e
  jmp alltraps
801055ca:	e9 88 f9 ff ff       	jmp    80104f57 <alltraps>

801055cf <vector63>:
.globl vector63
vector63:
  pushl $0
801055cf:	6a 00                	push   $0x0
  pushl $63
801055d1:	6a 3f                	push   $0x3f
  jmp alltraps
801055d3:	e9 7f f9 ff ff       	jmp    80104f57 <alltraps>

801055d8 <vector64>:
.globl vector64
vector64:
  pushl $0
801055d8:	6a 00                	push   $0x0
  pushl $64
801055da:	6a 40                	push   $0x40
  jmp alltraps
801055dc:	e9 76 f9 ff ff       	jmp    80104f57 <alltraps>

801055e1 <vector65>:
.globl vector65
vector65:
  pushl $0
801055e1:	6a 00                	push   $0x0
  pushl $65
801055e3:	6a 41                	push   $0x41
  jmp alltraps
801055e5:	e9 6d f9 ff ff       	jmp    80104f57 <alltraps>

801055ea <vector66>:
.globl vector66
vector66:
  pushl $0
801055ea:	6a 00                	push   $0x0
  pushl $66
801055ec:	6a 42                	push   $0x42
  jmp alltraps
801055ee:	e9 64 f9 ff ff       	jmp    80104f57 <alltraps>

801055f3 <vector67>:
.globl vector67
vector67:
  pushl $0
801055f3:	6a 00                	push   $0x0
  pushl $67
801055f5:	6a 43                	push   $0x43
  jmp alltraps
801055f7:	e9 5b f9 ff ff       	jmp    80104f57 <alltraps>

801055fc <vector68>:
.globl vector68
vector68:
  pushl $0
801055fc:	6a 00                	push   $0x0
  pushl $68
801055fe:	6a 44                	push   $0x44
  jmp alltraps
80105600:	e9 52 f9 ff ff       	jmp    80104f57 <alltraps>

80105605 <vector69>:
.globl vector69
vector69:
  pushl $0
80105605:	6a 00                	push   $0x0
  pushl $69
80105607:	6a 45                	push   $0x45
  jmp alltraps
80105609:	e9 49 f9 ff ff       	jmp    80104f57 <alltraps>

8010560e <vector70>:
.globl vector70
vector70:
  pushl $0
8010560e:	6a 00                	push   $0x0
  pushl $70
80105610:	6a 46                	push   $0x46
  jmp alltraps
80105612:	e9 40 f9 ff ff       	jmp    80104f57 <alltraps>

80105617 <vector71>:
.globl vector71
vector71:
  pushl $0
80105617:	6a 00                	push   $0x0
  pushl $71
80105619:	6a 47                	push   $0x47
  jmp alltraps
8010561b:	e9 37 f9 ff ff       	jmp    80104f57 <alltraps>

80105620 <vector72>:
.globl vector72
vector72:
  pushl $0
80105620:	6a 00                	push   $0x0
  pushl $72
80105622:	6a 48                	push   $0x48
  jmp alltraps
80105624:	e9 2e f9 ff ff       	jmp    80104f57 <alltraps>

80105629 <vector73>:
.globl vector73
vector73:
  pushl $0
80105629:	6a 00                	push   $0x0
  pushl $73
8010562b:	6a 49                	push   $0x49
  jmp alltraps
8010562d:	e9 25 f9 ff ff       	jmp    80104f57 <alltraps>

80105632 <vector74>:
.globl vector74
vector74:
  pushl $0
80105632:	6a 00                	push   $0x0
  pushl $74
80105634:	6a 4a                	push   $0x4a
  jmp alltraps
80105636:	e9 1c f9 ff ff       	jmp    80104f57 <alltraps>

8010563b <vector75>:
.globl vector75
vector75:
  pushl $0
8010563b:	6a 00                	push   $0x0
  pushl $75
8010563d:	6a 4b                	push   $0x4b
  jmp alltraps
8010563f:	e9 13 f9 ff ff       	jmp    80104f57 <alltraps>

80105644 <vector76>:
.globl vector76
vector76:
  pushl $0
80105644:	6a 00                	push   $0x0
  pushl $76
80105646:	6a 4c                	push   $0x4c
  jmp alltraps
80105648:	e9 0a f9 ff ff       	jmp    80104f57 <alltraps>

8010564d <vector77>:
.globl vector77
vector77:
  pushl $0
8010564d:	6a 00                	push   $0x0
  pushl $77
8010564f:	6a 4d                	push   $0x4d
  jmp alltraps
80105651:	e9 01 f9 ff ff       	jmp    80104f57 <alltraps>

80105656 <vector78>:
.globl vector78
vector78:
  pushl $0
80105656:	6a 00                	push   $0x0
  pushl $78
80105658:	6a 4e                	push   $0x4e
  jmp alltraps
8010565a:	e9 f8 f8 ff ff       	jmp    80104f57 <alltraps>

8010565f <vector79>:
.globl vector79
vector79:
  pushl $0
8010565f:	6a 00                	push   $0x0
  pushl $79
80105661:	6a 4f                	push   $0x4f
  jmp alltraps
80105663:	e9 ef f8 ff ff       	jmp    80104f57 <alltraps>

80105668 <vector80>:
.globl vector80
vector80:
  pushl $0
80105668:	6a 00                	push   $0x0
  pushl $80
8010566a:	6a 50                	push   $0x50
  jmp alltraps
8010566c:	e9 e6 f8 ff ff       	jmp    80104f57 <alltraps>

80105671 <vector81>:
.globl vector81
vector81:
  pushl $0
80105671:	6a 00                	push   $0x0
  pushl $81
80105673:	6a 51                	push   $0x51
  jmp alltraps
80105675:	e9 dd f8 ff ff       	jmp    80104f57 <alltraps>

8010567a <vector82>:
.globl vector82
vector82:
  pushl $0
8010567a:	6a 00                	push   $0x0
  pushl $82
8010567c:	6a 52                	push   $0x52
  jmp alltraps
8010567e:	e9 d4 f8 ff ff       	jmp    80104f57 <alltraps>

80105683 <vector83>:
.globl vector83
vector83:
  pushl $0
80105683:	6a 00                	push   $0x0
  pushl $83
80105685:	6a 53                	push   $0x53
  jmp alltraps
80105687:	e9 cb f8 ff ff       	jmp    80104f57 <alltraps>

8010568c <vector84>:
.globl vector84
vector84:
  pushl $0
8010568c:	6a 00                	push   $0x0
  pushl $84
8010568e:	6a 54                	push   $0x54
  jmp alltraps
80105690:	e9 c2 f8 ff ff       	jmp    80104f57 <alltraps>

80105695 <vector85>:
.globl vector85
vector85:
  pushl $0
80105695:	6a 00                	push   $0x0
  pushl $85
80105697:	6a 55                	push   $0x55
  jmp alltraps
80105699:	e9 b9 f8 ff ff       	jmp    80104f57 <alltraps>

8010569e <vector86>:
.globl vector86
vector86:
  pushl $0
8010569e:	6a 00                	push   $0x0
  pushl $86
801056a0:	6a 56                	push   $0x56
  jmp alltraps
801056a2:	e9 b0 f8 ff ff       	jmp    80104f57 <alltraps>

801056a7 <vector87>:
.globl vector87
vector87:
  pushl $0
801056a7:	6a 00                	push   $0x0
  pushl $87
801056a9:	6a 57                	push   $0x57
  jmp alltraps
801056ab:	e9 a7 f8 ff ff       	jmp    80104f57 <alltraps>

801056b0 <vector88>:
.globl vector88
vector88:
  pushl $0
801056b0:	6a 00                	push   $0x0
  pushl $88
801056b2:	6a 58                	push   $0x58
  jmp alltraps
801056b4:	e9 9e f8 ff ff       	jmp    80104f57 <alltraps>

801056b9 <vector89>:
.globl vector89
vector89:
  pushl $0
801056b9:	6a 00                	push   $0x0
  pushl $89
801056bb:	6a 59                	push   $0x59
  jmp alltraps
801056bd:	e9 95 f8 ff ff       	jmp    80104f57 <alltraps>

801056c2 <vector90>:
.globl vector90
vector90:
  pushl $0
801056c2:	6a 00                	push   $0x0
  pushl $90
801056c4:	6a 5a                	push   $0x5a
  jmp alltraps
801056c6:	e9 8c f8 ff ff       	jmp    80104f57 <alltraps>

801056cb <vector91>:
.globl vector91
vector91:
  pushl $0
801056cb:	6a 00                	push   $0x0
  pushl $91
801056cd:	6a 5b                	push   $0x5b
  jmp alltraps
801056cf:	e9 83 f8 ff ff       	jmp    80104f57 <alltraps>

801056d4 <vector92>:
.globl vector92
vector92:
  pushl $0
801056d4:	6a 00                	push   $0x0
  pushl $92
801056d6:	6a 5c                	push   $0x5c
  jmp alltraps
801056d8:	e9 7a f8 ff ff       	jmp    80104f57 <alltraps>

801056dd <vector93>:
.globl vector93
vector93:
  pushl $0
801056dd:	6a 00                	push   $0x0
  pushl $93
801056df:	6a 5d                	push   $0x5d
  jmp alltraps
801056e1:	e9 71 f8 ff ff       	jmp    80104f57 <alltraps>

801056e6 <vector94>:
.globl vector94
vector94:
  pushl $0
801056e6:	6a 00                	push   $0x0
  pushl $94
801056e8:	6a 5e                	push   $0x5e
  jmp alltraps
801056ea:	e9 68 f8 ff ff       	jmp    80104f57 <alltraps>

801056ef <vector95>:
.globl vector95
vector95:
  pushl $0
801056ef:	6a 00                	push   $0x0
  pushl $95
801056f1:	6a 5f                	push   $0x5f
  jmp alltraps
801056f3:	e9 5f f8 ff ff       	jmp    80104f57 <alltraps>

801056f8 <vector96>:
.globl vector96
vector96:
  pushl $0
801056f8:	6a 00                	push   $0x0
  pushl $96
801056fa:	6a 60                	push   $0x60
  jmp alltraps
801056fc:	e9 56 f8 ff ff       	jmp    80104f57 <alltraps>

80105701 <vector97>:
.globl vector97
vector97:
  pushl $0
80105701:	6a 00                	push   $0x0
  pushl $97
80105703:	6a 61                	push   $0x61
  jmp alltraps
80105705:	e9 4d f8 ff ff       	jmp    80104f57 <alltraps>

8010570a <vector98>:
.globl vector98
vector98:
  pushl $0
8010570a:	6a 00                	push   $0x0
  pushl $98
8010570c:	6a 62                	push   $0x62
  jmp alltraps
8010570e:	e9 44 f8 ff ff       	jmp    80104f57 <alltraps>

80105713 <vector99>:
.globl vector99
vector99:
  pushl $0
80105713:	6a 00                	push   $0x0
  pushl $99
80105715:	6a 63                	push   $0x63
  jmp alltraps
80105717:	e9 3b f8 ff ff       	jmp    80104f57 <alltraps>

8010571c <vector100>:
.globl vector100
vector100:
  pushl $0
8010571c:	6a 00                	push   $0x0
  pushl $100
8010571e:	6a 64                	push   $0x64
  jmp alltraps
80105720:	e9 32 f8 ff ff       	jmp    80104f57 <alltraps>

80105725 <vector101>:
.globl vector101
vector101:
  pushl $0
80105725:	6a 00                	push   $0x0
  pushl $101
80105727:	6a 65                	push   $0x65
  jmp alltraps
80105729:	e9 29 f8 ff ff       	jmp    80104f57 <alltraps>

8010572e <vector102>:
.globl vector102
vector102:
  pushl $0
8010572e:	6a 00                	push   $0x0
  pushl $102
80105730:	6a 66                	push   $0x66
  jmp alltraps
80105732:	e9 20 f8 ff ff       	jmp    80104f57 <alltraps>

80105737 <vector103>:
.globl vector103
vector103:
  pushl $0
80105737:	6a 00                	push   $0x0
  pushl $103
80105739:	6a 67                	push   $0x67
  jmp alltraps
8010573b:	e9 17 f8 ff ff       	jmp    80104f57 <alltraps>

80105740 <vector104>:
.globl vector104
vector104:
  pushl $0
80105740:	6a 00                	push   $0x0
  pushl $104
80105742:	6a 68                	push   $0x68
  jmp alltraps
80105744:	e9 0e f8 ff ff       	jmp    80104f57 <alltraps>

80105749 <vector105>:
.globl vector105
vector105:
  pushl $0
80105749:	6a 00                	push   $0x0
  pushl $105
8010574b:	6a 69                	push   $0x69
  jmp alltraps
8010574d:	e9 05 f8 ff ff       	jmp    80104f57 <alltraps>

80105752 <vector106>:
.globl vector106
vector106:
  pushl $0
80105752:	6a 00                	push   $0x0
  pushl $106
80105754:	6a 6a                	push   $0x6a
  jmp alltraps
80105756:	e9 fc f7 ff ff       	jmp    80104f57 <alltraps>

8010575b <vector107>:
.globl vector107
vector107:
  pushl $0
8010575b:	6a 00                	push   $0x0
  pushl $107
8010575d:	6a 6b                	push   $0x6b
  jmp alltraps
8010575f:	e9 f3 f7 ff ff       	jmp    80104f57 <alltraps>

80105764 <vector108>:
.globl vector108
vector108:
  pushl $0
80105764:	6a 00                	push   $0x0
  pushl $108
80105766:	6a 6c                	push   $0x6c
  jmp alltraps
80105768:	e9 ea f7 ff ff       	jmp    80104f57 <alltraps>

8010576d <vector109>:
.globl vector109
vector109:
  pushl $0
8010576d:	6a 00                	push   $0x0
  pushl $109
8010576f:	6a 6d                	push   $0x6d
  jmp alltraps
80105771:	e9 e1 f7 ff ff       	jmp    80104f57 <alltraps>

80105776 <vector110>:
.globl vector110
vector110:
  pushl $0
80105776:	6a 00                	push   $0x0
  pushl $110
80105778:	6a 6e                	push   $0x6e
  jmp alltraps
8010577a:	e9 d8 f7 ff ff       	jmp    80104f57 <alltraps>

8010577f <vector111>:
.globl vector111
vector111:
  pushl $0
8010577f:	6a 00                	push   $0x0
  pushl $111
80105781:	6a 6f                	push   $0x6f
  jmp alltraps
80105783:	e9 cf f7 ff ff       	jmp    80104f57 <alltraps>

80105788 <vector112>:
.globl vector112
vector112:
  pushl $0
80105788:	6a 00                	push   $0x0
  pushl $112
8010578a:	6a 70                	push   $0x70
  jmp alltraps
8010578c:	e9 c6 f7 ff ff       	jmp    80104f57 <alltraps>

80105791 <vector113>:
.globl vector113
vector113:
  pushl $0
80105791:	6a 00                	push   $0x0
  pushl $113
80105793:	6a 71                	push   $0x71
  jmp alltraps
80105795:	e9 bd f7 ff ff       	jmp    80104f57 <alltraps>

8010579a <vector114>:
.globl vector114
vector114:
  pushl $0
8010579a:	6a 00                	push   $0x0
  pushl $114
8010579c:	6a 72                	push   $0x72
  jmp alltraps
8010579e:	e9 b4 f7 ff ff       	jmp    80104f57 <alltraps>

801057a3 <vector115>:
.globl vector115
vector115:
  pushl $0
801057a3:	6a 00                	push   $0x0
  pushl $115
801057a5:	6a 73                	push   $0x73
  jmp alltraps
801057a7:	e9 ab f7 ff ff       	jmp    80104f57 <alltraps>

801057ac <vector116>:
.globl vector116
vector116:
  pushl $0
801057ac:	6a 00                	push   $0x0
  pushl $116
801057ae:	6a 74                	push   $0x74
  jmp alltraps
801057b0:	e9 a2 f7 ff ff       	jmp    80104f57 <alltraps>

801057b5 <vector117>:
.globl vector117
vector117:
  pushl $0
801057b5:	6a 00                	push   $0x0
  pushl $117
801057b7:	6a 75                	push   $0x75
  jmp alltraps
801057b9:	e9 99 f7 ff ff       	jmp    80104f57 <alltraps>

801057be <vector118>:
.globl vector118
vector118:
  pushl $0
801057be:	6a 00                	push   $0x0
  pushl $118
801057c0:	6a 76                	push   $0x76
  jmp alltraps
801057c2:	e9 90 f7 ff ff       	jmp    80104f57 <alltraps>

801057c7 <vector119>:
.globl vector119
vector119:
  pushl $0
801057c7:	6a 00                	push   $0x0
  pushl $119
801057c9:	6a 77                	push   $0x77
  jmp alltraps
801057cb:	e9 87 f7 ff ff       	jmp    80104f57 <alltraps>

801057d0 <vector120>:
.globl vector120
vector120:
  pushl $0
801057d0:	6a 00                	push   $0x0
  pushl $120
801057d2:	6a 78                	push   $0x78
  jmp alltraps
801057d4:	e9 7e f7 ff ff       	jmp    80104f57 <alltraps>

801057d9 <vector121>:
.globl vector121
vector121:
  pushl $0
801057d9:	6a 00                	push   $0x0
  pushl $121
801057db:	6a 79                	push   $0x79
  jmp alltraps
801057dd:	e9 75 f7 ff ff       	jmp    80104f57 <alltraps>

801057e2 <vector122>:
.globl vector122
vector122:
  pushl $0
801057e2:	6a 00                	push   $0x0
  pushl $122
801057e4:	6a 7a                	push   $0x7a
  jmp alltraps
801057e6:	e9 6c f7 ff ff       	jmp    80104f57 <alltraps>

801057eb <vector123>:
.globl vector123
vector123:
  pushl $0
801057eb:	6a 00                	push   $0x0
  pushl $123
801057ed:	6a 7b                	push   $0x7b
  jmp alltraps
801057ef:	e9 63 f7 ff ff       	jmp    80104f57 <alltraps>

801057f4 <vector124>:
.globl vector124
vector124:
  pushl $0
801057f4:	6a 00                	push   $0x0
  pushl $124
801057f6:	6a 7c                	push   $0x7c
  jmp alltraps
801057f8:	e9 5a f7 ff ff       	jmp    80104f57 <alltraps>

801057fd <vector125>:
.globl vector125
vector125:
  pushl $0
801057fd:	6a 00                	push   $0x0
  pushl $125
801057ff:	6a 7d                	push   $0x7d
  jmp alltraps
80105801:	e9 51 f7 ff ff       	jmp    80104f57 <alltraps>

80105806 <vector126>:
.globl vector126
vector126:
  pushl $0
80105806:	6a 00                	push   $0x0
  pushl $126
80105808:	6a 7e                	push   $0x7e
  jmp alltraps
8010580a:	e9 48 f7 ff ff       	jmp    80104f57 <alltraps>

8010580f <vector127>:
.globl vector127
vector127:
  pushl $0
8010580f:	6a 00                	push   $0x0
  pushl $127
80105811:	6a 7f                	push   $0x7f
  jmp alltraps
80105813:	e9 3f f7 ff ff       	jmp    80104f57 <alltraps>

80105818 <vector128>:
.globl vector128
vector128:
  pushl $0
80105818:	6a 00                	push   $0x0
  pushl $128
8010581a:	68 80 00 00 00       	push   $0x80
  jmp alltraps
8010581f:	e9 33 f7 ff ff       	jmp    80104f57 <alltraps>

80105824 <vector129>:
.globl vector129
vector129:
  pushl $0
80105824:	6a 00                	push   $0x0
  pushl $129
80105826:	68 81 00 00 00       	push   $0x81
  jmp alltraps
8010582b:	e9 27 f7 ff ff       	jmp    80104f57 <alltraps>

80105830 <vector130>:
.globl vector130
vector130:
  pushl $0
80105830:	6a 00                	push   $0x0
  pushl $130
80105832:	68 82 00 00 00       	push   $0x82
  jmp alltraps
80105837:	e9 1b f7 ff ff       	jmp    80104f57 <alltraps>

8010583c <vector131>:
.globl vector131
vector131:
  pushl $0
8010583c:	6a 00                	push   $0x0
  pushl $131
8010583e:	68 83 00 00 00       	push   $0x83
  jmp alltraps
80105843:	e9 0f f7 ff ff       	jmp    80104f57 <alltraps>

80105848 <vector132>:
.globl vector132
vector132:
  pushl $0
80105848:	6a 00                	push   $0x0
  pushl $132
8010584a:	68 84 00 00 00       	push   $0x84
  jmp alltraps
8010584f:	e9 03 f7 ff ff       	jmp    80104f57 <alltraps>

80105854 <vector133>:
.globl vector133
vector133:
  pushl $0
80105854:	6a 00                	push   $0x0
  pushl $133
80105856:	68 85 00 00 00       	push   $0x85
  jmp alltraps
8010585b:	e9 f7 f6 ff ff       	jmp    80104f57 <alltraps>

80105860 <vector134>:
.globl vector134
vector134:
  pushl $0
80105860:	6a 00                	push   $0x0
  pushl $134
80105862:	68 86 00 00 00       	push   $0x86
  jmp alltraps
80105867:	e9 eb f6 ff ff       	jmp    80104f57 <alltraps>

8010586c <vector135>:
.globl vector135
vector135:
  pushl $0
8010586c:	6a 00                	push   $0x0
  pushl $135
8010586e:	68 87 00 00 00       	push   $0x87
  jmp alltraps
80105873:	e9 df f6 ff ff       	jmp    80104f57 <alltraps>

80105878 <vector136>:
.globl vector136
vector136:
  pushl $0
80105878:	6a 00                	push   $0x0
  pushl $136
8010587a:	68 88 00 00 00       	push   $0x88
  jmp alltraps
8010587f:	e9 d3 f6 ff ff       	jmp    80104f57 <alltraps>

80105884 <vector137>:
.globl vector137
vector137:
  pushl $0
80105884:	6a 00                	push   $0x0
  pushl $137
80105886:	68 89 00 00 00       	push   $0x89
  jmp alltraps
8010588b:	e9 c7 f6 ff ff       	jmp    80104f57 <alltraps>

80105890 <vector138>:
.globl vector138
vector138:
  pushl $0
80105890:	6a 00                	push   $0x0
  pushl $138
80105892:	68 8a 00 00 00       	push   $0x8a
  jmp alltraps
80105897:	e9 bb f6 ff ff       	jmp    80104f57 <alltraps>

8010589c <vector139>:
.globl vector139
vector139:
  pushl $0
8010589c:	6a 00                	push   $0x0
  pushl $139
8010589e:	68 8b 00 00 00       	push   $0x8b
  jmp alltraps
801058a3:	e9 af f6 ff ff       	jmp    80104f57 <alltraps>

801058a8 <vector140>:
.globl vector140
vector140:
  pushl $0
801058a8:	6a 00                	push   $0x0
  pushl $140
801058aa:	68 8c 00 00 00       	push   $0x8c
  jmp alltraps
801058af:	e9 a3 f6 ff ff       	jmp    80104f57 <alltraps>

801058b4 <vector141>:
.globl vector141
vector141:
  pushl $0
801058b4:	6a 00                	push   $0x0
  pushl $141
801058b6:	68 8d 00 00 00       	push   $0x8d
  jmp alltraps
801058bb:	e9 97 f6 ff ff       	jmp    80104f57 <alltraps>

801058c0 <vector142>:
.globl vector142
vector142:
  pushl $0
801058c0:	6a 00                	push   $0x0
  pushl $142
801058c2:	68 8e 00 00 00       	push   $0x8e
  jmp alltraps
801058c7:	e9 8b f6 ff ff       	jmp    80104f57 <alltraps>

801058cc <vector143>:
.globl vector143
vector143:
  pushl $0
801058cc:	6a 00                	push   $0x0
  pushl $143
801058ce:	68 8f 00 00 00       	push   $0x8f
  jmp alltraps
801058d3:	e9 7f f6 ff ff       	jmp    80104f57 <alltraps>

801058d8 <vector144>:
.globl vector144
vector144:
  pushl $0
801058d8:	6a 00                	push   $0x0
  pushl $144
801058da:	68 90 00 00 00       	push   $0x90
  jmp alltraps
801058df:	e9 73 f6 ff ff       	jmp    80104f57 <alltraps>

801058e4 <vector145>:
.globl vector145
vector145:
  pushl $0
801058e4:	6a 00                	push   $0x0
  pushl $145
801058e6:	68 91 00 00 00       	push   $0x91
  jmp alltraps
801058eb:	e9 67 f6 ff ff       	jmp    80104f57 <alltraps>

801058f0 <vector146>:
.globl vector146
vector146:
  pushl $0
801058f0:	6a 00                	push   $0x0
  pushl $146
801058f2:	68 92 00 00 00       	push   $0x92
  jmp alltraps
801058f7:	e9 5b f6 ff ff       	jmp    80104f57 <alltraps>

801058fc <vector147>:
.globl vector147
vector147:
  pushl $0
801058fc:	6a 00                	push   $0x0
  pushl $147
801058fe:	68 93 00 00 00       	push   $0x93
  jmp alltraps
80105903:	e9 4f f6 ff ff       	jmp    80104f57 <alltraps>

80105908 <vector148>:
.globl vector148
vector148:
  pushl $0
80105908:	6a 00                	push   $0x0
  pushl $148
8010590a:	68 94 00 00 00       	push   $0x94
  jmp alltraps
8010590f:	e9 43 f6 ff ff       	jmp    80104f57 <alltraps>

80105914 <vector149>:
.globl vector149
vector149:
  pushl $0
80105914:	6a 00                	push   $0x0
  pushl $149
80105916:	68 95 00 00 00       	push   $0x95
  jmp alltraps
8010591b:	e9 37 f6 ff ff       	jmp    80104f57 <alltraps>

80105920 <vector150>:
.globl vector150
vector150:
  pushl $0
80105920:	6a 00                	push   $0x0
  pushl $150
80105922:	68 96 00 00 00       	push   $0x96
  jmp alltraps
80105927:	e9 2b f6 ff ff       	jmp    80104f57 <alltraps>

8010592c <vector151>:
.globl vector151
vector151:
  pushl $0
8010592c:	6a 00                	push   $0x0
  pushl $151
8010592e:	68 97 00 00 00       	push   $0x97
  jmp alltraps
80105933:	e9 1f f6 ff ff       	jmp    80104f57 <alltraps>

80105938 <vector152>:
.globl vector152
vector152:
  pushl $0
80105938:	6a 00                	push   $0x0
  pushl $152
8010593a:	68 98 00 00 00       	push   $0x98
  jmp alltraps
8010593f:	e9 13 f6 ff ff       	jmp    80104f57 <alltraps>

80105944 <vector153>:
.globl vector153
vector153:
  pushl $0
80105944:	6a 00                	push   $0x0
  pushl $153
80105946:	68 99 00 00 00       	push   $0x99
  jmp alltraps
8010594b:	e9 07 f6 ff ff       	jmp    80104f57 <alltraps>

80105950 <vector154>:
.globl vector154
vector154:
  pushl $0
80105950:	6a 00                	push   $0x0
  pushl $154
80105952:	68 9a 00 00 00       	push   $0x9a
  jmp alltraps
80105957:	e9 fb f5 ff ff       	jmp    80104f57 <alltraps>

8010595c <vector155>:
.globl vector155
vector155:
  pushl $0
8010595c:	6a 00                	push   $0x0
  pushl $155
8010595e:	68 9b 00 00 00       	push   $0x9b
  jmp alltraps
80105963:	e9 ef f5 ff ff       	jmp    80104f57 <alltraps>

80105968 <vector156>:
.globl vector156
vector156:
  pushl $0
80105968:	6a 00                	push   $0x0
  pushl $156
8010596a:	68 9c 00 00 00       	push   $0x9c
  jmp alltraps
8010596f:	e9 e3 f5 ff ff       	jmp    80104f57 <alltraps>

80105974 <vector157>:
.globl vector157
vector157:
  pushl $0
80105974:	6a 00                	push   $0x0
  pushl $157
80105976:	68 9d 00 00 00       	push   $0x9d
  jmp alltraps
8010597b:	e9 d7 f5 ff ff       	jmp    80104f57 <alltraps>

80105980 <vector158>:
.globl vector158
vector158:
  pushl $0
80105980:	6a 00                	push   $0x0
  pushl $158
80105982:	68 9e 00 00 00       	push   $0x9e
  jmp alltraps
80105987:	e9 cb f5 ff ff       	jmp    80104f57 <alltraps>

8010598c <vector159>:
.globl vector159
vector159:
  pushl $0
8010598c:	6a 00                	push   $0x0
  pushl $159
8010598e:	68 9f 00 00 00       	push   $0x9f
  jmp alltraps
80105993:	e9 bf f5 ff ff       	jmp    80104f57 <alltraps>

80105998 <vector160>:
.globl vector160
vector160:
  pushl $0
80105998:	6a 00                	push   $0x0
  pushl $160
8010599a:	68 a0 00 00 00       	push   $0xa0
  jmp alltraps
8010599f:	e9 b3 f5 ff ff       	jmp    80104f57 <alltraps>

801059a4 <vector161>:
.globl vector161
vector161:
  pushl $0
801059a4:	6a 00                	push   $0x0
  pushl $161
801059a6:	68 a1 00 00 00       	push   $0xa1
  jmp alltraps
801059ab:	e9 a7 f5 ff ff       	jmp    80104f57 <alltraps>

801059b0 <vector162>:
.globl vector162
vector162:
  pushl $0
801059b0:	6a 00                	push   $0x0
  pushl $162
801059b2:	68 a2 00 00 00       	push   $0xa2
  jmp alltraps
801059b7:	e9 9b f5 ff ff       	jmp    80104f57 <alltraps>

801059bc <vector163>:
.globl vector163
vector163:
  pushl $0
801059bc:	6a 00                	push   $0x0
  pushl $163
801059be:	68 a3 00 00 00       	push   $0xa3
  jmp alltraps
801059c3:	e9 8f f5 ff ff       	jmp    80104f57 <alltraps>

801059c8 <vector164>:
.globl vector164
vector164:
  pushl $0
801059c8:	6a 00                	push   $0x0
  pushl $164
801059ca:	68 a4 00 00 00       	push   $0xa4
  jmp alltraps
801059cf:	e9 83 f5 ff ff       	jmp    80104f57 <alltraps>

801059d4 <vector165>:
.globl vector165
vector165:
  pushl $0
801059d4:	6a 00                	push   $0x0
  pushl $165
801059d6:	68 a5 00 00 00       	push   $0xa5
  jmp alltraps
801059db:	e9 77 f5 ff ff       	jmp    80104f57 <alltraps>

801059e0 <vector166>:
.globl vector166
vector166:
  pushl $0
801059e0:	6a 00                	push   $0x0
  pushl $166
801059e2:	68 a6 00 00 00       	push   $0xa6
  jmp alltraps
801059e7:	e9 6b f5 ff ff       	jmp    80104f57 <alltraps>

801059ec <vector167>:
.globl vector167
vector167:
  pushl $0
801059ec:	6a 00                	push   $0x0
  pushl $167
801059ee:	68 a7 00 00 00       	push   $0xa7
  jmp alltraps
801059f3:	e9 5f f5 ff ff       	jmp    80104f57 <alltraps>

801059f8 <vector168>:
.globl vector168
vector168:
  pushl $0
801059f8:	6a 00                	push   $0x0
  pushl $168
801059fa:	68 a8 00 00 00       	push   $0xa8
  jmp alltraps
801059ff:	e9 53 f5 ff ff       	jmp    80104f57 <alltraps>

80105a04 <vector169>:
.globl vector169
vector169:
  pushl $0
80105a04:	6a 00                	push   $0x0
  pushl $169
80105a06:	68 a9 00 00 00       	push   $0xa9
  jmp alltraps
80105a0b:	e9 47 f5 ff ff       	jmp    80104f57 <alltraps>

80105a10 <vector170>:
.globl vector170
vector170:
  pushl $0
80105a10:	6a 00                	push   $0x0
  pushl $170
80105a12:	68 aa 00 00 00       	push   $0xaa
  jmp alltraps
80105a17:	e9 3b f5 ff ff       	jmp    80104f57 <alltraps>

80105a1c <vector171>:
.globl vector171
vector171:
  pushl $0
80105a1c:	6a 00                	push   $0x0
  pushl $171
80105a1e:	68 ab 00 00 00       	push   $0xab
  jmp alltraps
80105a23:	e9 2f f5 ff ff       	jmp    80104f57 <alltraps>

80105a28 <vector172>:
.globl vector172
vector172:
  pushl $0
80105a28:	6a 00                	push   $0x0
  pushl $172
80105a2a:	68 ac 00 00 00       	push   $0xac
  jmp alltraps
80105a2f:	e9 23 f5 ff ff       	jmp    80104f57 <alltraps>

80105a34 <vector173>:
.globl vector173
vector173:
  pushl $0
80105a34:	6a 00                	push   $0x0
  pushl $173
80105a36:	68 ad 00 00 00       	push   $0xad
  jmp alltraps
80105a3b:	e9 17 f5 ff ff       	jmp    80104f57 <alltraps>

80105a40 <vector174>:
.globl vector174
vector174:
  pushl $0
80105a40:	6a 00                	push   $0x0
  pushl $174
80105a42:	68 ae 00 00 00       	push   $0xae
  jmp alltraps
80105a47:	e9 0b f5 ff ff       	jmp    80104f57 <alltraps>

80105a4c <vector175>:
.globl vector175
vector175:
  pushl $0
80105a4c:	6a 00                	push   $0x0
  pushl $175
80105a4e:	68 af 00 00 00       	push   $0xaf
  jmp alltraps
80105a53:	e9 ff f4 ff ff       	jmp    80104f57 <alltraps>

80105a58 <vector176>:
.globl vector176
vector176:
  pushl $0
80105a58:	6a 00                	push   $0x0
  pushl $176
80105a5a:	68 b0 00 00 00       	push   $0xb0
  jmp alltraps
80105a5f:	e9 f3 f4 ff ff       	jmp    80104f57 <alltraps>

80105a64 <vector177>:
.globl vector177
vector177:
  pushl $0
80105a64:	6a 00                	push   $0x0
  pushl $177
80105a66:	68 b1 00 00 00       	push   $0xb1
  jmp alltraps
80105a6b:	e9 e7 f4 ff ff       	jmp    80104f57 <alltraps>

80105a70 <vector178>:
.globl vector178
vector178:
  pushl $0
80105a70:	6a 00                	push   $0x0
  pushl $178
80105a72:	68 b2 00 00 00       	push   $0xb2
  jmp alltraps
80105a77:	e9 db f4 ff ff       	jmp    80104f57 <alltraps>

80105a7c <vector179>:
.globl vector179
vector179:
  pushl $0
80105a7c:	6a 00                	push   $0x0
  pushl $179
80105a7e:	68 b3 00 00 00       	push   $0xb3
  jmp alltraps
80105a83:	e9 cf f4 ff ff       	jmp    80104f57 <alltraps>

80105a88 <vector180>:
.globl vector180
vector180:
  pushl $0
80105a88:	6a 00                	push   $0x0
  pushl $180
80105a8a:	68 b4 00 00 00       	push   $0xb4
  jmp alltraps
80105a8f:	e9 c3 f4 ff ff       	jmp    80104f57 <alltraps>

80105a94 <vector181>:
.globl vector181
vector181:
  pushl $0
80105a94:	6a 00                	push   $0x0
  pushl $181
80105a96:	68 b5 00 00 00       	push   $0xb5
  jmp alltraps
80105a9b:	e9 b7 f4 ff ff       	jmp    80104f57 <alltraps>

80105aa0 <vector182>:
.globl vector182
vector182:
  pushl $0
80105aa0:	6a 00                	push   $0x0
  pushl $182
80105aa2:	68 b6 00 00 00       	push   $0xb6
  jmp alltraps
80105aa7:	e9 ab f4 ff ff       	jmp    80104f57 <alltraps>

80105aac <vector183>:
.globl vector183
vector183:
  pushl $0
80105aac:	6a 00                	push   $0x0
  pushl $183
80105aae:	68 b7 00 00 00       	push   $0xb7
  jmp alltraps
80105ab3:	e9 9f f4 ff ff       	jmp    80104f57 <alltraps>

80105ab8 <vector184>:
.globl vector184
vector184:
  pushl $0
80105ab8:	6a 00                	push   $0x0
  pushl $184
80105aba:	68 b8 00 00 00       	push   $0xb8
  jmp alltraps
80105abf:	e9 93 f4 ff ff       	jmp    80104f57 <alltraps>

80105ac4 <vector185>:
.globl vector185
vector185:
  pushl $0
80105ac4:	6a 00                	push   $0x0
  pushl $185
80105ac6:	68 b9 00 00 00       	push   $0xb9
  jmp alltraps
80105acb:	e9 87 f4 ff ff       	jmp    80104f57 <alltraps>

80105ad0 <vector186>:
.globl vector186
vector186:
  pushl $0
80105ad0:	6a 00                	push   $0x0
  pushl $186
80105ad2:	68 ba 00 00 00       	push   $0xba
  jmp alltraps
80105ad7:	e9 7b f4 ff ff       	jmp    80104f57 <alltraps>

80105adc <vector187>:
.globl vector187
vector187:
  pushl $0
80105adc:	6a 00                	push   $0x0
  pushl $187
80105ade:	68 bb 00 00 00       	push   $0xbb
  jmp alltraps
80105ae3:	e9 6f f4 ff ff       	jmp    80104f57 <alltraps>

80105ae8 <vector188>:
.globl vector188
vector188:
  pushl $0
80105ae8:	6a 00                	push   $0x0
  pushl $188
80105aea:	68 bc 00 00 00       	push   $0xbc
  jmp alltraps
80105aef:	e9 63 f4 ff ff       	jmp    80104f57 <alltraps>

80105af4 <vector189>:
.globl vector189
vector189:
  pushl $0
80105af4:	6a 00                	push   $0x0
  pushl $189
80105af6:	68 bd 00 00 00       	push   $0xbd
  jmp alltraps
80105afb:	e9 57 f4 ff ff       	jmp    80104f57 <alltraps>

80105b00 <vector190>:
.globl vector190
vector190:
  pushl $0
80105b00:	6a 00                	push   $0x0
  pushl $190
80105b02:	68 be 00 00 00       	push   $0xbe
  jmp alltraps
80105b07:	e9 4b f4 ff ff       	jmp    80104f57 <alltraps>

80105b0c <vector191>:
.globl vector191
vector191:
  pushl $0
80105b0c:	6a 00                	push   $0x0
  pushl $191
80105b0e:	68 bf 00 00 00       	push   $0xbf
  jmp alltraps
80105b13:	e9 3f f4 ff ff       	jmp    80104f57 <alltraps>

80105b18 <vector192>:
.globl vector192
vector192:
  pushl $0
80105b18:	6a 00                	push   $0x0
  pushl $192
80105b1a:	68 c0 00 00 00       	push   $0xc0
  jmp alltraps
80105b1f:	e9 33 f4 ff ff       	jmp    80104f57 <alltraps>

80105b24 <vector193>:
.globl vector193
vector193:
  pushl $0
80105b24:	6a 00                	push   $0x0
  pushl $193
80105b26:	68 c1 00 00 00       	push   $0xc1
  jmp alltraps
80105b2b:	e9 27 f4 ff ff       	jmp    80104f57 <alltraps>

80105b30 <vector194>:
.globl vector194
vector194:
  pushl $0
80105b30:	6a 00                	push   $0x0
  pushl $194
80105b32:	68 c2 00 00 00       	push   $0xc2
  jmp alltraps
80105b37:	e9 1b f4 ff ff       	jmp    80104f57 <alltraps>

80105b3c <vector195>:
.globl vector195
vector195:
  pushl $0
80105b3c:	6a 00                	push   $0x0
  pushl $195
80105b3e:	68 c3 00 00 00       	push   $0xc3
  jmp alltraps
80105b43:	e9 0f f4 ff ff       	jmp    80104f57 <alltraps>

80105b48 <vector196>:
.globl vector196
vector196:
  pushl $0
80105b48:	6a 00                	push   $0x0
  pushl $196
80105b4a:	68 c4 00 00 00       	push   $0xc4
  jmp alltraps
80105b4f:	e9 03 f4 ff ff       	jmp    80104f57 <alltraps>

80105b54 <vector197>:
.globl vector197
vector197:
  pushl $0
80105b54:	6a 00                	push   $0x0
  pushl $197
80105b56:	68 c5 00 00 00       	push   $0xc5
  jmp alltraps
80105b5b:	e9 f7 f3 ff ff       	jmp    80104f57 <alltraps>

80105b60 <vector198>:
.globl vector198
vector198:
  pushl $0
80105b60:	6a 00                	push   $0x0
  pushl $198
80105b62:	68 c6 00 00 00       	push   $0xc6
  jmp alltraps
80105b67:	e9 eb f3 ff ff       	jmp    80104f57 <alltraps>

80105b6c <vector199>:
.globl vector199
vector199:
  pushl $0
80105b6c:	6a 00                	push   $0x0
  pushl $199
80105b6e:	68 c7 00 00 00       	push   $0xc7
  jmp alltraps
80105b73:	e9 df f3 ff ff       	jmp    80104f57 <alltraps>

80105b78 <vector200>:
.globl vector200
vector200:
  pushl $0
80105b78:	6a 00                	push   $0x0
  pushl $200
80105b7a:	68 c8 00 00 00       	push   $0xc8
  jmp alltraps
80105b7f:	e9 d3 f3 ff ff       	jmp    80104f57 <alltraps>

80105b84 <vector201>:
.globl vector201
vector201:
  pushl $0
80105b84:	6a 00                	push   $0x0
  pushl $201
80105b86:	68 c9 00 00 00       	push   $0xc9
  jmp alltraps
80105b8b:	e9 c7 f3 ff ff       	jmp    80104f57 <alltraps>

80105b90 <vector202>:
.globl vector202
vector202:
  pushl $0
80105b90:	6a 00                	push   $0x0
  pushl $202
80105b92:	68 ca 00 00 00       	push   $0xca
  jmp alltraps
80105b97:	e9 bb f3 ff ff       	jmp    80104f57 <alltraps>

80105b9c <vector203>:
.globl vector203
vector203:
  pushl $0
80105b9c:	6a 00                	push   $0x0
  pushl $203
80105b9e:	68 cb 00 00 00       	push   $0xcb
  jmp alltraps
80105ba3:	e9 af f3 ff ff       	jmp    80104f57 <alltraps>

80105ba8 <vector204>:
.globl vector204
vector204:
  pushl $0
80105ba8:	6a 00                	push   $0x0
  pushl $204
80105baa:	68 cc 00 00 00       	push   $0xcc
  jmp alltraps
80105baf:	e9 a3 f3 ff ff       	jmp    80104f57 <alltraps>

80105bb4 <vector205>:
.globl vector205
vector205:
  pushl $0
80105bb4:	6a 00                	push   $0x0
  pushl $205
80105bb6:	68 cd 00 00 00       	push   $0xcd
  jmp alltraps
80105bbb:	e9 97 f3 ff ff       	jmp    80104f57 <alltraps>

80105bc0 <vector206>:
.globl vector206
vector206:
  pushl $0
80105bc0:	6a 00                	push   $0x0
  pushl $206
80105bc2:	68 ce 00 00 00       	push   $0xce
  jmp alltraps
80105bc7:	e9 8b f3 ff ff       	jmp    80104f57 <alltraps>

80105bcc <vector207>:
.globl vector207
vector207:
  pushl $0
80105bcc:	6a 00                	push   $0x0
  pushl $207
80105bce:	68 cf 00 00 00       	push   $0xcf
  jmp alltraps
80105bd3:	e9 7f f3 ff ff       	jmp    80104f57 <alltraps>

80105bd8 <vector208>:
.globl vector208
vector208:
  pushl $0
80105bd8:	6a 00                	push   $0x0
  pushl $208
80105bda:	68 d0 00 00 00       	push   $0xd0
  jmp alltraps
80105bdf:	e9 73 f3 ff ff       	jmp    80104f57 <alltraps>

80105be4 <vector209>:
.globl vector209
vector209:
  pushl $0
80105be4:	6a 00                	push   $0x0
  pushl $209
80105be6:	68 d1 00 00 00       	push   $0xd1
  jmp alltraps
80105beb:	e9 67 f3 ff ff       	jmp    80104f57 <alltraps>

80105bf0 <vector210>:
.globl vector210
vector210:
  pushl $0
80105bf0:	6a 00                	push   $0x0
  pushl $210
80105bf2:	68 d2 00 00 00       	push   $0xd2
  jmp alltraps
80105bf7:	e9 5b f3 ff ff       	jmp    80104f57 <alltraps>

80105bfc <vector211>:
.globl vector211
vector211:
  pushl $0
80105bfc:	6a 00                	push   $0x0
  pushl $211
80105bfe:	68 d3 00 00 00       	push   $0xd3
  jmp alltraps
80105c03:	e9 4f f3 ff ff       	jmp    80104f57 <alltraps>

80105c08 <vector212>:
.globl vector212
vector212:
  pushl $0
80105c08:	6a 00                	push   $0x0
  pushl $212
80105c0a:	68 d4 00 00 00       	push   $0xd4
  jmp alltraps
80105c0f:	e9 43 f3 ff ff       	jmp    80104f57 <alltraps>

80105c14 <vector213>:
.globl vector213
vector213:
  pushl $0
80105c14:	6a 00                	push   $0x0
  pushl $213
80105c16:	68 d5 00 00 00       	push   $0xd5
  jmp alltraps
80105c1b:	e9 37 f3 ff ff       	jmp    80104f57 <alltraps>

80105c20 <vector214>:
.globl vector214
vector214:
  pushl $0
80105c20:	6a 00                	push   $0x0
  pushl $214
80105c22:	68 d6 00 00 00       	push   $0xd6
  jmp alltraps
80105c27:	e9 2b f3 ff ff       	jmp    80104f57 <alltraps>

80105c2c <vector215>:
.globl vector215
vector215:
  pushl $0
80105c2c:	6a 00                	push   $0x0
  pushl $215
80105c2e:	68 d7 00 00 00       	push   $0xd7
  jmp alltraps
80105c33:	e9 1f f3 ff ff       	jmp    80104f57 <alltraps>

80105c38 <vector216>:
.globl vector216
vector216:
  pushl $0
80105c38:	6a 00                	push   $0x0
  pushl $216
80105c3a:	68 d8 00 00 00       	push   $0xd8
  jmp alltraps
80105c3f:	e9 13 f3 ff ff       	jmp    80104f57 <alltraps>

80105c44 <vector217>:
.globl vector217
vector217:
  pushl $0
80105c44:	6a 00                	push   $0x0
  pushl $217
80105c46:	68 d9 00 00 00       	push   $0xd9
  jmp alltraps
80105c4b:	e9 07 f3 ff ff       	jmp    80104f57 <alltraps>

80105c50 <vector218>:
.globl vector218
vector218:
  pushl $0
80105c50:	6a 00                	push   $0x0
  pushl $218
80105c52:	68 da 00 00 00       	push   $0xda
  jmp alltraps
80105c57:	e9 fb f2 ff ff       	jmp    80104f57 <alltraps>

80105c5c <vector219>:
.globl vector219
vector219:
  pushl $0
80105c5c:	6a 00                	push   $0x0
  pushl $219
80105c5e:	68 db 00 00 00       	push   $0xdb
  jmp alltraps
80105c63:	e9 ef f2 ff ff       	jmp    80104f57 <alltraps>

80105c68 <vector220>:
.globl vector220
vector220:
  pushl $0
80105c68:	6a 00                	push   $0x0
  pushl $220
80105c6a:	68 dc 00 00 00       	push   $0xdc
  jmp alltraps
80105c6f:	e9 e3 f2 ff ff       	jmp    80104f57 <alltraps>

80105c74 <vector221>:
.globl vector221
vector221:
  pushl $0
80105c74:	6a 00                	push   $0x0
  pushl $221
80105c76:	68 dd 00 00 00       	push   $0xdd
  jmp alltraps
80105c7b:	e9 d7 f2 ff ff       	jmp    80104f57 <alltraps>

80105c80 <vector222>:
.globl vector222
vector222:
  pushl $0
80105c80:	6a 00                	push   $0x0
  pushl $222
80105c82:	68 de 00 00 00       	push   $0xde
  jmp alltraps
80105c87:	e9 cb f2 ff ff       	jmp    80104f57 <alltraps>

80105c8c <vector223>:
.globl vector223
vector223:
  pushl $0
80105c8c:	6a 00                	push   $0x0
  pushl $223
80105c8e:	68 df 00 00 00       	push   $0xdf
  jmp alltraps
80105c93:	e9 bf f2 ff ff       	jmp    80104f57 <alltraps>

80105c98 <vector224>:
.globl vector224
vector224:
  pushl $0
80105c98:	6a 00                	push   $0x0
  pushl $224
80105c9a:	68 e0 00 00 00       	push   $0xe0
  jmp alltraps
80105c9f:	e9 b3 f2 ff ff       	jmp    80104f57 <alltraps>

80105ca4 <vector225>:
.globl vector225
vector225:
  pushl $0
80105ca4:	6a 00                	push   $0x0
  pushl $225
80105ca6:	68 e1 00 00 00       	push   $0xe1
  jmp alltraps
80105cab:	e9 a7 f2 ff ff       	jmp    80104f57 <alltraps>

80105cb0 <vector226>:
.globl vector226
vector226:
  pushl $0
80105cb0:	6a 00                	push   $0x0
  pushl $226
80105cb2:	68 e2 00 00 00       	push   $0xe2
  jmp alltraps
80105cb7:	e9 9b f2 ff ff       	jmp    80104f57 <alltraps>

80105cbc <vector227>:
.globl vector227
vector227:
  pushl $0
80105cbc:	6a 00                	push   $0x0
  pushl $227
80105cbe:	68 e3 00 00 00       	push   $0xe3
  jmp alltraps
80105cc3:	e9 8f f2 ff ff       	jmp    80104f57 <alltraps>

80105cc8 <vector228>:
.globl vector228
vector228:
  pushl $0
80105cc8:	6a 00                	push   $0x0
  pushl $228
80105cca:	68 e4 00 00 00       	push   $0xe4
  jmp alltraps
80105ccf:	e9 83 f2 ff ff       	jmp    80104f57 <alltraps>

80105cd4 <vector229>:
.globl vector229
vector229:
  pushl $0
80105cd4:	6a 00                	push   $0x0
  pushl $229
80105cd6:	68 e5 00 00 00       	push   $0xe5
  jmp alltraps
80105cdb:	e9 77 f2 ff ff       	jmp    80104f57 <alltraps>

80105ce0 <vector230>:
.globl vector230
vector230:
  pushl $0
80105ce0:	6a 00                	push   $0x0
  pushl $230
80105ce2:	68 e6 00 00 00       	push   $0xe6
  jmp alltraps
80105ce7:	e9 6b f2 ff ff       	jmp    80104f57 <alltraps>

80105cec <vector231>:
.globl vector231
vector231:
  pushl $0
80105cec:	6a 00                	push   $0x0
  pushl $231
80105cee:	68 e7 00 00 00       	push   $0xe7
  jmp alltraps
80105cf3:	e9 5f f2 ff ff       	jmp    80104f57 <alltraps>

80105cf8 <vector232>:
.globl vector232
vector232:
  pushl $0
80105cf8:	6a 00                	push   $0x0
  pushl $232
80105cfa:	68 e8 00 00 00       	push   $0xe8
  jmp alltraps
80105cff:	e9 53 f2 ff ff       	jmp    80104f57 <alltraps>

80105d04 <vector233>:
.globl vector233
vector233:
  pushl $0
80105d04:	6a 00                	push   $0x0
  pushl $233
80105d06:	68 e9 00 00 00       	push   $0xe9
  jmp alltraps
80105d0b:	e9 47 f2 ff ff       	jmp    80104f57 <alltraps>

80105d10 <vector234>:
.globl vector234
vector234:
  pushl $0
80105d10:	6a 00                	push   $0x0
  pushl $234
80105d12:	68 ea 00 00 00       	push   $0xea
  jmp alltraps
80105d17:	e9 3b f2 ff ff       	jmp    80104f57 <alltraps>

80105d1c <vector235>:
.globl vector235
vector235:
  pushl $0
80105d1c:	6a 00                	push   $0x0
  pushl $235
80105d1e:	68 eb 00 00 00       	push   $0xeb
  jmp alltraps
80105d23:	e9 2f f2 ff ff       	jmp    80104f57 <alltraps>

80105d28 <vector236>:
.globl vector236
vector236:
  pushl $0
80105d28:	6a 00                	push   $0x0
  pushl $236
80105d2a:	68 ec 00 00 00       	push   $0xec
  jmp alltraps
80105d2f:	e9 23 f2 ff ff       	jmp    80104f57 <alltraps>

80105d34 <vector237>:
.globl vector237
vector237:
  pushl $0
80105d34:	6a 00                	push   $0x0
  pushl $237
80105d36:	68 ed 00 00 00       	push   $0xed
  jmp alltraps
80105d3b:	e9 17 f2 ff ff       	jmp    80104f57 <alltraps>

80105d40 <vector238>:
.globl vector238
vector238:
  pushl $0
80105d40:	6a 00                	push   $0x0
  pushl $238
80105d42:	68 ee 00 00 00       	push   $0xee
  jmp alltraps
80105d47:	e9 0b f2 ff ff       	jmp    80104f57 <alltraps>

80105d4c <vector239>:
.globl vector239
vector239:
  pushl $0
80105d4c:	6a 00                	push   $0x0
  pushl $239
80105d4e:	68 ef 00 00 00       	push   $0xef
  jmp alltraps
80105d53:	e9 ff f1 ff ff       	jmp    80104f57 <alltraps>

80105d58 <vector240>:
.globl vector240
vector240:
  pushl $0
80105d58:	6a 00                	push   $0x0
  pushl $240
80105d5a:	68 f0 00 00 00       	push   $0xf0
  jmp alltraps
80105d5f:	e9 f3 f1 ff ff       	jmp    80104f57 <alltraps>

80105d64 <vector241>:
.globl vector241
vector241:
  pushl $0
80105d64:	6a 00                	push   $0x0
  pushl $241
80105d66:	68 f1 00 00 00       	push   $0xf1
  jmp alltraps
80105d6b:	e9 e7 f1 ff ff       	jmp    80104f57 <alltraps>

80105d70 <vector242>:
.globl vector242
vector242:
  pushl $0
80105d70:	6a 00                	push   $0x0
  pushl $242
80105d72:	68 f2 00 00 00       	push   $0xf2
  jmp alltraps
80105d77:	e9 db f1 ff ff       	jmp    80104f57 <alltraps>

80105d7c <vector243>:
.globl vector243
vector243:
  pushl $0
80105d7c:	6a 00                	push   $0x0
  pushl $243
80105d7e:	68 f3 00 00 00       	push   $0xf3
  jmp alltraps
80105d83:	e9 cf f1 ff ff       	jmp    80104f57 <alltraps>

80105d88 <vector244>:
.globl vector244
vector244:
  pushl $0
80105d88:	6a 00                	push   $0x0
  pushl $244
80105d8a:	68 f4 00 00 00       	push   $0xf4
  jmp alltraps
80105d8f:	e9 c3 f1 ff ff       	jmp    80104f57 <alltraps>

80105d94 <vector245>:
.globl vector245
vector245:
  pushl $0
80105d94:	6a 00                	push   $0x0
  pushl $245
80105d96:	68 f5 00 00 00       	push   $0xf5
  jmp alltraps
80105d9b:	e9 b7 f1 ff ff       	jmp    80104f57 <alltraps>

80105da0 <vector246>:
.globl vector246
vector246:
  pushl $0
80105da0:	6a 00                	push   $0x0
  pushl $246
80105da2:	68 f6 00 00 00       	push   $0xf6
  jmp alltraps
80105da7:	e9 ab f1 ff ff       	jmp    80104f57 <alltraps>

80105dac <vector247>:
.globl vector247
vector247:
  pushl $0
80105dac:	6a 00                	push   $0x0
  pushl $247
80105dae:	68 f7 00 00 00       	push   $0xf7
  jmp alltraps
80105db3:	e9 9f f1 ff ff       	jmp    80104f57 <alltraps>

80105db8 <vector248>:
.globl vector248
vector248:
  pushl $0
80105db8:	6a 00                	push   $0x0
  pushl $248
80105dba:	68 f8 00 00 00       	push   $0xf8
  jmp alltraps
80105dbf:	e9 93 f1 ff ff       	jmp    80104f57 <alltraps>

80105dc4 <vector249>:
.globl vector249
vector249:
  pushl $0
80105dc4:	6a 00                	push   $0x0
  pushl $249
80105dc6:	68 f9 00 00 00       	push   $0xf9
  jmp alltraps
80105dcb:	e9 87 f1 ff ff       	jmp    80104f57 <alltraps>

80105dd0 <vector250>:
.globl vector250
vector250:
  pushl $0
80105dd0:	6a 00                	push   $0x0
  pushl $250
80105dd2:	68 fa 00 00 00       	push   $0xfa
  jmp alltraps
80105dd7:	e9 7b f1 ff ff       	jmp    80104f57 <alltraps>

80105ddc <vector251>:
.globl vector251
vector251:
  pushl $0
80105ddc:	6a 00                	push   $0x0
  pushl $251
80105dde:	68 fb 00 00 00       	push   $0xfb
  jmp alltraps
80105de3:	e9 6f f1 ff ff       	jmp    80104f57 <alltraps>

80105de8 <vector252>:
.globl vector252
vector252:
  pushl $0
80105de8:	6a 00                	push   $0x0
  pushl $252
80105dea:	68 fc 00 00 00       	push   $0xfc
  jmp alltraps
80105def:	e9 63 f1 ff ff       	jmp    80104f57 <alltraps>

80105df4 <vector253>:
.globl vector253
vector253:
  pushl $0
80105df4:	6a 00                	push   $0x0
  pushl $253
80105df6:	68 fd 00 00 00       	push   $0xfd
  jmp alltraps
80105dfb:	e9 57 f1 ff ff       	jmp    80104f57 <alltraps>

80105e00 <vector254>:
.globl vector254
vector254:
  pushl $0
80105e00:	6a 00                	push   $0x0
  pushl $254
80105e02:	68 fe 00 00 00       	push   $0xfe
  jmp alltraps
80105e07:	e9 4b f1 ff ff       	jmp    80104f57 <alltraps>

80105e0c <vector255>:
.globl vector255
vector255:
  pushl $0
80105e0c:	6a 00                	push   $0x0
  pushl $255
80105e0e:	68 ff 00 00 00       	push   $0xff
  jmp alltraps
80105e13:	e9 3f f1 ff ff       	jmp    80104f57 <alltraps>

80105e18 <walkpgdir>:
// Return the address of the PTE in page table pgdir
// that corresponds to virtual address va.  If alloc!=0,
// create any required page table pages.
static pte_t *
walkpgdir(pde_t *pgdir, const void *va, int alloc)
{
80105e18:	55                   	push   %ebp
80105e19:	89 e5                	mov    %esp,%ebp
80105e1b:	57                   	push   %edi
80105e1c:	56                   	push   %esi
80105e1d:	53                   	push   %ebx
80105e1e:	83 ec 0c             	sub    $0xc,%esp
80105e21:	89 d3                	mov    %edx,%ebx
  pde_t *pde;
  pte_t *pgtab;

  pde = &pgdir[PDX(va)];
80105e23:	c1 ea 16             	shr    $0x16,%edx
80105e26:	8d 3c 90             	lea    (%eax,%edx,4),%edi
  if(*pde & PTE_P){
80105e29:	8b 37                	mov    (%edi),%esi
80105e2b:	f7 c6 01 00 00 00    	test   $0x1,%esi
80105e31:	74 20                	je     80105e53 <walkpgdir+0x3b>
    pgtab = (pte_t*)P2V(PTE_ADDR(*pde));
80105e33:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80105e39:	81 c6 00 00 00 80    	add    $0x80000000,%esi
    // The permissions here are overly generous, but they can
    // be further restricted by the permissions in the page table
    // entries, if necessary.
    *pde = V2P(pgtab) | PTE_P | PTE_W | PTE_U;
  }
  return &pgtab[PTX(va)];
80105e3f:	c1 eb 0c             	shr    $0xc,%ebx
80105e42:	81 e3 ff 03 00 00    	and    $0x3ff,%ebx
80105e48:	8d 04 9e             	lea    (%esi,%ebx,4),%eax
}
80105e4b:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105e4e:	5b                   	pop    %ebx
80105e4f:	5e                   	pop    %esi
80105e50:	5f                   	pop    %edi
80105e51:	5d                   	pop    %ebp
80105e52:	c3                   	ret    
    if(!alloc || (pgtab = (pte_t*)kalloc()) == 0)
80105e53:	85 c9                	test   %ecx,%ecx
80105e55:	74 2b                	je     80105e82 <walkpgdir+0x6a>
80105e57:	e8 11 c3 ff ff       	call   8010216d <kalloc>
80105e5c:	89 c6                	mov    %eax,%esi
80105e5e:	85 c0                	test   %eax,%eax
80105e60:	74 20                	je     80105e82 <walkpgdir+0x6a>
    memset(pgtab, 0, PGSIZE);
80105e62:	83 ec 04             	sub    $0x4,%esp
80105e65:	68 00 10 00 00       	push   $0x1000
80105e6a:	6a 00                	push   $0x0
80105e6c:	50                   	push   %eax
80105e6d:	e8 17 df ff ff       	call   80103d89 <memset>
    *pde = V2P(pgtab) | PTE_P | PTE_W | PTE_U;
80105e72:	8d 86 00 00 00 80    	lea    -0x80000000(%esi),%eax
80105e78:	83 c8 07             	or     $0x7,%eax
80105e7b:	89 07                	mov    %eax,(%edi)
80105e7d:	83 c4 10             	add    $0x10,%esp
80105e80:	eb bd                	jmp    80105e3f <walkpgdir+0x27>
      return 0;
80105e82:	b8 00 00 00 00       	mov    $0x0,%eax
80105e87:	eb c2                	jmp    80105e4b <walkpgdir+0x33>

80105e89 <mappages>:
// Create PTEs for virtual addresses starting at va that refer to
// physical addresses starting at pa. va and size might not
// be page-aligned.
static int
mappages(pde_t *pgdir, void *va, uint size, uint pa, int perm)
{
80105e89:	55                   	push   %ebp
80105e8a:	89 e5                	mov    %esp,%ebp
80105e8c:	57                   	push   %edi
80105e8d:	56                   	push   %esi
80105e8e:	53                   	push   %ebx
80105e8f:	83 ec 1c             	sub    $0x1c,%esp
80105e92:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80105e95:	8b 75 08             	mov    0x8(%ebp),%esi
  char *a, *last;
  pte_t *pte;

  a = (char*)PGROUNDDOWN((uint)va);
80105e98:	89 d3                	mov    %edx,%ebx
80105e9a:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
  last = (char*)PGROUNDDOWN(((uint)va) + size - 1);
80105ea0:	8d 7c 0a ff          	lea    -0x1(%edx,%ecx,1),%edi
80105ea4:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
  for(;;){
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
80105eaa:	b9 01 00 00 00       	mov    $0x1,%ecx
80105eaf:	89 da                	mov    %ebx,%edx
80105eb1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80105eb4:	e8 5f ff ff ff       	call   80105e18 <walkpgdir>
80105eb9:	85 c0                	test   %eax,%eax
80105ebb:	74 2e                	je     80105eeb <mappages+0x62>
      return -1;
    if(*pte & PTE_P)
80105ebd:	f6 00 01             	testb  $0x1,(%eax)
80105ec0:	75 1c                	jne    80105ede <mappages+0x55>
      panic("remap");
    *pte = pa | perm | PTE_P;
80105ec2:	89 f2                	mov    %esi,%edx
80105ec4:	0b 55 0c             	or     0xc(%ebp),%edx
80105ec7:	83 ca 01             	or     $0x1,%edx
80105eca:	89 10                	mov    %edx,(%eax)
    if(a == last)
80105ecc:	39 fb                	cmp    %edi,%ebx
80105ece:	74 28                	je     80105ef8 <mappages+0x6f>
      break;
    a += PGSIZE;
80105ed0:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    pa += PGSIZE;
80105ed6:	81 c6 00 10 00 00    	add    $0x1000,%esi
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
80105edc:	eb cc                	jmp    80105eaa <mappages+0x21>
      panic("remap");
80105ede:	83 ec 0c             	sub    $0xc,%esp
80105ee1:	68 b0 6f 10 80       	push   $0x80106fb0
80105ee6:	e8 71 a4 ff ff       	call   8010035c <panic>
      return -1;
80105eeb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }
  return 0;
}
80105ef0:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105ef3:	5b                   	pop    %ebx
80105ef4:	5e                   	pop    %esi
80105ef5:	5f                   	pop    %edi
80105ef6:	5d                   	pop    %ebp
80105ef7:	c3                   	ret    
  return 0;
80105ef8:	b8 00 00 00 00       	mov    $0x0,%eax
80105efd:	eb f1                	jmp    80105ef0 <mappages+0x67>

80105eff <seginit>:
{
80105eff:	f3 0f 1e fb          	endbr32 
80105f03:	55                   	push   %ebp
80105f04:	89 e5                	mov    %esp,%ebp
80105f06:	53                   	push   %ebx
80105f07:	83 ec 14             	sub    $0x14,%esp
  c = &cpus[cpuid()];
80105f0a:	e8 b2 d3 ff ff       	call   801032c1 <cpuid>
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
80105f0f:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
80105f15:	66 c7 80 f8 27 11 80 	movw   $0xffff,-0x7feed808(%eax)
80105f1c:	ff ff 
80105f1e:	66 c7 80 fa 27 11 80 	movw   $0x0,-0x7feed806(%eax)
80105f25:	00 00 
80105f27:	c6 80 fc 27 11 80 00 	movb   $0x0,-0x7feed804(%eax)
80105f2e:	0f b6 88 fd 27 11 80 	movzbl -0x7feed803(%eax),%ecx
80105f35:	83 e1 f0             	and    $0xfffffff0,%ecx
80105f38:	83 c9 1a             	or     $0x1a,%ecx
80105f3b:	83 e1 9f             	and    $0xffffff9f,%ecx
80105f3e:	83 c9 80             	or     $0xffffff80,%ecx
80105f41:	88 88 fd 27 11 80    	mov    %cl,-0x7feed803(%eax)
80105f47:	0f b6 88 fe 27 11 80 	movzbl -0x7feed802(%eax),%ecx
80105f4e:	83 c9 0f             	or     $0xf,%ecx
80105f51:	83 e1 cf             	and    $0xffffffcf,%ecx
80105f54:	83 c9 c0             	or     $0xffffffc0,%ecx
80105f57:	88 88 fe 27 11 80    	mov    %cl,-0x7feed802(%eax)
80105f5d:	c6 80 ff 27 11 80 00 	movb   $0x0,-0x7feed801(%eax)
  c->gdt[SEG_KDATA] = SEG(STA_W, 0, 0xffffffff, 0);
80105f64:	66 c7 80 00 28 11 80 	movw   $0xffff,-0x7feed800(%eax)
80105f6b:	ff ff 
80105f6d:	66 c7 80 02 28 11 80 	movw   $0x0,-0x7feed7fe(%eax)
80105f74:	00 00 
80105f76:	c6 80 04 28 11 80 00 	movb   $0x0,-0x7feed7fc(%eax)
80105f7d:	0f b6 88 05 28 11 80 	movzbl -0x7feed7fb(%eax),%ecx
80105f84:	83 e1 f0             	and    $0xfffffff0,%ecx
80105f87:	83 c9 12             	or     $0x12,%ecx
80105f8a:	83 e1 9f             	and    $0xffffff9f,%ecx
80105f8d:	83 c9 80             	or     $0xffffff80,%ecx
80105f90:	88 88 05 28 11 80    	mov    %cl,-0x7feed7fb(%eax)
80105f96:	0f b6 88 06 28 11 80 	movzbl -0x7feed7fa(%eax),%ecx
80105f9d:	83 c9 0f             	or     $0xf,%ecx
80105fa0:	83 e1 cf             	and    $0xffffffcf,%ecx
80105fa3:	83 c9 c0             	or     $0xffffffc0,%ecx
80105fa6:	88 88 06 28 11 80    	mov    %cl,-0x7feed7fa(%eax)
80105fac:	c6 80 07 28 11 80 00 	movb   $0x0,-0x7feed7f9(%eax)
  c->gdt[SEG_UCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, DPL_USER);
80105fb3:	66 c7 80 08 28 11 80 	movw   $0xffff,-0x7feed7f8(%eax)
80105fba:	ff ff 
80105fbc:	66 c7 80 0a 28 11 80 	movw   $0x0,-0x7feed7f6(%eax)
80105fc3:	00 00 
80105fc5:	c6 80 0c 28 11 80 00 	movb   $0x0,-0x7feed7f4(%eax)
80105fcc:	c6 80 0d 28 11 80 fa 	movb   $0xfa,-0x7feed7f3(%eax)
80105fd3:	0f b6 88 0e 28 11 80 	movzbl -0x7feed7f2(%eax),%ecx
80105fda:	83 c9 0f             	or     $0xf,%ecx
80105fdd:	83 e1 cf             	and    $0xffffffcf,%ecx
80105fe0:	83 c9 c0             	or     $0xffffffc0,%ecx
80105fe3:	88 88 0e 28 11 80    	mov    %cl,-0x7feed7f2(%eax)
80105fe9:	c6 80 0f 28 11 80 00 	movb   $0x0,-0x7feed7f1(%eax)
  c->gdt[SEG_UDATA] = SEG(STA_W, 0, 0xffffffff, DPL_USER);
80105ff0:	66 c7 80 10 28 11 80 	movw   $0xffff,-0x7feed7f0(%eax)
80105ff7:	ff ff 
80105ff9:	66 c7 80 12 28 11 80 	movw   $0x0,-0x7feed7ee(%eax)
80106000:	00 00 
80106002:	c6 80 14 28 11 80 00 	movb   $0x0,-0x7feed7ec(%eax)
80106009:	c6 80 15 28 11 80 f2 	movb   $0xf2,-0x7feed7eb(%eax)
80106010:	0f b6 88 16 28 11 80 	movzbl -0x7feed7ea(%eax),%ecx
80106017:	83 c9 0f             	or     $0xf,%ecx
8010601a:	83 e1 cf             	and    $0xffffffcf,%ecx
8010601d:	83 c9 c0             	or     $0xffffffc0,%ecx
80106020:	88 88 16 28 11 80    	mov    %cl,-0x7feed7ea(%eax)
80106026:	c6 80 17 28 11 80 00 	movb   $0x0,-0x7feed7e9(%eax)
  lgdt(c->gdt, sizeof(c->gdt));
8010602d:	05 f0 27 11 80       	add    $0x801127f0,%eax
  pd[0] = size-1;
80106032:	66 c7 45 f2 2f 00    	movw   $0x2f,-0xe(%ebp)
  pd[1] = (uint)p;
80106038:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
  pd[2] = (uint)p >> 16;
8010603c:	c1 e8 10             	shr    $0x10,%eax
8010603f:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
  asm volatile("lgdt (%0)" : : "r" (pd));
80106043:	8d 45 f2             	lea    -0xe(%ebp),%eax
80106046:	0f 01 10             	lgdtl  (%eax)
}
80106049:	83 c4 14             	add    $0x14,%esp
8010604c:	5b                   	pop    %ebx
8010604d:	5d                   	pop    %ebp
8010604e:	c3                   	ret    

8010604f <switchkvm>:

// Switch h/w page table register to the kernel-only page table,
// for when no process is running.
void
switchkvm(void)
{
8010604f:	f3 0f 1e fb          	endbr32 
  lcr3(V2P(kpgdir));   // switch to the kernel page table
80106053:	a1 a4 54 11 80       	mov    0x801154a4,%eax
80106058:	05 00 00 00 80       	add    $0x80000000,%eax
  asm volatile("movl %0,%%cr3" : : "r" (val));
8010605d:	0f 22 d8             	mov    %eax,%cr3
}
80106060:	c3                   	ret    

80106061 <switchuvm>:

// Switch TSS and h/w page table to correspond to process p.
void
switchuvm(struct proc *p)
{
80106061:	f3 0f 1e fb          	endbr32 
80106065:	55                   	push   %ebp
80106066:	89 e5                	mov    %esp,%ebp
80106068:	57                   	push   %edi
80106069:	56                   	push   %esi
8010606a:	53                   	push   %ebx
8010606b:	83 ec 1c             	sub    $0x1c,%esp
8010606e:	8b 75 08             	mov    0x8(%ebp),%esi
  if(p == 0)
80106071:	85 f6                	test   %esi,%esi
80106073:	0f 84 dd 00 00 00    	je     80106156 <switchuvm+0xf5>
    panic("switchuvm: no process");
  if(p->kstack == 0)
80106079:	83 7e 08 00          	cmpl   $0x0,0x8(%esi)
8010607d:	0f 84 e0 00 00 00    	je     80106163 <switchuvm+0x102>
    panic("switchuvm: no kstack");
  if(p->pgdir == 0)
80106083:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
80106087:	0f 84 e3 00 00 00    	je     80106170 <switchuvm+0x10f>
    panic("switchuvm: no pgdir");

  pushcli();
8010608d:	e8 5a db ff ff       	call   80103bec <pushcli>
  mycpu()->gdt[SEG_TSS] = SEG16(STS_T32A, &mycpu()->ts,
80106092:	e8 ca d1 ff ff       	call   80103261 <mycpu>
80106097:	89 c3                	mov    %eax,%ebx
80106099:	e8 c3 d1 ff ff       	call   80103261 <mycpu>
8010609e:	8d 78 08             	lea    0x8(%eax),%edi
801060a1:	e8 bb d1 ff ff       	call   80103261 <mycpu>
801060a6:	83 c0 08             	add    $0x8,%eax
801060a9:	c1 e8 10             	shr    $0x10,%eax
801060ac:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801060af:	e8 ad d1 ff ff       	call   80103261 <mycpu>
801060b4:	83 c0 08             	add    $0x8,%eax
801060b7:	c1 e8 18             	shr    $0x18,%eax
801060ba:	66 c7 83 98 00 00 00 	movw   $0x67,0x98(%ebx)
801060c1:	67 00 
801060c3:	66 89 bb 9a 00 00 00 	mov    %di,0x9a(%ebx)
801060ca:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
801060ce:	88 8b 9c 00 00 00    	mov    %cl,0x9c(%ebx)
801060d4:	0f b6 93 9d 00 00 00 	movzbl 0x9d(%ebx),%edx
801060db:	83 e2 f0             	and    $0xfffffff0,%edx
801060de:	83 ca 19             	or     $0x19,%edx
801060e1:	83 e2 9f             	and    $0xffffff9f,%edx
801060e4:	83 ca 80             	or     $0xffffff80,%edx
801060e7:	88 93 9d 00 00 00    	mov    %dl,0x9d(%ebx)
801060ed:	c6 83 9e 00 00 00 40 	movb   $0x40,0x9e(%ebx)
801060f4:	88 83 9f 00 00 00    	mov    %al,0x9f(%ebx)
                                sizeof(mycpu()->ts)-1, 0);
  mycpu()->gdt[SEG_TSS].s = 0;
801060fa:	e8 62 d1 ff ff       	call   80103261 <mycpu>
801060ff:	0f b6 90 9d 00 00 00 	movzbl 0x9d(%eax),%edx
80106106:	83 e2 ef             	and    $0xffffffef,%edx
80106109:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  mycpu()->ts.ss0 = SEG_KDATA << 3;
8010610f:	e8 4d d1 ff ff       	call   80103261 <mycpu>
80106114:	66 c7 40 10 10 00    	movw   $0x10,0x10(%eax)
  mycpu()->ts.esp0 = (uint)p->kstack + KSTACKSIZE;
8010611a:	8b 5e 08             	mov    0x8(%esi),%ebx
8010611d:	e8 3f d1 ff ff       	call   80103261 <mycpu>
80106122:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80106128:	89 58 0c             	mov    %ebx,0xc(%eax)
  // setting IOPL=0 in eflags *and* iomb beyond the tss segment limit
  // forbids I/O instructions (e.g., inb and outb) from user space
  mycpu()->ts.iomb = (ushort) 0xFFFF;
8010612b:	e8 31 d1 ff ff       	call   80103261 <mycpu>
80106130:	66 c7 40 6e ff ff    	movw   $0xffff,0x6e(%eax)
  asm volatile("ltr %0" : : "r" (sel));
80106136:	b8 28 00 00 00       	mov    $0x28,%eax
8010613b:	0f 00 d8             	ltr    %ax
  ltr(SEG_TSS << 3);
  lcr3(V2P(p->pgdir));  // switch to process's address space
8010613e:	8b 46 04             	mov    0x4(%esi),%eax
80106141:	05 00 00 00 80       	add    $0x80000000,%eax
  asm volatile("movl %0,%%cr3" : : "r" (val));
80106146:	0f 22 d8             	mov    %eax,%cr3
  popcli();
80106149:	e8 df da ff ff       	call   80103c2d <popcli>
}
8010614e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106151:	5b                   	pop    %ebx
80106152:	5e                   	pop    %esi
80106153:	5f                   	pop    %edi
80106154:	5d                   	pop    %ebp
80106155:	c3                   	ret    
    panic("switchuvm: no process");
80106156:	83 ec 0c             	sub    $0xc,%esp
80106159:	68 b6 6f 10 80       	push   $0x80106fb6
8010615e:	e8 f9 a1 ff ff       	call   8010035c <panic>
    panic("switchuvm: no kstack");
80106163:	83 ec 0c             	sub    $0xc,%esp
80106166:	68 cc 6f 10 80       	push   $0x80106fcc
8010616b:	e8 ec a1 ff ff       	call   8010035c <panic>
    panic("switchuvm: no pgdir");
80106170:	83 ec 0c             	sub    $0xc,%esp
80106173:	68 e1 6f 10 80       	push   $0x80106fe1
80106178:	e8 df a1 ff ff       	call   8010035c <panic>

8010617d <inituvm>:

// Load the initcode into address 0 of pgdir.
// sz must be less than a page.
void
inituvm(pde_t *pgdir, char *init, uint sz)
{
8010617d:	f3 0f 1e fb          	endbr32 
80106181:	55                   	push   %ebp
80106182:	89 e5                	mov    %esp,%ebp
80106184:	56                   	push   %esi
80106185:	53                   	push   %ebx
80106186:	8b 75 10             	mov    0x10(%ebp),%esi
  char *mem;

  if(sz >= PGSIZE)
80106189:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
8010618f:	77 4c                	ja     801061dd <inituvm+0x60>
    panic("inituvm: more than a page");
  mem = kalloc();
80106191:	e8 d7 bf ff ff       	call   8010216d <kalloc>
80106196:	89 c3                	mov    %eax,%ebx
  memset(mem, 0, PGSIZE);
80106198:	83 ec 04             	sub    $0x4,%esp
8010619b:	68 00 10 00 00       	push   $0x1000
801061a0:	6a 00                	push   $0x0
801061a2:	50                   	push   %eax
801061a3:	e8 e1 db ff ff       	call   80103d89 <memset>
  mappages(pgdir, 0, PGSIZE, V2P(mem), PTE_W|PTE_U);
801061a8:	83 c4 08             	add    $0x8,%esp
801061ab:	6a 06                	push   $0x6
801061ad:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801061b3:	50                   	push   %eax
801061b4:	b9 00 10 00 00       	mov    $0x1000,%ecx
801061b9:	ba 00 00 00 00       	mov    $0x0,%edx
801061be:	8b 45 08             	mov    0x8(%ebp),%eax
801061c1:	e8 c3 fc ff ff       	call   80105e89 <mappages>
  memmove(mem, init, sz);
801061c6:	83 c4 0c             	add    $0xc,%esp
801061c9:	56                   	push   %esi
801061ca:	ff 75 0c             	pushl  0xc(%ebp)
801061cd:	53                   	push   %ebx
801061ce:	e8 36 dc ff ff       	call   80103e09 <memmove>
}
801061d3:	83 c4 10             	add    $0x10,%esp
801061d6:	8d 65 f8             	lea    -0x8(%ebp),%esp
801061d9:	5b                   	pop    %ebx
801061da:	5e                   	pop    %esi
801061db:	5d                   	pop    %ebp
801061dc:	c3                   	ret    
    panic("inituvm: more than a page");
801061dd:	83 ec 0c             	sub    $0xc,%esp
801061e0:	68 f5 6f 10 80       	push   $0x80106ff5
801061e5:	e8 72 a1 ff ff       	call   8010035c <panic>

801061ea <loaduvm>:

// Load a program segment into pgdir.  addr must be page-aligned
// and the pages from addr to addr+sz must already be mapped.
int
loaduvm(pde_t *pgdir, char *addr, struct inode *ip, uint offset, uint sz)
{
801061ea:	f3 0f 1e fb          	endbr32 
801061ee:	55                   	push   %ebp
801061ef:	89 e5                	mov    %esp,%ebp
801061f1:	57                   	push   %edi
801061f2:	56                   	push   %esi
801061f3:	53                   	push   %ebx
801061f4:	83 ec 0c             	sub    $0xc,%esp
801061f7:	8b 7d 18             	mov    0x18(%ebp),%edi
  uint i, pa, n;
  pte_t *pte;

  if((uint) addr % PGSIZE != 0)
801061fa:	8b 5d 0c             	mov    0xc(%ebp),%ebx
801061fd:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
80106203:	74 3c                	je     80106241 <loaduvm+0x57>
    panic("loaduvm: addr must be page aligned");
80106205:	83 ec 0c             	sub    $0xc,%esp
80106208:	68 b0 70 10 80       	push   $0x801070b0
8010620d:	e8 4a a1 ff ff       	call   8010035c <panic>
  for(i = 0; i < sz; i += PGSIZE){
    if((pte = walkpgdir(pgdir, addr+i, 0)) == 0)
      panic("loaduvm: address should exist");
80106212:	83 ec 0c             	sub    $0xc,%esp
80106215:	68 0f 70 10 80       	push   $0x8010700f
8010621a:	e8 3d a1 ff ff       	call   8010035c <panic>
    pa = PTE_ADDR(*pte);
    if(sz - i < PGSIZE)
      n = sz - i;
    else
      n = PGSIZE;
    if(readi(ip, P2V(pa), offset+i, n) != n)
8010621f:	05 00 00 00 80       	add    $0x80000000,%eax
80106224:	56                   	push   %esi
80106225:	89 da                	mov    %ebx,%edx
80106227:	03 55 14             	add    0x14(%ebp),%edx
8010622a:	52                   	push   %edx
8010622b:	50                   	push   %eax
8010622c:	ff 75 10             	pushl  0x10(%ebp)
8010622f:	e8 b7 b5 ff ff       	call   801017eb <readi>
80106234:	83 c4 10             	add    $0x10,%esp
80106237:	39 f0                	cmp    %esi,%eax
80106239:	75 47                	jne    80106282 <loaduvm+0x98>
  for(i = 0; i < sz; i += PGSIZE){
8010623b:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80106241:	39 fb                	cmp    %edi,%ebx
80106243:	73 30                	jae    80106275 <loaduvm+0x8b>
    if((pte = walkpgdir(pgdir, addr+i, 0)) == 0)
80106245:	89 da                	mov    %ebx,%edx
80106247:	03 55 0c             	add    0xc(%ebp),%edx
8010624a:	b9 00 00 00 00       	mov    $0x0,%ecx
8010624f:	8b 45 08             	mov    0x8(%ebp),%eax
80106252:	e8 c1 fb ff ff       	call   80105e18 <walkpgdir>
80106257:	85 c0                	test   %eax,%eax
80106259:	74 b7                	je     80106212 <loaduvm+0x28>
    pa = PTE_ADDR(*pte);
8010625b:	8b 00                	mov    (%eax),%eax
8010625d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    if(sz - i < PGSIZE)
80106262:	89 fe                	mov    %edi,%esi
80106264:	29 de                	sub    %ebx,%esi
80106266:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
8010626c:	76 b1                	jbe    8010621f <loaduvm+0x35>
      n = PGSIZE;
8010626e:	be 00 10 00 00       	mov    $0x1000,%esi
80106273:	eb aa                	jmp    8010621f <loaduvm+0x35>
      return -1;
  }
  return 0;
80106275:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010627a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010627d:	5b                   	pop    %ebx
8010627e:	5e                   	pop    %esi
8010627f:	5f                   	pop    %edi
80106280:	5d                   	pop    %ebp
80106281:	c3                   	ret    
      return -1;
80106282:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106287:	eb f1                	jmp    8010627a <loaduvm+0x90>

80106289 <deallocuvm>:
// newsz.  oldsz and newsz need not be page-aligned, nor does newsz
// need to be less than oldsz.  oldsz can be larger than the actual
// process size.  Returns the new process size.
int
deallocuvm(pde_t *pgdir, uint oldsz, uint newsz)
{
80106289:	f3 0f 1e fb          	endbr32 
8010628d:	55                   	push   %ebp
8010628e:	89 e5                	mov    %esp,%ebp
80106290:	57                   	push   %edi
80106291:	56                   	push   %esi
80106292:	53                   	push   %ebx
80106293:	83 ec 0c             	sub    $0xc,%esp
80106296:	8b 7d 0c             	mov    0xc(%ebp),%edi
  pte_t *pte;
  uint a, pa;

  if(newsz >= oldsz)
80106299:	39 7d 10             	cmp    %edi,0x10(%ebp)
8010629c:	73 11                	jae    801062af <deallocuvm+0x26>
    return oldsz;

  a = PGROUNDUP(newsz);
8010629e:	8b 45 10             	mov    0x10(%ebp),%eax
801062a1:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
801062a7:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
  for(; a  < oldsz; a += PGSIZE){
801062ad:	eb 19                	jmp    801062c8 <deallocuvm+0x3f>
    return oldsz;
801062af:	89 f8                	mov    %edi,%eax
801062b1:	eb 64                	jmp    80106317 <deallocuvm+0x8e>
    pte = walkpgdir(pgdir, (char*)a, 0);
    if(!pte)
      a = PGADDR(PDX(a) + 1, 0, 0) - PGSIZE;
801062b3:	c1 eb 16             	shr    $0x16,%ebx
801062b6:	83 c3 01             	add    $0x1,%ebx
801062b9:	c1 e3 16             	shl    $0x16,%ebx
801062bc:	81 eb 00 10 00 00    	sub    $0x1000,%ebx
  for(; a  < oldsz; a += PGSIZE){
801062c2:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801062c8:	39 fb                	cmp    %edi,%ebx
801062ca:	73 48                	jae    80106314 <deallocuvm+0x8b>
    pte = walkpgdir(pgdir, (char*)a, 0);
801062cc:	b9 00 00 00 00       	mov    $0x0,%ecx
801062d1:	89 da                	mov    %ebx,%edx
801062d3:	8b 45 08             	mov    0x8(%ebp),%eax
801062d6:	e8 3d fb ff ff       	call   80105e18 <walkpgdir>
801062db:	89 c6                	mov    %eax,%esi
    if(!pte)
801062dd:	85 c0                	test   %eax,%eax
801062df:	74 d2                	je     801062b3 <deallocuvm+0x2a>
    else if((*pte & PTE_P) != 0){
801062e1:	8b 00                	mov    (%eax),%eax
801062e3:	a8 01                	test   $0x1,%al
801062e5:	74 db                	je     801062c2 <deallocuvm+0x39>
      pa = PTE_ADDR(*pte);
      if(pa == 0)
801062e7:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801062ec:	74 19                	je     80106307 <deallocuvm+0x7e>
        panic("kfree");
      char *v = P2V(pa);
801062ee:	05 00 00 00 80       	add    $0x80000000,%eax
      kfree(v);
801062f3:	83 ec 0c             	sub    $0xc,%esp
801062f6:	50                   	push   %eax
801062f7:	e8 4a bd ff ff       	call   80102046 <kfree>
      *pte = 0;
801062fc:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80106302:	83 c4 10             	add    $0x10,%esp
80106305:	eb bb                	jmp    801062c2 <deallocuvm+0x39>
        panic("kfree");
80106307:	83 ec 0c             	sub    $0xc,%esp
8010630a:	68 66 69 10 80       	push   $0x80106966
8010630f:	e8 48 a0 ff ff       	call   8010035c <panic>
    }
  }
  return newsz;
80106314:	8b 45 10             	mov    0x10(%ebp),%eax
}
80106317:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010631a:	5b                   	pop    %ebx
8010631b:	5e                   	pop    %esi
8010631c:	5f                   	pop    %edi
8010631d:	5d                   	pop    %ebp
8010631e:	c3                   	ret    

8010631f <allocuvm>:
{
8010631f:	f3 0f 1e fb          	endbr32 
80106323:	55                   	push   %ebp
80106324:	89 e5                	mov    %esp,%ebp
80106326:	57                   	push   %edi
80106327:	56                   	push   %esi
80106328:	53                   	push   %ebx
80106329:	83 ec 1c             	sub    $0x1c,%esp
8010632c:	8b 7d 10             	mov    0x10(%ebp),%edi
  if(newsz >= KERNBASE)
8010632f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80106332:	85 ff                	test   %edi,%edi
80106334:	0f 88 c0 00 00 00    	js     801063fa <allocuvm+0xdb>
  if(newsz < oldsz)
8010633a:	3b 7d 0c             	cmp    0xc(%ebp),%edi
8010633d:	72 11                	jb     80106350 <allocuvm+0x31>
  a = PGROUNDUP(oldsz);
8010633f:	8b 45 0c             	mov    0xc(%ebp),%eax
80106342:	8d b0 ff 0f 00 00    	lea    0xfff(%eax),%esi
80106348:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
  for(; a < newsz; a += PGSIZE){
8010634e:	eb 39                	jmp    80106389 <allocuvm+0x6a>
    return oldsz;
80106350:	8b 45 0c             	mov    0xc(%ebp),%eax
80106353:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106356:	e9 a6 00 00 00       	jmp    80106401 <allocuvm+0xe2>
      cprintf("allocuvm out of memory\n");
8010635b:	83 ec 0c             	sub    $0xc,%esp
8010635e:	68 2d 70 10 80       	push   $0x8010702d
80106363:	e8 c1 a2 ff ff       	call   80100629 <cprintf>
      deallocuvm(pgdir, newsz, oldsz);
80106368:	83 c4 0c             	add    $0xc,%esp
8010636b:	ff 75 0c             	pushl  0xc(%ebp)
8010636e:	57                   	push   %edi
8010636f:	ff 75 08             	pushl  0x8(%ebp)
80106372:	e8 12 ff ff ff       	call   80106289 <deallocuvm>
      return 0;
80106377:	83 c4 10             	add    $0x10,%esp
8010637a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106381:	eb 7e                	jmp    80106401 <allocuvm+0xe2>
  for(; a < newsz; a += PGSIZE){
80106383:	81 c6 00 10 00 00    	add    $0x1000,%esi
80106389:	39 fe                	cmp    %edi,%esi
8010638b:	73 74                	jae    80106401 <allocuvm+0xe2>
    mem = kalloc();
8010638d:	e8 db bd ff ff       	call   8010216d <kalloc>
80106392:	89 c3                	mov    %eax,%ebx
    if(mem == 0){
80106394:	85 c0                	test   %eax,%eax
80106396:	74 c3                	je     8010635b <allocuvm+0x3c>
    memset(mem, 0, PGSIZE);
80106398:	83 ec 04             	sub    $0x4,%esp
8010639b:	68 00 10 00 00       	push   $0x1000
801063a0:	6a 00                	push   $0x0
801063a2:	50                   	push   %eax
801063a3:	e8 e1 d9 ff ff       	call   80103d89 <memset>
    if(mappages(pgdir, (char*)a, PGSIZE, V2P(mem), PTE_W|PTE_U) < 0){
801063a8:	83 c4 08             	add    $0x8,%esp
801063ab:	6a 06                	push   $0x6
801063ad:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801063b3:	50                   	push   %eax
801063b4:	b9 00 10 00 00       	mov    $0x1000,%ecx
801063b9:	89 f2                	mov    %esi,%edx
801063bb:	8b 45 08             	mov    0x8(%ebp),%eax
801063be:	e8 c6 fa ff ff       	call   80105e89 <mappages>
801063c3:	83 c4 10             	add    $0x10,%esp
801063c6:	85 c0                	test   %eax,%eax
801063c8:	79 b9                	jns    80106383 <allocuvm+0x64>
      cprintf("allocuvm out of memory (2)\n");
801063ca:	83 ec 0c             	sub    $0xc,%esp
801063cd:	68 45 70 10 80       	push   $0x80107045
801063d2:	e8 52 a2 ff ff       	call   80100629 <cprintf>
      deallocuvm(pgdir, newsz, oldsz);
801063d7:	83 c4 0c             	add    $0xc,%esp
801063da:	ff 75 0c             	pushl  0xc(%ebp)
801063dd:	57                   	push   %edi
801063de:	ff 75 08             	pushl  0x8(%ebp)
801063e1:	e8 a3 fe ff ff       	call   80106289 <deallocuvm>
      kfree(mem);
801063e6:	89 1c 24             	mov    %ebx,(%esp)
801063e9:	e8 58 bc ff ff       	call   80102046 <kfree>
      return 0;
801063ee:	83 c4 10             	add    $0x10,%esp
801063f1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
801063f8:	eb 07                	jmp    80106401 <allocuvm+0xe2>
    return 0;
801063fa:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
}
80106401:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106404:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106407:	5b                   	pop    %ebx
80106408:	5e                   	pop    %esi
80106409:	5f                   	pop    %edi
8010640a:	5d                   	pop    %ebp
8010640b:	c3                   	ret    

8010640c <freevm>:

// Free a page table and all the physical memory pages
// in the user part.
void
freevm(pde_t *pgdir)
{
8010640c:	f3 0f 1e fb          	endbr32 
80106410:	55                   	push   %ebp
80106411:	89 e5                	mov    %esp,%ebp
80106413:	56                   	push   %esi
80106414:	53                   	push   %ebx
80106415:	8b 75 08             	mov    0x8(%ebp),%esi
  uint i;

  if(pgdir == 0)
80106418:	85 f6                	test   %esi,%esi
8010641a:	74 1a                	je     80106436 <freevm+0x2a>
    panic("freevm: no pgdir");
  deallocuvm(pgdir, KERNBASE, 0);
8010641c:	83 ec 04             	sub    $0x4,%esp
8010641f:	6a 00                	push   $0x0
80106421:	68 00 00 00 80       	push   $0x80000000
80106426:	56                   	push   %esi
80106427:	e8 5d fe ff ff       	call   80106289 <deallocuvm>
  for(i = 0; i < NPDENTRIES; i++){
8010642c:	83 c4 10             	add    $0x10,%esp
8010642f:	bb 00 00 00 00       	mov    $0x0,%ebx
80106434:	eb 26                	jmp    8010645c <freevm+0x50>
    panic("freevm: no pgdir");
80106436:	83 ec 0c             	sub    $0xc,%esp
80106439:	68 61 70 10 80       	push   $0x80107061
8010643e:	e8 19 9f ff ff       	call   8010035c <panic>
    if(pgdir[i] & PTE_P){
      char * v = P2V(PTE_ADDR(pgdir[i]));
80106443:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106448:	05 00 00 00 80       	add    $0x80000000,%eax
      kfree(v);
8010644d:	83 ec 0c             	sub    $0xc,%esp
80106450:	50                   	push   %eax
80106451:	e8 f0 bb ff ff       	call   80102046 <kfree>
80106456:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < NPDENTRIES; i++){
80106459:	83 c3 01             	add    $0x1,%ebx
8010645c:	81 fb ff 03 00 00    	cmp    $0x3ff,%ebx
80106462:	77 09                	ja     8010646d <freevm+0x61>
    if(pgdir[i] & PTE_P){
80106464:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
80106467:	a8 01                	test   $0x1,%al
80106469:	74 ee                	je     80106459 <freevm+0x4d>
8010646b:	eb d6                	jmp    80106443 <freevm+0x37>
    }
  }
  kfree((char*)pgdir);
8010646d:	83 ec 0c             	sub    $0xc,%esp
80106470:	56                   	push   %esi
80106471:	e8 d0 bb ff ff       	call   80102046 <kfree>
}
80106476:	83 c4 10             	add    $0x10,%esp
80106479:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010647c:	5b                   	pop    %ebx
8010647d:	5e                   	pop    %esi
8010647e:	5d                   	pop    %ebp
8010647f:	c3                   	ret    

80106480 <setupkvm>:
{
80106480:	f3 0f 1e fb          	endbr32 
80106484:	55                   	push   %ebp
80106485:	89 e5                	mov    %esp,%ebp
80106487:	56                   	push   %esi
80106488:	53                   	push   %ebx
  if((pgdir = (pde_t*)kalloc()) == 0)
80106489:	e8 df bc ff ff       	call   8010216d <kalloc>
8010648e:	89 c6                	mov    %eax,%esi
80106490:	85 c0                	test   %eax,%eax
80106492:	74 55                	je     801064e9 <setupkvm+0x69>
  memset(pgdir, 0, PGSIZE);
80106494:	83 ec 04             	sub    $0x4,%esp
80106497:	68 00 10 00 00       	push   $0x1000
8010649c:	6a 00                	push   $0x0
8010649e:	50                   	push   %eax
8010649f:	e8 e5 d8 ff ff       	call   80103d89 <memset>
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
801064a4:	83 c4 10             	add    $0x10,%esp
801064a7:	bb 20 a4 10 80       	mov    $0x8010a420,%ebx
801064ac:	81 fb 60 a4 10 80    	cmp    $0x8010a460,%ebx
801064b2:	73 35                	jae    801064e9 <setupkvm+0x69>
                (uint)k->phys_start, k->perm) < 0) {
801064b4:	8b 43 04             	mov    0x4(%ebx),%eax
    if(mappages(pgdir, k->virt, k->phys_end - k->phys_start,
801064b7:	8b 4b 08             	mov    0x8(%ebx),%ecx
801064ba:	29 c1                	sub    %eax,%ecx
801064bc:	83 ec 08             	sub    $0x8,%esp
801064bf:	ff 73 0c             	pushl  0xc(%ebx)
801064c2:	50                   	push   %eax
801064c3:	8b 13                	mov    (%ebx),%edx
801064c5:	89 f0                	mov    %esi,%eax
801064c7:	e8 bd f9 ff ff       	call   80105e89 <mappages>
801064cc:	83 c4 10             	add    $0x10,%esp
801064cf:	85 c0                	test   %eax,%eax
801064d1:	78 05                	js     801064d8 <setupkvm+0x58>
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
801064d3:	83 c3 10             	add    $0x10,%ebx
801064d6:	eb d4                	jmp    801064ac <setupkvm+0x2c>
      freevm(pgdir);
801064d8:	83 ec 0c             	sub    $0xc,%esp
801064db:	56                   	push   %esi
801064dc:	e8 2b ff ff ff       	call   8010640c <freevm>
      return 0;
801064e1:	83 c4 10             	add    $0x10,%esp
801064e4:	be 00 00 00 00       	mov    $0x0,%esi
}
801064e9:	89 f0                	mov    %esi,%eax
801064eb:	8d 65 f8             	lea    -0x8(%ebp),%esp
801064ee:	5b                   	pop    %ebx
801064ef:	5e                   	pop    %esi
801064f0:	5d                   	pop    %ebp
801064f1:	c3                   	ret    

801064f2 <kvmalloc>:
{
801064f2:	f3 0f 1e fb          	endbr32 
801064f6:	55                   	push   %ebp
801064f7:	89 e5                	mov    %esp,%ebp
801064f9:	83 ec 08             	sub    $0x8,%esp
  kpgdir = setupkvm();
801064fc:	e8 7f ff ff ff       	call   80106480 <setupkvm>
80106501:	a3 a4 54 11 80       	mov    %eax,0x801154a4
  switchkvm();
80106506:	e8 44 fb ff ff       	call   8010604f <switchkvm>
}
8010650b:	c9                   	leave  
8010650c:	c3                   	ret    

8010650d <clearpteu>:

// Clear PTE_U on a page. Used to create an inaccessible
// page beneath the user stack.
void
clearpteu(pde_t *pgdir, char *uva)
{
8010650d:	f3 0f 1e fb          	endbr32 
80106511:	55                   	push   %ebp
80106512:	89 e5                	mov    %esp,%ebp
80106514:	83 ec 08             	sub    $0x8,%esp
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
80106517:	b9 00 00 00 00       	mov    $0x0,%ecx
8010651c:	8b 55 0c             	mov    0xc(%ebp),%edx
8010651f:	8b 45 08             	mov    0x8(%ebp),%eax
80106522:	e8 f1 f8 ff ff       	call   80105e18 <walkpgdir>
  if(pte == 0)
80106527:	85 c0                	test   %eax,%eax
80106529:	74 05                	je     80106530 <clearpteu+0x23>
    panic("clearpteu");
  *pte &= ~PTE_U;
8010652b:	83 20 fb             	andl   $0xfffffffb,(%eax)
}
8010652e:	c9                   	leave  
8010652f:	c3                   	ret    
    panic("clearpteu");
80106530:	83 ec 0c             	sub    $0xc,%esp
80106533:	68 72 70 10 80       	push   $0x80107072
80106538:	e8 1f 9e ff ff       	call   8010035c <panic>

8010653d <copyuvm>:

// Given a parent process's page table, create a copy
// of it for a child.
pde_t*
copyuvm(pde_t *pgdir, uint sz)
{
8010653d:	f3 0f 1e fb          	endbr32 
80106541:	55                   	push   %ebp
80106542:	89 e5                	mov    %esp,%ebp
80106544:	57                   	push   %edi
80106545:	56                   	push   %esi
80106546:	53                   	push   %ebx
80106547:	83 ec 1c             	sub    $0x1c,%esp
  pde_t *d;
  pte_t *pte;
  uint pa, i, flags;
  char *mem;

  if((d = setupkvm()) == 0)
8010654a:	e8 31 ff ff ff       	call   80106480 <setupkvm>
8010654f:	89 45 dc             	mov    %eax,-0x24(%ebp)
80106552:	85 c0                	test   %eax,%eax
80106554:	0f 84 c4 00 00 00    	je     8010661e <copyuvm+0xe1>
    return 0;
  for(i = 0; i < sz; i += PGSIZE){
8010655a:	bf 00 00 00 00       	mov    $0x0,%edi
8010655f:	3b 7d 0c             	cmp    0xc(%ebp),%edi
80106562:	0f 83 b6 00 00 00    	jae    8010661e <copyuvm+0xe1>
    if((pte = walkpgdir(pgdir, (void *) i, 0)) == 0)
80106568:	89 7d e4             	mov    %edi,-0x1c(%ebp)
8010656b:	b9 00 00 00 00       	mov    $0x0,%ecx
80106570:	89 fa                	mov    %edi,%edx
80106572:	8b 45 08             	mov    0x8(%ebp),%eax
80106575:	e8 9e f8 ff ff       	call   80105e18 <walkpgdir>
8010657a:	85 c0                	test   %eax,%eax
8010657c:	74 65                	je     801065e3 <copyuvm+0xa6>
      panic("copyuvm: pte should exist");
    if(!(*pte & PTE_P))
8010657e:	8b 00                	mov    (%eax),%eax
80106580:	a8 01                	test   $0x1,%al
80106582:	74 6c                	je     801065f0 <copyuvm+0xb3>
      panic("copyuvm: page not present");
    pa = PTE_ADDR(*pte);
80106584:	89 c6                	mov    %eax,%esi
80106586:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
    flags = PTE_FLAGS(*pte);
8010658c:	25 ff 0f 00 00       	and    $0xfff,%eax
80106591:	89 45 e0             	mov    %eax,-0x20(%ebp)
    if((mem = kalloc()) == 0)
80106594:	e8 d4 bb ff ff       	call   8010216d <kalloc>
80106599:	89 c3                	mov    %eax,%ebx
8010659b:	85 c0                	test   %eax,%eax
8010659d:	74 6a                	je     80106609 <copyuvm+0xcc>
      goto bad;
    memmove(mem, (char*)P2V(pa), PGSIZE);
8010659f:	81 c6 00 00 00 80    	add    $0x80000000,%esi
801065a5:	83 ec 04             	sub    $0x4,%esp
801065a8:	68 00 10 00 00       	push   $0x1000
801065ad:	56                   	push   %esi
801065ae:	50                   	push   %eax
801065af:	e8 55 d8 ff ff       	call   80103e09 <memmove>
    if(mappages(d, (void*)i, PGSIZE, V2P(mem), flags) < 0) {
801065b4:	83 c4 08             	add    $0x8,%esp
801065b7:	ff 75 e0             	pushl  -0x20(%ebp)
801065ba:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801065c0:	50                   	push   %eax
801065c1:	b9 00 10 00 00       	mov    $0x1000,%ecx
801065c6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801065c9:	8b 45 dc             	mov    -0x24(%ebp),%eax
801065cc:	e8 b8 f8 ff ff       	call   80105e89 <mappages>
801065d1:	83 c4 10             	add    $0x10,%esp
801065d4:	85 c0                	test   %eax,%eax
801065d6:	78 25                	js     801065fd <copyuvm+0xc0>
  for(i = 0; i < sz; i += PGSIZE){
801065d8:	81 c7 00 10 00 00    	add    $0x1000,%edi
801065de:	e9 7c ff ff ff       	jmp    8010655f <copyuvm+0x22>
      panic("copyuvm: pte should exist");
801065e3:	83 ec 0c             	sub    $0xc,%esp
801065e6:	68 7c 70 10 80       	push   $0x8010707c
801065eb:	e8 6c 9d ff ff       	call   8010035c <panic>
      panic("copyuvm: page not present");
801065f0:	83 ec 0c             	sub    $0xc,%esp
801065f3:	68 96 70 10 80       	push   $0x80107096
801065f8:	e8 5f 9d ff ff       	call   8010035c <panic>
      kfree(mem);
801065fd:	83 ec 0c             	sub    $0xc,%esp
80106600:	53                   	push   %ebx
80106601:	e8 40 ba ff ff       	call   80102046 <kfree>
      goto bad;
80106606:	83 c4 10             	add    $0x10,%esp
    }
  }
  return d;

bad:
  freevm(d);
80106609:	83 ec 0c             	sub    $0xc,%esp
8010660c:	ff 75 dc             	pushl  -0x24(%ebp)
8010660f:	e8 f8 fd ff ff       	call   8010640c <freevm>
  return 0;
80106614:	83 c4 10             	add    $0x10,%esp
80106617:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
}
8010661e:	8b 45 dc             	mov    -0x24(%ebp),%eax
80106621:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106624:	5b                   	pop    %ebx
80106625:	5e                   	pop    %esi
80106626:	5f                   	pop    %edi
80106627:	5d                   	pop    %ebp
80106628:	c3                   	ret    

80106629 <uva2ka>:

//PAGEBREAK!
// Map user virtual address to kernel address.
char*
uva2ka(pde_t *pgdir, char *uva)
{
80106629:	f3 0f 1e fb          	endbr32 
8010662d:	55                   	push   %ebp
8010662e:	89 e5                	mov    %esp,%ebp
80106630:	83 ec 08             	sub    $0x8,%esp
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
80106633:	b9 00 00 00 00       	mov    $0x0,%ecx
80106638:	8b 55 0c             	mov    0xc(%ebp),%edx
8010663b:	8b 45 08             	mov    0x8(%ebp),%eax
8010663e:	e8 d5 f7 ff ff       	call   80105e18 <walkpgdir>
  if((*pte & PTE_P) == 0)
80106643:	8b 00                	mov    (%eax),%eax
80106645:	a8 01                	test   $0x1,%al
80106647:	74 10                	je     80106659 <uva2ka+0x30>
    return 0;
  if((*pte & PTE_U) == 0)
80106649:	a8 04                	test   $0x4,%al
8010664b:	74 13                	je     80106660 <uva2ka+0x37>
    return 0;
  return (char*)P2V(PTE_ADDR(*pte));
8010664d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106652:	05 00 00 00 80       	add    $0x80000000,%eax
}
80106657:	c9                   	leave  
80106658:	c3                   	ret    
    return 0;
80106659:	b8 00 00 00 00       	mov    $0x0,%eax
8010665e:	eb f7                	jmp    80106657 <uva2ka+0x2e>
    return 0;
80106660:	b8 00 00 00 00       	mov    $0x0,%eax
80106665:	eb f0                	jmp    80106657 <uva2ka+0x2e>

80106667 <copyout>:
// Copy len bytes from p to user address va in page table pgdir.
// Most useful when pgdir is not the current page table.
// uva2ka ensures this only works for PTE_U pages.
int
copyout(pde_t *pgdir, uint va, void *p, uint len)
{
80106667:	f3 0f 1e fb          	endbr32 
8010666b:	55                   	push   %ebp
8010666c:	89 e5                	mov    %esp,%ebp
8010666e:	57                   	push   %edi
8010666f:	56                   	push   %esi
80106670:	53                   	push   %ebx
80106671:	83 ec 0c             	sub    $0xc,%esp
80106674:	8b 7d 14             	mov    0x14(%ebp),%edi
  char *buf, *pa0;
  uint n, va0;

  buf = (char*)p;
  while(len > 0){
80106677:	eb 25                	jmp    8010669e <copyout+0x37>
    if(pa0 == 0)
      return -1;
    n = PGSIZE - (va - va0);
    if(n > len)
      n = len;
    memmove(pa0 + (va - va0), buf, n);
80106679:	8b 55 0c             	mov    0xc(%ebp),%edx
8010667c:	29 f2                	sub    %esi,%edx
8010667e:	01 d0                	add    %edx,%eax
80106680:	83 ec 04             	sub    $0x4,%esp
80106683:	53                   	push   %ebx
80106684:	ff 75 10             	pushl  0x10(%ebp)
80106687:	50                   	push   %eax
80106688:	e8 7c d7 ff ff       	call   80103e09 <memmove>
    len -= n;
8010668d:	29 df                	sub    %ebx,%edi
    buf += n;
8010668f:	01 5d 10             	add    %ebx,0x10(%ebp)
    va = va0 + PGSIZE;
80106692:	8d 86 00 10 00 00    	lea    0x1000(%esi),%eax
80106698:	89 45 0c             	mov    %eax,0xc(%ebp)
8010669b:	83 c4 10             	add    $0x10,%esp
  while(len > 0){
8010669e:	85 ff                	test   %edi,%edi
801066a0:	74 2f                	je     801066d1 <copyout+0x6a>
    va0 = (uint)PGROUNDDOWN(va);
801066a2:	8b 75 0c             	mov    0xc(%ebp),%esi
801066a5:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
    pa0 = uva2ka(pgdir, (char*)va0);
801066ab:	83 ec 08             	sub    $0x8,%esp
801066ae:	56                   	push   %esi
801066af:	ff 75 08             	pushl  0x8(%ebp)
801066b2:	e8 72 ff ff ff       	call   80106629 <uva2ka>
    if(pa0 == 0)
801066b7:	83 c4 10             	add    $0x10,%esp
801066ba:	85 c0                	test   %eax,%eax
801066bc:	74 20                	je     801066de <copyout+0x77>
    n = PGSIZE - (va - va0);
801066be:	89 f3                	mov    %esi,%ebx
801066c0:	2b 5d 0c             	sub    0xc(%ebp),%ebx
801066c3:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    if(n > len)
801066c9:	39 df                	cmp    %ebx,%edi
801066cb:	73 ac                	jae    80106679 <copyout+0x12>
      n = len;
801066cd:	89 fb                	mov    %edi,%ebx
801066cf:	eb a8                	jmp    80106679 <copyout+0x12>
  }
  return 0;
801066d1:	b8 00 00 00 00       	mov    $0x0,%eax
}
801066d6:	8d 65 f4             	lea    -0xc(%ebp),%esp
801066d9:	5b                   	pop    %ebx
801066da:	5e                   	pop    %esi
801066db:	5f                   	pop    %edi
801066dc:	5d                   	pop    %ebp
801066dd:	c3                   	ret    
      return -1;
801066de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801066e3:	eb f1                	jmp    801066d6 <copyout+0x6f>
