
_kill:     formato del fichero elf32-i386


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
  1d:	83 fe 01             	cmp    $0x1,%esi
  20:	7e 07                	jle    0x29
  22:	bb 01 00 00 00       	mov    $0x1,%ebx
  27:	eb 34                	jmp    0x5d
  29:	83 ec 08             	sub    $0x8,%esp
  2c:	68 38 06 00 00       	push   $0x638
  31:	6a 02                	push   $0x2
  33:	e8 41 03 00 00       	call   0x379
  38:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3f:	e8 e4 01 00 00       	call   0x228
  44:	83 ec 0c             	sub    $0xc,%esp
  47:	ff 34 9f             	pushl  (%edi,%ebx,4)
  4a:	e8 6f 01 00 00       	call   0x1be
  4f:	89 04 24             	mov    %eax,(%esp)
  52:	e8 01 02 00 00       	call   0x258
  57:	83 c3 01             	add    $0x1,%ebx
  5a:	83 c4 10             	add    $0x10,%esp
  5d:	39 f3                	cmp    %esi,%ebx
  5f:	7c e3                	jl     0x44
  61:	83 ec 0c             	sub    $0xc,%esp
  64:	6a 00                	push   $0x0
  66:	e8 bd 01 00 00       	call   0x228
  6b:	f3 0f 1e fb          	endbr32 
  6f:	55                   	push   %ebp
  70:	89 e5                	mov    %esp,%ebp
  72:	56                   	push   %esi
  73:	53                   	push   %ebx
  74:	8b 75 08             	mov    0x8(%ebp),%esi
  77:	8b 55 0c             	mov    0xc(%ebp),%edx
  7a:	89 f0                	mov    %esi,%eax
  7c:	89 d1                	mov    %edx,%ecx
  7e:	83 c2 01             	add    $0x1,%edx
  81:	89 c3                	mov    %eax,%ebx
  83:	83 c0 01             	add    $0x1,%eax
  86:	0f b6 09             	movzbl (%ecx),%ecx
  89:	88 0b                	mov    %cl,(%ebx)
  8b:	84 c9                	test   %cl,%cl
  8d:	75 ed                	jne    0x7c
  8f:	89 f0                	mov    %esi,%eax
  91:	5b                   	pop    %ebx
  92:	5e                   	pop    %esi
  93:	5d                   	pop    %ebp
  94:	c3                   	ret    
  95:	f3 0f 1e fb          	endbr32 
  99:	55                   	push   %ebp
  9a:	89 e5                	mov    %esp,%ebp
  9c:	8b 4d 08             	mov    0x8(%ebp),%ecx
  9f:	8b 55 0c             	mov    0xc(%ebp),%edx
  a2:	0f b6 01             	movzbl (%ecx),%eax
  a5:	84 c0                	test   %al,%al
  a7:	74 0c                	je     0xb5
  a9:	3a 02                	cmp    (%edx),%al
  ab:	75 08                	jne    0xb5
  ad:	83 c1 01             	add    $0x1,%ecx
  b0:	83 c2 01             	add    $0x1,%edx
  b3:	eb ed                	jmp    0xa2
  b5:	0f b6 c0             	movzbl %al,%eax
  b8:	0f b6 12             	movzbl (%edx),%edx
  bb:	29 d0                	sub    %edx,%eax
  bd:	5d                   	pop    %ebp
  be:	c3                   	ret    
  bf:	f3 0f 1e fb          	endbr32 
  c3:	55                   	push   %ebp
  c4:	89 e5                	mov    %esp,%ebp
  c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
  c9:	b8 00 00 00 00       	mov    $0x0,%eax
  ce:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  d2:	74 05                	je     0xd9
  d4:	83 c0 01             	add    $0x1,%eax
  d7:	eb f5                	jmp    0xce
  d9:	5d                   	pop    %ebp
  da:	c3                   	ret    
  db:	f3 0f 1e fb          	endbr32 
  df:	55                   	push   %ebp
  e0:	89 e5                	mov    %esp,%ebp
  e2:	57                   	push   %edi
  e3:	8b 55 08             	mov    0x8(%ebp),%edx
  e6:	89 d7                	mov    %edx,%edi
  e8:	8b 4d 10             	mov    0x10(%ebp),%ecx
  eb:	8b 45 0c             	mov    0xc(%ebp),%eax
  ee:	fc                   	cld    
  ef:	f3 aa                	rep stos %al,%es:(%edi)
  f1:	89 d0                	mov    %edx,%eax
  f3:	5f                   	pop    %edi
  f4:	5d                   	pop    %ebp
  f5:	c3                   	ret    
  f6:	f3 0f 1e fb          	endbr32 
  fa:	55                   	push   %ebp
  fb:	89 e5                	mov    %esp,%ebp
  fd:	8b 45 08             	mov    0x8(%ebp),%eax
 100:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 104:	0f b6 10             	movzbl (%eax),%edx
 107:	84 d2                	test   %dl,%dl
 109:	74 09                	je     0x114
 10b:	38 ca                	cmp    %cl,%dl
 10d:	74 0a                	je     0x119
 10f:	83 c0 01             	add    $0x1,%eax
 112:	eb f0                	jmp    0x104
 114:	b8 00 00 00 00       	mov    $0x0,%eax
 119:	5d                   	pop    %ebp
 11a:	c3                   	ret    
 11b:	f3 0f 1e fb          	endbr32 
 11f:	55                   	push   %ebp
 120:	89 e5                	mov    %esp,%ebp
 122:	57                   	push   %edi
 123:	56                   	push   %esi
 124:	53                   	push   %ebx
 125:	83 ec 1c             	sub    $0x1c,%esp
 128:	8b 7d 08             	mov    0x8(%ebp),%edi
 12b:	bb 00 00 00 00       	mov    $0x0,%ebx
 130:	89 de                	mov    %ebx,%esi
 132:	83 c3 01             	add    $0x1,%ebx
 135:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 138:	7d 2e                	jge    0x168
 13a:	83 ec 04             	sub    $0x4,%esp
 13d:	6a 01                	push   $0x1
 13f:	8d 45 e7             	lea    -0x19(%ebp),%eax
 142:	50                   	push   %eax
 143:	6a 00                	push   $0x0
 145:	e8 f6 00 00 00       	call   0x240
 14a:	83 c4 10             	add    $0x10,%esp
 14d:	85 c0                	test   %eax,%eax
 14f:	7e 17                	jle    0x168
 151:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 155:	88 04 37             	mov    %al,(%edi,%esi,1)
 158:	3c 0a                	cmp    $0xa,%al
 15a:	0f 94 c2             	sete   %dl
 15d:	3c 0d                	cmp    $0xd,%al
 15f:	0f 94 c0             	sete   %al
 162:	08 c2                	or     %al,%dl
 164:	74 ca                	je     0x130
 166:	89 de                	mov    %ebx,%esi
 168:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 16c:	89 f8                	mov    %edi,%eax
 16e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 171:	5b                   	pop    %ebx
 172:	5e                   	pop    %esi
 173:	5f                   	pop    %edi
 174:	5d                   	pop    %ebp
 175:	c3                   	ret    
 176:	f3 0f 1e fb          	endbr32 
 17a:	55                   	push   %ebp
 17b:	89 e5                	mov    %esp,%ebp
 17d:	56                   	push   %esi
 17e:	53                   	push   %ebx
 17f:	83 ec 08             	sub    $0x8,%esp
 182:	6a 00                	push   $0x0
 184:	ff 75 08             	pushl  0x8(%ebp)
 187:	e8 dc 00 00 00       	call   0x268
 18c:	83 c4 10             	add    $0x10,%esp
 18f:	85 c0                	test   %eax,%eax
 191:	78 24                	js     0x1b7
 193:	89 c3                	mov    %eax,%ebx
 195:	83 ec 08             	sub    $0x8,%esp
 198:	ff 75 0c             	pushl  0xc(%ebp)
 19b:	50                   	push   %eax
 19c:	e8 df 00 00 00       	call   0x280
 1a1:	89 c6                	mov    %eax,%esi
 1a3:	89 1c 24             	mov    %ebx,(%esp)
 1a6:	e8 a5 00 00 00       	call   0x250
 1ab:	83 c4 10             	add    $0x10,%esp
 1ae:	89 f0                	mov    %esi,%eax
 1b0:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1b3:	5b                   	pop    %ebx
 1b4:	5e                   	pop    %esi
 1b5:	5d                   	pop    %ebp
 1b6:	c3                   	ret    
 1b7:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1bc:	eb f0                	jmp    0x1ae
 1be:	f3 0f 1e fb          	endbr32 
 1c2:	55                   	push   %ebp
 1c3:	89 e5                	mov    %esp,%ebp
 1c5:	53                   	push   %ebx
 1c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1c9:	ba 00 00 00 00       	mov    $0x0,%edx
 1ce:	0f b6 01             	movzbl (%ecx),%eax
 1d1:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1d4:	80 fb 09             	cmp    $0x9,%bl
 1d7:	77 12                	ja     0x1eb
 1d9:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1dc:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1df:	83 c1 01             	add    $0x1,%ecx
 1e2:	0f be c0             	movsbl %al,%eax
 1e5:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1e9:	eb e3                	jmp    0x1ce
 1eb:	89 d0                	mov    %edx,%eax
 1ed:	5b                   	pop    %ebx
 1ee:	5d                   	pop    %ebp
 1ef:	c3                   	ret    
 1f0:	f3 0f 1e fb          	endbr32 
 1f4:	55                   	push   %ebp
 1f5:	89 e5                	mov    %esp,%ebp
 1f7:	56                   	push   %esi
 1f8:	53                   	push   %ebx
 1f9:	8b 75 08             	mov    0x8(%ebp),%esi
 1fc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1ff:	8b 45 10             	mov    0x10(%ebp),%eax
 202:	89 f2                	mov    %esi,%edx
 204:	8d 58 ff             	lea    -0x1(%eax),%ebx
 207:	85 c0                	test   %eax,%eax
 209:	7e 0f                	jle    0x21a
 20b:	0f b6 01             	movzbl (%ecx),%eax
 20e:	88 02                	mov    %al,(%edx)
 210:	8d 49 01             	lea    0x1(%ecx),%ecx
 213:	8d 52 01             	lea    0x1(%edx),%edx
 216:	89 d8                	mov    %ebx,%eax
 218:	eb ea                	jmp    0x204
 21a:	89 f0                	mov    %esi,%eax
 21c:	5b                   	pop    %ebx
 21d:	5e                   	pop    %esi
 21e:	5d                   	pop    %ebp
 21f:	c3                   	ret    
 220:	b8 01 00 00 00       	mov    $0x1,%eax
 225:	cd 40                	int    $0x40
 227:	c3                   	ret    
 228:	b8 02 00 00 00       	mov    $0x2,%eax
 22d:	cd 40                	int    $0x40
 22f:	c3                   	ret    
 230:	b8 03 00 00 00       	mov    $0x3,%eax
 235:	cd 40                	int    $0x40
 237:	c3                   	ret    
 238:	b8 04 00 00 00       	mov    $0x4,%eax
 23d:	cd 40                	int    $0x40
 23f:	c3                   	ret    
 240:	b8 05 00 00 00       	mov    $0x5,%eax
 245:	cd 40                	int    $0x40
 247:	c3                   	ret    
 248:	b8 10 00 00 00       	mov    $0x10,%eax
 24d:	cd 40                	int    $0x40
 24f:	c3                   	ret    
 250:	b8 15 00 00 00       	mov    $0x15,%eax
 255:	cd 40                	int    $0x40
 257:	c3                   	ret    
 258:	b8 06 00 00 00       	mov    $0x6,%eax
 25d:	cd 40                	int    $0x40
 25f:	c3                   	ret    
 260:	b8 07 00 00 00       	mov    $0x7,%eax
 265:	cd 40                	int    $0x40
 267:	c3                   	ret    
 268:	b8 0f 00 00 00       	mov    $0xf,%eax
 26d:	cd 40                	int    $0x40
 26f:	c3                   	ret    
 270:	b8 11 00 00 00       	mov    $0x11,%eax
 275:	cd 40                	int    $0x40
 277:	c3                   	ret    
 278:	b8 12 00 00 00       	mov    $0x12,%eax
 27d:	cd 40                	int    $0x40
 27f:	c3                   	ret    
 280:	b8 08 00 00 00       	mov    $0x8,%eax
 285:	cd 40                	int    $0x40
 287:	c3                   	ret    
 288:	b8 13 00 00 00       	mov    $0x13,%eax
 28d:	cd 40                	int    $0x40
 28f:	c3                   	ret    
 290:	b8 14 00 00 00       	mov    $0x14,%eax
 295:	cd 40                	int    $0x40
 297:	c3                   	ret    
 298:	b8 09 00 00 00       	mov    $0x9,%eax
 29d:	cd 40                	int    $0x40
 29f:	c3                   	ret    
 2a0:	b8 0a 00 00 00       	mov    $0xa,%eax
 2a5:	cd 40                	int    $0x40
 2a7:	c3                   	ret    
 2a8:	b8 0b 00 00 00       	mov    $0xb,%eax
 2ad:	cd 40                	int    $0x40
 2af:	c3                   	ret    
 2b0:	b8 0c 00 00 00       	mov    $0xc,%eax
 2b5:	cd 40                	int    $0x40
 2b7:	c3                   	ret    
 2b8:	b8 0d 00 00 00       	mov    $0xd,%eax
 2bd:	cd 40                	int    $0x40
 2bf:	c3                   	ret    
 2c0:	b8 0e 00 00 00       	mov    $0xe,%eax
 2c5:	cd 40                	int    $0x40
 2c7:	c3                   	ret    
 2c8:	b8 16 00 00 00       	mov    $0x16,%eax
 2cd:	cd 40                	int    $0x40
 2cf:	c3                   	ret    
 2d0:	b8 17 00 00 00       	mov    $0x17,%eax
 2d5:	cd 40                	int    $0x40
 2d7:	c3                   	ret    
 2d8:	55                   	push   %ebp
 2d9:	89 e5                	mov    %esp,%ebp
 2db:	83 ec 1c             	sub    $0x1c,%esp
 2de:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2e1:	6a 01                	push   $0x1
 2e3:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2e6:	52                   	push   %edx
 2e7:	50                   	push   %eax
 2e8:	e8 5b ff ff ff       	call   0x248
 2ed:	83 c4 10             	add    $0x10,%esp
 2f0:	c9                   	leave  
 2f1:	c3                   	ret    
 2f2:	55                   	push   %ebp
 2f3:	89 e5                	mov    %esp,%ebp
 2f5:	57                   	push   %edi
 2f6:	56                   	push   %esi
 2f7:	53                   	push   %ebx
 2f8:	83 ec 2c             	sub    $0x2c,%esp
 2fb:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2fe:	89 d6                	mov    %edx,%esi
 300:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 304:	0f 95 c2             	setne  %dl
 307:	89 f0                	mov    %esi,%eax
 309:	c1 e8 1f             	shr    $0x1f,%eax
 30c:	84 c2                	test   %al,%dl
 30e:	74 42                	je     0x352
 310:	f7 de                	neg    %esi
 312:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 319:	bb 00 00 00 00       	mov    $0x0,%ebx
 31e:	89 f0                	mov    %esi,%eax
 320:	ba 00 00 00 00       	mov    $0x0,%edx
 325:	f7 f1                	div    %ecx
 327:	89 df                	mov    %ebx,%edi
 329:	83 c3 01             	add    $0x1,%ebx
 32c:	0f b6 92 54 06 00 00 	movzbl 0x654(%edx),%edx
 333:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 337:	89 f2                	mov    %esi,%edx
 339:	89 c6                	mov    %eax,%esi
 33b:	39 d1                	cmp    %edx,%ecx
 33d:	76 df                	jbe    0x31e
 33f:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 343:	74 2f                	je     0x374
 345:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 34a:	8d 5f 02             	lea    0x2(%edi),%ebx
 34d:	8b 75 d0             	mov    -0x30(%ebp),%esi
 350:	eb 15                	jmp    0x367
 352:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 359:	eb be                	jmp    0x319
 35b:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 360:	89 f0                	mov    %esi,%eax
 362:	e8 71 ff ff ff       	call   0x2d8
 367:	83 eb 01             	sub    $0x1,%ebx
 36a:	79 ef                	jns    0x35b
 36c:	83 c4 2c             	add    $0x2c,%esp
 36f:	5b                   	pop    %ebx
 370:	5e                   	pop    %esi
 371:	5f                   	pop    %edi
 372:	5d                   	pop    %ebp
 373:	c3                   	ret    
 374:	8b 75 d0             	mov    -0x30(%ebp),%esi
 377:	eb ee                	jmp    0x367
 379:	f3 0f 1e fb          	endbr32 
 37d:	55                   	push   %ebp
 37e:	89 e5                	mov    %esp,%ebp
 380:	57                   	push   %edi
 381:	56                   	push   %esi
 382:	53                   	push   %ebx
 383:	83 ec 1c             	sub    $0x1c,%esp
 386:	8d 45 10             	lea    0x10(%ebp),%eax
 389:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 38c:	be 00 00 00 00       	mov    $0x0,%esi
 391:	bb 00 00 00 00       	mov    $0x0,%ebx
 396:	eb 14                	jmp    0x3ac
 398:	89 fa                	mov    %edi,%edx
 39a:	8b 45 08             	mov    0x8(%ebp),%eax
 39d:	e8 36 ff ff ff       	call   0x2d8
 3a2:	eb 05                	jmp    0x3a9
 3a4:	83 fe 25             	cmp    $0x25,%esi
 3a7:	74 25                	je     0x3ce
 3a9:	83 c3 01             	add    $0x1,%ebx
 3ac:	8b 45 0c             	mov    0xc(%ebp),%eax
 3af:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3b3:	84 c0                	test   %al,%al
 3b5:	0f 84 23 01 00 00    	je     0x4de
 3bb:	0f be f8             	movsbl %al,%edi
 3be:	0f b6 c0             	movzbl %al,%eax
 3c1:	85 f6                	test   %esi,%esi
 3c3:	75 df                	jne    0x3a4
 3c5:	83 f8 25             	cmp    $0x25,%eax
 3c8:	75 ce                	jne    0x398
 3ca:	89 c6                	mov    %eax,%esi
 3cc:	eb db                	jmp    0x3a9
 3ce:	83 f8 64             	cmp    $0x64,%eax
 3d1:	74 49                	je     0x41c
 3d3:	83 f8 78             	cmp    $0x78,%eax
 3d6:	0f 94 c1             	sete   %cl
 3d9:	83 f8 70             	cmp    $0x70,%eax
 3dc:	0f 94 c2             	sete   %dl
 3df:	08 d1                	or     %dl,%cl
 3e1:	75 63                	jne    0x446
 3e3:	83 f8 73             	cmp    $0x73,%eax
 3e6:	0f 84 84 00 00 00    	je     0x470
 3ec:	83 f8 63             	cmp    $0x63,%eax
 3ef:	0f 84 b7 00 00 00    	je     0x4ac
 3f5:	83 f8 25             	cmp    $0x25,%eax
 3f8:	0f 84 cc 00 00 00    	je     0x4ca
 3fe:	ba 25 00 00 00       	mov    $0x25,%edx
 403:	8b 45 08             	mov    0x8(%ebp),%eax
 406:	e8 cd fe ff ff       	call   0x2d8
 40b:	89 fa                	mov    %edi,%edx
 40d:	8b 45 08             	mov    0x8(%ebp),%eax
 410:	e8 c3 fe ff ff       	call   0x2d8
 415:	be 00 00 00 00       	mov    $0x0,%esi
 41a:	eb 8d                	jmp    0x3a9
 41c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 41f:	8b 17                	mov    (%edi),%edx
 421:	83 ec 0c             	sub    $0xc,%esp
 424:	6a 01                	push   $0x1
 426:	b9 0a 00 00 00       	mov    $0xa,%ecx
 42b:	8b 45 08             	mov    0x8(%ebp),%eax
 42e:	e8 bf fe ff ff       	call   0x2f2
 433:	83 c7 04             	add    $0x4,%edi
 436:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 439:	83 c4 10             	add    $0x10,%esp
 43c:	be 00 00 00 00       	mov    $0x0,%esi
 441:	e9 63 ff ff ff       	jmp    0x3a9
 446:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 449:	8b 17                	mov    (%edi),%edx
 44b:	83 ec 0c             	sub    $0xc,%esp
 44e:	6a 00                	push   $0x0
 450:	b9 10 00 00 00       	mov    $0x10,%ecx
 455:	8b 45 08             	mov    0x8(%ebp),%eax
 458:	e8 95 fe ff ff       	call   0x2f2
 45d:	83 c7 04             	add    $0x4,%edi
 460:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 463:	83 c4 10             	add    $0x10,%esp
 466:	be 00 00 00 00       	mov    $0x0,%esi
 46b:	e9 39 ff ff ff       	jmp    0x3a9
 470:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 473:	8b 30                	mov    (%eax),%esi
 475:	83 c0 04             	add    $0x4,%eax
 478:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 47b:	85 f6                	test   %esi,%esi
 47d:	75 28                	jne    0x4a7
 47f:	be 4c 06 00 00       	mov    $0x64c,%esi
 484:	8b 7d 08             	mov    0x8(%ebp),%edi
 487:	eb 0d                	jmp    0x496
 489:	0f be d2             	movsbl %dl,%edx
 48c:	89 f8                	mov    %edi,%eax
 48e:	e8 45 fe ff ff       	call   0x2d8
 493:	83 c6 01             	add    $0x1,%esi
 496:	0f b6 16             	movzbl (%esi),%edx
 499:	84 d2                	test   %dl,%dl
 49b:	75 ec                	jne    0x489
 49d:	be 00 00 00 00       	mov    $0x0,%esi
 4a2:	e9 02 ff ff ff       	jmp    0x3a9
 4a7:	8b 7d 08             	mov    0x8(%ebp),%edi
 4aa:	eb ea                	jmp    0x496
 4ac:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4af:	0f be 17             	movsbl (%edi),%edx
 4b2:	8b 45 08             	mov    0x8(%ebp),%eax
 4b5:	e8 1e fe ff ff       	call   0x2d8
 4ba:	83 c7 04             	add    $0x4,%edi
 4bd:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4c0:	be 00 00 00 00       	mov    $0x0,%esi
 4c5:	e9 df fe ff ff       	jmp    0x3a9
 4ca:	89 fa                	mov    %edi,%edx
 4cc:	8b 45 08             	mov    0x8(%ebp),%eax
 4cf:	e8 04 fe ff ff       	call   0x2d8
 4d4:	be 00 00 00 00       	mov    $0x0,%esi
 4d9:	e9 cb fe ff ff       	jmp    0x3a9
 4de:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4e1:	5b                   	pop    %ebx
 4e2:	5e                   	pop    %esi
 4e3:	5f                   	pop    %edi
 4e4:	5d                   	pop    %ebp
 4e5:	c3                   	ret    
 4e6:	f3 0f 1e fb          	endbr32 
 4ea:	55                   	push   %ebp
 4eb:	89 e5                	mov    %esp,%ebp
 4ed:	57                   	push   %edi
 4ee:	56                   	push   %esi
 4ef:	53                   	push   %ebx
 4f0:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4f3:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4f6:	a1 00 09 00 00       	mov    0x900,%eax
 4fb:	eb 02                	jmp    0x4ff
 4fd:	89 d0                	mov    %edx,%eax
 4ff:	39 c8                	cmp    %ecx,%eax
 501:	73 04                	jae    0x507
 503:	39 08                	cmp    %ecx,(%eax)
 505:	77 12                	ja     0x519
 507:	8b 10                	mov    (%eax),%edx
 509:	39 c2                	cmp    %eax,%edx
 50b:	77 f0                	ja     0x4fd
 50d:	39 c8                	cmp    %ecx,%eax
 50f:	72 08                	jb     0x519
 511:	39 ca                	cmp    %ecx,%edx
 513:	77 04                	ja     0x519
 515:	89 d0                	mov    %edx,%eax
 517:	eb e6                	jmp    0x4ff
 519:	8b 73 fc             	mov    -0x4(%ebx),%esi
 51c:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 51f:	8b 10                	mov    (%eax),%edx
 521:	39 d7                	cmp    %edx,%edi
 523:	74 19                	je     0x53e
 525:	89 53 f8             	mov    %edx,-0x8(%ebx)
 528:	8b 50 04             	mov    0x4(%eax),%edx
 52b:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 52e:	39 ce                	cmp    %ecx,%esi
 530:	74 1b                	je     0x54d
 532:	89 08                	mov    %ecx,(%eax)
 534:	a3 00 09 00 00       	mov    %eax,0x900
 539:	5b                   	pop    %ebx
 53a:	5e                   	pop    %esi
 53b:	5f                   	pop    %edi
 53c:	5d                   	pop    %ebp
 53d:	c3                   	ret    
 53e:	03 72 04             	add    0x4(%edx),%esi
 541:	89 73 fc             	mov    %esi,-0x4(%ebx)
 544:	8b 10                	mov    (%eax),%edx
 546:	8b 12                	mov    (%edx),%edx
 548:	89 53 f8             	mov    %edx,-0x8(%ebx)
 54b:	eb db                	jmp    0x528
 54d:	03 53 fc             	add    -0x4(%ebx),%edx
 550:	89 50 04             	mov    %edx,0x4(%eax)
 553:	8b 53 f8             	mov    -0x8(%ebx),%edx
 556:	89 10                	mov    %edx,(%eax)
 558:	eb da                	jmp    0x534
 55a:	55                   	push   %ebp
 55b:	89 e5                	mov    %esp,%ebp
 55d:	53                   	push   %ebx
 55e:	83 ec 04             	sub    $0x4,%esp
 561:	89 c3                	mov    %eax,%ebx
 563:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 568:	77 05                	ja     0x56f
 56a:	bb 00 10 00 00       	mov    $0x1000,%ebx
 56f:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 576:	83 ec 0c             	sub    $0xc,%esp
 579:	50                   	push   %eax
 57a:	e8 31 fd ff ff       	call   0x2b0
 57f:	83 c4 10             	add    $0x10,%esp
 582:	83 f8 ff             	cmp    $0xffffffff,%eax
 585:	74 1c                	je     0x5a3
 587:	89 58 04             	mov    %ebx,0x4(%eax)
 58a:	83 c0 08             	add    $0x8,%eax
 58d:	83 ec 0c             	sub    $0xc,%esp
 590:	50                   	push   %eax
 591:	e8 50 ff ff ff       	call   0x4e6
 596:	a1 00 09 00 00       	mov    0x900,%eax
 59b:	83 c4 10             	add    $0x10,%esp
 59e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5a1:	c9                   	leave  
 5a2:	c3                   	ret    
 5a3:	b8 00 00 00 00       	mov    $0x0,%eax
 5a8:	eb f4                	jmp    0x59e
 5aa:	f3 0f 1e fb          	endbr32 
 5ae:	55                   	push   %ebp
 5af:	89 e5                	mov    %esp,%ebp
 5b1:	53                   	push   %ebx
 5b2:	83 ec 04             	sub    $0x4,%esp
 5b5:	8b 45 08             	mov    0x8(%ebp),%eax
 5b8:	8d 58 07             	lea    0x7(%eax),%ebx
 5bb:	c1 eb 03             	shr    $0x3,%ebx
 5be:	83 c3 01             	add    $0x1,%ebx
 5c1:	8b 0d 00 09 00 00    	mov    0x900,%ecx
 5c7:	85 c9                	test   %ecx,%ecx
 5c9:	74 04                	je     0x5cf
 5cb:	8b 01                	mov    (%ecx),%eax
 5cd:	eb 4b                	jmp    0x61a
 5cf:	c7 05 00 09 00 00 04 	movl   $0x904,0x900
 5d6:	09 00 00 
 5d9:	c7 05 04 09 00 00 04 	movl   $0x904,0x904
 5e0:	09 00 00 
 5e3:	c7 05 08 09 00 00 00 	movl   $0x0,0x908
 5ea:	00 00 00 
 5ed:	b9 04 09 00 00       	mov    $0x904,%ecx
 5f2:	eb d7                	jmp    0x5cb
 5f4:	74 1a                	je     0x610
 5f6:	29 da                	sub    %ebx,%edx
 5f8:	89 50 04             	mov    %edx,0x4(%eax)
 5fb:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5fe:	89 58 04             	mov    %ebx,0x4(%eax)
 601:	89 0d 00 09 00 00    	mov    %ecx,0x900
 607:	83 c0 08             	add    $0x8,%eax
 60a:	83 c4 04             	add    $0x4,%esp
 60d:	5b                   	pop    %ebx
 60e:	5d                   	pop    %ebp
 60f:	c3                   	ret    
 610:	8b 10                	mov    (%eax),%edx
 612:	89 11                	mov    %edx,(%ecx)
 614:	eb eb                	jmp    0x601
 616:	89 c1                	mov    %eax,%ecx
 618:	8b 00                	mov    (%eax),%eax
 61a:	8b 50 04             	mov    0x4(%eax),%edx
 61d:	39 da                	cmp    %ebx,%edx
 61f:	73 d3                	jae    0x5f4
 621:	39 05 00 09 00 00    	cmp    %eax,0x900
 627:	75 ed                	jne    0x616
 629:	89 d8                	mov    %ebx,%eax
 62b:	e8 2a ff ff ff       	call   0x55a
 630:	85 c0                	test   %eax,%eax
 632:	75 e2                	jne    0x616
 634:	eb d4                	jmp    0x60a
