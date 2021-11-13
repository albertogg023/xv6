
_init:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	53                   	push   %ebx
  12:	51                   	push   %ecx
  13:	83 ec 08             	sub    $0x8,%esp
  16:	6a 02                	push   $0x2
  18:	68 a4 06 00 00       	push   $0x6a4
  1d:	e8 bc 02 00 00       	call   0x2de
  22:	83 c4 10             	add    $0x10,%esp
  25:	85 c0                	test   %eax,%eax
  27:	78 59                	js     0x82
  29:	83 ec 0c             	sub    $0xc,%esp
  2c:	6a 00                	push   $0x0
  2e:	e8 e3 02 00 00       	call   0x316
  33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3a:	e8 d7 02 00 00       	call   0x316
  3f:	83 c4 10             	add    $0x10,%esp
  42:	83 ec 08             	sub    $0x8,%esp
  45:	68 ac 06 00 00       	push   $0x6ac
  4a:	6a 01                	push   $0x1
  4c:	e8 96 03 00 00       	call   0x3e7
  51:	e8 40 02 00 00       	call   0x296
  56:	89 c3                	mov    %eax,%ebx
  58:	83 c4 10             	add    $0x10,%esp
  5b:	85 c0                	test   %eax,%eax
  5d:	78 48                	js     0xa7
  5f:	74 5a                	je     0xbb
  61:	e8 40 02 00 00       	call   0x2a6
  66:	85 c0                	test   %eax,%eax
  68:	78 d8                	js     0x42
  6a:	39 c3                	cmp    %eax,%ebx
  6c:	74 d4                	je     0x42
  6e:	83 ec 08             	sub    $0x8,%esp
  71:	68 eb 06 00 00       	push   $0x6eb
  76:	6a 01                	push   $0x1
  78:	e8 6a 03 00 00       	call   0x3e7
  7d:	83 c4 10             	add    $0x10,%esp
  80:	eb df                	jmp    0x61
  82:	83 ec 04             	sub    $0x4,%esp
  85:	6a 01                	push   $0x1
  87:	6a 01                	push   $0x1
  89:	68 a4 06 00 00       	push   $0x6a4
  8e:	e8 53 02 00 00       	call   0x2e6
  93:	83 c4 08             	add    $0x8,%esp
  96:	6a 02                	push   $0x2
  98:	68 a4 06 00 00       	push   $0x6a4
  9d:	e8 3c 02 00 00       	call   0x2de
  a2:	83 c4 10             	add    $0x10,%esp
  a5:	eb 82                	jmp    0x29
  a7:	83 ec 08             	sub    $0x8,%esp
  aa:	68 bf 06 00 00       	push   $0x6bf
  af:	6a 01                	push   $0x1
  b1:	e8 31 03 00 00       	call   0x3e7
  b6:	e8 e3 01 00 00       	call   0x29e
  bb:	83 ec 08             	sub    $0x8,%esp
  be:	68 a0 09 00 00       	push   $0x9a0
  c3:	68 d2 06 00 00       	push   $0x6d2
  c8:	e8 09 02 00 00       	call   0x2d6
  cd:	83 c4 08             	add    $0x8,%esp
  d0:	68 d5 06 00 00       	push   $0x6d5
  d5:	6a 01                	push   $0x1
  d7:	e8 0b 03 00 00       	call   0x3e7
  dc:	e8 bd 01 00 00       	call   0x29e
  e1:	f3 0f 1e fb          	endbr32 
  e5:	55                   	push   %ebp
  e6:	89 e5                	mov    %esp,%ebp
  e8:	56                   	push   %esi
  e9:	53                   	push   %ebx
  ea:	8b 75 08             	mov    0x8(%ebp),%esi
  ed:	8b 55 0c             	mov    0xc(%ebp),%edx
  f0:	89 f0                	mov    %esi,%eax
  f2:	89 d1                	mov    %edx,%ecx
  f4:	83 c2 01             	add    $0x1,%edx
  f7:	89 c3                	mov    %eax,%ebx
  f9:	83 c0 01             	add    $0x1,%eax
  fc:	0f b6 09             	movzbl (%ecx),%ecx
  ff:	88 0b                	mov    %cl,(%ebx)
 101:	84 c9                	test   %cl,%cl
 103:	75 ed                	jne    0xf2
 105:	89 f0                	mov    %esi,%eax
 107:	5b                   	pop    %ebx
 108:	5e                   	pop    %esi
 109:	5d                   	pop    %ebp
 10a:	c3                   	ret    
 10b:	f3 0f 1e fb          	endbr32 
 10f:	55                   	push   %ebp
 110:	89 e5                	mov    %esp,%ebp
 112:	8b 4d 08             	mov    0x8(%ebp),%ecx
 115:	8b 55 0c             	mov    0xc(%ebp),%edx
 118:	0f b6 01             	movzbl (%ecx),%eax
 11b:	84 c0                	test   %al,%al
 11d:	74 0c                	je     0x12b
 11f:	3a 02                	cmp    (%edx),%al
 121:	75 08                	jne    0x12b
 123:	83 c1 01             	add    $0x1,%ecx
 126:	83 c2 01             	add    $0x1,%edx
 129:	eb ed                	jmp    0x118
 12b:	0f b6 c0             	movzbl %al,%eax
 12e:	0f b6 12             	movzbl (%edx),%edx
 131:	29 d0                	sub    %edx,%eax
 133:	5d                   	pop    %ebp
 134:	c3                   	ret    
 135:	f3 0f 1e fb          	endbr32 
 139:	55                   	push   %ebp
 13a:	89 e5                	mov    %esp,%ebp
 13c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 13f:	b8 00 00 00 00       	mov    $0x0,%eax
 144:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 148:	74 05                	je     0x14f
 14a:	83 c0 01             	add    $0x1,%eax
 14d:	eb f5                	jmp    0x144
 14f:	5d                   	pop    %ebp
 150:	c3                   	ret    
 151:	f3 0f 1e fb          	endbr32 
 155:	55                   	push   %ebp
 156:	89 e5                	mov    %esp,%ebp
 158:	57                   	push   %edi
 159:	8b 55 08             	mov    0x8(%ebp),%edx
 15c:	89 d7                	mov    %edx,%edi
 15e:	8b 4d 10             	mov    0x10(%ebp),%ecx
 161:	8b 45 0c             	mov    0xc(%ebp),%eax
 164:	fc                   	cld    
 165:	f3 aa                	rep stos %al,%es:(%edi)
 167:	89 d0                	mov    %edx,%eax
 169:	5f                   	pop    %edi
 16a:	5d                   	pop    %ebp
 16b:	c3                   	ret    
 16c:	f3 0f 1e fb          	endbr32 
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	8b 45 08             	mov    0x8(%ebp),%eax
 176:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 17a:	0f b6 10             	movzbl (%eax),%edx
 17d:	84 d2                	test   %dl,%dl
 17f:	74 09                	je     0x18a
 181:	38 ca                	cmp    %cl,%dl
 183:	74 0a                	je     0x18f
 185:	83 c0 01             	add    $0x1,%eax
 188:	eb f0                	jmp    0x17a
 18a:	b8 00 00 00 00       	mov    $0x0,%eax
 18f:	5d                   	pop    %ebp
 190:	c3                   	ret    
 191:	f3 0f 1e fb          	endbr32 
 195:	55                   	push   %ebp
 196:	89 e5                	mov    %esp,%ebp
 198:	57                   	push   %edi
 199:	56                   	push   %esi
 19a:	53                   	push   %ebx
 19b:	83 ec 1c             	sub    $0x1c,%esp
 19e:	8b 7d 08             	mov    0x8(%ebp),%edi
 1a1:	bb 00 00 00 00       	mov    $0x0,%ebx
 1a6:	89 de                	mov    %ebx,%esi
 1a8:	83 c3 01             	add    $0x1,%ebx
 1ab:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1ae:	7d 2e                	jge    0x1de
 1b0:	83 ec 04             	sub    $0x4,%esp
 1b3:	6a 01                	push   $0x1
 1b5:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1b8:	50                   	push   %eax
 1b9:	6a 00                	push   $0x0
 1bb:	e8 f6 00 00 00       	call   0x2b6
 1c0:	83 c4 10             	add    $0x10,%esp
 1c3:	85 c0                	test   %eax,%eax
 1c5:	7e 17                	jle    0x1de
 1c7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1cb:	88 04 37             	mov    %al,(%edi,%esi,1)
 1ce:	3c 0a                	cmp    $0xa,%al
 1d0:	0f 94 c2             	sete   %dl
 1d3:	3c 0d                	cmp    $0xd,%al
 1d5:	0f 94 c0             	sete   %al
 1d8:	08 c2                	or     %al,%dl
 1da:	74 ca                	je     0x1a6
 1dc:	89 de                	mov    %ebx,%esi
 1de:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 1e2:	89 f8                	mov    %edi,%eax
 1e4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1e7:	5b                   	pop    %ebx
 1e8:	5e                   	pop    %esi
 1e9:	5f                   	pop    %edi
 1ea:	5d                   	pop    %ebp
 1eb:	c3                   	ret    
 1ec:	f3 0f 1e fb          	endbr32 
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	56                   	push   %esi
 1f4:	53                   	push   %ebx
 1f5:	83 ec 08             	sub    $0x8,%esp
 1f8:	6a 00                	push   $0x0
 1fa:	ff 75 08             	pushl  0x8(%ebp)
 1fd:	e8 dc 00 00 00       	call   0x2de
 202:	83 c4 10             	add    $0x10,%esp
 205:	85 c0                	test   %eax,%eax
 207:	78 24                	js     0x22d
 209:	89 c3                	mov    %eax,%ebx
 20b:	83 ec 08             	sub    $0x8,%esp
 20e:	ff 75 0c             	pushl  0xc(%ebp)
 211:	50                   	push   %eax
 212:	e8 df 00 00 00       	call   0x2f6
 217:	89 c6                	mov    %eax,%esi
 219:	89 1c 24             	mov    %ebx,(%esp)
 21c:	e8 a5 00 00 00       	call   0x2c6
 221:	83 c4 10             	add    $0x10,%esp
 224:	89 f0                	mov    %esi,%eax
 226:	8d 65 f8             	lea    -0x8(%ebp),%esp
 229:	5b                   	pop    %ebx
 22a:	5e                   	pop    %esi
 22b:	5d                   	pop    %ebp
 22c:	c3                   	ret    
 22d:	be ff ff ff ff       	mov    $0xffffffff,%esi
 232:	eb f0                	jmp    0x224
 234:	f3 0f 1e fb          	endbr32 
 238:	55                   	push   %ebp
 239:	89 e5                	mov    %esp,%ebp
 23b:	53                   	push   %ebx
 23c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 23f:	ba 00 00 00 00       	mov    $0x0,%edx
 244:	0f b6 01             	movzbl (%ecx),%eax
 247:	8d 58 d0             	lea    -0x30(%eax),%ebx
 24a:	80 fb 09             	cmp    $0x9,%bl
 24d:	77 12                	ja     0x261
 24f:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 252:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 255:	83 c1 01             	add    $0x1,%ecx
 258:	0f be c0             	movsbl %al,%eax
 25b:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 25f:	eb e3                	jmp    0x244
 261:	89 d0                	mov    %edx,%eax
 263:	5b                   	pop    %ebx
 264:	5d                   	pop    %ebp
 265:	c3                   	ret    
 266:	f3 0f 1e fb          	endbr32 
 26a:	55                   	push   %ebp
 26b:	89 e5                	mov    %esp,%ebp
 26d:	56                   	push   %esi
 26e:	53                   	push   %ebx
 26f:	8b 75 08             	mov    0x8(%ebp),%esi
 272:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 275:	8b 45 10             	mov    0x10(%ebp),%eax
 278:	89 f2                	mov    %esi,%edx
 27a:	8d 58 ff             	lea    -0x1(%eax),%ebx
 27d:	85 c0                	test   %eax,%eax
 27f:	7e 0f                	jle    0x290
 281:	0f b6 01             	movzbl (%ecx),%eax
 284:	88 02                	mov    %al,(%edx)
 286:	8d 49 01             	lea    0x1(%ecx),%ecx
 289:	8d 52 01             	lea    0x1(%edx),%edx
 28c:	89 d8                	mov    %ebx,%eax
 28e:	eb ea                	jmp    0x27a
 290:	89 f0                	mov    %esi,%eax
 292:	5b                   	pop    %ebx
 293:	5e                   	pop    %esi
 294:	5d                   	pop    %ebp
 295:	c3                   	ret    
 296:	b8 01 00 00 00       	mov    $0x1,%eax
 29b:	cd 40                	int    $0x40
 29d:	c3                   	ret    
 29e:	b8 02 00 00 00       	mov    $0x2,%eax
 2a3:	cd 40                	int    $0x40
 2a5:	c3                   	ret    
 2a6:	b8 03 00 00 00       	mov    $0x3,%eax
 2ab:	cd 40                	int    $0x40
 2ad:	c3                   	ret    
 2ae:	b8 04 00 00 00       	mov    $0x4,%eax
 2b3:	cd 40                	int    $0x40
 2b5:	c3                   	ret    
 2b6:	b8 05 00 00 00       	mov    $0x5,%eax
 2bb:	cd 40                	int    $0x40
 2bd:	c3                   	ret    
 2be:	b8 10 00 00 00       	mov    $0x10,%eax
 2c3:	cd 40                	int    $0x40
 2c5:	c3                   	ret    
 2c6:	b8 15 00 00 00       	mov    $0x15,%eax
 2cb:	cd 40                	int    $0x40
 2cd:	c3                   	ret    
 2ce:	b8 06 00 00 00       	mov    $0x6,%eax
 2d3:	cd 40                	int    $0x40
 2d5:	c3                   	ret    
 2d6:	b8 07 00 00 00       	mov    $0x7,%eax
 2db:	cd 40                	int    $0x40
 2dd:	c3                   	ret    
 2de:	b8 0f 00 00 00       	mov    $0xf,%eax
 2e3:	cd 40                	int    $0x40
 2e5:	c3                   	ret    
 2e6:	b8 11 00 00 00       	mov    $0x11,%eax
 2eb:	cd 40                	int    $0x40
 2ed:	c3                   	ret    
 2ee:	b8 12 00 00 00       	mov    $0x12,%eax
 2f3:	cd 40                	int    $0x40
 2f5:	c3                   	ret    
 2f6:	b8 08 00 00 00       	mov    $0x8,%eax
 2fb:	cd 40                	int    $0x40
 2fd:	c3                   	ret    
 2fe:	b8 13 00 00 00       	mov    $0x13,%eax
 303:	cd 40                	int    $0x40
 305:	c3                   	ret    
 306:	b8 14 00 00 00       	mov    $0x14,%eax
 30b:	cd 40                	int    $0x40
 30d:	c3                   	ret    
 30e:	b8 09 00 00 00       	mov    $0x9,%eax
 313:	cd 40                	int    $0x40
 315:	c3                   	ret    
 316:	b8 0a 00 00 00       	mov    $0xa,%eax
 31b:	cd 40                	int    $0x40
 31d:	c3                   	ret    
 31e:	b8 0b 00 00 00       	mov    $0xb,%eax
 323:	cd 40                	int    $0x40
 325:	c3                   	ret    
 326:	b8 0c 00 00 00       	mov    $0xc,%eax
 32b:	cd 40                	int    $0x40
 32d:	c3                   	ret    
 32e:	b8 0d 00 00 00       	mov    $0xd,%eax
 333:	cd 40                	int    $0x40
 335:	c3                   	ret    
 336:	b8 0e 00 00 00       	mov    $0xe,%eax
 33b:	cd 40                	int    $0x40
 33d:	c3                   	ret    
 33e:	b8 16 00 00 00       	mov    $0x16,%eax
 343:	cd 40                	int    $0x40
 345:	c3                   	ret    
 346:	55                   	push   %ebp
 347:	89 e5                	mov    %esp,%ebp
 349:	83 ec 1c             	sub    $0x1c,%esp
 34c:	88 55 f4             	mov    %dl,-0xc(%ebp)
 34f:	6a 01                	push   $0x1
 351:	8d 55 f4             	lea    -0xc(%ebp),%edx
 354:	52                   	push   %edx
 355:	50                   	push   %eax
 356:	e8 63 ff ff ff       	call   0x2be
 35b:	83 c4 10             	add    $0x10,%esp
 35e:	c9                   	leave  
 35f:	c3                   	ret    
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	56                   	push   %esi
 365:	53                   	push   %ebx
 366:	83 ec 2c             	sub    $0x2c,%esp
 369:	89 45 d0             	mov    %eax,-0x30(%ebp)
 36c:	89 d6                	mov    %edx,%esi
 36e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 372:	0f 95 c2             	setne  %dl
 375:	89 f0                	mov    %esi,%eax
 377:	c1 e8 1f             	shr    $0x1f,%eax
 37a:	84 c2                	test   %al,%dl
 37c:	74 42                	je     0x3c0
 37e:	f7 de                	neg    %esi
 380:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 387:	bb 00 00 00 00       	mov    $0x0,%ebx
 38c:	89 f0                	mov    %esi,%eax
 38e:	ba 00 00 00 00       	mov    $0x0,%edx
 393:	f7 f1                	div    %ecx
 395:	89 df                	mov    %ebx,%edi
 397:	83 c3 01             	add    $0x1,%ebx
 39a:	0f b6 92 fc 06 00 00 	movzbl 0x6fc(%edx),%edx
 3a1:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3a5:	89 f2                	mov    %esi,%edx
 3a7:	89 c6                	mov    %eax,%esi
 3a9:	39 d1                	cmp    %edx,%ecx
 3ab:	76 df                	jbe    0x38c
 3ad:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3b1:	74 2f                	je     0x3e2
 3b3:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3b8:	8d 5f 02             	lea    0x2(%edi),%ebx
 3bb:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3be:	eb 15                	jmp    0x3d5
 3c0:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3c7:	eb be                	jmp    0x387
 3c9:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3ce:	89 f0                	mov    %esi,%eax
 3d0:	e8 71 ff ff ff       	call   0x346
 3d5:	83 eb 01             	sub    $0x1,%ebx
 3d8:	79 ef                	jns    0x3c9
 3da:	83 c4 2c             	add    $0x2c,%esp
 3dd:	5b                   	pop    %ebx
 3de:	5e                   	pop    %esi
 3df:	5f                   	pop    %edi
 3e0:	5d                   	pop    %ebp
 3e1:	c3                   	ret    
 3e2:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3e5:	eb ee                	jmp    0x3d5
 3e7:	f3 0f 1e fb          	endbr32 
 3eb:	55                   	push   %ebp
 3ec:	89 e5                	mov    %esp,%ebp
 3ee:	57                   	push   %edi
 3ef:	56                   	push   %esi
 3f0:	53                   	push   %ebx
 3f1:	83 ec 1c             	sub    $0x1c,%esp
 3f4:	8d 45 10             	lea    0x10(%ebp),%eax
 3f7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3fa:	be 00 00 00 00       	mov    $0x0,%esi
 3ff:	bb 00 00 00 00       	mov    $0x0,%ebx
 404:	eb 14                	jmp    0x41a
 406:	89 fa                	mov    %edi,%edx
 408:	8b 45 08             	mov    0x8(%ebp),%eax
 40b:	e8 36 ff ff ff       	call   0x346
 410:	eb 05                	jmp    0x417
 412:	83 fe 25             	cmp    $0x25,%esi
 415:	74 25                	je     0x43c
 417:	83 c3 01             	add    $0x1,%ebx
 41a:	8b 45 0c             	mov    0xc(%ebp),%eax
 41d:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 421:	84 c0                	test   %al,%al
 423:	0f 84 23 01 00 00    	je     0x54c
 429:	0f be f8             	movsbl %al,%edi
 42c:	0f b6 c0             	movzbl %al,%eax
 42f:	85 f6                	test   %esi,%esi
 431:	75 df                	jne    0x412
 433:	83 f8 25             	cmp    $0x25,%eax
 436:	75 ce                	jne    0x406
 438:	89 c6                	mov    %eax,%esi
 43a:	eb db                	jmp    0x417
 43c:	83 f8 64             	cmp    $0x64,%eax
 43f:	74 49                	je     0x48a
 441:	83 f8 78             	cmp    $0x78,%eax
 444:	0f 94 c1             	sete   %cl
 447:	83 f8 70             	cmp    $0x70,%eax
 44a:	0f 94 c2             	sete   %dl
 44d:	08 d1                	or     %dl,%cl
 44f:	75 63                	jne    0x4b4
 451:	83 f8 73             	cmp    $0x73,%eax
 454:	0f 84 84 00 00 00    	je     0x4de
 45a:	83 f8 63             	cmp    $0x63,%eax
 45d:	0f 84 b7 00 00 00    	je     0x51a
 463:	83 f8 25             	cmp    $0x25,%eax
 466:	0f 84 cc 00 00 00    	je     0x538
 46c:	ba 25 00 00 00       	mov    $0x25,%edx
 471:	8b 45 08             	mov    0x8(%ebp),%eax
 474:	e8 cd fe ff ff       	call   0x346
 479:	89 fa                	mov    %edi,%edx
 47b:	8b 45 08             	mov    0x8(%ebp),%eax
 47e:	e8 c3 fe ff ff       	call   0x346
 483:	be 00 00 00 00       	mov    $0x0,%esi
 488:	eb 8d                	jmp    0x417
 48a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 48d:	8b 17                	mov    (%edi),%edx
 48f:	83 ec 0c             	sub    $0xc,%esp
 492:	6a 01                	push   $0x1
 494:	b9 0a 00 00 00       	mov    $0xa,%ecx
 499:	8b 45 08             	mov    0x8(%ebp),%eax
 49c:	e8 bf fe ff ff       	call   0x360
 4a1:	83 c7 04             	add    $0x4,%edi
 4a4:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4a7:	83 c4 10             	add    $0x10,%esp
 4aa:	be 00 00 00 00       	mov    $0x0,%esi
 4af:	e9 63 ff ff ff       	jmp    0x417
 4b4:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4b7:	8b 17                	mov    (%edi),%edx
 4b9:	83 ec 0c             	sub    $0xc,%esp
 4bc:	6a 00                	push   $0x0
 4be:	b9 10 00 00 00       	mov    $0x10,%ecx
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	e8 95 fe ff ff       	call   0x360
 4cb:	83 c7 04             	add    $0x4,%edi
 4ce:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4d1:	83 c4 10             	add    $0x10,%esp
 4d4:	be 00 00 00 00       	mov    $0x0,%esi
 4d9:	e9 39 ff ff ff       	jmp    0x417
 4de:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4e1:	8b 30                	mov    (%eax),%esi
 4e3:	83 c0 04             	add    $0x4,%eax
 4e6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4e9:	85 f6                	test   %esi,%esi
 4eb:	75 28                	jne    0x515
 4ed:	be f4 06 00 00       	mov    $0x6f4,%esi
 4f2:	8b 7d 08             	mov    0x8(%ebp),%edi
 4f5:	eb 0d                	jmp    0x504
 4f7:	0f be d2             	movsbl %dl,%edx
 4fa:	89 f8                	mov    %edi,%eax
 4fc:	e8 45 fe ff ff       	call   0x346
 501:	83 c6 01             	add    $0x1,%esi
 504:	0f b6 16             	movzbl (%esi),%edx
 507:	84 d2                	test   %dl,%dl
 509:	75 ec                	jne    0x4f7
 50b:	be 00 00 00 00       	mov    $0x0,%esi
 510:	e9 02 ff ff ff       	jmp    0x417
 515:	8b 7d 08             	mov    0x8(%ebp),%edi
 518:	eb ea                	jmp    0x504
 51a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 51d:	0f be 17             	movsbl (%edi),%edx
 520:	8b 45 08             	mov    0x8(%ebp),%eax
 523:	e8 1e fe ff ff       	call   0x346
 528:	83 c7 04             	add    $0x4,%edi
 52b:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 52e:	be 00 00 00 00       	mov    $0x0,%esi
 533:	e9 df fe ff ff       	jmp    0x417
 538:	89 fa                	mov    %edi,%edx
 53a:	8b 45 08             	mov    0x8(%ebp),%eax
 53d:	e8 04 fe ff ff       	call   0x346
 542:	be 00 00 00 00       	mov    $0x0,%esi
 547:	e9 cb fe ff ff       	jmp    0x417
 54c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 54f:	5b                   	pop    %ebx
 550:	5e                   	pop    %esi
 551:	5f                   	pop    %edi
 552:	5d                   	pop    %ebp
 553:	c3                   	ret    
 554:	f3 0f 1e fb          	endbr32 
 558:	55                   	push   %ebp
 559:	89 e5                	mov    %esp,%ebp
 55b:	57                   	push   %edi
 55c:	56                   	push   %esi
 55d:	53                   	push   %ebx
 55e:	8b 5d 08             	mov    0x8(%ebp),%ebx
 561:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 564:	a1 a8 09 00 00       	mov    0x9a8,%eax
 569:	eb 02                	jmp    0x56d
 56b:	89 d0                	mov    %edx,%eax
 56d:	39 c8                	cmp    %ecx,%eax
 56f:	73 04                	jae    0x575
 571:	39 08                	cmp    %ecx,(%eax)
 573:	77 12                	ja     0x587
 575:	8b 10                	mov    (%eax),%edx
 577:	39 c2                	cmp    %eax,%edx
 579:	77 f0                	ja     0x56b
 57b:	39 c8                	cmp    %ecx,%eax
 57d:	72 08                	jb     0x587
 57f:	39 ca                	cmp    %ecx,%edx
 581:	77 04                	ja     0x587
 583:	89 d0                	mov    %edx,%eax
 585:	eb e6                	jmp    0x56d
 587:	8b 73 fc             	mov    -0x4(%ebx),%esi
 58a:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 58d:	8b 10                	mov    (%eax),%edx
 58f:	39 d7                	cmp    %edx,%edi
 591:	74 19                	je     0x5ac
 593:	89 53 f8             	mov    %edx,-0x8(%ebx)
 596:	8b 50 04             	mov    0x4(%eax),%edx
 599:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 59c:	39 ce                	cmp    %ecx,%esi
 59e:	74 1b                	je     0x5bb
 5a0:	89 08                	mov    %ecx,(%eax)
 5a2:	a3 a8 09 00 00       	mov    %eax,0x9a8
 5a7:	5b                   	pop    %ebx
 5a8:	5e                   	pop    %esi
 5a9:	5f                   	pop    %edi
 5aa:	5d                   	pop    %ebp
 5ab:	c3                   	ret    
 5ac:	03 72 04             	add    0x4(%edx),%esi
 5af:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5b2:	8b 10                	mov    (%eax),%edx
 5b4:	8b 12                	mov    (%edx),%edx
 5b6:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5b9:	eb db                	jmp    0x596
 5bb:	03 53 fc             	add    -0x4(%ebx),%edx
 5be:	89 50 04             	mov    %edx,0x4(%eax)
 5c1:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5c4:	89 10                	mov    %edx,(%eax)
 5c6:	eb da                	jmp    0x5a2
 5c8:	55                   	push   %ebp
 5c9:	89 e5                	mov    %esp,%ebp
 5cb:	53                   	push   %ebx
 5cc:	83 ec 04             	sub    $0x4,%esp
 5cf:	89 c3                	mov    %eax,%ebx
 5d1:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5d6:	77 05                	ja     0x5dd
 5d8:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5dd:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5e4:	83 ec 0c             	sub    $0xc,%esp
 5e7:	50                   	push   %eax
 5e8:	e8 39 fd ff ff       	call   0x326
 5ed:	83 c4 10             	add    $0x10,%esp
 5f0:	83 f8 ff             	cmp    $0xffffffff,%eax
 5f3:	74 1c                	je     0x611
 5f5:	89 58 04             	mov    %ebx,0x4(%eax)
 5f8:	83 c0 08             	add    $0x8,%eax
 5fb:	83 ec 0c             	sub    $0xc,%esp
 5fe:	50                   	push   %eax
 5ff:	e8 50 ff ff ff       	call   0x554
 604:	a1 a8 09 00 00       	mov    0x9a8,%eax
 609:	83 c4 10             	add    $0x10,%esp
 60c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 60f:	c9                   	leave  
 610:	c3                   	ret    
 611:	b8 00 00 00 00       	mov    $0x0,%eax
 616:	eb f4                	jmp    0x60c
 618:	f3 0f 1e fb          	endbr32 
 61c:	55                   	push   %ebp
 61d:	89 e5                	mov    %esp,%ebp
 61f:	53                   	push   %ebx
 620:	83 ec 04             	sub    $0x4,%esp
 623:	8b 45 08             	mov    0x8(%ebp),%eax
 626:	8d 58 07             	lea    0x7(%eax),%ebx
 629:	c1 eb 03             	shr    $0x3,%ebx
 62c:	83 c3 01             	add    $0x1,%ebx
 62f:	8b 0d a8 09 00 00    	mov    0x9a8,%ecx
 635:	85 c9                	test   %ecx,%ecx
 637:	74 04                	je     0x63d
 639:	8b 01                	mov    (%ecx),%eax
 63b:	eb 4b                	jmp    0x688
 63d:	c7 05 a8 09 00 00 ac 	movl   $0x9ac,0x9a8
 644:	09 00 00 
 647:	c7 05 ac 09 00 00 ac 	movl   $0x9ac,0x9ac
 64e:	09 00 00 
 651:	c7 05 b0 09 00 00 00 	movl   $0x0,0x9b0
 658:	00 00 00 
 65b:	b9 ac 09 00 00       	mov    $0x9ac,%ecx
 660:	eb d7                	jmp    0x639
 662:	74 1a                	je     0x67e
 664:	29 da                	sub    %ebx,%edx
 666:	89 50 04             	mov    %edx,0x4(%eax)
 669:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 66c:	89 58 04             	mov    %ebx,0x4(%eax)
 66f:	89 0d a8 09 00 00    	mov    %ecx,0x9a8
 675:	83 c0 08             	add    $0x8,%eax
 678:	83 c4 04             	add    $0x4,%esp
 67b:	5b                   	pop    %ebx
 67c:	5d                   	pop    %ebp
 67d:	c3                   	ret    
 67e:	8b 10                	mov    (%eax),%edx
 680:	89 11                	mov    %edx,(%ecx)
 682:	eb eb                	jmp    0x66f
 684:	89 c1                	mov    %eax,%ecx
 686:	8b 00                	mov    (%eax),%eax
 688:	8b 50 04             	mov    0x4(%eax),%edx
 68b:	39 da                	cmp    %ebx,%edx
 68d:	73 d3                	jae    0x662
 68f:	39 05 a8 09 00 00    	cmp    %eax,0x9a8
 695:	75 ed                	jne    0x684
 697:	89 d8                	mov    %ebx,%eax
 699:	e8 2a ff ff ff       	call   0x5c8
 69e:	85 c0                	test   %eax,%eax
 6a0:	75 e2                	jne    0x684
 6a2:	eb d4                	jmp    0x678
