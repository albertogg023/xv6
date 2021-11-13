
bootblock.o:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00007c00 <start>:
# with %cs=0 %ip=7c00.

.code16                       # Assemble for 16-bit mode
.globl start
start:
  cli                         # BIOS enabled interrupts; disable
    7c00:	fa                   	cli    

  # Zero data segment registers DS, ES, and SS.
  xorw    %ax,%ax             # Set %ax to zero
    7c01:	31 c0                	xor    %eax,%eax
  movw    %ax,%ds             # -> Data Segment
    7c03:	8e d8                	mov    %eax,%ds
  movw    %ax,%es             # -> Extra Segment
    7c05:	8e c0                	mov    %eax,%es
  movw    %ax,%ss             # -> Stack Segment
    7c07:	8e d0                	mov    %eax,%ss

00007c09 <seta20.1>:

  # Physical address line A20 is tied to zero so that the first PCs 
  # with 2 MB would run software that assumed 1 MB.  Undo that.
seta20.1:
  inb     $0x64,%al               # Wait for not busy
    7c09:	e4 64                	in     $0x64,%al
  testb   $0x2,%al
    7c0b:	a8 02                	test   $0x2,%al
  jnz     seta20.1
    7c0d:	75 fa                	jne    7c09 <seta20.1>

  movb    $0xd1,%al               # 0xd1 -> port 0x64
    7c0f:	b0 d1                	mov    $0xd1,%al
  outb    %al,$0x64
    7c11:	e6 64                	out    %al,$0x64

00007c13 <seta20.2>:

seta20.2:
  inb     $0x64,%al               # Wait for not busy
    7c13:	e4 64                	in     $0x64,%al
  testb   $0x2,%al
    7c15:	a8 02                	test   $0x2,%al
  jnz     seta20.2
    7c17:	75 fa                	jne    7c13 <seta20.2>

  movb    $0xdf,%al               # 0xdf -> port 0x60
    7c19:	b0 df                	mov    $0xdf,%al
  outb    %al,$0x60
    7c1b:	e6 60                	out    %al,$0x60

  # Switch from real to protected mode.  Use a bootstrap GDT that makes
  # virtual addresses map directly to physical addresses so that the
  # effective memory map doesn't change during the transition.
  lgdt    gdtdesc
    7c1d:	0f 01 16             	lgdtl  (%esi)
    7c20:	78 7c                	js     7c9e <readsect+0xe>
  movl    %cr0, %eax
    7c22:	0f 20 c0             	mov    %cr0,%eax
  orl     $CR0_PE, %eax
    7c25:	66 83 c8 01          	or     $0x1,%ax
  movl    %eax, %cr0
    7c29:	0f 22 c0             	mov    %eax,%cr0

//PAGEBREAK!
  # Complete the transition to 32-bit protected mode by using a long jmp
  # to reload %cs and %eip.  The segment descriptors are set up with no
  # translation, so that the mapping is still the identity mapping.
  ljmp    $(SEG_KCODE<<3), $start32
    7c2c:	ea                   	.byte 0xea
    7c2d:	31 7c 08 00          	xor    %edi,0x0(%eax,%ecx,1)

00007c31 <start32>:

.code32  # Tell assembler to generate 32-bit code now.
start32:
  # Set up the protected-mode data segment registers
  movw    $(SEG_KDATA<<3), %ax    # Our data segment selector
    7c31:	66 b8 10 00          	mov    $0x10,%ax
  movw    %ax, %ds                # -> DS: Data Segment
    7c35:	8e d8                	mov    %eax,%ds
  movw    %ax, %es                # -> ES: Extra Segment
    7c37:	8e c0                	mov    %eax,%es
  movw    %ax, %ss                # -> SS: Stack Segment
    7c39:	8e d0                	mov    %eax,%ss
  xor     %eax, %eax              # Zero segments not ready for use
    7c3b:	31 c0                	xor    %eax,%eax
  movw    %ax, %fs                # -> FS
    7c3d:	8e e0                	mov    %eax,%fs
  movw    %ax, %gs                # -> GS
    7c3f:	8e e8                	mov    %eax,%gs

  # Set up the stack pointer and call into C.
  movl    $start, %esp
    7c41:	bc 00 7c 00 00       	mov    $0x7c00,%esp
  call    bootmain
    7c46:	e8 f1 00 00 00       	call   7d3c <bootmain>

  # If bootmain returns (it shouldn't), trigger a Bochs
  # breakpoint if running under Bochs, then loop.
  movw    $0x8a00, %ax            # 0x8a00 -> port 0x8a00
    7c4b:	66 b8 00 8a          	mov    $0x8a00,%ax
  movw    %ax, %dx
    7c4f:	66 89 c2             	mov    %ax,%dx
  outw    %ax, %dx
    7c52:	66 ef                	out    %ax,(%dx)
  movw    $0x8ae0, %ax            # 0x8ae0 -> port 0x8a00
    7c54:	66 b8 e0 8a          	mov    $0x8ae0,%ax
  outw    %ax, %dx
    7c58:	66 ef                	out    %ax,(%dx)

00007c5a <spin>:
spin:
  jmp     spin
    7c5a:	eb fe                	jmp    7c5a <spin>
    7c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00007c60 <gdt>:
	...
    7c68:	ff                   	(bad)  
    7c69:	ff 00                	incl   (%eax)
    7c6b:	00 00                	add    %al,(%eax)
    7c6d:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
    7c74:	00                   	.byte 0x0
    7c75:	92                   	xchg   %eax,%edx
    7c76:	cf                   	iret   
	...

00007c78 <gdtdesc>:
    7c78:	17                   	pop    %ss
    7c79:	00 60 7c             	add    %ah,0x7c(%eax)
	...

00007c7e <waitdisk>:
  entry();
}

void
waitdisk(void)
{
    7c7e:	f3 0f 1e fb          	endbr32 
static inline uchar
inb(ushort port)
{
  uchar data;

  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
    7c82:	ba f7 01 00 00       	mov    $0x1f7,%edx
    7c87:	ec                   	in     (%dx),%al
  // Wait for disk ready.
  while((inb(0x1F7) & 0xC0) != 0x40)
    7c88:	83 e0 c0             	and    $0xffffffc0,%eax
    7c8b:	3c 40                	cmp    $0x40,%al
    7c8d:	75 f8                	jne    7c87 <waitdisk+0x9>
    ;
}
    7c8f:	c3                   	ret    

00007c90 <readsect>:

// Read a single sector at offset into dst.
void
readsect(void *dst, uint offset)
{
    7c90:	f3 0f 1e fb          	endbr32 
    7c94:	55                   	push   %ebp
    7c95:	89 e5                	mov    %esp,%ebp
    7c97:	57                   	push   %edi
    7c98:	50                   	push   %eax
    7c99:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  // Issue command.
  waitdisk();
    7c9c:	e8 dd ff ff ff       	call   7c7e <waitdisk>
}

static inline void
outb(ushort port, uchar data)
{
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
    7ca1:	b0 01                	mov    $0x1,%al
    7ca3:	ba f2 01 00 00       	mov    $0x1f2,%edx
    7ca8:	ee                   	out    %al,(%dx)
    7ca9:	ba f3 01 00 00       	mov    $0x1f3,%edx
    7cae:	89 c8                	mov    %ecx,%eax
    7cb0:	ee                   	out    %al,(%dx)
  outb(0x1F2, 1);   // count = 1
  outb(0x1F3, offset);
  outb(0x1F4, offset >> 8);
    7cb1:	89 c8                	mov    %ecx,%eax
    7cb3:	ba f4 01 00 00       	mov    $0x1f4,%edx
    7cb8:	c1 e8 08             	shr    $0x8,%eax
    7cbb:	ee                   	out    %al,(%dx)
  outb(0x1F5, offset >> 16);
    7cbc:	89 c8                	mov    %ecx,%eax
    7cbe:	ba f5 01 00 00       	mov    $0x1f5,%edx
    7cc3:	c1 e8 10             	shr    $0x10,%eax
    7cc6:	ee                   	out    %al,(%dx)
  outb(0x1F6, (offset >> 24) | 0xE0);
    7cc7:	89 c8                	mov    %ecx,%eax
    7cc9:	ba f6 01 00 00       	mov    $0x1f6,%edx
    7cce:	c1 e8 18             	shr    $0x18,%eax
    7cd1:	83 c8 e0             	or     $0xffffffe0,%eax
    7cd4:	ee                   	out    %al,(%dx)
    7cd5:	b0 20                	mov    $0x20,%al
    7cd7:	ba f7 01 00 00       	mov    $0x1f7,%edx
    7cdc:	ee                   	out    %al,(%dx)
  outb(0x1F7, 0x20);  // cmd 0x20 - read sectors

  // Read data.
  waitdisk();
    7cdd:	e8 9c ff ff ff       	call   7c7e <waitdisk>
  asm volatile("cld; rep insl" :
    7ce2:	8b 7d 08             	mov    0x8(%ebp),%edi
    7ce5:	b9 80 00 00 00       	mov    $0x80,%ecx
    7cea:	ba f0 01 00 00       	mov    $0x1f0,%edx
    7cef:	fc                   	cld    
    7cf0:	f3 6d                	rep insl (%dx),%es:(%edi)
  insl(0x1F0, dst, SECTSIZE/4);
}
    7cf2:	5a                   	pop    %edx
    7cf3:	5f                   	pop    %edi
    7cf4:	5d                   	pop    %ebp
    7cf5:	c3                   	ret    

00007cf6 <readseg>:

// Read 'count' bytes at 'offset' from kernel into physical address 'pa'.
// Might copy more than asked.
void
readseg(uchar* pa, uint count, uint offset)
{
    7cf6:	f3 0f 1e fb          	endbr32 
    7cfa:	55                   	push   %ebp
    7cfb:	89 e5                	mov    %esp,%ebp
    7cfd:	57                   	push   %edi
    7cfe:	56                   	push   %esi
    7cff:	53                   	push   %ebx
    7d00:	83 ec 0c             	sub    $0xc,%esp
    7d03:	8b 5d 10             	mov    0x10(%ebp),%ebx
    7d06:	8b 7d 08             	mov    0x8(%ebp),%edi
  uchar* epa;

  epa = pa + count;
    7d09:	8b 75 0c             	mov    0xc(%ebp),%esi

  // Round down to sector boundary.
  pa -= offset % SECTSIZE;
    7d0c:	89 d8                	mov    %ebx,%eax

  // Translate from bytes to sectors; kernel starts at sector 1.
  offset = (offset / SECTSIZE) + 1;
    7d0e:	c1 eb 09             	shr    $0x9,%ebx
  pa -= offset % SECTSIZE;
    7d11:	25 ff 01 00 00       	and    $0x1ff,%eax
  epa = pa + count;
    7d16:	01 fe                	add    %edi,%esi
  offset = (offset / SECTSIZE) + 1;
    7d18:	43                   	inc    %ebx
  pa -= offset % SECTSIZE;
    7d19:	29 c7                	sub    %eax,%edi

  // If this is too slow, we could read lots of sectors at a time.
  // We'd write more to memory than asked, but it doesn't matter --
  // we load in increasing order.
  for(; pa < epa; pa += SECTSIZE, offset++)
    7d1b:	39 f7                	cmp    %esi,%edi
    7d1d:	73 15                	jae    7d34 <readseg+0x3e>
    readsect(pa, offset);
    7d1f:	50                   	push   %eax
    7d20:	50                   	push   %eax
    7d21:	53                   	push   %ebx
  for(; pa < epa; pa += SECTSIZE, offset++)
    7d22:	43                   	inc    %ebx
    readsect(pa, offset);
    7d23:	57                   	push   %edi
  for(; pa < epa; pa += SECTSIZE, offset++)
    7d24:	81 c7 00 02 00 00    	add    $0x200,%edi
    readsect(pa, offset);
    7d2a:	e8 61 ff ff ff       	call   7c90 <readsect>
  for(; pa < epa; pa += SECTSIZE, offset++)
    7d2f:	83 c4 10             	add    $0x10,%esp
    7d32:	eb e7                	jmp    7d1b <readseg+0x25>
}
    7d34:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7d37:	5b                   	pop    %ebx
    7d38:	5e                   	pop    %esi
    7d39:	5f                   	pop    %edi
    7d3a:	5d                   	pop    %ebp
    7d3b:	c3                   	ret    

00007d3c <bootmain>:
{
    7d3c:	f3 0f 1e fb          	endbr32 
    7d40:	55                   	push   %ebp
    7d41:	89 e5                	mov    %esp,%ebp
    7d43:	57                   	push   %edi
    7d44:	56                   	push   %esi
    7d45:	53                   	push   %ebx
    7d46:	83 ec 10             	sub    $0x10,%esp
  readseg((uchar*)elf, 4096, 0);
    7d49:	6a 00                	push   $0x0
    7d4b:	68 00 10 00 00       	push   $0x1000
    7d50:	68 00 00 01 00       	push   $0x10000
    7d55:	e8 9c ff ff ff       	call   7cf6 <readseg>
  if(elf->magic != ELF_MAGIC)
    7d5a:	83 c4 10             	add    $0x10,%esp
    7d5d:	81 3d 00 00 01 00 7f 	cmpl   $0x464c457f,0x10000
    7d64:	45 4c 46 
    7d67:	75 53                	jne    7dbc <bootmain+0x80>
  ph = (struct proghdr*)((uchar*)elf + elf->phoff);
    7d69:	a1 1c 00 01 00       	mov    0x1001c,%eax
  eph = ph + elf->phnum;
    7d6e:	0f b7 35 2c 00 01 00 	movzwl 0x1002c,%esi
  ph = (struct proghdr*)((uchar*)elf + elf->phoff);
    7d75:	8d 98 00 00 01 00    	lea    0x10000(%eax),%ebx
  eph = ph + elf->phnum;
    7d7b:	c1 e6 05             	shl    $0x5,%esi
    7d7e:	01 de                	add    %ebx,%esi
  for(; ph < eph; ph++){
    7d80:	39 f3                	cmp    %esi,%ebx
    7d82:	73 2b                	jae    7daf <bootmain+0x73>
    pa = (uchar*)ph->paddr;
    7d84:	8b 7b 0c             	mov    0xc(%ebx),%edi
    readseg(pa, ph->filesz, ph->off);
    7d87:	50                   	push   %eax
    7d88:	ff 73 04             	pushl  0x4(%ebx)
    7d8b:	ff 73 10             	pushl  0x10(%ebx)
    7d8e:	57                   	push   %edi
    7d8f:	e8 62 ff ff ff       	call   7cf6 <readseg>
    if(ph->memsz > ph->filesz)
    7d94:	8b 4b 14             	mov    0x14(%ebx),%ecx
    7d97:	8b 43 10             	mov    0x10(%ebx),%eax
    7d9a:	83 c4 10             	add    $0x10,%esp
    7d9d:	39 c1                	cmp    %eax,%ecx
    7d9f:	76 09                	jbe    7daa <bootmain+0x6e>
      stosb(pa + ph->filesz, 0, ph->memsz - ph->filesz);
    7da1:	01 c7                	add    %eax,%edi
    7da3:	29 c1                	sub    %eax,%ecx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    7da5:	31 c0                	xor    %eax,%eax
    7da7:	fc                   	cld    
    7da8:	f3 aa                	rep stos %al,%es:(%edi)
  for(; ph < eph; ph++){
    7daa:	83 c3 20             	add    $0x20,%ebx
    7dad:	eb d1                	jmp    7d80 <bootmain+0x44>
}
    7daf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7db2:	5b                   	pop    %ebx
    7db3:	5e                   	pop    %esi
    7db4:	5f                   	pop    %edi
    7db5:	5d                   	pop    %ebp
  entry();
    7db6:	ff 25 18 00 01 00    	jmp    *0x10018
}
    7dbc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7dbf:	5b                   	pop    %ebx
    7dc0:	5e                   	pop    %esi
    7dc1:	5f                   	pop    %edi
    7dc2:	5d                   	pop    %ebp
    7dc3:	c3                   	ret    
