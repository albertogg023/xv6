
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
  24:	ba 18 06 00 00       	mov    $0x618,%edx
  29:	52                   	push   %edx
  2a:	ff 34 87             	pushl  (%edi,%eax,4)
  2d:	68 1c 06 00 00       	push   $0x61c
  32:	6a 01                	push   $0x1
  34:	e8 22 03 00 00       	call   0x35b
  39:	83 c4 10             	add    $0x10,%esp
  3c:	89 d8                	mov    %ebx,%eax
  3e:	39 f0                	cmp    %esi,%eax
  40:	7d 0e                	jge    0x50
  42:	8d 58 01             	lea    0x1(%eax),%ebx
  45:	39 f3                	cmp    %esi,%ebx
  47:	7d db                	jge    0x24
  49:	ba 1a 06 00 00       	mov    $0x61a,%edx
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
 2ba:	55                   	push   %ebp
 2bb:	89 e5                	mov    %esp,%ebp
 2bd:	83 ec 1c             	sub    $0x1c,%esp
 2c0:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2c3:	6a 01                	push   $0x1
 2c5:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2c8:	52                   	push   %edx
 2c9:	50                   	push   %eax
 2ca:	e8 63 ff ff ff       	call   0x232
 2cf:	83 c4 10             	add    $0x10,%esp
 2d2:	c9                   	leave  
 2d3:	c3                   	ret    
 2d4:	55                   	push   %ebp
 2d5:	89 e5                	mov    %esp,%ebp
 2d7:	57                   	push   %edi
 2d8:	56                   	push   %esi
 2d9:	53                   	push   %ebx
 2da:	83 ec 2c             	sub    $0x2c,%esp
 2dd:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2e0:	89 d6                	mov    %edx,%esi
 2e2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2e6:	0f 95 c2             	setne  %dl
 2e9:	89 f0                	mov    %esi,%eax
 2eb:	c1 e8 1f             	shr    $0x1f,%eax
 2ee:	84 c2                	test   %al,%dl
 2f0:	74 42                	je     0x334
 2f2:	f7 de                	neg    %esi
 2f4:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2fb:	bb 00 00 00 00       	mov    $0x0,%ebx
 300:	89 f0                	mov    %esi,%eax
 302:	ba 00 00 00 00       	mov    $0x0,%edx
 307:	f7 f1                	div    %ecx
 309:	89 df                	mov    %ebx,%edi
 30b:	83 c3 01             	add    $0x1,%ebx
 30e:	0f b6 92 28 06 00 00 	movzbl 0x628(%edx),%edx
 315:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 319:	89 f2                	mov    %esi,%edx
 31b:	89 c6                	mov    %eax,%esi
 31d:	39 d1                	cmp    %edx,%ecx
 31f:	76 df                	jbe    0x300
 321:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 325:	74 2f                	je     0x356
 327:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 32c:	8d 5f 02             	lea    0x2(%edi),%ebx
 32f:	8b 75 d0             	mov    -0x30(%ebp),%esi
 332:	eb 15                	jmp    0x349
 334:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 33b:	eb be                	jmp    0x2fb
 33d:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 342:	89 f0                	mov    %esi,%eax
 344:	e8 71 ff ff ff       	call   0x2ba
 349:	83 eb 01             	sub    $0x1,%ebx
 34c:	79 ef                	jns    0x33d
 34e:	83 c4 2c             	add    $0x2c,%esp
 351:	5b                   	pop    %ebx
 352:	5e                   	pop    %esi
 353:	5f                   	pop    %edi
 354:	5d                   	pop    %ebp
 355:	c3                   	ret    
 356:	8b 75 d0             	mov    -0x30(%ebp),%esi
 359:	eb ee                	jmp    0x349
 35b:	f3 0f 1e fb          	endbr32 
 35f:	55                   	push   %ebp
 360:	89 e5                	mov    %esp,%ebp
 362:	57                   	push   %edi
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
 365:	83 ec 1c             	sub    $0x1c,%esp
 368:	8d 45 10             	lea    0x10(%ebp),%eax
 36b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 36e:	be 00 00 00 00       	mov    $0x0,%esi
 373:	bb 00 00 00 00       	mov    $0x0,%ebx
 378:	eb 14                	jmp    0x38e
 37a:	89 fa                	mov    %edi,%edx
 37c:	8b 45 08             	mov    0x8(%ebp),%eax
 37f:	e8 36 ff ff ff       	call   0x2ba
 384:	eb 05                	jmp    0x38b
 386:	83 fe 25             	cmp    $0x25,%esi
 389:	74 25                	je     0x3b0
 38b:	83 c3 01             	add    $0x1,%ebx
 38e:	8b 45 0c             	mov    0xc(%ebp),%eax
 391:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 395:	84 c0                	test   %al,%al
 397:	0f 84 23 01 00 00    	je     0x4c0
 39d:	0f be f8             	movsbl %al,%edi
 3a0:	0f b6 c0             	movzbl %al,%eax
 3a3:	85 f6                	test   %esi,%esi
 3a5:	75 df                	jne    0x386
 3a7:	83 f8 25             	cmp    $0x25,%eax
 3aa:	75 ce                	jne    0x37a
 3ac:	89 c6                	mov    %eax,%esi
 3ae:	eb db                	jmp    0x38b
 3b0:	83 f8 64             	cmp    $0x64,%eax
 3b3:	74 49                	je     0x3fe
 3b5:	83 f8 78             	cmp    $0x78,%eax
 3b8:	0f 94 c1             	sete   %cl
 3bb:	83 f8 70             	cmp    $0x70,%eax
 3be:	0f 94 c2             	sete   %dl
 3c1:	08 d1                	or     %dl,%cl
 3c3:	75 63                	jne    0x428
 3c5:	83 f8 73             	cmp    $0x73,%eax
 3c8:	0f 84 84 00 00 00    	je     0x452
 3ce:	83 f8 63             	cmp    $0x63,%eax
 3d1:	0f 84 b7 00 00 00    	je     0x48e
 3d7:	83 f8 25             	cmp    $0x25,%eax
 3da:	0f 84 cc 00 00 00    	je     0x4ac
 3e0:	ba 25 00 00 00       	mov    $0x25,%edx
 3e5:	8b 45 08             	mov    0x8(%ebp),%eax
 3e8:	e8 cd fe ff ff       	call   0x2ba
 3ed:	89 fa                	mov    %edi,%edx
 3ef:	8b 45 08             	mov    0x8(%ebp),%eax
 3f2:	e8 c3 fe ff ff       	call   0x2ba
 3f7:	be 00 00 00 00       	mov    $0x0,%esi
 3fc:	eb 8d                	jmp    0x38b
 3fe:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 401:	8b 17                	mov    (%edi),%edx
 403:	83 ec 0c             	sub    $0xc,%esp
 406:	6a 01                	push   $0x1
 408:	b9 0a 00 00 00       	mov    $0xa,%ecx
 40d:	8b 45 08             	mov    0x8(%ebp),%eax
 410:	e8 bf fe ff ff       	call   0x2d4
 415:	83 c7 04             	add    $0x4,%edi
 418:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 41b:	83 c4 10             	add    $0x10,%esp
 41e:	be 00 00 00 00       	mov    $0x0,%esi
 423:	e9 63 ff ff ff       	jmp    0x38b
 428:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 42b:	8b 17                	mov    (%edi),%edx
 42d:	83 ec 0c             	sub    $0xc,%esp
 430:	6a 00                	push   $0x0
 432:	b9 10 00 00 00       	mov    $0x10,%ecx
 437:	8b 45 08             	mov    0x8(%ebp),%eax
 43a:	e8 95 fe ff ff       	call   0x2d4
 43f:	83 c7 04             	add    $0x4,%edi
 442:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 445:	83 c4 10             	add    $0x10,%esp
 448:	be 00 00 00 00       	mov    $0x0,%esi
 44d:	e9 39 ff ff ff       	jmp    0x38b
 452:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 455:	8b 30                	mov    (%eax),%esi
 457:	83 c0 04             	add    $0x4,%eax
 45a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 45d:	85 f6                	test   %esi,%esi
 45f:	75 28                	jne    0x489
 461:	be 21 06 00 00       	mov    $0x621,%esi
 466:	8b 7d 08             	mov    0x8(%ebp),%edi
 469:	eb 0d                	jmp    0x478
 46b:	0f be d2             	movsbl %dl,%edx
 46e:	89 f8                	mov    %edi,%eax
 470:	e8 45 fe ff ff       	call   0x2ba
 475:	83 c6 01             	add    $0x1,%esi
 478:	0f b6 16             	movzbl (%esi),%edx
 47b:	84 d2                	test   %dl,%dl
 47d:	75 ec                	jne    0x46b
 47f:	be 00 00 00 00       	mov    $0x0,%esi
 484:	e9 02 ff ff ff       	jmp    0x38b
 489:	8b 7d 08             	mov    0x8(%ebp),%edi
 48c:	eb ea                	jmp    0x478
 48e:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 491:	0f be 17             	movsbl (%edi),%edx
 494:	8b 45 08             	mov    0x8(%ebp),%eax
 497:	e8 1e fe ff ff       	call   0x2ba
 49c:	83 c7 04             	add    $0x4,%edi
 49f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4a2:	be 00 00 00 00       	mov    $0x0,%esi
 4a7:	e9 df fe ff ff       	jmp    0x38b
 4ac:	89 fa                	mov    %edi,%edx
 4ae:	8b 45 08             	mov    0x8(%ebp),%eax
 4b1:	e8 04 fe ff ff       	call   0x2ba
 4b6:	be 00 00 00 00       	mov    $0x0,%esi
 4bb:	e9 cb fe ff ff       	jmp    0x38b
 4c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4c3:	5b                   	pop    %ebx
 4c4:	5e                   	pop    %esi
 4c5:	5f                   	pop    %edi
 4c6:	5d                   	pop    %ebp
 4c7:	c3                   	ret    
 4c8:	f3 0f 1e fb          	endbr32 
 4cc:	55                   	push   %ebp
 4cd:	89 e5                	mov    %esp,%ebp
 4cf:	57                   	push   %edi
 4d0:	56                   	push   %esi
 4d1:	53                   	push   %ebx
 4d2:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4d5:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4d8:	a1 d4 08 00 00       	mov    0x8d4,%eax
 4dd:	eb 02                	jmp    0x4e1
 4df:	89 d0                	mov    %edx,%eax
 4e1:	39 c8                	cmp    %ecx,%eax
 4e3:	73 04                	jae    0x4e9
 4e5:	39 08                	cmp    %ecx,(%eax)
 4e7:	77 12                	ja     0x4fb
 4e9:	8b 10                	mov    (%eax),%edx
 4eb:	39 c2                	cmp    %eax,%edx
 4ed:	77 f0                	ja     0x4df
 4ef:	39 c8                	cmp    %ecx,%eax
 4f1:	72 08                	jb     0x4fb
 4f3:	39 ca                	cmp    %ecx,%edx
 4f5:	77 04                	ja     0x4fb
 4f7:	89 d0                	mov    %edx,%eax
 4f9:	eb e6                	jmp    0x4e1
 4fb:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4fe:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 501:	8b 10                	mov    (%eax),%edx
 503:	39 d7                	cmp    %edx,%edi
 505:	74 19                	je     0x520
 507:	89 53 f8             	mov    %edx,-0x8(%ebx)
 50a:	8b 50 04             	mov    0x4(%eax),%edx
 50d:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 510:	39 ce                	cmp    %ecx,%esi
 512:	74 1b                	je     0x52f
 514:	89 08                	mov    %ecx,(%eax)
 516:	a3 d4 08 00 00       	mov    %eax,0x8d4
 51b:	5b                   	pop    %ebx
 51c:	5e                   	pop    %esi
 51d:	5f                   	pop    %edi
 51e:	5d                   	pop    %ebp
 51f:	c3                   	ret    
 520:	03 72 04             	add    0x4(%edx),%esi
 523:	89 73 fc             	mov    %esi,-0x4(%ebx)
 526:	8b 10                	mov    (%eax),%edx
 528:	8b 12                	mov    (%edx),%edx
 52a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 52d:	eb db                	jmp    0x50a
 52f:	03 53 fc             	add    -0x4(%ebx),%edx
 532:	89 50 04             	mov    %edx,0x4(%eax)
 535:	8b 53 f8             	mov    -0x8(%ebx),%edx
 538:	89 10                	mov    %edx,(%eax)
 53a:	eb da                	jmp    0x516
 53c:	55                   	push   %ebp
 53d:	89 e5                	mov    %esp,%ebp
 53f:	53                   	push   %ebx
 540:	83 ec 04             	sub    $0x4,%esp
 543:	89 c3                	mov    %eax,%ebx
 545:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 54a:	77 05                	ja     0x551
 54c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 551:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 558:	83 ec 0c             	sub    $0xc,%esp
 55b:	50                   	push   %eax
 55c:	e8 39 fd ff ff       	call   0x29a
 561:	83 c4 10             	add    $0x10,%esp
 564:	83 f8 ff             	cmp    $0xffffffff,%eax
 567:	74 1c                	je     0x585
 569:	89 58 04             	mov    %ebx,0x4(%eax)
 56c:	83 c0 08             	add    $0x8,%eax
 56f:	83 ec 0c             	sub    $0xc,%esp
 572:	50                   	push   %eax
 573:	e8 50 ff ff ff       	call   0x4c8
 578:	a1 d4 08 00 00       	mov    0x8d4,%eax
 57d:	83 c4 10             	add    $0x10,%esp
 580:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 583:	c9                   	leave  
 584:	c3                   	ret    
 585:	b8 00 00 00 00       	mov    $0x0,%eax
 58a:	eb f4                	jmp    0x580
 58c:	f3 0f 1e fb          	endbr32 
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	53                   	push   %ebx
 594:	83 ec 04             	sub    $0x4,%esp
 597:	8b 45 08             	mov    0x8(%ebp),%eax
 59a:	8d 58 07             	lea    0x7(%eax),%ebx
 59d:	c1 eb 03             	shr    $0x3,%ebx
 5a0:	83 c3 01             	add    $0x1,%ebx
 5a3:	8b 0d d4 08 00 00    	mov    0x8d4,%ecx
 5a9:	85 c9                	test   %ecx,%ecx
 5ab:	74 04                	je     0x5b1
 5ad:	8b 01                	mov    (%ecx),%eax
 5af:	eb 4b                	jmp    0x5fc
 5b1:	c7 05 d4 08 00 00 d8 	movl   $0x8d8,0x8d4
 5b8:	08 00 00 
 5bb:	c7 05 d8 08 00 00 d8 	movl   $0x8d8,0x8d8
 5c2:	08 00 00 
 5c5:	c7 05 dc 08 00 00 00 	movl   $0x0,0x8dc
 5cc:	00 00 00 
 5cf:	b9 d8 08 00 00       	mov    $0x8d8,%ecx
 5d4:	eb d7                	jmp    0x5ad
 5d6:	74 1a                	je     0x5f2
 5d8:	29 da                	sub    %ebx,%edx
 5da:	89 50 04             	mov    %edx,0x4(%eax)
 5dd:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5e0:	89 58 04             	mov    %ebx,0x4(%eax)
 5e3:	89 0d d4 08 00 00    	mov    %ecx,0x8d4
 5e9:	83 c0 08             	add    $0x8,%eax
 5ec:	83 c4 04             	add    $0x4,%esp
 5ef:	5b                   	pop    %ebx
 5f0:	5d                   	pop    %ebp
 5f1:	c3                   	ret    
 5f2:	8b 10                	mov    (%eax),%edx
 5f4:	89 11                	mov    %edx,(%ecx)
 5f6:	eb eb                	jmp    0x5e3
 5f8:	89 c1                	mov    %eax,%ecx
 5fa:	8b 00                	mov    (%eax),%eax
 5fc:	8b 50 04             	mov    0x4(%eax),%edx
 5ff:	39 da                	cmp    %ebx,%edx
 601:	73 d3                	jae    0x5d6
 603:	39 05 d4 08 00 00    	cmp    %eax,0x8d4
 609:	75 ed                	jne    0x5f8
 60b:	89 d8                	mov    %ebx,%eax
 60d:	e8 2a ff ff ff       	call   0x53c
 612:	85 c0                	test   %eax,%eax
 614:	75 e2                	jne    0x5f8
 616:	eb d4                	jmp    0x5ec
