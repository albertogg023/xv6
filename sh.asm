
_sh:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	56                   	push   %esi
   8:	53                   	push   %ebx
   9:	8b 5d 08             	mov    0x8(%ebp),%ebx
   c:	8b 75 0c             	mov    0xc(%ebp),%esi
   f:	83 ec 08             	sub    $0x8,%esp
  12:	68 c0 0f 00 00       	push   $0xfc0
  17:	6a 02                	push   $0x2
  19:	e8 e3 0c 00 00       	call   0xd01
  1e:	83 c4 0c             	add    $0xc,%esp
  21:	56                   	push   %esi
  22:	6a 00                	push   $0x0
  24:	53                   	push   %ebx
  25:	e8 41 0a 00 00       	call   0xa6b
  2a:	83 c4 08             	add    $0x8,%esp
  2d:	56                   	push   %esi
  2e:	53                   	push   %ebx
  2f:	e8 77 0a 00 00       	call   0xaab
  34:	83 c4 10             	add    $0x10,%esp
  37:	80 3b 00             	cmpb   $0x0,(%ebx)
  3a:	74 0c                	je     0x48
  3c:	b8 00 00 00 00       	mov    $0x0,%eax
  41:	8d 65 f8             	lea    -0x8(%ebp),%esp
  44:	5b                   	pop    %ebx
  45:	5e                   	pop    %esi
  46:	5d                   	pop    %ebp
  47:	c3                   	ret    
  48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4d:	eb f2                	jmp    0x41
  4f:	f3 0f 1e fb          	endbr32 
  53:	55                   	push   %ebp
  54:	89 e5                	mov    %esp,%ebp
  56:	83 ec 0c             	sub    $0xc,%esp
  59:	ff 75 08             	pushl  0x8(%ebp)
  5c:	68 5d 10 00 00       	push   $0x105d
  61:	6a 02                	push   $0x2
  63:	e8 99 0c 00 00       	call   0xd01
  68:	e8 4b 0b 00 00       	call   0xbb8
  6d:	f3 0f 1e fb          	endbr32 
  71:	55                   	push   %ebp
  72:	89 e5                	mov    %esp,%ebp
  74:	83 ec 08             	sub    $0x8,%esp
  77:	e8 34 0b 00 00       	call   0xbb0
  7c:	83 f8 ff             	cmp    $0xffffffff,%eax
  7f:	74 02                	je     0x83
  81:	c9                   	leave  
  82:	c3                   	ret    
  83:	83 ec 0c             	sub    $0xc,%esp
  86:	68 c3 0f 00 00       	push   $0xfc3
  8b:	e8 bf ff ff ff       	call   0x4f
  90:	f3 0f 1e fb          	endbr32 
  94:	55                   	push   %ebp
  95:	89 e5                	mov    %esp,%ebp
  97:	53                   	push   %ebx
  98:	83 ec 14             	sub    $0x14,%esp
  9b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  9e:	85 db                	test   %ebx,%ebx
  a0:	74 0f                	je     0xb1
  a2:	8b 03                	mov    (%ebx),%eax
  a4:	83 f8 05             	cmp    $0x5,%eax
  a7:	77 0d                	ja     0xb6
  a9:	3e ff 24 85 78 10 00 	notrack jmp *0x1078(,%eax,4)
  b0:	00 
  b1:	e8 02 0b 00 00       	call   0xbb8
  b6:	83 ec 0c             	sub    $0xc,%esp
  b9:	68 c8 0f 00 00       	push   $0xfc8
  be:	e8 8c ff ff ff       	call   0x4f
  c3:	8b 43 04             	mov    0x4(%ebx),%eax
  c6:	85 c0                	test   %eax,%eax
  c8:	74 27                	je     0xf1
  ca:	8d 53 04             	lea    0x4(%ebx),%edx
  cd:	83 ec 08             	sub    $0x8,%esp
  d0:	52                   	push   %edx
  d1:	50                   	push   %eax
  d2:	e8 19 0b 00 00       	call   0xbf0
  d7:	83 c4 0c             	add    $0xc,%esp
  da:	ff 73 04             	pushl  0x4(%ebx)
  dd:	68 cf 0f 00 00       	push   $0xfcf
  e2:	6a 02                	push   $0x2
  e4:	e8 18 0c 00 00       	call   0xd01
  e9:	83 c4 10             	add    $0x10,%esp
  ec:	e8 c7 0a 00 00       	call   0xbb8
  f1:	e8 c2 0a 00 00       	call   0xbb8
  f6:	83 ec 0c             	sub    $0xc,%esp
  f9:	ff 73 14             	pushl  0x14(%ebx)
  fc:	e8 df 0a 00 00       	call   0xbe0
 101:	83 c4 08             	add    $0x8,%esp
 104:	ff 73 10             	pushl  0x10(%ebx)
 107:	ff 73 08             	pushl  0x8(%ebx)
 10a:	e8 e9 0a 00 00       	call   0xbf8
 10f:	83 c4 10             	add    $0x10,%esp
 112:	85 c0                	test   %eax,%eax
 114:	78 0b                	js     0x121
 116:	83 ec 0c             	sub    $0xc,%esp
 119:	ff 73 04             	pushl  0x4(%ebx)
 11c:	e8 6f ff ff ff       	call   0x90
 121:	83 ec 04             	sub    $0x4,%esp
 124:	ff 73 08             	pushl  0x8(%ebx)
 127:	68 df 0f 00 00       	push   $0xfdf
 12c:	6a 02                	push   $0x2
 12e:	e8 ce 0b 00 00       	call   0xd01
 133:	e8 80 0a 00 00       	call   0xbb8
 138:	e8 30 ff ff ff       	call   0x6d
 13d:	85 c0                	test   %eax,%eax
 13f:	74 10                	je     0x151
 141:	e8 7a 0a 00 00       	call   0xbc0
 146:	83 ec 0c             	sub    $0xc,%esp
 149:	ff 73 08             	pushl  0x8(%ebx)
 14c:	e8 3f ff ff ff       	call   0x90
 151:	83 ec 0c             	sub    $0xc,%esp
 154:	ff 73 04             	pushl  0x4(%ebx)
 157:	e8 34 ff ff ff       	call   0x90
 15c:	83 ec 0c             	sub    $0xc,%esp
 15f:	8d 45 f0             	lea    -0x10(%ebp),%eax
 162:	50                   	push   %eax
 163:	e8 60 0a 00 00       	call   0xbc8
 168:	83 c4 10             	add    $0x10,%esp
 16b:	85 c0                	test   %eax,%eax
 16d:	78 3a                	js     0x1a9
 16f:	e8 f9 fe ff ff       	call   0x6d
 174:	85 c0                	test   %eax,%eax
 176:	74 3e                	je     0x1b6
 178:	e8 f0 fe ff ff       	call   0x6d
 17d:	85 c0                	test   %eax,%eax
 17f:	74 6b                	je     0x1ec
 181:	83 ec 0c             	sub    $0xc,%esp
 184:	ff 75 f0             	pushl  -0x10(%ebp)
 187:	e8 54 0a 00 00       	call   0xbe0
 18c:	83 c4 04             	add    $0x4,%esp
 18f:	ff 75 f4             	pushl  -0xc(%ebp)
 192:	e8 49 0a 00 00       	call   0xbe0
 197:	e8 24 0a 00 00       	call   0xbc0
 19c:	e8 1f 0a 00 00       	call   0xbc0
 1a1:	83 c4 10             	add    $0x10,%esp
 1a4:	e9 43 ff ff ff       	jmp    0xec
 1a9:	83 ec 0c             	sub    $0xc,%esp
 1ac:	68 ef 0f 00 00       	push   $0xfef
 1b1:	e8 99 fe ff ff       	call   0x4f
 1b6:	83 ec 0c             	sub    $0xc,%esp
 1b9:	6a 01                	push   $0x1
 1bb:	e8 20 0a 00 00       	call   0xbe0
 1c0:	83 c4 04             	add    $0x4,%esp
 1c3:	ff 75 f4             	pushl  -0xc(%ebp)
 1c6:	e8 65 0a 00 00       	call   0xc30
 1cb:	83 c4 04             	add    $0x4,%esp
 1ce:	ff 75 f0             	pushl  -0x10(%ebp)
 1d1:	e8 0a 0a 00 00       	call   0xbe0
 1d6:	83 c4 04             	add    $0x4,%esp
 1d9:	ff 75 f4             	pushl  -0xc(%ebp)
 1dc:	e8 ff 09 00 00       	call   0xbe0
 1e1:	83 c4 04             	add    $0x4,%esp
 1e4:	ff 73 04             	pushl  0x4(%ebx)
 1e7:	e8 a4 fe ff ff       	call   0x90
 1ec:	83 ec 0c             	sub    $0xc,%esp
 1ef:	6a 00                	push   $0x0
 1f1:	e8 ea 09 00 00       	call   0xbe0
 1f6:	83 c4 04             	add    $0x4,%esp
 1f9:	ff 75 f0             	pushl  -0x10(%ebp)
 1fc:	e8 2f 0a 00 00       	call   0xc30
 201:	83 c4 04             	add    $0x4,%esp
 204:	ff 75 f0             	pushl  -0x10(%ebp)
 207:	e8 d4 09 00 00       	call   0xbe0
 20c:	83 c4 04             	add    $0x4,%esp
 20f:	ff 75 f4             	pushl  -0xc(%ebp)
 212:	e8 c9 09 00 00       	call   0xbe0
 217:	83 c4 04             	add    $0x4,%esp
 21a:	ff 73 08             	pushl  0x8(%ebx)
 21d:	e8 6e fe ff ff       	call   0x90
 222:	e8 46 fe ff ff       	call   0x6d
 227:	85 c0                	test   %eax,%eax
 229:	0f 85 bd fe ff ff    	jne    0xec
 22f:	83 ec 0c             	sub    $0xc,%esp
 232:	ff 73 04             	pushl  0x4(%ebx)
 235:	e8 56 fe ff ff       	call   0x90
 23a:	f3 0f 1e fb          	endbr32 
 23e:	55                   	push   %ebp
 23f:	89 e5                	mov    %esp,%ebp
 241:	53                   	push   %ebx
 242:	83 ec 10             	sub    $0x10,%esp
 245:	6a 54                	push   $0x54
 247:	e8 e6 0c 00 00       	call   0xf32
 24c:	89 c3                	mov    %eax,%ebx
 24e:	83 c4 0c             	add    $0xc,%esp
 251:	6a 54                	push   $0x54
 253:	6a 00                	push   $0x0
 255:	50                   	push   %eax
 256:	e8 10 08 00 00       	call   0xa6b
 25b:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
 261:	89 d8                	mov    %ebx,%eax
 263:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 266:	c9                   	leave  
 267:	c3                   	ret    
 268:	f3 0f 1e fb          	endbr32 
 26c:	55                   	push   %ebp
 26d:	89 e5                	mov    %esp,%ebp
 26f:	53                   	push   %ebx
 270:	83 ec 10             	sub    $0x10,%esp
 273:	6a 18                	push   $0x18
 275:	e8 b8 0c 00 00       	call   0xf32
 27a:	89 c3                	mov    %eax,%ebx
 27c:	83 c4 0c             	add    $0xc,%esp
 27f:	6a 18                	push   $0x18
 281:	6a 00                	push   $0x0
 283:	50                   	push   %eax
 284:	e8 e2 07 00 00       	call   0xa6b
 289:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
 28f:	8b 45 08             	mov    0x8(%ebp),%eax
 292:	89 43 04             	mov    %eax,0x4(%ebx)
 295:	8b 45 0c             	mov    0xc(%ebp),%eax
 298:	89 43 08             	mov    %eax,0x8(%ebx)
 29b:	8b 45 10             	mov    0x10(%ebp),%eax
 29e:	89 43 0c             	mov    %eax,0xc(%ebx)
 2a1:	8b 45 14             	mov    0x14(%ebp),%eax
 2a4:	89 43 10             	mov    %eax,0x10(%ebx)
 2a7:	8b 45 18             	mov    0x18(%ebp),%eax
 2aa:	89 43 14             	mov    %eax,0x14(%ebx)
 2ad:	89 d8                	mov    %ebx,%eax
 2af:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b2:	c9                   	leave  
 2b3:	c3                   	ret    
 2b4:	f3 0f 1e fb          	endbr32 
 2b8:	55                   	push   %ebp
 2b9:	89 e5                	mov    %esp,%ebp
 2bb:	53                   	push   %ebx
 2bc:	83 ec 10             	sub    $0x10,%esp
 2bf:	6a 0c                	push   $0xc
 2c1:	e8 6c 0c 00 00       	call   0xf32
 2c6:	89 c3                	mov    %eax,%ebx
 2c8:	83 c4 0c             	add    $0xc,%esp
 2cb:	6a 0c                	push   $0xc
 2cd:	6a 00                	push   $0x0
 2cf:	50                   	push   %eax
 2d0:	e8 96 07 00 00       	call   0xa6b
 2d5:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
 2db:	8b 45 08             	mov    0x8(%ebp),%eax
 2de:	89 43 04             	mov    %eax,0x4(%ebx)
 2e1:	8b 45 0c             	mov    0xc(%ebp),%eax
 2e4:	89 43 08             	mov    %eax,0x8(%ebx)
 2e7:	89 d8                	mov    %ebx,%eax
 2e9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2ec:	c9                   	leave  
 2ed:	c3                   	ret    
 2ee:	f3 0f 1e fb          	endbr32 
 2f2:	55                   	push   %ebp
 2f3:	89 e5                	mov    %esp,%ebp
 2f5:	53                   	push   %ebx
 2f6:	83 ec 10             	sub    $0x10,%esp
 2f9:	6a 0c                	push   $0xc
 2fb:	e8 32 0c 00 00       	call   0xf32
 300:	89 c3                	mov    %eax,%ebx
 302:	83 c4 0c             	add    $0xc,%esp
 305:	6a 0c                	push   $0xc
 307:	6a 00                	push   $0x0
 309:	50                   	push   %eax
 30a:	e8 5c 07 00 00       	call   0xa6b
 30f:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
 315:	8b 45 08             	mov    0x8(%ebp),%eax
 318:	89 43 04             	mov    %eax,0x4(%ebx)
 31b:	8b 45 0c             	mov    0xc(%ebp),%eax
 31e:	89 43 08             	mov    %eax,0x8(%ebx)
 321:	89 d8                	mov    %ebx,%eax
 323:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 326:	c9                   	leave  
 327:	c3                   	ret    
 328:	f3 0f 1e fb          	endbr32 
 32c:	55                   	push   %ebp
 32d:	89 e5                	mov    %esp,%ebp
 32f:	53                   	push   %ebx
 330:	83 ec 10             	sub    $0x10,%esp
 333:	6a 08                	push   $0x8
 335:	e8 f8 0b 00 00       	call   0xf32
 33a:	89 c3                	mov    %eax,%ebx
 33c:	83 c4 0c             	add    $0xc,%esp
 33f:	6a 08                	push   $0x8
 341:	6a 00                	push   $0x0
 343:	50                   	push   %eax
 344:	e8 22 07 00 00       	call   0xa6b
 349:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
 34f:	8b 45 08             	mov    0x8(%ebp),%eax
 352:	89 43 04             	mov    %eax,0x4(%ebx)
 355:	89 d8                	mov    %ebx,%eax
 357:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 35a:	c9                   	leave  
 35b:	c3                   	ret    
 35c:	f3 0f 1e fb          	endbr32 
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	56                   	push   %esi
 365:	53                   	push   %ebx
 366:	83 ec 0c             	sub    $0xc,%esp
 369:	8b 75 0c             	mov    0xc(%ebp),%esi
 36c:	8b 7d 10             	mov    0x10(%ebp),%edi
 36f:	8b 45 08             	mov    0x8(%ebp),%eax
 372:	8b 18                	mov    (%eax),%ebx
 374:	39 f3                	cmp    %esi,%ebx
 376:	73 1d                	jae    0x395
 378:	83 ec 08             	sub    $0x8,%esp
 37b:	0f be 03             	movsbl (%ebx),%eax
 37e:	50                   	push   %eax
 37f:	68 30 16 00 00       	push   $0x1630
 384:	e8 fd 06 00 00       	call   0xa86
 389:	83 c4 10             	add    $0x10,%esp
 38c:	85 c0                	test   %eax,%eax
 38e:	74 05                	je     0x395
 390:	83 c3 01             	add    $0x1,%ebx
 393:	eb df                	jmp    0x374
 395:	85 ff                	test   %edi,%edi
 397:	74 02                	je     0x39b
 399:	89 1f                	mov    %ebx,(%edi)
 39b:	0f b6 03             	movzbl (%ebx),%eax
 39e:	0f be f8             	movsbl %al,%edi
 3a1:	3c 3c                	cmp    $0x3c,%al
 3a3:	7f 27                	jg     0x3cc
 3a5:	3c 3b                	cmp    $0x3b,%al
 3a7:	7d 13                	jge    0x3bc
 3a9:	84 c0                	test   %al,%al
 3ab:	74 12                	je     0x3bf
 3ad:	78 41                	js     0x3f0
 3af:	3c 26                	cmp    $0x26,%al
 3b1:	74 09                	je     0x3bc
 3b3:	7c 3b                	jl     0x3f0
 3b5:	83 e8 28             	sub    $0x28,%eax
 3b8:	3c 01                	cmp    $0x1,%al
 3ba:	77 34                	ja     0x3f0
 3bc:	83 c3 01             	add    $0x1,%ebx
 3bf:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 3c3:	74 77                	je     0x43c
 3c5:	8b 45 14             	mov    0x14(%ebp),%eax
 3c8:	89 18                	mov    %ebx,(%eax)
 3ca:	eb 70                	jmp    0x43c
 3cc:	3c 3e                	cmp    $0x3e,%al
 3ce:	75 0d                	jne    0x3dd
 3d0:	8d 43 01             	lea    0x1(%ebx),%eax
 3d3:	80 7b 01 3e          	cmpb   $0x3e,0x1(%ebx)
 3d7:	74 0a                	je     0x3e3
 3d9:	89 c3                	mov    %eax,%ebx
 3db:	eb e2                	jmp    0x3bf
 3dd:	3c 7c                	cmp    $0x7c,%al
 3df:	75 0f                	jne    0x3f0
 3e1:	eb d9                	jmp    0x3bc
 3e3:	83 c3 02             	add    $0x2,%ebx
 3e6:	bf 2b 00 00 00       	mov    $0x2b,%edi
 3eb:	eb d2                	jmp    0x3bf
 3ed:	83 c3 01             	add    $0x1,%ebx
 3f0:	39 f3                	cmp    %esi,%ebx
 3f2:	73 37                	jae    0x42b
 3f4:	83 ec 08             	sub    $0x8,%esp
 3f7:	0f be 03             	movsbl (%ebx),%eax
 3fa:	50                   	push   %eax
 3fb:	68 30 16 00 00       	push   $0x1630
 400:	e8 81 06 00 00       	call   0xa86
 405:	83 c4 10             	add    $0x10,%esp
 408:	85 c0                	test   %eax,%eax
 40a:	75 26                	jne    0x432
 40c:	83 ec 08             	sub    $0x8,%esp
 40f:	0f be 03             	movsbl (%ebx),%eax
 412:	50                   	push   %eax
 413:	68 28 16 00 00       	push   $0x1628
 418:	e8 69 06 00 00       	call   0xa86
 41d:	83 c4 10             	add    $0x10,%esp
 420:	85 c0                	test   %eax,%eax
 422:	74 c9                	je     0x3ed
 424:	bf 61 00 00 00       	mov    $0x61,%edi
 429:	eb 94                	jmp    0x3bf
 42b:	bf 61 00 00 00       	mov    $0x61,%edi
 430:	eb 8d                	jmp    0x3bf
 432:	bf 61 00 00 00       	mov    $0x61,%edi
 437:	eb 86                	jmp    0x3bf
 439:	83 c3 01             	add    $0x1,%ebx
 43c:	39 f3                	cmp    %esi,%ebx
 43e:	73 18                	jae    0x458
 440:	83 ec 08             	sub    $0x8,%esp
 443:	0f be 03             	movsbl (%ebx),%eax
 446:	50                   	push   %eax
 447:	68 30 16 00 00       	push   $0x1630
 44c:	e8 35 06 00 00       	call   0xa86
 451:	83 c4 10             	add    $0x10,%esp
 454:	85 c0                	test   %eax,%eax
 456:	75 e1                	jne    0x439
 458:	8b 45 08             	mov    0x8(%ebp),%eax
 45b:	89 18                	mov    %ebx,(%eax)
 45d:	89 f8                	mov    %edi,%eax
 45f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 462:	5b                   	pop    %ebx
 463:	5e                   	pop    %esi
 464:	5f                   	pop    %edi
 465:	5d                   	pop    %ebp
 466:	c3                   	ret    
 467:	f3 0f 1e fb          	endbr32 
 46b:	55                   	push   %ebp
 46c:	89 e5                	mov    %esp,%ebp
 46e:	57                   	push   %edi
 46f:	56                   	push   %esi
 470:	53                   	push   %ebx
 471:	83 ec 0c             	sub    $0xc,%esp
 474:	8b 7d 08             	mov    0x8(%ebp),%edi
 477:	8b 75 0c             	mov    0xc(%ebp),%esi
 47a:	8b 1f                	mov    (%edi),%ebx
 47c:	39 f3                	cmp    %esi,%ebx
 47e:	73 1d                	jae    0x49d
 480:	83 ec 08             	sub    $0x8,%esp
 483:	0f be 03             	movsbl (%ebx),%eax
 486:	50                   	push   %eax
 487:	68 30 16 00 00       	push   $0x1630
 48c:	e8 f5 05 00 00       	call   0xa86
 491:	83 c4 10             	add    $0x10,%esp
 494:	85 c0                	test   %eax,%eax
 496:	74 05                	je     0x49d
 498:	83 c3 01             	add    $0x1,%ebx
 49b:	eb df                	jmp    0x47c
 49d:	89 1f                	mov    %ebx,(%edi)
 49f:	0f b6 03             	movzbl (%ebx),%eax
 4a2:	84 c0                	test   %al,%al
 4a4:	75 0d                	jne    0x4b3
 4a6:	b8 00 00 00 00       	mov    $0x0,%eax
 4ab:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ae:	5b                   	pop    %ebx
 4af:	5e                   	pop    %esi
 4b0:	5f                   	pop    %edi
 4b1:	5d                   	pop    %ebp
 4b2:	c3                   	ret    
 4b3:	83 ec 08             	sub    $0x8,%esp
 4b6:	0f be c0             	movsbl %al,%eax
 4b9:	50                   	push   %eax
 4ba:	ff 75 10             	pushl  0x10(%ebp)
 4bd:	e8 c4 05 00 00       	call   0xa86
 4c2:	83 c4 10             	add    $0x10,%esp
 4c5:	85 c0                	test   %eax,%eax
 4c7:	74 07                	je     0x4d0
 4c9:	b8 01 00 00 00       	mov    $0x1,%eax
 4ce:	eb db                	jmp    0x4ab
 4d0:	b8 00 00 00 00       	mov    $0x0,%eax
 4d5:	eb d4                	jmp    0x4ab
 4d7:	f3 0f 1e fb          	endbr32 
 4db:	55                   	push   %ebp
 4dc:	89 e5                	mov    %esp,%ebp
 4de:	57                   	push   %edi
 4df:	56                   	push   %esi
 4e0:	53                   	push   %ebx
 4e1:	83 ec 1c             	sub    $0x1c,%esp
 4e4:	8b 7d 0c             	mov    0xc(%ebp),%edi
 4e7:	8b 75 10             	mov    0x10(%ebp),%esi
 4ea:	eb 28                	jmp    0x514
 4ec:	83 ec 0c             	sub    $0xc,%esp
 4ef:	68 f4 0f 00 00       	push   $0xff4
 4f4:	e8 56 fb ff ff       	call   0x4f
 4f9:	83 ec 0c             	sub    $0xc,%esp
 4fc:	6a 00                	push   $0x0
 4fe:	6a 00                	push   $0x0
 500:	ff 75 e0             	pushl  -0x20(%ebp)
 503:	ff 75 e4             	pushl  -0x1c(%ebp)
 506:	ff 75 08             	pushl  0x8(%ebp)
 509:	e8 5a fd ff ff       	call   0x268
 50e:	89 45 08             	mov    %eax,0x8(%ebp)
 511:	83 c4 20             	add    $0x20,%esp
 514:	83 ec 04             	sub    $0x4,%esp
 517:	68 11 10 00 00       	push   $0x1011
 51c:	56                   	push   %esi
 51d:	57                   	push   %edi
 51e:	e8 44 ff ff ff       	call   0x467
 523:	83 c4 10             	add    $0x10,%esp
 526:	85 c0                	test   %eax,%eax
 528:	74 76                	je     0x5a0
 52a:	6a 00                	push   $0x0
 52c:	6a 00                	push   $0x0
 52e:	56                   	push   %esi
 52f:	57                   	push   %edi
 530:	e8 27 fe ff ff       	call   0x35c
 535:	89 c3                	mov    %eax,%ebx
 537:	8d 45 e0             	lea    -0x20(%ebp),%eax
 53a:	50                   	push   %eax
 53b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 53e:	50                   	push   %eax
 53f:	56                   	push   %esi
 540:	57                   	push   %edi
 541:	e8 16 fe ff ff       	call   0x35c
 546:	83 c4 20             	add    $0x20,%esp
 549:	83 f8 61             	cmp    $0x61,%eax
 54c:	75 9e                	jne    0x4ec
 54e:	83 fb 3c             	cmp    $0x3c,%ebx
 551:	74 a6                	je     0x4f9
 553:	83 fb 3e             	cmp    $0x3e,%ebx
 556:	74 25                	je     0x57d
 558:	83 fb 2b             	cmp    $0x2b,%ebx
 55b:	75 b7                	jne    0x514
 55d:	83 ec 0c             	sub    $0xc,%esp
 560:	6a 01                	push   $0x1
 562:	68 01 02 00 00       	push   $0x201
 567:	ff 75 e0             	pushl  -0x20(%ebp)
 56a:	ff 75 e4             	pushl  -0x1c(%ebp)
 56d:	ff 75 08             	pushl  0x8(%ebp)
 570:	e8 f3 fc ff ff       	call   0x268
 575:	89 45 08             	mov    %eax,0x8(%ebp)
 578:	83 c4 20             	add    $0x20,%esp
 57b:	eb 97                	jmp    0x514
 57d:	83 ec 0c             	sub    $0xc,%esp
 580:	6a 01                	push   $0x1
 582:	68 01 02 00 00       	push   $0x201
 587:	ff 75 e0             	pushl  -0x20(%ebp)
 58a:	ff 75 e4             	pushl  -0x1c(%ebp)
 58d:	ff 75 08             	pushl  0x8(%ebp)
 590:	e8 d3 fc ff ff       	call   0x268
 595:	89 45 08             	mov    %eax,0x8(%ebp)
 598:	83 c4 20             	add    $0x20,%esp
 59b:	e9 74 ff ff ff       	jmp    0x514
 5a0:	8b 45 08             	mov    0x8(%ebp),%eax
 5a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5a6:	5b                   	pop    %ebx
 5a7:	5e                   	pop    %esi
 5a8:	5f                   	pop    %edi
 5a9:	5d                   	pop    %ebp
 5aa:	c3                   	ret    
 5ab:	f3 0f 1e fb          	endbr32 
 5af:	55                   	push   %ebp
 5b0:	89 e5                	mov    %esp,%ebp
 5b2:	57                   	push   %edi
 5b3:	56                   	push   %esi
 5b4:	53                   	push   %ebx
 5b5:	83 ec 30             	sub    $0x30,%esp
 5b8:	8b 75 08             	mov    0x8(%ebp),%esi
 5bb:	8b 7d 0c             	mov    0xc(%ebp),%edi
 5be:	68 14 10 00 00       	push   $0x1014
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	e8 9d fe ff ff       	call   0x467
 5ca:	83 c4 10             	add    $0x10,%esp
 5cd:	85 c0                	test   %eax,%eax
 5cf:	75 1d                	jne    0x5ee
 5d1:	89 c3                	mov    %eax,%ebx
 5d3:	e8 62 fc ff ff       	call   0x23a
 5d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5db:	83 ec 04             	sub    $0x4,%esp
 5de:	57                   	push   %edi
 5df:	56                   	push   %esi
 5e0:	50                   	push   %eax
 5e1:	e8 f1 fe ff ff       	call   0x4d7
 5e6:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5e9:	83 c4 10             	add    $0x10,%esp
 5ec:	eb 3b                	jmp    0x629
 5ee:	83 ec 08             	sub    $0x8,%esp
 5f1:	57                   	push   %edi
 5f2:	56                   	push   %esi
 5f3:	e8 97 01 00 00       	call   0x78f
 5f8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5fb:	83 c4 10             	add    $0x10,%esp
 5fe:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 601:	8d 65 f4             	lea    -0xc(%ebp),%esp
 604:	5b                   	pop    %ebx
 605:	5e                   	pop    %esi
 606:	5f                   	pop    %edi
 607:	5d                   	pop    %ebp
 608:	c3                   	ret    
 609:	83 ec 0c             	sub    $0xc,%esp
 60c:	68 16 10 00 00       	push   $0x1016
 611:	e8 39 fa ff ff       	call   0x4f
 616:	83 ec 04             	sub    $0x4,%esp
 619:	57                   	push   %edi
 61a:	56                   	push   %esi
 61b:	ff 75 d4             	pushl  -0x2c(%ebp)
 61e:	e8 b4 fe ff ff       	call   0x4d7
 623:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 626:	83 c4 10             	add    $0x10,%esp
 629:	83 ec 04             	sub    $0x4,%esp
 62c:	68 2b 10 00 00       	push   $0x102b
 631:	57                   	push   %edi
 632:	56                   	push   %esi
 633:	e8 2f fe ff ff       	call   0x467
 638:	83 c4 10             	add    $0x10,%esp
 63b:	85 c0                	test   %eax,%eax
 63d:	75 41                	jne    0x680
 63f:	8d 45 e0             	lea    -0x20(%ebp),%eax
 642:	50                   	push   %eax
 643:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 646:	50                   	push   %eax
 647:	57                   	push   %edi
 648:	56                   	push   %esi
 649:	e8 0e fd ff ff       	call   0x35c
 64e:	83 c4 10             	add    $0x10,%esp
 651:	85 c0                	test   %eax,%eax
 653:	74 2b                	je     0x680
 655:	83 f8 61             	cmp    $0x61,%eax
 658:	75 af                	jne    0x609
 65a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 65d:	8b 55 d0             	mov    -0x30(%ebp),%edx
 660:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
 664:	8b 45 e0             	mov    -0x20(%ebp),%eax
 667:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
 66b:	83 c3 01             	add    $0x1,%ebx
 66e:	83 fb 09             	cmp    $0x9,%ebx
 671:	7e a3                	jle    0x616
 673:	83 ec 0c             	sub    $0xc,%esp
 676:	68 1d 10 00 00       	push   $0x101d
 67b:	e8 cf f9 ff ff       	call   0x4f
 680:	8b 45 d0             	mov    -0x30(%ebp),%eax
 683:	c7 44 98 04 00 00 00 	movl   $0x0,0x4(%eax,%ebx,4)
 68a:	00 
 68b:	c7 44 98 2c 00 00 00 	movl   $0x0,0x2c(%eax,%ebx,4)
 692:	00 
 693:	e9 66 ff ff ff       	jmp    0x5fe
 698:	f3 0f 1e fb          	endbr32 
 69c:	55                   	push   %ebp
 69d:	89 e5                	mov    %esp,%ebp
 69f:	57                   	push   %edi
 6a0:	56                   	push   %esi
 6a1:	53                   	push   %ebx
 6a2:	83 ec 14             	sub    $0x14,%esp
 6a5:	8b 75 08             	mov    0x8(%ebp),%esi
 6a8:	8b 7d 0c             	mov    0xc(%ebp),%edi
 6ab:	57                   	push   %edi
 6ac:	56                   	push   %esi
 6ad:	e8 f9 fe ff ff       	call   0x5ab
 6b2:	89 c3                	mov    %eax,%ebx
 6b4:	83 c4 0c             	add    $0xc,%esp
 6b7:	68 30 10 00 00       	push   $0x1030
 6bc:	57                   	push   %edi
 6bd:	56                   	push   %esi
 6be:	e8 a4 fd ff ff       	call   0x467
 6c3:	83 c4 10             	add    $0x10,%esp
 6c6:	85 c0                	test   %eax,%eax
 6c8:	75 0a                	jne    0x6d4
 6ca:	89 d8                	mov    %ebx,%eax
 6cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6cf:	5b                   	pop    %ebx
 6d0:	5e                   	pop    %esi
 6d1:	5f                   	pop    %edi
 6d2:	5d                   	pop    %ebp
 6d3:	c3                   	ret    
 6d4:	6a 00                	push   $0x0
 6d6:	6a 00                	push   $0x0
 6d8:	57                   	push   %edi
 6d9:	56                   	push   %esi
 6da:	e8 7d fc ff ff       	call   0x35c
 6df:	83 c4 08             	add    $0x8,%esp
 6e2:	57                   	push   %edi
 6e3:	56                   	push   %esi
 6e4:	e8 af ff ff ff       	call   0x698
 6e9:	83 c4 08             	add    $0x8,%esp
 6ec:	50                   	push   %eax
 6ed:	53                   	push   %ebx
 6ee:	e8 c1 fb ff ff       	call   0x2b4
 6f3:	89 c3                	mov    %eax,%ebx
 6f5:	83 c4 10             	add    $0x10,%esp
 6f8:	eb d0                	jmp    0x6ca
 6fa:	f3 0f 1e fb          	endbr32 
 6fe:	55                   	push   %ebp
 6ff:	89 e5                	mov    %esp,%ebp
 701:	57                   	push   %edi
 702:	56                   	push   %esi
 703:	53                   	push   %ebx
 704:	83 ec 14             	sub    $0x14,%esp
 707:	8b 75 08             	mov    0x8(%ebp),%esi
 70a:	8b 7d 0c             	mov    0xc(%ebp),%edi
 70d:	57                   	push   %edi
 70e:	56                   	push   %esi
 70f:	e8 84 ff ff ff       	call   0x698
 714:	89 c3                	mov    %eax,%ebx
 716:	83 c4 10             	add    $0x10,%esp
 719:	83 ec 04             	sub    $0x4,%esp
 71c:	68 32 10 00 00       	push   $0x1032
 721:	57                   	push   %edi
 722:	56                   	push   %esi
 723:	e8 3f fd ff ff       	call   0x467
 728:	83 c4 10             	add    $0x10,%esp
 72b:	85 c0                	test   %eax,%eax
 72d:	74 1a                	je     0x749
 72f:	6a 00                	push   $0x0
 731:	6a 00                	push   $0x0
 733:	57                   	push   %edi
 734:	56                   	push   %esi
 735:	e8 22 fc ff ff       	call   0x35c
 73a:	89 1c 24             	mov    %ebx,(%esp)
 73d:	e8 e6 fb ff ff       	call   0x328
 742:	89 c3                	mov    %eax,%ebx
 744:	83 c4 10             	add    $0x10,%esp
 747:	eb d0                	jmp    0x719
 749:	83 ec 04             	sub    $0x4,%esp
 74c:	68 2e 10 00 00       	push   $0x102e
 751:	57                   	push   %edi
 752:	56                   	push   %esi
 753:	e8 0f fd ff ff       	call   0x467
 758:	83 c4 10             	add    $0x10,%esp
 75b:	85 c0                	test   %eax,%eax
 75d:	75 0a                	jne    0x769
 75f:	89 d8                	mov    %ebx,%eax
 761:	8d 65 f4             	lea    -0xc(%ebp),%esp
 764:	5b                   	pop    %ebx
 765:	5e                   	pop    %esi
 766:	5f                   	pop    %edi
 767:	5d                   	pop    %ebp
 768:	c3                   	ret    
 769:	6a 00                	push   $0x0
 76b:	6a 00                	push   $0x0
 76d:	57                   	push   %edi
 76e:	56                   	push   %esi
 76f:	e8 e8 fb ff ff       	call   0x35c
 774:	83 c4 08             	add    $0x8,%esp
 777:	57                   	push   %edi
 778:	56                   	push   %esi
 779:	e8 7c ff ff ff       	call   0x6fa
 77e:	83 c4 08             	add    $0x8,%esp
 781:	50                   	push   %eax
 782:	53                   	push   %ebx
 783:	e8 66 fb ff ff       	call   0x2ee
 788:	89 c3                	mov    %eax,%ebx
 78a:	83 c4 10             	add    $0x10,%esp
 78d:	eb d0                	jmp    0x75f
 78f:	f3 0f 1e fb          	endbr32 
 793:	55                   	push   %ebp
 794:	89 e5                	mov    %esp,%ebp
 796:	57                   	push   %edi
 797:	56                   	push   %esi
 798:	53                   	push   %ebx
 799:	83 ec 10             	sub    $0x10,%esp
 79c:	8b 5d 08             	mov    0x8(%ebp),%ebx
 79f:	8b 75 0c             	mov    0xc(%ebp),%esi
 7a2:	68 14 10 00 00       	push   $0x1014
 7a7:	56                   	push   %esi
 7a8:	53                   	push   %ebx
 7a9:	e8 b9 fc ff ff       	call   0x467
 7ae:	83 c4 10             	add    $0x10,%esp
 7b1:	85 c0                	test   %eax,%eax
 7b3:	74 4b                	je     0x800
 7b5:	6a 00                	push   $0x0
 7b7:	6a 00                	push   $0x0
 7b9:	56                   	push   %esi
 7ba:	53                   	push   %ebx
 7bb:	e8 9c fb ff ff       	call   0x35c
 7c0:	83 c4 08             	add    $0x8,%esp
 7c3:	56                   	push   %esi
 7c4:	53                   	push   %ebx
 7c5:	e8 30 ff ff ff       	call   0x6fa
 7ca:	89 c7                	mov    %eax,%edi
 7cc:	83 c4 0c             	add    $0xc,%esp
 7cf:	68 50 10 00 00       	push   $0x1050
 7d4:	56                   	push   %esi
 7d5:	53                   	push   %ebx
 7d6:	e8 8c fc ff ff       	call   0x467
 7db:	83 c4 10             	add    $0x10,%esp
 7de:	85 c0                	test   %eax,%eax
 7e0:	74 2b                	je     0x80d
 7e2:	6a 00                	push   $0x0
 7e4:	6a 00                	push   $0x0
 7e6:	56                   	push   %esi
 7e7:	53                   	push   %ebx
 7e8:	e8 6f fb ff ff       	call   0x35c
 7ed:	83 c4 0c             	add    $0xc,%esp
 7f0:	56                   	push   %esi
 7f1:	53                   	push   %ebx
 7f2:	57                   	push   %edi
 7f3:	e8 df fc ff ff       	call   0x4d7
 7f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7fb:	5b                   	pop    %ebx
 7fc:	5e                   	pop    %esi
 7fd:	5f                   	pop    %edi
 7fe:	5d                   	pop    %ebp
 7ff:	c3                   	ret    
 800:	83 ec 0c             	sub    $0xc,%esp
 803:	68 34 10 00 00       	push   $0x1034
 808:	e8 42 f8 ff ff       	call   0x4f
 80d:	83 ec 0c             	sub    $0xc,%esp
 810:	68 3f 10 00 00       	push   $0x103f
 815:	e8 35 f8 ff ff       	call   0x4f
 81a:	f3 0f 1e fb          	endbr32 
 81e:	55                   	push   %ebp
 81f:	89 e5                	mov    %esp,%ebp
 821:	53                   	push   %ebx
 822:	83 ec 04             	sub    $0x4,%esp
 825:	8b 5d 08             	mov    0x8(%ebp),%ebx
 828:	85 db                	test   %ebx,%ebx
 82a:	74 3b                	je     0x867
 82c:	8b 03                	mov    (%ebx),%eax
 82e:	83 f8 05             	cmp    $0x5,%eax
 831:	77 34                	ja     0x867
 833:	3e ff 24 85 90 10 00 	notrack jmp *0x1090(,%eax,4)
 83a:	00 
 83b:	b8 00 00 00 00       	mov    $0x0,%eax
 840:	83 7c 83 04 00       	cmpl   $0x0,0x4(%ebx,%eax,4)
 845:	74 20                	je     0x867
 847:	8b 54 83 2c          	mov    0x2c(%ebx,%eax,4),%edx
 84b:	c6 02 00             	movb   $0x0,(%edx)
 84e:	83 c0 01             	add    $0x1,%eax
 851:	eb ed                	jmp    0x840
 853:	83 ec 0c             	sub    $0xc,%esp
 856:	ff 73 04             	pushl  0x4(%ebx)
 859:	e8 bc ff ff ff       	call   0x81a
 85e:	8b 43 0c             	mov    0xc(%ebx),%eax
 861:	c6 00 00             	movb   $0x0,(%eax)
 864:	83 c4 10             	add    $0x10,%esp
 867:	89 d8                	mov    %ebx,%eax
 869:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 86c:	c9                   	leave  
 86d:	c3                   	ret    
 86e:	83 ec 0c             	sub    $0xc,%esp
 871:	ff 73 04             	pushl  0x4(%ebx)
 874:	e8 a1 ff ff ff       	call   0x81a
 879:	83 c4 04             	add    $0x4,%esp
 87c:	ff 73 08             	pushl  0x8(%ebx)
 87f:	e8 96 ff ff ff       	call   0x81a
 884:	83 c4 10             	add    $0x10,%esp
 887:	eb de                	jmp    0x867
 889:	83 ec 0c             	sub    $0xc,%esp
 88c:	ff 73 04             	pushl  0x4(%ebx)
 88f:	e8 86 ff ff ff       	call   0x81a
 894:	83 c4 04             	add    $0x4,%esp
 897:	ff 73 08             	pushl  0x8(%ebx)
 89a:	e8 7b ff ff ff       	call   0x81a
 89f:	83 c4 10             	add    $0x10,%esp
 8a2:	eb c3                	jmp    0x867
 8a4:	83 ec 0c             	sub    $0xc,%esp
 8a7:	ff 73 04             	pushl  0x4(%ebx)
 8aa:	e8 6b ff ff ff       	call   0x81a
 8af:	83 c4 10             	add    $0x10,%esp
 8b2:	eb b3                	jmp    0x867
 8b4:	f3 0f 1e fb          	endbr32 
 8b8:	55                   	push   %ebp
 8b9:	89 e5                	mov    %esp,%ebp
 8bb:	56                   	push   %esi
 8bc:	53                   	push   %ebx
 8bd:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	53                   	push   %ebx
 8c4:	e8 86 01 00 00       	call   0xa4f
 8c9:	01 c3                	add    %eax,%ebx
 8cb:	83 c4 08             	add    $0x8,%esp
 8ce:	53                   	push   %ebx
 8cf:	8d 45 08             	lea    0x8(%ebp),%eax
 8d2:	50                   	push   %eax
 8d3:	e8 22 fe ff ff       	call   0x6fa
 8d8:	89 c6                	mov    %eax,%esi
 8da:	83 c4 0c             	add    $0xc,%esp
 8dd:	68 de 0f 00 00       	push   $0xfde
 8e2:	53                   	push   %ebx
 8e3:	8d 45 08             	lea    0x8(%ebp),%eax
 8e6:	50                   	push   %eax
 8e7:	e8 7b fb ff ff       	call   0x467
 8ec:	8b 45 08             	mov    0x8(%ebp),%eax
 8ef:	83 c4 10             	add    $0x10,%esp
 8f2:	39 d8                	cmp    %ebx,%eax
 8f4:	75 12                	jne    0x908
 8f6:	83 ec 0c             	sub    $0xc,%esp
 8f9:	56                   	push   %esi
 8fa:	e8 1b ff ff ff       	call   0x81a
 8ff:	89 f0                	mov    %esi,%eax
 901:	8d 65 f8             	lea    -0x8(%ebp),%esp
 904:	5b                   	pop    %ebx
 905:	5e                   	pop    %esi
 906:	5d                   	pop    %ebp
 907:	c3                   	ret    
 908:	83 ec 04             	sub    $0x4,%esp
 90b:	50                   	push   %eax
 90c:	68 52 10 00 00       	push   $0x1052
 911:	6a 02                	push   $0x2
 913:	e8 e9 03 00 00       	call   0xd01
 918:	c7 04 24 16 10 00 00 	movl   $0x1016,(%esp)
 91f:	e8 2b f7 ff ff       	call   0x4f
 924:	f3 0f 1e fb          	endbr32 
 928:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 92c:	83 e4 f0             	and    $0xfffffff0,%esp
 92f:	ff 71 fc             	pushl  -0x4(%ecx)
 932:	55                   	push   %ebp
 933:	89 e5                	mov    %esp,%ebp
 935:	51                   	push   %ecx
 936:	83 ec 04             	sub    $0x4,%esp
 939:	83 ec 08             	sub    $0x8,%esp
 93c:	6a 02                	push   $0x2
 93e:	68 61 10 00 00       	push   $0x1061
 943:	e8 b0 02 00 00       	call   0xbf8
 948:	83 c4 10             	add    $0x10,%esp
 94b:	85 c0                	test   %eax,%eax
 94d:	78 21                	js     0x970
 94f:	83 f8 02             	cmp    $0x2,%eax
 952:	7e e5                	jle    0x939
 954:	83 ec 0c             	sub    $0xc,%esp
 957:	50                   	push   %eax
 958:	e8 83 02 00 00       	call   0xbe0
 95d:	83 c4 10             	add    $0x10,%esp
 960:	eb 0e                	jmp    0x970
 962:	e8 06 f7 ff ff       	call   0x6d
 967:	85 c0                	test   %eax,%eax
 969:	74 76                	je     0x9e1
 96b:	e8 50 02 00 00       	call   0xbc0
 970:	83 ec 08             	sub    $0x8,%esp
 973:	6a 64                	push   $0x64
 975:	68 40 16 00 00       	push   $0x1640
 97a:	e8 81 f6 ff ff       	call   0x0
 97f:	83 c4 10             	add    $0x10,%esp
 982:	85 c0                	test   %eax,%eax
 984:	78 70                	js     0x9f6
 986:	80 3d 40 16 00 00 63 	cmpb   $0x63,0x1640
 98d:	75 d3                	jne    0x962
 98f:	80 3d 41 16 00 00 64 	cmpb   $0x64,0x1641
 996:	75 ca                	jne    0x962
 998:	80 3d 42 16 00 00 20 	cmpb   $0x20,0x1642
 99f:	75 c1                	jne    0x962
 9a1:	83 ec 0c             	sub    $0xc,%esp
 9a4:	68 40 16 00 00       	push   $0x1640
 9a9:	e8 a1 00 00 00       	call   0xa4f
 9ae:	c6 80 3f 16 00 00 00 	movb   $0x0,0x163f(%eax)
 9b5:	c7 04 24 43 16 00 00 	movl   $0x1643,(%esp)
 9bc:	e8 67 02 00 00       	call   0xc28
 9c1:	83 c4 10             	add    $0x10,%esp
 9c4:	85 c0                	test   %eax,%eax
 9c6:	79 a8                	jns    0x970
 9c8:	83 ec 04             	sub    $0x4,%esp
 9cb:	68 43 16 00 00       	push   $0x1643
 9d0:	68 69 10 00 00       	push   $0x1069
 9d5:	6a 02                	push   $0x2
 9d7:	e8 25 03 00 00       	call   0xd01
 9dc:	83 c4 10             	add    $0x10,%esp
 9df:	eb 8f                	jmp    0x970
 9e1:	83 ec 0c             	sub    $0xc,%esp
 9e4:	68 40 16 00 00       	push   $0x1640
 9e9:	e8 c6 fe ff ff       	call   0x8b4
 9ee:	89 04 24             	mov    %eax,(%esp)
 9f1:	e8 9a f6 ff ff       	call   0x90
 9f6:	e8 bd 01 00 00       	call   0xbb8
 9fb:	f3 0f 1e fb          	endbr32 
 9ff:	55                   	push   %ebp
 a00:	89 e5                	mov    %esp,%ebp
 a02:	56                   	push   %esi
 a03:	53                   	push   %ebx
 a04:	8b 75 08             	mov    0x8(%ebp),%esi
 a07:	8b 55 0c             	mov    0xc(%ebp),%edx
 a0a:	89 f0                	mov    %esi,%eax
 a0c:	89 d1                	mov    %edx,%ecx
 a0e:	83 c2 01             	add    $0x1,%edx
 a11:	89 c3                	mov    %eax,%ebx
 a13:	83 c0 01             	add    $0x1,%eax
 a16:	0f b6 09             	movzbl (%ecx),%ecx
 a19:	88 0b                	mov    %cl,(%ebx)
 a1b:	84 c9                	test   %cl,%cl
 a1d:	75 ed                	jne    0xa0c
 a1f:	89 f0                	mov    %esi,%eax
 a21:	5b                   	pop    %ebx
 a22:	5e                   	pop    %esi
 a23:	5d                   	pop    %ebp
 a24:	c3                   	ret    
 a25:	f3 0f 1e fb          	endbr32 
 a29:	55                   	push   %ebp
 a2a:	89 e5                	mov    %esp,%ebp
 a2c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 a2f:	8b 55 0c             	mov    0xc(%ebp),%edx
 a32:	0f b6 01             	movzbl (%ecx),%eax
 a35:	84 c0                	test   %al,%al
 a37:	74 0c                	je     0xa45
 a39:	3a 02                	cmp    (%edx),%al
 a3b:	75 08                	jne    0xa45
 a3d:	83 c1 01             	add    $0x1,%ecx
 a40:	83 c2 01             	add    $0x1,%edx
 a43:	eb ed                	jmp    0xa32
 a45:	0f b6 c0             	movzbl %al,%eax
 a48:	0f b6 12             	movzbl (%edx),%edx
 a4b:	29 d0                	sub    %edx,%eax
 a4d:	5d                   	pop    %ebp
 a4e:	c3                   	ret    
 a4f:	f3 0f 1e fb          	endbr32 
 a53:	55                   	push   %ebp
 a54:	89 e5                	mov    %esp,%ebp
 a56:	8b 4d 08             	mov    0x8(%ebp),%ecx
 a59:	b8 00 00 00 00       	mov    $0x0,%eax
 a5e:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 a62:	74 05                	je     0xa69
 a64:	83 c0 01             	add    $0x1,%eax
 a67:	eb f5                	jmp    0xa5e
 a69:	5d                   	pop    %ebp
 a6a:	c3                   	ret    
 a6b:	f3 0f 1e fb          	endbr32 
 a6f:	55                   	push   %ebp
 a70:	89 e5                	mov    %esp,%ebp
 a72:	57                   	push   %edi
 a73:	8b 55 08             	mov    0x8(%ebp),%edx
 a76:	89 d7                	mov    %edx,%edi
 a78:	8b 4d 10             	mov    0x10(%ebp),%ecx
 a7b:	8b 45 0c             	mov    0xc(%ebp),%eax
 a7e:	fc                   	cld    
 a7f:	f3 aa                	rep stos %al,%es:(%edi)
 a81:	89 d0                	mov    %edx,%eax
 a83:	5f                   	pop    %edi
 a84:	5d                   	pop    %ebp
 a85:	c3                   	ret    
 a86:	f3 0f 1e fb          	endbr32 
 a8a:	55                   	push   %ebp
 a8b:	89 e5                	mov    %esp,%ebp
 a8d:	8b 45 08             	mov    0x8(%ebp),%eax
 a90:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 a94:	0f b6 10             	movzbl (%eax),%edx
 a97:	84 d2                	test   %dl,%dl
 a99:	74 09                	je     0xaa4
 a9b:	38 ca                	cmp    %cl,%dl
 a9d:	74 0a                	je     0xaa9
 a9f:	83 c0 01             	add    $0x1,%eax
 aa2:	eb f0                	jmp    0xa94
 aa4:	b8 00 00 00 00       	mov    $0x0,%eax
 aa9:	5d                   	pop    %ebp
 aaa:	c3                   	ret    
 aab:	f3 0f 1e fb          	endbr32 
 aaf:	55                   	push   %ebp
 ab0:	89 e5                	mov    %esp,%ebp
 ab2:	57                   	push   %edi
 ab3:	56                   	push   %esi
 ab4:	53                   	push   %ebx
 ab5:	83 ec 1c             	sub    $0x1c,%esp
 ab8:	8b 7d 08             	mov    0x8(%ebp),%edi
 abb:	bb 00 00 00 00       	mov    $0x0,%ebx
 ac0:	89 de                	mov    %ebx,%esi
 ac2:	83 c3 01             	add    $0x1,%ebx
 ac5:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 ac8:	7d 2e                	jge    0xaf8
 aca:	83 ec 04             	sub    $0x4,%esp
 acd:	6a 01                	push   $0x1
 acf:	8d 45 e7             	lea    -0x19(%ebp),%eax
 ad2:	50                   	push   %eax
 ad3:	6a 00                	push   $0x0
 ad5:	e8 f6 00 00 00       	call   0xbd0
 ada:	83 c4 10             	add    $0x10,%esp
 add:	85 c0                	test   %eax,%eax
 adf:	7e 17                	jle    0xaf8
 ae1:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 ae5:	88 04 37             	mov    %al,(%edi,%esi,1)
 ae8:	3c 0a                	cmp    $0xa,%al
 aea:	0f 94 c2             	sete   %dl
 aed:	3c 0d                	cmp    $0xd,%al
 aef:	0f 94 c0             	sete   %al
 af2:	08 c2                	or     %al,%dl
 af4:	74 ca                	je     0xac0
 af6:	89 de                	mov    %ebx,%esi
 af8:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 afc:	89 f8                	mov    %edi,%eax
 afe:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b01:	5b                   	pop    %ebx
 b02:	5e                   	pop    %esi
 b03:	5f                   	pop    %edi
 b04:	5d                   	pop    %ebp
 b05:	c3                   	ret    
 b06:	f3 0f 1e fb          	endbr32 
 b0a:	55                   	push   %ebp
 b0b:	89 e5                	mov    %esp,%ebp
 b0d:	56                   	push   %esi
 b0e:	53                   	push   %ebx
 b0f:	83 ec 08             	sub    $0x8,%esp
 b12:	6a 00                	push   $0x0
 b14:	ff 75 08             	pushl  0x8(%ebp)
 b17:	e8 dc 00 00 00       	call   0xbf8
 b1c:	83 c4 10             	add    $0x10,%esp
 b1f:	85 c0                	test   %eax,%eax
 b21:	78 24                	js     0xb47
 b23:	89 c3                	mov    %eax,%ebx
 b25:	83 ec 08             	sub    $0x8,%esp
 b28:	ff 75 0c             	pushl  0xc(%ebp)
 b2b:	50                   	push   %eax
 b2c:	e8 df 00 00 00       	call   0xc10
 b31:	89 c6                	mov    %eax,%esi
 b33:	89 1c 24             	mov    %ebx,(%esp)
 b36:	e8 a5 00 00 00       	call   0xbe0
 b3b:	83 c4 10             	add    $0x10,%esp
 b3e:	89 f0                	mov    %esi,%eax
 b40:	8d 65 f8             	lea    -0x8(%ebp),%esp
 b43:	5b                   	pop    %ebx
 b44:	5e                   	pop    %esi
 b45:	5d                   	pop    %ebp
 b46:	c3                   	ret    
 b47:	be ff ff ff ff       	mov    $0xffffffff,%esi
 b4c:	eb f0                	jmp    0xb3e
 b4e:	f3 0f 1e fb          	endbr32 
 b52:	55                   	push   %ebp
 b53:	89 e5                	mov    %esp,%ebp
 b55:	53                   	push   %ebx
 b56:	8b 4d 08             	mov    0x8(%ebp),%ecx
 b59:	ba 00 00 00 00       	mov    $0x0,%edx
 b5e:	0f b6 01             	movzbl (%ecx),%eax
 b61:	8d 58 d0             	lea    -0x30(%eax),%ebx
 b64:	80 fb 09             	cmp    $0x9,%bl
 b67:	77 12                	ja     0xb7b
 b69:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 b6c:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 b6f:	83 c1 01             	add    $0x1,%ecx
 b72:	0f be c0             	movsbl %al,%eax
 b75:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 b79:	eb e3                	jmp    0xb5e
 b7b:	89 d0                	mov    %edx,%eax
 b7d:	5b                   	pop    %ebx
 b7e:	5d                   	pop    %ebp
 b7f:	c3                   	ret    
 b80:	f3 0f 1e fb          	endbr32 
 b84:	55                   	push   %ebp
 b85:	89 e5                	mov    %esp,%ebp
 b87:	56                   	push   %esi
 b88:	53                   	push   %ebx
 b89:	8b 75 08             	mov    0x8(%ebp),%esi
 b8c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b8f:	8b 45 10             	mov    0x10(%ebp),%eax
 b92:	89 f2                	mov    %esi,%edx
 b94:	8d 58 ff             	lea    -0x1(%eax),%ebx
 b97:	85 c0                	test   %eax,%eax
 b99:	7e 0f                	jle    0xbaa
 b9b:	0f b6 01             	movzbl (%ecx),%eax
 b9e:	88 02                	mov    %al,(%edx)
 ba0:	8d 49 01             	lea    0x1(%ecx),%ecx
 ba3:	8d 52 01             	lea    0x1(%edx),%edx
 ba6:	89 d8                	mov    %ebx,%eax
 ba8:	eb ea                	jmp    0xb94
 baa:	89 f0                	mov    %esi,%eax
 bac:	5b                   	pop    %ebx
 bad:	5e                   	pop    %esi
 bae:	5d                   	pop    %ebp
 baf:	c3                   	ret    
 bb0:	b8 01 00 00 00       	mov    $0x1,%eax
 bb5:	cd 40                	int    $0x40
 bb7:	c3                   	ret    
 bb8:	b8 02 00 00 00       	mov    $0x2,%eax
 bbd:	cd 40                	int    $0x40
 bbf:	c3                   	ret    
 bc0:	b8 03 00 00 00       	mov    $0x3,%eax
 bc5:	cd 40                	int    $0x40
 bc7:	c3                   	ret    
 bc8:	b8 04 00 00 00       	mov    $0x4,%eax
 bcd:	cd 40                	int    $0x40
 bcf:	c3                   	ret    
 bd0:	b8 05 00 00 00       	mov    $0x5,%eax
 bd5:	cd 40                	int    $0x40
 bd7:	c3                   	ret    
 bd8:	b8 10 00 00 00       	mov    $0x10,%eax
 bdd:	cd 40                	int    $0x40
 bdf:	c3                   	ret    
 be0:	b8 15 00 00 00       	mov    $0x15,%eax
 be5:	cd 40                	int    $0x40
 be7:	c3                   	ret    
 be8:	b8 06 00 00 00       	mov    $0x6,%eax
 bed:	cd 40                	int    $0x40
 bef:	c3                   	ret    
 bf0:	b8 07 00 00 00       	mov    $0x7,%eax
 bf5:	cd 40                	int    $0x40
 bf7:	c3                   	ret    
 bf8:	b8 0f 00 00 00       	mov    $0xf,%eax
 bfd:	cd 40                	int    $0x40
 bff:	c3                   	ret    
 c00:	b8 11 00 00 00       	mov    $0x11,%eax
 c05:	cd 40                	int    $0x40
 c07:	c3                   	ret    
 c08:	b8 12 00 00 00       	mov    $0x12,%eax
 c0d:	cd 40                	int    $0x40
 c0f:	c3                   	ret    
 c10:	b8 08 00 00 00       	mov    $0x8,%eax
 c15:	cd 40                	int    $0x40
 c17:	c3                   	ret    
 c18:	b8 13 00 00 00       	mov    $0x13,%eax
 c1d:	cd 40                	int    $0x40
 c1f:	c3                   	ret    
 c20:	b8 14 00 00 00       	mov    $0x14,%eax
 c25:	cd 40                	int    $0x40
 c27:	c3                   	ret    
 c28:	b8 09 00 00 00       	mov    $0x9,%eax
 c2d:	cd 40                	int    $0x40
 c2f:	c3                   	ret    
 c30:	b8 0a 00 00 00       	mov    $0xa,%eax
 c35:	cd 40                	int    $0x40
 c37:	c3                   	ret    
 c38:	b8 0b 00 00 00       	mov    $0xb,%eax
 c3d:	cd 40                	int    $0x40
 c3f:	c3                   	ret    
 c40:	b8 0c 00 00 00       	mov    $0xc,%eax
 c45:	cd 40                	int    $0x40
 c47:	c3                   	ret    
 c48:	b8 0d 00 00 00       	mov    $0xd,%eax
 c4d:	cd 40                	int    $0x40
 c4f:	c3                   	ret    
 c50:	b8 0e 00 00 00       	mov    $0xe,%eax
 c55:	cd 40                	int    $0x40
 c57:	c3                   	ret    
 c58:	b8 16 00 00 00       	mov    $0x16,%eax
 c5d:	cd 40                	int    $0x40
 c5f:	c3                   	ret    
 c60:	55                   	push   %ebp
 c61:	89 e5                	mov    %esp,%ebp
 c63:	83 ec 1c             	sub    $0x1c,%esp
 c66:	88 55 f4             	mov    %dl,-0xc(%ebp)
 c69:	6a 01                	push   $0x1
 c6b:	8d 55 f4             	lea    -0xc(%ebp),%edx
 c6e:	52                   	push   %edx
 c6f:	50                   	push   %eax
 c70:	e8 63 ff ff ff       	call   0xbd8
 c75:	83 c4 10             	add    $0x10,%esp
 c78:	c9                   	leave  
 c79:	c3                   	ret    
 c7a:	55                   	push   %ebp
 c7b:	89 e5                	mov    %esp,%ebp
 c7d:	57                   	push   %edi
 c7e:	56                   	push   %esi
 c7f:	53                   	push   %ebx
 c80:	83 ec 2c             	sub    $0x2c,%esp
 c83:	89 45 d0             	mov    %eax,-0x30(%ebp)
 c86:	89 d6                	mov    %edx,%esi
 c88:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 c8c:	0f 95 c2             	setne  %dl
 c8f:	89 f0                	mov    %esi,%eax
 c91:	c1 e8 1f             	shr    $0x1f,%eax
 c94:	84 c2                	test   %al,%dl
 c96:	74 42                	je     0xcda
 c98:	f7 de                	neg    %esi
 c9a:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 ca1:	bb 00 00 00 00       	mov    $0x0,%ebx
 ca6:	89 f0                	mov    %esi,%eax
 ca8:	ba 00 00 00 00       	mov    $0x0,%edx
 cad:	f7 f1                	div    %ecx
 caf:	89 df                	mov    %ebx,%edi
 cb1:	83 c3 01             	add    $0x1,%ebx
 cb4:	0f b6 92 b0 10 00 00 	movzbl 0x10b0(%edx),%edx
 cbb:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 cbf:	89 f2                	mov    %esi,%edx
 cc1:	89 c6                	mov    %eax,%esi
 cc3:	39 d1                	cmp    %edx,%ecx
 cc5:	76 df                	jbe    0xca6
 cc7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 ccb:	74 2f                	je     0xcfc
 ccd:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 cd2:	8d 5f 02             	lea    0x2(%edi),%ebx
 cd5:	8b 75 d0             	mov    -0x30(%ebp),%esi
 cd8:	eb 15                	jmp    0xcef
 cda:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 ce1:	eb be                	jmp    0xca1
 ce3:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 ce8:	89 f0                	mov    %esi,%eax
 cea:	e8 71 ff ff ff       	call   0xc60
 cef:	83 eb 01             	sub    $0x1,%ebx
 cf2:	79 ef                	jns    0xce3
 cf4:	83 c4 2c             	add    $0x2c,%esp
 cf7:	5b                   	pop    %ebx
 cf8:	5e                   	pop    %esi
 cf9:	5f                   	pop    %edi
 cfa:	5d                   	pop    %ebp
 cfb:	c3                   	ret    
 cfc:	8b 75 d0             	mov    -0x30(%ebp),%esi
 cff:	eb ee                	jmp    0xcef
 d01:	f3 0f 1e fb          	endbr32 
 d05:	55                   	push   %ebp
 d06:	89 e5                	mov    %esp,%ebp
 d08:	57                   	push   %edi
 d09:	56                   	push   %esi
 d0a:	53                   	push   %ebx
 d0b:	83 ec 1c             	sub    $0x1c,%esp
 d0e:	8d 45 10             	lea    0x10(%ebp),%eax
 d11:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 d14:	be 00 00 00 00       	mov    $0x0,%esi
 d19:	bb 00 00 00 00       	mov    $0x0,%ebx
 d1e:	eb 14                	jmp    0xd34
 d20:	89 fa                	mov    %edi,%edx
 d22:	8b 45 08             	mov    0x8(%ebp),%eax
 d25:	e8 36 ff ff ff       	call   0xc60
 d2a:	eb 05                	jmp    0xd31
 d2c:	83 fe 25             	cmp    $0x25,%esi
 d2f:	74 25                	je     0xd56
 d31:	83 c3 01             	add    $0x1,%ebx
 d34:	8b 45 0c             	mov    0xc(%ebp),%eax
 d37:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 d3b:	84 c0                	test   %al,%al
 d3d:	0f 84 23 01 00 00    	je     0xe66
 d43:	0f be f8             	movsbl %al,%edi
 d46:	0f b6 c0             	movzbl %al,%eax
 d49:	85 f6                	test   %esi,%esi
 d4b:	75 df                	jne    0xd2c
 d4d:	83 f8 25             	cmp    $0x25,%eax
 d50:	75 ce                	jne    0xd20
 d52:	89 c6                	mov    %eax,%esi
 d54:	eb db                	jmp    0xd31
 d56:	83 f8 64             	cmp    $0x64,%eax
 d59:	74 49                	je     0xda4
 d5b:	83 f8 78             	cmp    $0x78,%eax
 d5e:	0f 94 c1             	sete   %cl
 d61:	83 f8 70             	cmp    $0x70,%eax
 d64:	0f 94 c2             	sete   %dl
 d67:	08 d1                	or     %dl,%cl
 d69:	75 63                	jne    0xdce
 d6b:	83 f8 73             	cmp    $0x73,%eax
 d6e:	0f 84 84 00 00 00    	je     0xdf8
 d74:	83 f8 63             	cmp    $0x63,%eax
 d77:	0f 84 b7 00 00 00    	je     0xe34
 d7d:	83 f8 25             	cmp    $0x25,%eax
 d80:	0f 84 cc 00 00 00    	je     0xe52
 d86:	ba 25 00 00 00       	mov    $0x25,%edx
 d8b:	8b 45 08             	mov    0x8(%ebp),%eax
 d8e:	e8 cd fe ff ff       	call   0xc60
 d93:	89 fa                	mov    %edi,%edx
 d95:	8b 45 08             	mov    0x8(%ebp),%eax
 d98:	e8 c3 fe ff ff       	call   0xc60
 d9d:	be 00 00 00 00       	mov    $0x0,%esi
 da2:	eb 8d                	jmp    0xd31
 da4:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 da7:	8b 17                	mov    (%edi),%edx
 da9:	83 ec 0c             	sub    $0xc,%esp
 dac:	6a 01                	push   $0x1
 dae:	b9 0a 00 00 00       	mov    $0xa,%ecx
 db3:	8b 45 08             	mov    0x8(%ebp),%eax
 db6:	e8 bf fe ff ff       	call   0xc7a
 dbb:	83 c7 04             	add    $0x4,%edi
 dbe:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 dc1:	83 c4 10             	add    $0x10,%esp
 dc4:	be 00 00 00 00       	mov    $0x0,%esi
 dc9:	e9 63 ff ff ff       	jmp    0xd31
 dce:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 dd1:	8b 17                	mov    (%edi),%edx
 dd3:	83 ec 0c             	sub    $0xc,%esp
 dd6:	6a 00                	push   $0x0
 dd8:	b9 10 00 00 00       	mov    $0x10,%ecx
 ddd:	8b 45 08             	mov    0x8(%ebp),%eax
 de0:	e8 95 fe ff ff       	call   0xc7a
 de5:	83 c7 04             	add    $0x4,%edi
 de8:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 deb:	83 c4 10             	add    $0x10,%esp
 dee:	be 00 00 00 00       	mov    $0x0,%esi
 df3:	e9 39 ff ff ff       	jmp    0xd31
 df8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 dfb:	8b 30                	mov    (%eax),%esi
 dfd:	83 c0 04             	add    $0x4,%eax
 e00:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 e03:	85 f6                	test   %esi,%esi
 e05:	75 28                	jne    0xe2f
 e07:	be a8 10 00 00       	mov    $0x10a8,%esi
 e0c:	8b 7d 08             	mov    0x8(%ebp),%edi
 e0f:	eb 0d                	jmp    0xe1e
 e11:	0f be d2             	movsbl %dl,%edx
 e14:	89 f8                	mov    %edi,%eax
 e16:	e8 45 fe ff ff       	call   0xc60
 e1b:	83 c6 01             	add    $0x1,%esi
 e1e:	0f b6 16             	movzbl (%esi),%edx
 e21:	84 d2                	test   %dl,%dl
 e23:	75 ec                	jne    0xe11
 e25:	be 00 00 00 00       	mov    $0x0,%esi
 e2a:	e9 02 ff ff ff       	jmp    0xd31
 e2f:	8b 7d 08             	mov    0x8(%ebp),%edi
 e32:	eb ea                	jmp    0xe1e
 e34:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 e37:	0f be 17             	movsbl (%edi),%edx
 e3a:	8b 45 08             	mov    0x8(%ebp),%eax
 e3d:	e8 1e fe ff ff       	call   0xc60
 e42:	83 c7 04             	add    $0x4,%edi
 e45:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 e48:	be 00 00 00 00       	mov    $0x0,%esi
 e4d:	e9 df fe ff ff       	jmp    0xd31
 e52:	89 fa                	mov    %edi,%edx
 e54:	8b 45 08             	mov    0x8(%ebp),%eax
 e57:	e8 04 fe ff ff       	call   0xc60
 e5c:	be 00 00 00 00       	mov    $0x0,%esi
 e61:	e9 cb fe ff ff       	jmp    0xd31
 e66:	8d 65 f4             	lea    -0xc(%ebp),%esp
 e69:	5b                   	pop    %ebx
 e6a:	5e                   	pop    %esi
 e6b:	5f                   	pop    %edi
 e6c:	5d                   	pop    %ebp
 e6d:	c3                   	ret    
 e6e:	f3 0f 1e fb          	endbr32 
 e72:	55                   	push   %ebp
 e73:	89 e5                	mov    %esp,%ebp
 e75:	57                   	push   %edi
 e76:	56                   	push   %esi
 e77:	53                   	push   %ebx
 e78:	8b 5d 08             	mov    0x8(%ebp),%ebx
 e7b:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 e7e:	a1 a4 16 00 00       	mov    0x16a4,%eax
 e83:	eb 02                	jmp    0xe87
 e85:	89 d0                	mov    %edx,%eax
 e87:	39 c8                	cmp    %ecx,%eax
 e89:	73 04                	jae    0xe8f
 e8b:	39 08                	cmp    %ecx,(%eax)
 e8d:	77 12                	ja     0xea1
 e8f:	8b 10                	mov    (%eax),%edx
 e91:	39 c2                	cmp    %eax,%edx
 e93:	77 f0                	ja     0xe85
 e95:	39 c8                	cmp    %ecx,%eax
 e97:	72 08                	jb     0xea1
 e99:	39 ca                	cmp    %ecx,%edx
 e9b:	77 04                	ja     0xea1
 e9d:	89 d0                	mov    %edx,%eax
 e9f:	eb e6                	jmp    0xe87
 ea1:	8b 73 fc             	mov    -0x4(%ebx),%esi
 ea4:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 ea7:	8b 10                	mov    (%eax),%edx
 ea9:	39 d7                	cmp    %edx,%edi
 eab:	74 19                	je     0xec6
 ead:	89 53 f8             	mov    %edx,-0x8(%ebx)
 eb0:	8b 50 04             	mov    0x4(%eax),%edx
 eb3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 eb6:	39 ce                	cmp    %ecx,%esi
 eb8:	74 1b                	je     0xed5
 eba:	89 08                	mov    %ecx,(%eax)
 ebc:	a3 a4 16 00 00       	mov    %eax,0x16a4
 ec1:	5b                   	pop    %ebx
 ec2:	5e                   	pop    %esi
 ec3:	5f                   	pop    %edi
 ec4:	5d                   	pop    %ebp
 ec5:	c3                   	ret    
 ec6:	03 72 04             	add    0x4(%edx),%esi
 ec9:	89 73 fc             	mov    %esi,-0x4(%ebx)
 ecc:	8b 10                	mov    (%eax),%edx
 ece:	8b 12                	mov    (%edx),%edx
 ed0:	89 53 f8             	mov    %edx,-0x8(%ebx)
 ed3:	eb db                	jmp    0xeb0
 ed5:	03 53 fc             	add    -0x4(%ebx),%edx
 ed8:	89 50 04             	mov    %edx,0x4(%eax)
 edb:	8b 53 f8             	mov    -0x8(%ebx),%edx
 ede:	89 10                	mov    %edx,(%eax)
 ee0:	eb da                	jmp    0xebc
 ee2:	55                   	push   %ebp
 ee3:	89 e5                	mov    %esp,%ebp
 ee5:	53                   	push   %ebx
 ee6:	83 ec 04             	sub    $0x4,%esp
 ee9:	89 c3                	mov    %eax,%ebx
 eeb:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 ef0:	77 05                	ja     0xef7
 ef2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ef7:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 efe:	83 ec 0c             	sub    $0xc,%esp
 f01:	50                   	push   %eax
 f02:	e8 39 fd ff ff       	call   0xc40
 f07:	83 c4 10             	add    $0x10,%esp
 f0a:	83 f8 ff             	cmp    $0xffffffff,%eax
 f0d:	74 1c                	je     0xf2b
 f0f:	89 58 04             	mov    %ebx,0x4(%eax)
 f12:	83 c0 08             	add    $0x8,%eax
 f15:	83 ec 0c             	sub    $0xc,%esp
 f18:	50                   	push   %eax
 f19:	e8 50 ff ff ff       	call   0xe6e
 f1e:	a1 a4 16 00 00       	mov    0x16a4,%eax
 f23:	83 c4 10             	add    $0x10,%esp
 f26:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 f29:	c9                   	leave  
 f2a:	c3                   	ret    
 f2b:	b8 00 00 00 00       	mov    $0x0,%eax
 f30:	eb f4                	jmp    0xf26
 f32:	f3 0f 1e fb          	endbr32 
 f36:	55                   	push   %ebp
 f37:	89 e5                	mov    %esp,%ebp
 f39:	53                   	push   %ebx
 f3a:	83 ec 04             	sub    $0x4,%esp
 f3d:	8b 45 08             	mov    0x8(%ebp),%eax
 f40:	8d 58 07             	lea    0x7(%eax),%ebx
 f43:	c1 eb 03             	shr    $0x3,%ebx
 f46:	83 c3 01             	add    $0x1,%ebx
 f49:	8b 0d a4 16 00 00    	mov    0x16a4,%ecx
 f4f:	85 c9                	test   %ecx,%ecx
 f51:	74 04                	je     0xf57
 f53:	8b 01                	mov    (%ecx),%eax
 f55:	eb 4b                	jmp    0xfa2
 f57:	c7 05 a4 16 00 00 a8 	movl   $0x16a8,0x16a4
 f5e:	16 00 00 
 f61:	c7 05 a8 16 00 00 a8 	movl   $0x16a8,0x16a8
 f68:	16 00 00 
 f6b:	c7 05 ac 16 00 00 00 	movl   $0x0,0x16ac
 f72:	00 00 00 
 f75:	b9 a8 16 00 00       	mov    $0x16a8,%ecx
 f7a:	eb d7                	jmp    0xf53
 f7c:	74 1a                	je     0xf98
 f7e:	29 da                	sub    %ebx,%edx
 f80:	89 50 04             	mov    %edx,0x4(%eax)
 f83:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 f86:	89 58 04             	mov    %ebx,0x4(%eax)
 f89:	89 0d a4 16 00 00    	mov    %ecx,0x16a4
 f8f:	83 c0 08             	add    $0x8,%eax
 f92:	83 c4 04             	add    $0x4,%esp
 f95:	5b                   	pop    %ebx
 f96:	5d                   	pop    %ebp
 f97:	c3                   	ret    
 f98:	8b 10                	mov    (%eax),%edx
 f9a:	89 11                	mov    %edx,(%ecx)
 f9c:	eb eb                	jmp    0xf89
 f9e:	89 c1                	mov    %eax,%ecx
 fa0:	8b 00                	mov    (%eax),%eax
 fa2:	8b 50 04             	mov    0x4(%eax),%edx
 fa5:	39 da                	cmp    %ebx,%edx
 fa7:	73 d3                	jae    0xf7c
 fa9:	39 05 a4 16 00 00    	cmp    %eax,0x16a4
 faf:	75 ed                	jne    0xf9e
 fb1:	89 d8                	mov    %ebx,%eax
 fb3:	e8 2a ff ff ff       	call   0xee2
 fb8:	85 c0                	test   %eax,%eax
 fba:	75 e2                	jne    0xf9e
 fbc:	eb d4                	jmp    0xf92
