
_wc:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	57                   	push   %edi
   8:	56                   	push   %esi
   9:	53                   	push   %ebx
   a:	83 ec 1c             	sub    $0x1c,%esp
   d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  14:	be 00 00 00 00       	mov    $0x0,%esi
  19:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  20:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  27:	83 ec 04             	sub    $0x4,%esp
  2a:	68 00 02 00 00       	push   $0x200
  2f:	68 80 0a 00 00       	push   $0xa80
  34:	ff 75 08             	pushl  0x8(%ebp)
  37:	e8 03 03 00 00       	call   0x33f
  3c:	89 c7                	mov    %eax,%edi
  3e:	83 c4 10             	add    $0x10,%esp
  41:	85 c0                	test   %eax,%eax
  43:	7e 54                	jle    0x99
  45:	bb 00 00 00 00       	mov    $0x0,%ebx
  4a:	eb 22                	jmp    0x6e
  4c:	83 ec 08             	sub    $0x8,%esp
  4f:	0f be c0             	movsbl %al,%eax
  52:	50                   	push   %eax
  53:	68 30 07 00 00       	push   $0x730
  58:	e8 98 01 00 00       	call   0x1f5
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	74 22                	je     0x86
  64:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  6b:	83 c3 01             	add    $0x1,%ebx
  6e:	39 fb                	cmp    %edi,%ebx
  70:	7d b5                	jge    0x27
  72:	83 c6 01             	add    $0x1,%esi
  75:	0f b6 83 80 0a 00 00 	movzbl 0xa80(%ebx),%eax
  7c:	3c 0a                	cmp    $0xa,%al
  7e:	75 cc                	jne    0x4c
  80:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
  84:	eb c6                	jmp    0x4c
  86:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  8a:	75 df                	jne    0x6b
  8c:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
  90:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
  97:	eb d2                	jmp    0x6b
  99:	78 24                	js     0xbf
  9b:	83 ec 08             	sub    $0x8,%esp
  9e:	ff 75 0c             	pushl  0xc(%ebp)
  a1:	56                   	push   %esi
  a2:	ff 75 dc             	pushl  -0x24(%ebp)
  a5:	ff 75 e0             	pushl  -0x20(%ebp)
  a8:	68 46 07 00 00       	push   $0x746
  ad:	6a 01                	push   $0x1
  af:	e8 bc 03 00 00       	call   0x470
  b4:	83 c4 20             	add    $0x20,%esp
  b7:	8d 65 f4             	lea    -0xc(%ebp),%esp
  ba:	5b                   	pop    %ebx
  bb:	5e                   	pop    %esi
  bc:	5f                   	pop    %edi
  bd:	5d                   	pop    %ebp
  be:	c3                   	ret    
  bf:	83 ec 08             	sub    $0x8,%esp
  c2:	68 36 07 00 00       	push   $0x736
  c7:	6a 01                	push   $0x1
  c9:	e8 a2 03 00 00       	call   0x470
  ce:	e8 54 02 00 00       	call   0x327
  d3:	f3 0f 1e fb          	endbr32 
  d7:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  db:	83 e4 f0             	and    $0xfffffff0,%esp
  de:	ff 71 fc             	pushl  -0x4(%ecx)
  e1:	55                   	push   %ebp
  e2:	89 e5                	mov    %esp,%ebp
  e4:	57                   	push   %edi
  e5:	56                   	push   %esi
  e6:	53                   	push   %ebx
  e7:	51                   	push   %ecx
  e8:	83 ec 18             	sub    $0x18,%esp
  eb:	8b 01                	mov    (%ecx),%eax
  ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  f0:	8b 51 04             	mov    0x4(%ecx),%edx
  f3:	89 55 e0             	mov    %edx,-0x20(%ebp)
  f6:	83 f8 01             	cmp    $0x1,%eax
  f9:	7e 40                	jle    0x13b
  fb:	be 01 00 00 00       	mov    $0x1,%esi
 100:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 103:	7d 60                	jge    0x165
 105:	8b 45 e0             	mov    -0x20(%ebp),%eax
 108:	8d 3c b0             	lea    (%eax,%esi,4),%edi
 10b:	83 ec 08             	sub    $0x8,%esp
 10e:	6a 00                	push   $0x0
 110:	ff 37                	pushl  (%edi)
 112:	e8 50 02 00 00       	call   0x367
 117:	89 c3                	mov    %eax,%ebx
 119:	83 c4 10             	add    $0x10,%esp
 11c:	85 c0                	test   %eax,%eax
 11e:	78 2f                	js     0x14f
 120:	83 ec 08             	sub    $0x8,%esp
 123:	ff 37                	pushl  (%edi)
 125:	50                   	push   %eax
 126:	e8 d5 fe ff ff       	call   0x0
 12b:	89 1c 24             	mov    %ebx,(%esp)
 12e:	e8 1c 02 00 00       	call   0x34f
 133:	83 c6 01             	add    $0x1,%esi
 136:	83 c4 10             	add    $0x10,%esp
 139:	eb c5                	jmp    0x100
 13b:	83 ec 08             	sub    $0x8,%esp
 13e:	68 45 07 00 00       	push   $0x745
 143:	6a 00                	push   $0x0
 145:	e8 b6 fe ff ff       	call   0x0
 14a:	e8 d8 01 00 00       	call   0x327
 14f:	83 ec 04             	sub    $0x4,%esp
 152:	ff 37                	pushl  (%edi)
 154:	68 53 07 00 00       	push   $0x753
 159:	6a 01                	push   $0x1
 15b:	e8 10 03 00 00       	call   0x470
 160:	e8 c2 01 00 00       	call   0x327
 165:	e8 bd 01 00 00       	call   0x327
 16a:	f3 0f 1e fb          	endbr32 
 16e:	55                   	push   %ebp
 16f:	89 e5                	mov    %esp,%ebp
 171:	56                   	push   %esi
 172:	53                   	push   %ebx
 173:	8b 75 08             	mov    0x8(%ebp),%esi
 176:	8b 55 0c             	mov    0xc(%ebp),%edx
 179:	89 f0                	mov    %esi,%eax
 17b:	89 d1                	mov    %edx,%ecx
 17d:	83 c2 01             	add    $0x1,%edx
 180:	89 c3                	mov    %eax,%ebx
 182:	83 c0 01             	add    $0x1,%eax
 185:	0f b6 09             	movzbl (%ecx),%ecx
 188:	88 0b                	mov    %cl,(%ebx)
 18a:	84 c9                	test   %cl,%cl
 18c:	75 ed                	jne    0x17b
 18e:	89 f0                	mov    %esi,%eax
 190:	5b                   	pop    %ebx
 191:	5e                   	pop    %esi
 192:	5d                   	pop    %ebp
 193:	c3                   	ret    
 194:	f3 0f 1e fb          	endbr32 
 198:	55                   	push   %ebp
 199:	89 e5                	mov    %esp,%ebp
 19b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 19e:	8b 55 0c             	mov    0xc(%ebp),%edx
 1a1:	0f b6 01             	movzbl (%ecx),%eax
 1a4:	84 c0                	test   %al,%al
 1a6:	74 0c                	je     0x1b4
 1a8:	3a 02                	cmp    (%edx),%al
 1aa:	75 08                	jne    0x1b4
 1ac:	83 c1 01             	add    $0x1,%ecx
 1af:	83 c2 01             	add    $0x1,%edx
 1b2:	eb ed                	jmp    0x1a1
 1b4:	0f b6 c0             	movzbl %al,%eax
 1b7:	0f b6 12             	movzbl (%edx),%edx
 1ba:	29 d0                	sub    %edx,%eax
 1bc:	5d                   	pop    %ebp
 1bd:	c3                   	ret    
 1be:	f3 0f 1e fb          	endbr32 
 1c2:	55                   	push   %ebp
 1c3:	89 e5                	mov    %esp,%ebp
 1c5:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1c8:	b8 00 00 00 00       	mov    $0x0,%eax
 1cd:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 1d1:	74 05                	je     0x1d8
 1d3:	83 c0 01             	add    $0x1,%eax
 1d6:	eb f5                	jmp    0x1cd
 1d8:	5d                   	pop    %ebp
 1d9:	c3                   	ret    
 1da:	f3 0f 1e fb          	endbr32 
 1de:	55                   	push   %ebp
 1df:	89 e5                	mov    %esp,%ebp
 1e1:	57                   	push   %edi
 1e2:	8b 55 08             	mov    0x8(%ebp),%edx
 1e5:	89 d7                	mov    %edx,%edi
 1e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ed:	fc                   	cld    
 1ee:	f3 aa                	rep stos %al,%es:(%edi)
 1f0:	89 d0                	mov    %edx,%eax
 1f2:	5f                   	pop    %edi
 1f3:	5d                   	pop    %ebp
 1f4:	c3                   	ret    
 1f5:	f3 0f 1e fb          	endbr32 
 1f9:	55                   	push   %ebp
 1fa:	89 e5                	mov    %esp,%ebp
 1fc:	8b 45 08             	mov    0x8(%ebp),%eax
 1ff:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 203:	0f b6 10             	movzbl (%eax),%edx
 206:	84 d2                	test   %dl,%dl
 208:	74 09                	je     0x213
 20a:	38 ca                	cmp    %cl,%dl
 20c:	74 0a                	je     0x218
 20e:	83 c0 01             	add    $0x1,%eax
 211:	eb f0                	jmp    0x203
 213:	b8 00 00 00 00       	mov    $0x0,%eax
 218:	5d                   	pop    %ebp
 219:	c3                   	ret    
 21a:	f3 0f 1e fb          	endbr32 
 21e:	55                   	push   %ebp
 21f:	89 e5                	mov    %esp,%ebp
 221:	57                   	push   %edi
 222:	56                   	push   %esi
 223:	53                   	push   %ebx
 224:	83 ec 1c             	sub    $0x1c,%esp
 227:	8b 7d 08             	mov    0x8(%ebp),%edi
 22a:	bb 00 00 00 00       	mov    $0x0,%ebx
 22f:	89 de                	mov    %ebx,%esi
 231:	83 c3 01             	add    $0x1,%ebx
 234:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 237:	7d 2e                	jge    0x267
 239:	83 ec 04             	sub    $0x4,%esp
 23c:	6a 01                	push   $0x1
 23e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 241:	50                   	push   %eax
 242:	6a 00                	push   $0x0
 244:	e8 f6 00 00 00       	call   0x33f
 249:	83 c4 10             	add    $0x10,%esp
 24c:	85 c0                	test   %eax,%eax
 24e:	7e 17                	jle    0x267
 250:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 254:	88 04 37             	mov    %al,(%edi,%esi,1)
 257:	3c 0a                	cmp    $0xa,%al
 259:	0f 94 c2             	sete   %dl
 25c:	3c 0d                	cmp    $0xd,%al
 25e:	0f 94 c0             	sete   %al
 261:	08 c2                	or     %al,%dl
 263:	74 ca                	je     0x22f
 265:	89 de                	mov    %ebx,%esi
 267:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 26b:	89 f8                	mov    %edi,%eax
 26d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 270:	5b                   	pop    %ebx
 271:	5e                   	pop    %esi
 272:	5f                   	pop    %edi
 273:	5d                   	pop    %ebp
 274:	c3                   	ret    
 275:	f3 0f 1e fb          	endbr32 
 279:	55                   	push   %ebp
 27a:	89 e5                	mov    %esp,%ebp
 27c:	56                   	push   %esi
 27d:	53                   	push   %ebx
 27e:	83 ec 08             	sub    $0x8,%esp
 281:	6a 00                	push   $0x0
 283:	ff 75 08             	pushl  0x8(%ebp)
 286:	e8 dc 00 00 00       	call   0x367
 28b:	83 c4 10             	add    $0x10,%esp
 28e:	85 c0                	test   %eax,%eax
 290:	78 24                	js     0x2b6
 292:	89 c3                	mov    %eax,%ebx
 294:	83 ec 08             	sub    $0x8,%esp
 297:	ff 75 0c             	pushl  0xc(%ebp)
 29a:	50                   	push   %eax
 29b:	e8 df 00 00 00       	call   0x37f
 2a0:	89 c6                	mov    %eax,%esi
 2a2:	89 1c 24             	mov    %ebx,(%esp)
 2a5:	e8 a5 00 00 00       	call   0x34f
 2aa:	83 c4 10             	add    $0x10,%esp
 2ad:	89 f0                	mov    %esi,%eax
 2af:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2b2:	5b                   	pop    %ebx
 2b3:	5e                   	pop    %esi
 2b4:	5d                   	pop    %ebp
 2b5:	c3                   	ret    
 2b6:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2bb:	eb f0                	jmp    0x2ad
 2bd:	f3 0f 1e fb          	endbr32 
 2c1:	55                   	push   %ebp
 2c2:	89 e5                	mov    %esp,%ebp
 2c4:	53                   	push   %ebx
 2c5:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2c8:	ba 00 00 00 00       	mov    $0x0,%edx
 2cd:	0f b6 01             	movzbl (%ecx),%eax
 2d0:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2d3:	80 fb 09             	cmp    $0x9,%bl
 2d6:	77 12                	ja     0x2ea
 2d8:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 2db:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2de:	83 c1 01             	add    $0x1,%ecx
 2e1:	0f be c0             	movsbl %al,%eax
 2e4:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2e8:	eb e3                	jmp    0x2cd
 2ea:	89 d0                	mov    %edx,%eax
 2ec:	5b                   	pop    %ebx
 2ed:	5d                   	pop    %ebp
 2ee:	c3                   	ret    
 2ef:	f3 0f 1e fb          	endbr32 
 2f3:	55                   	push   %ebp
 2f4:	89 e5                	mov    %esp,%ebp
 2f6:	56                   	push   %esi
 2f7:	53                   	push   %ebx
 2f8:	8b 75 08             	mov    0x8(%ebp),%esi
 2fb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2fe:	8b 45 10             	mov    0x10(%ebp),%eax
 301:	89 f2                	mov    %esi,%edx
 303:	8d 58 ff             	lea    -0x1(%eax),%ebx
 306:	85 c0                	test   %eax,%eax
 308:	7e 0f                	jle    0x319
 30a:	0f b6 01             	movzbl (%ecx),%eax
 30d:	88 02                	mov    %al,(%edx)
 30f:	8d 49 01             	lea    0x1(%ecx),%ecx
 312:	8d 52 01             	lea    0x1(%edx),%edx
 315:	89 d8                	mov    %ebx,%eax
 317:	eb ea                	jmp    0x303
 319:	89 f0                	mov    %esi,%eax
 31b:	5b                   	pop    %ebx
 31c:	5e                   	pop    %esi
 31d:	5d                   	pop    %ebp
 31e:	c3                   	ret    
 31f:	b8 01 00 00 00       	mov    $0x1,%eax
 324:	cd 40                	int    $0x40
 326:	c3                   	ret    
 327:	b8 02 00 00 00       	mov    $0x2,%eax
 32c:	cd 40                	int    $0x40
 32e:	c3                   	ret    
 32f:	b8 03 00 00 00       	mov    $0x3,%eax
 334:	cd 40                	int    $0x40
 336:	c3                   	ret    
 337:	b8 04 00 00 00       	mov    $0x4,%eax
 33c:	cd 40                	int    $0x40
 33e:	c3                   	ret    
 33f:	b8 05 00 00 00       	mov    $0x5,%eax
 344:	cd 40                	int    $0x40
 346:	c3                   	ret    
 347:	b8 10 00 00 00       	mov    $0x10,%eax
 34c:	cd 40                	int    $0x40
 34e:	c3                   	ret    
 34f:	b8 15 00 00 00       	mov    $0x15,%eax
 354:	cd 40                	int    $0x40
 356:	c3                   	ret    
 357:	b8 06 00 00 00       	mov    $0x6,%eax
 35c:	cd 40                	int    $0x40
 35e:	c3                   	ret    
 35f:	b8 07 00 00 00       	mov    $0x7,%eax
 364:	cd 40                	int    $0x40
 366:	c3                   	ret    
 367:	b8 0f 00 00 00       	mov    $0xf,%eax
 36c:	cd 40                	int    $0x40
 36e:	c3                   	ret    
 36f:	b8 11 00 00 00       	mov    $0x11,%eax
 374:	cd 40                	int    $0x40
 376:	c3                   	ret    
 377:	b8 12 00 00 00       	mov    $0x12,%eax
 37c:	cd 40                	int    $0x40
 37e:	c3                   	ret    
 37f:	b8 08 00 00 00       	mov    $0x8,%eax
 384:	cd 40                	int    $0x40
 386:	c3                   	ret    
 387:	b8 13 00 00 00       	mov    $0x13,%eax
 38c:	cd 40                	int    $0x40
 38e:	c3                   	ret    
 38f:	b8 14 00 00 00       	mov    $0x14,%eax
 394:	cd 40                	int    $0x40
 396:	c3                   	ret    
 397:	b8 09 00 00 00       	mov    $0x9,%eax
 39c:	cd 40                	int    $0x40
 39e:	c3                   	ret    
 39f:	b8 0a 00 00 00       	mov    $0xa,%eax
 3a4:	cd 40                	int    $0x40
 3a6:	c3                   	ret    
 3a7:	b8 0b 00 00 00       	mov    $0xb,%eax
 3ac:	cd 40                	int    $0x40
 3ae:	c3                   	ret    
 3af:	b8 0c 00 00 00       	mov    $0xc,%eax
 3b4:	cd 40                	int    $0x40
 3b6:	c3                   	ret    
 3b7:	b8 0d 00 00 00       	mov    $0xd,%eax
 3bc:	cd 40                	int    $0x40
 3be:	c3                   	ret    
 3bf:	b8 0e 00 00 00       	mov    $0xe,%eax
 3c4:	cd 40                	int    $0x40
 3c6:	c3                   	ret    
 3c7:	b8 16 00 00 00       	mov    $0x16,%eax
 3cc:	cd 40                	int    $0x40
 3ce:	c3                   	ret    
 3cf:	55                   	push   %ebp
 3d0:	89 e5                	mov    %esp,%ebp
 3d2:	83 ec 1c             	sub    $0x1c,%esp
 3d5:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3d8:	6a 01                	push   $0x1
 3da:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3dd:	52                   	push   %edx
 3de:	50                   	push   %eax
 3df:	e8 63 ff ff ff       	call   0x347
 3e4:	83 c4 10             	add    $0x10,%esp
 3e7:	c9                   	leave  
 3e8:	c3                   	ret    
 3e9:	55                   	push   %ebp
 3ea:	89 e5                	mov    %esp,%ebp
 3ec:	57                   	push   %edi
 3ed:	56                   	push   %esi
 3ee:	53                   	push   %ebx
 3ef:	83 ec 2c             	sub    $0x2c,%esp
 3f2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3f5:	89 d6                	mov    %edx,%esi
 3f7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3fb:	0f 95 c2             	setne  %dl
 3fe:	89 f0                	mov    %esi,%eax
 400:	c1 e8 1f             	shr    $0x1f,%eax
 403:	84 c2                	test   %al,%dl
 405:	74 42                	je     0x449
 407:	f7 de                	neg    %esi
 409:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 410:	bb 00 00 00 00       	mov    $0x0,%ebx
 415:	89 f0                	mov    %esi,%eax
 417:	ba 00 00 00 00       	mov    $0x0,%edx
 41c:	f7 f1                	div    %ecx
 41e:	89 df                	mov    %ebx,%edi
 420:	83 c3 01             	add    $0x1,%ebx
 423:	0f b6 92 70 07 00 00 	movzbl 0x770(%edx),%edx
 42a:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 42e:	89 f2                	mov    %esi,%edx
 430:	89 c6                	mov    %eax,%esi
 432:	39 d1                	cmp    %edx,%ecx
 434:	76 df                	jbe    0x415
 436:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 43a:	74 2f                	je     0x46b
 43c:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 441:	8d 5f 02             	lea    0x2(%edi),%ebx
 444:	8b 75 d0             	mov    -0x30(%ebp),%esi
 447:	eb 15                	jmp    0x45e
 449:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 450:	eb be                	jmp    0x410
 452:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 457:	89 f0                	mov    %esi,%eax
 459:	e8 71 ff ff ff       	call   0x3cf
 45e:	83 eb 01             	sub    $0x1,%ebx
 461:	79 ef                	jns    0x452
 463:	83 c4 2c             	add    $0x2c,%esp
 466:	5b                   	pop    %ebx
 467:	5e                   	pop    %esi
 468:	5f                   	pop    %edi
 469:	5d                   	pop    %ebp
 46a:	c3                   	ret    
 46b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 46e:	eb ee                	jmp    0x45e
 470:	f3 0f 1e fb          	endbr32 
 474:	55                   	push   %ebp
 475:	89 e5                	mov    %esp,%ebp
 477:	57                   	push   %edi
 478:	56                   	push   %esi
 479:	53                   	push   %ebx
 47a:	83 ec 1c             	sub    $0x1c,%esp
 47d:	8d 45 10             	lea    0x10(%ebp),%eax
 480:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 483:	be 00 00 00 00       	mov    $0x0,%esi
 488:	bb 00 00 00 00       	mov    $0x0,%ebx
 48d:	eb 14                	jmp    0x4a3
 48f:	89 fa                	mov    %edi,%edx
 491:	8b 45 08             	mov    0x8(%ebp),%eax
 494:	e8 36 ff ff ff       	call   0x3cf
 499:	eb 05                	jmp    0x4a0
 49b:	83 fe 25             	cmp    $0x25,%esi
 49e:	74 25                	je     0x4c5
 4a0:	83 c3 01             	add    $0x1,%ebx
 4a3:	8b 45 0c             	mov    0xc(%ebp),%eax
 4a6:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 4aa:	84 c0                	test   %al,%al
 4ac:	0f 84 23 01 00 00    	je     0x5d5
 4b2:	0f be f8             	movsbl %al,%edi
 4b5:	0f b6 c0             	movzbl %al,%eax
 4b8:	85 f6                	test   %esi,%esi
 4ba:	75 df                	jne    0x49b
 4bc:	83 f8 25             	cmp    $0x25,%eax
 4bf:	75 ce                	jne    0x48f
 4c1:	89 c6                	mov    %eax,%esi
 4c3:	eb db                	jmp    0x4a0
 4c5:	83 f8 64             	cmp    $0x64,%eax
 4c8:	74 49                	je     0x513
 4ca:	83 f8 78             	cmp    $0x78,%eax
 4cd:	0f 94 c1             	sete   %cl
 4d0:	83 f8 70             	cmp    $0x70,%eax
 4d3:	0f 94 c2             	sete   %dl
 4d6:	08 d1                	or     %dl,%cl
 4d8:	75 63                	jne    0x53d
 4da:	83 f8 73             	cmp    $0x73,%eax
 4dd:	0f 84 84 00 00 00    	je     0x567
 4e3:	83 f8 63             	cmp    $0x63,%eax
 4e6:	0f 84 b7 00 00 00    	je     0x5a3
 4ec:	83 f8 25             	cmp    $0x25,%eax
 4ef:	0f 84 cc 00 00 00    	je     0x5c1
 4f5:	ba 25 00 00 00       	mov    $0x25,%edx
 4fa:	8b 45 08             	mov    0x8(%ebp),%eax
 4fd:	e8 cd fe ff ff       	call   0x3cf
 502:	89 fa                	mov    %edi,%edx
 504:	8b 45 08             	mov    0x8(%ebp),%eax
 507:	e8 c3 fe ff ff       	call   0x3cf
 50c:	be 00 00 00 00       	mov    $0x0,%esi
 511:	eb 8d                	jmp    0x4a0
 513:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 516:	8b 17                	mov    (%edi),%edx
 518:	83 ec 0c             	sub    $0xc,%esp
 51b:	6a 01                	push   $0x1
 51d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 522:	8b 45 08             	mov    0x8(%ebp),%eax
 525:	e8 bf fe ff ff       	call   0x3e9
 52a:	83 c7 04             	add    $0x4,%edi
 52d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 530:	83 c4 10             	add    $0x10,%esp
 533:	be 00 00 00 00       	mov    $0x0,%esi
 538:	e9 63 ff ff ff       	jmp    0x4a0
 53d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 540:	8b 17                	mov    (%edi),%edx
 542:	83 ec 0c             	sub    $0xc,%esp
 545:	6a 00                	push   $0x0
 547:	b9 10 00 00 00       	mov    $0x10,%ecx
 54c:	8b 45 08             	mov    0x8(%ebp),%eax
 54f:	e8 95 fe ff ff       	call   0x3e9
 554:	83 c7 04             	add    $0x4,%edi
 557:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 55a:	83 c4 10             	add    $0x10,%esp
 55d:	be 00 00 00 00       	mov    $0x0,%esi
 562:	e9 39 ff ff ff       	jmp    0x4a0
 567:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 56a:	8b 30                	mov    (%eax),%esi
 56c:	83 c0 04             	add    $0x4,%eax
 56f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 572:	85 f6                	test   %esi,%esi
 574:	75 28                	jne    0x59e
 576:	be 67 07 00 00       	mov    $0x767,%esi
 57b:	8b 7d 08             	mov    0x8(%ebp),%edi
 57e:	eb 0d                	jmp    0x58d
 580:	0f be d2             	movsbl %dl,%edx
 583:	89 f8                	mov    %edi,%eax
 585:	e8 45 fe ff ff       	call   0x3cf
 58a:	83 c6 01             	add    $0x1,%esi
 58d:	0f b6 16             	movzbl (%esi),%edx
 590:	84 d2                	test   %dl,%dl
 592:	75 ec                	jne    0x580
 594:	be 00 00 00 00       	mov    $0x0,%esi
 599:	e9 02 ff ff ff       	jmp    0x4a0
 59e:	8b 7d 08             	mov    0x8(%ebp),%edi
 5a1:	eb ea                	jmp    0x58d
 5a3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 5a6:	0f be 17             	movsbl (%edi),%edx
 5a9:	8b 45 08             	mov    0x8(%ebp),%eax
 5ac:	e8 1e fe ff ff       	call   0x3cf
 5b1:	83 c7 04             	add    $0x4,%edi
 5b4:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 5b7:	be 00 00 00 00       	mov    $0x0,%esi
 5bc:	e9 df fe ff ff       	jmp    0x4a0
 5c1:	89 fa                	mov    %edi,%edx
 5c3:	8b 45 08             	mov    0x8(%ebp),%eax
 5c6:	e8 04 fe ff ff       	call   0x3cf
 5cb:	be 00 00 00 00       	mov    $0x0,%esi
 5d0:	e9 cb fe ff ff       	jmp    0x4a0
 5d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5d8:	5b                   	pop    %ebx
 5d9:	5e                   	pop    %esi
 5da:	5f                   	pop    %edi
 5db:	5d                   	pop    %ebp
 5dc:	c3                   	ret    
 5dd:	f3 0f 1e fb          	endbr32 
 5e1:	55                   	push   %ebp
 5e2:	89 e5                	mov    %esp,%ebp
 5e4:	57                   	push   %edi
 5e5:	56                   	push   %esi
 5e6:	53                   	push   %ebx
 5e7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5ea:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5ed:	a1 60 0a 00 00       	mov    0xa60,%eax
 5f2:	eb 02                	jmp    0x5f6
 5f4:	89 d0                	mov    %edx,%eax
 5f6:	39 c8                	cmp    %ecx,%eax
 5f8:	73 04                	jae    0x5fe
 5fa:	39 08                	cmp    %ecx,(%eax)
 5fc:	77 12                	ja     0x610
 5fe:	8b 10                	mov    (%eax),%edx
 600:	39 c2                	cmp    %eax,%edx
 602:	77 f0                	ja     0x5f4
 604:	39 c8                	cmp    %ecx,%eax
 606:	72 08                	jb     0x610
 608:	39 ca                	cmp    %ecx,%edx
 60a:	77 04                	ja     0x610
 60c:	89 d0                	mov    %edx,%eax
 60e:	eb e6                	jmp    0x5f6
 610:	8b 73 fc             	mov    -0x4(%ebx),%esi
 613:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 616:	8b 10                	mov    (%eax),%edx
 618:	39 d7                	cmp    %edx,%edi
 61a:	74 19                	je     0x635
 61c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 61f:	8b 50 04             	mov    0x4(%eax),%edx
 622:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 625:	39 ce                	cmp    %ecx,%esi
 627:	74 1b                	je     0x644
 629:	89 08                	mov    %ecx,(%eax)
 62b:	a3 60 0a 00 00       	mov    %eax,0xa60
 630:	5b                   	pop    %ebx
 631:	5e                   	pop    %esi
 632:	5f                   	pop    %edi
 633:	5d                   	pop    %ebp
 634:	c3                   	ret    
 635:	03 72 04             	add    0x4(%edx),%esi
 638:	89 73 fc             	mov    %esi,-0x4(%ebx)
 63b:	8b 10                	mov    (%eax),%edx
 63d:	8b 12                	mov    (%edx),%edx
 63f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 642:	eb db                	jmp    0x61f
 644:	03 53 fc             	add    -0x4(%ebx),%edx
 647:	89 50 04             	mov    %edx,0x4(%eax)
 64a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 64d:	89 10                	mov    %edx,(%eax)
 64f:	eb da                	jmp    0x62b
 651:	55                   	push   %ebp
 652:	89 e5                	mov    %esp,%ebp
 654:	53                   	push   %ebx
 655:	83 ec 04             	sub    $0x4,%esp
 658:	89 c3                	mov    %eax,%ebx
 65a:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 65f:	77 05                	ja     0x666
 661:	bb 00 10 00 00       	mov    $0x1000,%ebx
 666:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 66d:	83 ec 0c             	sub    $0xc,%esp
 670:	50                   	push   %eax
 671:	e8 39 fd ff ff       	call   0x3af
 676:	83 c4 10             	add    $0x10,%esp
 679:	83 f8 ff             	cmp    $0xffffffff,%eax
 67c:	74 1c                	je     0x69a
 67e:	89 58 04             	mov    %ebx,0x4(%eax)
 681:	83 c0 08             	add    $0x8,%eax
 684:	83 ec 0c             	sub    $0xc,%esp
 687:	50                   	push   %eax
 688:	e8 50 ff ff ff       	call   0x5dd
 68d:	a1 60 0a 00 00       	mov    0xa60,%eax
 692:	83 c4 10             	add    $0x10,%esp
 695:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 698:	c9                   	leave  
 699:	c3                   	ret    
 69a:	b8 00 00 00 00       	mov    $0x0,%eax
 69f:	eb f4                	jmp    0x695
 6a1:	f3 0f 1e fb          	endbr32 
 6a5:	55                   	push   %ebp
 6a6:	89 e5                	mov    %esp,%ebp
 6a8:	53                   	push   %ebx
 6a9:	83 ec 04             	sub    $0x4,%esp
 6ac:	8b 45 08             	mov    0x8(%ebp),%eax
 6af:	8d 58 07             	lea    0x7(%eax),%ebx
 6b2:	c1 eb 03             	shr    $0x3,%ebx
 6b5:	83 c3 01             	add    $0x1,%ebx
 6b8:	8b 0d 60 0a 00 00    	mov    0xa60,%ecx
 6be:	85 c9                	test   %ecx,%ecx
 6c0:	74 04                	je     0x6c6
 6c2:	8b 01                	mov    (%ecx),%eax
 6c4:	eb 4b                	jmp    0x711
 6c6:	c7 05 60 0a 00 00 64 	movl   $0xa64,0xa60
 6cd:	0a 00 00 
 6d0:	c7 05 64 0a 00 00 64 	movl   $0xa64,0xa64
 6d7:	0a 00 00 
 6da:	c7 05 68 0a 00 00 00 	movl   $0x0,0xa68
 6e1:	00 00 00 
 6e4:	b9 64 0a 00 00       	mov    $0xa64,%ecx
 6e9:	eb d7                	jmp    0x6c2
 6eb:	74 1a                	je     0x707
 6ed:	29 da                	sub    %ebx,%edx
 6ef:	89 50 04             	mov    %edx,0x4(%eax)
 6f2:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6f5:	89 58 04             	mov    %ebx,0x4(%eax)
 6f8:	89 0d 60 0a 00 00    	mov    %ecx,0xa60
 6fe:	83 c0 08             	add    $0x8,%eax
 701:	83 c4 04             	add    $0x4,%esp
 704:	5b                   	pop    %ebx
 705:	5d                   	pop    %ebp
 706:	c3                   	ret    
 707:	8b 10                	mov    (%eax),%edx
 709:	89 11                	mov    %edx,(%ecx)
 70b:	eb eb                	jmp    0x6f8
 70d:	89 c1                	mov    %eax,%ecx
 70f:	8b 00                	mov    (%eax),%eax
 711:	8b 50 04             	mov    0x4(%eax),%edx
 714:	39 da                	cmp    %ebx,%edx
 716:	73 d3                	jae    0x6eb
 718:	39 05 60 0a 00 00    	cmp    %eax,0xa60
 71e:	75 ed                	jne    0x70d
 720:	89 d8                	mov    %ebx,%eax
 722:	e8 2a ff ff ff       	call   0x651
 727:	85 c0                	test   %eax,%eax
 729:	75 e2                	jne    0x70d
 72b:	eb d4                	jmp    0x701
