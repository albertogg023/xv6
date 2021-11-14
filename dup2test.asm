
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
  1a:	e8 98 05 00 00       	call   0x5b7
  1f:	83 c4 10             	add    $0x10,%esp
  22:	85 c0                	test   %eax,%eax
  24:	0f 89 e6 01 00 00    	jns    0x210
  2a:	83 ec 08             	sub    $0x8,%esp
  2d:	6a ff                	push   $0xffffffff
  2f:	6a 01                	push   $0x1
  31:	e8 81 05 00 00       	call   0x5b7
  36:	83 c4 10             	add    $0x10,%esp
  39:	85 c0                	test   %eax,%eax
  3b:	0f 89 e6 01 00 00    	jns    0x227
  41:	83 ec 08             	sub    $0x8,%esp
  44:	6a 08                	push   $0x8
  46:	6a 06                	push   $0x6
  48:	e8 6a 05 00 00       	call   0x5b7
  4d:	83 c4 10             	add    $0x10,%esp
  50:	85 c0                	test   %eax,%eax
  52:	0f 89 e6 01 00 00    	jns    0x23e
  58:	83 ec 08             	sub    $0x8,%esp
  5b:	6a 01                	push   $0x1
  5d:	6a 08                	push   $0x8
  5f:	e8 53 05 00 00       	call   0x5b7
  64:	83 c4 10             	add    $0x10,%esp
  67:	85 c0                	test   %eax,%eax
  69:	0f 89 e6 01 00 00    	jns    0x255
  6f:	83 ec 08             	sub    $0x8,%esp
  72:	6a 19                	push   $0x19
  74:	6a 01                	push   $0x1
  76:	e8 3c 05 00 00       	call   0x5b7
  7b:	83 c4 10             	add    $0x10,%esp
  7e:	85 c0                	test   %eax,%eax
  80:	0f 89 e6 01 00 00    	jns    0x26c
  86:	83 ec 08             	sub    $0x8,%esp
  89:	6a 04                	push   $0x4
  8b:	6a 01                	push   $0x1
  8d:	e8 25 05 00 00       	call   0x5b7
  92:	83 c4 10             	add    $0x10,%esp
  95:	83 f8 04             	cmp    $0x4,%eax
  98:	0f 85 e5 01 00 00    	jne    0x283
  9e:	83 ec 08             	sub    $0x8,%esp
  a1:	68 18 0a 00 00       	push   $0xa18
  a6:	6a 04                	push   $0x4
  a8:	e8 b3 05 00 00       	call   0x660
  ad:	83 c4 08             	add    $0x8,%esp
  b0:	6a 06                	push   $0x6
  b2:	6a 04                	push   $0x4
  b4:	e8 fe 04 00 00       	call   0x5b7
  b9:	83 c4 10             	add    $0x10,%esp
  bc:	83 f8 06             	cmp    $0x6,%eax
  bf:	0f 85 d5 01 00 00    	jne    0x29a
  c5:	83 ec 08             	sub    $0x8,%esp
  c8:	68 68 0a 00 00       	push   $0xa68
  cd:	6a 06                	push   $0x6
  cf:	e8 8c 05 00 00       	call   0x660
  d4:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  db:	e8 57 04 00 00       	call   0x537
  e0:	83 c4 10             	add    $0x10,%esp
  e3:	85 c0                	test   %eax,%eax
  e5:	0f 85 c6 01 00 00    	jne    0x2b1
  eb:	83 ec 08             	sub    $0x8,%esp
  ee:	68 94 0a 00 00       	push   $0xa94
  f3:	6a 06                	push   $0x6
  f5:	e8 66 05 00 00       	call   0x660
  fa:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 101:	e8 31 04 00 00       	call   0x537
 106:	83 c4 10             	add    $0x10,%esp
 109:	85 c0                	test   %eax,%eax
 10b:	0f 85 b7 01 00 00    	jne    0x2c8
 111:	83 ec 0c             	sub    $0xc,%esp
 114:	6a 06                	push   $0x6
 116:	e8 1c 04 00 00       	call   0x537
 11b:	83 c4 10             	add    $0x10,%esp
 11e:	85 c0                	test   %eax,%eax
 120:	0f 84 b9 01 00 00    	je     0x2df
 126:	83 ec 08             	sub    $0x8,%esp
 129:	68 02 02 00 00       	push   $0x202
 12e:	68 74 0b 00 00       	push   $0xb74
 133:	e8 17 04 00 00       	call   0x54f
 138:	89 c3                	mov    %eax,%ebx
 13a:	83 c4 08             	add    $0x8,%esp
 13d:	68 87 0b 00 00       	push   $0xb87
 142:	50                   	push   %eax
 143:	e8 18 05 00 00       	call   0x660
 148:	83 c4 08             	add    $0x8,%esp
 14b:	6a 09                	push   $0x9
 14d:	53                   	push   %ebx
 14e:	e8 64 04 00 00       	call   0x5b7
 153:	83 c4 10             	add    $0x10,%esp
 156:	83 f8 09             	cmp    $0x9,%eax
 159:	0f 85 97 01 00 00    	jne    0x2f6
 15f:	83 ec 08             	sub    $0x8,%esp
 162:	68 99 0b 00 00       	push   $0xb99
 167:	6a 09                	push   $0x9
 169:	e8 f2 04 00 00       	call   0x660
 16e:	83 c4 08             	add    $0x8,%esp
 171:	6a 09                	push   $0x9
 173:	6a 09                	push   $0x9
 175:	e8 3d 04 00 00       	call   0x5b7
 17a:	83 c4 10             	add    $0x10,%esp
 17d:	83 f8 09             	cmp    $0x9,%eax
 180:	0f 85 87 01 00 00    	jne    0x30d
 186:	83 ec 08             	sub    $0x8,%esp
 189:	68 99 0b 00 00       	push   $0xb99
 18e:	6a 09                	push   $0x9
 190:	e8 cb 04 00 00       	call   0x660
 195:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
 19c:	e8 96 03 00 00       	call   0x537
 1a1:	83 c4 08             	add    $0x8,%esp
 1a4:	6a 06                	push   $0x6
 1a6:	6a 01                	push   $0x1
 1a8:	e8 0a 04 00 00       	call   0x5b7
 1ad:	83 c4 08             	add    $0x8,%esp
 1b0:	6a 01                	push   $0x1
 1b2:	53                   	push   %ebx
 1b3:	e8 ff 03 00 00       	call   0x5b7
 1b8:	83 c4 10             	add    $0x10,%esp
 1bb:	83 f8 01             	cmp    $0x1,%eax
 1be:	0f 85 60 01 00 00    	jne    0x324
 1c4:	83 ec 08             	sub    $0x8,%esp
 1c7:	68 b5 0b 00 00       	push   $0xbb5
 1cc:	6a 01                	push   $0x1
 1ce:	e8 8d 04 00 00       	call   0x660
 1d3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1da:	e8 58 03 00 00       	call   0x537
 1df:	83 c4 10             	add    $0x10,%esp
 1e2:	85 c0                	test   %eax,%eax
 1e4:	0f 85 51 01 00 00    	jne    0x33b
 1ea:	83 ec 08             	sub    $0x8,%esp
 1ed:	53                   	push   %ebx
 1ee:	6a 06                	push   $0x6
 1f0:	e8 c2 03 00 00       	call   0x5b7
 1f5:	83 c4 08             	add    $0x8,%esp
 1f8:	68 18 0a 00 00       	push   $0xa18
 1fd:	53                   	push   %ebx
 1fe:	e8 5d 04 00 00       	call   0x660
 203:	89 1c 24             	mov    %ebx,(%esp)
 206:	e8 2c 03 00 00       	call   0x537
 20b:	e8 ff 02 00 00       	call   0x50f
 210:	83 ec 08             	sub    $0x8,%esp
 213:	68 20 09 00 00       	push   $0x920
 218:	6a 02                	push   $0x2
 21a:	e8 41 04 00 00       	call   0x660
 21f:	83 c4 10             	add    $0x10,%esp
 222:	e9 03 fe ff ff       	jmp    0x2a
 227:	83 ec 08             	sub    $0x8,%esp
 22a:	68 48 09 00 00       	push   $0x948
 22f:	6a 02                	push   $0x2
 231:	e8 2a 04 00 00       	call   0x660
 236:	83 c4 10             	add    $0x10,%esp
 239:	e9 03 fe ff ff       	jmp    0x41
 23e:	83 ec 08             	sub    $0x8,%esp
 241:	68 74 09 00 00       	push   $0x974
 246:	6a 02                	push   $0x2
 248:	e8 13 04 00 00       	call   0x660
 24d:	83 c4 10             	add    $0x10,%esp
 250:	e9 03 fe ff ff       	jmp    0x58
 255:	83 ec 08             	sub    $0x8,%esp
 258:	68 9c 09 00 00       	push   $0x99c
 25d:	6a 02                	push   $0x2
 25f:	e8 fc 03 00 00       	call   0x660
 264:	83 c4 10             	add    $0x10,%esp
 267:	e9 03 fe ff ff       	jmp    0x6f
 26c:	83 ec 08             	sub    $0x8,%esp
 26f:	68 c8 09 00 00       	push   $0x9c8
 274:	6a 02                	push   $0x2
 276:	e8 e5 03 00 00       	call   0x660
 27b:	83 c4 10             	add    $0x10,%esp
 27e:	e9 03 fe ff ff       	jmp    0x86
 283:	83 ec 08             	sub    $0x8,%esp
 286:	68 f4 09 00 00       	push   $0x9f4
 28b:	6a 02                	push   $0x2
 28d:	e8 ce 03 00 00       	call   0x660
 292:	83 c4 10             	add    $0x10,%esp
 295:	e9 04 fe ff ff       	jmp    0x9e
 29a:	83 ec 08             	sub    $0x8,%esp
 29d:	68 40 0a 00 00       	push   $0xa40
 2a2:	6a 02                	push   $0x2
 2a4:	e8 b7 03 00 00       	call   0x660
 2a9:	83 c4 10             	add    $0x10,%esp
 2ac:	e9 14 fe ff ff       	jmp    0xc5
 2b1:	83 ec 08             	sub    $0x8,%esp
 2b4:	68 34 0b 00 00       	push   $0xb34
 2b9:	6a 02                	push   $0x2
 2bb:	e8 a0 03 00 00       	call   0x660
 2c0:	83 c4 10             	add    $0x10,%esp
 2c3:	e9 23 fe ff ff       	jmp    0xeb
 2c8:	83 ec 08             	sub    $0x8,%esp
 2cb:	68 48 0b 00 00       	push   $0xb48
 2d0:	6a 02                	push   $0x2
 2d2:	e8 89 03 00 00       	call   0x660
 2d7:	83 c4 10             	add    $0x10,%esp
 2da:	e9 32 fe ff ff       	jmp    0x111
 2df:	83 ec 08             	sub    $0x8,%esp
 2e2:	68 5c 0b 00 00       	push   $0xb5c
 2e7:	6a 02                	push   $0x2
 2e9:	e8 72 03 00 00       	call   0x660
 2ee:	83 c4 10             	add    $0x10,%esp
 2f1:	e9 30 fe ff ff       	jmp    0x126
 2f6:	83 ec 08             	sub    $0x8,%esp
 2f9:	68 c0 0a 00 00       	push   $0xac0
 2fe:	6a 02                	push   $0x2
 300:	e8 5b 03 00 00       	call   0x660
 305:	83 c4 10             	add    $0x10,%esp
 308:	e9 52 fe ff ff       	jmp    0x15f
 30d:	83 ec 08             	sub    $0x8,%esp
 310:	68 e8 0a 00 00       	push   $0xae8
 315:	6a 02                	push   $0x2
 317:	e8 44 03 00 00       	call   0x660
 31c:	83 c4 10             	add    $0x10,%esp
 31f:	e9 62 fe ff ff       	jmp    0x186
 324:	83 ec 08             	sub    $0x8,%esp
 327:	68 0c 0b 00 00       	push   $0xb0c
 32c:	6a 02                	push   $0x2
 32e:	e8 2d 03 00 00       	call   0x660
 333:	83 c4 10             	add    $0x10,%esp
 336:	e9 89 fe ff ff       	jmp    0x1c4
 33b:	83 ec 08             	sub    $0x8,%esp
 33e:	68 cf 0b 00 00       	push   $0xbcf
 343:	6a 02                	push   $0x2
 345:	e8 16 03 00 00       	call   0x660
 34a:	83 c4 10             	add    $0x10,%esp
 34d:	e9 98 fe ff ff       	jmp    0x1ea
 352:	f3 0f 1e fb          	endbr32 
 356:	55                   	push   %ebp
 357:	89 e5                	mov    %esp,%ebp
 359:	56                   	push   %esi
 35a:	53                   	push   %ebx
 35b:	8b 75 08             	mov    0x8(%ebp),%esi
 35e:	8b 55 0c             	mov    0xc(%ebp),%edx
 361:	89 f0                	mov    %esi,%eax
 363:	89 d1                	mov    %edx,%ecx
 365:	83 c2 01             	add    $0x1,%edx
 368:	89 c3                	mov    %eax,%ebx
 36a:	83 c0 01             	add    $0x1,%eax
 36d:	0f b6 09             	movzbl (%ecx),%ecx
 370:	88 0b                	mov    %cl,(%ebx)
 372:	84 c9                	test   %cl,%cl
 374:	75 ed                	jne    0x363
 376:	89 f0                	mov    %esi,%eax
 378:	5b                   	pop    %ebx
 379:	5e                   	pop    %esi
 37a:	5d                   	pop    %ebp
 37b:	c3                   	ret    
 37c:	f3 0f 1e fb          	endbr32 
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	8b 4d 08             	mov    0x8(%ebp),%ecx
 386:	8b 55 0c             	mov    0xc(%ebp),%edx
 389:	0f b6 01             	movzbl (%ecx),%eax
 38c:	84 c0                	test   %al,%al
 38e:	74 0c                	je     0x39c
 390:	3a 02                	cmp    (%edx),%al
 392:	75 08                	jne    0x39c
 394:	83 c1 01             	add    $0x1,%ecx
 397:	83 c2 01             	add    $0x1,%edx
 39a:	eb ed                	jmp    0x389
 39c:	0f b6 c0             	movzbl %al,%eax
 39f:	0f b6 12             	movzbl (%edx),%edx
 3a2:	29 d0                	sub    %edx,%eax
 3a4:	5d                   	pop    %ebp
 3a5:	c3                   	ret    
 3a6:	f3 0f 1e fb          	endbr32 
 3aa:	55                   	push   %ebp
 3ab:	89 e5                	mov    %esp,%ebp
 3ad:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3b0:	b8 00 00 00 00       	mov    $0x0,%eax
 3b5:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 3b9:	74 05                	je     0x3c0
 3bb:	83 c0 01             	add    $0x1,%eax
 3be:	eb f5                	jmp    0x3b5
 3c0:	5d                   	pop    %ebp
 3c1:	c3                   	ret    
 3c2:	f3 0f 1e fb          	endbr32 
 3c6:	55                   	push   %ebp
 3c7:	89 e5                	mov    %esp,%ebp
 3c9:	57                   	push   %edi
 3ca:	8b 55 08             	mov    0x8(%ebp),%edx
 3cd:	89 d7                	mov    %edx,%edi
 3cf:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3d2:	8b 45 0c             	mov    0xc(%ebp),%eax
 3d5:	fc                   	cld    
 3d6:	f3 aa                	rep stos %al,%es:(%edi)
 3d8:	89 d0                	mov    %edx,%eax
 3da:	5f                   	pop    %edi
 3db:	5d                   	pop    %ebp
 3dc:	c3                   	ret    
 3dd:	f3 0f 1e fb          	endbr32 
 3e1:	55                   	push   %ebp
 3e2:	89 e5                	mov    %esp,%ebp
 3e4:	8b 45 08             	mov    0x8(%ebp),%eax
 3e7:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 3eb:	0f b6 10             	movzbl (%eax),%edx
 3ee:	84 d2                	test   %dl,%dl
 3f0:	74 09                	je     0x3fb
 3f2:	38 ca                	cmp    %cl,%dl
 3f4:	74 0a                	je     0x400
 3f6:	83 c0 01             	add    $0x1,%eax
 3f9:	eb f0                	jmp    0x3eb
 3fb:	b8 00 00 00 00       	mov    $0x0,%eax
 400:	5d                   	pop    %ebp
 401:	c3                   	ret    
 402:	f3 0f 1e fb          	endbr32 
 406:	55                   	push   %ebp
 407:	89 e5                	mov    %esp,%ebp
 409:	57                   	push   %edi
 40a:	56                   	push   %esi
 40b:	53                   	push   %ebx
 40c:	83 ec 1c             	sub    $0x1c,%esp
 40f:	8b 7d 08             	mov    0x8(%ebp),%edi
 412:	bb 00 00 00 00       	mov    $0x0,%ebx
 417:	89 de                	mov    %ebx,%esi
 419:	83 c3 01             	add    $0x1,%ebx
 41c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 41f:	7d 2e                	jge    0x44f
 421:	83 ec 04             	sub    $0x4,%esp
 424:	6a 01                	push   $0x1
 426:	8d 45 e7             	lea    -0x19(%ebp),%eax
 429:	50                   	push   %eax
 42a:	6a 00                	push   $0x0
 42c:	e8 f6 00 00 00       	call   0x527
 431:	83 c4 10             	add    $0x10,%esp
 434:	85 c0                	test   %eax,%eax
 436:	7e 17                	jle    0x44f
 438:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 43c:	88 04 37             	mov    %al,(%edi,%esi,1)
 43f:	3c 0a                	cmp    $0xa,%al
 441:	0f 94 c2             	sete   %dl
 444:	3c 0d                	cmp    $0xd,%al
 446:	0f 94 c0             	sete   %al
 449:	08 c2                	or     %al,%dl
 44b:	74 ca                	je     0x417
 44d:	89 de                	mov    %ebx,%esi
 44f:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 453:	89 f8                	mov    %edi,%eax
 455:	8d 65 f4             	lea    -0xc(%ebp),%esp
 458:	5b                   	pop    %ebx
 459:	5e                   	pop    %esi
 45a:	5f                   	pop    %edi
 45b:	5d                   	pop    %ebp
 45c:	c3                   	ret    
 45d:	f3 0f 1e fb          	endbr32 
 461:	55                   	push   %ebp
 462:	89 e5                	mov    %esp,%ebp
 464:	56                   	push   %esi
 465:	53                   	push   %ebx
 466:	83 ec 08             	sub    $0x8,%esp
 469:	6a 00                	push   $0x0
 46b:	ff 75 08             	pushl  0x8(%ebp)
 46e:	e8 dc 00 00 00       	call   0x54f
 473:	83 c4 10             	add    $0x10,%esp
 476:	85 c0                	test   %eax,%eax
 478:	78 24                	js     0x49e
 47a:	89 c3                	mov    %eax,%ebx
 47c:	83 ec 08             	sub    $0x8,%esp
 47f:	ff 75 0c             	pushl  0xc(%ebp)
 482:	50                   	push   %eax
 483:	e8 df 00 00 00       	call   0x567
 488:	89 c6                	mov    %eax,%esi
 48a:	89 1c 24             	mov    %ebx,(%esp)
 48d:	e8 a5 00 00 00       	call   0x537
 492:	83 c4 10             	add    $0x10,%esp
 495:	89 f0                	mov    %esi,%eax
 497:	8d 65 f8             	lea    -0x8(%ebp),%esp
 49a:	5b                   	pop    %ebx
 49b:	5e                   	pop    %esi
 49c:	5d                   	pop    %ebp
 49d:	c3                   	ret    
 49e:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4a3:	eb f0                	jmp    0x495
 4a5:	f3 0f 1e fb          	endbr32 
 4a9:	55                   	push   %ebp
 4aa:	89 e5                	mov    %esp,%ebp
 4ac:	53                   	push   %ebx
 4ad:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4b0:	ba 00 00 00 00       	mov    $0x0,%edx
 4b5:	0f b6 01             	movzbl (%ecx),%eax
 4b8:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4bb:	80 fb 09             	cmp    $0x9,%bl
 4be:	77 12                	ja     0x4d2
 4c0:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 4c3:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 4c6:	83 c1 01             	add    $0x1,%ecx
 4c9:	0f be c0             	movsbl %al,%eax
 4cc:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 4d0:	eb e3                	jmp    0x4b5
 4d2:	89 d0                	mov    %edx,%eax
 4d4:	5b                   	pop    %ebx
 4d5:	5d                   	pop    %ebp
 4d6:	c3                   	ret    
 4d7:	f3 0f 1e fb          	endbr32 
 4db:	55                   	push   %ebp
 4dc:	89 e5                	mov    %esp,%ebp
 4de:	56                   	push   %esi
 4df:	53                   	push   %ebx
 4e0:	8b 75 08             	mov    0x8(%ebp),%esi
 4e3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4e6:	8b 45 10             	mov    0x10(%ebp),%eax
 4e9:	89 f2                	mov    %esi,%edx
 4eb:	8d 58 ff             	lea    -0x1(%eax),%ebx
 4ee:	85 c0                	test   %eax,%eax
 4f0:	7e 0f                	jle    0x501
 4f2:	0f b6 01             	movzbl (%ecx),%eax
 4f5:	88 02                	mov    %al,(%edx)
 4f7:	8d 49 01             	lea    0x1(%ecx),%ecx
 4fa:	8d 52 01             	lea    0x1(%edx),%edx
 4fd:	89 d8                	mov    %ebx,%eax
 4ff:	eb ea                	jmp    0x4eb
 501:	89 f0                	mov    %esi,%eax
 503:	5b                   	pop    %ebx
 504:	5e                   	pop    %esi
 505:	5d                   	pop    %ebp
 506:	c3                   	ret    
 507:	b8 01 00 00 00       	mov    $0x1,%eax
 50c:	cd 40                	int    $0x40
 50e:	c3                   	ret    
 50f:	b8 02 00 00 00       	mov    $0x2,%eax
 514:	cd 40                	int    $0x40
 516:	c3                   	ret    
 517:	b8 03 00 00 00       	mov    $0x3,%eax
 51c:	cd 40                	int    $0x40
 51e:	c3                   	ret    
 51f:	b8 04 00 00 00       	mov    $0x4,%eax
 524:	cd 40                	int    $0x40
 526:	c3                   	ret    
 527:	b8 05 00 00 00       	mov    $0x5,%eax
 52c:	cd 40                	int    $0x40
 52e:	c3                   	ret    
 52f:	b8 10 00 00 00       	mov    $0x10,%eax
 534:	cd 40                	int    $0x40
 536:	c3                   	ret    
 537:	b8 15 00 00 00       	mov    $0x15,%eax
 53c:	cd 40                	int    $0x40
 53e:	c3                   	ret    
 53f:	b8 06 00 00 00       	mov    $0x6,%eax
 544:	cd 40                	int    $0x40
 546:	c3                   	ret    
 547:	b8 07 00 00 00       	mov    $0x7,%eax
 54c:	cd 40                	int    $0x40
 54e:	c3                   	ret    
 54f:	b8 0f 00 00 00       	mov    $0xf,%eax
 554:	cd 40                	int    $0x40
 556:	c3                   	ret    
 557:	b8 11 00 00 00       	mov    $0x11,%eax
 55c:	cd 40                	int    $0x40
 55e:	c3                   	ret    
 55f:	b8 12 00 00 00       	mov    $0x12,%eax
 564:	cd 40                	int    $0x40
 566:	c3                   	ret    
 567:	b8 08 00 00 00       	mov    $0x8,%eax
 56c:	cd 40                	int    $0x40
 56e:	c3                   	ret    
 56f:	b8 13 00 00 00       	mov    $0x13,%eax
 574:	cd 40                	int    $0x40
 576:	c3                   	ret    
 577:	b8 14 00 00 00       	mov    $0x14,%eax
 57c:	cd 40                	int    $0x40
 57e:	c3                   	ret    
 57f:	b8 09 00 00 00       	mov    $0x9,%eax
 584:	cd 40                	int    $0x40
 586:	c3                   	ret    
 587:	b8 0a 00 00 00       	mov    $0xa,%eax
 58c:	cd 40                	int    $0x40
 58e:	c3                   	ret    
 58f:	b8 0b 00 00 00       	mov    $0xb,%eax
 594:	cd 40                	int    $0x40
 596:	c3                   	ret    
 597:	b8 0c 00 00 00       	mov    $0xc,%eax
 59c:	cd 40                	int    $0x40
 59e:	c3                   	ret    
 59f:	b8 0d 00 00 00       	mov    $0xd,%eax
 5a4:	cd 40                	int    $0x40
 5a6:	c3                   	ret    
 5a7:	b8 0e 00 00 00       	mov    $0xe,%eax
 5ac:	cd 40                	int    $0x40
 5ae:	c3                   	ret    
 5af:	b8 16 00 00 00       	mov    $0x16,%eax
 5b4:	cd 40                	int    $0x40
 5b6:	c3                   	ret    
 5b7:	b8 17 00 00 00       	mov    $0x17,%eax
 5bc:	cd 40                	int    $0x40
 5be:	c3                   	ret    
 5bf:	55                   	push   %ebp
 5c0:	89 e5                	mov    %esp,%ebp
 5c2:	83 ec 1c             	sub    $0x1c,%esp
 5c5:	88 55 f4             	mov    %dl,-0xc(%ebp)
 5c8:	6a 01                	push   $0x1
 5ca:	8d 55 f4             	lea    -0xc(%ebp),%edx
 5cd:	52                   	push   %edx
 5ce:	50                   	push   %eax
 5cf:	e8 5b ff ff ff       	call   0x52f
 5d4:	83 c4 10             	add    $0x10,%esp
 5d7:	c9                   	leave  
 5d8:	c3                   	ret    
 5d9:	55                   	push   %ebp
 5da:	89 e5                	mov    %esp,%ebp
 5dc:	57                   	push   %edi
 5dd:	56                   	push   %esi
 5de:	53                   	push   %ebx
 5df:	83 ec 2c             	sub    $0x2c,%esp
 5e2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5e5:	89 d6                	mov    %edx,%esi
 5e7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 5eb:	0f 95 c2             	setne  %dl
 5ee:	89 f0                	mov    %esi,%eax
 5f0:	c1 e8 1f             	shr    $0x1f,%eax
 5f3:	84 c2                	test   %al,%dl
 5f5:	74 42                	je     0x639
 5f7:	f7 de                	neg    %esi
 5f9:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 600:	bb 00 00 00 00       	mov    $0x0,%ebx
 605:	89 f0                	mov    %esi,%eax
 607:	ba 00 00 00 00       	mov    $0x0,%edx
 60c:	f7 f1                	div    %ecx
 60e:	89 df                	mov    %ebx,%edi
 610:	83 c3 01             	add    $0x1,%ebx
 613:	0f b6 92 ec 0b 00 00 	movzbl 0xbec(%edx),%edx
 61a:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 61e:	89 f2                	mov    %esi,%edx
 620:	89 c6                	mov    %eax,%esi
 622:	39 d1                	cmp    %edx,%ecx
 624:	76 df                	jbe    0x605
 626:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 62a:	74 2f                	je     0x65b
 62c:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 631:	8d 5f 02             	lea    0x2(%edi),%ebx
 634:	8b 75 d0             	mov    -0x30(%ebp),%esi
 637:	eb 15                	jmp    0x64e
 639:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 640:	eb be                	jmp    0x600
 642:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 647:	89 f0                	mov    %esi,%eax
 649:	e8 71 ff ff ff       	call   0x5bf
 64e:	83 eb 01             	sub    $0x1,%ebx
 651:	79 ef                	jns    0x642
 653:	83 c4 2c             	add    $0x2c,%esp
 656:	5b                   	pop    %ebx
 657:	5e                   	pop    %esi
 658:	5f                   	pop    %edi
 659:	5d                   	pop    %ebp
 65a:	c3                   	ret    
 65b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 65e:	eb ee                	jmp    0x64e
 660:	f3 0f 1e fb          	endbr32 
 664:	55                   	push   %ebp
 665:	89 e5                	mov    %esp,%ebp
 667:	57                   	push   %edi
 668:	56                   	push   %esi
 669:	53                   	push   %ebx
 66a:	83 ec 1c             	sub    $0x1c,%esp
 66d:	8d 45 10             	lea    0x10(%ebp),%eax
 670:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 673:	be 00 00 00 00       	mov    $0x0,%esi
 678:	bb 00 00 00 00       	mov    $0x0,%ebx
 67d:	eb 14                	jmp    0x693
 67f:	89 fa                	mov    %edi,%edx
 681:	8b 45 08             	mov    0x8(%ebp),%eax
 684:	e8 36 ff ff ff       	call   0x5bf
 689:	eb 05                	jmp    0x690
 68b:	83 fe 25             	cmp    $0x25,%esi
 68e:	74 25                	je     0x6b5
 690:	83 c3 01             	add    $0x1,%ebx
 693:	8b 45 0c             	mov    0xc(%ebp),%eax
 696:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 69a:	84 c0                	test   %al,%al
 69c:	0f 84 23 01 00 00    	je     0x7c5
 6a2:	0f be f8             	movsbl %al,%edi
 6a5:	0f b6 c0             	movzbl %al,%eax
 6a8:	85 f6                	test   %esi,%esi
 6aa:	75 df                	jne    0x68b
 6ac:	83 f8 25             	cmp    $0x25,%eax
 6af:	75 ce                	jne    0x67f
 6b1:	89 c6                	mov    %eax,%esi
 6b3:	eb db                	jmp    0x690
 6b5:	83 f8 64             	cmp    $0x64,%eax
 6b8:	74 49                	je     0x703
 6ba:	83 f8 78             	cmp    $0x78,%eax
 6bd:	0f 94 c1             	sete   %cl
 6c0:	83 f8 70             	cmp    $0x70,%eax
 6c3:	0f 94 c2             	sete   %dl
 6c6:	08 d1                	or     %dl,%cl
 6c8:	75 63                	jne    0x72d
 6ca:	83 f8 73             	cmp    $0x73,%eax
 6cd:	0f 84 84 00 00 00    	je     0x757
 6d3:	83 f8 63             	cmp    $0x63,%eax
 6d6:	0f 84 b7 00 00 00    	je     0x793
 6dc:	83 f8 25             	cmp    $0x25,%eax
 6df:	0f 84 cc 00 00 00    	je     0x7b1
 6e5:	ba 25 00 00 00       	mov    $0x25,%edx
 6ea:	8b 45 08             	mov    0x8(%ebp),%eax
 6ed:	e8 cd fe ff ff       	call   0x5bf
 6f2:	89 fa                	mov    %edi,%edx
 6f4:	8b 45 08             	mov    0x8(%ebp),%eax
 6f7:	e8 c3 fe ff ff       	call   0x5bf
 6fc:	be 00 00 00 00       	mov    $0x0,%esi
 701:	eb 8d                	jmp    0x690
 703:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 706:	8b 17                	mov    (%edi),%edx
 708:	83 ec 0c             	sub    $0xc,%esp
 70b:	6a 01                	push   $0x1
 70d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 712:	8b 45 08             	mov    0x8(%ebp),%eax
 715:	e8 bf fe ff ff       	call   0x5d9
 71a:	83 c7 04             	add    $0x4,%edi
 71d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 720:	83 c4 10             	add    $0x10,%esp
 723:	be 00 00 00 00       	mov    $0x0,%esi
 728:	e9 63 ff ff ff       	jmp    0x690
 72d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 730:	8b 17                	mov    (%edi),%edx
 732:	83 ec 0c             	sub    $0xc,%esp
 735:	6a 00                	push   $0x0
 737:	b9 10 00 00 00       	mov    $0x10,%ecx
 73c:	8b 45 08             	mov    0x8(%ebp),%eax
 73f:	e8 95 fe ff ff       	call   0x5d9
 744:	83 c7 04             	add    $0x4,%edi
 747:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 74a:	83 c4 10             	add    $0x10,%esp
 74d:	be 00 00 00 00       	mov    $0x0,%esi
 752:	e9 39 ff ff ff       	jmp    0x690
 757:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 75a:	8b 30                	mov    (%eax),%esi
 75c:	83 c0 04             	add    $0x4,%eax
 75f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 762:	85 f6                	test   %esi,%esi
 764:	75 28                	jne    0x78e
 766:	be e4 0b 00 00       	mov    $0xbe4,%esi
 76b:	8b 7d 08             	mov    0x8(%ebp),%edi
 76e:	eb 0d                	jmp    0x77d
 770:	0f be d2             	movsbl %dl,%edx
 773:	89 f8                	mov    %edi,%eax
 775:	e8 45 fe ff ff       	call   0x5bf
 77a:	83 c6 01             	add    $0x1,%esi
 77d:	0f b6 16             	movzbl (%esi),%edx
 780:	84 d2                	test   %dl,%dl
 782:	75 ec                	jne    0x770
 784:	be 00 00 00 00       	mov    $0x0,%esi
 789:	e9 02 ff ff ff       	jmp    0x690
 78e:	8b 7d 08             	mov    0x8(%ebp),%edi
 791:	eb ea                	jmp    0x77d
 793:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 796:	0f be 17             	movsbl (%edi),%edx
 799:	8b 45 08             	mov    0x8(%ebp),%eax
 79c:	e8 1e fe ff ff       	call   0x5bf
 7a1:	83 c7 04             	add    $0x4,%edi
 7a4:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 7a7:	be 00 00 00 00       	mov    $0x0,%esi
 7ac:	e9 df fe ff ff       	jmp    0x690
 7b1:	89 fa                	mov    %edi,%edx
 7b3:	8b 45 08             	mov    0x8(%ebp),%eax
 7b6:	e8 04 fe ff ff       	call   0x5bf
 7bb:	be 00 00 00 00       	mov    $0x0,%esi
 7c0:	e9 cb fe ff ff       	jmp    0x690
 7c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7c8:	5b                   	pop    %ebx
 7c9:	5e                   	pop    %esi
 7ca:	5f                   	pop    %edi
 7cb:	5d                   	pop    %ebp
 7cc:	c3                   	ret    
 7cd:	f3 0f 1e fb          	endbr32 
 7d1:	55                   	push   %ebp
 7d2:	89 e5                	mov    %esp,%ebp
 7d4:	57                   	push   %edi
 7d5:	56                   	push   %esi
 7d6:	53                   	push   %ebx
 7d7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7da:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 7dd:	a1 90 0e 00 00       	mov    0xe90,%eax
 7e2:	eb 02                	jmp    0x7e6
 7e4:	89 d0                	mov    %edx,%eax
 7e6:	39 c8                	cmp    %ecx,%eax
 7e8:	73 04                	jae    0x7ee
 7ea:	39 08                	cmp    %ecx,(%eax)
 7ec:	77 12                	ja     0x800
 7ee:	8b 10                	mov    (%eax),%edx
 7f0:	39 c2                	cmp    %eax,%edx
 7f2:	77 f0                	ja     0x7e4
 7f4:	39 c8                	cmp    %ecx,%eax
 7f6:	72 08                	jb     0x800
 7f8:	39 ca                	cmp    %ecx,%edx
 7fa:	77 04                	ja     0x800
 7fc:	89 d0                	mov    %edx,%eax
 7fe:	eb e6                	jmp    0x7e6
 800:	8b 73 fc             	mov    -0x4(%ebx),%esi
 803:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 806:	8b 10                	mov    (%eax),%edx
 808:	39 d7                	cmp    %edx,%edi
 80a:	74 19                	je     0x825
 80c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 80f:	8b 50 04             	mov    0x4(%eax),%edx
 812:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 815:	39 ce                	cmp    %ecx,%esi
 817:	74 1b                	je     0x834
 819:	89 08                	mov    %ecx,(%eax)
 81b:	a3 90 0e 00 00       	mov    %eax,0xe90
 820:	5b                   	pop    %ebx
 821:	5e                   	pop    %esi
 822:	5f                   	pop    %edi
 823:	5d                   	pop    %ebp
 824:	c3                   	ret    
 825:	03 72 04             	add    0x4(%edx),%esi
 828:	89 73 fc             	mov    %esi,-0x4(%ebx)
 82b:	8b 10                	mov    (%eax),%edx
 82d:	8b 12                	mov    (%edx),%edx
 82f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 832:	eb db                	jmp    0x80f
 834:	03 53 fc             	add    -0x4(%ebx),%edx
 837:	89 50 04             	mov    %edx,0x4(%eax)
 83a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 83d:	89 10                	mov    %edx,(%eax)
 83f:	eb da                	jmp    0x81b
 841:	55                   	push   %ebp
 842:	89 e5                	mov    %esp,%ebp
 844:	53                   	push   %ebx
 845:	83 ec 04             	sub    $0x4,%esp
 848:	89 c3                	mov    %eax,%ebx
 84a:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 84f:	77 05                	ja     0x856
 851:	bb 00 10 00 00       	mov    $0x1000,%ebx
 856:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 85d:	83 ec 0c             	sub    $0xc,%esp
 860:	50                   	push   %eax
 861:	e8 31 fd ff ff       	call   0x597
 866:	83 c4 10             	add    $0x10,%esp
 869:	83 f8 ff             	cmp    $0xffffffff,%eax
 86c:	74 1c                	je     0x88a
 86e:	89 58 04             	mov    %ebx,0x4(%eax)
 871:	83 c0 08             	add    $0x8,%eax
 874:	83 ec 0c             	sub    $0xc,%esp
 877:	50                   	push   %eax
 878:	e8 50 ff ff ff       	call   0x7cd
 87d:	a1 90 0e 00 00       	mov    0xe90,%eax
 882:	83 c4 10             	add    $0x10,%esp
 885:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 888:	c9                   	leave  
 889:	c3                   	ret    
 88a:	b8 00 00 00 00       	mov    $0x0,%eax
 88f:	eb f4                	jmp    0x885
 891:	f3 0f 1e fb          	endbr32 
 895:	55                   	push   %ebp
 896:	89 e5                	mov    %esp,%ebp
 898:	53                   	push   %ebx
 899:	83 ec 04             	sub    $0x4,%esp
 89c:	8b 45 08             	mov    0x8(%ebp),%eax
 89f:	8d 58 07             	lea    0x7(%eax),%ebx
 8a2:	c1 eb 03             	shr    $0x3,%ebx
 8a5:	83 c3 01             	add    $0x1,%ebx
 8a8:	8b 0d 90 0e 00 00    	mov    0xe90,%ecx
 8ae:	85 c9                	test   %ecx,%ecx
 8b0:	74 04                	je     0x8b6
 8b2:	8b 01                	mov    (%ecx),%eax
 8b4:	eb 4b                	jmp    0x901
 8b6:	c7 05 90 0e 00 00 94 	movl   $0xe94,0xe90
 8bd:	0e 00 00 
 8c0:	c7 05 94 0e 00 00 94 	movl   $0xe94,0xe94
 8c7:	0e 00 00 
 8ca:	c7 05 98 0e 00 00 00 	movl   $0x0,0xe98
 8d1:	00 00 00 
 8d4:	b9 94 0e 00 00       	mov    $0xe94,%ecx
 8d9:	eb d7                	jmp    0x8b2
 8db:	74 1a                	je     0x8f7
 8dd:	29 da                	sub    %ebx,%edx
 8df:	89 50 04             	mov    %edx,0x4(%eax)
 8e2:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 8e5:	89 58 04             	mov    %ebx,0x4(%eax)
 8e8:	89 0d 90 0e 00 00    	mov    %ecx,0xe90
 8ee:	83 c0 08             	add    $0x8,%eax
 8f1:	83 c4 04             	add    $0x4,%esp
 8f4:	5b                   	pop    %ebx
 8f5:	5d                   	pop    %ebp
 8f6:	c3                   	ret    
 8f7:	8b 10                	mov    (%eax),%edx
 8f9:	89 11                	mov    %edx,(%ecx)
 8fb:	eb eb                	jmp    0x8e8
 8fd:	89 c1                	mov    %eax,%ecx
 8ff:	8b 00                	mov    (%eax),%eax
 901:	8b 50 04             	mov    0x4(%eax),%edx
 904:	39 da                	cmp    %ebx,%edx
 906:	73 d3                	jae    0x8db
 908:	39 05 90 0e 00 00    	cmp    %eax,0xe90
 90e:	75 ed                	jne    0x8fd
 910:	89 d8                	mov    %ebx,%eax
 912:	e8 2a ff ff ff       	call   0x841
 917:	85 c0                	test   %eax,%eax
 919:	75 e2                	jne    0x8fd
 91b:	eb d4                	jmp    0x8f1
