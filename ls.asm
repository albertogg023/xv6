
_ls:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	56                   	push   %esi
   8:	53                   	push   %ebx
   9:	8b 5d 08             	mov    0x8(%ebp),%ebx
   c:	83 ec 0c             	sub    $0xc,%esp
   f:	53                   	push   %ebx
  10:	e8 3b 03 00 00       	call   0x350
  15:	01 d8                	add    %ebx,%eax
  17:	83 c4 10             	add    $0x10,%esp
  1a:	39 d8                	cmp    %ebx,%eax
  1c:	72 0a                	jb     0x28
  1e:	80 38 2f             	cmpb   $0x2f,(%eax)
  21:	74 05                	je     0x28
  23:	83 e8 01             	sub    $0x1,%eax
  26:	eb f2                	jmp    0x1a
  28:	8d 58 01             	lea    0x1(%eax),%ebx
  2b:	83 ec 0c             	sub    $0xc,%esp
  2e:	53                   	push   %ebx
  2f:	e8 1c 03 00 00       	call   0x350
  34:	83 c4 10             	add    $0x10,%esp
  37:	83 f8 0d             	cmp    $0xd,%eax
  3a:	76 09                	jbe    0x45
  3c:	89 d8                	mov    %ebx,%eax
  3e:	8d 65 f8             	lea    -0x8(%ebp),%esp
  41:	5b                   	pop    %ebx
  42:	5e                   	pop    %esi
  43:	5d                   	pop    %ebp
  44:	c3                   	ret    
  45:	83 ec 0c             	sub    $0xc,%esp
  48:	53                   	push   %ebx
  49:	e8 02 03 00 00       	call   0x350
  4e:	83 c4 0c             	add    $0xc,%esp
  51:	50                   	push   %eax
  52:	53                   	push   %ebx
  53:	68 24 0c 00 00       	push   $0xc24
  58:	e8 24 04 00 00       	call   0x481
  5d:	89 1c 24             	mov    %ebx,(%esp)
  60:	e8 eb 02 00 00       	call   0x350
  65:	89 c6                	mov    %eax,%esi
  67:	89 1c 24             	mov    %ebx,(%esp)
  6a:	e8 e1 02 00 00       	call   0x350
  6f:	83 c4 0c             	add    $0xc,%esp
  72:	ba 0e 00 00 00       	mov    $0xe,%edx
  77:	29 f2                	sub    %esi,%edx
  79:	52                   	push   %edx
  7a:	6a 20                	push   $0x20
  7c:	05 24 0c 00 00       	add    $0xc24,%eax
  81:	50                   	push   %eax
  82:	e8 e5 02 00 00       	call   0x36c
  87:	83 c4 10             	add    $0x10,%esp
  8a:	bb 24 0c 00 00       	mov    $0xc24,%ebx
  8f:	eb ab                	jmp    0x3c
  91:	f3 0f 1e fb          	endbr32 
  95:	55                   	push   %ebp
  96:	89 e5                	mov    %esp,%ebp
  98:	57                   	push   %edi
  99:	56                   	push   %esi
  9a:	53                   	push   %ebx
  9b:	81 ec 54 02 00 00    	sub    $0x254,%esp
  a1:	8b 5d 08             	mov    0x8(%ebp),%ebx
  a4:	6a 00                	push   $0x0
  a6:	53                   	push   %ebx
  a7:	e8 4d 04 00 00       	call   0x4f9
  ac:	83 c4 10             	add    $0x10,%esp
  af:	85 c0                	test   %eax,%eax
  b1:	0f 88 8c 00 00 00    	js     0x143
  b7:	89 c7                	mov    %eax,%edi
  b9:	83 ec 08             	sub    $0x8,%esp
  bc:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
  c2:	50                   	push   %eax
  c3:	57                   	push   %edi
  c4:	e8 48 04 00 00       	call   0x511
  c9:	83 c4 10             	add    $0x10,%esp
  cc:	85 c0                	test   %eax,%eax
  ce:	0f 88 84 00 00 00    	js     0x158
  d4:	0f b7 85 c4 fd ff ff 	movzwl -0x23c(%ebp),%eax
  db:	0f bf f0             	movswl %ax,%esi
  de:	66 83 f8 01          	cmp    $0x1,%ax
  e2:	0f 84 8d 00 00 00    	je     0x175
  e8:	66 83 f8 02          	cmp    $0x2,%ax
  ec:	75 41                	jne    0x12f
  ee:	8b 85 d4 fd ff ff    	mov    -0x22c(%ebp),%eax
  f4:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
  fa:	8b 95 cc fd ff ff    	mov    -0x234(%ebp),%edx
 100:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 106:	83 ec 0c             	sub    $0xc,%esp
 109:	53                   	push   %ebx
 10a:	e8 f1 fe ff ff       	call   0x0
 10f:	83 c4 08             	add    $0x8,%esp
 112:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 118:	ff b5 b0 fd ff ff    	pushl  -0x250(%ebp)
 11e:	56                   	push   %esi
 11f:	50                   	push   %eax
 120:	68 f0 08 00 00       	push   $0x8f0
 125:	6a 01                	push   $0x1
 127:	e8 de 04 00 00       	call   0x60a
 12c:	83 c4 20             	add    $0x20,%esp
 12f:	83 ec 0c             	sub    $0xc,%esp
 132:	57                   	push   %edi
 133:	e8 a9 03 00 00       	call   0x4e1
 138:	83 c4 10             	add    $0x10,%esp
 13b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 13e:	5b                   	pop    %ebx
 13f:	5e                   	pop    %esi
 140:	5f                   	pop    %edi
 141:	5d                   	pop    %ebp
 142:	c3                   	ret    
 143:	83 ec 04             	sub    $0x4,%esp
 146:	53                   	push   %ebx
 147:	68 c8 08 00 00       	push   $0x8c8
 14c:	6a 02                	push   $0x2
 14e:	e8 b7 04 00 00       	call   0x60a
 153:	83 c4 10             	add    $0x10,%esp
 156:	eb e3                	jmp    0x13b
 158:	83 ec 04             	sub    $0x4,%esp
 15b:	53                   	push   %ebx
 15c:	68 dc 08 00 00       	push   $0x8dc
 161:	6a 02                	push   $0x2
 163:	e8 a2 04 00 00       	call   0x60a
 168:	89 3c 24             	mov    %edi,(%esp)
 16b:	e8 71 03 00 00       	call   0x4e1
 170:	83 c4 10             	add    $0x10,%esp
 173:	eb c6                	jmp    0x13b
 175:	83 ec 0c             	sub    $0xc,%esp
 178:	53                   	push   %ebx
 179:	e8 d2 01 00 00       	call   0x350
 17e:	83 c0 10             	add    $0x10,%eax
 181:	83 c4 10             	add    $0x10,%esp
 184:	3d 00 02 00 00       	cmp    $0x200,%eax
 189:	76 14                	jbe    0x19f
 18b:	83 ec 08             	sub    $0x8,%esp
 18e:	68 fd 08 00 00       	push   $0x8fd
 193:	6a 01                	push   $0x1
 195:	e8 70 04 00 00       	call   0x60a
 19a:	83 c4 10             	add    $0x10,%esp
 19d:	eb 90                	jmp    0x12f
 19f:	83 ec 08             	sub    $0x8,%esp
 1a2:	53                   	push   %ebx
 1a3:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
 1a9:	56                   	push   %esi
 1aa:	e8 4d 01 00 00       	call   0x2fc
 1af:	89 34 24             	mov    %esi,(%esp)
 1b2:	e8 99 01 00 00       	call   0x350
 1b7:	01 c6                	add    %eax,%esi
 1b9:	8d 46 01             	lea    0x1(%esi),%eax
 1bc:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
 1c2:	c6 06 2f             	movb   $0x2f,(%esi)
 1c5:	83 c4 10             	add    $0x10,%esp
 1c8:	eb 19                	jmp    0x1e3
 1ca:	83 ec 04             	sub    $0x4,%esp
 1cd:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1d3:	50                   	push   %eax
 1d4:	68 dc 08 00 00       	push   $0x8dc
 1d9:	6a 01                	push   $0x1
 1db:	e8 2a 04 00 00       	call   0x60a
 1e0:	83 c4 10             	add    $0x10,%esp
 1e3:	83 ec 04             	sub    $0x4,%esp
 1e6:	6a 10                	push   $0x10
 1e8:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
 1ee:	50                   	push   %eax
 1ef:	57                   	push   %edi
 1f0:	e8 dc 02 00 00       	call   0x4d1
 1f5:	83 c4 10             	add    $0x10,%esp
 1f8:	83 f8 10             	cmp    $0x10,%eax
 1fb:	0f 85 2e ff ff ff    	jne    0x12f
 201:	66 83 bd d8 fd ff ff 	cmpw   $0x0,-0x228(%ebp)
 208:	00 
 209:	74 d8                	je     0x1e3
 20b:	83 ec 04             	sub    $0x4,%esp
 20e:	6a 0e                	push   $0xe
 210:	8d 85 da fd ff ff    	lea    -0x226(%ebp),%eax
 216:	50                   	push   %eax
 217:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
 21d:	e8 5f 02 00 00       	call   0x481
 222:	c6 46 0f 00          	movb   $0x0,0xf(%esi)
 226:	83 c4 08             	add    $0x8,%esp
 229:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 22f:	50                   	push   %eax
 230:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 236:	50                   	push   %eax
 237:	e8 cb 01 00 00       	call   0x407
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	85 c0                	test   %eax,%eax
 241:	78 87                	js     0x1ca
 243:	8b 9d d4 fd ff ff    	mov    -0x22c(%ebp),%ebx
 249:	8b 85 cc fd ff ff    	mov    -0x234(%ebp),%eax
 24f:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 255:	0f b7 8d c4 fd ff ff 	movzwl -0x23c(%ebp),%ecx
 25c:	66 89 8d b0 fd ff ff 	mov    %cx,-0x250(%ebp)
 263:	83 ec 0c             	sub    $0xc,%esp
 266:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 26c:	50                   	push   %eax
 26d:	e8 8e fd ff ff       	call   0x0
 272:	89 c2                	mov    %eax,%edx
 274:	83 c4 08             	add    $0x8,%esp
 277:	53                   	push   %ebx
 278:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 27e:	0f bf 85 b0 fd ff ff 	movswl -0x250(%ebp),%eax
 285:	50                   	push   %eax
 286:	52                   	push   %edx
 287:	68 f0 08 00 00       	push   $0x8f0
 28c:	6a 01                	push   $0x1
 28e:	e8 77 03 00 00       	call   0x60a
 293:	83 c4 20             	add    $0x20,%esp
 296:	e9 48 ff ff ff       	jmp    0x1e3
 29b:	f3 0f 1e fb          	endbr32 
 29f:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 2a3:	83 e4 f0             	and    $0xfffffff0,%esp
 2a6:	ff 71 fc             	pushl  -0x4(%ecx)
 2a9:	55                   	push   %ebp
 2aa:	89 e5                	mov    %esp,%ebp
 2ac:	57                   	push   %edi
 2ad:	56                   	push   %esi
 2ae:	53                   	push   %ebx
 2af:	51                   	push   %ecx
 2b0:	83 ec 08             	sub    $0x8,%esp
 2b3:	8b 31                	mov    (%ecx),%esi
 2b5:	8b 79 04             	mov    0x4(%ecx),%edi
 2b8:	83 fe 01             	cmp    $0x1,%esi
 2bb:	7e 07                	jle    0x2c4
 2bd:	bb 01 00 00 00       	mov    $0x1,%ebx
 2c2:	eb 2a                	jmp    0x2ee
 2c4:	83 ec 0c             	sub    $0xc,%esp
 2c7:	68 10 09 00 00       	push   $0x910
 2cc:	e8 c0 fd ff ff       	call   0x91
 2d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2d8:	e8 dc 01 00 00       	call   0x4b9
 2dd:	83 ec 0c             	sub    $0xc,%esp
 2e0:	ff 34 9f             	pushl  (%edi,%ebx,4)
 2e3:	e8 a9 fd ff ff       	call   0x91
 2e8:	83 c3 01             	add    $0x1,%ebx
 2eb:	83 c4 10             	add    $0x10,%esp
 2ee:	39 f3                	cmp    %esi,%ebx
 2f0:	7c eb                	jl     0x2dd
 2f2:	83 ec 0c             	sub    $0xc,%esp
 2f5:	6a 00                	push   $0x0
 2f7:	e8 bd 01 00 00       	call   0x4b9
 2fc:	f3 0f 1e fb          	endbr32 
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	56                   	push   %esi
 304:	53                   	push   %ebx
 305:	8b 75 08             	mov    0x8(%ebp),%esi
 308:	8b 55 0c             	mov    0xc(%ebp),%edx
 30b:	89 f0                	mov    %esi,%eax
 30d:	89 d1                	mov    %edx,%ecx
 30f:	83 c2 01             	add    $0x1,%edx
 312:	89 c3                	mov    %eax,%ebx
 314:	83 c0 01             	add    $0x1,%eax
 317:	0f b6 09             	movzbl (%ecx),%ecx
 31a:	88 0b                	mov    %cl,(%ebx)
 31c:	84 c9                	test   %cl,%cl
 31e:	75 ed                	jne    0x30d
 320:	89 f0                	mov    %esi,%eax
 322:	5b                   	pop    %ebx
 323:	5e                   	pop    %esi
 324:	5d                   	pop    %ebp
 325:	c3                   	ret    
 326:	f3 0f 1e fb          	endbr32 
 32a:	55                   	push   %ebp
 32b:	89 e5                	mov    %esp,%ebp
 32d:	8b 4d 08             	mov    0x8(%ebp),%ecx
 330:	8b 55 0c             	mov    0xc(%ebp),%edx
 333:	0f b6 01             	movzbl (%ecx),%eax
 336:	84 c0                	test   %al,%al
 338:	74 0c                	je     0x346
 33a:	3a 02                	cmp    (%edx),%al
 33c:	75 08                	jne    0x346
 33e:	83 c1 01             	add    $0x1,%ecx
 341:	83 c2 01             	add    $0x1,%edx
 344:	eb ed                	jmp    0x333
 346:	0f b6 c0             	movzbl %al,%eax
 349:	0f b6 12             	movzbl (%edx),%edx
 34c:	29 d0                	sub    %edx,%eax
 34e:	5d                   	pop    %ebp
 34f:	c3                   	ret    
 350:	f3 0f 1e fb          	endbr32 
 354:	55                   	push   %ebp
 355:	89 e5                	mov    %esp,%ebp
 357:	8b 4d 08             	mov    0x8(%ebp),%ecx
 35a:	b8 00 00 00 00       	mov    $0x0,%eax
 35f:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 363:	74 05                	je     0x36a
 365:	83 c0 01             	add    $0x1,%eax
 368:	eb f5                	jmp    0x35f
 36a:	5d                   	pop    %ebp
 36b:	c3                   	ret    
 36c:	f3 0f 1e fb          	endbr32 
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	57                   	push   %edi
 374:	8b 55 08             	mov    0x8(%ebp),%edx
 377:	89 d7                	mov    %edx,%edi
 379:	8b 4d 10             	mov    0x10(%ebp),%ecx
 37c:	8b 45 0c             	mov    0xc(%ebp),%eax
 37f:	fc                   	cld    
 380:	f3 aa                	rep stos %al,%es:(%edi)
 382:	89 d0                	mov    %edx,%eax
 384:	5f                   	pop    %edi
 385:	5d                   	pop    %ebp
 386:	c3                   	ret    
 387:	f3 0f 1e fb          	endbr32 
 38b:	55                   	push   %ebp
 38c:	89 e5                	mov    %esp,%ebp
 38e:	8b 45 08             	mov    0x8(%ebp),%eax
 391:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 395:	0f b6 10             	movzbl (%eax),%edx
 398:	84 d2                	test   %dl,%dl
 39a:	74 09                	je     0x3a5
 39c:	38 ca                	cmp    %cl,%dl
 39e:	74 0a                	je     0x3aa
 3a0:	83 c0 01             	add    $0x1,%eax
 3a3:	eb f0                	jmp    0x395
 3a5:	b8 00 00 00 00       	mov    $0x0,%eax
 3aa:	5d                   	pop    %ebp
 3ab:	c3                   	ret    
 3ac:	f3 0f 1e fb          	endbr32 
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	57                   	push   %edi
 3b4:	56                   	push   %esi
 3b5:	53                   	push   %ebx
 3b6:	83 ec 1c             	sub    $0x1c,%esp
 3b9:	8b 7d 08             	mov    0x8(%ebp),%edi
 3bc:	bb 00 00 00 00       	mov    $0x0,%ebx
 3c1:	89 de                	mov    %ebx,%esi
 3c3:	83 c3 01             	add    $0x1,%ebx
 3c6:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3c9:	7d 2e                	jge    0x3f9
 3cb:	83 ec 04             	sub    $0x4,%esp
 3ce:	6a 01                	push   $0x1
 3d0:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3d3:	50                   	push   %eax
 3d4:	6a 00                	push   $0x0
 3d6:	e8 f6 00 00 00       	call   0x4d1
 3db:	83 c4 10             	add    $0x10,%esp
 3de:	85 c0                	test   %eax,%eax
 3e0:	7e 17                	jle    0x3f9
 3e2:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3e6:	88 04 37             	mov    %al,(%edi,%esi,1)
 3e9:	3c 0a                	cmp    $0xa,%al
 3eb:	0f 94 c2             	sete   %dl
 3ee:	3c 0d                	cmp    $0xd,%al
 3f0:	0f 94 c0             	sete   %al
 3f3:	08 c2                	or     %al,%dl
 3f5:	74 ca                	je     0x3c1
 3f7:	89 de                	mov    %ebx,%esi
 3f9:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 3fd:	89 f8                	mov    %edi,%eax
 3ff:	8d 65 f4             	lea    -0xc(%ebp),%esp
 402:	5b                   	pop    %ebx
 403:	5e                   	pop    %esi
 404:	5f                   	pop    %edi
 405:	5d                   	pop    %ebp
 406:	c3                   	ret    
 407:	f3 0f 1e fb          	endbr32 
 40b:	55                   	push   %ebp
 40c:	89 e5                	mov    %esp,%ebp
 40e:	56                   	push   %esi
 40f:	53                   	push   %ebx
 410:	83 ec 08             	sub    $0x8,%esp
 413:	6a 00                	push   $0x0
 415:	ff 75 08             	pushl  0x8(%ebp)
 418:	e8 dc 00 00 00       	call   0x4f9
 41d:	83 c4 10             	add    $0x10,%esp
 420:	85 c0                	test   %eax,%eax
 422:	78 24                	js     0x448
 424:	89 c3                	mov    %eax,%ebx
 426:	83 ec 08             	sub    $0x8,%esp
 429:	ff 75 0c             	pushl  0xc(%ebp)
 42c:	50                   	push   %eax
 42d:	e8 df 00 00 00       	call   0x511
 432:	89 c6                	mov    %eax,%esi
 434:	89 1c 24             	mov    %ebx,(%esp)
 437:	e8 a5 00 00 00       	call   0x4e1
 43c:	83 c4 10             	add    $0x10,%esp
 43f:	89 f0                	mov    %esi,%eax
 441:	8d 65 f8             	lea    -0x8(%ebp),%esp
 444:	5b                   	pop    %ebx
 445:	5e                   	pop    %esi
 446:	5d                   	pop    %ebp
 447:	c3                   	ret    
 448:	be ff ff ff ff       	mov    $0xffffffff,%esi
 44d:	eb f0                	jmp    0x43f
 44f:	f3 0f 1e fb          	endbr32 
 453:	55                   	push   %ebp
 454:	89 e5                	mov    %esp,%ebp
 456:	53                   	push   %ebx
 457:	8b 4d 08             	mov    0x8(%ebp),%ecx
 45a:	ba 00 00 00 00       	mov    $0x0,%edx
 45f:	0f b6 01             	movzbl (%ecx),%eax
 462:	8d 58 d0             	lea    -0x30(%eax),%ebx
 465:	80 fb 09             	cmp    $0x9,%bl
 468:	77 12                	ja     0x47c
 46a:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 46d:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 470:	83 c1 01             	add    $0x1,%ecx
 473:	0f be c0             	movsbl %al,%eax
 476:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 47a:	eb e3                	jmp    0x45f
 47c:	89 d0                	mov    %edx,%eax
 47e:	5b                   	pop    %ebx
 47f:	5d                   	pop    %ebp
 480:	c3                   	ret    
 481:	f3 0f 1e fb          	endbr32 
 485:	55                   	push   %ebp
 486:	89 e5                	mov    %esp,%ebp
 488:	56                   	push   %esi
 489:	53                   	push   %ebx
 48a:	8b 75 08             	mov    0x8(%ebp),%esi
 48d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 490:	8b 45 10             	mov    0x10(%ebp),%eax
 493:	89 f2                	mov    %esi,%edx
 495:	8d 58 ff             	lea    -0x1(%eax),%ebx
 498:	85 c0                	test   %eax,%eax
 49a:	7e 0f                	jle    0x4ab
 49c:	0f b6 01             	movzbl (%ecx),%eax
 49f:	88 02                	mov    %al,(%edx)
 4a1:	8d 49 01             	lea    0x1(%ecx),%ecx
 4a4:	8d 52 01             	lea    0x1(%edx),%edx
 4a7:	89 d8                	mov    %ebx,%eax
 4a9:	eb ea                	jmp    0x495
 4ab:	89 f0                	mov    %esi,%eax
 4ad:	5b                   	pop    %ebx
 4ae:	5e                   	pop    %esi
 4af:	5d                   	pop    %ebp
 4b0:	c3                   	ret    
 4b1:	b8 01 00 00 00       	mov    $0x1,%eax
 4b6:	cd 40                	int    $0x40
 4b8:	c3                   	ret    
 4b9:	b8 02 00 00 00       	mov    $0x2,%eax
 4be:	cd 40                	int    $0x40
 4c0:	c3                   	ret    
 4c1:	b8 03 00 00 00       	mov    $0x3,%eax
 4c6:	cd 40                	int    $0x40
 4c8:	c3                   	ret    
 4c9:	b8 04 00 00 00       	mov    $0x4,%eax
 4ce:	cd 40                	int    $0x40
 4d0:	c3                   	ret    
 4d1:	b8 05 00 00 00       	mov    $0x5,%eax
 4d6:	cd 40                	int    $0x40
 4d8:	c3                   	ret    
 4d9:	b8 10 00 00 00       	mov    $0x10,%eax
 4de:	cd 40                	int    $0x40
 4e0:	c3                   	ret    
 4e1:	b8 15 00 00 00       	mov    $0x15,%eax
 4e6:	cd 40                	int    $0x40
 4e8:	c3                   	ret    
 4e9:	b8 06 00 00 00       	mov    $0x6,%eax
 4ee:	cd 40                	int    $0x40
 4f0:	c3                   	ret    
 4f1:	b8 07 00 00 00       	mov    $0x7,%eax
 4f6:	cd 40                	int    $0x40
 4f8:	c3                   	ret    
 4f9:	b8 0f 00 00 00       	mov    $0xf,%eax
 4fe:	cd 40                	int    $0x40
 500:	c3                   	ret    
 501:	b8 11 00 00 00       	mov    $0x11,%eax
 506:	cd 40                	int    $0x40
 508:	c3                   	ret    
 509:	b8 12 00 00 00       	mov    $0x12,%eax
 50e:	cd 40                	int    $0x40
 510:	c3                   	ret    
 511:	b8 08 00 00 00       	mov    $0x8,%eax
 516:	cd 40                	int    $0x40
 518:	c3                   	ret    
 519:	b8 13 00 00 00       	mov    $0x13,%eax
 51e:	cd 40                	int    $0x40
 520:	c3                   	ret    
 521:	b8 14 00 00 00       	mov    $0x14,%eax
 526:	cd 40                	int    $0x40
 528:	c3                   	ret    
 529:	b8 09 00 00 00       	mov    $0x9,%eax
 52e:	cd 40                	int    $0x40
 530:	c3                   	ret    
 531:	b8 0a 00 00 00       	mov    $0xa,%eax
 536:	cd 40                	int    $0x40
 538:	c3                   	ret    
 539:	b8 0b 00 00 00       	mov    $0xb,%eax
 53e:	cd 40                	int    $0x40
 540:	c3                   	ret    
 541:	b8 0c 00 00 00       	mov    $0xc,%eax
 546:	cd 40                	int    $0x40
 548:	c3                   	ret    
 549:	b8 0d 00 00 00       	mov    $0xd,%eax
 54e:	cd 40                	int    $0x40
 550:	c3                   	ret    
 551:	b8 0e 00 00 00       	mov    $0xe,%eax
 556:	cd 40                	int    $0x40
 558:	c3                   	ret    
 559:	b8 16 00 00 00       	mov    $0x16,%eax
 55e:	cd 40                	int    $0x40
 560:	c3                   	ret    
 561:	b8 17 00 00 00       	mov    $0x17,%eax
 566:	cd 40                	int    $0x40
 568:	c3                   	ret    
 569:	55                   	push   %ebp
 56a:	89 e5                	mov    %esp,%ebp
 56c:	83 ec 1c             	sub    $0x1c,%esp
 56f:	88 55 f4             	mov    %dl,-0xc(%ebp)
 572:	6a 01                	push   $0x1
 574:	8d 55 f4             	lea    -0xc(%ebp),%edx
 577:	52                   	push   %edx
 578:	50                   	push   %eax
 579:	e8 5b ff ff ff       	call   0x4d9
 57e:	83 c4 10             	add    $0x10,%esp
 581:	c9                   	leave  
 582:	c3                   	ret    
 583:	55                   	push   %ebp
 584:	89 e5                	mov    %esp,%ebp
 586:	57                   	push   %edi
 587:	56                   	push   %esi
 588:	53                   	push   %ebx
 589:	83 ec 2c             	sub    $0x2c,%esp
 58c:	89 45 d0             	mov    %eax,-0x30(%ebp)
 58f:	89 d6                	mov    %edx,%esi
 591:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 595:	0f 95 c2             	setne  %dl
 598:	89 f0                	mov    %esi,%eax
 59a:	c1 e8 1f             	shr    $0x1f,%eax
 59d:	84 c2                	test   %al,%dl
 59f:	74 42                	je     0x5e3
 5a1:	f7 de                	neg    %esi
 5a3:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 5aa:	bb 00 00 00 00       	mov    $0x0,%ebx
 5af:	89 f0                	mov    %esi,%eax
 5b1:	ba 00 00 00 00       	mov    $0x0,%edx
 5b6:	f7 f1                	div    %ecx
 5b8:	89 df                	mov    %ebx,%edi
 5ba:	83 c3 01             	add    $0x1,%ebx
 5bd:	0f b6 92 1c 09 00 00 	movzbl 0x91c(%edx),%edx
 5c4:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 5c8:	89 f2                	mov    %esi,%edx
 5ca:	89 c6                	mov    %eax,%esi
 5cc:	39 d1                	cmp    %edx,%ecx
 5ce:	76 df                	jbe    0x5af
 5d0:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 5d4:	74 2f                	je     0x605
 5d6:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 5db:	8d 5f 02             	lea    0x2(%edi),%ebx
 5de:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5e1:	eb 15                	jmp    0x5f8
 5e3:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 5ea:	eb be                	jmp    0x5aa
 5ec:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 5f1:	89 f0                	mov    %esi,%eax
 5f3:	e8 71 ff ff ff       	call   0x569
 5f8:	83 eb 01             	sub    $0x1,%ebx
 5fb:	79 ef                	jns    0x5ec
 5fd:	83 c4 2c             	add    $0x2c,%esp
 600:	5b                   	pop    %ebx
 601:	5e                   	pop    %esi
 602:	5f                   	pop    %edi
 603:	5d                   	pop    %ebp
 604:	c3                   	ret    
 605:	8b 75 d0             	mov    -0x30(%ebp),%esi
 608:	eb ee                	jmp    0x5f8
 60a:	f3 0f 1e fb          	endbr32 
 60e:	55                   	push   %ebp
 60f:	89 e5                	mov    %esp,%ebp
 611:	57                   	push   %edi
 612:	56                   	push   %esi
 613:	53                   	push   %ebx
 614:	83 ec 1c             	sub    $0x1c,%esp
 617:	8d 45 10             	lea    0x10(%ebp),%eax
 61a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 61d:	be 00 00 00 00       	mov    $0x0,%esi
 622:	bb 00 00 00 00       	mov    $0x0,%ebx
 627:	eb 14                	jmp    0x63d
 629:	89 fa                	mov    %edi,%edx
 62b:	8b 45 08             	mov    0x8(%ebp),%eax
 62e:	e8 36 ff ff ff       	call   0x569
 633:	eb 05                	jmp    0x63a
 635:	83 fe 25             	cmp    $0x25,%esi
 638:	74 25                	je     0x65f
 63a:	83 c3 01             	add    $0x1,%ebx
 63d:	8b 45 0c             	mov    0xc(%ebp),%eax
 640:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 644:	84 c0                	test   %al,%al
 646:	0f 84 23 01 00 00    	je     0x76f
 64c:	0f be f8             	movsbl %al,%edi
 64f:	0f b6 c0             	movzbl %al,%eax
 652:	85 f6                	test   %esi,%esi
 654:	75 df                	jne    0x635
 656:	83 f8 25             	cmp    $0x25,%eax
 659:	75 ce                	jne    0x629
 65b:	89 c6                	mov    %eax,%esi
 65d:	eb db                	jmp    0x63a
 65f:	83 f8 64             	cmp    $0x64,%eax
 662:	74 49                	je     0x6ad
 664:	83 f8 78             	cmp    $0x78,%eax
 667:	0f 94 c1             	sete   %cl
 66a:	83 f8 70             	cmp    $0x70,%eax
 66d:	0f 94 c2             	sete   %dl
 670:	08 d1                	or     %dl,%cl
 672:	75 63                	jne    0x6d7
 674:	83 f8 73             	cmp    $0x73,%eax
 677:	0f 84 84 00 00 00    	je     0x701
 67d:	83 f8 63             	cmp    $0x63,%eax
 680:	0f 84 b7 00 00 00    	je     0x73d
 686:	83 f8 25             	cmp    $0x25,%eax
 689:	0f 84 cc 00 00 00    	je     0x75b
 68f:	ba 25 00 00 00       	mov    $0x25,%edx
 694:	8b 45 08             	mov    0x8(%ebp),%eax
 697:	e8 cd fe ff ff       	call   0x569
 69c:	89 fa                	mov    %edi,%edx
 69e:	8b 45 08             	mov    0x8(%ebp),%eax
 6a1:	e8 c3 fe ff ff       	call   0x569
 6a6:	be 00 00 00 00       	mov    $0x0,%esi
 6ab:	eb 8d                	jmp    0x63a
 6ad:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6b0:	8b 17                	mov    (%edi),%edx
 6b2:	83 ec 0c             	sub    $0xc,%esp
 6b5:	6a 01                	push   $0x1
 6b7:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6bc:	8b 45 08             	mov    0x8(%ebp),%eax
 6bf:	e8 bf fe ff ff       	call   0x583
 6c4:	83 c7 04             	add    $0x4,%edi
 6c7:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6ca:	83 c4 10             	add    $0x10,%esp
 6cd:	be 00 00 00 00       	mov    $0x0,%esi
 6d2:	e9 63 ff ff ff       	jmp    0x63a
 6d7:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6da:	8b 17                	mov    (%edi),%edx
 6dc:	83 ec 0c             	sub    $0xc,%esp
 6df:	6a 00                	push   $0x0
 6e1:	b9 10 00 00 00       	mov    $0x10,%ecx
 6e6:	8b 45 08             	mov    0x8(%ebp),%eax
 6e9:	e8 95 fe ff ff       	call   0x583
 6ee:	83 c7 04             	add    $0x4,%edi
 6f1:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6f4:	83 c4 10             	add    $0x10,%esp
 6f7:	be 00 00 00 00       	mov    $0x0,%esi
 6fc:	e9 39 ff ff ff       	jmp    0x63a
 701:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 704:	8b 30                	mov    (%eax),%esi
 706:	83 c0 04             	add    $0x4,%eax
 709:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 70c:	85 f6                	test   %esi,%esi
 70e:	75 28                	jne    0x738
 710:	be 12 09 00 00       	mov    $0x912,%esi
 715:	8b 7d 08             	mov    0x8(%ebp),%edi
 718:	eb 0d                	jmp    0x727
 71a:	0f be d2             	movsbl %dl,%edx
 71d:	89 f8                	mov    %edi,%eax
 71f:	e8 45 fe ff ff       	call   0x569
 724:	83 c6 01             	add    $0x1,%esi
 727:	0f b6 16             	movzbl (%esi),%edx
 72a:	84 d2                	test   %dl,%dl
 72c:	75 ec                	jne    0x71a
 72e:	be 00 00 00 00       	mov    $0x0,%esi
 733:	e9 02 ff ff ff       	jmp    0x63a
 738:	8b 7d 08             	mov    0x8(%ebp),%edi
 73b:	eb ea                	jmp    0x727
 73d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 740:	0f be 17             	movsbl (%edi),%edx
 743:	8b 45 08             	mov    0x8(%ebp),%eax
 746:	e8 1e fe ff ff       	call   0x569
 74b:	83 c7 04             	add    $0x4,%edi
 74e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 751:	be 00 00 00 00       	mov    $0x0,%esi
 756:	e9 df fe ff ff       	jmp    0x63a
 75b:	89 fa                	mov    %edi,%edx
 75d:	8b 45 08             	mov    0x8(%ebp),%eax
 760:	e8 04 fe ff ff       	call   0x569
 765:	be 00 00 00 00       	mov    $0x0,%esi
 76a:	e9 cb fe ff ff       	jmp    0x63a
 76f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 772:	5b                   	pop    %ebx
 773:	5e                   	pop    %esi
 774:	5f                   	pop    %edi
 775:	5d                   	pop    %ebp
 776:	c3                   	ret    
 777:	f3 0f 1e fb          	endbr32 
 77b:	55                   	push   %ebp
 77c:	89 e5                	mov    %esp,%ebp
 77e:	57                   	push   %edi
 77f:	56                   	push   %esi
 780:	53                   	push   %ebx
 781:	8b 5d 08             	mov    0x8(%ebp),%ebx
 784:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 787:	a1 34 0c 00 00       	mov    0xc34,%eax
 78c:	eb 02                	jmp    0x790
 78e:	89 d0                	mov    %edx,%eax
 790:	39 c8                	cmp    %ecx,%eax
 792:	73 04                	jae    0x798
 794:	39 08                	cmp    %ecx,(%eax)
 796:	77 12                	ja     0x7aa
 798:	8b 10                	mov    (%eax),%edx
 79a:	39 c2                	cmp    %eax,%edx
 79c:	77 f0                	ja     0x78e
 79e:	39 c8                	cmp    %ecx,%eax
 7a0:	72 08                	jb     0x7aa
 7a2:	39 ca                	cmp    %ecx,%edx
 7a4:	77 04                	ja     0x7aa
 7a6:	89 d0                	mov    %edx,%eax
 7a8:	eb e6                	jmp    0x790
 7aa:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7ad:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7b0:	8b 10                	mov    (%eax),%edx
 7b2:	39 d7                	cmp    %edx,%edi
 7b4:	74 19                	je     0x7cf
 7b6:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7b9:	8b 50 04             	mov    0x4(%eax),%edx
 7bc:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7bf:	39 ce                	cmp    %ecx,%esi
 7c1:	74 1b                	je     0x7de
 7c3:	89 08                	mov    %ecx,(%eax)
 7c5:	a3 34 0c 00 00       	mov    %eax,0xc34
 7ca:	5b                   	pop    %ebx
 7cb:	5e                   	pop    %esi
 7cc:	5f                   	pop    %edi
 7cd:	5d                   	pop    %ebp
 7ce:	c3                   	ret    
 7cf:	03 72 04             	add    0x4(%edx),%esi
 7d2:	89 73 fc             	mov    %esi,-0x4(%ebx)
 7d5:	8b 10                	mov    (%eax),%edx
 7d7:	8b 12                	mov    (%edx),%edx
 7d9:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7dc:	eb db                	jmp    0x7b9
 7de:	03 53 fc             	add    -0x4(%ebx),%edx
 7e1:	89 50 04             	mov    %edx,0x4(%eax)
 7e4:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7e7:	89 10                	mov    %edx,(%eax)
 7e9:	eb da                	jmp    0x7c5
 7eb:	55                   	push   %ebp
 7ec:	89 e5                	mov    %esp,%ebp
 7ee:	53                   	push   %ebx
 7ef:	83 ec 04             	sub    $0x4,%esp
 7f2:	89 c3                	mov    %eax,%ebx
 7f4:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 7f9:	77 05                	ja     0x800
 7fb:	bb 00 10 00 00       	mov    $0x1000,%ebx
 800:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 807:	83 ec 0c             	sub    $0xc,%esp
 80a:	50                   	push   %eax
 80b:	e8 31 fd ff ff       	call   0x541
 810:	83 c4 10             	add    $0x10,%esp
 813:	83 f8 ff             	cmp    $0xffffffff,%eax
 816:	74 1c                	je     0x834
 818:	89 58 04             	mov    %ebx,0x4(%eax)
 81b:	83 c0 08             	add    $0x8,%eax
 81e:	83 ec 0c             	sub    $0xc,%esp
 821:	50                   	push   %eax
 822:	e8 50 ff ff ff       	call   0x777
 827:	a1 34 0c 00 00       	mov    0xc34,%eax
 82c:	83 c4 10             	add    $0x10,%esp
 82f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 832:	c9                   	leave  
 833:	c3                   	ret    
 834:	b8 00 00 00 00       	mov    $0x0,%eax
 839:	eb f4                	jmp    0x82f
 83b:	f3 0f 1e fb          	endbr32 
 83f:	55                   	push   %ebp
 840:	89 e5                	mov    %esp,%ebp
 842:	53                   	push   %ebx
 843:	83 ec 04             	sub    $0x4,%esp
 846:	8b 45 08             	mov    0x8(%ebp),%eax
 849:	8d 58 07             	lea    0x7(%eax),%ebx
 84c:	c1 eb 03             	shr    $0x3,%ebx
 84f:	83 c3 01             	add    $0x1,%ebx
 852:	8b 0d 34 0c 00 00    	mov    0xc34,%ecx
 858:	85 c9                	test   %ecx,%ecx
 85a:	74 04                	je     0x860
 85c:	8b 01                	mov    (%ecx),%eax
 85e:	eb 4b                	jmp    0x8ab
 860:	c7 05 34 0c 00 00 38 	movl   $0xc38,0xc34
 867:	0c 00 00 
 86a:	c7 05 38 0c 00 00 38 	movl   $0xc38,0xc38
 871:	0c 00 00 
 874:	c7 05 3c 0c 00 00 00 	movl   $0x0,0xc3c
 87b:	00 00 00 
 87e:	b9 38 0c 00 00       	mov    $0xc38,%ecx
 883:	eb d7                	jmp    0x85c
 885:	74 1a                	je     0x8a1
 887:	29 da                	sub    %ebx,%edx
 889:	89 50 04             	mov    %edx,0x4(%eax)
 88c:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 88f:	89 58 04             	mov    %ebx,0x4(%eax)
 892:	89 0d 34 0c 00 00    	mov    %ecx,0xc34
 898:	83 c0 08             	add    $0x8,%eax
 89b:	83 c4 04             	add    $0x4,%esp
 89e:	5b                   	pop    %ebx
 89f:	5d                   	pop    %ebp
 8a0:	c3                   	ret    
 8a1:	8b 10                	mov    (%eax),%edx
 8a3:	89 11                	mov    %edx,(%ecx)
 8a5:	eb eb                	jmp    0x892
 8a7:	89 c1                	mov    %eax,%ecx
 8a9:	8b 00                	mov    (%eax),%eax
 8ab:	8b 50 04             	mov    0x4(%eax),%edx
 8ae:	39 da                	cmp    %ebx,%edx
 8b0:	73 d3                	jae    0x885
 8b2:	39 05 34 0c 00 00    	cmp    %eax,0xc34
 8b8:	75 ed                	jne    0x8a7
 8ba:	89 d8                	mov    %ebx,%eax
 8bc:	e8 2a ff ff ff       	call   0x7eb
 8c1:	85 c0                	test   %eax,%eax
 8c3:	75 e2                	jne    0x8a7
 8c5:	eb d4                	jmp    0x89b
