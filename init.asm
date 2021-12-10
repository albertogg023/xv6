
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
  18:	68 c8 06 00 00       	push   $0x6c8
  1d:	e8 d5 02 00 00       	call   0x2f7
  22:	83 c4 10             	add    $0x10,%esp
  25:	85 c0                	test   %eax,%eax
  27:	78 61                	js     0x8a
  29:	83 ec 0c             	sub    $0xc,%esp
  2c:	6a 00                	push   $0x0
  2e:	e8 fc 02 00 00       	call   0x32f
  33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3a:	e8 f0 02 00 00       	call   0x32f
  3f:	83 c4 10             	add    $0x10,%esp
  42:	83 ec 08             	sub    $0x8,%esp
  45:	68 d0 06 00 00       	push   $0x6d0
  4a:	6a 01                	push   $0x1
  4c:	e8 b7 03 00 00       	call   0x408
  51:	e8 59 02 00 00       	call   0x2af
  56:	89 c3                	mov    %eax,%ebx
  58:	83 c4 10             	add    $0x10,%esp
  5b:	85 c0                	test   %eax,%eax
  5d:	78 53                	js     0xb2
  5f:	74 6c                	je     0xcd
  61:	83 ec 0c             	sub    $0xc,%esp
  64:	6a 00                	push   $0x0
  66:	e8 54 02 00 00       	call   0x2bf
  6b:	83 c4 10             	add    $0x10,%esp
  6e:	85 c0                	test   %eax,%eax
  70:	78 d0                	js     0x42
  72:	39 c3                	cmp    %eax,%ebx
  74:	74 cc                	je     0x42
  76:	83 ec 08             	sub    $0x8,%esp
  79:	68 0f 07 00 00       	push   $0x70f
  7e:	6a 01                	push   $0x1
  80:	e8 83 03 00 00       	call   0x408
  85:	83 c4 10             	add    $0x10,%esp
  88:	eb d7                	jmp    0x61
  8a:	83 ec 04             	sub    $0x4,%esp
  8d:	6a 01                	push   $0x1
  8f:	6a 01                	push   $0x1
  91:	68 c8 06 00 00       	push   $0x6c8
  96:	e8 64 02 00 00       	call   0x2ff
  9b:	83 c4 08             	add    $0x8,%esp
  9e:	6a 02                	push   $0x2
  a0:	68 c8 06 00 00       	push   $0x6c8
  a5:	e8 4d 02 00 00       	call   0x2f7
  aa:	83 c4 10             	add    $0x10,%esp
  ad:	e9 77 ff ff ff       	jmp    0x29
  b2:	83 ec 08             	sub    $0x8,%esp
  b5:	68 e3 06 00 00       	push   $0x6e3
  ba:	6a 01                	push   $0x1
  bc:	e8 47 03 00 00       	call   0x408
  c1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  c8:	e8 ea 01 00 00       	call   0x2b7
  cd:	83 ec 08             	sub    $0x8,%esp
  d0:	68 c4 09 00 00       	push   $0x9c4
  d5:	68 f6 06 00 00       	push   $0x6f6
  da:	e8 10 02 00 00       	call   0x2ef
  df:	83 c4 08             	add    $0x8,%esp
  e2:	68 f9 06 00 00       	push   $0x6f9
  e7:	6a 01                	push   $0x1
  e9:	e8 1a 03 00 00       	call   0x408
  ee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f5:	e8 bd 01 00 00       	call   0x2b7
  fa:	f3 0f 1e fb          	endbr32 
  fe:	55                   	push   %ebp
  ff:	89 e5                	mov    %esp,%ebp
 101:	56                   	push   %esi
 102:	53                   	push   %ebx
 103:	8b 75 08             	mov    0x8(%ebp),%esi
 106:	8b 55 0c             	mov    0xc(%ebp),%edx
 109:	89 f0                	mov    %esi,%eax
 10b:	89 d1                	mov    %edx,%ecx
 10d:	83 c2 01             	add    $0x1,%edx
 110:	89 c3                	mov    %eax,%ebx
 112:	83 c0 01             	add    $0x1,%eax
 115:	0f b6 09             	movzbl (%ecx),%ecx
 118:	88 0b                	mov    %cl,(%ebx)
 11a:	84 c9                	test   %cl,%cl
 11c:	75 ed                	jne    0x10b
 11e:	89 f0                	mov    %esi,%eax
 120:	5b                   	pop    %ebx
 121:	5e                   	pop    %esi
 122:	5d                   	pop    %ebp
 123:	c3                   	ret    
 124:	f3 0f 1e fb          	endbr32 
 128:	55                   	push   %ebp
 129:	89 e5                	mov    %esp,%ebp
 12b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 12e:	8b 55 0c             	mov    0xc(%ebp),%edx
 131:	0f b6 01             	movzbl (%ecx),%eax
 134:	84 c0                	test   %al,%al
 136:	74 0c                	je     0x144
 138:	3a 02                	cmp    (%edx),%al
 13a:	75 08                	jne    0x144
 13c:	83 c1 01             	add    $0x1,%ecx
 13f:	83 c2 01             	add    $0x1,%edx
 142:	eb ed                	jmp    0x131
 144:	0f b6 c0             	movzbl %al,%eax
 147:	0f b6 12             	movzbl (%edx),%edx
 14a:	29 d0                	sub    %edx,%eax
 14c:	5d                   	pop    %ebp
 14d:	c3                   	ret    
 14e:	f3 0f 1e fb          	endbr32 
 152:	55                   	push   %ebp
 153:	89 e5                	mov    %esp,%ebp
 155:	8b 4d 08             	mov    0x8(%ebp),%ecx
 158:	b8 00 00 00 00       	mov    $0x0,%eax
 15d:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 161:	74 05                	je     0x168
 163:	83 c0 01             	add    $0x1,%eax
 166:	eb f5                	jmp    0x15d
 168:	5d                   	pop    %ebp
 169:	c3                   	ret    
 16a:	f3 0f 1e fb          	endbr32 
 16e:	55                   	push   %ebp
 16f:	89 e5                	mov    %esp,%ebp
 171:	57                   	push   %edi
 172:	8b 55 08             	mov    0x8(%ebp),%edx
 175:	89 d7                	mov    %edx,%edi
 177:	8b 4d 10             	mov    0x10(%ebp),%ecx
 17a:	8b 45 0c             	mov    0xc(%ebp),%eax
 17d:	fc                   	cld    
 17e:	f3 aa                	rep stos %al,%es:(%edi)
 180:	89 d0                	mov    %edx,%eax
 182:	5f                   	pop    %edi
 183:	5d                   	pop    %ebp
 184:	c3                   	ret    
 185:	f3 0f 1e fb          	endbr32 
 189:	55                   	push   %ebp
 18a:	89 e5                	mov    %esp,%ebp
 18c:	8b 45 08             	mov    0x8(%ebp),%eax
 18f:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 193:	0f b6 10             	movzbl (%eax),%edx
 196:	84 d2                	test   %dl,%dl
 198:	74 09                	je     0x1a3
 19a:	38 ca                	cmp    %cl,%dl
 19c:	74 0a                	je     0x1a8
 19e:	83 c0 01             	add    $0x1,%eax
 1a1:	eb f0                	jmp    0x193
 1a3:	b8 00 00 00 00       	mov    $0x0,%eax
 1a8:	5d                   	pop    %ebp
 1a9:	c3                   	ret    
 1aa:	f3 0f 1e fb          	endbr32 
 1ae:	55                   	push   %ebp
 1af:	89 e5                	mov    %esp,%ebp
 1b1:	57                   	push   %edi
 1b2:	56                   	push   %esi
 1b3:	53                   	push   %ebx
 1b4:	83 ec 1c             	sub    $0x1c,%esp
 1b7:	8b 7d 08             	mov    0x8(%ebp),%edi
 1ba:	bb 00 00 00 00       	mov    $0x0,%ebx
 1bf:	89 de                	mov    %ebx,%esi
 1c1:	83 c3 01             	add    $0x1,%ebx
 1c4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1c7:	7d 2e                	jge    0x1f7
 1c9:	83 ec 04             	sub    $0x4,%esp
 1cc:	6a 01                	push   $0x1
 1ce:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1d1:	50                   	push   %eax
 1d2:	6a 00                	push   $0x0
 1d4:	e8 f6 00 00 00       	call   0x2cf
 1d9:	83 c4 10             	add    $0x10,%esp
 1dc:	85 c0                	test   %eax,%eax
 1de:	7e 17                	jle    0x1f7
 1e0:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1e4:	88 04 37             	mov    %al,(%edi,%esi,1)
 1e7:	3c 0a                	cmp    $0xa,%al
 1e9:	0f 94 c2             	sete   %dl
 1ec:	3c 0d                	cmp    $0xd,%al
 1ee:	0f 94 c0             	sete   %al
 1f1:	08 c2                	or     %al,%dl
 1f3:	74 ca                	je     0x1bf
 1f5:	89 de                	mov    %ebx,%esi
 1f7:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 1fb:	89 f8                	mov    %edi,%eax
 1fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 200:	5b                   	pop    %ebx
 201:	5e                   	pop    %esi
 202:	5f                   	pop    %edi
 203:	5d                   	pop    %ebp
 204:	c3                   	ret    
 205:	f3 0f 1e fb          	endbr32 
 209:	55                   	push   %ebp
 20a:	89 e5                	mov    %esp,%ebp
 20c:	56                   	push   %esi
 20d:	53                   	push   %ebx
 20e:	83 ec 08             	sub    $0x8,%esp
 211:	6a 00                	push   $0x0
 213:	ff 75 08             	pushl  0x8(%ebp)
 216:	e8 dc 00 00 00       	call   0x2f7
 21b:	83 c4 10             	add    $0x10,%esp
 21e:	85 c0                	test   %eax,%eax
 220:	78 24                	js     0x246
 222:	89 c3                	mov    %eax,%ebx
 224:	83 ec 08             	sub    $0x8,%esp
 227:	ff 75 0c             	pushl  0xc(%ebp)
 22a:	50                   	push   %eax
 22b:	e8 df 00 00 00       	call   0x30f
 230:	89 c6                	mov    %eax,%esi
 232:	89 1c 24             	mov    %ebx,(%esp)
 235:	e8 a5 00 00 00       	call   0x2df
 23a:	83 c4 10             	add    $0x10,%esp
 23d:	89 f0                	mov    %esi,%eax
 23f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 242:	5b                   	pop    %ebx
 243:	5e                   	pop    %esi
 244:	5d                   	pop    %ebp
 245:	c3                   	ret    
 246:	be ff ff ff ff       	mov    $0xffffffff,%esi
 24b:	eb f0                	jmp    0x23d
 24d:	f3 0f 1e fb          	endbr32 
 251:	55                   	push   %ebp
 252:	89 e5                	mov    %esp,%ebp
 254:	53                   	push   %ebx
 255:	8b 4d 08             	mov    0x8(%ebp),%ecx
 258:	ba 00 00 00 00       	mov    $0x0,%edx
 25d:	0f b6 01             	movzbl (%ecx),%eax
 260:	8d 58 d0             	lea    -0x30(%eax),%ebx
 263:	80 fb 09             	cmp    $0x9,%bl
 266:	77 12                	ja     0x27a
 268:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 26b:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 26e:	83 c1 01             	add    $0x1,%ecx
 271:	0f be c0             	movsbl %al,%eax
 274:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 278:	eb e3                	jmp    0x25d
 27a:	89 d0                	mov    %edx,%eax
 27c:	5b                   	pop    %ebx
 27d:	5d                   	pop    %ebp
 27e:	c3                   	ret    
 27f:	f3 0f 1e fb          	endbr32 
 283:	55                   	push   %ebp
 284:	89 e5                	mov    %esp,%ebp
 286:	56                   	push   %esi
 287:	53                   	push   %ebx
 288:	8b 75 08             	mov    0x8(%ebp),%esi
 28b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 28e:	8b 45 10             	mov    0x10(%ebp),%eax
 291:	89 f2                	mov    %esi,%edx
 293:	8d 58 ff             	lea    -0x1(%eax),%ebx
 296:	85 c0                	test   %eax,%eax
 298:	7e 0f                	jle    0x2a9
 29a:	0f b6 01             	movzbl (%ecx),%eax
 29d:	88 02                	mov    %al,(%edx)
 29f:	8d 49 01             	lea    0x1(%ecx),%ecx
 2a2:	8d 52 01             	lea    0x1(%edx),%edx
 2a5:	89 d8                	mov    %ebx,%eax
 2a7:	eb ea                	jmp    0x293
 2a9:	89 f0                	mov    %esi,%eax
 2ab:	5b                   	pop    %ebx
 2ac:	5e                   	pop    %esi
 2ad:	5d                   	pop    %ebp
 2ae:	c3                   	ret    
 2af:	b8 01 00 00 00       	mov    $0x1,%eax
 2b4:	cd 40                	int    $0x40
 2b6:	c3                   	ret    
 2b7:	b8 02 00 00 00       	mov    $0x2,%eax
 2bc:	cd 40                	int    $0x40
 2be:	c3                   	ret    
 2bf:	b8 03 00 00 00       	mov    $0x3,%eax
 2c4:	cd 40                	int    $0x40
 2c6:	c3                   	ret    
 2c7:	b8 04 00 00 00       	mov    $0x4,%eax
 2cc:	cd 40                	int    $0x40
 2ce:	c3                   	ret    
 2cf:	b8 05 00 00 00       	mov    $0x5,%eax
 2d4:	cd 40                	int    $0x40
 2d6:	c3                   	ret    
 2d7:	b8 10 00 00 00       	mov    $0x10,%eax
 2dc:	cd 40                	int    $0x40
 2de:	c3                   	ret    
 2df:	b8 15 00 00 00       	mov    $0x15,%eax
 2e4:	cd 40                	int    $0x40
 2e6:	c3                   	ret    
 2e7:	b8 06 00 00 00       	mov    $0x6,%eax
 2ec:	cd 40                	int    $0x40
 2ee:	c3                   	ret    
 2ef:	b8 07 00 00 00       	mov    $0x7,%eax
 2f4:	cd 40                	int    $0x40
 2f6:	c3                   	ret    
 2f7:	b8 0f 00 00 00       	mov    $0xf,%eax
 2fc:	cd 40                	int    $0x40
 2fe:	c3                   	ret    
 2ff:	b8 11 00 00 00       	mov    $0x11,%eax
 304:	cd 40                	int    $0x40
 306:	c3                   	ret    
 307:	b8 12 00 00 00       	mov    $0x12,%eax
 30c:	cd 40                	int    $0x40
 30e:	c3                   	ret    
 30f:	b8 08 00 00 00       	mov    $0x8,%eax
 314:	cd 40                	int    $0x40
 316:	c3                   	ret    
 317:	b8 13 00 00 00       	mov    $0x13,%eax
 31c:	cd 40                	int    $0x40
 31e:	c3                   	ret    
 31f:	b8 14 00 00 00       	mov    $0x14,%eax
 324:	cd 40                	int    $0x40
 326:	c3                   	ret    
 327:	b8 09 00 00 00       	mov    $0x9,%eax
 32c:	cd 40                	int    $0x40
 32e:	c3                   	ret    
 32f:	b8 0a 00 00 00       	mov    $0xa,%eax
 334:	cd 40                	int    $0x40
 336:	c3                   	ret    
 337:	b8 0b 00 00 00       	mov    $0xb,%eax
 33c:	cd 40                	int    $0x40
 33e:	c3                   	ret    
 33f:	b8 0c 00 00 00       	mov    $0xc,%eax
 344:	cd 40                	int    $0x40
 346:	c3                   	ret    
 347:	b8 0d 00 00 00       	mov    $0xd,%eax
 34c:	cd 40                	int    $0x40
 34e:	c3                   	ret    
 34f:	b8 0e 00 00 00       	mov    $0xe,%eax
 354:	cd 40                	int    $0x40
 356:	c3                   	ret    
 357:	b8 16 00 00 00       	mov    $0x16,%eax
 35c:	cd 40                	int    $0x40
 35e:	c3                   	ret    
 35f:	b8 17 00 00 00       	mov    $0x17,%eax
 364:	cd 40                	int    $0x40
 366:	c3                   	ret    
 367:	55                   	push   %ebp
 368:	89 e5                	mov    %esp,%ebp
 36a:	83 ec 1c             	sub    $0x1c,%esp
 36d:	88 55 f4             	mov    %dl,-0xc(%ebp)
 370:	6a 01                	push   $0x1
 372:	8d 55 f4             	lea    -0xc(%ebp),%edx
 375:	52                   	push   %edx
 376:	50                   	push   %eax
 377:	e8 5b ff ff ff       	call   0x2d7
 37c:	83 c4 10             	add    $0x10,%esp
 37f:	c9                   	leave  
 380:	c3                   	ret    
 381:	55                   	push   %ebp
 382:	89 e5                	mov    %esp,%ebp
 384:	57                   	push   %edi
 385:	56                   	push   %esi
 386:	53                   	push   %ebx
 387:	83 ec 2c             	sub    $0x2c,%esp
 38a:	89 45 d0             	mov    %eax,-0x30(%ebp)
 38d:	89 d6                	mov    %edx,%esi
 38f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 393:	0f 95 c2             	setne  %dl
 396:	89 f0                	mov    %esi,%eax
 398:	c1 e8 1f             	shr    $0x1f,%eax
 39b:	84 c2                	test   %al,%dl
 39d:	74 42                	je     0x3e1
 39f:	f7 de                	neg    %esi
 3a1:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3a8:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ad:	89 f0                	mov    %esi,%eax
 3af:	ba 00 00 00 00       	mov    $0x0,%edx
 3b4:	f7 f1                	div    %ecx
 3b6:	89 df                	mov    %ebx,%edi
 3b8:	83 c3 01             	add    $0x1,%ebx
 3bb:	0f b6 92 20 07 00 00 	movzbl 0x720(%edx),%edx
 3c2:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3c6:	89 f2                	mov    %esi,%edx
 3c8:	89 c6                	mov    %eax,%esi
 3ca:	39 d1                	cmp    %edx,%ecx
 3cc:	76 df                	jbe    0x3ad
 3ce:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3d2:	74 2f                	je     0x403
 3d4:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3d9:	8d 5f 02             	lea    0x2(%edi),%ebx
 3dc:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3df:	eb 15                	jmp    0x3f6
 3e1:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3e8:	eb be                	jmp    0x3a8
 3ea:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3ef:	89 f0                	mov    %esi,%eax
 3f1:	e8 71 ff ff ff       	call   0x367
 3f6:	83 eb 01             	sub    $0x1,%ebx
 3f9:	79 ef                	jns    0x3ea
 3fb:	83 c4 2c             	add    $0x2c,%esp
 3fe:	5b                   	pop    %ebx
 3ff:	5e                   	pop    %esi
 400:	5f                   	pop    %edi
 401:	5d                   	pop    %ebp
 402:	c3                   	ret    
 403:	8b 75 d0             	mov    -0x30(%ebp),%esi
 406:	eb ee                	jmp    0x3f6
 408:	f3 0f 1e fb          	endbr32 
 40c:	55                   	push   %ebp
 40d:	89 e5                	mov    %esp,%ebp
 40f:	57                   	push   %edi
 410:	56                   	push   %esi
 411:	53                   	push   %ebx
 412:	83 ec 1c             	sub    $0x1c,%esp
 415:	8d 45 10             	lea    0x10(%ebp),%eax
 418:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 41b:	be 00 00 00 00       	mov    $0x0,%esi
 420:	bb 00 00 00 00       	mov    $0x0,%ebx
 425:	eb 14                	jmp    0x43b
 427:	89 fa                	mov    %edi,%edx
 429:	8b 45 08             	mov    0x8(%ebp),%eax
 42c:	e8 36 ff ff ff       	call   0x367
 431:	eb 05                	jmp    0x438
 433:	83 fe 25             	cmp    $0x25,%esi
 436:	74 25                	je     0x45d
 438:	83 c3 01             	add    $0x1,%ebx
 43b:	8b 45 0c             	mov    0xc(%ebp),%eax
 43e:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 442:	84 c0                	test   %al,%al
 444:	0f 84 23 01 00 00    	je     0x56d
 44a:	0f be f8             	movsbl %al,%edi
 44d:	0f b6 c0             	movzbl %al,%eax
 450:	85 f6                	test   %esi,%esi
 452:	75 df                	jne    0x433
 454:	83 f8 25             	cmp    $0x25,%eax
 457:	75 ce                	jne    0x427
 459:	89 c6                	mov    %eax,%esi
 45b:	eb db                	jmp    0x438
 45d:	83 f8 64             	cmp    $0x64,%eax
 460:	74 49                	je     0x4ab
 462:	83 f8 78             	cmp    $0x78,%eax
 465:	0f 94 c1             	sete   %cl
 468:	83 f8 70             	cmp    $0x70,%eax
 46b:	0f 94 c2             	sete   %dl
 46e:	08 d1                	or     %dl,%cl
 470:	75 63                	jne    0x4d5
 472:	83 f8 73             	cmp    $0x73,%eax
 475:	0f 84 84 00 00 00    	je     0x4ff
 47b:	83 f8 63             	cmp    $0x63,%eax
 47e:	0f 84 b7 00 00 00    	je     0x53b
 484:	83 f8 25             	cmp    $0x25,%eax
 487:	0f 84 cc 00 00 00    	je     0x559
 48d:	ba 25 00 00 00       	mov    $0x25,%edx
 492:	8b 45 08             	mov    0x8(%ebp),%eax
 495:	e8 cd fe ff ff       	call   0x367
 49a:	89 fa                	mov    %edi,%edx
 49c:	8b 45 08             	mov    0x8(%ebp),%eax
 49f:	e8 c3 fe ff ff       	call   0x367
 4a4:	be 00 00 00 00       	mov    $0x0,%esi
 4a9:	eb 8d                	jmp    0x438
 4ab:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4ae:	8b 17                	mov    (%edi),%edx
 4b0:	83 ec 0c             	sub    $0xc,%esp
 4b3:	6a 01                	push   $0x1
 4b5:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4ba:	8b 45 08             	mov    0x8(%ebp),%eax
 4bd:	e8 bf fe ff ff       	call   0x381
 4c2:	83 c7 04             	add    $0x4,%edi
 4c5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4c8:	83 c4 10             	add    $0x10,%esp
 4cb:	be 00 00 00 00       	mov    $0x0,%esi
 4d0:	e9 63 ff ff ff       	jmp    0x438
 4d5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4d8:	8b 17                	mov    (%edi),%edx
 4da:	83 ec 0c             	sub    $0xc,%esp
 4dd:	6a 00                	push   $0x0
 4df:	b9 10 00 00 00       	mov    $0x10,%ecx
 4e4:	8b 45 08             	mov    0x8(%ebp),%eax
 4e7:	e8 95 fe ff ff       	call   0x381
 4ec:	83 c7 04             	add    $0x4,%edi
 4ef:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4f2:	83 c4 10             	add    $0x10,%esp
 4f5:	be 00 00 00 00       	mov    $0x0,%esi
 4fa:	e9 39 ff ff ff       	jmp    0x438
 4ff:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 502:	8b 30                	mov    (%eax),%esi
 504:	83 c0 04             	add    $0x4,%eax
 507:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 50a:	85 f6                	test   %esi,%esi
 50c:	75 28                	jne    0x536
 50e:	be 18 07 00 00       	mov    $0x718,%esi
 513:	8b 7d 08             	mov    0x8(%ebp),%edi
 516:	eb 0d                	jmp    0x525
 518:	0f be d2             	movsbl %dl,%edx
 51b:	89 f8                	mov    %edi,%eax
 51d:	e8 45 fe ff ff       	call   0x367
 522:	83 c6 01             	add    $0x1,%esi
 525:	0f b6 16             	movzbl (%esi),%edx
 528:	84 d2                	test   %dl,%dl
 52a:	75 ec                	jne    0x518
 52c:	be 00 00 00 00       	mov    $0x0,%esi
 531:	e9 02 ff ff ff       	jmp    0x438
 536:	8b 7d 08             	mov    0x8(%ebp),%edi
 539:	eb ea                	jmp    0x525
 53b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 53e:	0f be 17             	movsbl (%edi),%edx
 541:	8b 45 08             	mov    0x8(%ebp),%eax
 544:	e8 1e fe ff ff       	call   0x367
 549:	83 c7 04             	add    $0x4,%edi
 54c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 54f:	be 00 00 00 00       	mov    $0x0,%esi
 554:	e9 df fe ff ff       	jmp    0x438
 559:	89 fa                	mov    %edi,%edx
 55b:	8b 45 08             	mov    0x8(%ebp),%eax
 55e:	e8 04 fe ff ff       	call   0x367
 563:	be 00 00 00 00       	mov    $0x0,%esi
 568:	e9 cb fe ff ff       	jmp    0x438
 56d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 570:	5b                   	pop    %ebx
 571:	5e                   	pop    %esi
 572:	5f                   	pop    %edi
 573:	5d                   	pop    %ebp
 574:	c3                   	ret    
 575:	f3 0f 1e fb          	endbr32 
 579:	55                   	push   %ebp
 57a:	89 e5                	mov    %esp,%ebp
 57c:	57                   	push   %edi
 57d:	56                   	push   %esi
 57e:	53                   	push   %ebx
 57f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 582:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 585:	a1 cc 09 00 00       	mov    0x9cc,%eax
 58a:	eb 02                	jmp    0x58e
 58c:	89 d0                	mov    %edx,%eax
 58e:	39 c8                	cmp    %ecx,%eax
 590:	73 04                	jae    0x596
 592:	39 08                	cmp    %ecx,(%eax)
 594:	77 12                	ja     0x5a8
 596:	8b 10                	mov    (%eax),%edx
 598:	39 c2                	cmp    %eax,%edx
 59a:	77 f0                	ja     0x58c
 59c:	39 c8                	cmp    %ecx,%eax
 59e:	72 08                	jb     0x5a8
 5a0:	39 ca                	cmp    %ecx,%edx
 5a2:	77 04                	ja     0x5a8
 5a4:	89 d0                	mov    %edx,%eax
 5a6:	eb e6                	jmp    0x58e
 5a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5ae:	8b 10                	mov    (%eax),%edx
 5b0:	39 d7                	cmp    %edx,%edi
 5b2:	74 19                	je     0x5cd
 5b4:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5b7:	8b 50 04             	mov    0x4(%eax),%edx
 5ba:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5bd:	39 ce                	cmp    %ecx,%esi
 5bf:	74 1b                	je     0x5dc
 5c1:	89 08                	mov    %ecx,(%eax)
 5c3:	a3 cc 09 00 00       	mov    %eax,0x9cc
 5c8:	5b                   	pop    %ebx
 5c9:	5e                   	pop    %esi
 5ca:	5f                   	pop    %edi
 5cb:	5d                   	pop    %ebp
 5cc:	c3                   	ret    
 5cd:	03 72 04             	add    0x4(%edx),%esi
 5d0:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5d3:	8b 10                	mov    (%eax),%edx
 5d5:	8b 12                	mov    (%edx),%edx
 5d7:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5da:	eb db                	jmp    0x5b7
 5dc:	03 53 fc             	add    -0x4(%ebx),%edx
 5df:	89 50 04             	mov    %edx,0x4(%eax)
 5e2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5e5:	89 10                	mov    %edx,(%eax)
 5e7:	eb da                	jmp    0x5c3
 5e9:	55                   	push   %ebp
 5ea:	89 e5                	mov    %esp,%ebp
 5ec:	53                   	push   %ebx
 5ed:	83 ec 04             	sub    $0x4,%esp
 5f0:	89 c3                	mov    %eax,%ebx
 5f2:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5f7:	77 05                	ja     0x5fe
 5f9:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5fe:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 605:	83 ec 0c             	sub    $0xc,%esp
 608:	50                   	push   %eax
 609:	e8 31 fd ff ff       	call   0x33f
 60e:	83 c4 10             	add    $0x10,%esp
 611:	83 f8 ff             	cmp    $0xffffffff,%eax
 614:	74 1c                	je     0x632
 616:	89 58 04             	mov    %ebx,0x4(%eax)
 619:	83 c0 08             	add    $0x8,%eax
 61c:	83 ec 0c             	sub    $0xc,%esp
 61f:	50                   	push   %eax
 620:	e8 50 ff ff ff       	call   0x575
 625:	a1 cc 09 00 00       	mov    0x9cc,%eax
 62a:	83 c4 10             	add    $0x10,%esp
 62d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 630:	c9                   	leave  
 631:	c3                   	ret    
 632:	b8 00 00 00 00       	mov    $0x0,%eax
 637:	eb f4                	jmp    0x62d
 639:	f3 0f 1e fb          	endbr32 
 63d:	55                   	push   %ebp
 63e:	89 e5                	mov    %esp,%ebp
 640:	53                   	push   %ebx
 641:	83 ec 04             	sub    $0x4,%esp
 644:	8b 45 08             	mov    0x8(%ebp),%eax
 647:	8d 58 07             	lea    0x7(%eax),%ebx
 64a:	c1 eb 03             	shr    $0x3,%ebx
 64d:	83 c3 01             	add    $0x1,%ebx
 650:	8b 0d cc 09 00 00    	mov    0x9cc,%ecx
 656:	85 c9                	test   %ecx,%ecx
 658:	74 04                	je     0x65e
 65a:	8b 01                	mov    (%ecx),%eax
 65c:	eb 4b                	jmp    0x6a9
 65e:	c7 05 cc 09 00 00 d0 	movl   $0x9d0,0x9cc
 665:	09 00 00 
 668:	c7 05 d0 09 00 00 d0 	movl   $0x9d0,0x9d0
 66f:	09 00 00 
 672:	c7 05 d4 09 00 00 00 	movl   $0x0,0x9d4
 679:	00 00 00 
 67c:	b9 d0 09 00 00       	mov    $0x9d0,%ecx
 681:	eb d7                	jmp    0x65a
 683:	74 1a                	je     0x69f
 685:	29 da                	sub    %ebx,%edx
 687:	89 50 04             	mov    %edx,0x4(%eax)
 68a:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 68d:	89 58 04             	mov    %ebx,0x4(%eax)
 690:	89 0d cc 09 00 00    	mov    %ecx,0x9cc
 696:	83 c0 08             	add    $0x8,%eax
 699:	83 c4 04             	add    $0x4,%esp
 69c:	5b                   	pop    %ebx
 69d:	5d                   	pop    %ebp
 69e:	c3                   	ret    
 69f:	8b 10                	mov    (%eax),%edx
 6a1:	89 11                	mov    %edx,(%ecx)
 6a3:	eb eb                	jmp    0x690
 6a5:	89 c1                	mov    %eax,%ecx
 6a7:	8b 00                	mov    (%eax),%eax
 6a9:	8b 50 04             	mov    0x4(%eax),%edx
 6ac:	39 da                	cmp    %ebx,%edx
 6ae:	73 d3                	jae    0x683
 6b0:	39 05 cc 09 00 00    	cmp    %eax,0x9cc
 6b6:	75 ed                	jne    0x6a5
 6b8:	89 d8                	mov    %ebx,%eax
 6ba:	e8 2a ff ff ff       	call   0x5e9
 6bf:	85 c0                	test   %eax,%eax
 6c1:	75 e2                	jne    0x6a5
 6c3:	eb d4                	jmp    0x699
