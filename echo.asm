
_echo:     formato del fichero elf32-i386


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
  15:	83 ec 08             	sub    $0x8,%esp
  18:	8b 31                	mov    (%ecx),%esi
  1a:	8b 79 04             	mov    0x4(%ecx),%edi
  1d:	b8 01 00 00 00       	mov    $0x1,%eax
  22:	eb 1a                	jmp    0x3e
  24:	ba 20 06 00 00       	mov    $0x620,%edx
  29:	52                   	push   %edx
  2a:	ff 34 87             	pushl  (%edi,%eax,4)
  2d:	68 24 06 00 00       	push   $0x624
  32:	6a 01                	push   $0x1
  34:	e8 2a 03 00 00       	call   0x363
  39:	83 c4 10             	add    $0x10,%esp
  3c:	89 d8                	mov    %ebx,%eax
  3e:	39 f0                	cmp    %esi,%eax
  40:	7d 0e                	jge    0x50
  42:	8d 58 01             	lea    0x1(%eax),%ebx
  45:	39 f3                	cmp    %esi,%ebx
  47:	7d db                	jge    0x24
  49:	ba 22 06 00 00       	mov    $0x622,%edx
  4e:	eb d9                	jmp    0x29
  50:	e8 bd 01 00 00       	call   0x212
  55:	f3 0f 1e fb          	endbr32 
  59:	55                   	push   %ebp
  5a:	89 e5                	mov    %esp,%ebp
  5c:	56                   	push   %esi
  5d:	53                   	push   %ebx
  5e:	8b 75 08             	mov    0x8(%ebp),%esi
  61:	8b 55 0c             	mov    0xc(%ebp),%edx
  64:	89 f0                	mov    %esi,%eax
  66:	89 d1                	mov    %edx,%ecx
  68:	83 c2 01             	add    $0x1,%edx
  6b:	89 c3                	mov    %eax,%ebx
  6d:	83 c0 01             	add    $0x1,%eax
  70:	0f b6 09             	movzbl (%ecx),%ecx
  73:	88 0b                	mov    %cl,(%ebx)
  75:	84 c9                	test   %cl,%cl
  77:	75 ed                	jne    0x66
  79:	89 f0                	mov    %esi,%eax
  7b:	5b                   	pop    %ebx
  7c:	5e                   	pop    %esi
  7d:	5d                   	pop    %ebp
  7e:	c3                   	ret    
  7f:	f3 0f 1e fb          	endbr32 
  83:	55                   	push   %ebp
  84:	89 e5                	mov    %esp,%ebp
  86:	8b 4d 08             	mov    0x8(%ebp),%ecx
  89:	8b 55 0c             	mov    0xc(%ebp),%edx
  8c:	0f b6 01             	movzbl (%ecx),%eax
  8f:	84 c0                	test   %al,%al
  91:	74 0c                	je     0x9f
  93:	3a 02                	cmp    (%edx),%al
  95:	75 08                	jne    0x9f
  97:	83 c1 01             	add    $0x1,%ecx
  9a:	83 c2 01             	add    $0x1,%edx
  9d:	eb ed                	jmp    0x8c
  9f:	0f b6 c0             	movzbl %al,%eax
  a2:	0f b6 12             	movzbl (%edx),%edx
  a5:	29 d0                	sub    %edx,%eax
  a7:	5d                   	pop    %ebp
  a8:	c3                   	ret    
  a9:	f3 0f 1e fb          	endbr32 
  ad:	55                   	push   %ebp
  ae:	89 e5                	mov    %esp,%ebp
  b0:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b3:	b8 00 00 00 00       	mov    $0x0,%eax
  b8:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  bc:	74 05                	je     0xc3
  be:	83 c0 01             	add    $0x1,%eax
  c1:	eb f5                	jmp    0xb8
  c3:	5d                   	pop    %ebp
  c4:	c3                   	ret    
  c5:	f3 0f 1e fb          	endbr32 
  c9:	55                   	push   %ebp
  ca:	89 e5                	mov    %esp,%ebp
  cc:	57                   	push   %edi
  cd:	8b 55 08             	mov    0x8(%ebp),%edx
  d0:	89 d7                	mov    %edx,%edi
  d2:	8b 4d 10             	mov    0x10(%ebp),%ecx
  d5:	8b 45 0c             	mov    0xc(%ebp),%eax
  d8:	fc                   	cld    
  d9:	f3 aa                	rep stos %al,%es:(%edi)
  db:	89 d0                	mov    %edx,%eax
  dd:	5f                   	pop    %edi
  de:	5d                   	pop    %ebp
  df:	c3                   	ret    
  e0:	f3 0f 1e fb          	endbr32 
  e4:	55                   	push   %ebp
  e5:	89 e5                	mov    %esp,%ebp
  e7:	8b 45 08             	mov    0x8(%ebp),%eax
  ea:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  ee:	0f b6 10             	movzbl (%eax),%edx
  f1:	84 d2                	test   %dl,%dl
  f3:	74 09                	je     0xfe
  f5:	38 ca                	cmp    %cl,%dl
  f7:	74 0a                	je     0x103
  f9:	83 c0 01             	add    $0x1,%eax
  fc:	eb f0                	jmp    0xee
  fe:	b8 00 00 00 00       	mov    $0x0,%eax
 103:	5d                   	pop    %ebp
 104:	c3                   	ret    
 105:	f3 0f 1e fb          	endbr32 
 109:	55                   	push   %ebp
 10a:	89 e5                	mov    %esp,%ebp
 10c:	57                   	push   %edi
 10d:	56                   	push   %esi
 10e:	53                   	push   %ebx
 10f:	83 ec 1c             	sub    $0x1c,%esp
 112:	8b 7d 08             	mov    0x8(%ebp),%edi
 115:	bb 00 00 00 00       	mov    $0x0,%ebx
 11a:	89 de                	mov    %ebx,%esi
 11c:	83 c3 01             	add    $0x1,%ebx
 11f:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 122:	7d 2e                	jge    0x152
 124:	83 ec 04             	sub    $0x4,%esp
 127:	6a 01                	push   $0x1
 129:	8d 45 e7             	lea    -0x19(%ebp),%eax
 12c:	50                   	push   %eax
 12d:	6a 00                	push   $0x0
 12f:	e8 f6 00 00 00       	call   0x22a
 134:	83 c4 10             	add    $0x10,%esp
 137:	85 c0                	test   %eax,%eax
 139:	7e 17                	jle    0x152
 13b:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 13f:	88 04 37             	mov    %al,(%edi,%esi,1)
 142:	3c 0a                	cmp    $0xa,%al
 144:	0f 94 c2             	sete   %dl
 147:	3c 0d                	cmp    $0xd,%al
 149:	0f 94 c0             	sete   %al
 14c:	08 c2                	or     %al,%dl
 14e:	74 ca                	je     0x11a
 150:	89 de                	mov    %ebx,%esi
 152:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 156:	89 f8                	mov    %edi,%eax
 158:	8d 65 f4             	lea    -0xc(%ebp),%esp
 15b:	5b                   	pop    %ebx
 15c:	5e                   	pop    %esi
 15d:	5f                   	pop    %edi
 15e:	5d                   	pop    %ebp
 15f:	c3                   	ret    
 160:	f3 0f 1e fb          	endbr32 
 164:	55                   	push   %ebp
 165:	89 e5                	mov    %esp,%ebp
 167:	56                   	push   %esi
 168:	53                   	push   %ebx
 169:	83 ec 08             	sub    $0x8,%esp
 16c:	6a 00                	push   $0x0
 16e:	ff 75 08             	pushl  0x8(%ebp)
 171:	e8 dc 00 00 00       	call   0x252
 176:	83 c4 10             	add    $0x10,%esp
 179:	85 c0                	test   %eax,%eax
 17b:	78 24                	js     0x1a1
 17d:	89 c3                	mov    %eax,%ebx
 17f:	83 ec 08             	sub    $0x8,%esp
 182:	ff 75 0c             	pushl  0xc(%ebp)
 185:	50                   	push   %eax
 186:	e8 df 00 00 00       	call   0x26a
 18b:	89 c6                	mov    %eax,%esi
 18d:	89 1c 24             	mov    %ebx,(%esp)
 190:	e8 a5 00 00 00       	call   0x23a
 195:	83 c4 10             	add    $0x10,%esp
 198:	89 f0                	mov    %esi,%eax
 19a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 19d:	5b                   	pop    %ebx
 19e:	5e                   	pop    %esi
 19f:	5d                   	pop    %ebp
 1a0:	c3                   	ret    
 1a1:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1a6:	eb f0                	jmp    0x198
 1a8:	f3 0f 1e fb          	endbr32 
 1ac:	55                   	push   %ebp
 1ad:	89 e5                	mov    %esp,%ebp
 1af:	53                   	push   %ebx
 1b0:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b3:	ba 00 00 00 00       	mov    $0x0,%edx
 1b8:	0f b6 01             	movzbl (%ecx),%eax
 1bb:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1be:	80 fb 09             	cmp    $0x9,%bl
 1c1:	77 12                	ja     0x1d5
 1c3:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1c6:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1c9:	83 c1 01             	add    $0x1,%ecx
 1cc:	0f be c0             	movsbl %al,%eax
 1cf:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1d3:	eb e3                	jmp    0x1b8
 1d5:	89 d0                	mov    %edx,%eax
 1d7:	5b                   	pop    %ebx
 1d8:	5d                   	pop    %ebp
 1d9:	c3                   	ret    
 1da:	f3 0f 1e fb          	endbr32 
 1de:	55                   	push   %ebp
 1df:	89 e5                	mov    %esp,%ebp
 1e1:	56                   	push   %esi
 1e2:	53                   	push   %ebx
 1e3:	8b 75 08             	mov    0x8(%ebp),%esi
 1e6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1e9:	8b 45 10             	mov    0x10(%ebp),%eax
 1ec:	89 f2                	mov    %esi,%edx
 1ee:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1f1:	85 c0                	test   %eax,%eax
 1f3:	7e 0f                	jle    0x204
 1f5:	0f b6 01             	movzbl (%ecx),%eax
 1f8:	88 02                	mov    %al,(%edx)
 1fa:	8d 49 01             	lea    0x1(%ecx),%ecx
 1fd:	8d 52 01             	lea    0x1(%edx),%edx
 200:	89 d8                	mov    %ebx,%eax
 202:	eb ea                	jmp    0x1ee
 204:	89 f0                	mov    %esi,%eax
 206:	5b                   	pop    %ebx
 207:	5e                   	pop    %esi
 208:	5d                   	pop    %ebp
 209:	c3                   	ret    
 20a:	b8 01 00 00 00       	mov    $0x1,%eax
 20f:	cd 40                	int    $0x40
 211:	c3                   	ret    
 212:	b8 02 00 00 00       	mov    $0x2,%eax
 217:	cd 40                	int    $0x40
 219:	c3                   	ret    
 21a:	b8 03 00 00 00       	mov    $0x3,%eax
 21f:	cd 40                	int    $0x40
 221:	c3                   	ret    
 222:	b8 04 00 00 00       	mov    $0x4,%eax
 227:	cd 40                	int    $0x40
 229:	c3                   	ret    
 22a:	b8 05 00 00 00       	mov    $0x5,%eax
 22f:	cd 40                	int    $0x40
 231:	c3                   	ret    
 232:	b8 10 00 00 00       	mov    $0x10,%eax
 237:	cd 40                	int    $0x40
 239:	c3                   	ret    
 23a:	b8 15 00 00 00       	mov    $0x15,%eax
 23f:	cd 40                	int    $0x40
 241:	c3                   	ret    
 242:	b8 06 00 00 00       	mov    $0x6,%eax
 247:	cd 40                	int    $0x40
 249:	c3                   	ret    
 24a:	b8 07 00 00 00       	mov    $0x7,%eax
 24f:	cd 40                	int    $0x40
 251:	c3                   	ret    
 252:	b8 0f 00 00 00       	mov    $0xf,%eax
 257:	cd 40                	int    $0x40
 259:	c3                   	ret    
 25a:	b8 11 00 00 00       	mov    $0x11,%eax
 25f:	cd 40                	int    $0x40
 261:	c3                   	ret    
 262:	b8 12 00 00 00       	mov    $0x12,%eax
 267:	cd 40                	int    $0x40
 269:	c3                   	ret    
 26a:	b8 08 00 00 00       	mov    $0x8,%eax
 26f:	cd 40                	int    $0x40
 271:	c3                   	ret    
 272:	b8 13 00 00 00       	mov    $0x13,%eax
 277:	cd 40                	int    $0x40
 279:	c3                   	ret    
 27a:	b8 14 00 00 00       	mov    $0x14,%eax
 27f:	cd 40                	int    $0x40
 281:	c3                   	ret    
 282:	b8 09 00 00 00       	mov    $0x9,%eax
 287:	cd 40                	int    $0x40
 289:	c3                   	ret    
 28a:	b8 0a 00 00 00       	mov    $0xa,%eax
 28f:	cd 40                	int    $0x40
 291:	c3                   	ret    
 292:	b8 0b 00 00 00       	mov    $0xb,%eax
 297:	cd 40                	int    $0x40
 299:	c3                   	ret    
 29a:	b8 0c 00 00 00       	mov    $0xc,%eax
 29f:	cd 40                	int    $0x40
 2a1:	c3                   	ret    
 2a2:	b8 0d 00 00 00       	mov    $0xd,%eax
 2a7:	cd 40                	int    $0x40
 2a9:	c3                   	ret    
 2aa:	b8 0e 00 00 00       	mov    $0xe,%eax
 2af:	cd 40                	int    $0x40
 2b1:	c3                   	ret    
 2b2:	b8 16 00 00 00       	mov    $0x16,%eax
 2b7:	cd 40                	int    $0x40
 2b9:	c3                   	ret    
 2ba:	b8 17 00 00 00       	mov    $0x17,%eax
 2bf:	cd 40                	int    $0x40
 2c1:	c3                   	ret    
 2c2:	55                   	push   %ebp
 2c3:	89 e5                	mov    %esp,%ebp
 2c5:	83 ec 1c             	sub    $0x1c,%esp
 2c8:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2cb:	6a 01                	push   $0x1
 2cd:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2d0:	52                   	push   %edx
 2d1:	50                   	push   %eax
 2d2:	e8 5b ff ff ff       	call   0x232
 2d7:	83 c4 10             	add    $0x10,%esp
 2da:	c9                   	leave  
 2db:	c3                   	ret    
 2dc:	55                   	push   %ebp
 2dd:	89 e5                	mov    %esp,%ebp
 2df:	57                   	push   %edi
 2e0:	56                   	push   %esi
 2e1:	53                   	push   %ebx
 2e2:	83 ec 2c             	sub    $0x2c,%esp
 2e5:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2e8:	89 d6                	mov    %edx,%esi
 2ea:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2ee:	0f 95 c2             	setne  %dl
 2f1:	89 f0                	mov    %esi,%eax
 2f3:	c1 e8 1f             	shr    $0x1f,%eax
 2f6:	84 c2                	test   %al,%dl
 2f8:	74 42                	je     0x33c
 2fa:	f7 de                	neg    %esi
 2fc:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 303:	bb 00 00 00 00       	mov    $0x0,%ebx
 308:	89 f0                	mov    %esi,%eax
 30a:	ba 00 00 00 00       	mov    $0x0,%edx
 30f:	f7 f1                	div    %ecx
 311:	89 df                	mov    %ebx,%edi
 313:	83 c3 01             	add    $0x1,%ebx
 316:	0f b6 92 30 06 00 00 	movzbl 0x630(%edx),%edx
 31d:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 321:	89 f2                	mov    %esi,%edx
 323:	89 c6                	mov    %eax,%esi
 325:	39 d1                	cmp    %edx,%ecx
 327:	76 df                	jbe    0x308
 329:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 32d:	74 2f                	je     0x35e
 32f:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 334:	8d 5f 02             	lea    0x2(%edi),%ebx
 337:	8b 75 d0             	mov    -0x30(%ebp),%esi
 33a:	eb 15                	jmp    0x351
 33c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 343:	eb be                	jmp    0x303
 345:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 34a:	89 f0                	mov    %esi,%eax
 34c:	e8 71 ff ff ff       	call   0x2c2
 351:	83 eb 01             	sub    $0x1,%ebx
 354:	79 ef                	jns    0x345
 356:	83 c4 2c             	add    $0x2c,%esp
 359:	5b                   	pop    %ebx
 35a:	5e                   	pop    %esi
 35b:	5f                   	pop    %edi
 35c:	5d                   	pop    %ebp
 35d:	c3                   	ret    
 35e:	8b 75 d0             	mov    -0x30(%ebp),%esi
 361:	eb ee                	jmp    0x351
 363:	f3 0f 1e fb          	endbr32 
 367:	55                   	push   %ebp
 368:	89 e5                	mov    %esp,%ebp
 36a:	57                   	push   %edi
 36b:	56                   	push   %esi
 36c:	53                   	push   %ebx
 36d:	83 ec 1c             	sub    $0x1c,%esp
 370:	8d 45 10             	lea    0x10(%ebp),%eax
 373:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 376:	be 00 00 00 00       	mov    $0x0,%esi
 37b:	bb 00 00 00 00       	mov    $0x0,%ebx
 380:	eb 14                	jmp    0x396
 382:	89 fa                	mov    %edi,%edx
 384:	8b 45 08             	mov    0x8(%ebp),%eax
 387:	e8 36 ff ff ff       	call   0x2c2
 38c:	eb 05                	jmp    0x393
 38e:	83 fe 25             	cmp    $0x25,%esi
 391:	74 25                	je     0x3b8
 393:	83 c3 01             	add    $0x1,%ebx
 396:	8b 45 0c             	mov    0xc(%ebp),%eax
 399:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 39d:	84 c0                	test   %al,%al
 39f:	0f 84 23 01 00 00    	je     0x4c8
 3a5:	0f be f8             	movsbl %al,%edi
 3a8:	0f b6 c0             	movzbl %al,%eax
 3ab:	85 f6                	test   %esi,%esi
 3ad:	75 df                	jne    0x38e
 3af:	83 f8 25             	cmp    $0x25,%eax
 3b2:	75 ce                	jne    0x382
 3b4:	89 c6                	mov    %eax,%esi
 3b6:	eb db                	jmp    0x393
 3b8:	83 f8 64             	cmp    $0x64,%eax
 3bb:	74 49                	je     0x406
 3bd:	83 f8 78             	cmp    $0x78,%eax
 3c0:	0f 94 c1             	sete   %cl
 3c3:	83 f8 70             	cmp    $0x70,%eax
 3c6:	0f 94 c2             	sete   %dl
 3c9:	08 d1                	or     %dl,%cl
 3cb:	75 63                	jne    0x430
 3cd:	83 f8 73             	cmp    $0x73,%eax
 3d0:	0f 84 84 00 00 00    	je     0x45a
 3d6:	83 f8 63             	cmp    $0x63,%eax
 3d9:	0f 84 b7 00 00 00    	je     0x496
 3df:	83 f8 25             	cmp    $0x25,%eax
 3e2:	0f 84 cc 00 00 00    	je     0x4b4
 3e8:	ba 25 00 00 00       	mov    $0x25,%edx
 3ed:	8b 45 08             	mov    0x8(%ebp),%eax
 3f0:	e8 cd fe ff ff       	call   0x2c2
 3f5:	89 fa                	mov    %edi,%edx
 3f7:	8b 45 08             	mov    0x8(%ebp),%eax
 3fa:	e8 c3 fe ff ff       	call   0x2c2
 3ff:	be 00 00 00 00       	mov    $0x0,%esi
 404:	eb 8d                	jmp    0x393
 406:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 409:	8b 17                	mov    (%edi),%edx
 40b:	83 ec 0c             	sub    $0xc,%esp
 40e:	6a 01                	push   $0x1
 410:	b9 0a 00 00 00       	mov    $0xa,%ecx
 415:	8b 45 08             	mov    0x8(%ebp),%eax
 418:	e8 bf fe ff ff       	call   0x2dc
 41d:	83 c7 04             	add    $0x4,%edi
 420:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 423:	83 c4 10             	add    $0x10,%esp
 426:	be 00 00 00 00       	mov    $0x0,%esi
 42b:	e9 63 ff ff ff       	jmp    0x393
 430:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 433:	8b 17                	mov    (%edi),%edx
 435:	83 ec 0c             	sub    $0xc,%esp
 438:	6a 00                	push   $0x0
 43a:	b9 10 00 00 00       	mov    $0x10,%ecx
 43f:	8b 45 08             	mov    0x8(%ebp),%eax
 442:	e8 95 fe ff ff       	call   0x2dc
 447:	83 c7 04             	add    $0x4,%edi
 44a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 44d:	83 c4 10             	add    $0x10,%esp
 450:	be 00 00 00 00       	mov    $0x0,%esi
 455:	e9 39 ff ff ff       	jmp    0x393
 45a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 45d:	8b 30                	mov    (%eax),%esi
 45f:	83 c0 04             	add    $0x4,%eax
 462:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 465:	85 f6                	test   %esi,%esi
 467:	75 28                	jne    0x491
 469:	be 29 06 00 00       	mov    $0x629,%esi
 46e:	8b 7d 08             	mov    0x8(%ebp),%edi
 471:	eb 0d                	jmp    0x480
 473:	0f be d2             	movsbl %dl,%edx
 476:	89 f8                	mov    %edi,%eax
 478:	e8 45 fe ff ff       	call   0x2c2
 47d:	83 c6 01             	add    $0x1,%esi
 480:	0f b6 16             	movzbl (%esi),%edx
 483:	84 d2                	test   %dl,%dl
 485:	75 ec                	jne    0x473
 487:	be 00 00 00 00       	mov    $0x0,%esi
 48c:	e9 02 ff ff ff       	jmp    0x393
 491:	8b 7d 08             	mov    0x8(%ebp),%edi
 494:	eb ea                	jmp    0x480
 496:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 499:	0f be 17             	movsbl (%edi),%edx
 49c:	8b 45 08             	mov    0x8(%ebp),%eax
 49f:	e8 1e fe ff ff       	call   0x2c2
 4a4:	83 c7 04             	add    $0x4,%edi
 4a7:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4aa:	be 00 00 00 00       	mov    $0x0,%esi
 4af:	e9 df fe ff ff       	jmp    0x393
 4b4:	89 fa                	mov    %edi,%edx
 4b6:	8b 45 08             	mov    0x8(%ebp),%eax
 4b9:	e8 04 fe ff ff       	call   0x2c2
 4be:	be 00 00 00 00       	mov    $0x0,%esi
 4c3:	e9 cb fe ff ff       	jmp    0x393
 4c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4cb:	5b                   	pop    %ebx
 4cc:	5e                   	pop    %esi
 4cd:	5f                   	pop    %edi
 4ce:	5d                   	pop    %ebp
 4cf:	c3                   	ret    
 4d0:	f3 0f 1e fb          	endbr32 
 4d4:	55                   	push   %ebp
 4d5:	89 e5                	mov    %esp,%ebp
 4d7:	57                   	push   %edi
 4d8:	56                   	push   %esi
 4d9:	53                   	push   %ebx
 4da:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4dd:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4e0:	a1 dc 08 00 00       	mov    0x8dc,%eax
 4e5:	eb 02                	jmp    0x4e9
 4e7:	89 d0                	mov    %edx,%eax
 4e9:	39 c8                	cmp    %ecx,%eax
 4eb:	73 04                	jae    0x4f1
 4ed:	39 08                	cmp    %ecx,(%eax)
 4ef:	77 12                	ja     0x503
 4f1:	8b 10                	mov    (%eax),%edx
 4f3:	39 c2                	cmp    %eax,%edx
 4f5:	77 f0                	ja     0x4e7
 4f7:	39 c8                	cmp    %ecx,%eax
 4f9:	72 08                	jb     0x503
 4fb:	39 ca                	cmp    %ecx,%edx
 4fd:	77 04                	ja     0x503
 4ff:	89 d0                	mov    %edx,%eax
 501:	eb e6                	jmp    0x4e9
 503:	8b 73 fc             	mov    -0x4(%ebx),%esi
 506:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 509:	8b 10                	mov    (%eax),%edx
 50b:	39 d7                	cmp    %edx,%edi
 50d:	74 19                	je     0x528
 50f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 512:	8b 50 04             	mov    0x4(%eax),%edx
 515:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 518:	39 ce                	cmp    %ecx,%esi
 51a:	74 1b                	je     0x537
 51c:	89 08                	mov    %ecx,(%eax)
 51e:	a3 dc 08 00 00       	mov    %eax,0x8dc
 523:	5b                   	pop    %ebx
 524:	5e                   	pop    %esi
 525:	5f                   	pop    %edi
 526:	5d                   	pop    %ebp
 527:	c3                   	ret    
 528:	03 72 04             	add    0x4(%edx),%esi
 52b:	89 73 fc             	mov    %esi,-0x4(%ebx)
 52e:	8b 10                	mov    (%eax),%edx
 530:	8b 12                	mov    (%edx),%edx
 532:	89 53 f8             	mov    %edx,-0x8(%ebx)
 535:	eb db                	jmp    0x512
 537:	03 53 fc             	add    -0x4(%ebx),%edx
 53a:	89 50 04             	mov    %edx,0x4(%eax)
 53d:	8b 53 f8             	mov    -0x8(%ebx),%edx
 540:	89 10                	mov    %edx,(%eax)
 542:	eb da                	jmp    0x51e
 544:	55                   	push   %ebp
 545:	89 e5                	mov    %esp,%ebp
 547:	53                   	push   %ebx
 548:	83 ec 04             	sub    $0x4,%esp
 54b:	89 c3                	mov    %eax,%ebx
 54d:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 552:	77 05                	ja     0x559
 554:	bb 00 10 00 00       	mov    $0x1000,%ebx
 559:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 560:	83 ec 0c             	sub    $0xc,%esp
 563:	50                   	push   %eax
 564:	e8 31 fd ff ff       	call   0x29a
 569:	83 c4 10             	add    $0x10,%esp
 56c:	83 f8 ff             	cmp    $0xffffffff,%eax
 56f:	74 1c                	je     0x58d
 571:	89 58 04             	mov    %ebx,0x4(%eax)
 574:	83 c0 08             	add    $0x8,%eax
 577:	83 ec 0c             	sub    $0xc,%esp
 57a:	50                   	push   %eax
 57b:	e8 50 ff ff ff       	call   0x4d0
 580:	a1 dc 08 00 00       	mov    0x8dc,%eax
 585:	83 c4 10             	add    $0x10,%esp
 588:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 58b:	c9                   	leave  
 58c:	c3                   	ret    
 58d:	b8 00 00 00 00       	mov    $0x0,%eax
 592:	eb f4                	jmp    0x588
 594:	f3 0f 1e fb          	endbr32 
 598:	55                   	push   %ebp
 599:	89 e5                	mov    %esp,%ebp
 59b:	53                   	push   %ebx
 59c:	83 ec 04             	sub    $0x4,%esp
 59f:	8b 45 08             	mov    0x8(%ebp),%eax
 5a2:	8d 58 07             	lea    0x7(%eax),%ebx
 5a5:	c1 eb 03             	shr    $0x3,%ebx
 5a8:	83 c3 01             	add    $0x1,%ebx
 5ab:	8b 0d dc 08 00 00    	mov    0x8dc,%ecx
 5b1:	85 c9                	test   %ecx,%ecx
 5b3:	74 04                	je     0x5b9
 5b5:	8b 01                	mov    (%ecx),%eax
 5b7:	eb 4b                	jmp    0x604
 5b9:	c7 05 dc 08 00 00 e0 	movl   $0x8e0,0x8dc
 5c0:	08 00 00 
 5c3:	c7 05 e0 08 00 00 e0 	movl   $0x8e0,0x8e0
 5ca:	08 00 00 
 5cd:	c7 05 e4 08 00 00 00 	movl   $0x0,0x8e4
 5d4:	00 00 00 
 5d7:	b9 e0 08 00 00       	mov    $0x8e0,%ecx
 5dc:	eb d7                	jmp    0x5b5
 5de:	74 1a                	je     0x5fa
 5e0:	29 da                	sub    %ebx,%edx
 5e2:	89 50 04             	mov    %edx,0x4(%eax)
 5e5:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5e8:	89 58 04             	mov    %ebx,0x4(%eax)
 5eb:	89 0d dc 08 00 00    	mov    %ecx,0x8dc
 5f1:	83 c0 08             	add    $0x8,%eax
 5f4:	83 c4 04             	add    $0x4,%esp
 5f7:	5b                   	pop    %ebx
 5f8:	5d                   	pop    %ebp
 5f9:	c3                   	ret    
 5fa:	8b 10                	mov    (%eax),%edx
 5fc:	89 11                	mov    %edx,(%ecx)
 5fe:	eb eb                	jmp    0x5eb
 600:	89 c1                	mov    %eax,%ecx
 602:	8b 00                	mov    (%eax),%eax
 604:	8b 50 04             	mov    0x4(%eax),%edx
 607:	39 da                	cmp    %ebx,%edx
 609:	73 d3                	jae    0x5de
 60b:	39 05 dc 08 00 00    	cmp    %eax,0x8dc
 611:	75 ed                	jne    0x600
 613:	89 d8                	mov    %ebx,%eax
 615:	e8 2a ff ff ff       	call   0x544
 61a:	85 c0                	test   %eax,%eax
 61c:	75 e2                	jne    0x600
 61e:	eb d4                	jmp    0x5f4
