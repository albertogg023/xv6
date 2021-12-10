
_dup2test:     formato del fichero elf32-i386


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
  16:	6a 08                	push   $0x8
  18:	6a ff                	push   $0xffffffff
  1a:	e8 9f 05 00 00       	call   0x5be
  1f:	83 c4 10             	add    $0x10,%esp
  22:	85 c0                	test   %eax,%eax
  24:	0f 89 ed 01 00 00    	jns    0x217
  2a:	83 ec 08             	sub    $0x8,%esp
  2d:	6a ff                	push   $0xffffffff
  2f:	6a 01                	push   $0x1
  31:	e8 88 05 00 00       	call   0x5be
  36:	83 c4 10             	add    $0x10,%esp
  39:	85 c0                	test   %eax,%eax
  3b:	0f 89 ed 01 00 00    	jns    0x22e
  41:	83 ec 08             	sub    $0x8,%esp
  44:	6a 08                	push   $0x8
  46:	6a 06                	push   $0x6
  48:	e8 71 05 00 00       	call   0x5be
  4d:	83 c4 10             	add    $0x10,%esp
  50:	85 c0                	test   %eax,%eax
  52:	0f 89 ed 01 00 00    	jns    0x245
  58:	83 ec 08             	sub    $0x8,%esp
  5b:	6a 01                	push   $0x1
  5d:	6a 08                	push   $0x8
  5f:	e8 5a 05 00 00       	call   0x5be
  64:	83 c4 10             	add    $0x10,%esp
  67:	85 c0                	test   %eax,%eax
  69:	0f 89 ed 01 00 00    	jns    0x25c
  6f:	83 ec 08             	sub    $0x8,%esp
  72:	6a 19                	push   $0x19
  74:	6a 01                	push   $0x1
  76:	e8 43 05 00 00       	call   0x5be
  7b:	83 c4 10             	add    $0x10,%esp
  7e:	85 c0                	test   %eax,%eax
  80:	0f 89 ed 01 00 00    	jns    0x273
  86:	83 ec 08             	sub    $0x8,%esp
  89:	6a 04                	push   $0x4
  8b:	6a 01                	push   $0x1
  8d:	e8 2c 05 00 00       	call   0x5be
  92:	83 c4 10             	add    $0x10,%esp
  95:	83 f8 04             	cmp    $0x4,%eax
  98:	0f 85 ec 01 00 00    	jne    0x28a
  9e:	83 ec 08             	sub    $0x8,%esp
  a1:	68 1c 0a 00 00       	push   $0xa1c
  a6:	6a 04                	push   $0x4
  a8:	e8 ba 05 00 00       	call   0x667
  ad:	83 c4 08             	add    $0x8,%esp
  b0:	6a 06                	push   $0x6
  b2:	6a 04                	push   $0x4
  b4:	e8 05 05 00 00       	call   0x5be
  b9:	83 c4 10             	add    $0x10,%esp
  bc:	83 f8 06             	cmp    $0x6,%eax
  bf:	0f 85 dc 01 00 00    	jne    0x2a1
  c5:	83 ec 08             	sub    $0x8,%esp
  c8:	68 6c 0a 00 00       	push   $0xa6c
  cd:	6a 06                	push   $0x6
  cf:	e8 93 05 00 00       	call   0x667
  d4:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  db:	e8 5e 04 00 00       	call   0x53e
  e0:	83 c4 10             	add    $0x10,%esp
  e3:	85 c0                	test   %eax,%eax
  e5:	0f 85 cd 01 00 00    	jne    0x2b8
  eb:	83 ec 08             	sub    $0x8,%esp
  ee:	68 98 0a 00 00       	push   $0xa98
  f3:	6a 06                	push   $0x6
  f5:	e8 6d 05 00 00       	call   0x667
  fa:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 101:	e8 38 04 00 00       	call   0x53e
 106:	83 c4 10             	add    $0x10,%esp
 109:	85 c0                	test   %eax,%eax
 10b:	0f 85 be 01 00 00    	jne    0x2cf
 111:	83 ec 0c             	sub    $0xc,%esp
 114:	6a 06                	push   $0x6
 116:	e8 23 04 00 00       	call   0x53e
 11b:	83 c4 10             	add    $0x10,%esp
 11e:	85 c0                	test   %eax,%eax
 120:	0f 84 c0 01 00 00    	je     0x2e6
 126:	83 ec 08             	sub    $0x8,%esp
 129:	68 02 02 00 00       	push   $0x202
 12e:	68 78 0b 00 00       	push   $0xb78
 133:	e8 1e 04 00 00       	call   0x556
 138:	89 c3                	mov    %eax,%ebx
 13a:	83 c4 08             	add    $0x8,%esp
 13d:	68 8b 0b 00 00       	push   $0xb8b
 142:	50                   	push   %eax
 143:	e8 1f 05 00 00       	call   0x667
 148:	83 c4 08             	add    $0x8,%esp
 14b:	6a 09                	push   $0x9
 14d:	53                   	push   %ebx
 14e:	e8 6b 04 00 00       	call   0x5be
 153:	83 c4 10             	add    $0x10,%esp
 156:	83 f8 09             	cmp    $0x9,%eax
 159:	0f 85 9e 01 00 00    	jne    0x2fd
 15f:	83 ec 08             	sub    $0x8,%esp
 162:	68 9d 0b 00 00       	push   $0xb9d
 167:	6a 09                	push   $0x9
 169:	e8 f9 04 00 00       	call   0x667
 16e:	83 c4 08             	add    $0x8,%esp
 171:	6a 09                	push   $0x9
 173:	6a 09                	push   $0x9
 175:	e8 44 04 00 00       	call   0x5be
 17a:	83 c4 10             	add    $0x10,%esp
 17d:	83 f8 09             	cmp    $0x9,%eax
 180:	0f 85 8e 01 00 00    	jne    0x314
 186:	83 ec 08             	sub    $0x8,%esp
 189:	68 9d 0b 00 00       	push   $0xb9d
 18e:	6a 09                	push   $0x9
 190:	e8 d2 04 00 00       	call   0x667
 195:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
 19c:	e8 9d 03 00 00       	call   0x53e
 1a1:	83 c4 08             	add    $0x8,%esp
 1a4:	6a 06                	push   $0x6
 1a6:	6a 01                	push   $0x1
 1a8:	e8 11 04 00 00       	call   0x5be
 1ad:	83 c4 08             	add    $0x8,%esp
 1b0:	6a 01                	push   $0x1
 1b2:	53                   	push   %ebx
 1b3:	e8 06 04 00 00       	call   0x5be
 1b8:	83 c4 10             	add    $0x10,%esp
 1bb:	83 f8 01             	cmp    $0x1,%eax
 1be:	0f 85 67 01 00 00    	jne    0x32b
 1c4:	83 ec 08             	sub    $0x8,%esp
 1c7:	68 b9 0b 00 00       	push   $0xbb9
 1cc:	6a 01                	push   $0x1
 1ce:	e8 94 04 00 00       	call   0x667
 1d3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1da:	e8 5f 03 00 00       	call   0x53e
 1df:	83 c4 10             	add    $0x10,%esp
 1e2:	85 c0                	test   %eax,%eax
 1e4:	0f 85 58 01 00 00    	jne    0x342
 1ea:	83 ec 08             	sub    $0x8,%esp
 1ed:	53                   	push   %ebx
 1ee:	6a 06                	push   $0x6
 1f0:	e8 c9 03 00 00       	call   0x5be
 1f5:	83 c4 08             	add    $0x8,%esp
 1f8:	68 1c 0a 00 00       	push   $0xa1c
 1fd:	53                   	push   %ebx
 1fe:	e8 64 04 00 00       	call   0x667
 203:	89 1c 24             	mov    %ebx,(%esp)
 206:	e8 33 03 00 00       	call   0x53e
 20b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 212:	e8 ff 02 00 00       	call   0x516
 217:	83 ec 08             	sub    $0x8,%esp
 21a:	68 24 09 00 00       	push   $0x924
 21f:	6a 02                	push   $0x2
 221:	e8 41 04 00 00       	call   0x667
 226:	83 c4 10             	add    $0x10,%esp
 229:	e9 fc fd ff ff       	jmp    0x2a
 22e:	83 ec 08             	sub    $0x8,%esp
 231:	68 4c 09 00 00       	push   $0x94c
 236:	6a 02                	push   $0x2
 238:	e8 2a 04 00 00       	call   0x667
 23d:	83 c4 10             	add    $0x10,%esp
 240:	e9 fc fd ff ff       	jmp    0x41
 245:	83 ec 08             	sub    $0x8,%esp
 248:	68 78 09 00 00       	push   $0x978
 24d:	6a 02                	push   $0x2
 24f:	e8 13 04 00 00       	call   0x667
 254:	83 c4 10             	add    $0x10,%esp
 257:	e9 fc fd ff ff       	jmp    0x58
 25c:	83 ec 08             	sub    $0x8,%esp
 25f:	68 a0 09 00 00       	push   $0x9a0
 264:	6a 02                	push   $0x2
 266:	e8 fc 03 00 00       	call   0x667
 26b:	83 c4 10             	add    $0x10,%esp
 26e:	e9 fc fd ff ff       	jmp    0x6f
 273:	83 ec 08             	sub    $0x8,%esp
 276:	68 cc 09 00 00       	push   $0x9cc
 27b:	6a 02                	push   $0x2
 27d:	e8 e5 03 00 00       	call   0x667
 282:	83 c4 10             	add    $0x10,%esp
 285:	e9 fc fd ff ff       	jmp    0x86
 28a:	83 ec 08             	sub    $0x8,%esp
 28d:	68 f8 09 00 00       	push   $0x9f8
 292:	6a 02                	push   $0x2
 294:	e8 ce 03 00 00       	call   0x667
 299:	83 c4 10             	add    $0x10,%esp
 29c:	e9 fd fd ff ff       	jmp    0x9e
 2a1:	83 ec 08             	sub    $0x8,%esp
 2a4:	68 44 0a 00 00       	push   $0xa44
 2a9:	6a 02                	push   $0x2
 2ab:	e8 b7 03 00 00       	call   0x667
 2b0:	83 c4 10             	add    $0x10,%esp
 2b3:	e9 0d fe ff ff       	jmp    0xc5
 2b8:	83 ec 08             	sub    $0x8,%esp
 2bb:	68 38 0b 00 00       	push   $0xb38
 2c0:	6a 02                	push   $0x2
 2c2:	e8 a0 03 00 00       	call   0x667
 2c7:	83 c4 10             	add    $0x10,%esp
 2ca:	e9 1c fe ff ff       	jmp    0xeb
 2cf:	83 ec 08             	sub    $0x8,%esp
 2d2:	68 4c 0b 00 00       	push   $0xb4c
 2d7:	6a 02                	push   $0x2
 2d9:	e8 89 03 00 00       	call   0x667
 2de:	83 c4 10             	add    $0x10,%esp
 2e1:	e9 2b fe ff ff       	jmp    0x111
 2e6:	83 ec 08             	sub    $0x8,%esp
 2e9:	68 60 0b 00 00       	push   $0xb60
 2ee:	6a 02                	push   $0x2
 2f0:	e8 72 03 00 00       	call   0x667
 2f5:	83 c4 10             	add    $0x10,%esp
 2f8:	e9 29 fe ff ff       	jmp    0x126
 2fd:	83 ec 08             	sub    $0x8,%esp
 300:	68 c4 0a 00 00       	push   $0xac4
 305:	6a 02                	push   $0x2
 307:	e8 5b 03 00 00       	call   0x667
 30c:	83 c4 10             	add    $0x10,%esp
 30f:	e9 4b fe ff ff       	jmp    0x15f
 314:	83 ec 08             	sub    $0x8,%esp
 317:	68 ec 0a 00 00       	push   $0xaec
 31c:	6a 02                	push   $0x2
 31e:	e8 44 03 00 00       	call   0x667
 323:	83 c4 10             	add    $0x10,%esp
 326:	e9 5b fe ff ff       	jmp    0x186
 32b:	83 ec 08             	sub    $0x8,%esp
 32e:	68 10 0b 00 00       	push   $0xb10
 333:	6a 02                	push   $0x2
 335:	e8 2d 03 00 00       	call   0x667
 33a:	83 c4 10             	add    $0x10,%esp
 33d:	e9 82 fe ff ff       	jmp    0x1c4
 342:	83 ec 08             	sub    $0x8,%esp
 345:	68 d3 0b 00 00       	push   $0xbd3
 34a:	6a 02                	push   $0x2
 34c:	e8 16 03 00 00       	call   0x667
 351:	83 c4 10             	add    $0x10,%esp
 354:	e9 91 fe ff ff       	jmp    0x1ea
 359:	f3 0f 1e fb          	endbr32 
 35d:	55                   	push   %ebp
 35e:	89 e5                	mov    %esp,%ebp
 360:	56                   	push   %esi
 361:	53                   	push   %ebx
 362:	8b 75 08             	mov    0x8(%ebp),%esi
 365:	8b 55 0c             	mov    0xc(%ebp),%edx
 368:	89 f0                	mov    %esi,%eax
 36a:	89 d1                	mov    %edx,%ecx
 36c:	83 c2 01             	add    $0x1,%edx
 36f:	89 c3                	mov    %eax,%ebx
 371:	83 c0 01             	add    $0x1,%eax
 374:	0f b6 09             	movzbl (%ecx),%ecx
 377:	88 0b                	mov    %cl,(%ebx)
 379:	84 c9                	test   %cl,%cl
 37b:	75 ed                	jne    0x36a
 37d:	89 f0                	mov    %esi,%eax
 37f:	5b                   	pop    %ebx
 380:	5e                   	pop    %esi
 381:	5d                   	pop    %ebp
 382:	c3                   	ret    
 383:	f3 0f 1e fb          	endbr32 
 387:	55                   	push   %ebp
 388:	89 e5                	mov    %esp,%ebp
 38a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 38d:	8b 55 0c             	mov    0xc(%ebp),%edx
 390:	0f b6 01             	movzbl (%ecx),%eax
 393:	84 c0                	test   %al,%al
 395:	74 0c                	je     0x3a3
 397:	3a 02                	cmp    (%edx),%al
 399:	75 08                	jne    0x3a3
 39b:	83 c1 01             	add    $0x1,%ecx
 39e:	83 c2 01             	add    $0x1,%edx
 3a1:	eb ed                	jmp    0x390
 3a3:	0f b6 c0             	movzbl %al,%eax
 3a6:	0f b6 12             	movzbl (%edx),%edx
 3a9:	29 d0                	sub    %edx,%eax
 3ab:	5d                   	pop    %ebp
 3ac:	c3                   	ret    
 3ad:	f3 0f 1e fb          	endbr32 
 3b1:	55                   	push   %ebp
 3b2:	89 e5                	mov    %esp,%ebp
 3b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3b7:	b8 00 00 00 00       	mov    $0x0,%eax
 3bc:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 3c0:	74 05                	je     0x3c7
 3c2:	83 c0 01             	add    $0x1,%eax
 3c5:	eb f5                	jmp    0x3bc
 3c7:	5d                   	pop    %ebp
 3c8:	c3                   	ret    
 3c9:	f3 0f 1e fb          	endbr32 
 3cd:	55                   	push   %ebp
 3ce:	89 e5                	mov    %esp,%ebp
 3d0:	57                   	push   %edi
 3d1:	8b 55 08             	mov    0x8(%ebp),%edx
 3d4:	89 d7                	mov    %edx,%edi
 3d6:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3d9:	8b 45 0c             	mov    0xc(%ebp),%eax
 3dc:	fc                   	cld    
 3dd:	f3 aa                	rep stos %al,%es:(%edi)
 3df:	89 d0                	mov    %edx,%eax
 3e1:	5f                   	pop    %edi
 3e2:	5d                   	pop    %ebp
 3e3:	c3                   	ret    
 3e4:	f3 0f 1e fb          	endbr32 
 3e8:	55                   	push   %ebp
 3e9:	89 e5                	mov    %esp,%ebp
 3eb:	8b 45 08             	mov    0x8(%ebp),%eax
 3ee:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 3f2:	0f b6 10             	movzbl (%eax),%edx
 3f5:	84 d2                	test   %dl,%dl
 3f7:	74 09                	je     0x402
 3f9:	38 ca                	cmp    %cl,%dl
 3fb:	74 0a                	je     0x407
 3fd:	83 c0 01             	add    $0x1,%eax
 400:	eb f0                	jmp    0x3f2
 402:	b8 00 00 00 00       	mov    $0x0,%eax
 407:	5d                   	pop    %ebp
 408:	c3                   	ret    
 409:	f3 0f 1e fb          	endbr32 
 40d:	55                   	push   %ebp
 40e:	89 e5                	mov    %esp,%ebp
 410:	57                   	push   %edi
 411:	56                   	push   %esi
 412:	53                   	push   %ebx
 413:	83 ec 1c             	sub    $0x1c,%esp
 416:	8b 7d 08             	mov    0x8(%ebp),%edi
 419:	bb 00 00 00 00       	mov    $0x0,%ebx
 41e:	89 de                	mov    %ebx,%esi
 420:	83 c3 01             	add    $0x1,%ebx
 423:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 426:	7d 2e                	jge    0x456
 428:	83 ec 04             	sub    $0x4,%esp
 42b:	6a 01                	push   $0x1
 42d:	8d 45 e7             	lea    -0x19(%ebp),%eax
 430:	50                   	push   %eax
 431:	6a 00                	push   $0x0
 433:	e8 f6 00 00 00       	call   0x52e
 438:	83 c4 10             	add    $0x10,%esp
 43b:	85 c0                	test   %eax,%eax
 43d:	7e 17                	jle    0x456
 43f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 443:	88 04 37             	mov    %al,(%edi,%esi,1)
 446:	3c 0a                	cmp    $0xa,%al
 448:	0f 94 c2             	sete   %dl
 44b:	3c 0d                	cmp    $0xd,%al
 44d:	0f 94 c0             	sete   %al
 450:	08 c2                	or     %al,%dl
 452:	74 ca                	je     0x41e
 454:	89 de                	mov    %ebx,%esi
 456:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 45a:	89 f8                	mov    %edi,%eax
 45c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 45f:	5b                   	pop    %ebx
 460:	5e                   	pop    %esi
 461:	5f                   	pop    %edi
 462:	5d                   	pop    %ebp
 463:	c3                   	ret    
 464:	f3 0f 1e fb          	endbr32 
 468:	55                   	push   %ebp
 469:	89 e5                	mov    %esp,%ebp
 46b:	56                   	push   %esi
 46c:	53                   	push   %ebx
 46d:	83 ec 08             	sub    $0x8,%esp
 470:	6a 00                	push   $0x0
 472:	ff 75 08             	pushl  0x8(%ebp)
 475:	e8 dc 00 00 00       	call   0x556
 47a:	83 c4 10             	add    $0x10,%esp
 47d:	85 c0                	test   %eax,%eax
 47f:	78 24                	js     0x4a5
 481:	89 c3                	mov    %eax,%ebx
 483:	83 ec 08             	sub    $0x8,%esp
 486:	ff 75 0c             	pushl  0xc(%ebp)
 489:	50                   	push   %eax
 48a:	e8 df 00 00 00       	call   0x56e
 48f:	89 c6                	mov    %eax,%esi
 491:	89 1c 24             	mov    %ebx,(%esp)
 494:	e8 a5 00 00 00       	call   0x53e
 499:	83 c4 10             	add    $0x10,%esp
 49c:	89 f0                	mov    %esi,%eax
 49e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4a1:	5b                   	pop    %ebx
 4a2:	5e                   	pop    %esi
 4a3:	5d                   	pop    %ebp
 4a4:	c3                   	ret    
 4a5:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4aa:	eb f0                	jmp    0x49c
 4ac:	f3 0f 1e fb          	endbr32 
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	53                   	push   %ebx
 4b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4b7:	ba 00 00 00 00       	mov    $0x0,%edx
 4bc:	0f b6 01             	movzbl (%ecx),%eax
 4bf:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4c2:	80 fb 09             	cmp    $0x9,%bl
 4c5:	77 12                	ja     0x4d9
 4c7:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 4ca:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 4cd:	83 c1 01             	add    $0x1,%ecx
 4d0:	0f be c0             	movsbl %al,%eax
 4d3:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 4d7:	eb e3                	jmp    0x4bc
 4d9:	89 d0                	mov    %edx,%eax
 4db:	5b                   	pop    %ebx
 4dc:	5d                   	pop    %ebp
 4dd:	c3                   	ret    
 4de:	f3 0f 1e fb          	endbr32 
 4e2:	55                   	push   %ebp
 4e3:	89 e5                	mov    %esp,%ebp
 4e5:	56                   	push   %esi
 4e6:	53                   	push   %ebx
 4e7:	8b 75 08             	mov    0x8(%ebp),%esi
 4ea:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4ed:	8b 45 10             	mov    0x10(%ebp),%eax
 4f0:	89 f2                	mov    %esi,%edx
 4f2:	8d 58 ff             	lea    -0x1(%eax),%ebx
 4f5:	85 c0                	test   %eax,%eax
 4f7:	7e 0f                	jle    0x508
 4f9:	0f b6 01             	movzbl (%ecx),%eax
 4fc:	88 02                	mov    %al,(%edx)
 4fe:	8d 49 01             	lea    0x1(%ecx),%ecx
 501:	8d 52 01             	lea    0x1(%edx),%edx
 504:	89 d8                	mov    %ebx,%eax
 506:	eb ea                	jmp    0x4f2
 508:	89 f0                	mov    %esi,%eax
 50a:	5b                   	pop    %ebx
 50b:	5e                   	pop    %esi
 50c:	5d                   	pop    %ebp
 50d:	c3                   	ret    
 50e:	b8 01 00 00 00       	mov    $0x1,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    
 516:	b8 02 00 00 00       	mov    $0x2,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    
 51e:	b8 03 00 00 00       	mov    $0x3,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    
 526:	b8 04 00 00 00       	mov    $0x4,%eax
 52b:	cd 40                	int    $0x40
 52d:	c3                   	ret    
 52e:	b8 05 00 00 00       	mov    $0x5,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    
 536:	b8 10 00 00 00       	mov    $0x10,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    
 53e:	b8 15 00 00 00       	mov    $0x15,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    
 546:	b8 06 00 00 00       	mov    $0x6,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    
 54e:	b8 07 00 00 00       	mov    $0x7,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    
 556:	b8 0f 00 00 00       	mov    $0xf,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    
 55e:	b8 11 00 00 00       	mov    $0x11,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    
 566:	b8 12 00 00 00       	mov    $0x12,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    
 56e:	b8 08 00 00 00       	mov    $0x8,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    
 576:	b8 13 00 00 00       	mov    $0x13,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    
 57e:	b8 14 00 00 00       	mov    $0x14,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    
 586:	b8 09 00 00 00       	mov    $0x9,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    
 58e:	b8 0a 00 00 00       	mov    $0xa,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    
 596:	b8 0b 00 00 00       	mov    $0xb,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    
 59e:	b8 0c 00 00 00       	mov    $0xc,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    
 5a6:	b8 0d 00 00 00       	mov    $0xd,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    
 5ae:	b8 0e 00 00 00       	mov    $0xe,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    
 5b6:	b8 16 00 00 00       	mov    $0x16,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    
 5be:	b8 17 00 00 00       	mov    $0x17,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    
 5c6:	55                   	push   %ebp
 5c7:	89 e5                	mov    %esp,%ebp
 5c9:	83 ec 1c             	sub    $0x1c,%esp
 5cc:	88 55 f4             	mov    %dl,-0xc(%ebp)
 5cf:	6a 01                	push   $0x1
 5d1:	8d 55 f4             	lea    -0xc(%ebp),%edx
 5d4:	52                   	push   %edx
 5d5:	50                   	push   %eax
 5d6:	e8 5b ff ff ff       	call   0x536
 5db:	83 c4 10             	add    $0x10,%esp
 5de:	c9                   	leave  
 5df:	c3                   	ret    
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	56                   	push   %esi
 5e5:	53                   	push   %ebx
 5e6:	83 ec 2c             	sub    $0x2c,%esp
 5e9:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5ec:	89 d6                	mov    %edx,%esi
 5ee:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 5f2:	0f 95 c2             	setne  %dl
 5f5:	89 f0                	mov    %esi,%eax
 5f7:	c1 e8 1f             	shr    $0x1f,%eax
 5fa:	84 c2                	test   %al,%dl
 5fc:	74 42                	je     0x640
 5fe:	f7 de                	neg    %esi
 600:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 607:	bb 00 00 00 00       	mov    $0x0,%ebx
 60c:	89 f0                	mov    %esi,%eax
 60e:	ba 00 00 00 00       	mov    $0x0,%edx
 613:	f7 f1                	div    %ecx
 615:	89 df                	mov    %ebx,%edi
 617:	83 c3 01             	add    $0x1,%ebx
 61a:	0f b6 92 f0 0b 00 00 	movzbl 0xbf0(%edx),%edx
 621:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 625:	89 f2                	mov    %esi,%edx
 627:	89 c6                	mov    %eax,%esi
 629:	39 d1                	cmp    %edx,%ecx
 62b:	76 df                	jbe    0x60c
 62d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 631:	74 2f                	je     0x662
 633:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 638:	8d 5f 02             	lea    0x2(%edi),%ebx
 63b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 63e:	eb 15                	jmp    0x655
 640:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 647:	eb be                	jmp    0x607
 649:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 64e:	89 f0                	mov    %esi,%eax
 650:	e8 71 ff ff ff       	call   0x5c6
 655:	83 eb 01             	sub    $0x1,%ebx
 658:	79 ef                	jns    0x649
 65a:	83 c4 2c             	add    $0x2c,%esp
 65d:	5b                   	pop    %ebx
 65e:	5e                   	pop    %esi
 65f:	5f                   	pop    %edi
 660:	5d                   	pop    %ebp
 661:	c3                   	ret    
 662:	8b 75 d0             	mov    -0x30(%ebp),%esi
 665:	eb ee                	jmp    0x655
 667:	f3 0f 1e fb          	endbr32 
 66b:	55                   	push   %ebp
 66c:	89 e5                	mov    %esp,%ebp
 66e:	57                   	push   %edi
 66f:	56                   	push   %esi
 670:	53                   	push   %ebx
 671:	83 ec 1c             	sub    $0x1c,%esp
 674:	8d 45 10             	lea    0x10(%ebp),%eax
 677:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 67a:	be 00 00 00 00       	mov    $0x0,%esi
 67f:	bb 00 00 00 00       	mov    $0x0,%ebx
 684:	eb 14                	jmp    0x69a
 686:	89 fa                	mov    %edi,%edx
 688:	8b 45 08             	mov    0x8(%ebp),%eax
 68b:	e8 36 ff ff ff       	call   0x5c6
 690:	eb 05                	jmp    0x697
 692:	83 fe 25             	cmp    $0x25,%esi
 695:	74 25                	je     0x6bc
 697:	83 c3 01             	add    $0x1,%ebx
 69a:	8b 45 0c             	mov    0xc(%ebp),%eax
 69d:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 6a1:	84 c0                	test   %al,%al
 6a3:	0f 84 23 01 00 00    	je     0x7cc
 6a9:	0f be f8             	movsbl %al,%edi
 6ac:	0f b6 c0             	movzbl %al,%eax
 6af:	85 f6                	test   %esi,%esi
 6b1:	75 df                	jne    0x692
 6b3:	83 f8 25             	cmp    $0x25,%eax
 6b6:	75 ce                	jne    0x686
 6b8:	89 c6                	mov    %eax,%esi
 6ba:	eb db                	jmp    0x697
 6bc:	83 f8 64             	cmp    $0x64,%eax
 6bf:	74 49                	je     0x70a
 6c1:	83 f8 78             	cmp    $0x78,%eax
 6c4:	0f 94 c1             	sete   %cl
 6c7:	83 f8 70             	cmp    $0x70,%eax
 6ca:	0f 94 c2             	sete   %dl
 6cd:	08 d1                	or     %dl,%cl
 6cf:	75 63                	jne    0x734
 6d1:	83 f8 73             	cmp    $0x73,%eax
 6d4:	0f 84 84 00 00 00    	je     0x75e
 6da:	83 f8 63             	cmp    $0x63,%eax
 6dd:	0f 84 b7 00 00 00    	je     0x79a
 6e3:	83 f8 25             	cmp    $0x25,%eax
 6e6:	0f 84 cc 00 00 00    	je     0x7b8
 6ec:	ba 25 00 00 00       	mov    $0x25,%edx
 6f1:	8b 45 08             	mov    0x8(%ebp),%eax
 6f4:	e8 cd fe ff ff       	call   0x5c6
 6f9:	89 fa                	mov    %edi,%edx
 6fb:	8b 45 08             	mov    0x8(%ebp),%eax
 6fe:	e8 c3 fe ff ff       	call   0x5c6
 703:	be 00 00 00 00       	mov    $0x0,%esi
 708:	eb 8d                	jmp    0x697
 70a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 70d:	8b 17                	mov    (%edi),%edx
 70f:	83 ec 0c             	sub    $0xc,%esp
 712:	6a 01                	push   $0x1
 714:	b9 0a 00 00 00       	mov    $0xa,%ecx
 719:	8b 45 08             	mov    0x8(%ebp),%eax
 71c:	e8 bf fe ff ff       	call   0x5e0
 721:	83 c7 04             	add    $0x4,%edi
 724:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 727:	83 c4 10             	add    $0x10,%esp
 72a:	be 00 00 00 00       	mov    $0x0,%esi
 72f:	e9 63 ff ff ff       	jmp    0x697
 734:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 737:	8b 17                	mov    (%edi),%edx
 739:	83 ec 0c             	sub    $0xc,%esp
 73c:	6a 00                	push   $0x0
 73e:	b9 10 00 00 00       	mov    $0x10,%ecx
 743:	8b 45 08             	mov    0x8(%ebp),%eax
 746:	e8 95 fe ff ff       	call   0x5e0
 74b:	83 c7 04             	add    $0x4,%edi
 74e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 751:	83 c4 10             	add    $0x10,%esp
 754:	be 00 00 00 00       	mov    $0x0,%esi
 759:	e9 39 ff ff ff       	jmp    0x697
 75e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 761:	8b 30                	mov    (%eax),%esi
 763:	83 c0 04             	add    $0x4,%eax
 766:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 769:	85 f6                	test   %esi,%esi
 76b:	75 28                	jne    0x795
 76d:	be e8 0b 00 00       	mov    $0xbe8,%esi
 772:	8b 7d 08             	mov    0x8(%ebp),%edi
 775:	eb 0d                	jmp    0x784
 777:	0f be d2             	movsbl %dl,%edx
 77a:	89 f8                	mov    %edi,%eax
 77c:	e8 45 fe ff ff       	call   0x5c6
 781:	83 c6 01             	add    $0x1,%esi
 784:	0f b6 16             	movzbl (%esi),%edx
 787:	84 d2                	test   %dl,%dl
 789:	75 ec                	jne    0x777
 78b:	be 00 00 00 00       	mov    $0x0,%esi
 790:	e9 02 ff ff ff       	jmp    0x697
 795:	8b 7d 08             	mov    0x8(%ebp),%edi
 798:	eb ea                	jmp    0x784
 79a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 79d:	0f be 17             	movsbl (%edi),%edx
 7a0:	8b 45 08             	mov    0x8(%ebp),%eax
 7a3:	e8 1e fe ff ff       	call   0x5c6
 7a8:	83 c7 04             	add    $0x4,%edi
 7ab:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 7ae:	be 00 00 00 00       	mov    $0x0,%esi
 7b3:	e9 df fe ff ff       	jmp    0x697
 7b8:	89 fa                	mov    %edi,%edx
 7ba:	8b 45 08             	mov    0x8(%ebp),%eax
 7bd:	e8 04 fe ff ff       	call   0x5c6
 7c2:	be 00 00 00 00       	mov    $0x0,%esi
 7c7:	e9 cb fe ff ff       	jmp    0x697
 7cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7cf:	5b                   	pop    %ebx
 7d0:	5e                   	pop    %esi
 7d1:	5f                   	pop    %edi
 7d2:	5d                   	pop    %ebp
 7d3:	c3                   	ret    
 7d4:	f3 0f 1e fb          	endbr32 
 7d8:	55                   	push   %ebp
 7d9:	89 e5                	mov    %esp,%ebp
 7db:	57                   	push   %edi
 7dc:	56                   	push   %esi
 7dd:	53                   	push   %ebx
 7de:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7e1:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 7e4:	a1 94 0e 00 00       	mov    0xe94,%eax
 7e9:	eb 02                	jmp    0x7ed
 7eb:	89 d0                	mov    %edx,%eax
 7ed:	39 c8                	cmp    %ecx,%eax
 7ef:	73 04                	jae    0x7f5
 7f1:	39 08                	cmp    %ecx,(%eax)
 7f3:	77 12                	ja     0x807
 7f5:	8b 10                	mov    (%eax),%edx
 7f7:	39 c2                	cmp    %eax,%edx
 7f9:	77 f0                	ja     0x7eb
 7fb:	39 c8                	cmp    %ecx,%eax
 7fd:	72 08                	jb     0x807
 7ff:	39 ca                	cmp    %ecx,%edx
 801:	77 04                	ja     0x807
 803:	89 d0                	mov    %edx,%eax
 805:	eb e6                	jmp    0x7ed
 807:	8b 73 fc             	mov    -0x4(%ebx),%esi
 80a:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 80d:	8b 10                	mov    (%eax),%edx
 80f:	39 d7                	cmp    %edx,%edi
 811:	74 19                	je     0x82c
 813:	89 53 f8             	mov    %edx,-0x8(%ebx)
 816:	8b 50 04             	mov    0x4(%eax),%edx
 819:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 81c:	39 ce                	cmp    %ecx,%esi
 81e:	74 1b                	je     0x83b
 820:	89 08                	mov    %ecx,(%eax)
 822:	a3 94 0e 00 00       	mov    %eax,0xe94
 827:	5b                   	pop    %ebx
 828:	5e                   	pop    %esi
 829:	5f                   	pop    %edi
 82a:	5d                   	pop    %ebp
 82b:	c3                   	ret    
 82c:	03 72 04             	add    0x4(%edx),%esi
 82f:	89 73 fc             	mov    %esi,-0x4(%ebx)
 832:	8b 10                	mov    (%eax),%edx
 834:	8b 12                	mov    (%edx),%edx
 836:	89 53 f8             	mov    %edx,-0x8(%ebx)
 839:	eb db                	jmp    0x816
 83b:	03 53 fc             	add    -0x4(%ebx),%edx
 83e:	89 50 04             	mov    %edx,0x4(%eax)
 841:	8b 53 f8             	mov    -0x8(%ebx),%edx
 844:	89 10                	mov    %edx,(%eax)
 846:	eb da                	jmp    0x822
 848:	55                   	push   %ebp
 849:	89 e5                	mov    %esp,%ebp
 84b:	53                   	push   %ebx
 84c:	83 ec 04             	sub    $0x4,%esp
 84f:	89 c3                	mov    %eax,%ebx
 851:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 856:	77 05                	ja     0x85d
 858:	bb 00 10 00 00       	mov    $0x1000,%ebx
 85d:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 864:	83 ec 0c             	sub    $0xc,%esp
 867:	50                   	push   %eax
 868:	e8 31 fd ff ff       	call   0x59e
 86d:	83 c4 10             	add    $0x10,%esp
 870:	83 f8 ff             	cmp    $0xffffffff,%eax
 873:	74 1c                	je     0x891
 875:	89 58 04             	mov    %ebx,0x4(%eax)
 878:	83 c0 08             	add    $0x8,%eax
 87b:	83 ec 0c             	sub    $0xc,%esp
 87e:	50                   	push   %eax
 87f:	e8 50 ff ff ff       	call   0x7d4
 884:	a1 94 0e 00 00       	mov    0xe94,%eax
 889:	83 c4 10             	add    $0x10,%esp
 88c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 88f:	c9                   	leave  
 890:	c3                   	ret    
 891:	b8 00 00 00 00       	mov    $0x0,%eax
 896:	eb f4                	jmp    0x88c
 898:	f3 0f 1e fb          	endbr32 
 89c:	55                   	push   %ebp
 89d:	89 e5                	mov    %esp,%ebp
 89f:	53                   	push   %ebx
 8a0:	83 ec 04             	sub    $0x4,%esp
 8a3:	8b 45 08             	mov    0x8(%ebp),%eax
 8a6:	8d 58 07             	lea    0x7(%eax),%ebx
 8a9:	c1 eb 03             	shr    $0x3,%ebx
 8ac:	83 c3 01             	add    $0x1,%ebx
 8af:	8b 0d 94 0e 00 00    	mov    0xe94,%ecx
 8b5:	85 c9                	test   %ecx,%ecx
 8b7:	74 04                	je     0x8bd
 8b9:	8b 01                	mov    (%ecx),%eax
 8bb:	eb 4b                	jmp    0x908
 8bd:	c7 05 94 0e 00 00 98 	movl   $0xe98,0xe94
 8c4:	0e 00 00 
 8c7:	c7 05 98 0e 00 00 98 	movl   $0xe98,0xe98
 8ce:	0e 00 00 
 8d1:	c7 05 9c 0e 00 00 00 	movl   $0x0,0xe9c
 8d8:	00 00 00 
 8db:	b9 98 0e 00 00       	mov    $0xe98,%ecx
 8e0:	eb d7                	jmp    0x8b9
 8e2:	74 1a                	je     0x8fe
 8e4:	29 da                	sub    %ebx,%edx
 8e6:	89 50 04             	mov    %edx,0x4(%eax)
 8e9:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 8ec:	89 58 04             	mov    %ebx,0x4(%eax)
 8ef:	89 0d 94 0e 00 00    	mov    %ecx,0xe94
 8f5:	83 c0 08             	add    $0x8,%eax
 8f8:	83 c4 04             	add    $0x4,%esp
 8fb:	5b                   	pop    %ebx
 8fc:	5d                   	pop    %ebp
 8fd:	c3                   	ret    
 8fe:	8b 10                	mov    (%eax),%edx
 900:	89 11                	mov    %edx,(%ecx)
 902:	eb eb                	jmp    0x8ef
 904:	89 c1                	mov    %eax,%ecx
 906:	8b 00                	mov    (%eax),%eax
 908:	8b 50 04             	mov    0x4(%eax),%edx
 90b:	39 da                	cmp    %ebx,%edx
 90d:	73 d3                	jae    0x8e2
 90f:	39 05 94 0e 00 00    	cmp    %eax,0xe94
 915:	75 ed                	jne    0x904
 917:	89 d8                	mov    %ebx,%eax
 919:	e8 2a ff ff ff       	call   0x848
 91e:	85 c0                	test   %eax,%eax
 920:	75 e2                	jne    0x904
 922:	eb d4                	jmp    0x8f8
