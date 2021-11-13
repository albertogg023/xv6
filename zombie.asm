
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
 297:	55                   	push   %ebp
 298:	89 e5                	mov    %esp,%ebp
 29a:	83 ec 1c             	sub    $0x1c,%esp
 29d:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2a0:	6a 01                	push   $0x1
 2a2:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2a5:	52                   	push   %edx
 2a6:	50                   	push   %eax
 2a7:	e8 63 ff ff ff       	call   0x20f
 2ac:	83 c4 10             	add    $0x10,%esp
 2af:	c9                   	leave  
 2b0:	c3                   	ret    
 2b1:	55                   	push   %ebp
 2b2:	89 e5                	mov    %esp,%ebp
 2b4:	57                   	push   %edi
 2b5:	56                   	push   %esi
 2b6:	53                   	push   %ebx
 2b7:	83 ec 2c             	sub    $0x2c,%esp
 2ba:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2bd:	89 d6                	mov    %edx,%esi
 2bf:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2c3:	0f 95 c2             	setne  %dl
 2c6:	89 f0                	mov    %esi,%eax
 2c8:	c1 e8 1f             	shr    $0x1f,%eax
 2cb:	84 c2                	test   %al,%dl
 2cd:	74 42                	je     0x311
 2cf:	f7 de                	neg    %esi
 2d1:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2d8:	bb 00 00 00 00       	mov    $0x0,%ebx
 2dd:	89 f0                	mov    %esi,%eax
 2df:	ba 00 00 00 00       	mov    $0x0,%edx
 2e4:	f7 f1                	div    %ecx
 2e6:	89 df                	mov    %ebx,%edi
 2e8:	83 c3 01             	add    $0x1,%ebx
 2eb:	0f b6 92 00 06 00 00 	movzbl 0x600(%edx),%edx
 2f2:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 2f6:	89 f2                	mov    %esi,%edx
 2f8:	89 c6                	mov    %eax,%esi
 2fa:	39 d1                	cmp    %edx,%ecx
 2fc:	76 df                	jbe    0x2dd
 2fe:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 302:	74 2f                	je     0x333
 304:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 309:	8d 5f 02             	lea    0x2(%edi),%ebx
 30c:	8b 75 d0             	mov    -0x30(%ebp),%esi
 30f:	eb 15                	jmp    0x326
 311:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 318:	eb be                	jmp    0x2d8
 31a:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 31f:	89 f0                	mov    %esi,%eax
 321:	e8 71 ff ff ff       	call   0x297
 326:	83 eb 01             	sub    $0x1,%ebx
 329:	79 ef                	jns    0x31a
 32b:	83 c4 2c             	add    $0x2c,%esp
 32e:	5b                   	pop    %ebx
 32f:	5e                   	pop    %esi
 330:	5f                   	pop    %edi
 331:	5d                   	pop    %ebp
 332:	c3                   	ret    
 333:	8b 75 d0             	mov    -0x30(%ebp),%esi
 336:	eb ee                	jmp    0x326
 338:	f3 0f 1e fb          	endbr32 
 33c:	55                   	push   %ebp
 33d:	89 e5                	mov    %esp,%ebp
 33f:	57                   	push   %edi
 340:	56                   	push   %esi
 341:	53                   	push   %ebx
 342:	83 ec 1c             	sub    $0x1c,%esp
 345:	8d 45 10             	lea    0x10(%ebp),%eax
 348:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 34b:	be 00 00 00 00       	mov    $0x0,%esi
 350:	bb 00 00 00 00       	mov    $0x0,%ebx
 355:	eb 14                	jmp    0x36b
 357:	89 fa                	mov    %edi,%edx
 359:	8b 45 08             	mov    0x8(%ebp),%eax
 35c:	e8 36 ff ff ff       	call   0x297
 361:	eb 05                	jmp    0x368
 363:	83 fe 25             	cmp    $0x25,%esi
 366:	74 25                	je     0x38d
 368:	83 c3 01             	add    $0x1,%ebx
 36b:	8b 45 0c             	mov    0xc(%ebp),%eax
 36e:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 372:	84 c0                	test   %al,%al
 374:	0f 84 23 01 00 00    	je     0x49d
 37a:	0f be f8             	movsbl %al,%edi
 37d:	0f b6 c0             	movzbl %al,%eax
 380:	85 f6                	test   %esi,%esi
 382:	75 df                	jne    0x363
 384:	83 f8 25             	cmp    $0x25,%eax
 387:	75 ce                	jne    0x357
 389:	89 c6                	mov    %eax,%esi
 38b:	eb db                	jmp    0x368
 38d:	83 f8 64             	cmp    $0x64,%eax
 390:	74 49                	je     0x3db
 392:	83 f8 78             	cmp    $0x78,%eax
 395:	0f 94 c1             	sete   %cl
 398:	83 f8 70             	cmp    $0x70,%eax
 39b:	0f 94 c2             	sete   %dl
 39e:	08 d1                	or     %dl,%cl
 3a0:	75 63                	jne    0x405
 3a2:	83 f8 73             	cmp    $0x73,%eax
 3a5:	0f 84 84 00 00 00    	je     0x42f
 3ab:	83 f8 63             	cmp    $0x63,%eax
 3ae:	0f 84 b7 00 00 00    	je     0x46b
 3b4:	83 f8 25             	cmp    $0x25,%eax
 3b7:	0f 84 cc 00 00 00    	je     0x489
 3bd:	ba 25 00 00 00       	mov    $0x25,%edx
 3c2:	8b 45 08             	mov    0x8(%ebp),%eax
 3c5:	e8 cd fe ff ff       	call   0x297
 3ca:	89 fa                	mov    %edi,%edx
 3cc:	8b 45 08             	mov    0x8(%ebp),%eax
 3cf:	e8 c3 fe ff ff       	call   0x297
 3d4:	be 00 00 00 00       	mov    $0x0,%esi
 3d9:	eb 8d                	jmp    0x368
 3db:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3de:	8b 17                	mov    (%edi),%edx
 3e0:	83 ec 0c             	sub    $0xc,%esp
 3e3:	6a 01                	push   $0x1
 3e5:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3ea:	8b 45 08             	mov    0x8(%ebp),%eax
 3ed:	e8 bf fe ff ff       	call   0x2b1
 3f2:	83 c7 04             	add    $0x4,%edi
 3f5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 3f8:	83 c4 10             	add    $0x10,%esp
 3fb:	be 00 00 00 00       	mov    $0x0,%esi
 400:	e9 63 ff ff ff       	jmp    0x368
 405:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 408:	8b 17                	mov    (%edi),%edx
 40a:	83 ec 0c             	sub    $0xc,%esp
 40d:	6a 00                	push   $0x0
 40f:	b9 10 00 00 00       	mov    $0x10,%ecx
 414:	8b 45 08             	mov    0x8(%ebp),%eax
 417:	e8 95 fe ff ff       	call   0x2b1
 41c:	83 c7 04             	add    $0x4,%edi
 41f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 422:	83 c4 10             	add    $0x10,%esp
 425:	be 00 00 00 00       	mov    $0x0,%esi
 42a:	e9 39 ff ff ff       	jmp    0x368
 42f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 432:	8b 30                	mov    (%eax),%esi
 434:	83 c0 04             	add    $0x4,%eax
 437:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 43a:	85 f6                	test   %esi,%esi
 43c:	75 28                	jne    0x466
 43e:	be f8 05 00 00       	mov    $0x5f8,%esi
 443:	8b 7d 08             	mov    0x8(%ebp),%edi
 446:	eb 0d                	jmp    0x455
 448:	0f be d2             	movsbl %dl,%edx
 44b:	89 f8                	mov    %edi,%eax
 44d:	e8 45 fe ff ff       	call   0x297
 452:	83 c6 01             	add    $0x1,%esi
 455:	0f b6 16             	movzbl (%esi),%edx
 458:	84 d2                	test   %dl,%dl
 45a:	75 ec                	jne    0x448
 45c:	be 00 00 00 00       	mov    $0x0,%esi
 461:	e9 02 ff ff ff       	jmp    0x368
 466:	8b 7d 08             	mov    0x8(%ebp),%edi
 469:	eb ea                	jmp    0x455
 46b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 46e:	0f be 17             	movsbl (%edi),%edx
 471:	8b 45 08             	mov    0x8(%ebp),%eax
 474:	e8 1e fe ff ff       	call   0x297
 479:	83 c7 04             	add    $0x4,%edi
 47c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 47f:	be 00 00 00 00       	mov    $0x0,%esi
 484:	e9 df fe ff ff       	jmp    0x368
 489:	89 fa                	mov    %edi,%edx
 48b:	8b 45 08             	mov    0x8(%ebp),%eax
 48e:	e8 04 fe ff ff       	call   0x297
 493:	be 00 00 00 00       	mov    $0x0,%esi
 498:	e9 cb fe ff ff       	jmp    0x368
 49d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a0:	5b                   	pop    %ebx
 4a1:	5e                   	pop    %esi
 4a2:	5f                   	pop    %edi
 4a3:	5d                   	pop    %ebp
 4a4:	c3                   	ret    
 4a5:	f3 0f 1e fb          	endbr32 
 4a9:	55                   	push   %ebp
 4aa:	89 e5                	mov    %esp,%ebp
 4ac:	57                   	push   %edi
 4ad:	56                   	push   %esi
 4ae:	53                   	push   %ebx
 4af:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4b2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4b5:	a1 a0 08 00 00       	mov    0x8a0,%eax
 4ba:	eb 02                	jmp    0x4be
 4bc:	89 d0                	mov    %edx,%eax
 4be:	39 c8                	cmp    %ecx,%eax
 4c0:	73 04                	jae    0x4c6
 4c2:	39 08                	cmp    %ecx,(%eax)
 4c4:	77 12                	ja     0x4d8
 4c6:	8b 10                	mov    (%eax),%edx
 4c8:	39 c2                	cmp    %eax,%edx
 4ca:	77 f0                	ja     0x4bc
 4cc:	39 c8                	cmp    %ecx,%eax
 4ce:	72 08                	jb     0x4d8
 4d0:	39 ca                	cmp    %ecx,%edx
 4d2:	77 04                	ja     0x4d8
 4d4:	89 d0                	mov    %edx,%eax
 4d6:	eb e6                	jmp    0x4be
 4d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4de:	8b 10                	mov    (%eax),%edx
 4e0:	39 d7                	cmp    %edx,%edi
 4e2:	74 19                	je     0x4fd
 4e4:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4e7:	8b 50 04             	mov    0x4(%eax),%edx
 4ea:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4ed:	39 ce                	cmp    %ecx,%esi
 4ef:	74 1b                	je     0x50c
 4f1:	89 08                	mov    %ecx,(%eax)
 4f3:	a3 a0 08 00 00       	mov    %eax,0x8a0
 4f8:	5b                   	pop    %ebx
 4f9:	5e                   	pop    %esi
 4fa:	5f                   	pop    %edi
 4fb:	5d                   	pop    %ebp
 4fc:	c3                   	ret    
 4fd:	03 72 04             	add    0x4(%edx),%esi
 500:	89 73 fc             	mov    %esi,-0x4(%ebx)
 503:	8b 10                	mov    (%eax),%edx
 505:	8b 12                	mov    (%edx),%edx
 507:	89 53 f8             	mov    %edx,-0x8(%ebx)
 50a:	eb db                	jmp    0x4e7
 50c:	03 53 fc             	add    -0x4(%ebx),%edx
 50f:	89 50 04             	mov    %edx,0x4(%eax)
 512:	8b 53 f8             	mov    -0x8(%ebx),%edx
 515:	89 10                	mov    %edx,(%eax)
 517:	eb da                	jmp    0x4f3
 519:	55                   	push   %ebp
 51a:	89 e5                	mov    %esp,%ebp
 51c:	53                   	push   %ebx
 51d:	83 ec 04             	sub    $0x4,%esp
 520:	89 c3                	mov    %eax,%ebx
 522:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 527:	77 05                	ja     0x52e
 529:	bb 00 10 00 00       	mov    $0x1000,%ebx
 52e:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 535:	83 ec 0c             	sub    $0xc,%esp
 538:	50                   	push   %eax
 539:	e8 39 fd ff ff       	call   0x277
 53e:	83 c4 10             	add    $0x10,%esp
 541:	83 f8 ff             	cmp    $0xffffffff,%eax
 544:	74 1c                	je     0x562
 546:	89 58 04             	mov    %ebx,0x4(%eax)
 549:	83 c0 08             	add    $0x8,%eax
 54c:	83 ec 0c             	sub    $0xc,%esp
 54f:	50                   	push   %eax
 550:	e8 50 ff ff ff       	call   0x4a5
 555:	a1 a0 08 00 00       	mov    0x8a0,%eax
 55a:	83 c4 10             	add    $0x10,%esp
 55d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 560:	c9                   	leave  
 561:	c3                   	ret    
 562:	b8 00 00 00 00       	mov    $0x0,%eax
 567:	eb f4                	jmp    0x55d
 569:	f3 0f 1e fb          	endbr32 
 56d:	55                   	push   %ebp
 56e:	89 e5                	mov    %esp,%ebp
 570:	53                   	push   %ebx
 571:	83 ec 04             	sub    $0x4,%esp
 574:	8b 45 08             	mov    0x8(%ebp),%eax
 577:	8d 58 07             	lea    0x7(%eax),%ebx
 57a:	c1 eb 03             	shr    $0x3,%ebx
 57d:	83 c3 01             	add    $0x1,%ebx
 580:	8b 0d a0 08 00 00    	mov    0x8a0,%ecx
 586:	85 c9                	test   %ecx,%ecx
 588:	74 04                	je     0x58e
 58a:	8b 01                	mov    (%ecx),%eax
 58c:	eb 4b                	jmp    0x5d9
 58e:	c7 05 a0 08 00 00 a4 	movl   $0x8a4,0x8a0
 595:	08 00 00 
 598:	c7 05 a4 08 00 00 a4 	movl   $0x8a4,0x8a4
 59f:	08 00 00 
 5a2:	c7 05 a8 08 00 00 00 	movl   $0x0,0x8a8
 5a9:	00 00 00 
 5ac:	b9 a4 08 00 00       	mov    $0x8a4,%ecx
 5b1:	eb d7                	jmp    0x58a
 5b3:	74 1a                	je     0x5cf
 5b5:	29 da                	sub    %ebx,%edx
 5b7:	89 50 04             	mov    %edx,0x4(%eax)
 5ba:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5bd:	89 58 04             	mov    %ebx,0x4(%eax)
 5c0:	89 0d a0 08 00 00    	mov    %ecx,0x8a0
 5c6:	83 c0 08             	add    $0x8,%eax
 5c9:	83 c4 04             	add    $0x4,%esp
 5cc:	5b                   	pop    %ebx
 5cd:	5d                   	pop    %ebp
 5ce:	c3                   	ret    
 5cf:	8b 10                	mov    (%eax),%edx
 5d1:	89 11                	mov    %edx,(%ecx)
 5d3:	eb eb                	jmp    0x5c0
 5d5:	89 c1                	mov    %eax,%ecx
 5d7:	8b 00                	mov    (%eax),%eax
 5d9:	8b 50 04             	mov    0x4(%eax),%edx
 5dc:	39 da                	cmp    %ebx,%edx
 5de:	73 d3                	jae    0x5b3
 5e0:	39 05 a0 08 00 00    	cmp    %eax,0x8a0
 5e6:	75 ed                	jne    0x5d5
 5e8:	89 d8                	mov    %ebx,%eax
 5ea:	e8 2a ff ff ff       	call   0x519
 5ef:	85 c0                	test   %eax,%eax
 5f1:	75 e2                	jne    0x5d5
 5f3:	eb d4                	jmp    0x5c9
