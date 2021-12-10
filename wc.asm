
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
  2f:	68 a0 0a 00 00       	push   $0xaa0
  34:	ff 75 08             	pushl  0x8(%ebp)
  37:	e8 1d 03 00 00       	call   0x359
  3c:	89 c7                	mov    %eax,%edi
  3e:	83 c4 10             	add    $0x10,%esp
  41:	85 c0                	test   %eax,%eax
  43:	7e 54                	jle    0x99
  45:	bb 00 00 00 00       	mov    $0x0,%ebx
  4a:	eb 22                	jmp    0x6e
  4c:	83 ec 08             	sub    $0x8,%esp
  4f:	0f be c0             	movsbl %al,%eax
  52:	50                   	push   %eax
  53:	68 50 07 00 00       	push   $0x750
  58:	e8 b2 01 00 00       	call   0x20f
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	74 22                	je     0x86
  64:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  6b:	83 c3 01             	add    $0x1,%ebx
  6e:	39 fb                	cmp    %edi,%ebx
  70:	7d b5                	jge    0x27
  72:	83 c6 01             	add    $0x1,%esi
  75:	0f b6 83 a0 0a 00 00 	movzbl 0xaa0(%ebx),%eax
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
  a8:	68 66 07 00 00       	push   $0x766
  ad:	6a 01                	push   $0x1
  af:	e8 de 03 00 00       	call   0x492
  b4:	83 c4 20             	add    $0x20,%esp
  b7:	8d 65 f4             	lea    -0xc(%ebp),%esp
  ba:	5b                   	pop    %ebx
  bb:	5e                   	pop    %esi
  bc:	5f                   	pop    %edi
  bd:	5d                   	pop    %ebp
  be:	c3                   	ret    
  bf:	83 ec 08             	sub    $0x8,%esp
  c2:	68 56 07 00 00       	push   $0x756
  c7:	6a 01                	push   $0x1
  c9:	e8 c4 03 00 00       	call   0x492
  ce:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  d5:	e8 67 02 00 00       	call   0x341
  da:	f3 0f 1e fb          	endbr32 
  de:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  e2:	83 e4 f0             	and    $0xfffffff0,%esp
  e5:	ff 71 fc             	pushl  -0x4(%ecx)
  e8:	55                   	push   %ebp
  e9:	89 e5                	mov    %esp,%ebp
  eb:	57                   	push   %edi
  ec:	56                   	push   %esi
  ed:	53                   	push   %ebx
  ee:	51                   	push   %ecx
  ef:	83 ec 18             	sub    $0x18,%esp
  f2:	8b 01                	mov    (%ecx),%eax
  f4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  f7:	8b 51 04             	mov    0x4(%ecx),%edx
  fa:	89 55 e0             	mov    %edx,-0x20(%ebp)
  fd:	83 f8 01             	cmp    $0x1,%eax
 100:	7e 40                	jle    0x142
 102:	be 01 00 00 00       	mov    $0x1,%esi
 107:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 10a:	7d 6e                	jge    0x17a
 10c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 10f:	8d 3c b0             	lea    (%eax,%esi,4),%edi
 112:	83 ec 08             	sub    $0x8,%esp
 115:	6a 00                	push   $0x0
 117:	ff 37                	pushl  (%edi)
 119:	e8 63 02 00 00       	call   0x381
 11e:	89 c3                	mov    %eax,%ebx
 120:	83 c4 10             	add    $0x10,%esp
 123:	85 c0                	test   %eax,%eax
 125:	78 36                	js     0x15d
 127:	83 ec 08             	sub    $0x8,%esp
 12a:	ff 37                	pushl  (%edi)
 12c:	50                   	push   %eax
 12d:	e8 ce fe ff ff       	call   0x0
 132:	89 1c 24             	mov    %ebx,(%esp)
 135:	e8 2f 02 00 00       	call   0x369
 13a:	83 c6 01             	add    $0x1,%esi
 13d:	83 c4 10             	add    $0x10,%esp
 140:	eb c5                	jmp    0x107
 142:	83 ec 08             	sub    $0x8,%esp
 145:	68 65 07 00 00       	push   $0x765
 14a:	6a 00                	push   $0x0
 14c:	e8 af fe ff ff       	call   0x0
 151:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 158:	e8 e4 01 00 00       	call   0x341
 15d:	83 ec 04             	sub    $0x4,%esp
 160:	ff 37                	pushl  (%edi)
 162:	68 73 07 00 00       	push   $0x773
 167:	6a 01                	push   $0x1
 169:	e8 24 03 00 00       	call   0x492
 16e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 175:	e8 c7 01 00 00       	call   0x341
 17a:	83 ec 0c             	sub    $0xc,%esp
 17d:	6a 00                	push   $0x0
 17f:	e8 bd 01 00 00       	call   0x341
 184:	f3 0f 1e fb          	endbr32 
 188:	55                   	push   %ebp
 189:	89 e5                	mov    %esp,%ebp
 18b:	56                   	push   %esi
 18c:	53                   	push   %ebx
 18d:	8b 75 08             	mov    0x8(%ebp),%esi
 190:	8b 55 0c             	mov    0xc(%ebp),%edx
 193:	89 f0                	mov    %esi,%eax
 195:	89 d1                	mov    %edx,%ecx
 197:	83 c2 01             	add    $0x1,%edx
 19a:	89 c3                	mov    %eax,%ebx
 19c:	83 c0 01             	add    $0x1,%eax
 19f:	0f b6 09             	movzbl (%ecx),%ecx
 1a2:	88 0b                	mov    %cl,(%ebx)
 1a4:	84 c9                	test   %cl,%cl
 1a6:	75 ed                	jne    0x195
 1a8:	89 f0                	mov    %esi,%eax
 1aa:	5b                   	pop    %ebx
 1ab:	5e                   	pop    %esi
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	f3 0f 1e fb          	endbr32 
 1b2:	55                   	push   %ebp
 1b3:	89 e5                	mov    %esp,%ebp
 1b5:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b8:	8b 55 0c             	mov    0xc(%ebp),%edx
 1bb:	0f b6 01             	movzbl (%ecx),%eax
 1be:	84 c0                	test   %al,%al
 1c0:	74 0c                	je     0x1ce
 1c2:	3a 02                	cmp    (%edx),%al
 1c4:	75 08                	jne    0x1ce
 1c6:	83 c1 01             	add    $0x1,%ecx
 1c9:	83 c2 01             	add    $0x1,%edx
 1cc:	eb ed                	jmp    0x1bb
 1ce:	0f b6 c0             	movzbl %al,%eax
 1d1:	0f b6 12             	movzbl (%edx),%edx
 1d4:	29 d0                	sub    %edx,%eax
 1d6:	5d                   	pop    %ebp
 1d7:	c3                   	ret    
 1d8:	f3 0f 1e fb          	endbr32 
 1dc:	55                   	push   %ebp
 1dd:	89 e5                	mov    %esp,%ebp
 1df:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1e2:	b8 00 00 00 00       	mov    $0x0,%eax
 1e7:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 1eb:	74 05                	je     0x1f2
 1ed:	83 c0 01             	add    $0x1,%eax
 1f0:	eb f5                	jmp    0x1e7
 1f2:	5d                   	pop    %ebp
 1f3:	c3                   	ret    
 1f4:	f3 0f 1e fb          	endbr32 
 1f8:	55                   	push   %ebp
 1f9:	89 e5                	mov    %esp,%ebp
 1fb:	57                   	push   %edi
 1fc:	8b 55 08             	mov    0x8(%ebp),%edx
 1ff:	89 d7                	mov    %edx,%edi
 201:	8b 4d 10             	mov    0x10(%ebp),%ecx
 204:	8b 45 0c             	mov    0xc(%ebp),%eax
 207:	fc                   	cld    
 208:	f3 aa                	rep stos %al,%es:(%edi)
 20a:	89 d0                	mov    %edx,%eax
 20c:	5f                   	pop    %edi
 20d:	5d                   	pop    %ebp
 20e:	c3                   	ret    
 20f:	f3 0f 1e fb          	endbr32 
 213:	55                   	push   %ebp
 214:	89 e5                	mov    %esp,%ebp
 216:	8b 45 08             	mov    0x8(%ebp),%eax
 219:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 21d:	0f b6 10             	movzbl (%eax),%edx
 220:	84 d2                	test   %dl,%dl
 222:	74 09                	je     0x22d
 224:	38 ca                	cmp    %cl,%dl
 226:	74 0a                	je     0x232
 228:	83 c0 01             	add    $0x1,%eax
 22b:	eb f0                	jmp    0x21d
 22d:	b8 00 00 00 00       	mov    $0x0,%eax
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	f3 0f 1e fb          	endbr32 
 238:	55                   	push   %ebp
 239:	89 e5                	mov    %esp,%ebp
 23b:	57                   	push   %edi
 23c:	56                   	push   %esi
 23d:	53                   	push   %ebx
 23e:	83 ec 1c             	sub    $0x1c,%esp
 241:	8b 7d 08             	mov    0x8(%ebp),%edi
 244:	bb 00 00 00 00       	mov    $0x0,%ebx
 249:	89 de                	mov    %ebx,%esi
 24b:	83 c3 01             	add    $0x1,%ebx
 24e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 251:	7d 2e                	jge    0x281
 253:	83 ec 04             	sub    $0x4,%esp
 256:	6a 01                	push   $0x1
 258:	8d 45 e7             	lea    -0x19(%ebp),%eax
 25b:	50                   	push   %eax
 25c:	6a 00                	push   $0x0
 25e:	e8 f6 00 00 00       	call   0x359
 263:	83 c4 10             	add    $0x10,%esp
 266:	85 c0                	test   %eax,%eax
 268:	7e 17                	jle    0x281
 26a:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 26e:	88 04 37             	mov    %al,(%edi,%esi,1)
 271:	3c 0a                	cmp    $0xa,%al
 273:	0f 94 c2             	sete   %dl
 276:	3c 0d                	cmp    $0xd,%al
 278:	0f 94 c0             	sete   %al
 27b:	08 c2                	or     %al,%dl
 27d:	74 ca                	je     0x249
 27f:	89 de                	mov    %ebx,%esi
 281:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 285:	89 f8                	mov    %edi,%eax
 287:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28a:	5b                   	pop    %ebx
 28b:	5e                   	pop    %esi
 28c:	5f                   	pop    %edi
 28d:	5d                   	pop    %ebp
 28e:	c3                   	ret    
 28f:	f3 0f 1e fb          	endbr32 
 293:	55                   	push   %ebp
 294:	89 e5                	mov    %esp,%ebp
 296:	56                   	push   %esi
 297:	53                   	push   %ebx
 298:	83 ec 08             	sub    $0x8,%esp
 29b:	6a 00                	push   $0x0
 29d:	ff 75 08             	pushl  0x8(%ebp)
 2a0:	e8 dc 00 00 00       	call   0x381
 2a5:	83 c4 10             	add    $0x10,%esp
 2a8:	85 c0                	test   %eax,%eax
 2aa:	78 24                	js     0x2d0
 2ac:	89 c3                	mov    %eax,%ebx
 2ae:	83 ec 08             	sub    $0x8,%esp
 2b1:	ff 75 0c             	pushl  0xc(%ebp)
 2b4:	50                   	push   %eax
 2b5:	e8 df 00 00 00       	call   0x399
 2ba:	89 c6                	mov    %eax,%esi
 2bc:	89 1c 24             	mov    %ebx,(%esp)
 2bf:	e8 a5 00 00 00       	call   0x369
 2c4:	83 c4 10             	add    $0x10,%esp
 2c7:	89 f0                	mov    %esi,%eax
 2c9:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2cc:	5b                   	pop    %ebx
 2cd:	5e                   	pop    %esi
 2ce:	5d                   	pop    %ebp
 2cf:	c3                   	ret    
 2d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2d5:	eb f0                	jmp    0x2c7
 2d7:	f3 0f 1e fb          	endbr32 
 2db:	55                   	push   %ebp
 2dc:	89 e5                	mov    %esp,%ebp
 2de:	53                   	push   %ebx
 2df:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e2:	ba 00 00 00 00       	mov    $0x0,%edx
 2e7:	0f b6 01             	movzbl (%ecx),%eax
 2ea:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2ed:	80 fb 09             	cmp    $0x9,%bl
 2f0:	77 12                	ja     0x304
 2f2:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 2f5:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2f8:	83 c1 01             	add    $0x1,%ecx
 2fb:	0f be c0             	movsbl %al,%eax
 2fe:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 302:	eb e3                	jmp    0x2e7
 304:	89 d0                	mov    %edx,%eax
 306:	5b                   	pop    %ebx
 307:	5d                   	pop    %ebp
 308:	c3                   	ret    
 309:	f3 0f 1e fb          	endbr32 
 30d:	55                   	push   %ebp
 30e:	89 e5                	mov    %esp,%ebp
 310:	56                   	push   %esi
 311:	53                   	push   %ebx
 312:	8b 75 08             	mov    0x8(%ebp),%esi
 315:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 318:	8b 45 10             	mov    0x10(%ebp),%eax
 31b:	89 f2                	mov    %esi,%edx
 31d:	8d 58 ff             	lea    -0x1(%eax),%ebx
 320:	85 c0                	test   %eax,%eax
 322:	7e 0f                	jle    0x333
 324:	0f b6 01             	movzbl (%ecx),%eax
 327:	88 02                	mov    %al,(%edx)
 329:	8d 49 01             	lea    0x1(%ecx),%ecx
 32c:	8d 52 01             	lea    0x1(%edx),%edx
 32f:	89 d8                	mov    %ebx,%eax
 331:	eb ea                	jmp    0x31d
 333:	89 f0                	mov    %esi,%eax
 335:	5b                   	pop    %ebx
 336:	5e                   	pop    %esi
 337:	5d                   	pop    %ebp
 338:	c3                   	ret    
 339:	b8 01 00 00 00       	mov    $0x1,%eax
 33e:	cd 40                	int    $0x40
 340:	c3                   	ret    
 341:	b8 02 00 00 00       	mov    $0x2,%eax
 346:	cd 40                	int    $0x40
 348:	c3                   	ret    
 349:	b8 03 00 00 00       	mov    $0x3,%eax
 34e:	cd 40                	int    $0x40
 350:	c3                   	ret    
 351:	b8 04 00 00 00       	mov    $0x4,%eax
 356:	cd 40                	int    $0x40
 358:	c3                   	ret    
 359:	b8 05 00 00 00       	mov    $0x5,%eax
 35e:	cd 40                	int    $0x40
 360:	c3                   	ret    
 361:	b8 10 00 00 00       	mov    $0x10,%eax
 366:	cd 40                	int    $0x40
 368:	c3                   	ret    
 369:	b8 15 00 00 00       	mov    $0x15,%eax
 36e:	cd 40                	int    $0x40
 370:	c3                   	ret    
 371:	b8 06 00 00 00       	mov    $0x6,%eax
 376:	cd 40                	int    $0x40
 378:	c3                   	ret    
 379:	b8 07 00 00 00       	mov    $0x7,%eax
 37e:	cd 40                	int    $0x40
 380:	c3                   	ret    
 381:	b8 0f 00 00 00       	mov    $0xf,%eax
 386:	cd 40                	int    $0x40
 388:	c3                   	ret    
 389:	b8 11 00 00 00       	mov    $0x11,%eax
 38e:	cd 40                	int    $0x40
 390:	c3                   	ret    
 391:	b8 12 00 00 00       	mov    $0x12,%eax
 396:	cd 40                	int    $0x40
 398:	c3                   	ret    
 399:	b8 08 00 00 00       	mov    $0x8,%eax
 39e:	cd 40                	int    $0x40
 3a0:	c3                   	ret    
 3a1:	b8 13 00 00 00       	mov    $0x13,%eax
 3a6:	cd 40                	int    $0x40
 3a8:	c3                   	ret    
 3a9:	b8 14 00 00 00       	mov    $0x14,%eax
 3ae:	cd 40                	int    $0x40
 3b0:	c3                   	ret    
 3b1:	b8 09 00 00 00       	mov    $0x9,%eax
 3b6:	cd 40                	int    $0x40
 3b8:	c3                   	ret    
 3b9:	b8 0a 00 00 00       	mov    $0xa,%eax
 3be:	cd 40                	int    $0x40
 3c0:	c3                   	ret    
 3c1:	b8 0b 00 00 00       	mov    $0xb,%eax
 3c6:	cd 40                	int    $0x40
 3c8:	c3                   	ret    
 3c9:	b8 0c 00 00 00       	mov    $0xc,%eax
 3ce:	cd 40                	int    $0x40
 3d0:	c3                   	ret    
 3d1:	b8 0d 00 00 00       	mov    $0xd,%eax
 3d6:	cd 40                	int    $0x40
 3d8:	c3                   	ret    
 3d9:	b8 0e 00 00 00       	mov    $0xe,%eax
 3de:	cd 40                	int    $0x40
 3e0:	c3                   	ret    
 3e1:	b8 16 00 00 00       	mov    $0x16,%eax
 3e6:	cd 40                	int    $0x40
 3e8:	c3                   	ret    
 3e9:	b8 17 00 00 00       	mov    $0x17,%eax
 3ee:	cd 40                	int    $0x40
 3f0:	c3                   	ret    
 3f1:	55                   	push   %ebp
 3f2:	89 e5                	mov    %esp,%ebp
 3f4:	83 ec 1c             	sub    $0x1c,%esp
 3f7:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3fa:	6a 01                	push   $0x1
 3fc:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3ff:	52                   	push   %edx
 400:	50                   	push   %eax
 401:	e8 5b ff ff ff       	call   0x361
 406:	83 c4 10             	add    $0x10,%esp
 409:	c9                   	leave  
 40a:	c3                   	ret    
 40b:	55                   	push   %ebp
 40c:	89 e5                	mov    %esp,%ebp
 40e:	57                   	push   %edi
 40f:	56                   	push   %esi
 410:	53                   	push   %ebx
 411:	83 ec 2c             	sub    $0x2c,%esp
 414:	89 45 d0             	mov    %eax,-0x30(%ebp)
 417:	89 d6                	mov    %edx,%esi
 419:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 41d:	0f 95 c2             	setne  %dl
 420:	89 f0                	mov    %esi,%eax
 422:	c1 e8 1f             	shr    $0x1f,%eax
 425:	84 c2                	test   %al,%dl
 427:	74 42                	je     0x46b
 429:	f7 de                	neg    %esi
 42b:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 432:	bb 00 00 00 00       	mov    $0x0,%ebx
 437:	89 f0                	mov    %esi,%eax
 439:	ba 00 00 00 00       	mov    $0x0,%edx
 43e:	f7 f1                	div    %ecx
 440:	89 df                	mov    %ebx,%edi
 442:	83 c3 01             	add    $0x1,%ebx
 445:	0f b6 92 90 07 00 00 	movzbl 0x790(%edx),%edx
 44c:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 450:	89 f2                	mov    %esi,%edx
 452:	89 c6                	mov    %eax,%esi
 454:	39 d1                	cmp    %edx,%ecx
 456:	76 df                	jbe    0x437
 458:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 45c:	74 2f                	je     0x48d
 45e:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 463:	8d 5f 02             	lea    0x2(%edi),%ebx
 466:	8b 75 d0             	mov    -0x30(%ebp),%esi
 469:	eb 15                	jmp    0x480
 46b:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 472:	eb be                	jmp    0x432
 474:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 479:	89 f0                	mov    %esi,%eax
 47b:	e8 71 ff ff ff       	call   0x3f1
 480:	83 eb 01             	sub    $0x1,%ebx
 483:	79 ef                	jns    0x474
 485:	83 c4 2c             	add    $0x2c,%esp
 488:	5b                   	pop    %ebx
 489:	5e                   	pop    %esi
 48a:	5f                   	pop    %edi
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret    
 48d:	8b 75 d0             	mov    -0x30(%ebp),%esi
 490:	eb ee                	jmp    0x480
 492:	f3 0f 1e fb          	endbr32 
 496:	55                   	push   %ebp
 497:	89 e5                	mov    %esp,%ebp
 499:	57                   	push   %edi
 49a:	56                   	push   %esi
 49b:	53                   	push   %ebx
 49c:	83 ec 1c             	sub    $0x1c,%esp
 49f:	8d 45 10             	lea    0x10(%ebp),%eax
 4a2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4a5:	be 00 00 00 00       	mov    $0x0,%esi
 4aa:	bb 00 00 00 00       	mov    $0x0,%ebx
 4af:	eb 14                	jmp    0x4c5
 4b1:	89 fa                	mov    %edi,%edx
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 4b6:	e8 36 ff ff ff       	call   0x3f1
 4bb:	eb 05                	jmp    0x4c2
 4bd:	83 fe 25             	cmp    $0x25,%esi
 4c0:	74 25                	je     0x4e7
 4c2:	83 c3 01             	add    $0x1,%ebx
 4c5:	8b 45 0c             	mov    0xc(%ebp),%eax
 4c8:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 4cc:	84 c0                	test   %al,%al
 4ce:	0f 84 23 01 00 00    	je     0x5f7
 4d4:	0f be f8             	movsbl %al,%edi
 4d7:	0f b6 c0             	movzbl %al,%eax
 4da:	85 f6                	test   %esi,%esi
 4dc:	75 df                	jne    0x4bd
 4de:	83 f8 25             	cmp    $0x25,%eax
 4e1:	75 ce                	jne    0x4b1
 4e3:	89 c6                	mov    %eax,%esi
 4e5:	eb db                	jmp    0x4c2
 4e7:	83 f8 64             	cmp    $0x64,%eax
 4ea:	74 49                	je     0x535
 4ec:	83 f8 78             	cmp    $0x78,%eax
 4ef:	0f 94 c1             	sete   %cl
 4f2:	83 f8 70             	cmp    $0x70,%eax
 4f5:	0f 94 c2             	sete   %dl
 4f8:	08 d1                	or     %dl,%cl
 4fa:	75 63                	jne    0x55f
 4fc:	83 f8 73             	cmp    $0x73,%eax
 4ff:	0f 84 84 00 00 00    	je     0x589
 505:	83 f8 63             	cmp    $0x63,%eax
 508:	0f 84 b7 00 00 00    	je     0x5c5
 50e:	83 f8 25             	cmp    $0x25,%eax
 511:	0f 84 cc 00 00 00    	je     0x5e3
 517:	ba 25 00 00 00       	mov    $0x25,%edx
 51c:	8b 45 08             	mov    0x8(%ebp),%eax
 51f:	e8 cd fe ff ff       	call   0x3f1
 524:	89 fa                	mov    %edi,%edx
 526:	8b 45 08             	mov    0x8(%ebp),%eax
 529:	e8 c3 fe ff ff       	call   0x3f1
 52e:	be 00 00 00 00       	mov    $0x0,%esi
 533:	eb 8d                	jmp    0x4c2
 535:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 538:	8b 17                	mov    (%edi),%edx
 53a:	83 ec 0c             	sub    $0xc,%esp
 53d:	6a 01                	push   $0x1
 53f:	b9 0a 00 00 00       	mov    $0xa,%ecx
 544:	8b 45 08             	mov    0x8(%ebp),%eax
 547:	e8 bf fe ff ff       	call   0x40b
 54c:	83 c7 04             	add    $0x4,%edi
 54f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 552:	83 c4 10             	add    $0x10,%esp
 555:	be 00 00 00 00       	mov    $0x0,%esi
 55a:	e9 63 ff ff ff       	jmp    0x4c2
 55f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 562:	8b 17                	mov    (%edi),%edx
 564:	83 ec 0c             	sub    $0xc,%esp
 567:	6a 00                	push   $0x0
 569:	b9 10 00 00 00       	mov    $0x10,%ecx
 56e:	8b 45 08             	mov    0x8(%ebp),%eax
 571:	e8 95 fe ff ff       	call   0x40b
 576:	83 c7 04             	add    $0x4,%edi
 579:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 57c:	83 c4 10             	add    $0x10,%esp
 57f:	be 00 00 00 00       	mov    $0x0,%esi
 584:	e9 39 ff ff ff       	jmp    0x4c2
 589:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 58c:	8b 30                	mov    (%eax),%esi
 58e:	83 c0 04             	add    $0x4,%eax
 591:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 594:	85 f6                	test   %esi,%esi
 596:	75 28                	jne    0x5c0
 598:	be 87 07 00 00       	mov    $0x787,%esi
 59d:	8b 7d 08             	mov    0x8(%ebp),%edi
 5a0:	eb 0d                	jmp    0x5af
 5a2:	0f be d2             	movsbl %dl,%edx
 5a5:	89 f8                	mov    %edi,%eax
 5a7:	e8 45 fe ff ff       	call   0x3f1
 5ac:	83 c6 01             	add    $0x1,%esi
 5af:	0f b6 16             	movzbl (%esi),%edx
 5b2:	84 d2                	test   %dl,%dl
 5b4:	75 ec                	jne    0x5a2
 5b6:	be 00 00 00 00       	mov    $0x0,%esi
 5bb:	e9 02 ff ff ff       	jmp    0x4c2
 5c0:	8b 7d 08             	mov    0x8(%ebp),%edi
 5c3:	eb ea                	jmp    0x5af
 5c5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 5c8:	0f be 17             	movsbl (%edi),%edx
 5cb:	8b 45 08             	mov    0x8(%ebp),%eax
 5ce:	e8 1e fe ff ff       	call   0x3f1
 5d3:	83 c7 04             	add    $0x4,%edi
 5d6:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 5d9:	be 00 00 00 00       	mov    $0x0,%esi
 5de:	e9 df fe ff ff       	jmp    0x4c2
 5e3:	89 fa                	mov    %edi,%edx
 5e5:	8b 45 08             	mov    0x8(%ebp),%eax
 5e8:	e8 04 fe ff ff       	call   0x3f1
 5ed:	be 00 00 00 00       	mov    $0x0,%esi
 5f2:	e9 cb fe ff ff       	jmp    0x4c2
 5f7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5fa:	5b                   	pop    %ebx
 5fb:	5e                   	pop    %esi
 5fc:	5f                   	pop    %edi
 5fd:	5d                   	pop    %ebp
 5fe:	c3                   	ret    
 5ff:	f3 0f 1e fb          	endbr32 
 603:	55                   	push   %ebp
 604:	89 e5                	mov    %esp,%ebp
 606:	57                   	push   %edi
 607:	56                   	push   %esi
 608:	53                   	push   %ebx
 609:	8b 5d 08             	mov    0x8(%ebp),%ebx
 60c:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 60f:	a1 80 0a 00 00       	mov    0xa80,%eax
 614:	eb 02                	jmp    0x618
 616:	89 d0                	mov    %edx,%eax
 618:	39 c8                	cmp    %ecx,%eax
 61a:	73 04                	jae    0x620
 61c:	39 08                	cmp    %ecx,(%eax)
 61e:	77 12                	ja     0x632
 620:	8b 10                	mov    (%eax),%edx
 622:	39 c2                	cmp    %eax,%edx
 624:	77 f0                	ja     0x616
 626:	39 c8                	cmp    %ecx,%eax
 628:	72 08                	jb     0x632
 62a:	39 ca                	cmp    %ecx,%edx
 62c:	77 04                	ja     0x632
 62e:	89 d0                	mov    %edx,%eax
 630:	eb e6                	jmp    0x618
 632:	8b 73 fc             	mov    -0x4(%ebx),%esi
 635:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 638:	8b 10                	mov    (%eax),%edx
 63a:	39 d7                	cmp    %edx,%edi
 63c:	74 19                	je     0x657
 63e:	89 53 f8             	mov    %edx,-0x8(%ebx)
 641:	8b 50 04             	mov    0x4(%eax),%edx
 644:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 647:	39 ce                	cmp    %ecx,%esi
 649:	74 1b                	je     0x666
 64b:	89 08                	mov    %ecx,(%eax)
 64d:	a3 80 0a 00 00       	mov    %eax,0xa80
 652:	5b                   	pop    %ebx
 653:	5e                   	pop    %esi
 654:	5f                   	pop    %edi
 655:	5d                   	pop    %ebp
 656:	c3                   	ret    
 657:	03 72 04             	add    0x4(%edx),%esi
 65a:	89 73 fc             	mov    %esi,-0x4(%ebx)
 65d:	8b 10                	mov    (%eax),%edx
 65f:	8b 12                	mov    (%edx),%edx
 661:	89 53 f8             	mov    %edx,-0x8(%ebx)
 664:	eb db                	jmp    0x641
 666:	03 53 fc             	add    -0x4(%ebx),%edx
 669:	89 50 04             	mov    %edx,0x4(%eax)
 66c:	8b 53 f8             	mov    -0x8(%ebx),%edx
 66f:	89 10                	mov    %edx,(%eax)
 671:	eb da                	jmp    0x64d
 673:	55                   	push   %ebp
 674:	89 e5                	mov    %esp,%ebp
 676:	53                   	push   %ebx
 677:	83 ec 04             	sub    $0x4,%esp
 67a:	89 c3                	mov    %eax,%ebx
 67c:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 681:	77 05                	ja     0x688
 683:	bb 00 10 00 00       	mov    $0x1000,%ebx
 688:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 68f:	83 ec 0c             	sub    $0xc,%esp
 692:	50                   	push   %eax
 693:	e8 31 fd ff ff       	call   0x3c9
 698:	83 c4 10             	add    $0x10,%esp
 69b:	83 f8 ff             	cmp    $0xffffffff,%eax
 69e:	74 1c                	je     0x6bc
 6a0:	89 58 04             	mov    %ebx,0x4(%eax)
 6a3:	83 c0 08             	add    $0x8,%eax
 6a6:	83 ec 0c             	sub    $0xc,%esp
 6a9:	50                   	push   %eax
 6aa:	e8 50 ff ff ff       	call   0x5ff
 6af:	a1 80 0a 00 00       	mov    0xa80,%eax
 6b4:	83 c4 10             	add    $0x10,%esp
 6b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6ba:	c9                   	leave  
 6bb:	c3                   	ret    
 6bc:	b8 00 00 00 00       	mov    $0x0,%eax
 6c1:	eb f4                	jmp    0x6b7
 6c3:	f3 0f 1e fb          	endbr32 
 6c7:	55                   	push   %ebp
 6c8:	89 e5                	mov    %esp,%ebp
 6ca:	53                   	push   %ebx
 6cb:	83 ec 04             	sub    $0x4,%esp
 6ce:	8b 45 08             	mov    0x8(%ebp),%eax
 6d1:	8d 58 07             	lea    0x7(%eax),%ebx
 6d4:	c1 eb 03             	shr    $0x3,%ebx
 6d7:	83 c3 01             	add    $0x1,%ebx
 6da:	8b 0d 80 0a 00 00    	mov    0xa80,%ecx
 6e0:	85 c9                	test   %ecx,%ecx
 6e2:	74 04                	je     0x6e8
 6e4:	8b 01                	mov    (%ecx),%eax
 6e6:	eb 4b                	jmp    0x733
 6e8:	c7 05 80 0a 00 00 84 	movl   $0xa84,0xa80
 6ef:	0a 00 00 
 6f2:	c7 05 84 0a 00 00 84 	movl   $0xa84,0xa84
 6f9:	0a 00 00 
 6fc:	c7 05 88 0a 00 00 00 	movl   $0x0,0xa88
 703:	00 00 00 
 706:	b9 84 0a 00 00       	mov    $0xa84,%ecx
 70b:	eb d7                	jmp    0x6e4
 70d:	74 1a                	je     0x729
 70f:	29 da                	sub    %ebx,%edx
 711:	89 50 04             	mov    %edx,0x4(%eax)
 714:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 717:	89 58 04             	mov    %ebx,0x4(%eax)
 71a:	89 0d 80 0a 00 00    	mov    %ecx,0xa80
 720:	83 c0 08             	add    $0x8,%eax
 723:	83 c4 04             	add    $0x4,%esp
 726:	5b                   	pop    %ebx
 727:	5d                   	pop    %ebp
 728:	c3                   	ret    
 729:	8b 10                	mov    (%eax),%edx
 72b:	89 11                	mov    %edx,(%ecx)
 72d:	eb eb                	jmp    0x71a
 72f:	89 c1                	mov    %eax,%ecx
 731:	8b 00                	mov    (%eax),%eax
 733:	8b 50 04             	mov    0x4(%eax),%edx
 736:	39 da                	cmp    %ebx,%edx
 738:	73 d3                	jae    0x70d
 73a:	39 05 80 0a 00 00    	cmp    %eax,0xa80
 740:	75 ed                	jne    0x72f
 742:	89 d8                	mov    %ebx,%eax
 744:	e8 2a ff ff ff       	call   0x673
 749:	85 c0                	test   %eax,%eax
 74b:	75 e2                	jne    0x72f
 74d:	eb d4                	jmp    0x723
