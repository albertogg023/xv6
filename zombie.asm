
_zombie:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	51                   	push   %ecx
  12:	83 ec 04             	sub    $0x4,%esp
  15:	e8 cd 01 00 00       	call   0x1e7
  1a:	85 c0                	test   %eax,%eax
  1c:	7f 05                	jg     0x23
  1e:	e8 cc 01 00 00       	call   0x1ef
  23:	83 ec 0c             	sub    $0xc,%esp
  26:	6a 05                	push   $0x5
  28:	e8 52 02 00 00       	call   0x27f
  2d:	83 c4 10             	add    $0x10,%esp
  30:	eb ec                	jmp    0x1e
  32:	f3 0f 1e fb          	endbr32 
  36:	55                   	push   %ebp
  37:	89 e5                	mov    %esp,%ebp
  39:	56                   	push   %esi
  3a:	53                   	push   %ebx
  3b:	8b 75 08             	mov    0x8(%ebp),%esi
  3e:	8b 55 0c             	mov    0xc(%ebp),%edx
  41:	89 f0                	mov    %esi,%eax
  43:	89 d1                	mov    %edx,%ecx
  45:	83 c2 01             	add    $0x1,%edx
  48:	89 c3                	mov    %eax,%ebx
  4a:	83 c0 01             	add    $0x1,%eax
  4d:	0f b6 09             	movzbl (%ecx),%ecx
  50:	88 0b                	mov    %cl,(%ebx)
  52:	84 c9                	test   %cl,%cl
  54:	75 ed                	jne    0x43
  56:	89 f0                	mov    %esi,%eax
  58:	5b                   	pop    %ebx
  59:	5e                   	pop    %esi
  5a:	5d                   	pop    %ebp
  5b:	c3                   	ret    
  5c:	f3 0f 1e fb          	endbr32 
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	8b 4d 08             	mov    0x8(%ebp),%ecx
  66:	8b 55 0c             	mov    0xc(%ebp),%edx
  69:	0f b6 01             	movzbl (%ecx),%eax
  6c:	84 c0                	test   %al,%al
  6e:	74 0c                	je     0x7c
  70:	3a 02                	cmp    (%edx),%al
  72:	75 08                	jne    0x7c
  74:	83 c1 01             	add    $0x1,%ecx
  77:	83 c2 01             	add    $0x1,%edx
  7a:	eb ed                	jmp    0x69
  7c:	0f b6 c0             	movzbl %al,%eax
  7f:	0f b6 12             	movzbl (%edx),%edx
  82:	29 d0                	sub    %edx,%eax
  84:	5d                   	pop    %ebp
  85:	c3                   	ret    
  86:	f3 0f 1e fb          	endbr32 
  8a:	55                   	push   %ebp
  8b:	89 e5                	mov    %esp,%ebp
  8d:	8b 4d 08             	mov    0x8(%ebp),%ecx
  90:	b8 00 00 00 00       	mov    $0x0,%eax
  95:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  99:	74 05                	je     0xa0
  9b:	83 c0 01             	add    $0x1,%eax
  9e:	eb f5                	jmp    0x95
  a0:	5d                   	pop    %ebp
  a1:	c3                   	ret    
  a2:	f3 0f 1e fb          	endbr32 
  a6:	55                   	push   %ebp
  a7:	89 e5                	mov    %esp,%ebp
  a9:	57                   	push   %edi
  aa:	8b 55 08             	mov    0x8(%ebp),%edx
  ad:	89 d7                	mov    %edx,%edi
  af:	8b 4d 10             	mov    0x10(%ebp),%ecx
  b2:	8b 45 0c             	mov    0xc(%ebp),%eax
  b5:	fc                   	cld    
  b6:	f3 aa                	rep stos %al,%es:(%edi)
  b8:	89 d0                	mov    %edx,%eax
  ba:	5f                   	pop    %edi
  bb:	5d                   	pop    %ebp
  bc:	c3                   	ret    
  bd:	f3 0f 1e fb          	endbr32 
  c1:	55                   	push   %ebp
  c2:	89 e5                	mov    %esp,%ebp
  c4:	8b 45 08             	mov    0x8(%ebp),%eax
  c7:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  cb:	0f b6 10             	movzbl (%eax),%edx
  ce:	84 d2                	test   %dl,%dl
  d0:	74 09                	je     0xdb
  d2:	38 ca                	cmp    %cl,%dl
  d4:	74 0a                	je     0xe0
  d6:	83 c0 01             	add    $0x1,%eax
  d9:	eb f0                	jmp    0xcb
  db:	b8 00 00 00 00       	mov    $0x0,%eax
  e0:	5d                   	pop    %ebp
  e1:	c3                   	ret    
  e2:	f3 0f 1e fb          	endbr32 
  e6:	55                   	push   %ebp
  e7:	89 e5                	mov    %esp,%ebp
  e9:	57                   	push   %edi
  ea:	56                   	push   %esi
  eb:	53                   	push   %ebx
  ec:	83 ec 1c             	sub    $0x1c,%esp
  ef:	8b 7d 08             	mov    0x8(%ebp),%edi
  f2:	bb 00 00 00 00       	mov    $0x0,%ebx
  f7:	89 de                	mov    %ebx,%esi
  f9:	83 c3 01             	add    $0x1,%ebx
  fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
  ff:	7d 2e                	jge    0x12f
 101:	83 ec 04             	sub    $0x4,%esp
 104:	6a 01                	push   $0x1
 106:	8d 45 e7             	lea    -0x19(%ebp),%eax
 109:	50                   	push   %eax
 10a:	6a 00                	push   $0x0
 10c:	e8 f6 00 00 00       	call   0x207
 111:	83 c4 10             	add    $0x10,%esp
 114:	85 c0                	test   %eax,%eax
 116:	7e 17                	jle    0x12f
 118:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 11c:	88 04 37             	mov    %al,(%edi,%esi,1)
 11f:	3c 0a                	cmp    $0xa,%al
 121:	0f 94 c2             	sete   %dl
 124:	3c 0d                	cmp    $0xd,%al
 126:	0f 94 c0             	sete   %al
 129:	08 c2                	or     %al,%dl
 12b:	74 ca                	je     0xf7
 12d:	89 de                	mov    %ebx,%esi
 12f:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 133:	89 f8                	mov    %edi,%eax
 135:	8d 65 f4             	lea    -0xc(%ebp),%esp
 138:	5b                   	pop    %ebx
 139:	5e                   	pop    %esi
 13a:	5f                   	pop    %edi
 13b:	5d                   	pop    %ebp
 13c:	c3                   	ret    
 13d:	f3 0f 1e fb          	endbr32 
 141:	55                   	push   %ebp
 142:	89 e5                	mov    %esp,%ebp
 144:	56                   	push   %esi
 145:	53                   	push   %ebx
 146:	83 ec 08             	sub    $0x8,%esp
 149:	6a 00                	push   $0x0
 14b:	ff 75 08             	pushl  0x8(%ebp)
 14e:	e8 dc 00 00 00       	call   0x22f
 153:	83 c4 10             	add    $0x10,%esp
 156:	85 c0                	test   %eax,%eax
 158:	78 24                	js     0x17e
 15a:	89 c3                	mov    %eax,%ebx
 15c:	83 ec 08             	sub    $0x8,%esp
 15f:	ff 75 0c             	pushl  0xc(%ebp)
 162:	50                   	push   %eax
 163:	e8 df 00 00 00       	call   0x247
 168:	89 c6                	mov    %eax,%esi
 16a:	89 1c 24             	mov    %ebx,(%esp)
 16d:	e8 a5 00 00 00       	call   0x217
 172:	83 c4 10             	add    $0x10,%esp
 175:	89 f0                	mov    %esi,%eax
 177:	8d 65 f8             	lea    -0x8(%ebp),%esp
 17a:	5b                   	pop    %ebx
 17b:	5e                   	pop    %esi
 17c:	5d                   	pop    %ebp
 17d:	c3                   	ret    
 17e:	be ff ff ff ff       	mov    $0xffffffff,%esi
 183:	eb f0                	jmp    0x175
 185:	f3 0f 1e fb          	endbr32 
 189:	55                   	push   %ebp
 18a:	89 e5                	mov    %esp,%ebp
 18c:	53                   	push   %ebx
 18d:	8b 4d 08             	mov    0x8(%ebp),%ecx
 190:	ba 00 00 00 00       	mov    $0x0,%edx
 195:	0f b6 01             	movzbl (%ecx),%eax
 198:	8d 58 d0             	lea    -0x30(%eax),%ebx
 19b:	80 fb 09             	cmp    $0x9,%bl
 19e:	77 12                	ja     0x1b2
 1a0:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1a3:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1a6:	83 c1 01             	add    $0x1,%ecx
 1a9:	0f be c0             	movsbl %al,%eax
 1ac:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1b0:	eb e3                	jmp    0x195
 1b2:	89 d0                	mov    %edx,%eax
 1b4:	5b                   	pop    %ebx
 1b5:	5d                   	pop    %ebp
 1b6:	c3                   	ret    
 1b7:	f3 0f 1e fb          	endbr32 
 1bb:	55                   	push   %ebp
 1bc:	89 e5                	mov    %esp,%ebp
 1be:	56                   	push   %esi
 1bf:	53                   	push   %ebx
 1c0:	8b 75 08             	mov    0x8(%ebp),%esi
 1c3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1c6:	8b 45 10             	mov    0x10(%ebp),%eax
 1c9:	89 f2                	mov    %esi,%edx
 1cb:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1ce:	85 c0                	test   %eax,%eax
 1d0:	7e 0f                	jle    0x1e1
 1d2:	0f b6 01             	movzbl (%ecx),%eax
 1d5:	88 02                	mov    %al,(%edx)
 1d7:	8d 49 01             	lea    0x1(%ecx),%ecx
 1da:	8d 52 01             	lea    0x1(%edx),%edx
 1dd:	89 d8                	mov    %ebx,%eax
 1df:	eb ea                	jmp    0x1cb
 1e1:	89 f0                	mov    %esi,%eax
 1e3:	5b                   	pop    %ebx
 1e4:	5e                   	pop    %esi
 1e5:	5d                   	pop    %ebp
 1e6:	c3                   	ret    
 1e7:	b8 01 00 00 00       	mov    $0x1,%eax
 1ec:	cd 40                	int    $0x40
 1ee:	c3                   	ret    
 1ef:	b8 02 00 00 00       	mov    $0x2,%eax
 1f4:	cd 40                	int    $0x40
 1f6:	c3                   	ret    
 1f7:	b8 03 00 00 00       	mov    $0x3,%eax
 1fc:	cd 40                	int    $0x40
 1fe:	c3                   	ret    
 1ff:	b8 04 00 00 00       	mov    $0x4,%eax
 204:	cd 40                	int    $0x40
 206:	c3                   	ret    
 207:	b8 05 00 00 00       	mov    $0x5,%eax
 20c:	cd 40                	int    $0x40
 20e:	c3                   	ret    
 20f:	b8 10 00 00 00       	mov    $0x10,%eax
 214:	cd 40                	int    $0x40
 216:	c3                   	ret    
 217:	b8 15 00 00 00       	mov    $0x15,%eax
 21c:	cd 40                	int    $0x40
 21e:	c3                   	ret    
 21f:	b8 06 00 00 00       	mov    $0x6,%eax
 224:	cd 40                	int    $0x40
 226:	c3                   	ret    
 227:	b8 07 00 00 00       	mov    $0x7,%eax
 22c:	cd 40                	int    $0x40
 22e:	c3                   	ret    
 22f:	b8 0f 00 00 00       	mov    $0xf,%eax
 234:	cd 40                	int    $0x40
 236:	c3                   	ret    
 237:	b8 11 00 00 00       	mov    $0x11,%eax
 23c:	cd 40                	int    $0x40
 23e:	c3                   	ret    
 23f:	b8 12 00 00 00       	mov    $0x12,%eax
 244:	cd 40                	int    $0x40
 246:	c3                   	ret    
 247:	b8 08 00 00 00       	mov    $0x8,%eax
 24c:	cd 40                	int    $0x40
 24e:	c3                   	ret    
 24f:	b8 13 00 00 00       	mov    $0x13,%eax
 254:	cd 40                	int    $0x40
 256:	c3                   	ret    
 257:	b8 14 00 00 00       	mov    $0x14,%eax
 25c:	cd 40                	int    $0x40
 25e:	c3                   	ret    
 25f:	b8 09 00 00 00       	mov    $0x9,%eax
 264:	cd 40                	int    $0x40
 266:	c3                   	ret    
 267:	b8 0a 00 00 00       	mov    $0xa,%eax
 26c:	cd 40                	int    $0x40
 26e:	c3                   	ret    
 26f:	b8 0b 00 00 00       	mov    $0xb,%eax
 274:	cd 40                	int    $0x40
 276:	c3                   	ret    
 277:	b8 0c 00 00 00       	mov    $0xc,%eax
 27c:	cd 40                	int    $0x40
 27e:	c3                   	ret    
 27f:	b8 0d 00 00 00       	mov    $0xd,%eax
 284:	cd 40                	int    $0x40
 286:	c3                   	ret    
 287:	b8 0e 00 00 00       	mov    $0xe,%eax
 28c:	cd 40                	int    $0x40
 28e:	c3                   	ret    
 28f:	b8 16 00 00 00       	mov    $0x16,%eax
 294:	cd 40                	int    $0x40
 296:	c3                   	ret    
 297:	b8 17 00 00 00       	mov    $0x17,%eax
 29c:	cd 40                	int    $0x40
 29e:	c3                   	ret    
 29f:	55                   	push   %ebp
 2a0:	89 e5                	mov    %esp,%ebp
 2a2:	83 ec 1c             	sub    $0x1c,%esp
 2a5:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2a8:	6a 01                	push   $0x1
 2aa:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2ad:	52                   	push   %edx
 2ae:	50                   	push   %eax
 2af:	e8 5b ff ff ff       	call   0x20f
 2b4:	83 c4 10             	add    $0x10,%esp
 2b7:	c9                   	leave  
 2b8:	c3                   	ret    
 2b9:	55                   	push   %ebp
 2ba:	89 e5                	mov    %esp,%ebp
 2bc:	57                   	push   %edi
 2bd:	56                   	push   %esi
 2be:	53                   	push   %ebx
 2bf:	83 ec 2c             	sub    $0x2c,%esp
 2c2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2c5:	89 d6                	mov    %edx,%esi
 2c7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2cb:	0f 95 c2             	setne  %dl
 2ce:	89 f0                	mov    %esi,%eax
 2d0:	c1 e8 1f             	shr    $0x1f,%eax
 2d3:	84 c2                	test   %al,%dl
 2d5:	74 42                	je     0x319
 2d7:	f7 de                	neg    %esi
 2d9:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2e0:	bb 00 00 00 00       	mov    $0x0,%ebx
 2e5:	89 f0                	mov    %esi,%eax
 2e7:	ba 00 00 00 00       	mov    $0x0,%edx
 2ec:	f7 f1                	div    %ecx
 2ee:	89 df                	mov    %ebx,%edi
 2f0:	83 c3 01             	add    $0x1,%ebx
 2f3:	0f b6 92 08 06 00 00 	movzbl 0x608(%edx),%edx
 2fa:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 2fe:	89 f2                	mov    %esi,%edx
 300:	89 c6                	mov    %eax,%esi
 302:	39 d1                	cmp    %edx,%ecx
 304:	76 df                	jbe    0x2e5
 306:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 30a:	74 2f                	je     0x33b
 30c:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 311:	8d 5f 02             	lea    0x2(%edi),%ebx
 314:	8b 75 d0             	mov    -0x30(%ebp),%esi
 317:	eb 15                	jmp    0x32e
 319:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 320:	eb be                	jmp    0x2e0
 322:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 327:	89 f0                	mov    %esi,%eax
 329:	e8 71 ff ff ff       	call   0x29f
 32e:	83 eb 01             	sub    $0x1,%ebx
 331:	79 ef                	jns    0x322
 333:	83 c4 2c             	add    $0x2c,%esp
 336:	5b                   	pop    %ebx
 337:	5e                   	pop    %esi
 338:	5f                   	pop    %edi
 339:	5d                   	pop    %ebp
 33a:	c3                   	ret    
 33b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 33e:	eb ee                	jmp    0x32e
 340:	f3 0f 1e fb          	endbr32 
 344:	55                   	push   %ebp
 345:	89 e5                	mov    %esp,%ebp
 347:	57                   	push   %edi
 348:	56                   	push   %esi
 349:	53                   	push   %ebx
 34a:	83 ec 1c             	sub    $0x1c,%esp
 34d:	8d 45 10             	lea    0x10(%ebp),%eax
 350:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 353:	be 00 00 00 00       	mov    $0x0,%esi
 358:	bb 00 00 00 00       	mov    $0x0,%ebx
 35d:	eb 14                	jmp    0x373
 35f:	89 fa                	mov    %edi,%edx
 361:	8b 45 08             	mov    0x8(%ebp),%eax
 364:	e8 36 ff ff ff       	call   0x29f
 369:	eb 05                	jmp    0x370
 36b:	83 fe 25             	cmp    $0x25,%esi
 36e:	74 25                	je     0x395
 370:	83 c3 01             	add    $0x1,%ebx
 373:	8b 45 0c             	mov    0xc(%ebp),%eax
 376:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 37a:	84 c0                	test   %al,%al
 37c:	0f 84 23 01 00 00    	je     0x4a5
 382:	0f be f8             	movsbl %al,%edi
 385:	0f b6 c0             	movzbl %al,%eax
 388:	85 f6                	test   %esi,%esi
 38a:	75 df                	jne    0x36b
 38c:	83 f8 25             	cmp    $0x25,%eax
 38f:	75 ce                	jne    0x35f
 391:	89 c6                	mov    %eax,%esi
 393:	eb db                	jmp    0x370
 395:	83 f8 64             	cmp    $0x64,%eax
 398:	74 49                	je     0x3e3
 39a:	83 f8 78             	cmp    $0x78,%eax
 39d:	0f 94 c1             	sete   %cl
 3a0:	83 f8 70             	cmp    $0x70,%eax
 3a3:	0f 94 c2             	sete   %dl
 3a6:	08 d1                	or     %dl,%cl
 3a8:	75 63                	jne    0x40d
 3aa:	83 f8 73             	cmp    $0x73,%eax
 3ad:	0f 84 84 00 00 00    	je     0x437
 3b3:	83 f8 63             	cmp    $0x63,%eax
 3b6:	0f 84 b7 00 00 00    	je     0x473
 3bc:	83 f8 25             	cmp    $0x25,%eax
 3bf:	0f 84 cc 00 00 00    	je     0x491
 3c5:	ba 25 00 00 00       	mov    $0x25,%edx
 3ca:	8b 45 08             	mov    0x8(%ebp),%eax
 3cd:	e8 cd fe ff ff       	call   0x29f
 3d2:	89 fa                	mov    %edi,%edx
 3d4:	8b 45 08             	mov    0x8(%ebp),%eax
 3d7:	e8 c3 fe ff ff       	call   0x29f
 3dc:	be 00 00 00 00       	mov    $0x0,%esi
 3e1:	eb 8d                	jmp    0x370
 3e3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3e6:	8b 17                	mov    (%edi),%edx
 3e8:	83 ec 0c             	sub    $0xc,%esp
 3eb:	6a 01                	push   $0x1
 3ed:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3f2:	8b 45 08             	mov    0x8(%ebp),%eax
 3f5:	e8 bf fe ff ff       	call   0x2b9
 3fa:	83 c7 04             	add    $0x4,%edi
 3fd:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 400:	83 c4 10             	add    $0x10,%esp
 403:	be 00 00 00 00       	mov    $0x0,%esi
 408:	e9 63 ff ff ff       	jmp    0x370
 40d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 410:	8b 17                	mov    (%edi),%edx
 412:	83 ec 0c             	sub    $0xc,%esp
 415:	6a 00                	push   $0x0
 417:	b9 10 00 00 00       	mov    $0x10,%ecx
 41c:	8b 45 08             	mov    0x8(%ebp),%eax
 41f:	e8 95 fe ff ff       	call   0x2b9
 424:	83 c7 04             	add    $0x4,%edi
 427:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 42a:	83 c4 10             	add    $0x10,%esp
 42d:	be 00 00 00 00       	mov    $0x0,%esi
 432:	e9 39 ff ff ff       	jmp    0x370
 437:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 43a:	8b 30                	mov    (%eax),%esi
 43c:	83 c0 04             	add    $0x4,%eax
 43f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 442:	85 f6                	test   %esi,%esi
 444:	75 28                	jne    0x46e
 446:	be 00 06 00 00       	mov    $0x600,%esi
 44b:	8b 7d 08             	mov    0x8(%ebp),%edi
 44e:	eb 0d                	jmp    0x45d
 450:	0f be d2             	movsbl %dl,%edx
 453:	89 f8                	mov    %edi,%eax
 455:	e8 45 fe ff ff       	call   0x29f
 45a:	83 c6 01             	add    $0x1,%esi
 45d:	0f b6 16             	movzbl (%esi),%edx
 460:	84 d2                	test   %dl,%dl
 462:	75 ec                	jne    0x450
 464:	be 00 00 00 00       	mov    $0x0,%esi
 469:	e9 02 ff ff ff       	jmp    0x370
 46e:	8b 7d 08             	mov    0x8(%ebp),%edi
 471:	eb ea                	jmp    0x45d
 473:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 476:	0f be 17             	movsbl (%edi),%edx
 479:	8b 45 08             	mov    0x8(%ebp),%eax
 47c:	e8 1e fe ff ff       	call   0x29f
 481:	83 c7 04             	add    $0x4,%edi
 484:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 487:	be 00 00 00 00       	mov    $0x0,%esi
 48c:	e9 df fe ff ff       	jmp    0x370
 491:	89 fa                	mov    %edi,%edx
 493:	8b 45 08             	mov    0x8(%ebp),%eax
 496:	e8 04 fe ff ff       	call   0x29f
 49b:	be 00 00 00 00       	mov    $0x0,%esi
 4a0:	e9 cb fe ff ff       	jmp    0x370
 4a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a8:	5b                   	pop    %ebx
 4a9:	5e                   	pop    %esi
 4aa:	5f                   	pop    %edi
 4ab:	5d                   	pop    %ebp
 4ac:	c3                   	ret    
 4ad:	f3 0f 1e fb          	endbr32 
 4b1:	55                   	push   %ebp
 4b2:	89 e5                	mov    %esp,%ebp
 4b4:	57                   	push   %edi
 4b5:	56                   	push   %esi
 4b6:	53                   	push   %ebx
 4b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4ba:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4bd:	a1 a8 08 00 00       	mov    0x8a8,%eax
 4c2:	eb 02                	jmp    0x4c6
 4c4:	89 d0                	mov    %edx,%eax
 4c6:	39 c8                	cmp    %ecx,%eax
 4c8:	73 04                	jae    0x4ce
 4ca:	39 08                	cmp    %ecx,(%eax)
 4cc:	77 12                	ja     0x4e0
 4ce:	8b 10                	mov    (%eax),%edx
 4d0:	39 c2                	cmp    %eax,%edx
 4d2:	77 f0                	ja     0x4c4
 4d4:	39 c8                	cmp    %ecx,%eax
 4d6:	72 08                	jb     0x4e0
 4d8:	39 ca                	cmp    %ecx,%edx
 4da:	77 04                	ja     0x4e0
 4dc:	89 d0                	mov    %edx,%eax
 4de:	eb e6                	jmp    0x4c6
 4e0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4e3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4e6:	8b 10                	mov    (%eax),%edx
 4e8:	39 d7                	cmp    %edx,%edi
 4ea:	74 19                	je     0x505
 4ec:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4ef:	8b 50 04             	mov    0x4(%eax),%edx
 4f2:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4f5:	39 ce                	cmp    %ecx,%esi
 4f7:	74 1b                	je     0x514
 4f9:	89 08                	mov    %ecx,(%eax)
 4fb:	a3 a8 08 00 00       	mov    %eax,0x8a8
 500:	5b                   	pop    %ebx
 501:	5e                   	pop    %esi
 502:	5f                   	pop    %edi
 503:	5d                   	pop    %ebp
 504:	c3                   	ret    
 505:	03 72 04             	add    0x4(%edx),%esi
 508:	89 73 fc             	mov    %esi,-0x4(%ebx)
 50b:	8b 10                	mov    (%eax),%edx
 50d:	8b 12                	mov    (%edx),%edx
 50f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 512:	eb db                	jmp    0x4ef
 514:	03 53 fc             	add    -0x4(%ebx),%edx
 517:	89 50 04             	mov    %edx,0x4(%eax)
 51a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 51d:	89 10                	mov    %edx,(%eax)
 51f:	eb da                	jmp    0x4fb
 521:	55                   	push   %ebp
 522:	89 e5                	mov    %esp,%ebp
 524:	53                   	push   %ebx
 525:	83 ec 04             	sub    $0x4,%esp
 528:	89 c3                	mov    %eax,%ebx
 52a:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 52f:	77 05                	ja     0x536
 531:	bb 00 10 00 00       	mov    $0x1000,%ebx
 536:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 53d:	83 ec 0c             	sub    $0xc,%esp
 540:	50                   	push   %eax
 541:	e8 31 fd ff ff       	call   0x277
 546:	83 c4 10             	add    $0x10,%esp
 549:	83 f8 ff             	cmp    $0xffffffff,%eax
 54c:	74 1c                	je     0x56a
 54e:	89 58 04             	mov    %ebx,0x4(%eax)
 551:	83 c0 08             	add    $0x8,%eax
 554:	83 ec 0c             	sub    $0xc,%esp
 557:	50                   	push   %eax
 558:	e8 50 ff ff ff       	call   0x4ad
 55d:	a1 a8 08 00 00       	mov    0x8a8,%eax
 562:	83 c4 10             	add    $0x10,%esp
 565:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 568:	c9                   	leave  
 569:	c3                   	ret    
 56a:	b8 00 00 00 00       	mov    $0x0,%eax
 56f:	eb f4                	jmp    0x565
 571:	f3 0f 1e fb          	endbr32 
 575:	55                   	push   %ebp
 576:	89 e5                	mov    %esp,%ebp
 578:	53                   	push   %ebx
 579:	83 ec 04             	sub    $0x4,%esp
 57c:	8b 45 08             	mov    0x8(%ebp),%eax
 57f:	8d 58 07             	lea    0x7(%eax),%ebx
 582:	c1 eb 03             	shr    $0x3,%ebx
 585:	83 c3 01             	add    $0x1,%ebx
 588:	8b 0d a8 08 00 00    	mov    0x8a8,%ecx
 58e:	85 c9                	test   %ecx,%ecx
 590:	74 04                	je     0x596
 592:	8b 01                	mov    (%ecx),%eax
 594:	eb 4b                	jmp    0x5e1
 596:	c7 05 a8 08 00 00 ac 	movl   $0x8ac,0x8a8
 59d:	08 00 00 
 5a0:	c7 05 ac 08 00 00 ac 	movl   $0x8ac,0x8ac
 5a7:	08 00 00 
 5aa:	c7 05 b0 08 00 00 00 	movl   $0x0,0x8b0
 5b1:	00 00 00 
 5b4:	b9 ac 08 00 00       	mov    $0x8ac,%ecx
 5b9:	eb d7                	jmp    0x592
 5bb:	74 1a                	je     0x5d7
 5bd:	29 da                	sub    %ebx,%edx
 5bf:	89 50 04             	mov    %edx,0x4(%eax)
 5c2:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5c5:	89 58 04             	mov    %ebx,0x4(%eax)
 5c8:	89 0d a8 08 00 00    	mov    %ecx,0x8a8
 5ce:	83 c0 08             	add    $0x8,%eax
 5d1:	83 c4 04             	add    $0x4,%esp
 5d4:	5b                   	pop    %ebx
 5d5:	5d                   	pop    %ebp
 5d6:	c3                   	ret    
 5d7:	8b 10                	mov    (%eax),%edx
 5d9:	89 11                	mov    %edx,(%ecx)
 5db:	eb eb                	jmp    0x5c8
 5dd:	89 c1                	mov    %eax,%ecx
 5df:	8b 00                	mov    (%eax),%eax
 5e1:	8b 50 04             	mov    0x4(%eax),%edx
 5e4:	39 da                	cmp    %ebx,%edx
 5e6:	73 d3                	jae    0x5bb
 5e8:	39 05 a8 08 00 00    	cmp    %eax,0x8a8
 5ee:	75 ed                	jne    0x5dd
 5f0:	89 d8                	mov    %ebx,%eax
 5f2:	e8 2a ff ff ff       	call   0x521
 5f7:	85 c0                	test   %eax,%eax
 5f9:	75 e2                	jne    0x5dd
 5fb:	eb d4                	jmp    0x5d1
