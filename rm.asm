
_rm:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	57                   	push   %edi
  12:	56                   	push   %esi
  13:	53                   	push   %ebx
  14:	51                   	push   %ecx
  15:	83 ec 18             	sub    $0x18,%esp
  18:	8b 39                	mov    (%ecx),%edi
  1a:	8b 41 04             	mov    0x4(%ecx),%eax
  1d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  20:	83 ff 01             	cmp    $0x1,%edi
  23:	7e 25                	jle    0x4a
  25:	bb 01 00 00 00       	mov    $0x1,%ebx
  2a:	39 fb                	cmp    %edi,%ebx
  2c:	7d 44                	jge    0x72
  2e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  31:	8d 34 98             	lea    (%eax,%ebx,4),%esi
  34:	83 ec 0c             	sub    $0xc,%esp
  37:	ff 36                	pushl  (%esi)
  39:	e8 46 02 00 00       	call   0x284
  3e:	83 c4 10             	add    $0x10,%esp
  41:	85 c0                	test   %eax,%eax
  43:	78 19                	js     0x5e
  45:	83 c3 01             	add    $0x1,%ebx
  48:	eb e0                	jmp    0x2a
  4a:	83 ec 08             	sub    $0x8,%esp
  4d:	68 3c 06 00 00       	push   $0x63c
  52:	6a 02                	push   $0x2
  54:	e8 24 03 00 00       	call   0x37d
  59:	e8 d6 01 00 00       	call   0x234
  5e:	83 ec 04             	sub    $0x4,%esp
  61:	ff 36                	pushl  (%esi)
  63:	68 50 06 00 00       	push   $0x650
  68:	6a 02                	push   $0x2
  6a:	e8 0e 03 00 00       	call   0x37d
  6f:	83 c4 10             	add    $0x10,%esp
  72:	e8 bd 01 00 00       	call   0x234
  77:	f3 0f 1e fb          	endbr32 
  7b:	55                   	push   %ebp
  7c:	89 e5                	mov    %esp,%ebp
  7e:	56                   	push   %esi
  7f:	53                   	push   %ebx
  80:	8b 75 08             	mov    0x8(%ebp),%esi
  83:	8b 55 0c             	mov    0xc(%ebp),%edx
  86:	89 f0                	mov    %esi,%eax
  88:	89 d1                	mov    %edx,%ecx
  8a:	83 c2 01             	add    $0x1,%edx
  8d:	89 c3                	mov    %eax,%ebx
  8f:	83 c0 01             	add    $0x1,%eax
  92:	0f b6 09             	movzbl (%ecx),%ecx
  95:	88 0b                	mov    %cl,(%ebx)
  97:	84 c9                	test   %cl,%cl
  99:	75 ed                	jne    0x88
  9b:	89 f0                	mov    %esi,%eax
  9d:	5b                   	pop    %ebx
  9e:	5e                   	pop    %esi
  9f:	5d                   	pop    %ebp
  a0:	c3                   	ret    
  a1:	f3 0f 1e fb          	endbr32 
  a5:	55                   	push   %ebp
  a6:	89 e5                	mov    %esp,%ebp
  a8:	8b 4d 08             	mov    0x8(%ebp),%ecx
  ab:	8b 55 0c             	mov    0xc(%ebp),%edx
  ae:	0f b6 01             	movzbl (%ecx),%eax
  b1:	84 c0                	test   %al,%al
  b3:	74 0c                	je     0xc1
  b5:	3a 02                	cmp    (%edx),%al
  b7:	75 08                	jne    0xc1
  b9:	83 c1 01             	add    $0x1,%ecx
  bc:	83 c2 01             	add    $0x1,%edx
  bf:	eb ed                	jmp    0xae
  c1:	0f b6 c0             	movzbl %al,%eax
  c4:	0f b6 12             	movzbl (%edx),%edx
  c7:	29 d0                	sub    %edx,%eax
  c9:	5d                   	pop    %ebp
  ca:	c3                   	ret    
  cb:	f3 0f 1e fb          	endbr32 
  cf:	55                   	push   %ebp
  d0:	89 e5                	mov    %esp,%ebp
  d2:	8b 4d 08             	mov    0x8(%ebp),%ecx
  d5:	b8 00 00 00 00       	mov    $0x0,%eax
  da:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  de:	74 05                	je     0xe5
  e0:	83 c0 01             	add    $0x1,%eax
  e3:	eb f5                	jmp    0xda
  e5:	5d                   	pop    %ebp
  e6:	c3                   	ret    
  e7:	f3 0f 1e fb          	endbr32 
  eb:	55                   	push   %ebp
  ec:	89 e5                	mov    %esp,%ebp
  ee:	57                   	push   %edi
  ef:	8b 55 08             	mov    0x8(%ebp),%edx
  f2:	89 d7                	mov    %edx,%edi
  f4:	8b 4d 10             	mov    0x10(%ebp),%ecx
  f7:	8b 45 0c             	mov    0xc(%ebp),%eax
  fa:	fc                   	cld    
  fb:	f3 aa                	rep stos %al,%es:(%edi)
  fd:	89 d0                	mov    %edx,%eax
  ff:	5f                   	pop    %edi
 100:	5d                   	pop    %ebp
 101:	c3                   	ret    
 102:	f3 0f 1e fb          	endbr32 
 106:	55                   	push   %ebp
 107:	89 e5                	mov    %esp,%ebp
 109:	8b 45 08             	mov    0x8(%ebp),%eax
 10c:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 110:	0f b6 10             	movzbl (%eax),%edx
 113:	84 d2                	test   %dl,%dl
 115:	74 09                	je     0x120
 117:	38 ca                	cmp    %cl,%dl
 119:	74 0a                	je     0x125
 11b:	83 c0 01             	add    $0x1,%eax
 11e:	eb f0                	jmp    0x110
 120:	b8 00 00 00 00       	mov    $0x0,%eax
 125:	5d                   	pop    %ebp
 126:	c3                   	ret    
 127:	f3 0f 1e fb          	endbr32 
 12b:	55                   	push   %ebp
 12c:	89 e5                	mov    %esp,%ebp
 12e:	57                   	push   %edi
 12f:	56                   	push   %esi
 130:	53                   	push   %ebx
 131:	83 ec 1c             	sub    $0x1c,%esp
 134:	8b 7d 08             	mov    0x8(%ebp),%edi
 137:	bb 00 00 00 00       	mov    $0x0,%ebx
 13c:	89 de                	mov    %ebx,%esi
 13e:	83 c3 01             	add    $0x1,%ebx
 141:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 144:	7d 2e                	jge    0x174
 146:	83 ec 04             	sub    $0x4,%esp
 149:	6a 01                	push   $0x1
 14b:	8d 45 e7             	lea    -0x19(%ebp),%eax
 14e:	50                   	push   %eax
 14f:	6a 00                	push   $0x0
 151:	e8 f6 00 00 00       	call   0x24c
 156:	83 c4 10             	add    $0x10,%esp
 159:	85 c0                	test   %eax,%eax
 15b:	7e 17                	jle    0x174
 15d:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 161:	88 04 37             	mov    %al,(%edi,%esi,1)
 164:	3c 0a                	cmp    $0xa,%al
 166:	0f 94 c2             	sete   %dl
 169:	3c 0d                	cmp    $0xd,%al
 16b:	0f 94 c0             	sete   %al
 16e:	08 c2                	or     %al,%dl
 170:	74 ca                	je     0x13c
 172:	89 de                	mov    %ebx,%esi
 174:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 178:	89 f8                	mov    %edi,%eax
 17a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 17d:	5b                   	pop    %ebx
 17e:	5e                   	pop    %esi
 17f:	5f                   	pop    %edi
 180:	5d                   	pop    %ebp
 181:	c3                   	ret    
 182:	f3 0f 1e fb          	endbr32 
 186:	55                   	push   %ebp
 187:	89 e5                	mov    %esp,%ebp
 189:	56                   	push   %esi
 18a:	53                   	push   %ebx
 18b:	83 ec 08             	sub    $0x8,%esp
 18e:	6a 00                	push   $0x0
 190:	ff 75 08             	pushl  0x8(%ebp)
 193:	e8 dc 00 00 00       	call   0x274
 198:	83 c4 10             	add    $0x10,%esp
 19b:	85 c0                	test   %eax,%eax
 19d:	78 24                	js     0x1c3
 19f:	89 c3                	mov    %eax,%ebx
 1a1:	83 ec 08             	sub    $0x8,%esp
 1a4:	ff 75 0c             	pushl  0xc(%ebp)
 1a7:	50                   	push   %eax
 1a8:	e8 df 00 00 00       	call   0x28c
 1ad:	89 c6                	mov    %eax,%esi
 1af:	89 1c 24             	mov    %ebx,(%esp)
 1b2:	e8 a5 00 00 00       	call   0x25c
 1b7:	83 c4 10             	add    $0x10,%esp
 1ba:	89 f0                	mov    %esi,%eax
 1bc:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1bf:	5b                   	pop    %ebx
 1c0:	5e                   	pop    %esi
 1c1:	5d                   	pop    %ebp
 1c2:	c3                   	ret    
 1c3:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1c8:	eb f0                	jmp    0x1ba
 1ca:	f3 0f 1e fb          	endbr32 
 1ce:	55                   	push   %ebp
 1cf:	89 e5                	mov    %esp,%ebp
 1d1:	53                   	push   %ebx
 1d2:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1d5:	ba 00 00 00 00       	mov    $0x0,%edx
 1da:	0f b6 01             	movzbl (%ecx),%eax
 1dd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1e0:	80 fb 09             	cmp    $0x9,%bl
 1e3:	77 12                	ja     0x1f7
 1e5:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1e8:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1eb:	83 c1 01             	add    $0x1,%ecx
 1ee:	0f be c0             	movsbl %al,%eax
 1f1:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1f5:	eb e3                	jmp    0x1da
 1f7:	89 d0                	mov    %edx,%eax
 1f9:	5b                   	pop    %ebx
 1fa:	5d                   	pop    %ebp
 1fb:	c3                   	ret    
 1fc:	f3 0f 1e fb          	endbr32 
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	56                   	push   %esi
 204:	53                   	push   %ebx
 205:	8b 75 08             	mov    0x8(%ebp),%esi
 208:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 20b:	8b 45 10             	mov    0x10(%ebp),%eax
 20e:	89 f2                	mov    %esi,%edx
 210:	8d 58 ff             	lea    -0x1(%eax),%ebx
 213:	85 c0                	test   %eax,%eax
 215:	7e 0f                	jle    0x226
 217:	0f b6 01             	movzbl (%ecx),%eax
 21a:	88 02                	mov    %al,(%edx)
 21c:	8d 49 01             	lea    0x1(%ecx),%ecx
 21f:	8d 52 01             	lea    0x1(%edx),%edx
 222:	89 d8                	mov    %ebx,%eax
 224:	eb ea                	jmp    0x210
 226:	89 f0                	mov    %esi,%eax
 228:	5b                   	pop    %ebx
 229:	5e                   	pop    %esi
 22a:	5d                   	pop    %ebp
 22b:	c3                   	ret    
 22c:	b8 01 00 00 00       	mov    $0x1,%eax
 231:	cd 40                	int    $0x40
 233:	c3                   	ret    
 234:	b8 02 00 00 00       	mov    $0x2,%eax
 239:	cd 40                	int    $0x40
 23b:	c3                   	ret    
 23c:	b8 03 00 00 00       	mov    $0x3,%eax
 241:	cd 40                	int    $0x40
 243:	c3                   	ret    
 244:	b8 04 00 00 00       	mov    $0x4,%eax
 249:	cd 40                	int    $0x40
 24b:	c3                   	ret    
 24c:	b8 05 00 00 00       	mov    $0x5,%eax
 251:	cd 40                	int    $0x40
 253:	c3                   	ret    
 254:	b8 10 00 00 00       	mov    $0x10,%eax
 259:	cd 40                	int    $0x40
 25b:	c3                   	ret    
 25c:	b8 15 00 00 00       	mov    $0x15,%eax
 261:	cd 40                	int    $0x40
 263:	c3                   	ret    
 264:	b8 06 00 00 00       	mov    $0x6,%eax
 269:	cd 40                	int    $0x40
 26b:	c3                   	ret    
 26c:	b8 07 00 00 00       	mov    $0x7,%eax
 271:	cd 40                	int    $0x40
 273:	c3                   	ret    
 274:	b8 0f 00 00 00       	mov    $0xf,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 11 00 00 00       	mov    $0x11,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 12 00 00 00       	mov    $0x12,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 08 00 00 00       	mov    $0x8,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 13 00 00 00       	mov    $0x13,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	b8 14 00 00 00       	mov    $0x14,%eax
 2a1:	cd 40                	int    $0x40
 2a3:	c3                   	ret    
 2a4:	b8 09 00 00 00       	mov    $0x9,%eax
 2a9:	cd 40                	int    $0x40
 2ab:	c3                   	ret    
 2ac:	b8 0a 00 00 00       	mov    $0xa,%eax
 2b1:	cd 40                	int    $0x40
 2b3:	c3                   	ret    
 2b4:	b8 0b 00 00 00       	mov    $0xb,%eax
 2b9:	cd 40                	int    $0x40
 2bb:	c3                   	ret    
 2bc:	b8 0c 00 00 00       	mov    $0xc,%eax
 2c1:	cd 40                	int    $0x40
 2c3:	c3                   	ret    
 2c4:	b8 0d 00 00 00       	mov    $0xd,%eax
 2c9:	cd 40                	int    $0x40
 2cb:	c3                   	ret    
 2cc:	b8 0e 00 00 00       	mov    $0xe,%eax
 2d1:	cd 40                	int    $0x40
 2d3:	c3                   	ret    
 2d4:	b8 16 00 00 00       	mov    $0x16,%eax
 2d9:	cd 40                	int    $0x40
 2db:	c3                   	ret    
 2dc:	55                   	push   %ebp
 2dd:	89 e5                	mov    %esp,%ebp
 2df:	83 ec 1c             	sub    $0x1c,%esp
 2e2:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2e5:	6a 01                	push   $0x1
 2e7:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2ea:	52                   	push   %edx
 2eb:	50                   	push   %eax
 2ec:	e8 63 ff ff ff       	call   0x254
 2f1:	83 c4 10             	add    $0x10,%esp
 2f4:	c9                   	leave  
 2f5:	c3                   	ret    
 2f6:	55                   	push   %ebp
 2f7:	89 e5                	mov    %esp,%ebp
 2f9:	57                   	push   %edi
 2fa:	56                   	push   %esi
 2fb:	53                   	push   %ebx
 2fc:	83 ec 2c             	sub    $0x2c,%esp
 2ff:	89 45 d0             	mov    %eax,-0x30(%ebp)
 302:	89 d6                	mov    %edx,%esi
 304:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 308:	0f 95 c2             	setne  %dl
 30b:	89 f0                	mov    %esi,%eax
 30d:	c1 e8 1f             	shr    $0x1f,%eax
 310:	84 c2                	test   %al,%dl
 312:	74 42                	je     0x356
 314:	f7 de                	neg    %esi
 316:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 31d:	bb 00 00 00 00       	mov    $0x0,%ebx
 322:	89 f0                	mov    %esi,%eax
 324:	ba 00 00 00 00       	mov    $0x0,%edx
 329:	f7 f1                	div    %ecx
 32b:	89 df                	mov    %ebx,%edi
 32d:	83 c3 01             	add    $0x1,%ebx
 330:	0f b6 92 70 06 00 00 	movzbl 0x670(%edx),%edx
 337:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 33b:	89 f2                	mov    %esi,%edx
 33d:	89 c6                	mov    %eax,%esi
 33f:	39 d1                	cmp    %edx,%ecx
 341:	76 df                	jbe    0x322
 343:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 347:	74 2f                	je     0x378
 349:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 34e:	8d 5f 02             	lea    0x2(%edi),%ebx
 351:	8b 75 d0             	mov    -0x30(%ebp),%esi
 354:	eb 15                	jmp    0x36b
 356:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 35d:	eb be                	jmp    0x31d
 35f:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 364:	89 f0                	mov    %esi,%eax
 366:	e8 71 ff ff ff       	call   0x2dc
 36b:	83 eb 01             	sub    $0x1,%ebx
 36e:	79 ef                	jns    0x35f
 370:	83 c4 2c             	add    $0x2c,%esp
 373:	5b                   	pop    %ebx
 374:	5e                   	pop    %esi
 375:	5f                   	pop    %edi
 376:	5d                   	pop    %ebp
 377:	c3                   	ret    
 378:	8b 75 d0             	mov    -0x30(%ebp),%esi
 37b:	eb ee                	jmp    0x36b
 37d:	f3 0f 1e fb          	endbr32 
 381:	55                   	push   %ebp
 382:	89 e5                	mov    %esp,%ebp
 384:	57                   	push   %edi
 385:	56                   	push   %esi
 386:	53                   	push   %ebx
 387:	83 ec 1c             	sub    $0x1c,%esp
 38a:	8d 45 10             	lea    0x10(%ebp),%eax
 38d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 390:	be 00 00 00 00       	mov    $0x0,%esi
 395:	bb 00 00 00 00       	mov    $0x0,%ebx
 39a:	eb 14                	jmp    0x3b0
 39c:	89 fa                	mov    %edi,%edx
 39e:	8b 45 08             	mov    0x8(%ebp),%eax
 3a1:	e8 36 ff ff ff       	call   0x2dc
 3a6:	eb 05                	jmp    0x3ad
 3a8:	83 fe 25             	cmp    $0x25,%esi
 3ab:	74 25                	je     0x3d2
 3ad:	83 c3 01             	add    $0x1,%ebx
 3b0:	8b 45 0c             	mov    0xc(%ebp),%eax
 3b3:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3b7:	84 c0                	test   %al,%al
 3b9:	0f 84 23 01 00 00    	je     0x4e2
 3bf:	0f be f8             	movsbl %al,%edi
 3c2:	0f b6 c0             	movzbl %al,%eax
 3c5:	85 f6                	test   %esi,%esi
 3c7:	75 df                	jne    0x3a8
 3c9:	83 f8 25             	cmp    $0x25,%eax
 3cc:	75 ce                	jne    0x39c
 3ce:	89 c6                	mov    %eax,%esi
 3d0:	eb db                	jmp    0x3ad
 3d2:	83 f8 64             	cmp    $0x64,%eax
 3d5:	74 49                	je     0x420
 3d7:	83 f8 78             	cmp    $0x78,%eax
 3da:	0f 94 c1             	sete   %cl
 3dd:	83 f8 70             	cmp    $0x70,%eax
 3e0:	0f 94 c2             	sete   %dl
 3e3:	08 d1                	or     %dl,%cl
 3e5:	75 63                	jne    0x44a
 3e7:	83 f8 73             	cmp    $0x73,%eax
 3ea:	0f 84 84 00 00 00    	je     0x474
 3f0:	83 f8 63             	cmp    $0x63,%eax
 3f3:	0f 84 b7 00 00 00    	je     0x4b0
 3f9:	83 f8 25             	cmp    $0x25,%eax
 3fc:	0f 84 cc 00 00 00    	je     0x4ce
 402:	ba 25 00 00 00       	mov    $0x25,%edx
 407:	8b 45 08             	mov    0x8(%ebp),%eax
 40a:	e8 cd fe ff ff       	call   0x2dc
 40f:	89 fa                	mov    %edi,%edx
 411:	8b 45 08             	mov    0x8(%ebp),%eax
 414:	e8 c3 fe ff ff       	call   0x2dc
 419:	be 00 00 00 00       	mov    $0x0,%esi
 41e:	eb 8d                	jmp    0x3ad
 420:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 423:	8b 17                	mov    (%edi),%edx
 425:	83 ec 0c             	sub    $0xc,%esp
 428:	6a 01                	push   $0x1
 42a:	b9 0a 00 00 00       	mov    $0xa,%ecx
 42f:	8b 45 08             	mov    0x8(%ebp),%eax
 432:	e8 bf fe ff ff       	call   0x2f6
 437:	83 c7 04             	add    $0x4,%edi
 43a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 43d:	83 c4 10             	add    $0x10,%esp
 440:	be 00 00 00 00       	mov    $0x0,%esi
 445:	e9 63 ff ff ff       	jmp    0x3ad
 44a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 44d:	8b 17                	mov    (%edi),%edx
 44f:	83 ec 0c             	sub    $0xc,%esp
 452:	6a 00                	push   $0x0
 454:	b9 10 00 00 00       	mov    $0x10,%ecx
 459:	8b 45 08             	mov    0x8(%ebp),%eax
 45c:	e8 95 fe ff ff       	call   0x2f6
 461:	83 c7 04             	add    $0x4,%edi
 464:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 467:	83 c4 10             	add    $0x10,%esp
 46a:	be 00 00 00 00       	mov    $0x0,%esi
 46f:	e9 39 ff ff ff       	jmp    0x3ad
 474:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 477:	8b 30                	mov    (%eax),%esi
 479:	83 c0 04             	add    $0x4,%eax
 47c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 47f:	85 f6                	test   %esi,%esi
 481:	75 28                	jne    0x4ab
 483:	be 69 06 00 00       	mov    $0x669,%esi
 488:	8b 7d 08             	mov    0x8(%ebp),%edi
 48b:	eb 0d                	jmp    0x49a
 48d:	0f be d2             	movsbl %dl,%edx
 490:	89 f8                	mov    %edi,%eax
 492:	e8 45 fe ff ff       	call   0x2dc
 497:	83 c6 01             	add    $0x1,%esi
 49a:	0f b6 16             	movzbl (%esi),%edx
 49d:	84 d2                	test   %dl,%dl
 49f:	75 ec                	jne    0x48d
 4a1:	be 00 00 00 00       	mov    $0x0,%esi
 4a6:	e9 02 ff ff ff       	jmp    0x3ad
 4ab:	8b 7d 08             	mov    0x8(%ebp),%edi
 4ae:	eb ea                	jmp    0x49a
 4b0:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4b3:	0f be 17             	movsbl (%edi),%edx
 4b6:	8b 45 08             	mov    0x8(%ebp),%eax
 4b9:	e8 1e fe ff ff       	call   0x2dc
 4be:	83 c7 04             	add    $0x4,%edi
 4c1:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4c4:	be 00 00 00 00       	mov    $0x0,%esi
 4c9:	e9 df fe ff ff       	jmp    0x3ad
 4ce:	89 fa                	mov    %edi,%edx
 4d0:	8b 45 08             	mov    0x8(%ebp),%eax
 4d3:	e8 04 fe ff ff       	call   0x2dc
 4d8:	be 00 00 00 00       	mov    $0x0,%esi
 4dd:	e9 cb fe ff ff       	jmp    0x3ad
 4e2:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4e5:	5b                   	pop    %ebx
 4e6:	5e                   	pop    %esi
 4e7:	5f                   	pop    %edi
 4e8:	5d                   	pop    %ebp
 4e9:	c3                   	ret    
 4ea:	f3 0f 1e fb          	endbr32 
 4ee:	55                   	push   %ebp
 4ef:	89 e5                	mov    %esp,%ebp
 4f1:	57                   	push   %edi
 4f2:	56                   	push   %esi
 4f3:	53                   	push   %ebx
 4f4:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4f7:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4fa:	a1 1c 09 00 00       	mov    0x91c,%eax
 4ff:	eb 02                	jmp    0x503
 501:	89 d0                	mov    %edx,%eax
 503:	39 c8                	cmp    %ecx,%eax
 505:	73 04                	jae    0x50b
 507:	39 08                	cmp    %ecx,(%eax)
 509:	77 12                	ja     0x51d
 50b:	8b 10                	mov    (%eax),%edx
 50d:	39 c2                	cmp    %eax,%edx
 50f:	77 f0                	ja     0x501
 511:	39 c8                	cmp    %ecx,%eax
 513:	72 08                	jb     0x51d
 515:	39 ca                	cmp    %ecx,%edx
 517:	77 04                	ja     0x51d
 519:	89 d0                	mov    %edx,%eax
 51b:	eb e6                	jmp    0x503
 51d:	8b 73 fc             	mov    -0x4(%ebx),%esi
 520:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 523:	8b 10                	mov    (%eax),%edx
 525:	39 d7                	cmp    %edx,%edi
 527:	74 19                	je     0x542
 529:	89 53 f8             	mov    %edx,-0x8(%ebx)
 52c:	8b 50 04             	mov    0x4(%eax),%edx
 52f:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 532:	39 ce                	cmp    %ecx,%esi
 534:	74 1b                	je     0x551
 536:	89 08                	mov    %ecx,(%eax)
 538:	a3 1c 09 00 00       	mov    %eax,0x91c
 53d:	5b                   	pop    %ebx
 53e:	5e                   	pop    %esi
 53f:	5f                   	pop    %edi
 540:	5d                   	pop    %ebp
 541:	c3                   	ret    
 542:	03 72 04             	add    0x4(%edx),%esi
 545:	89 73 fc             	mov    %esi,-0x4(%ebx)
 548:	8b 10                	mov    (%eax),%edx
 54a:	8b 12                	mov    (%edx),%edx
 54c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 54f:	eb db                	jmp    0x52c
 551:	03 53 fc             	add    -0x4(%ebx),%edx
 554:	89 50 04             	mov    %edx,0x4(%eax)
 557:	8b 53 f8             	mov    -0x8(%ebx),%edx
 55a:	89 10                	mov    %edx,(%eax)
 55c:	eb da                	jmp    0x538
 55e:	55                   	push   %ebp
 55f:	89 e5                	mov    %esp,%ebp
 561:	53                   	push   %ebx
 562:	83 ec 04             	sub    $0x4,%esp
 565:	89 c3                	mov    %eax,%ebx
 567:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 56c:	77 05                	ja     0x573
 56e:	bb 00 10 00 00       	mov    $0x1000,%ebx
 573:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 57a:	83 ec 0c             	sub    $0xc,%esp
 57d:	50                   	push   %eax
 57e:	e8 39 fd ff ff       	call   0x2bc
 583:	83 c4 10             	add    $0x10,%esp
 586:	83 f8 ff             	cmp    $0xffffffff,%eax
 589:	74 1c                	je     0x5a7
 58b:	89 58 04             	mov    %ebx,0x4(%eax)
 58e:	83 c0 08             	add    $0x8,%eax
 591:	83 ec 0c             	sub    $0xc,%esp
 594:	50                   	push   %eax
 595:	e8 50 ff ff ff       	call   0x4ea
 59a:	a1 1c 09 00 00       	mov    0x91c,%eax
 59f:	83 c4 10             	add    $0x10,%esp
 5a2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5a5:	c9                   	leave  
 5a6:	c3                   	ret    
 5a7:	b8 00 00 00 00       	mov    $0x0,%eax
 5ac:	eb f4                	jmp    0x5a2
 5ae:	f3 0f 1e fb          	endbr32 
 5b2:	55                   	push   %ebp
 5b3:	89 e5                	mov    %esp,%ebp
 5b5:	53                   	push   %ebx
 5b6:	83 ec 04             	sub    $0x4,%esp
 5b9:	8b 45 08             	mov    0x8(%ebp),%eax
 5bc:	8d 58 07             	lea    0x7(%eax),%ebx
 5bf:	c1 eb 03             	shr    $0x3,%ebx
 5c2:	83 c3 01             	add    $0x1,%ebx
 5c5:	8b 0d 1c 09 00 00    	mov    0x91c,%ecx
 5cb:	85 c9                	test   %ecx,%ecx
 5cd:	74 04                	je     0x5d3
 5cf:	8b 01                	mov    (%ecx),%eax
 5d1:	eb 4b                	jmp    0x61e
 5d3:	c7 05 1c 09 00 00 20 	movl   $0x920,0x91c
 5da:	09 00 00 
 5dd:	c7 05 20 09 00 00 20 	movl   $0x920,0x920
 5e4:	09 00 00 
 5e7:	c7 05 24 09 00 00 00 	movl   $0x0,0x924
 5ee:	00 00 00 
 5f1:	b9 20 09 00 00       	mov    $0x920,%ecx
 5f6:	eb d7                	jmp    0x5cf
 5f8:	74 1a                	je     0x614
 5fa:	29 da                	sub    %ebx,%edx
 5fc:	89 50 04             	mov    %edx,0x4(%eax)
 5ff:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 602:	89 58 04             	mov    %ebx,0x4(%eax)
 605:	89 0d 1c 09 00 00    	mov    %ecx,0x91c
 60b:	83 c0 08             	add    $0x8,%eax
 60e:	83 c4 04             	add    $0x4,%esp
 611:	5b                   	pop    %ebx
 612:	5d                   	pop    %ebp
 613:	c3                   	ret    
 614:	8b 10                	mov    (%eax),%edx
 616:	89 11                	mov    %edx,(%ecx)
 618:	eb eb                	jmp    0x605
 61a:	89 c1                	mov    %eax,%ecx
 61c:	8b 00                	mov    (%eax),%eax
 61e:	8b 50 04             	mov    0x4(%eax),%edx
 621:	39 da                	cmp    %ebx,%edx
 623:	73 d3                	jae    0x5f8
 625:	39 05 1c 09 00 00    	cmp    %eax,0x91c
 62b:	75 ed                	jne    0x61a
 62d:	89 d8                	mov    %ebx,%eax
 62f:	e8 2a ff ff ff       	call   0x55e
 634:	85 c0                	test   %eax,%eax
 636:	75 e2                	jne    0x61a
 638:	eb d4                	jmp    0x60e
