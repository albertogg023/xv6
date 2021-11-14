
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
  18:	68 ac 06 00 00       	push   $0x6ac
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
  45:	68 b4 06 00 00       	push   $0x6b4
  4a:	6a 01                	push   $0x1
  4c:	e8 9e 03 00 00       	call   0x3ef
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
  71:	68 f3 06 00 00       	push   $0x6f3
  76:	6a 01                	push   $0x1
  78:	e8 72 03 00 00       	call   0x3ef
  7d:	83 c4 10             	add    $0x10,%esp
  80:	eb df                	jmp    0x61
  82:	83 ec 04             	sub    $0x4,%esp
  85:	6a 01                	push   $0x1
  87:	6a 01                	push   $0x1
  89:	68 ac 06 00 00       	push   $0x6ac
  8e:	e8 53 02 00 00       	call   0x2e6
  93:	83 c4 08             	add    $0x8,%esp
  96:	6a 02                	push   $0x2
  98:	68 ac 06 00 00       	push   $0x6ac
  9d:	e8 3c 02 00 00       	call   0x2de
  a2:	83 c4 10             	add    $0x10,%esp
  a5:	eb 82                	jmp    0x29
  a7:	83 ec 08             	sub    $0x8,%esp
  aa:	68 c7 06 00 00       	push   $0x6c7
  af:	6a 01                	push   $0x1
  b1:	e8 39 03 00 00       	call   0x3ef
  b6:	e8 e3 01 00 00       	call   0x29e
  bb:	83 ec 08             	sub    $0x8,%esp
  be:	68 a8 09 00 00       	push   $0x9a8
  c3:	68 da 06 00 00       	push   $0x6da
  c8:	e8 09 02 00 00       	call   0x2d6
  cd:	83 c4 08             	add    $0x8,%esp
  d0:	68 dd 06 00 00       	push   $0x6dd
  d5:	6a 01                	push   $0x1
  d7:	e8 13 03 00 00       	call   0x3ef
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
 346:	b8 17 00 00 00       	mov    $0x17,%eax
 34b:	cd 40                	int    $0x40
 34d:	c3                   	ret    
 34e:	55                   	push   %ebp
 34f:	89 e5                	mov    %esp,%ebp
 351:	83 ec 1c             	sub    $0x1c,%esp
 354:	88 55 f4             	mov    %dl,-0xc(%ebp)
 357:	6a 01                	push   $0x1
 359:	8d 55 f4             	lea    -0xc(%ebp),%edx
 35c:	52                   	push   %edx
 35d:	50                   	push   %eax
 35e:	e8 5b ff ff ff       	call   0x2be
 363:	83 c4 10             	add    $0x10,%esp
 366:	c9                   	leave  
 367:	c3                   	ret    
 368:	55                   	push   %ebp
 369:	89 e5                	mov    %esp,%ebp
 36b:	57                   	push   %edi
 36c:	56                   	push   %esi
 36d:	53                   	push   %ebx
 36e:	83 ec 2c             	sub    $0x2c,%esp
 371:	89 45 d0             	mov    %eax,-0x30(%ebp)
 374:	89 d6                	mov    %edx,%esi
 376:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 37a:	0f 95 c2             	setne  %dl
 37d:	89 f0                	mov    %esi,%eax
 37f:	c1 e8 1f             	shr    $0x1f,%eax
 382:	84 c2                	test   %al,%dl
 384:	74 42                	je     0x3c8
 386:	f7 de                	neg    %esi
 388:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 38f:	bb 00 00 00 00       	mov    $0x0,%ebx
 394:	89 f0                	mov    %esi,%eax
 396:	ba 00 00 00 00       	mov    $0x0,%edx
 39b:	f7 f1                	div    %ecx
 39d:	89 df                	mov    %ebx,%edi
 39f:	83 c3 01             	add    $0x1,%ebx
 3a2:	0f b6 92 04 07 00 00 	movzbl 0x704(%edx),%edx
 3a9:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3ad:	89 f2                	mov    %esi,%edx
 3af:	89 c6                	mov    %eax,%esi
 3b1:	39 d1                	cmp    %edx,%ecx
 3b3:	76 df                	jbe    0x394
 3b5:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3b9:	74 2f                	je     0x3ea
 3bb:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3c0:	8d 5f 02             	lea    0x2(%edi),%ebx
 3c3:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3c6:	eb 15                	jmp    0x3dd
 3c8:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3cf:	eb be                	jmp    0x38f
 3d1:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3d6:	89 f0                	mov    %esi,%eax
 3d8:	e8 71 ff ff ff       	call   0x34e
 3dd:	83 eb 01             	sub    $0x1,%ebx
 3e0:	79 ef                	jns    0x3d1
 3e2:	83 c4 2c             	add    $0x2c,%esp
 3e5:	5b                   	pop    %ebx
 3e6:	5e                   	pop    %esi
 3e7:	5f                   	pop    %edi
 3e8:	5d                   	pop    %ebp
 3e9:	c3                   	ret    
 3ea:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3ed:	eb ee                	jmp    0x3dd
 3ef:	f3 0f 1e fb          	endbr32 
 3f3:	55                   	push   %ebp
 3f4:	89 e5                	mov    %esp,%ebp
 3f6:	57                   	push   %edi
 3f7:	56                   	push   %esi
 3f8:	53                   	push   %ebx
 3f9:	83 ec 1c             	sub    $0x1c,%esp
 3fc:	8d 45 10             	lea    0x10(%ebp),%eax
 3ff:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 402:	be 00 00 00 00       	mov    $0x0,%esi
 407:	bb 00 00 00 00       	mov    $0x0,%ebx
 40c:	eb 14                	jmp    0x422
 40e:	89 fa                	mov    %edi,%edx
 410:	8b 45 08             	mov    0x8(%ebp),%eax
 413:	e8 36 ff ff ff       	call   0x34e
 418:	eb 05                	jmp    0x41f
 41a:	83 fe 25             	cmp    $0x25,%esi
 41d:	74 25                	je     0x444
 41f:	83 c3 01             	add    $0x1,%ebx
 422:	8b 45 0c             	mov    0xc(%ebp),%eax
 425:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 429:	84 c0                	test   %al,%al
 42b:	0f 84 23 01 00 00    	je     0x554
 431:	0f be f8             	movsbl %al,%edi
 434:	0f b6 c0             	movzbl %al,%eax
 437:	85 f6                	test   %esi,%esi
 439:	75 df                	jne    0x41a
 43b:	83 f8 25             	cmp    $0x25,%eax
 43e:	75 ce                	jne    0x40e
 440:	89 c6                	mov    %eax,%esi
 442:	eb db                	jmp    0x41f
 444:	83 f8 64             	cmp    $0x64,%eax
 447:	74 49                	je     0x492
 449:	83 f8 78             	cmp    $0x78,%eax
 44c:	0f 94 c1             	sete   %cl
 44f:	83 f8 70             	cmp    $0x70,%eax
 452:	0f 94 c2             	sete   %dl
 455:	08 d1                	or     %dl,%cl
 457:	75 63                	jne    0x4bc
 459:	83 f8 73             	cmp    $0x73,%eax
 45c:	0f 84 84 00 00 00    	je     0x4e6
 462:	83 f8 63             	cmp    $0x63,%eax
 465:	0f 84 b7 00 00 00    	je     0x522
 46b:	83 f8 25             	cmp    $0x25,%eax
 46e:	0f 84 cc 00 00 00    	je     0x540
 474:	ba 25 00 00 00       	mov    $0x25,%edx
 479:	8b 45 08             	mov    0x8(%ebp),%eax
 47c:	e8 cd fe ff ff       	call   0x34e
 481:	89 fa                	mov    %edi,%edx
 483:	8b 45 08             	mov    0x8(%ebp),%eax
 486:	e8 c3 fe ff ff       	call   0x34e
 48b:	be 00 00 00 00       	mov    $0x0,%esi
 490:	eb 8d                	jmp    0x41f
 492:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 495:	8b 17                	mov    (%edi),%edx
 497:	83 ec 0c             	sub    $0xc,%esp
 49a:	6a 01                	push   $0x1
 49c:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4a1:	8b 45 08             	mov    0x8(%ebp),%eax
 4a4:	e8 bf fe ff ff       	call   0x368
 4a9:	83 c7 04             	add    $0x4,%edi
 4ac:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4af:	83 c4 10             	add    $0x10,%esp
 4b2:	be 00 00 00 00       	mov    $0x0,%esi
 4b7:	e9 63 ff ff ff       	jmp    0x41f
 4bc:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4bf:	8b 17                	mov    (%edi),%edx
 4c1:	83 ec 0c             	sub    $0xc,%esp
 4c4:	6a 00                	push   $0x0
 4c6:	b9 10 00 00 00       	mov    $0x10,%ecx
 4cb:	8b 45 08             	mov    0x8(%ebp),%eax
 4ce:	e8 95 fe ff ff       	call   0x368
 4d3:	83 c7 04             	add    $0x4,%edi
 4d6:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4d9:	83 c4 10             	add    $0x10,%esp
 4dc:	be 00 00 00 00       	mov    $0x0,%esi
 4e1:	e9 39 ff ff ff       	jmp    0x41f
 4e6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4e9:	8b 30                	mov    (%eax),%esi
 4eb:	83 c0 04             	add    $0x4,%eax
 4ee:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4f1:	85 f6                	test   %esi,%esi
 4f3:	75 28                	jne    0x51d
 4f5:	be fc 06 00 00       	mov    $0x6fc,%esi
 4fa:	8b 7d 08             	mov    0x8(%ebp),%edi
 4fd:	eb 0d                	jmp    0x50c
 4ff:	0f be d2             	movsbl %dl,%edx
 502:	89 f8                	mov    %edi,%eax
 504:	e8 45 fe ff ff       	call   0x34e
 509:	83 c6 01             	add    $0x1,%esi
 50c:	0f b6 16             	movzbl (%esi),%edx
 50f:	84 d2                	test   %dl,%dl
 511:	75 ec                	jne    0x4ff
 513:	be 00 00 00 00       	mov    $0x0,%esi
 518:	e9 02 ff ff ff       	jmp    0x41f
 51d:	8b 7d 08             	mov    0x8(%ebp),%edi
 520:	eb ea                	jmp    0x50c
 522:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 525:	0f be 17             	movsbl (%edi),%edx
 528:	8b 45 08             	mov    0x8(%ebp),%eax
 52b:	e8 1e fe ff ff       	call   0x34e
 530:	83 c7 04             	add    $0x4,%edi
 533:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 536:	be 00 00 00 00       	mov    $0x0,%esi
 53b:	e9 df fe ff ff       	jmp    0x41f
 540:	89 fa                	mov    %edi,%edx
 542:	8b 45 08             	mov    0x8(%ebp),%eax
 545:	e8 04 fe ff ff       	call   0x34e
 54a:	be 00 00 00 00       	mov    $0x0,%esi
 54f:	e9 cb fe ff ff       	jmp    0x41f
 554:	8d 65 f4             	lea    -0xc(%ebp),%esp
 557:	5b                   	pop    %ebx
 558:	5e                   	pop    %esi
 559:	5f                   	pop    %edi
 55a:	5d                   	pop    %ebp
 55b:	c3                   	ret    
 55c:	f3 0f 1e fb          	endbr32 
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	56                   	push   %esi
 565:	53                   	push   %ebx
 566:	8b 5d 08             	mov    0x8(%ebp),%ebx
 569:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 56c:	a1 b0 09 00 00       	mov    0x9b0,%eax
 571:	eb 02                	jmp    0x575
 573:	89 d0                	mov    %edx,%eax
 575:	39 c8                	cmp    %ecx,%eax
 577:	73 04                	jae    0x57d
 579:	39 08                	cmp    %ecx,(%eax)
 57b:	77 12                	ja     0x58f
 57d:	8b 10                	mov    (%eax),%edx
 57f:	39 c2                	cmp    %eax,%edx
 581:	77 f0                	ja     0x573
 583:	39 c8                	cmp    %ecx,%eax
 585:	72 08                	jb     0x58f
 587:	39 ca                	cmp    %ecx,%edx
 589:	77 04                	ja     0x58f
 58b:	89 d0                	mov    %edx,%eax
 58d:	eb e6                	jmp    0x575
 58f:	8b 73 fc             	mov    -0x4(%ebx),%esi
 592:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 595:	8b 10                	mov    (%eax),%edx
 597:	39 d7                	cmp    %edx,%edi
 599:	74 19                	je     0x5b4
 59b:	89 53 f8             	mov    %edx,-0x8(%ebx)
 59e:	8b 50 04             	mov    0x4(%eax),%edx
 5a1:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5a4:	39 ce                	cmp    %ecx,%esi
 5a6:	74 1b                	je     0x5c3
 5a8:	89 08                	mov    %ecx,(%eax)
 5aa:	a3 b0 09 00 00       	mov    %eax,0x9b0
 5af:	5b                   	pop    %ebx
 5b0:	5e                   	pop    %esi
 5b1:	5f                   	pop    %edi
 5b2:	5d                   	pop    %ebp
 5b3:	c3                   	ret    
 5b4:	03 72 04             	add    0x4(%edx),%esi
 5b7:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5ba:	8b 10                	mov    (%eax),%edx
 5bc:	8b 12                	mov    (%edx),%edx
 5be:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5c1:	eb db                	jmp    0x59e
 5c3:	03 53 fc             	add    -0x4(%ebx),%edx
 5c6:	89 50 04             	mov    %edx,0x4(%eax)
 5c9:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5cc:	89 10                	mov    %edx,(%eax)
 5ce:	eb da                	jmp    0x5aa
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	53                   	push   %ebx
 5d4:	83 ec 04             	sub    $0x4,%esp
 5d7:	89 c3                	mov    %eax,%ebx
 5d9:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5de:	77 05                	ja     0x5e5
 5e0:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5e5:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5ec:	83 ec 0c             	sub    $0xc,%esp
 5ef:	50                   	push   %eax
 5f0:	e8 31 fd ff ff       	call   0x326
 5f5:	83 c4 10             	add    $0x10,%esp
 5f8:	83 f8 ff             	cmp    $0xffffffff,%eax
 5fb:	74 1c                	je     0x619
 5fd:	89 58 04             	mov    %ebx,0x4(%eax)
 600:	83 c0 08             	add    $0x8,%eax
 603:	83 ec 0c             	sub    $0xc,%esp
 606:	50                   	push   %eax
 607:	e8 50 ff ff ff       	call   0x55c
 60c:	a1 b0 09 00 00       	mov    0x9b0,%eax
 611:	83 c4 10             	add    $0x10,%esp
 614:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 617:	c9                   	leave  
 618:	c3                   	ret    
 619:	b8 00 00 00 00       	mov    $0x0,%eax
 61e:	eb f4                	jmp    0x614
 620:	f3 0f 1e fb          	endbr32 
 624:	55                   	push   %ebp
 625:	89 e5                	mov    %esp,%ebp
 627:	53                   	push   %ebx
 628:	83 ec 04             	sub    $0x4,%esp
 62b:	8b 45 08             	mov    0x8(%ebp),%eax
 62e:	8d 58 07             	lea    0x7(%eax),%ebx
 631:	c1 eb 03             	shr    $0x3,%ebx
 634:	83 c3 01             	add    $0x1,%ebx
 637:	8b 0d b0 09 00 00    	mov    0x9b0,%ecx
 63d:	85 c9                	test   %ecx,%ecx
 63f:	74 04                	je     0x645
 641:	8b 01                	mov    (%ecx),%eax
 643:	eb 4b                	jmp    0x690
 645:	c7 05 b0 09 00 00 b4 	movl   $0x9b4,0x9b0
 64c:	09 00 00 
 64f:	c7 05 b4 09 00 00 b4 	movl   $0x9b4,0x9b4
 656:	09 00 00 
 659:	c7 05 b8 09 00 00 00 	movl   $0x0,0x9b8
 660:	00 00 00 
 663:	b9 b4 09 00 00       	mov    $0x9b4,%ecx
 668:	eb d7                	jmp    0x641
 66a:	74 1a                	je     0x686
 66c:	29 da                	sub    %ebx,%edx
 66e:	89 50 04             	mov    %edx,0x4(%eax)
 671:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 674:	89 58 04             	mov    %ebx,0x4(%eax)
 677:	89 0d b0 09 00 00    	mov    %ecx,0x9b0
 67d:	83 c0 08             	add    $0x8,%eax
 680:	83 c4 04             	add    $0x4,%esp
 683:	5b                   	pop    %ebx
 684:	5d                   	pop    %ebp
 685:	c3                   	ret    
 686:	8b 10                	mov    (%eax),%edx
 688:	89 11                	mov    %edx,(%ecx)
 68a:	eb eb                	jmp    0x677
 68c:	89 c1                	mov    %eax,%ecx
 68e:	8b 00                	mov    (%eax),%eax
 690:	8b 50 04             	mov    0x4(%eax),%edx
 693:	39 da                	cmp    %ebx,%edx
 695:	73 d3                	jae    0x66a
 697:	39 05 b0 09 00 00    	cmp    %eax,0x9b0
 69d:	75 ed                	jne    0x68c
 69f:	89 d8                	mov    %ebx,%eax
 6a1:	e8 2a ff ff ff       	call   0x5d0
 6a6:	85 c0                	test   %eax,%eax
 6a8:	75 e2                	jne    0x68c
 6aa:	eb d4                	jmp    0x680
