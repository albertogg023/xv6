
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
  53:	68 10 0c 00 00       	push   $0xc10
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
  7c:	05 10 0c 00 00       	add    $0xc10,%eax
  81:	50                   	push   %eax
  82:	e8 d9 02 00 00       	call   0x360
  87:	83 c4 10             	add    $0x10,%esp
  8a:	bb 10 0c 00 00       	mov    $0xc10,%ebx
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
 120:	68 dc 08 00 00       	push   $0x8dc
 125:	6a 01                	push   $0x1
 127:	e8 ca 04 00 00       	call   0x5f6
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
 147:	68 b4 08 00 00       	push   $0x8b4
 14c:	6a 02                	push   $0x2
 14e:	e8 a3 04 00 00       	call   0x5f6
 153:	83 c4 10             	add    $0x10,%esp
 156:	eb e3                	jmp    0x13b
 158:	83 ec 04             	sub    $0x4,%esp
 15b:	53                   	push   %ebx
 15c:	68 c8 08 00 00       	push   $0x8c8
 161:	6a 02                	push   $0x2
 163:	e8 8e 04 00 00       	call   0x5f6
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
 18e:	68 e9 08 00 00       	push   $0x8e9
 193:	6a 01                	push   $0x1
 195:	e8 5c 04 00 00       	call   0x5f6
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
 1d4:	68 c8 08 00 00       	push   $0x8c8
 1d9:	6a 01                	push   $0x1
 1db:	e8 16 04 00 00       	call   0x5f6
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
 287:	68 dc 08 00 00       	push   $0x8dc
 28c:	6a 01                	push   $0x1
 28e:	e8 63 03 00 00       	call   0x5f6
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
 2c7:	68 fc 08 00 00       	push   $0x8fc
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
 555:	55                   	push   %ebp
 556:	89 e5                	mov    %esp,%ebp
 558:	83 ec 1c             	sub    $0x1c,%esp
 55b:	88 55 f4             	mov    %dl,-0xc(%ebp)
 55e:	6a 01                	push   $0x1
 560:	8d 55 f4             	lea    -0xc(%ebp),%edx
 563:	52                   	push   %edx
 564:	50                   	push   %eax
 565:	e8 63 ff ff ff       	call   0x4cd
 56a:	83 c4 10             	add    $0x10,%esp
 56d:	c9                   	leave  
 56e:	c3                   	ret    
 56f:	55                   	push   %ebp
 570:	89 e5                	mov    %esp,%ebp
 572:	57                   	push   %edi
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
 575:	83 ec 2c             	sub    $0x2c,%esp
 578:	89 45 d0             	mov    %eax,-0x30(%ebp)
 57b:	89 d6                	mov    %edx,%esi
 57d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 581:	0f 95 c2             	setne  %dl
 584:	89 f0                	mov    %esi,%eax
 586:	c1 e8 1f             	shr    $0x1f,%eax
 589:	84 c2                	test   %al,%dl
 58b:	74 42                	je     0x5cf
 58d:	f7 de                	neg    %esi
 58f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 596:	bb 00 00 00 00       	mov    $0x0,%ebx
 59b:	89 f0                	mov    %esi,%eax
 59d:	ba 00 00 00 00       	mov    $0x0,%edx
 5a2:	f7 f1                	div    %ecx
 5a4:	89 df                	mov    %ebx,%edi
 5a6:	83 c3 01             	add    $0x1,%ebx
 5a9:	0f b6 92 08 09 00 00 	movzbl 0x908(%edx),%edx
 5b0:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 5b4:	89 f2                	mov    %esi,%edx
 5b6:	89 c6                	mov    %eax,%esi
 5b8:	39 d1                	cmp    %edx,%ecx
 5ba:	76 df                	jbe    0x59b
 5bc:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 5c0:	74 2f                	je     0x5f1
 5c2:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 5c7:	8d 5f 02             	lea    0x2(%edi),%ebx
 5ca:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5cd:	eb 15                	jmp    0x5e4
 5cf:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 5d6:	eb be                	jmp    0x596
 5d8:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 5dd:	89 f0                	mov    %esi,%eax
 5df:	e8 71 ff ff ff       	call   0x555
 5e4:	83 eb 01             	sub    $0x1,%ebx
 5e7:	79 ef                	jns    0x5d8
 5e9:	83 c4 2c             	add    $0x2c,%esp
 5ec:	5b                   	pop    %ebx
 5ed:	5e                   	pop    %esi
 5ee:	5f                   	pop    %edi
 5ef:	5d                   	pop    %ebp
 5f0:	c3                   	ret    
 5f1:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5f4:	eb ee                	jmp    0x5e4
 5f6:	f3 0f 1e fb          	endbr32 
 5fa:	55                   	push   %ebp
 5fb:	89 e5                	mov    %esp,%ebp
 5fd:	57                   	push   %edi
 5fe:	56                   	push   %esi
 5ff:	53                   	push   %ebx
 600:	83 ec 1c             	sub    $0x1c,%esp
 603:	8d 45 10             	lea    0x10(%ebp),%eax
 606:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 609:	be 00 00 00 00       	mov    $0x0,%esi
 60e:	bb 00 00 00 00       	mov    $0x0,%ebx
 613:	eb 14                	jmp    0x629
 615:	89 fa                	mov    %edi,%edx
 617:	8b 45 08             	mov    0x8(%ebp),%eax
 61a:	e8 36 ff ff ff       	call   0x555
 61f:	eb 05                	jmp    0x626
 621:	83 fe 25             	cmp    $0x25,%esi
 624:	74 25                	je     0x64b
 626:	83 c3 01             	add    $0x1,%ebx
 629:	8b 45 0c             	mov    0xc(%ebp),%eax
 62c:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 630:	84 c0                	test   %al,%al
 632:	0f 84 23 01 00 00    	je     0x75b
 638:	0f be f8             	movsbl %al,%edi
 63b:	0f b6 c0             	movzbl %al,%eax
 63e:	85 f6                	test   %esi,%esi
 640:	75 df                	jne    0x621
 642:	83 f8 25             	cmp    $0x25,%eax
 645:	75 ce                	jne    0x615
 647:	89 c6                	mov    %eax,%esi
 649:	eb db                	jmp    0x626
 64b:	83 f8 64             	cmp    $0x64,%eax
 64e:	74 49                	je     0x699
 650:	83 f8 78             	cmp    $0x78,%eax
 653:	0f 94 c1             	sete   %cl
 656:	83 f8 70             	cmp    $0x70,%eax
 659:	0f 94 c2             	sete   %dl
 65c:	08 d1                	or     %dl,%cl
 65e:	75 63                	jne    0x6c3
 660:	83 f8 73             	cmp    $0x73,%eax
 663:	0f 84 84 00 00 00    	je     0x6ed
 669:	83 f8 63             	cmp    $0x63,%eax
 66c:	0f 84 b7 00 00 00    	je     0x729
 672:	83 f8 25             	cmp    $0x25,%eax
 675:	0f 84 cc 00 00 00    	je     0x747
 67b:	ba 25 00 00 00       	mov    $0x25,%edx
 680:	8b 45 08             	mov    0x8(%ebp),%eax
 683:	e8 cd fe ff ff       	call   0x555
 688:	89 fa                	mov    %edi,%edx
 68a:	8b 45 08             	mov    0x8(%ebp),%eax
 68d:	e8 c3 fe ff ff       	call   0x555
 692:	be 00 00 00 00       	mov    $0x0,%esi
 697:	eb 8d                	jmp    0x626
 699:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 69c:	8b 17                	mov    (%edi),%edx
 69e:	83 ec 0c             	sub    $0xc,%esp
 6a1:	6a 01                	push   $0x1
 6a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6a8:	8b 45 08             	mov    0x8(%ebp),%eax
 6ab:	e8 bf fe ff ff       	call   0x56f
 6b0:	83 c7 04             	add    $0x4,%edi
 6b3:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6b6:	83 c4 10             	add    $0x10,%esp
 6b9:	be 00 00 00 00       	mov    $0x0,%esi
 6be:	e9 63 ff ff ff       	jmp    0x626
 6c3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6c6:	8b 17                	mov    (%edi),%edx
 6c8:	83 ec 0c             	sub    $0xc,%esp
 6cb:	6a 00                	push   $0x0
 6cd:	b9 10 00 00 00       	mov    $0x10,%ecx
 6d2:	8b 45 08             	mov    0x8(%ebp),%eax
 6d5:	e8 95 fe ff ff       	call   0x56f
 6da:	83 c7 04             	add    $0x4,%edi
 6dd:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6e0:	83 c4 10             	add    $0x10,%esp
 6e3:	be 00 00 00 00       	mov    $0x0,%esi
 6e8:	e9 39 ff ff ff       	jmp    0x626
 6ed:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6f0:	8b 30                	mov    (%eax),%esi
 6f2:	83 c0 04             	add    $0x4,%eax
 6f5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 6f8:	85 f6                	test   %esi,%esi
 6fa:	75 28                	jne    0x724
 6fc:	be fe 08 00 00       	mov    $0x8fe,%esi
 701:	8b 7d 08             	mov    0x8(%ebp),%edi
 704:	eb 0d                	jmp    0x713
 706:	0f be d2             	movsbl %dl,%edx
 709:	89 f8                	mov    %edi,%eax
 70b:	e8 45 fe ff ff       	call   0x555
 710:	83 c6 01             	add    $0x1,%esi
 713:	0f b6 16             	movzbl (%esi),%edx
 716:	84 d2                	test   %dl,%dl
 718:	75 ec                	jne    0x706
 71a:	be 00 00 00 00       	mov    $0x0,%esi
 71f:	e9 02 ff ff ff       	jmp    0x626
 724:	8b 7d 08             	mov    0x8(%ebp),%edi
 727:	eb ea                	jmp    0x713
 729:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 72c:	0f be 17             	movsbl (%edi),%edx
 72f:	8b 45 08             	mov    0x8(%ebp),%eax
 732:	e8 1e fe ff ff       	call   0x555
 737:	83 c7 04             	add    $0x4,%edi
 73a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 73d:	be 00 00 00 00       	mov    $0x0,%esi
 742:	e9 df fe ff ff       	jmp    0x626
 747:	89 fa                	mov    %edi,%edx
 749:	8b 45 08             	mov    0x8(%ebp),%eax
 74c:	e8 04 fe ff ff       	call   0x555
 751:	be 00 00 00 00       	mov    $0x0,%esi
 756:	e9 cb fe ff ff       	jmp    0x626
 75b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 75e:	5b                   	pop    %ebx
 75f:	5e                   	pop    %esi
 760:	5f                   	pop    %edi
 761:	5d                   	pop    %ebp
 762:	c3                   	ret    
 763:	f3 0f 1e fb          	endbr32 
 767:	55                   	push   %ebp
 768:	89 e5                	mov    %esp,%ebp
 76a:	57                   	push   %edi
 76b:	56                   	push   %esi
 76c:	53                   	push   %ebx
 76d:	8b 5d 08             	mov    0x8(%ebp),%ebx
 770:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 773:	a1 20 0c 00 00       	mov    0xc20,%eax
 778:	eb 02                	jmp    0x77c
 77a:	89 d0                	mov    %edx,%eax
 77c:	39 c8                	cmp    %ecx,%eax
 77e:	73 04                	jae    0x784
 780:	39 08                	cmp    %ecx,(%eax)
 782:	77 12                	ja     0x796
 784:	8b 10                	mov    (%eax),%edx
 786:	39 c2                	cmp    %eax,%edx
 788:	77 f0                	ja     0x77a
 78a:	39 c8                	cmp    %ecx,%eax
 78c:	72 08                	jb     0x796
 78e:	39 ca                	cmp    %ecx,%edx
 790:	77 04                	ja     0x796
 792:	89 d0                	mov    %edx,%eax
 794:	eb e6                	jmp    0x77c
 796:	8b 73 fc             	mov    -0x4(%ebx),%esi
 799:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 79c:	8b 10                	mov    (%eax),%edx
 79e:	39 d7                	cmp    %edx,%edi
 7a0:	74 19                	je     0x7bb
 7a2:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7a5:	8b 50 04             	mov    0x4(%eax),%edx
 7a8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7ab:	39 ce                	cmp    %ecx,%esi
 7ad:	74 1b                	je     0x7ca
 7af:	89 08                	mov    %ecx,(%eax)
 7b1:	a3 20 0c 00 00       	mov    %eax,0xc20
 7b6:	5b                   	pop    %ebx
 7b7:	5e                   	pop    %esi
 7b8:	5f                   	pop    %edi
 7b9:	5d                   	pop    %ebp
 7ba:	c3                   	ret    
 7bb:	03 72 04             	add    0x4(%edx),%esi
 7be:	89 73 fc             	mov    %esi,-0x4(%ebx)
 7c1:	8b 10                	mov    (%eax),%edx
 7c3:	8b 12                	mov    (%edx),%edx
 7c5:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7c8:	eb db                	jmp    0x7a5
 7ca:	03 53 fc             	add    -0x4(%ebx),%edx
 7cd:	89 50 04             	mov    %edx,0x4(%eax)
 7d0:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7d3:	89 10                	mov    %edx,(%eax)
 7d5:	eb da                	jmp    0x7b1
 7d7:	55                   	push   %ebp
 7d8:	89 e5                	mov    %esp,%ebp
 7da:	53                   	push   %ebx
 7db:	83 ec 04             	sub    $0x4,%esp
 7de:	89 c3                	mov    %eax,%ebx
 7e0:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 7e5:	77 05                	ja     0x7ec
 7e7:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7ec:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7f3:	83 ec 0c             	sub    $0xc,%esp
 7f6:	50                   	push   %eax
 7f7:	e8 39 fd ff ff       	call   0x535
 7fc:	83 c4 10             	add    $0x10,%esp
 7ff:	83 f8 ff             	cmp    $0xffffffff,%eax
 802:	74 1c                	je     0x820
 804:	89 58 04             	mov    %ebx,0x4(%eax)
 807:	83 c0 08             	add    $0x8,%eax
 80a:	83 ec 0c             	sub    $0xc,%esp
 80d:	50                   	push   %eax
 80e:	e8 50 ff ff ff       	call   0x763
 813:	a1 20 0c 00 00       	mov    0xc20,%eax
 818:	83 c4 10             	add    $0x10,%esp
 81b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 81e:	c9                   	leave  
 81f:	c3                   	ret    
 820:	b8 00 00 00 00       	mov    $0x0,%eax
 825:	eb f4                	jmp    0x81b
 827:	f3 0f 1e fb          	endbr32 
 82b:	55                   	push   %ebp
 82c:	89 e5                	mov    %esp,%ebp
 82e:	53                   	push   %ebx
 82f:	83 ec 04             	sub    $0x4,%esp
 832:	8b 45 08             	mov    0x8(%ebp),%eax
 835:	8d 58 07             	lea    0x7(%eax),%ebx
 838:	c1 eb 03             	shr    $0x3,%ebx
 83b:	83 c3 01             	add    $0x1,%ebx
 83e:	8b 0d 20 0c 00 00    	mov    0xc20,%ecx
 844:	85 c9                	test   %ecx,%ecx
 846:	74 04                	je     0x84c
 848:	8b 01                	mov    (%ecx),%eax
 84a:	eb 4b                	jmp    0x897
 84c:	c7 05 20 0c 00 00 24 	movl   $0xc24,0xc20
 853:	0c 00 00 
 856:	c7 05 24 0c 00 00 24 	movl   $0xc24,0xc24
 85d:	0c 00 00 
 860:	c7 05 28 0c 00 00 00 	movl   $0x0,0xc28
 867:	00 00 00 
 86a:	b9 24 0c 00 00       	mov    $0xc24,%ecx
 86f:	eb d7                	jmp    0x848
 871:	74 1a                	je     0x88d
 873:	29 da                	sub    %ebx,%edx
 875:	89 50 04             	mov    %edx,0x4(%eax)
 878:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 87b:	89 58 04             	mov    %ebx,0x4(%eax)
 87e:	89 0d 20 0c 00 00    	mov    %ecx,0xc20
 884:	83 c0 08             	add    $0x8,%eax
 887:	83 c4 04             	add    $0x4,%esp
 88a:	5b                   	pop    %ebx
 88b:	5d                   	pop    %ebp
 88c:	c3                   	ret    
 88d:	8b 10                	mov    (%eax),%edx
 88f:	89 11                	mov    %edx,(%ecx)
 891:	eb eb                	jmp    0x87e
 893:	89 c1                	mov    %eax,%ecx
 895:	8b 00                	mov    (%eax),%eax
 897:	8b 50 04             	mov    0x4(%eax),%edx
 89a:	39 da                	cmp    %ebx,%edx
 89c:	73 d3                	jae    0x871
 89e:	39 05 20 0c 00 00    	cmp    %eax,0xc20
 8a4:	75 ed                	jne    0x893
 8a6:	89 d8                	mov    %ebx,%eax
 8a8:	e8 2a ff ff ff       	call   0x7d7
 8ad:	85 c0                	test   %eax,%eax
 8af:	75 e2                	jne    0x893
 8b1:	eb d4                	jmp    0x887
