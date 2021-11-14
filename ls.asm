
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
  10:	e8 2f 03 00 00       	call   0x344
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
  2f:	e8 10 03 00 00       	call   0x344
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
  49:	e8 f6 02 00 00       	call   0x344
  4e:	83 c4 0c             	add    $0xc,%esp
  51:	50                   	push   %eax
  52:	53                   	push   %ebx
  53:	68 18 0c 00 00       	push   $0xc18
  58:	e8 18 04 00 00       	call   0x475
  5d:	89 1c 24             	mov    %ebx,(%esp)
  60:	e8 df 02 00 00       	call   0x344
  65:	89 c6                	mov    %eax,%esi
  67:	89 1c 24             	mov    %ebx,(%esp)
  6a:	e8 d5 02 00 00       	call   0x344
  6f:	83 c4 0c             	add    $0xc,%esp
  72:	ba 0e 00 00 00       	mov    $0xe,%edx
  77:	29 f2                	sub    %esi,%edx
  79:	52                   	push   %edx
  7a:	6a 20                	push   $0x20
  7c:	05 18 0c 00 00       	add    $0xc18,%eax
  81:	50                   	push   %eax
  82:	e8 d9 02 00 00       	call   0x360
  87:	83 c4 10             	add    $0x10,%esp
  8a:	bb 18 0c 00 00       	mov    $0xc18,%ebx
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
  a7:	e8 41 04 00 00       	call   0x4ed
  ac:	83 c4 10             	add    $0x10,%esp
  af:	85 c0                	test   %eax,%eax
  b1:	0f 88 8c 00 00 00    	js     0x143
  b7:	89 c7                	mov    %eax,%edi
  b9:	83 ec 08             	sub    $0x8,%esp
  bc:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
  c2:	50                   	push   %eax
  c3:	57                   	push   %edi
  c4:	e8 3c 04 00 00       	call   0x505
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
 120:	68 e4 08 00 00       	push   $0x8e4
 125:	6a 01                	push   $0x1
 127:	e8 d2 04 00 00       	call   0x5fe
 12c:	83 c4 20             	add    $0x20,%esp
 12f:	83 ec 0c             	sub    $0xc,%esp
 132:	57                   	push   %edi
 133:	e8 9d 03 00 00       	call   0x4d5
 138:	83 c4 10             	add    $0x10,%esp
 13b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 13e:	5b                   	pop    %ebx
 13f:	5e                   	pop    %esi
 140:	5f                   	pop    %edi
 141:	5d                   	pop    %ebp
 142:	c3                   	ret    
 143:	83 ec 04             	sub    $0x4,%esp
 146:	53                   	push   %ebx
 147:	68 bc 08 00 00       	push   $0x8bc
 14c:	6a 02                	push   $0x2
 14e:	e8 ab 04 00 00       	call   0x5fe
 153:	83 c4 10             	add    $0x10,%esp
 156:	eb e3                	jmp    0x13b
 158:	83 ec 04             	sub    $0x4,%esp
 15b:	53                   	push   %ebx
 15c:	68 d0 08 00 00       	push   $0x8d0
 161:	6a 02                	push   $0x2
 163:	e8 96 04 00 00       	call   0x5fe
 168:	89 3c 24             	mov    %edi,(%esp)
 16b:	e8 65 03 00 00       	call   0x4d5
 170:	83 c4 10             	add    $0x10,%esp
 173:	eb c6                	jmp    0x13b
 175:	83 ec 0c             	sub    $0xc,%esp
 178:	53                   	push   %ebx
 179:	e8 c6 01 00 00       	call   0x344
 17e:	83 c0 10             	add    $0x10,%eax
 181:	83 c4 10             	add    $0x10,%esp
 184:	3d 00 02 00 00       	cmp    $0x200,%eax
 189:	76 14                	jbe    0x19f
 18b:	83 ec 08             	sub    $0x8,%esp
 18e:	68 f1 08 00 00       	push   $0x8f1
 193:	6a 01                	push   $0x1
 195:	e8 64 04 00 00       	call   0x5fe
 19a:	83 c4 10             	add    $0x10,%esp
 19d:	eb 90                	jmp    0x12f
 19f:	83 ec 08             	sub    $0x8,%esp
 1a2:	53                   	push   %ebx
 1a3:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
 1a9:	56                   	push   %esi
 1aa:	e8 41 01 00 00       	call   0x2f0
 1af:	89 34 24             	mov    %esi,(%esp)
 1b2:	e8 8d 01 00 00       	call   0x344
 1b7:	01 c6                	add    %eax,%esi
 1b9:	8d 46 01             	lea    0x1(%esi),%eax
 1bc:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
 1c2:	c6 06 2f             	movb   $0x2f,(%esi)
 1c5:	83 c4 10             	add    $0x10,%esp
 1c8:	eb 19                	jmp    0x1e3
 1ca:	83 ec 04             	sub    $0x4,%esp
 1cd:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1d3:	50                   	push   %eax
 1d4:	68 d0 08 00 00       	push   $0x8d0
 1d9:	6a 01                	push   $0x1
 1db:	e8 1e 04 00 00       	call   0x5fe
 1e0:	83 c4 10             	add    $0x10,%esp
 1e3:	83 ec 04             	sub    $0x4,%esp
 1e6:	6a 10                	push   $0x10
 1e8:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
 1ee:	50                   	push   %eax
 1ef:	57                   	push   %edi
 1f0:	e8 d0 02 00 00       	call   0x4c5
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
 21d:	e8 53 02 00 00       	call   0x475
 222:	c6 46 0f 00          	movb   $0x0,0xf(%esi)
 226:	83 c4 08             	add    $0x8,%esp
 229:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 22f:	50                   	push   %eax
 230:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 236:	50                   	push   %eax
 237:	e8 bf 01 00 00       	call   0x3fb
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
 287:	68 e4 08 00 00       	push   $0x8e4
 28c:	6a 01                	push   $0x1
 28e:	e8 6b 03 00 00       	call   0x5fe
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
 2c2:	eb 23                	jmp    0x2e7
 2c4:	83 ec 0c             	sub    $0xc,%esp
 2c7:	68 04 09 00 00       	push   $0x904
 2cc:	e8 c0 fd ff ff       	call   0x91
 2d1:	e8 d7 01 00 00       	call   0x4ad
 2d6:	83 ec 0c             	sub    $0xc,%esp
 2d9:	ff 34 9f             	pushl  (%edi,%ebx,4)
 2dc:	e8 b0 fd ff ff       	call   0x91
 2e1:	83 c3 01             	add    $0x1,%ebx
 2e4:	83 c4 10             	add    $0x10,%esp
 2e7:	39 f3                	cmp    %esi,%ebx
 2e9:	7c eb                	jl     0x2d6
 2eb:	e8 bd 01 00 00       	call   0x4ad
 2f0:	f3 0f 1e fb          	endbr32 
 2f4:	55                   	push   %ebp
 2f5:	89 e5                	mov    %esp,%ebp
 2f7:	56                   	push   %esi
 2f8:	53                   	push   %ebx
 2f9:	8b 75 08             	mov    0x8(%ebp),%esi
 2fc:	8b 55 0c             	mov    0xc(%ebp),%edx
 2ff:	89 f0                	mov    %esi,%eax
 301:	89 d1                	mov    %edx,%ecx
 303:	83 c2 01             	add    $0x1,%edx
 306:	89 c3                	mov    %eax,%ebx
 308:	83 c0 01             	add    $0x1,%eax
 30b:	0f b6 09             	movzbl (%ecx),%ecx
 30e:	88 0b                	mov    %cl,(%ebx)
 310:	84 c9                	test   %cl,%cl
 312:	75 ed                	jne    0x301
 314:	89 f0                	mov    %esi,%eax
 316:	5b                   	pop    %ebx
 317:	5e                   	pop    %esi
 318:	5d                   	pop    %ebp
 319:	c3                   	ret    
 31a:	f3 0f 1e fb          	endbr32 
 31e:	55                   	push   %ebp
 31f:	89 e5                	mov    %esp,%ebp
 321:	8b 4d 08             	mov    0x8(%ebp),%ecx
 324:	8b 55 0c             	mov    0xc(%ebp),%edx
 327:	0f b6 01             	movzbl (%ecx),%eax
 32a:	84 c0                	test   %al,%al
 32c:	74 0c                	je     0x33a
 32e:	3a 02                	cmp    (%edx),%al
 330:	75 08                	jne    0x33a
 332:	83 c1 01             	add    $0x1,%ecx
 335:	83 c2 01             	add    $0x1,%edx
 338:	eb ed                	jmp    0x327
 33a:	0f b6 c0             	movzbl %al,%eax
 33d:	0f b6 12             	movzbl (%edx),%edx
 340:	29 d0                	sub    %edx,%eax
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	f3 0f 1e fb          	endbr32 
 348:	55                   	push   %ebp
 349:	89 e5                	mov    %esp,%ebp
 34b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 34e:	b8 00 00 00 00       	mov    $0x0,%eax
 353:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 357:	74 05                	je     0x35e
 359:	83 c0 01             	add    $0x1,%eax
 35c:	eb f5                	jmp    0x353
 35e:	5d                   	pop    %ebp
 35f:	c3                   	ret    
 360:	f3 0f 1e fb          	endbr32 
 364:	55                   	push   %ebp
 365:	89 e5                	mov    %esp,%ebp
 367:	57                   	push   %edi
 368:	8b 55 08             	mov    0x8(%ebp),%edx
 36b:	89 d7                	mov    %edx,%edi
 36d:	8b 4d 10             	mov    0x10(%ebp),%ecx
 370:	8b 45 0c             	mov    0xc(%ebp),%eax
 373:	fc                   	cld    
 374:	f3 aa                	rep stos %al,%es:(%edi)
 376:	89 d0                	mov    %edx,%eax
 378:	5f                   	pop    %edi
 379:	5d                   	pop    %ebp
 37a:	c3                   	ret    
 37b:	f3 0f 1e fb          	endbr32 
 37f:	55                   	push   %ebp
 380:	89 e5                	mov    %esp,%ebp
 382:	8b 45 08             	mov    0x8(%ebp),%eax
 385:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 389:	0f b6 10             	movzbl (%eax),%edx
 38c:	84 d2                	test   %dl,%dl
 38e:	74 09                	je     0x399
 390:	38 ca                	cmp    %cl,%dl
 392:	74 0a                	je     0x39e
 394:	83 c0 01             	add    $0x1,%eax
 397:	eb f0                	jmp    0x389
 399:	b8 00 00 00 00       	mov    $0x0,%eax
 39e:	5d                   	pop    %ebp
 39f:	c3                   	ret    
 3a0:	f3 0f 1e fb          	endbr32 
 3a4:	55                   	push   %ebp
 3a5:	89 e5                	mov    %esp,%ebp
 3a7:	57                   	push   %edi
 3a8:	56                   	push   %esi
 3a9:	53                   	push   %ebx
 3aa:	83 ec 1c             	sub    $0x1c,%esp
 3ad:	8b 7d 08             	mov    0x8(%ebp),%edi
 3b0:	bb 00 00 00 00       	mov    $0x0,%ebx
 3b5:	89 de                	mov    %ebx,%esi
 3b7:	83 c3 01             	add    $0x1,%ebx
 3ba:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3bd:	7d 2e                	jge    0x3ed
 3bf:	83 ec 04             	sub    $0x4,%esp
 3c2:	6a 01                	push   $0x1
 3c4:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3c7:	50                   	push   %eax
 3c8:	6a 00                	push   $0x0
 3ca:	e8 f6 00 00 00       	call   0x4c5
 3cf:	83 c4 10             	add    $0x10,%esp
 3d2:	85 c0                	test   %eax,%eax
 3d4:	7e 17                	jle    0x3ed
 3d6:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3da:	88 04 37             	mov    %al,(%edi,%esi,1)
 3dd:	3c 0a                	cmp    $0xa,%al
 3df:	0f 94 c2             	sete   %dl
 3e2:	3c 0d                	cmp    $0xd,%al
 3e4:	0f 94 c0             	sete   %al
 3e7:	08 c2                	or     %al,%dl
 3e9:	74 ca                	je     0x3b5
 3eb:	89 de                	mov    %ebx,%esi
 3ed:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 3f1:	89 f8                	mov    %edi,%eax
 3f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3f6:	5b                   	pop    %ebx
 3f7:	5e                   	pop    %esi
 3f8:	5f                   	pop    %edi
 3f9:	5d                   	pop    %ebp
 3fa:	c3                   	ret    
 3fb:	f3 0f 1e fb          	endbr32 
 3ff:	55                   	push   %ebp
 400:	89 e5                	mov    %esp,%ebp
 402:	56                   	push   %esi
 403:	53                   	push   %ebx
 404:	83 ec 08             	sub    $0x8,%esp
 407:	6a 00                	push   $0x0
 409:	ff 75 08             	pushl  0x8(%ebp)
 40c:	e8 dc 00 00 00       	call   0x4ed
 411:	83 c4 10             	add    $0x10,%esp
 414:	85 c0                	test   %eax,%eax
 416:	78 24                	js     0x43c
 418:	89 c3                	mov    %eax,%ebx
 41a:	83 ec 08             	sub    $0x8,%esp
 41d:	ff 75 0c             	pushl  0xc(%ebp)
 420:	50                   	push   %eax
 421:	e8 df 00 00 00       	call   0x505
 426:	89 c6                	mov    %eax,%esi
 428:	89 1c 24             	mov    %ebx,(%esp)
 42b:	e8 a5 00 00 00       	call   0x4d5
 430:	83 c4 10             	add    $0x10,%esp
 433:	89 f0                	mov    %esi,%eax
 435:	8d 65 f8             	lea    -0x8(%ebp),%esp
 438:	5b                   	pop    %ebx
 439:	5e                   	pop    %esi
 43a:	5d                   	pop    %ebp
 43b:	c3                   	ret    
 43c:	be ff ff ff ff       	mov    $0xffffffff,%esi
 441:	eb f0                	jmp    0x433
 443:	f3 0f 1e fb          	endbr32 
 447:	55                   	push   %ebp
 448:	89 e5                	mov    %esp,%ebp
 44a:	53                   	push   %ebx
 44b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 44e:	ba 00 00 00 00       	mov    $0x0,%edx
 453:	0f b6 01             	movzbl (%ecx),%eax
 456:	8d 58 d0             	lea    -0x30(%eax),%ebx
 459:	80 fb 09             	cmp    $0x9,%bl
 45c:	77 12                	ja     0x470
 45e:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 461:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 464:	83 c1 01             	add    $0x1,%ecx
 467:	0f be c0             	movsbl %al,%eax
 46a:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 46e:	eb e3                	jmp    0x453
 470:	89 d0                	mov    %edx,%eax
 472:	5b                   	pop    %ebx
 473:	5d                   	pop    %ebp
 474:	c3                   	ret    
 475:	f3 0f 1e fb          	endbr32 
 479:	55                   	push   %ebp
 47a:	89 e5                	mov    %esp,%ebp
 47c:	56                   	push   %esi
 47d:	53                   	push   %ebx
 47e:	8b 75 08             	mov    0x8(%ebp),%esi
 481:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 484:	8b 45 10             	mov    0x10(%ebp),%eax
 487:	89 f2                	mov    %esi,%edx
 489:	8d 58 ff             	lea    -0x1(%eax),%ebx
 48c:	85 c0                	test   %eax,%eax
 48e:	7e 0f                	jle    0x49f
 490:	0f b6 01             	movzbl (%ecx),%eax
 493:	88 02                	mov    %al,(%edx)
 495:	8d 49 01             	lea    0x1(%ecx),%ecx
 498:	8d 52 01             	lea    0x1(%edx),%edx
 49b:	89 d8                	mov    %ebx,%eax
 49d:	eb ea                	jmp    0x489
 49f:	89 f0                	mov    %esi,%eax
 4a1:	5b                   	pop    %ebx
 4a2:	5e                   	pop    %esi
 4a3:	5d                   	pop    %ebp
 4a4:	c3                   	ret    
 4a5:	b8 01 00 00 00       	mov    $0x1,%eax
 4aa:	cd 40                	int    $0x40
 4ac:	c3                   	ret    
 4ad:	b8 02 00 00 00       	mov    $0x2,%eax
 4b2:	cd 40                	int    $0x40
 4b4:	c3                   	ret    
 4b5:	b8 03 00 00 00       	mov    $0x3,%eax
 4ba:	cd 40                	int    $0x40
 4bc:	c3                   	ret    
 4bd:	b8 04 00 00 00       	mov    $0x4,%eax
 4c2:	cd 40                	int    $0x40
 4c4:	c3                   	ret    
 4c5:	b8 05 00 00 00       	mov    $0x5,%eax
 4ca:	cd 40                	int    $0x40
 4cc:	c3                   	ret    
 4cd:	b8 10 00 00 00       	mov    $0x10,%eax
 4d2:	cd 40                	int    $0x40
 4d4:	c3                   	ret    
 4d5:	b8 15 00 00 00       	mov    $0x15,%eax
 4da:	cd 40                	int    $0x40
 4dc:	c3                   	ret    
 4dd:	b8 06 00 00 00       	mov    $0x6,%eax
 4e2:	cd 40                	int    $0x40
 4e4:	c3                   	ret    
 4e5:	b8 07 00 00 00       	mov    $0x7,%eax
 4ea:	cd 40                	int    $0x40
 4ec:	c3                   	ret    
 4ed:	b8 0f 00 00 00       	mov    $0xf,%eax
 4f2:	cd 40                	int    $0x40
 4f4:	c3                   	ret    
 4f5:	b8 11 00 00 00       	mov    $0x11,%eax
 4fa:	cd 40                	int    $0x40
 4fc:	c3                   	ret    
 4fd:	b8 12 00 00 00       	mov    $0x12,%eax
 502:	cd 40                	int    $0x40
 504:	c3                   	ret    
 505:	b8 08 00 00 00       	mov    $0x8,%eax
 50a:	cd 40                	int    $0x40
 50c:	c3                   	ret    
 50d:	b8 13 00 00 00       	mov    $0x13,%eax
 512:	cd 40                	int    $0x40
 514:	c3                   	ret    
 515:	b8 14 00 00 00       	mov    $0x14,%eax
 51a:	cd 40                	int    $0x40
 51c:	c3                   	ret    
 51d:	b8 09 00 00 00       	mov    $0x9,%eax
 522:	cd 40                	int    $0x40
 524:	c3                   	ret    
 525:	b8 0a 00 00 00       	mov    $0xa,%eax
 52a:	cd 40                	int    $0x40
 52c:	c3                   	ret    
 52d:	b8 0b 00 00 00       	mov    $0xb,%eax
 532:	cd 40                	int    $0x40
 534:	c3                   	ret    
 535:	b8 0c 00 00 00       	mov    $0xc,%eax
 53a:	cd 40                	int    $0x40
 53c:	c3                   	ret    
 53d:	b8 0d 00 00 00       	mov    $0xd,%eax
 542:	cd 40                	int    $0x40
 544:	c3                   	ret    
 545:	b8 0e 00 00 00       	mov    $0xe,%eax
 54a:	cd 40                	int    $0x40
 54c:	c3                   	ret    
 54d:	b8 16 00 00 00       	mov    $0x16,%eax
 552:	cd 40                	int    $0x40
 554:	c3                   	ret    
 555:	b8 17 00 00 00       	mov    $0x17,%eax
 55a:	cd 40                	int    $0x40
 55c:	c3                   	ret    
 55d:	55                   	push   %ebp
 55e:	89 e5                	mov    %esp,%ebp
 560:	83 ec 1c             	sub    $0x1c,%esp
 563:	88 55 f4             	mov    %dl,-0xc(%ebp)
 566:	6a 01                	push   $0x1
 568:	8d 55 f4             	lea    -0xc(%ebp),%edx
 56b:	52                   	push   %edx
 56c:	50                   	push   %eax
 56d:	e8 5b ff ff ff       	call   0x4cd
 572:	83 c4 10             	add    $0x10,%esp
 575:	c9                   	leave  
 576:	c3                   	ret    
 577:	55                   	push   %ebp
 578:	89 e5                	mov    %esp,%ebp
 57a:	57                   	push   %edi
 57b:	56                   	push   %esi
 57c:	53                   	push   %ebx
 57d:	83 ec 2c             	sub    $0x2c,%esp
 580:	89 45 d0             	mov    %eax,-0x30(%ebp)
 583:	89 d6                	mov    %edx,%esi
 585:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 589:	0f 95 c2             	setne  %dl
 58c:	89 f0                	mov    %esi,%eax
 58e:	c1 e8 1f             	shr    $0x1f,%eax
 591:	84 c2                	test   %al,%dl
 593:	74 42                	je     0x5d7
 595:	f7 de                	neg    %esi
 597:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 59e:	bb 00 00 00 00       	mov    $0x0,%ebx
 5a3:	89 f0                	mov    %esi,%eax
 5a5:	ba 00 00 00 00       	mov    $0x0,%edx
 5aa:	f7 f1                	div    %ecx
 5ac:	89 df                	mov    %ebx,%edi
 5ae:	83 c3 01             	add    $0x1,%ebx
 5b1:	0f b6 92 10 09 00 00 	movzbl 0x910(%edx),%edx
 5b8:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 5bc:	89 f2                	mov    %esi,%edx
 5be:	89 c6                	mov    %eax,%esi
 5c0:	39 d1                	cmp    %edx,%ecx
 5c2:	76 df                	jbe    0x5a3
 5c4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 5c8:	74 2f                	je     0x5f9
 5ca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 5cf:	8d 5f 02             	lea    0x2(%edi),%ebx
 5d2:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5d5:	eb 15                	jmp    0x5ec
 5d7:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 5de:	eb be                	jmp    0x59e
 5e0:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 5e5:	89 f0                	mov    %esi,%eax
 5e7:	e8 71 ff ff ff       	call   0x55d
 5ec:	83 eb 01             	sub    $0x1,%ebx
 5ef:	79 ef                	jns    0x5e0
 5f1:	83 c4 2c             	add    $0x2c,%esp
 5f4:	5b                   	pop    %ebx
 5f5:	5e                   	pop    %esi
 5f6:	5f                   	pop    %edi
 5f7:	5d                   	pop    %ebp
 5f8:	c3                   	ret    
 5f9:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5fc:	eb ee                	jmp    0x5ec
 5fe:	f3 0f 1e fb          	endbr32 
 602:	55                   	push   %ebp
 603:	89 e5                	mov    %esp,%ebp
 605:	57                   	push   %edi
 606:	56                   	push   %esi
 607:	53                   	push   %ebx
 608:	83 ec 1c             	sub    $0x1c,%esp
 60b:	8d 45 10             	lea    0x10(%ebp),%eax
 60e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 611:	be 00 00 00 00       	mov    $0x0,%esi
 616:	bb 00 00 00 00       	mov    $0x0,%ebx
 61b:	eb 14                	jmp    0x631
 61d:	89 fa                	mov    %edi,%edx
 61f:	8b 45 08             	mov    0x8(%ebp),%eax
 622:	e8 36 ff ff ff       	call   0x55d
 627:	eb 05                	jmp    0x62e
 629:	83 fe 25             	cmp    $0x25,%esi
 62c:	74 25                	je     0x653
 62e:	83 c3 01             	add    $0x1,%ebx
 631:	8b 45 0c             	mov    0xc(%ebp),%eax
 634:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 638:	84 c0                	test   %al,%al
 63a:	0f 84 23 01 00 00    	je     0x763
 640:	0f be f8             	movsbl %al,%edi
 643:	0f b6 c0             	movzbl %al,%eax
 646:	85 f6                	test   %esi,%esi
 648:	75 df                	jne    0x629
 64a:	83 f8 25             	cmp    $0x25,%eax
 64d:	75 ce                	jne    0x61d
 64f:	89 c6                	mov    %eax,%esi
 651:	eb db                	jmp    0x62e
 653:	83 f8 64             	cmp    $0x64,%eax
 656:	74 49                	je     0x6a1
 658:	83 f8 78             	cmp    $0x78,%eax
 65b:	0f 94 c1             	sete   %cl
 65e:	83 f8 70             	cmp    $0x70,%eax
 661:	0f 94 c2             	sete   %dl
 664:	08 d1                	or     %dl,%cl
 666:	75 63                	jne    0x6cb
 668:	83 f8 73             	cmp    $0x73,%eax
 66b:	0f 84 84 00 00 00    	je     0x6f5
 671:	83 f8 63             	cmp    $0x63,%eax
 674:	0f 84 b7 00 00 00    	je     0x731
 67a:	83 f8 25             	cmp    $0x25,%eax
 67d:	0f 84 cc 00 00 00    	je     0x74f
 683:	ba 25 00 00 00       	mov    $0x25,%edx
 688:	8b 45 08             	mov    0x8(%ebp),%eax
 68b:	e8 cd fe ff ff       	call   0x55d
 690:	89 fa                	mov    %edi,%edx
 692:	8b 45 08             	mov    0x8(%ebp),%eax
 695:	e8 c3 fe ff ff       	call   0x55d
 69a:	be 00 00 00 00       	mov    $0x0,%esi
 69f:	eb 8d                	jmp    0x62e
 6a1:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6a4:	8b 17                	mov    (%edi),%edx
 6a6:	83 ec 0c             	sub    $0xc,%esp
 6a9:	6a 01                	push   $0x1
 6ab:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6b0:	8b 45 08             	mov    0x8(%ebp),%eax
 6b3:	e8 bf fe ff ff       	call   0x577
 6b8:	83 c7 04             	add    $0x4,%edi
 6bb:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6be:	83 c4 10             	add    $0x10,%esp
 6c1:	be 00 00 00 00       	mov    $0x0,%esi
 6c6:	e9 63 ff ff ff       	jmp    0x62e
 6cb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6ce:	8b 17                	mov    (%edi),%edx
 6d0:	83 ec 0c             	sub    $0xc,%esp
 6d3:	6a 00                	push   $0x0
 6d5:	b9 10 00 00 00       	mov    $0x10,%ecx
 6da:	8b 45 08             	mov    0x8(%ebp),%eax
 6dd:	e8 95 fe ff ff       	call   0x577
 6e2:	83 c7 04             	add    $0x4,%edi
 6e5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6e8:	83 c4 10             	add    $0x10,%esp
 6eb:	be 00 00 00 00       	mov    $0x0,%esi
 6f0:	e9 39 ff ff ff       	jmp    0x62e
 6f5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6f8:	8b 30                	mov    (%eax),%esi
 6fa:	83 c0 04             	add    $0x4,%eax
 6fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 700:	85 f6                	test   %esi,%esi
 702:	75 28                	jne    0x72c
 704:	be 06 09 00 00       	mov    $0x906,%esi
 709:	8b 7d 08             	mov    0x8(%ebp),%edi
 70c:	eb 0d                	jmp    0x71b
 70e:	0f be d2             	movsbl %dl,%edx
 711:	89 f8                	mov    %edi,%eax
 713:	e8 45 fe ff ff       	call   0x55d
 718:	83 c6 01             	add    $0x1,%esi
 71b:	0f b6 16             	movzbl (%esi),%edx
 71e:	84 d2                	test   %dl,%dl
 720:	75 ec                	jne    0x70e
 722:	be 00 00 00 00       	mov    $0x0,%esi
 727:	e9 02 ff ff ff       	jmp    0x62e
 72c:	8b 7d 08             	mov    0x8(%ebp),%edi
 72f:	eb ea                	jmp    0x71b
 731:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 734:	0f be 17             	movsbl (%edi),%edx
 737:	8b 45 08             	mov    0x8(%ebp),%eax
 73a:	e8 1e fe ff ff       	call   0x55d
 73f:	83 c7 04             	add    $0x4,%edi
 742:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 745:	be 00 00 00 00       	mov    $0x0,%esi
 74a:	e9 df fe ff ff       	jmp    0x62e
 74f:	89 fa                	mov    %edi,%edx
 751:	8b 45 08             	mov    0x8(%ebp),%eax
 754:	e8 04 fe ff ff       	call   0x55d
 759:	be 00 00 00 00       	mov    $0x0,%esi
 75e:	e9 cb fe ff ff       	jmp    0x62e
 763:	8d 65 f4             	lea    -0xc(%ebp),%esp
 766:	5b                   	pop    %ebx
 767:	5e                   	pop    %esi
 768:	5f                   	pop    %edi
 769:	5d                   	pop    %ebp
 76a:	c3                   	ret    
 76b:	f3 0f 1e fb          	endbr32 
 76f:	55                   	push   %ebp
 770:	89 e5                	mov    %esp,%ebp
 772:	57                   	push   %edi
 773:	56                   	push   %esi
 774:	53                   	push   %ebx
 775:	8b 5d 08             	mov    0x8(%ebp),%ebx
 778:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 77b:	a1 28 0c 00 00       	mov    0xc28,%eax
 780:	eb 02                	jmp    0x784
 782:	89 d0                	mov    %edx,%eax
 784:	39 c8                	cmp    %ecx,%eax
 786:	73 04                	jae    0x78c
 788:	39 08                	cmp    %ecx,(%eax)
 78a:	77 12                	ja     0x79e
 78c:	8b 10                	mov    (%eax),%edx
 78e:	39 c2                	cmp    %eax,%edx
 790:	77 f0                	ja     0x782
 792:	39 c8                	cmp    %ecx,%eax
 794:	72 08                	jb     0x79e
 796:	39 ca                	cmp    %ecx,%edx
 798:	77 04                	ja     0x79e
 79a:	89 d0                	mov    %edx,%eax
 79c:	eb e6                	jmp    0x784
 79e:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7a1:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7a4:	8b 10                	mov    (%eax),%edx
 7a6:	39 d7                	cmp    %edx,%edi
 7a8:	74 19                	je     0x7c3
 7aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7ad:	8b 50 04             	mov    0x4(%eax),%edx
 7b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7b3:	39 ce                	cmp    %ecx,%esi
 7b5:	74 1b                	je     0x7d2
 7b7:	89 08                	mov    %ecx,(%eax)
 7b9:	a3 28 0c 00 00       	mov    %eax,0xc28
 7be:	5b                   	pop    %ebx
 7bf:	5e                   	pop    %esi
 7c0:	5f                   	pop    %edi
 7c1:	5d                   	pop    %ebp
 7c2:	c3                   	ret    
 7c3:	03 72 04             	add    0x4(%edx),%esi
 7c6:	89 73 fc             	mov    %esi,-0x4(%ebx)
 7c9:	8b 10                	mov    (%eax),%edx
 7cb:	8b 12                	mov    (%edx),%edx
 7cd:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7d0:	eb db                	jmp    0x7ad
 7d2:	03 53 fc             	add    -0x4(%ebx),%edx
 7d5:	89 50 04             	mov    %edx,0x4(%eax)
 7d8:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7db:	89 10                	mov    %edx,(%eax)
 7dd:	eb da                	jmp    0x7b9
 7df:	55                   	push   %ebp
 7e0:	89 e5                	mov    %esp,%ebp
 7e2:	53                   	push   %ebx
 7e3:	83 ec 04             	sub    $0x4,%esp
 7e6:	89 c3                	mov    %eax,%ebx
 7e8:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 7ed:	77 05                	ja     0x7f4
 7ef:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7f4:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7fb:	83 ec 0c             	sub    $0xc,%esp
 7fe:	50                   	push   %eax
 7ff:	e8 31 fd ff ff       	call   0x535
 804:	83 c4 10             	add    $0x10,%esp
 807:	83 f8 ff             	cmp    $0xffffffff,%eax
 80a:	74 1c                	je     0x828
 80c:	89 58 04             	mov    %ebx,0x4(%eax)
 80f:	83 c0 08             	add    $0x8,%eax
 812:	83 ec 0c             	sub    $0xc,%esp
 815:	50                   	push   %eax
 816:	e8 50 ff ff ff       	call   0x76b
 81b:	a1 28 0c 00 00       	mov    0xc28,%eax
 820:	83 c4 10             	add    $0x10,%esp
 823:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 826:	c9                   	leave  
 827:	c3                   	ret    
 828:	b8 00 00 00 00       	mov    $0x0,%eax
 82d:	eb f4                	jmp    0x823
 82f:	f3 0f 1e fb          	endbr32 
 833:	55                   	push   %ebp
 834:	89 e5                	mov    %esp,%ebp
 836:	53                   	push   %ebx
 837:	83 ec 04             	sub    $0x4,%esp
 83a:	8b 45 08             	mov    0x8(%ebp),%eax
 83d:	8d 58 07             	lea    0x7(%eax),%ebx
 840:	c1 eb 03             	shr    $0x3,%ebx
 843:	83 c3 01             	add    $0x1,%ebx
 846:	8b 0d 28 0c 00 00    	mov    0xc28,%ecx
 84c:	85 c9                	test   %ecx,%ecx
 84e:	74 04                	je     0x854
 850:	8b 01                	mov    (%ecx),%eax
 852:	eb 4b                	jmp    0x89f
 854:	c7 05 28 0c 00 00 2c 	movl   $0xc2c,0xc28
 85b:	0c 00 00 
 85e:	c7 05 2c 0c 00 00 2c 	movl   $0xc2c,0xc2c
 865:	0c 00 00 
 868:	c7 05 30 0c 00 00 00 	movl   $0x0,0xc30
 86f:	00 00 00 
 872:	b9 2c 0c 00 00       	mov    $0xc2c,%ecx
 877:	eb d7                	jmp    0x850
 879:	74 1a                	je     0x895
 87b:	29 da                	sub    %ebx,%edx
 87d:	89 50 04             	mov    %edx,0x4(%eax)
 880:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 883:	89 58 04             	mov    %ebx,0x4(%eax)
 886:	89 0d 28 0c 00 00    	mov    %ecx,0xc28
 88c:	83 c0 08             	add    $0x8,%eax
 88f:	83 c4 04             	add    $0x4,%esp
 892:	5b                   	pop    %ebx
 893:	5d                   	pop    %ebp
 894:	c3                   	ret    
 895:	8b 10                	mov    (%eax),%edx
 897:	89 11                	mov    %edx,(%ecx)
 899:	eb eb                	jmp    0x886
 89b:	89 c1                	mov    %eax,%ecx
 89d:	8b 00                	mov    (%eax),%eax
 89f:	8b 50 04             	mov    0x4(%eax),%edx
 8a2:	39 da                	cmp    %ebx,%edx
 8a4:	73 d3                	jae    0x879
 8a6:	39 05 28 0c 00 00    	cmp    %eax,0xc28
 8ac:	75 ed                	jne    0x89b
 8ae:	89 d8                	mov    %ebx,%eax
 8b0:	e8 2a ff ff ff       	call   0x7df
 8b5:	85 c0                	test   %eax,%eax
 8b7:	75 e2                	jne    0x89b
 8b9:	eb d4                	jmp    0x88f
