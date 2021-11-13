
_date:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	51                   	push   %ecx
  12:	83 ec 30             	sub    $0x30,%esp
  15:	8d 45 e0             	lea    -0x20(%ebp),%eax
  18:	50                   	push   %eax
  19:	e8 98 02 00 00       	call   0x2b6
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	74 14                	je     0x39
  25:	83 ec 08             	sub    $0x8,%esp
  28:	68 1c 06 00 00       	push   $0x61c
  2d:	6a 02                	push   $0x2
  2f:	e8 2b 03 00 00       	call   0x35f
  34:	e8 dd 01 00 00       	call   0x216
  39:	83 ec 0c             	sub    $0xc,%esp
  3c:	ff 75 f4             	pushl  -0xc(%ebp)
  3f:	ff 75 f0             	pushl  -0x10(%ebp)
  42:	ff 75 ec             	pushl  -0x14(%ebp)
  45:	68 2a 06 00 00       	push   $0x62a
  4a:	6a 01                	push   $0x1
  4c:	e8 0e 03 00 00       	call   0x35f
  51:	83 c4 20             	add    $0x20,%esp
  54:	e8 bd 01 00 00       	call   0x216
  59:	f3 0f 1e fb          	endbr32 
  5d:	55                   	push   %ebp
  5e:	89 e5                	mov    %esp,%ebp
  60:	56                   	push   %esi
  61:	53                   	push   %ebx
  62:	8b 75 08             	mov    0x8(%ebp),%esi
  65:	8b 55 0c             	mov    0xc(%ebp),%edx
  68:	89 f0                	mov    %esi,%eax
  6a:	89 d1                	mov    %edx,%ecx
  6c:	83 c2 01             	add    $0x1,%edx
  6f:	89 c3                	mov    %eax,%ebx
  71:	83 c0 01             	add    $0x1,%eax
  74:	0f b6 09             	movzbl (%ecx),%ecx
  77:	88 0b                	mov    %cl,(%ebx)
  79:	84 c9                	test   %cl,%cl
  7b:	75 ed                	jne    0x6a
  7d:	89 f0                	mov    %esi,%eax
  7f:	5b                   	pop    %ebx
  80:	5e                   	pop    %esi
  81:	5d                   	pop    %ebp
  82:	c3                   	ret    
  83:	f3 0f 1e fb          	endbr32 
  87:	55                   	push   %ebp
  88:	89 e5                	mov    %esp,%ebp
  8a:	8b 4d 08             	mov    0x8(%ebp),%ecx
  8d:	8b 55 0c             	mov    0xc(%ebp),%edx
  90:	0f b6 01             	movzbl (%ecx),%eax
  93:	84 c0                	test   %al,%al
  95:	74 0c                	je     0xa3
  97:	3a 02                	cmp    (%edx),%al
  99:	75 08                	jne    0xa3
  9b:	83 c1 01             	add    $0x1,%ecx
  9e:	83 c2 01             	add    $0x1,%edx
  a1:	eb ed                	jmp    0x90
  a3:	0f b6 c0             	movzbl %al,%eax
  a6:	0f b6 12             	movzbl (%edx),%edx
  a9:	29 d0                	sub    %edx,%eax
  ab:	5d                   	pop    %ebp
  ac:	c3                   	ret    
  ad:	f3 0f 1e fb          	endbr32 
  b1:	55                   	push   %ebp
  b2:	89 e5                	mov    %esp,%ebp
  b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b7:	b8 00 00 00 00       	mov    $0x0,%eax
  bc:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  c0:	74 05                	je     0xc7
  c2:	83 c0 01             	add    $0x1,%eax
  c5:	eb f5                	jmp    0xbc
  c7:	5d                   	pop    %ebp
  c8:	c3                   	ret    
  c9:	f3 0f 1e fb          	endbr32 
  cd:	55                   	push   %ebp
  ce:	89 e5                	mov    %esp,%ebp
  d0:	57                   	push   %edi
  d1:	8b 55 08             	mov    0x8(%ebp),%edx
  d4:	89 d7                	mov    %edx,%edi
  d6:	8b 4d 10             	mov    0x10(%ebp),%ecx
  d9:	8b 45 0c             	mov    0xc(%ebp),%eax
  dc:	fc                   	cld    
  dd:	f3 aa                	rep stos %al,%es:(%edi)
  df:	89 d0                	mov    %edx,%eax
  e1:	5f                   	pop    %edi
  e2:	5d                   	pop    %ebp
  e3:	c3                   	ret    
  e4:	f3 0f 1e fb          	endbr32 
  e8:	55                   	push   %ebp
  e9:	89 e5                	mov    %esp,%ebp
  eb:	8b 45 08             	mov    0x8(%ebp),%eax
  ee:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  f2:	0f b6 10             	movzbl (%eax),%edx
  f5:	84 d2                	test   %dl,%dl
  f7:	74 09                	je     0x102
  f9:	38 ca                	cmp    %cl,%dl
  fb:	74 0a                	je     0x107
  fd:	83 c0 01             	add    $0x1,%eax
 100:	eb f0                	jmp    0xf2
 102:	b8 00 00 00 00       	mov    $0x0,%eax
 107:	5d                   	pop    %ebp
 108:	c3                   	ret    
 109:	f3 0f 1e fb          	endbr32 
 10d:	55                   	push   %ebp
 10e:	89 e5                	mov    %esp,%ebp
 110:	57                   	push   %edi
 111:	56                   	push   %esi
 112:	53                   	push   %ebx
 113:	83 ec 1c             	sub    $0x1c,%esp
 116:	8b 7d 08             	mov    0x8(%ebp),%edi
 119:	bb 00 00 00 00       	mov    $0x0,%ebx
 11e:	89 de                	mov    %ebx,%esi
 120:	83 c3 01             	add    $0x1,%ebx
 123:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 126:	7d 2e                	jge    0x156
 128:	83 ec 04             	sub    $0x4,%esp
 12b:	6a 01                	push   $0x1
 12d:	8d 45 e7             	lea    -0x19(%ebp),%eax
 130:	50                   	push   %eax
 131:	6a 00                	push   $0x0
 133:	e8 f6 00 00 00       	call   0x22e
 138:	83 c4 10             	add    $0x10,%esp
 13b:	85 c0                	test   %eax,%eax
 13d:	7e 17                	jle    0x156
 13f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 143:	88 04 37             	mov    %al,(%edi,%esi,1)
 146:	3c 0a                	cmp    $0xa,%al
 148:	0f 94 c2             	sete   %dl
 14b:	3c 0d                	cmp    $0xd,%al
 14d:	0f 94 c0             	sete   %al
 150:	08 c2                	or     %al,%dl
 152:	74 ca                	je     0x11e
 154:	89 de                	mov    %ebx,%esi
 156:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 15a:	89 f8                	mov    %edi,%eax
 15c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 15f:	5b                   	pop    %ebx
 160:	5e                   	pop    %esi
 161:	5f                   	pop    %edi
 162:	5d                   	pop    %ebp
 163:	c3                   	ret    
 164:	f3 0f 1e fb          	endbr32 
 168:	55                   	push   %ebp
 169:	89 e5                	mov    %esp,%ebp
 16b:	56                   	push   %esi
 16c:	53                   	push   %ebx
 16d:	83 ec 08             	sub    $0x8,%esp
 170:	6a 00                	push   $0x0
 172:	ff 75 08             	pushl  0x8(%ebp)
 175:	e8 dc 00 00 00       	call   0x256
 17a:	83 c4 10             	add    $0x10,%esp
 17d:	85 c0                	test   %eax,%eax
 17f:	78 24                	js     0x1a5
 181:	89 c3                	mov    %eax,%ebx
 183:	83 ec 08             	sub    $0x8,%esp
 186:	ff 75 0c             	pushl  0xc(%ebp)
 189:	50                   	push   %eax
 18a:	e8 df 00 00 00       	call   0x26e
 18f:	89 c6                	mov    %eax,%esi
 191:	89 1c 24             	mov    %ebx,(%esp)
 194:	e8 a5 00 00 00       	call   0x23e
 199:	83 c4 10             	add    $0x10,%esp
 19c:	89 f0                	mov    %esi,%eax
 19e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1a1:	5b                   	pop    %ebx
 1a2:	5e                   	pop    %esi
 1a3:	5d                   	pop    %ebp
 1a4:	c3                   	ret    
 1a5:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1aa:	eb f0                	jmp    0x19c
 1ac:	f3 0f 1e fb          	endbr32 
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b7:	ba 00 00 00 00       	mov    $0x0,%edx
 1bc:	0f b6 01             	movzbl (%ecx),%eax
 1bf:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1c2:	80 fb 09             	cmp    $0x9,%bl
 1c5:	77 12                	ja     0x1d9
 1c7:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1ca:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1cd:	83 c1 01             	add    $0x1,%ecx
 1d0:	0f be c0             	movsbl %al,%eax
 1d3:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1d7:	eb e3                	jmp    0x1bc
 1d9:	89 d0                	mov    %edx,%eax
 1db:	5b                   	pop    %ebx
 1dc:	5d                   	pop    %ebp
 1dd:	c3                   	ret    
 1de:	f3 0f 1e fb          	endbr32 
 1e2:	55                   	push   %ebp
 1e3:	89 e5                	mov    %esp,%ebp
 1e5:	56                   	push   %esi
 1e6:	53                   	push   %ebx
 1e7:	8b 75 08             	mov    0x8(%ebp),%esi
 1ea:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1ed:	8b 45 10             	mov    0x10(%ebp),%eax
 1f0:	89 f2                	mov    %esi,%edx
 1f2:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1f5:	85 c0                	test   %eax,%eax
 1f7:	7e 0f                	jle    0x208
 1f9:	0f b6 01             	movzbl (%ecx),%eax
 1fc:	88 02                	mov    %al,(%edx)
 1fe:	8d 49 01             	lea    0x1(%ecx),%ecx
 201:	8d 52 01             	lea    0x1(%edx),%edx
 204:	89 d8                	mov    %ebx,%eax
 206:	eb ea                	jmp    0x1f2
 208:	89 f0                	mov    %esi,%eax
 20a:	5b                   	pop    %ebx
 20b:	5e                   	pop    %esi
 20c:	5d                   	pop    %ebp
 20d:	c3                   	ret    
 20e:	b8 01 00 00 00       	mov    $0x1,%eax
 213:	cd 40                	int    $0x40
 215:	c3                   	ret    
 216:	b8 02 00 00 00       	mov    $0x2,%eax
 21b:	cd 40                	int    $0x40
 21d:	c3                   	ret    
 21e:	b8 03 00 00 00       	mov    $0x3,%eax
 223:	cd 40                	int    $0x40
 225:	c3                   	ret    
 226:	b8 04 00 00 00       	mov    $0x4,%eax
 22b:	cd 40                	int    $0x40
 22d:	c3                   	ret    
 22e:	b8 05 00 00 00       	mov    $0x5,%eax
 233:	cd 40                	int    $0x40
 235:	c3                   	ret    
 236:	b8 10 00 00 00       	mov    $0x10,%eax
 23b:	cd 40                	int    $0x40
 23d:	c3                   	ret    
 23e:	b8 15 00 00 00       	mov    $0x15,%eax
 243:	cd 40                	int    $0x40
 245:	c3                   	ret    
 246:	b8 06 00 00 00       	mov    $0x6,%eax
 24b:	cd 40                	int    $0x40
 24d:	c3                   	ret    
 24e:	b8 07 00 00 00       	mov    $0x7,%eax
 253:	cd 40                	int    $0x40
 255:	c3                   	ret    
 256:	b8 0f 00 00 00       	mov    $0xf,%eax
 25b:	cd 40                	int    $0x40
 25d:	c3                   	ret    
 25e:	b8 11 00 00 00       	mov    $0x11,%eax
 263:	cd 40                	int    $0x40
 265:	c3                   	ret    
 266:	b8 12 00 00 00       	mov    $0x12,%eax
 26b:	cd 40                	int    $0x40
 26d:	c3                   	ret    
 26e:	b8 08 00 00 00       	mov    $0x8,%eax
 273:	cd 40                	int    $0x40
 275:	c3                   	ret    
 276:	b8 13 00 00 00       	mov    $0x13,%eax
 27b:	cd 40                	int    $0x40
 27d:	c3                   	ret    
 27e:	b8 14 00 00 00       	mov    $0x14,%eax
 283:	cd 40                	int    $0x40
 285:	c3                   	ret    
 286:	b8 09 00 00 00       	mov    $0x9,%eax
 28b:	cd 40                	int    $0x40
 28d:	c3                   	ret    
 28e:	b8 0a 00 00 00       	mov    $0xa,%eax
 293:	cd 40                	int    $0x40
 295:	c3                   	ret    
 296:	b8 0b 00 00 00       	mov    $0xb,%eax
 29b:	cd 40                	int    $0x40
 29d:	c3                   	ret    
 29e:	b8 0c 00 00 00       	mov    $0xc,%eax
 2a3:	cd 40                	int    $0x40
 2a5:	c3                   	ret    
 2a6:	b8 0d 00 00 00       	mov    $0xd,%eax
 2ab:	cd 40                	int    $0x40
 2ad:	c3                   	ret    
 2ae:	b8 0e 00 00 00       	mov    $0xe,%eax
 2b3:	cd 40                	int    $0x40
 2b5:	c3                   	ret    
 2b6:	b8 16 00 00 00       	mov    $0x16,%eax
 2bb:	cd 40                	int    $0x40
 2bd:	c3                   	ret    
 2be:	55                   	push   %ebp
 2bf:	89 e5                	mov    %esp,%ebp
 2c1:	83 ec 1c             	sub    $0x1c,%esp
 2c4:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2c7:	6a 01                	push   $0x1
 2c9:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2cc:	52                   	push   %edx
 2cd:	50                   	push   %eax
 2ce:	e8 63 ff ff ff       	call   0x236
 2d3:	83 c4 10             	add    $0x10,%esp
 2d6:	c9                   	leave  
 2d7:	c3                   	ret    
 2d8:	55                   	push   %ebp
 2d9:	89 e5                	mov    %esp,%ebp
 2db:	57                   	push   %edi
 2dc:	56                   	push   %esi
 2dd:	53                   	push   %ebx
 2de:	83 ec 2c             	sub    $0x2c,%esp
 2e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2e4:	89 d6                	mov    %edx,%esi
 2e6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2ea:	0f 95 c2             	setne  %dl
 2ed:	89 f0                	mov    %esi,%eax
 2ef:	c1 e8 1f             	shr    $0x1f,%eax
 2f2:	84 c2                	test   %al,%dl
 2f4:	74 42                	je     0x338
 2f6:	f7 de                	neg    %esi
 2f8:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2ff:	bb 00 00 00 00       	mov    $0x0,%ebx
 304:	89 f0                	mov    %esi,%eax
 306:	ba 00 00 00 00       	mov    $0x0,%edx
 30b:	f7 f1                	div    %ecx
 30d:	89 df                	mov    %ebx,%edi
 30f:	83 c3 01             	add    $0x1,%ebx
 312:	0f b6 92 3c 06 00 00 	movzbl 0x63c(%edx),%edx
 319:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 31d:	89 f2                	mov    %esi,%edx
 31f:	89 c6                	mov    %eax,%esi
 321:	39 d1                	cmp    %edx,%ecx
 323:	76 df                	jbe    0x304
 325:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 329:	74 2f                	je     0x35a
 32b:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 330:	8d 5f 02             	lea    0x2(%edi),%ebx
 333:	8b 75 d0             	mov    -0x30(%ebp),%esi
 336:	eb 15                	jmp    0x34d
 338:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 33f:	eb be                	jmp    0x2ff
 341:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 346:	89 f0                	mov    %esi,%eax
 348:	e8 71 ff ff ff       	call   0x2be
 34d:	83 eb 01             	sub    $0x1,%ebx
 350:	79 ef                	jns    0x341
 352:	83 c4 2c             	add    $0x2c,%esp
 355:	5b                   	pop    %ebx
 356:	5e                   	pop    %esi
 357:	5f                   	pop    %edi
 358:	5d                   	pop    %ebp
 359:	c3                   	ret    
 35a:	8b 75 d0             	mov    -0x30(%ebp),%esi
 35d:	eb ee                	jmp    0x34d
 35f:	f3 0f 1e fb          	endbr32 
 363:	55                   	push   %ebp
 364:	89 e5                	mov    %esp,%ebp
 366:	57                   	push   %edi
 367:	56                   	push   %esi
 368:	53                   	push   %ebx
 369:	83 ec 1c             	sub    $0x1c,%esp
 36c:	8d 45 10             	lea    0x10(%ebp),%eax
 36f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 372:	be 00 00 00 00       	mov    $0x0,%esi
 377:	bb 00 00 00 00       	mov    $0x0,%ebx
 37c:	eb 14                	jmp    0x392
 37e:	89 fa                	mov    %edi,%edx
 380:	8b 45 08             	mov    0x8(%ebp),%eax
 383:	e8 36 ff ff ff       	call   0x2be
 388:	eb 05                	jmp    0x38f
 38a:	83 fe 25             	cmp    $0x25,%esi
 38d:	74 25                	je     0x3b4
 38f:	83 c3 01             	add    $0x1,%ebx
 392:	8b 45 0c             	mov    0xc(%ebp),%eax
 395:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 399:	84 c0                	test   %al,%al
 39b:	0f 84 23 01 00 00    	je     0x4c4
 3a1:	0f be f8             	movsbl %al,%edi
 3a4:	0f b6 c0             	movzbl %al,%eax
 3a7:	85 f6                	test   %esi,%esi
 3a9:	75 df                	jne    0x38a
 3ab:	83 f8 25             	cmp    $0x25,%eax
 3ae:	75 ce                	jne    0x37e
 3b0:	89 c6                	mov    %eax,%esi
 3b2:	eb db                	jmp    0x38f
 3b4:	83 f8 64             	cmp    $0x64,%eax
 3b7:	74 49                	je     0x402
 3b9:	83 f8 78             	cmp    $0x78,%eax
 3bc:	0f 94 c1             	sete   %cl
 3bf:	83 f8 70             	cmp    $0x70,%eax
 3c2:	0f 94 c2             	sete   %dl
 3c5:	08 d1                	or     %dl,%cl
 3c7:	75 63                	jne    0x42c
 3c9:	83 f8 73             	cmp    $0x73,%eax
 3cc:	0f 84 84 00 00 00    	je     0x456
 3d2:	83 f8 63             	cmp    $0x63,%eax
 3d5:	0f 84 b7 00 00 00    	je     0x492
 3db:	83 f8 25             	cmp    $0x25,%eax
 3de:	0f 84 cc 00 00 00    	je     0x4b0
 3e4:	ba 25 00 00 00       	mov    $0x25,%edx
 3e9:	8b 45 08             	mov    0x8(%ebp),%eax
 3ec:	e8 cd fe ff ff       	call   0x2be
 3f1:	89 fa                	mov    %edi,%edx
 3f3:	8b 45 08             	mov    0x8(%ebp),%eax
 3f6:	e8 c3 fe ff ff       	call   0x2be
 3fb:	be 00 00 00 00       	mov    $0x0,%esi
 400:	eb 8d                	jmp    0x38f
 402:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 405:	8b 17                	mov    (%edi),%edx
 407:	83 ec 0c             	sub    $0xc,%esp
 40a:	6a 01                	push   $0x1
 40c:	b9 0a 00 00 00       	mov    $0xa,%ecx
 411:	8b 45 08             	mov    0x8(%ebp),%eax
 414:	e8 bf fe ff ff       	call   0x2d8
 419:	83 c7 04             	add    $0x4,%edi
 41c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 41f:	83 c4 10             	add    $0x10,%esp
 422:	be 00 00 00 00       	mov    $0x0,%esi
 427:	e9 63 ff ff ff       	jmp    0x38f
 42c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 42f:	8b 17                	mov    (%edi),%edx
 431:	83 ec 0c             	sub    $0xc,%esp
 434:	6a 00                	push   $0x0
 436:	b9 10 00 00 00       	mov    $0x10,%ecx
 43b:	8b 45 08             	mov    0x8(%ebp),%eax
 43e:	e8 95 fe ff ff       	call   0x2d8
 443:	83 c7 04             	add    $0x4,%edi
 446:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 449:	83 c4 10             	add    $0x10,%esp
 44c:	be 00 00 00 00       	mov    $0x0,%esi
 451:	e9 39 ff ff ff       	jmp    0x38f
 456:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 459:	8b 30                	mov    (%eax),%esi
 45b:	83 c0 04             	add    $0x4,%eax
 45e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 461:	85 f6                	test   %esi,%esi
 463:	75 28                	jne    0x48d
 465:	be 33 06 00 00       	mov    $0x633,%esi
 46a:	8b 7d 08             	mov    0x8(%ebp),%edi
 46d:	eb 0d                	jmp    0x47c
 46f:	0f be d2             	movsbl %dl,%edx
 472:	89 f8                	mov    %edi,%eax
 474:	e8 45 fe ff ff       	call   0x2be
 479:	83 c6 01             	add    $0x1,%esi
 47c:	0f b6 16             	movzbl (%esi),%edx
 47f:	84 d2                	test   %dl,%dl
 481:	75 ec                	jne    0x46f
 483:	be 00 00 00 00       	mov    $0x0,%esi
 488:	e9 02 ff ff ff       	jmp    0x38f
 48d:	8b 7d 08             	mov    0x8(%ebp),%edi
 490:	eb ea                	jmp    0x47c
 492:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 495:	0f be 17             	movsbl (%edi),%edx
 498:	8b 45 08             	mov    0x8(%ebp),%eax
 49b:	e8 1e fe ff ff       	call   0x2be
 4a0:	83 c7 04             	add    $0x4,%edi
 4a3:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4a6:	be 00 00 00 00       	mov    $0x0,%esi
 4ab:	e9 df fe ff ff       	jmp    0x38f
 4b0:	89 fa                	mov    %edi,%edx
 4b2:	8b 45 08             	mov    0x8(%ebp),%eax
 4b5:	e8 04 fe ff ff       	call   0x2be
 4ba:	be 00 00 00 00       	mov    $0x0,%esi
 4bf:	e9 cb fe ff ff       	jmp    0x38f
 4c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4c7:	5b                   	pop    %ebx
 4c8:	5e                   	pop    %esi
 4c9:	5f                   	pop    %edi
 4ca:	5d                   	pop    %ebp
 4cb:	c3                   	ret    
 4cc:	f3 0f 1e fb          	endbr32 
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
 4d5:	53                   	push   %ebx
 4d6:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4d9:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4dc:	a1 dc 08 00 00       	mov    0x8dc,%eax
 4e1:	eb 02                	jmp    0x4e5
 4e3:	89 d0                	mov    %edx,%eax
 4e5:	39 c8                	cmp    %ecx,%eax
 4e7:	73 04                	jae    0x4ed
 4e9:	39 08                	cmp    %ecx,(%eax)
 4eb:	77 12                	ja     0x4ff
 4ed:	8b 10                	mov    (%eax),%edx
 4ef:	39 c2                	cmp    %eax,%edx
 4f1:	77 f0                	ja     0x4e3
 4f3:	39 c8                	cmp    %ecx,%eax
 4f5:	72 08                	jb     0x4ff
 4f7:	39 ca                	cmp    %ecx,%edx
 4f9:	77 04                	ja     0x4ff
 4fb:	89 d0                	mov    %edx,%eax
 4fd:	eb e6                	jmp    0x4e5
 4ff:	8b 73 fc             	mov    -0x4(%ebx),%esi
 502:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 505:	8b 10                	mov    (%eax),%edx
 507:	39 d7                	cmp    %edx,%edi
 509:	74 19                	je     0x524
 50b:	89 53 f8             	mov    %edx,-0x8(%ebx)
 50e:	8b 50 04             	mov    0x4(%eax),%edx
 511:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 514:	39 ce                	cmp    %ecx,%esi
 516:	74 1b                	je     0x533
 518:	89 08                	mov    %ecx,(%eax)
 51a:	a3 dc 08 00 00       	mov    %eax,0x8dc
 51f:	5b                   	pop    %ebx
 520:	5e                   	pop    %esi
 521:	5f                   	pop    %edi
 522:	5d                   	pop    %ebp
 523:	c3                   	ret    
 524:	03 72 04             	add    0x4(%edx),%esi
 527:	89 73 fc             	mov    %esi,-0x4(%ebx)
 52a:	8b 10                	mov    (%eax),%edx
 52c:	8b 12                	mov    (%edx),%edx
 52e:	89 53 f8             	mov    %edx,-0x8(%ebx)
 531:	eb db                	jmp    0x50e
 533:	03 53 fc             	add    -0x4(%ebx),%edx
 536:	89 50 04             	mov    %edx,0x4(%eax)
 539:	8b 53 f8             	mov    -0x8(%ebx),%edx
 53c:	89 10                	mov    %edx,(%eax)
 53e:	eb da                	jmp    0x51a
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	83 ec 04             	sub    $0x4,%esp
 547:	89 c3                	mov    %eax,%ebx
 549:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 54e:	77 05                	ja     0x555
 550:	bb 00 10 00 00       	mov    $0x1000,%ebx
 555:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 55c:	83 ec 0c             	sub    $0xc,%esp
 55f:	50                   	push   %eax
 560:	e8 39 fd ff ff       	call   0x29e
 565:	83 c4 10             	add    $0x10,%esp
 568:	83 f8 ff             	cmp    $0xffffffff,%eax
 56b:	74 1c                	je     0x589
 56d:	89 58 04             	mov    %ebx,0x4(%eax)
 570:	83 c0 08             	add    $0x8,%eax
 573:	83 ec 0c             	sub    $0xc,%esp
 576:	50                   	push   %eax
 577:	e8 50 ff ff ff       	call   0x4cc
 57c:	a1 dc 08 00 00       	mov    0x8dc,%eax
 581:	83 c4 10             	add    $0x10,%esp
 584:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 587:	c9                   	leave  
 588:	c3                   	ret    
 589:	b8 00 00 00 00       	mov    $0x0,%eax
 58e:	eb f4                	jmp    0x584
 590:	f3 0f 1e fb          	endbr32 
 594:	55                   	push   %ebp
 595:	89 e5                	mov    %esp,%ebp
 597:	53                   	push   %ebx
 598:	83 ec 04             	sub    $0x4,%esp
 59b:	8b 45 08             	mov    0x8(%ebp),%eax
 59e:	8d 58 07             	lea    0x7(%eax),%ebx
 5a1:	c1 eb 03             	shr    $0x3,%ebx
 5a4:	83 c3 01             	add    $0x1,%ebx
 5a7:	8b 0d dc 08 00 00    	mov    0x8dc,%ecx
 5ad:	85 c9                	test   %ecx,%ecx
 5af:	74 04                	je     0x5b5
 5b1:	8b 01                	mov    (%ecx),%eax
 5b3:	eb 4b                	jmp    0x600
 5b5:	c7 05 dc 08 00 00 e0 	movl   $0x8e0,0x8dc
 5bc:	08 00 00 
 5bf:	c7 05 e0 08 00 00 e0 	movl   $0x8e0,0x8e0
 5c6:	08 00 00 
 5c9:	c7 05 e4 08 00 00 00 	movl   $0x0,0x8e4
 5d0:	00 00 00 
 5d3:	b9 e0 08 00 00       	mov    $0x8e0,%ecx
 5d8:	eb d7                	jmp    0x5b1
 5da:	74 1a                	je     0x5f6
 5dc:	29 da                	sub    %ebx,%edx
 5de:	89 50 04             	mov    %edx,0x4(%eax)
 5e1:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5e4:	89 58 04             	mov    %ebx,0x4(%eax)
 5e7:	89 0d dc 08 00 00    	mov    %ecx,0x8dc
 5ed:	83 c0 08             	add    $0x8,%eax
 5f0:	83 c4 04             	add    $0x4,%esp
 5f3:	5b                   	pop    %ebx
 5f4:	5d                   	pop    %ebp
 5f5:	c3                   	ret    
 5f6:	8b 10                	mov    (%eax),%edx
 5f8:	89 11                	mov    %edx,(%ecx)
 5fa:	eb eb                	jmp    0x5e7
 5fc:	89 c1                	mov    %eax,%ecx
 5fe:	8b 00                	mov    (%eax),%eax
 600:	8b 50 04             	mov    0x4(%eax),%edx
 603:	39 da                	cmp    %ebx,%edx
 605:	73 d3                	jae    0x5da
 607:	39 05 dc 08 00 00    	cmp    %eax,0x8dc
 60d:	75 ed                	jne    0x5fc
 60f:	89 d8                	mov    %ebx,%eax
 611:	e8 2a ff ff ff       	call   0x540
 616:	85 c0                	test   %eax,%eax
 618:	75 e2                	jne    0x5fc
 61a:	eb d4                	jmp    0x5f0
