
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
  15:	e8 d2 01 00 00       	call   0x1ec
  1a:	85 c0                	test   %eax,%eax
  1c:	7f 0a                	jg     0x28
  1e:	83 ec 0c             	sub    $0xc,%esp
  21:	6a 00                	push   $0x0
  23:	e8 cc 01 00 00       	call   0x1f4
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	6a 05                	push   $0x5
  2d:	e8 52 02 00 00       	call   0x284
  32:	83 c4 10             	add    $0x10,%esp
  35:	eb e7                	jmp    0x1e
  37:	f3 0f 1e fb          	endbr32 
  3b:	55                   	push   %ebp
  3c:	89 e5                	mov    %esp,%ebp
  3e:	56                   	push   %esi
  3f:	53                   	push   %ebx
  40:	8b 75 08             	mov    0x8(%ebp),%esi
  43:	8b 55 0c             	mov    0xc(%ebp),%edx
  46:	89 f0                	mov    %esi,%eax
  48:	89 d1                	mov    %edx,%ecx
  4a:	83 c2 01             	add    $0x1,%edx
  4d:	89 c3                	mov    %eax,%ebx
  4f:	83 c0 01             	add    $0x1,%eax
  52:	0f b6 09             	movzbl (%ecx),%ecx
  55:	88 0b                	mov    %cl,(%ebx)
  57:	84 c9                	test   %cl,%cl
  59:	75 ed                	jne    0x48
  5b:	89 f0                	mov    %esi,%eax
  5d:	5b                   	pop    %ebx
  5e:	5e                   	pop    %esi
  5f:	5d                   	pop    %ebp
  60:	c3                   	ret    
  61:	f3 0f 1e fb          	endbr32 
  65:	55                   	push   %ebp
  66:	89 e5                	mov    %esp,%ebp
  68:	8b 4d 08             	mov    0x8(%ebp),%ecx
  6b:	8b 55 0c             	mov    0xc(%ebp),%edx
  6e:	0f b6 01             	movzbl (%ecx),%eax
  71:	84 c0                	test   %al,%al
  73:	74 0c                	je     0x81
  75:	3a 02                	cmp    (%edx),%al
  77:	75 08                	jne    0x81
  79:	83 c1 01             	add    $0x1,%ecx
  7c:	83 c2 01             	add    $0x1,%edx
  7f:	eb ed                	jmp    0x6e
  81:	0f b6 c0             	movzbl %al,%eax
  84:	0f b6 12             	movzbl (%edx),%edx
  87:	29 d0                	sub    %edx,%eax
  89:	5d                   	pop    %ebp
  8a:	c3                   	ret    
  8b:	f3 0f 1e fb          	endbr32 
  8f:	55                   	push   %ebp
  90:	89 e5                	mov    %esp,%ebp
  92:	8b 4d 08             	mov    0x8(%ebp),%ecx
  95:	b8 00 00 00 00       	mov    $0x0,%eax
  9a:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  9e:	74 05                	je     0xa5
  a0:	83 c0 01             	add    $0x1,%eax
  a3:	eb f5                	jmp    0x9a
  a5:	5d                   	pop    %ebp
  a6:	c3                   	ret    
  a7:	f3 0f 1e fb          	endbr32 
  ab:	55                   	push   %ebp
  ac:	89 e5                	mov    %esp,%ebp
  ae:	57                   	push   %edi
  af:	8b 55 08             	mov    0x8(%ebp),%edx
  b2:	89 d7                	mov    %edx,%edi
  b4:	8b 4d 10             	mov    0x10(%ebp),%ecx
  b7:	8b 45 0c             	mov    0xc(%ebp),%eax
  ba:	fc                   	cld    
  bb:	f3 aa                	rep stos %al,%es:(%edi)
  bd:	89 d0                	mov    %edx,%eax
  bf:	5f                   	pop    %edi
  c0:	5d                   	pop    %ebp
  c1:	c3                   	ret    
  c2:	f3 0f 1e fb          	endbr32 
  c6:	55                   	push   %ebp
  c7:	89 e5                	mov    %esp,%ebp
  c9:	8b 45 08             	mov    0x8(%ebp),%eax
  cc:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  d0:	0f b6 10             	movzbl (%eax),%edx
  d3:	84 d2                	test   %dl,%dl
  d5:	74 09                	je     0xe0
  d7:	38 ca                	cmp    %cl,%dl
  d9:	74 0a                	je     0xe5
  db:	83 c0 01             	add    $0x1,%eax
  de:	eb f0                	jmp    0xd0
  e0:	b8 00 00 00 00       	mov    $0x0,%eax
  e5:	5d                   	pop    %ebp
  e6:	c3                   	ret    
  e7:	f3 0f 1e fb          	endbr32 
  eb:	55                   	push   %ebp
  ec:	89 e5                	mov    %esp,%ebp
  ee:	57                   	push   %edi
  ef:	56                   	push   %esi
  f0:	53                   	push   %ebx
  f1:	83 ec 1c             	sub    $0x1c,%esp
  f4:	8b 7d 08             	mov    0x8(%ebp),%edi
  f7:	bb 00 00 00 00       	mov    $0x0,%ebx
  fc:	89 de                	mov    %ebx,%esi
  fe:	83 c3 01             	add    $0x1,%ebx
 101:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 104:	7d 2e                	jge    0x134
 106:	83 ec 04             	sub    $0x4,%esp
 109:	6a 01                	push   $0x1
 10b:	8d 45 e7             	lea    -0x19(%ebp),%eax
 10e:	50                   	push   %eax
 10f:	6a 00                	push   $0x0
 111:	e8 f6 00 00 00       	call   0x20c
 116:	83 c4 10             	add    $0x10,%esp
 119:	85 c0                	test   %eax,%eax
 11b:	7e 17                	jle    0x134
 11d:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 121:	88 04 37             	mov    %al,(%edi,%esi,1)
 124:	3c 0a                	cmp    $0xa,%al
 126:	0f 94 c2             	sete   %dl
 129:	3c 0d                	cmp    $0xd,%al
 12b:	0f 94 c0             	sete   %al
 12e:	08 c2                	or     %al,%dl
 130:	74 ca                	je     0xfc
 132:	89 de                	mov    %ebx,%esi
 134:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 138:	89 f8                	mov    %edi,%eax
 13a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 13d:	5b                   	pop    %ebx
 13e:	5e                   	pop    %esi
 13f:	5f                   	pop    %edi
 140:	5d                   	pop    %ebp
 141:	c3                   	ret    
 142:	f3 0f 1e fb          	endbr32 
 146:	55                   	push   %ebp
 147:	89 e5                	mov    %esp,%ebp
 149:	56                   	push   %esi
 14a:	53                   	push   %ebx
 14b:	83 ec 08             	sub    $0x8,%esp
 14e:	6a 00                	push   $0x0
 150:	ff 75 08             	pushl  0x8(%ebp)
 153:	e8 dc 00 00 00       	call   0x234
 158:	83 c4 10             	add    $0x10,%esp
 15b:	85 c0                	test   %eax,%eax
 15d:	78 24                	js     0x183
 15f:	89 c3                	mov    %eax,%ebx
 161:	83 ec 08             	sub    $0x8,%esp
 164:	ff 75 0c             	pushl  0xc(%ebp)
 167:	50                   	push   %eax
 168:	e8 df 00 00 00       	call   0x24c
 16d:	89 c6                	mov    %eax,%esi
 16f:	89 1c 24             	mov    %ebx,(%esp)
 172:	e8 a5 00 00 00       	call   0x21c
 177:	83 c4 10             	add    $0x10,%esp
 17a:	89 f0                	mov    %esi,%eax
 17c:	8d 65 f8             	lea    -0x8(%ebp),%esp
 17f:	5b                   	pop    %ebx
 180:	5e                   	pop    %esi
 181:	5d                   	pop    %ebp
 182:	c3                   	ret    
 183:	be ff ff ff ff       	mov    $0xffffffff,%esi
 188:	eb f0                	jmp    0x17a
 18a:	f3 0f 1e fb          	endbr32 
 18e:	55                   	push   %ebp
 18f:	89 e5                	mov    %esp,%ebp
 191:	53                   	push   %ebx
 192:	8b 4d 08             	mov    0x8(%ebp),%ecx
 195:	ba 00 00 00 00       	mov    $0x0,%edx
 19a:	0f b6 01             	movzbl (%ecx),%eax
 19d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1a0:	80 fb 09             	cmp    $0x9,%bl
 1a3:	77 12                	ja     0x1b7
 1a5:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1a8:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1ab:	83 c1 01             	add    $0x1,%ecx
 1ae:	0f be c0             	movsbl %al,%eax
 1b1:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1b5:	eb e3                	jmp    0x19a
 1b7:	89 d0                	mov    %edx,%eax
 1b9:	5b                   	pop    %ebx
 1ba:	5d                   	pop    %ebp
 1bb:	c3                   	ret    
 1bc:	f3 0f 1e fb          	endbr32 
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	56                   	push   %esi
 1c4:	53                   	push   %ebx
 1c5:	8b 75 08             	mov    0x8(%ebp),%esi
 1c8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1cb:	8b 45 10             	mov    0x10(%ebp),%eax
 1ce:	89 f2                	mov    %esi,%edx
 1d0:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1d3:	85 c0                	test   %eax,%eax
 1d5:	7e 0f                	jle    0x1e6
 1d7:	0f b6 01             	movzbl (%ecx),%eax
 1da:	88 02                	mov    %al,(%edx)
 1dc:	8d 49 01             	lea    0x1(%ecx),%ecx
 1df:	8d 52 01             	lea    0x1(%edx),%edx
 1e2:	89 d8                	mov    %ebx,%eax
 1e4:	eb ea                	jmp    0x1d0
 1e6:	89 f0                	mov    %esi,%eax
 1e8:	5b                   	pop    %ebx
 1e9:	5e                   	pop    %esi
 1ea:	5d                   	pop    %ebp
 1eb:	c3                   	ret    
 1ec:	b8 01 00 00 00       	mov    $0x1,%eax
 1f1:	cd 40                	int    $0x40
 1f3:	c3                   	ret    
 1f4:	b8 02 00 00 00       	mov    $0x2,%eax
 1f9:	cd 40                	int    $0x40
 1fb:	c3                   	ret    
 1fc:	b8 03 00 00 00       	mov    $0x3,%eax
 201:	cd 40                	int    $0x40
 203:	c3                   	ret    
 204:	b8 04 00 00 00       	mov    $0x4,%eax
 209:	cd 40                	int    $0x40
 20b:	c3                   	ret    
 20c:	b8 05 00 00 00       	mov    $0x5,%eax
 211:	cd 40                	int    $0x40
 213:	c3                   	ret    
 214:	b8 10 00 00 00       	mov    $0x10,%eax
 219:	cd 40                	int    $0x40
 21b:	c3                   	ret    
 21c:	b8 15 00 00 00       	mov    $0x15,%eax
 221:	cd 40                	int    $0x40
 223:	c3                   	ret    
 224:	b8 06 00 00 00       	mov    $0x6,%eax
 229:	cd 40                	int    $0x40
 22b:	c3                   	ret    
 22c:	b8 07 00 00 00       	mov    $0x7,%eax
 231:	cd 40                	int    $0x40
 233:	c3                   	ret    
 234:	b8 0f 00 00 00       	mov    $0xf,%eax
 239:	cd 40                	int    $0x40
 23b:	c3                   	ret    
 23c:	b8 11 00 00 00       	mov    $0x11,%eax
 241:	cd 40                	int    $0x40
 243:	c3                   	ret    
 244:	b8 12 00 00 00       	mov    $0x12,%eax
 249:	cd 40                	int    $0x40
 24b:	c3                   	ret    
 24c:	b8 08 00 00 00       	mov    $0x8,%eax
 251:	cd 40                	int    $0x40
 253:	c3                   	ret    
 254:	b8 13 00 00 00       	mov    $0x13,%eax
 259:	cd 40                	int    $0x40
 25b:	c3                   	ret    
 25c:	b8 14 00 00 00       	mov    $0x14,%eax
 261:	cd 40                	int    $0x40
 263:	c3                   	ret    
 264:	b8 09 00 00 00       	mov    $0x9,%eax
 269:	cd 40                	int    $0x40
 26b:	c3                   	ret    
 26c:	b8 0a 00 00 00       	mov    $0xa,%eax
 271:	cd 40                	int    $0x40
 273:	c3                   	ret    
 274:	b8 0b 00 00 00       	mov    $0xb,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 0c 00 00 00       	mov    $0xc,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 0d 00 00 00       	mov    $0xd,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 0e 00 00 00       	mov    $0xe,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 16 00 00 00       	mov    $0x16,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	b8 17 00 00 00       	mov    $0x17,%eax
 2a1:	cd 40                	int    $0x40
 2a3:	c3                   	ret    
 2a4:	55                   	push   %ebp
 2a5:	89 e5                	mov    %esp,%ebp
 2a7:	83 ec 1c             	sub    $0x1c,%esp
 2aa:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2ad:	6a 01                	push   $0x1
 2af:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2b2:	52                   	push   %edx
 2b3:	50                   	push   %eax
 2b4:	e8 5b ff ff ff       	call   0x214
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	c9                   	leave  
 2bd:	c3                   	ret    
 2be:	55                   	push   %ebp
 2bf:	89 e5                	mov    %esp,%ebp
 2c1:	57                   	push   %edi
 2c2:	56                   	push   %esi
 2c3:	53                   	push   %ebx
 2c4:	83 ec 2c             	sub    $0x2c,%esp
 2c7:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2ca:	89 d6                	mov    %edx,%esi
 2cc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2d0:	0f 95 c2             	setne  %dl
 2d3:	89 f0                	mov    %esi,%eax
 2d5:	c1 e8 1f             	shr    $0x1f,%eax
 2d8:	84 c2                	test   %al,%dl
 2da:	74 42                	je     0x31e
 2dc:	f7 de                	neg    %esi
 2de:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2e5:	bb 00 00 00 00       	mov    $0x0,%ebx
 2ea:	89 f0                	mov    %esi,%eax
 2ec:	ba 00 00 00 00       	mov    $0x0,%edx
 2f1:	f7 f1                	div    %ecx
 2f3:	89 df                	mov    %ebx,%edi
 2f5:	83 c3 01             	add    $0x1,%ebx
 2f8:	0f b6 92 0c 06 00 00 	movzbl 0x60c(%edx),%edx
 2ff:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 303:	89 f2                	mov    %esi,%edx
 305:	89 c6                	mov    %eax,%esi
 307:	39 d1                	cmp    %edx,%ecx
 309:	76 df                	jbe    0x2ea
 30b:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 30f:	74 2f                	je     0x340
 311:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 316:	8d 5f 02             	lea    0x2(%edi),%ebx
 319:	8b 75 d0             	mov    -0x30(%ebp),%esi
 31c:	eb 15                	jmp    0x333
 31e:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 325:	eb be                	jmp    0x2e5
 327:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 32c:	89 f0                	mov    %esi,%eax
 32e:	e8 71 ff ff ff       	call   0x2a4
 333:	83 eb 01             	sub    $0x1,%ebx
 336:	79 ef                	jns    0x327
 338:	83 c4 2c             	add    $0x2c,%esp
 33b:	5b                   	pop    %ebx
 33c:	5e                   	pop    %esi
 33d:	5f                   	pop    %edi
 33e:	5d                   	pop    %ebp
 33f:	c3                   	ret    
 340:	8b 75 d0             	mov    -0x30(%ebp),%esi
 343:	eb ee                	jmp    0x333
 345:	f3 0f 1e fb          	endbr32 
 349:	55                   	push   %ebp
 34a:	89 e5                	mov    %esp,%ebp
 34c:	57                   	push   %edi
 34d:	56                   	push   %esi
 34e:	53                   	push   %ebx
 34f:	83 ec 1c             	sub    $0x1c,%esp
 352:	8d 45 10             	lea    0x10(%ebp),%eax
 355:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 358:	be 00 00 00 00       	mov    $0x0,%esi
 35d:	bb 00 00 00 00       	mov    $0x0,%ebx
 362:	eb 14                	jmp    0x378
 364:	89 fa                	mov    %edi,%edx
 366:	8b 45 08             	mov    0x8(%ebp),%eax
 369:	e8 36 ff ff ff       	call   0x2a4
 36e:	eb 05                	jmp    0x375
 370:	83 fe 25             	cmp    $0x25,%esi
 373:	74 25                	je     0x39a
 375:	83 c3 01             	add    $0x1,%ebx
 378:	8b 45 0c             	mov    0xc(%ebp),%eax
 37b:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 37f:	84 c0                	test   %al,%al
 381:	0f 84 23 01 00 00    	je     0x4aa
 387:	0f be f8             	movsbl %al,%edi
 38a:	0f b6 c0             	movzbl %al,%eax
 38d:	85 f6                	test   %esi,%esi
 38f:	75 df                	jne    0x370
 391:	83 f8 25             	cmp    $0x25,%eax
 394:	75 ce                	jne    0x364
 396:	89 c6                	mov    %eax,%esi
 398:	eb db                	jmp    0x375
 39a:	83 f8 64             	cmp    $0x64,%eax
 39d:	74 49                	je     0x3e8
 39f:	83 f8 78             	cmp    $0x78,%eax
 3a2:	0f 94 c1             	sete   %cl
 3a5:	83 f8 70             	cmp    $0x70,%eax
 3a8:	0f 94 c2             	sete   %dl
 3ab:	08 d1                	or     %dl,%cl
 3ad:	75 63                	jne    0x412
 3af:	83 f8 73             	cmp    $0x73,%eax
 3b2:	0f 84 84 00 00 00    	je     0x43c
 3b8:	83 f8 63             	cmp    $0x63,%eax
 3bb:	0f 84 b7 00 00 00    	je     0x478
 3c1:	83 f8 25             	cmp    $0x25,%eax
 3c4:	0f 84 cc 00 00 00    	je     0x496
 3ca:	ba 25 00 00 00       	mov    $0x25,%edx
 3cf:	8b 45 08             	mov    0x8(%ebp),%eax
 3d2:	e8 cd fe ff ff       	call   0x2a4
 3d7:	89 fa                	mov    %edi,%edx
 3d9:	8b 45 08             	mov    0x8(%ebp),%eax
 3dc:	e8 c3 fe ff ff       	call   0x2a4
 3e1:	be 00 00 00 00       	mov    $0x0,%esi
 3e6:	eb 8d                	jmp    0x375
 3e8:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3eb:	8b 17                	mov    (%edi),%edx
 3ed:	83 ec 0c             	sub    $0xc,%esp
 3f0:	6a 01                	push   $0x1
 3f2:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3f7:	8b 45 08             	mov    0x8(%ebp),%eax
 3fa:	e8 bf fe ff ff       	call   0x2be
 3ff:	83 c7 04             	add    $0x4,%edi
 402:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 405:	83 c4 10             	add    $0x10,%esp
 408:	be 00 00 00 00       	mov    $0x0,%esi
 40d:	e9 63 ff ff ff       	jmp    0x375
 412:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 415:	8b 17                	mov    (%edi),%edx
 417:	83 ec 0c             	sub    $0xc,%esp
 41a:	6a 00                	push   $0x0
 41c:	b9 10 00 00 00       	mov    $0x10,%ecx
 421:	8b 45 08             	mov    0x8(%ebp),%eax
 424:	e8 95 fe ff ff       	call   0x2be
 429:	83 c7 04             	add    $0x4,%edi
 42c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 42f:	83 c4 10             	add    $0x10,%esp
 432:	be 00 00 00 00       	mov    $0x0,%esi
 437:	e9 39 ff ff ff       	jmp    0x375
 43c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 43f:	8b 30                	mov    (%eax),%esi
 441:	83 c0 04             	add    $0x4,%eax
 444:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 447:	85 f6                	test   %esi,%esi
 449:	75 28                	jne    0x473
 44b:	be 04 06 00 00       	mov    $0x604,%esi
 450:	8b 7d 08             	mov    0x8(%ebp),%edi
 453:	eb 0d                	jmp    0x462
 455:	0f be d2             	movsbl %dl,%edx
 458:	89 f8                	mov    %edi,%eax
 45a:	e8 45 fe ff ff       	call   0x2a4
 45f:	83 c6 01             	add    $0x1,%esi
 462:	0f b6 16             	movzbl (%esi),%edx
 465:	84 d2                	test   %dl,%dl
 467:	75 ec                	jne    0x455
 469:	be 00 00 00 00       	mov    $0x0,%esi
 46e:	e9 02 ff ff ff       	jmp    0x375
 473:	8b 7d 08             	mov    0x8(%ebp),%edi
 476:	eb ea                	jmp    0x462
 478:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 47b:	0f be 17             	movsbl (%edi),%edx
 47e:	8b 45 08             	mov    0x8(%ebp),%eax
 481:	e8 1e fe ff ff       	call   0x2a4
 486:	83 c7 04             	add    $0x4,%edi
 489:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 48c:	be 00 00 00 00       	mov    $0x0,%esi
 491:	e9 df fe ff ff       	jmp    0x375
 496:	89 fa                	mov    %edi,%edx
 498:	8b 45 08             	mov    0x8(%ebp),%eax
 49b:	e8 04 fe ff ff       	call   0x2a4
 4a0:	be 00 00 00 00       	mov    $0x0,%esi
 4a5:	e9 cb fe ff ff       	jmp    0x375
 4aa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ad:	5b                   	pop    %ebx
 4ae:	5e                   	pop    %esi
 4af:	5f                   	pop    %edi
 4b0:	5d                   	pop    %ebp
 4b1:	c3                   	ret    
 4b2:	f3 0f 1e fb          	endbr32 
 4b6:	55                   	push   %ebp
 4b7:	89 e5                	mov    %esp,%ebp
 4b9:	57                   	push   %edi
 4ba:	56                   	push   %esi
 4bb:	53                   	push   %ebx
 4bc:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4bf:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4c2:	a1 ac 08 00 00       	mov    0x8ac,%eax
 4c7:	eb 02                	jmp    0x4cb
 4c9:	89 d0                	mov    %edx,%eax
 4cb:	39 c8                	cmp    %ecx,%eax
 4cd:	73 04                	jae    0x4d3
 4cf:	39 08                	cmp    %ecx,(%eax)
 4d1:	77 12                	ja     0x4e5
 4d3:	8b 10                	mov    (%eax),%edx
 4d5:	39 c2                	cmp    %eax,%edx
 4d7:	77 f0                	ja     0x4c9
 4d9:	39 c8                	cmp    %ecx,%eax
 4db:	72 08                	jb     0x4e5
 4dd:	39 ca                	cmp    %ecx,%edx
 4df:	77 04                	ja     0x4e5
 4e1:	89 d0                	mov    %edx,%eax
 4e3:	eb e6                	jmp    0x4cb
 4e5:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4e8:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4eb:	8b 10                	mov    (%eax),%edx
 4ed:	39 d7                	cmp    %edx,%edi
 4ef:	74 19                	je     0x50a
 4f1:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4f4:	8b 50 04             	mov    0x4(%eax),%edx
 4f7:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4fa:	39 ce                	cmp    %ecx,%esi
 4fc:	74 1b                	je     0x519
 4fe:	89 08                	mov    %ecx,(%eax)
 500:	a3 ac 08 00 00       	mov    %eax,0x8ac
 505:	5b                   	pop    %ebx
 506:	5e                   	pop    %esi
 507:	5f                   	pop    %edi
 508:	5d                   	pop    %ebp
 509:	c3                   	ret    
 50a:	03 72 04             	add    0x4(%edx),%esi
 50d:	89 73 fc             	mov    %esi,-0x4(%ebx)
 510:	8b 10                	mov    (%eax),%edx
 512:	8b 12                	mov    (%edx),%edx
 514:	89 53 f8             	mov    %edx,-0x8(%ebx)
 517:	eb db                	jmp    0x4f4
 519:	03 53 fc             	add    -0x4(%ebx),%edx
 51c:	89 50 04             	mov    %edx,0x4(%eax)
 51f:	8b 53 f8             	mov    -0x8(%ebx),%edx
 522:	89 10                	mov    %edx,(%eax)
 524:	eb da                	jmp    0x500
 526:	55                   	push   %ebp
 527:	89 e5                	mov    %esp,%ebp
 529:	53                   	push   %ebx
 52a:	83 ec 04             	sub    $0x4,%esp
 52d:	89 c3                	mov    %eax,%ebx
 52f:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 534:	77 05                	ja     0x53b
 536:	bb 00 10 00 00       	mov    $0x1000,%ebx
 53b:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 542:	83 ec 0c             	sub    $0xc,%esp
 545:	50                   	push   %eax
 546:	e8 31 fd ff ff       	call   0x27c
 54b:	83 c4 10             	add    $0x10,%esp
 54e:	83 f8 ff             	cmp    $0xffffffff,%eax
 551:	74 1c                	je     0x56f
 553:	89 58 04             	mov    %ebx,0x4(%eax)
 556:	83 c0 08             	add    $0x8,%eax
 559:	83 ec 0c             	sub    $0xc,%esp
 55c:	50                   	push   %eax
 55d:	e8 50 ff ff ff       	call   0x4b2
 562:	a1 ac 08 00 00       	mov    0x8ac,%eax
 567:	83 c4 10             	add    $0x10,%esp
 56a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 56d:	c9                   	leave  
 56e:	c3                   	ret    
 56f:	b8 00 00 00 00       	mov    $0x0,%eax
 574:	eb f4                	jmp    0x56a
 576:	f3 0f 1e fb          	endbr32 
 57a:	55                   	push   %ebp
 57b:	89 e5                	mov    %esp,%ebp
 57d:	53                   	push   %ebx
 57e:	83 ec 04             	sub    $0x4,%esp
 581:	8b 45 08             	mov    0x8(%ebp),%eax
 584:	8d 58 07             	lea    0x7(%eax),%ebx
 587:	c1 eb 03             	shr    $0x3,%ebx
 58a:	83 c3 01             	add    $0x1,%ebx
 58d:	8b 0d ac 08 00 00    	mov    0x8ac,%ecx
 593:	85 c9                	test   %ecx,%ecx
 595:	74 04                	je     0x59b
 597:	8b 01                	mov    (%ecx),%eax
 599:	eb 4b                	jmp    0x5e6
 59b:	c7 05 ac 08 00 00 b0 	movl   $0x8b0,0x8ac
 5a2:	08 00 00 
 5a5:	c7 05 b0 08 00 00 b0 	movl   $0x8b0,0x8b0
 5ac:	08 00 00 
 5af:	c7 05 b4 08 00 00 00 	movl   $0x0,0x8b4
 5b6:	00 00 00 
 5b9:	b9 b0 08 00 00       	mov    $0x8b0,%ecx
 5be:	eb d7                	jmp    0x597
 5c0:	74 1a                	je     0x5dc
 5c2:	29 da                	sub    %ebx,%edx
 5c4:	89 50 04             	mov    %edx,0x4(%eax)
 5c7:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5ca:	89 58 04             	mov    %ebx,0x4(%eax)
 5cd:	89 0d ac 08 00 00    	mov    %ecx,0x8ac
 5d3:	83 c0 08             	add    $0x8,%eax
 5d6:	83 c4 04             	add    $0x4,%esp
 5d9:	5b                   	pop    %ebx
 5da:	5d                   	pop    %ebp
 5db:	c3                   	ret    
 5dc:	8b 10                	mov    (%eax),%edx
 5de:	89 11                	mov    %edx,(%ecx)
 5e0:	eb eb                	jmp    0x5cd
 5e2:	89 c1                	mov    %eax,%ecx
 5e4:	8b 00                	mov    (%eax),%eax
 5e6:	8b 50 04             	mov    0x4(%eax),%edx
 5e9:	39 da                	cmp    %ebx,%edx
 5eb:	73 d3                	jae    0x5c0
 5ed:	39 05 ac 08 00 00    	cmp    %eax,0x8ac
 5f3:	75 ed                	jne    0x5e2
 5f5:	89 d8                	mov    %ebx,%eax
 5f7:	e8 2a ff ff ff       	call   0x526
 5fc:	85 c0                	test   %eax,%eax
 5fe:	75 e2                	jne    0x5e2
 600:	eb d4                	jmp    0x5d6
