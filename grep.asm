
_grep:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	57                   	push   %edi
   8:	56                   	push   %esi
   9:	53                   	push   %ebx
   a:	83 ec 0c             	sub    $0xc,%esp
   d:	8b 75 08             	mov    0x8(%ebp),%esi
  10:	8b 7d 0c             	mov    0xc(%ebp),%edi
  13:	8b 5d 10             	mov    0x10(%ebp),%ebx
  16:	83 ec 08             	sub    $0x8,%esp
  19:	53                   	push   %ebx
  1a:	57                   	push   %edi
  1b:	e8 2c 00 00 00       	call   0x4c
  20:	83 c4 10             	add    $0x10,%esp
  23:	85 c0                	test   %eax,%eax
  25:	75 18                	jne    0x3f
  27:	0f b6 13             	movzbl (%ebx),%edx
  2a:	84 d2                	test   %dl,%dl
  2c:	74 16                	je     0x44
  2e:	83 c3 01             	add    $0x1,%ebx
  31:	0f be d2             	movsbl %dl,%edx
  34:	39 f2                	cmp    %esi,%edx
  36:	74 de                	je     0x16
  38:	83 fe 2e             	cmp    $0x2e,%esi
  3b:	74 d9                	je     0x16
  3d:	eb 05                	jmp    0x44
  3f:	b8 01 00 00 00       	mov    $0x1,%eax
  44:	8d 65 f4             	lea    -0xc(%ebp),%esp
  47:	5b                   	pop    %ebx
  48:	5e                   	pop    %esi
  49:	5f                   	pop    %edi
  4a:	5d                   	pop    %ebp
  4b:	c3                   	ret    
  4c:	f3 0f 1e fb          	endbr32 
  50:	55                   	push   %ebp
  51:	89 e5                	mov    %esp,%ebp
  53:	83 ec 08             	sub    $0x8,%esp
  56:	8b 55 08             	mov    0x8(%ebp),%edx
  59:	0f b6 02             	movzbl (%edx),%eax
  5c:	84 c0                	test   %al,%al
  5e:	74 68                	je     0xc8
  60:	0f b6 4a 01          	movzbl 0x1(%edx),%ecx
  64:	80 f9 2a             	cmp    $0x2a,%cl
  67:	74 1d                	je     0x86
  69:	3c 24                	cmp    $0x24,%al
  6b:	74 31                	je     0x9e
  6d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  70:	0f b6 09             	movzbl (%ecx),%ecx
  73:	84 c9                	test   %cl,%cl
  75:	74 58                	je     0xcf
  77:	3c 2e                	cmp    $0x2e,%al
  79:	74 35                	je     0xb0
  7b:	38 c8                	cmp    %cl,%al
  7d:	74 31                	je     0xb0
  7f:	b8 00 00 00 00       	mov    $0x0,%eax
  84:	eb 47                	jmp    0xcd
  86:	83 ec 04             	sub    $0x4,%esp
  89:	ff 75 0c             	pushl  0xc(%ebp)
  8c:	83 c2 02             	add    $0x2,%edx
  8f:	52                   	push   %edx
  90:	0f be c0             	movsbl %al,%eax
  93:	50                   	push   %eax
  94:	e8 67 ff ff ff       	call   0x0
  99:	83 c4 10             	add    $0x10,%esp
  9c:	eb 2f                	jmp    0xcd
  9e:	84 c9                	test   %cl,%cl
  a0:	75 cb                	jne    0x6d
  a2:	8b 45 0c             	mov    0xc(%ebp),%eax
  a5:	80 38 00             	cmpb   $0x0,(%eax)
  a8:	0f 94 c0             	sete   %al
  ab:	0f b6 c0             	movzbl %al,%eax
  ae:	eb 1d                	jmp    0xcd
  b0:	83 ec 08             	sub    $0x8,%esp
  b3:	8b 45 0c             	mov    0xc(%ebp),%eax
  b6:	83 c0 01             	add    $0x1,%eax
  b9:	50                   	push   %eax
  ba:	83 c2 01             	add    $0x1,%edx
  bd:	52                   	push   %edx
  be:	e8 89 ff ff ff       	call   0x4c
  c3:	83 c4 10             	add    $0x10,%esp
  c6:	eb 05                	jmp    0xcd
  c8:	b8 01 00 00 00       	mov    $0x1,%eax
  cd:	c9                   	leave  
  ce:	c3                   	ret    
  cf:	b8 00 00 00 00       	mov    $0x0,%eax
  d4:	eb f7                	jmp    0xcd
  d6:	f3 0f 1e fb          	endbr32 
  da:	55                   	push   %ebp
  db:	89 e5                	mov    %esp,%ebp
  dd:	56                   	push   %esi
  de:	53                   	push   %ebx
  df:	8b 75 08             	mov    0x8(%ebp),%esi
  e2:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  e5:	80 3e 5e             	cmpb   $0x5e,(%esi)
  e8:	75 14                	jne    0xfe
  ea:	83 ec 08             	sub    $0x8,%esp
  ed:	53                   	push   %ebx
  ee:	83 c6 01             	add    $0x1,%esi
  f1:	56                   	push   %esi
  f2:	e8 55 ff ff ff       	call   0x4c
  f7:	83 c4 10             	add    $0x10,%esp
  fa:	eb 22                	jmp    0x11e
  fc:	89 d3                	mov    %edx,%ebx
  fe:	83 ec 08             	sub    $0x8,%esp
 101:	53                   	push   %ebx
 102:	56                   	push   %esi
 103:	e8 44 ff ff ff       	call   0x4c
 108:	83 c4 10             	add    $0x10,%esp
 10b:	85 c0                	test   %eax,%eax
 10d:	75 0a                	jne    0x119
 10f:	8d 53 01             	lea    0x1(%ebx),%edx
 112:	80 3b 00             	cmpb   $0x0,(%ebx)
 115:	75 e5                	jne    0xfc
 117:	eb 05                	jmp    0x11e
 119:	b8 01 00 00 00       	mov    $0x1,%eax
 11e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 121:	5b                   	pop    %ebx
 122:	5e                   	pop    %esi
 123:	5d                   	pop    %ebp
 124:	c3                   	ret    
 125:	f3 0f 1e fb          	endbr32 
 129:	55                   	push   %ebp
 12a:	89 e5                	mov    %esp,%ebp
 12c:	57                   	push   %edi
 12d:	56                   	push   %esi
 12e:	53                   	push   %ebx
 12f:	83 ec 1c             	sub    $0x1c,%esp
 132:	8b 7d 08             	mov    0x8(%ebp),%edi
 135:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 13c:	eb 53                	jmp    0x191
 13e:	c6 03 0a             	movb   $0xa,(%ebx)
 141:	8d 43 01             	lea    0x1(%ebx),%eax
 144:	83 ec 04             	sub    $0x4,%esp
 147:	29 f0                	sub    %esi,%eax
 149:	50                   	push   %eax
 14a:	56                   	push   %esi
 14b:	6a 01                	push   $0x1
 14d:	e8 5a 03 00 00       	call   0x4ac
 152:	83 c4 10             	add    $0x10,%esp
 155:	8d 73 01             	lea    0x1(%ebx),%esi
 158:	83 ec 08             	sub    $0x8,%esp
 15b:	6a 0a                	push   $0xa
 15d:	56                   	push   %esi
 15e:	e8 f7 01 00 00       	call   0x35a
 163:	89 c3                	mov    %eax,%ebx
 165:	83 c4 10             	add    $0x10,%esp
 168:	85 c0                	test   %eax,%eax
 16a:	74 16                	je     0x182
 16c:	c6 03 00             	movb   $0x0,(%ebx)
 16f:	83 ec 08             	sub    $0x8,%esp
 172:	56                   	push   %esi
 173:	57                   	push   %edi
 174:	e8 5d ff ff ff       	call   0xd6
 179:	83 c4 10             	add    $0x10,%esp
 17c:	85 c0                	test   %eax,%eax
 17e:	74 d5                	je     0x155
 180:	eb bc                	jmp    0x13e
 182:	81 fe 60 0c 00 00    	cmp    $0xc60,%esi
 188:	74 5f                	je     0x1e9
 18a:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 18d:	85 c9                	test   %ecx,%ecx
 18f:	7f 38                	jg     0x1c9
 191:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 196:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 199:	29 c8                	sub    %ecx,%eax
 19b:	83 ec 04             	sub    $0x4,%esp
 19e:	50                   	push   %eax
 19f:	8d 81 60 0c 00 00    	lea    0xc60(%ecx),%eax
 1a5:	50                   	push   %eax
 1a6:	ff 75 0c             	pushl  0xc(%ebp)
 1a9:	e8 f6 02 00 00       	call   0x4a4
 1ae:	83 c4 10             	add    $0x10,%esp
 1b1:	85 c0                	test   %eax,%eax
 1b3:	7e 3d                	jle    0x1f2
 1b5:	01 45 e4             	add    %eax,-0x1c(%ebp)
 1b8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 1bb:	c6 82 60 0c 00 00 00 	movb   $0x0,0xc60(%edx)
 1c2:	be 60 0c 00 00       	mov    $0xc60,%esi
 1c7:	eb 8f                	jmp    0x158
 1c9:	89 f0                	mov    %esi,%eax
 1cb:	2d 60 0c 00 00       	sub    $0xc60,%eax
 1d0:	29 c1                	sub    %eax,%ecx
 1d2:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 1d5:	83 ec 04             	sub    $0x4,%esp
 1d8:	51                   	push   %ecx
 1d9:	56                   	push   %esi
 1da:	68 60 0c 00 00       	push   $0xc60
 1df:	e8 70 02 00 00       	call   0x454
 1e4:	83 c4 10             	add    $0x10,%esp
 1e7:	eb a8                	jmp    0x191
 1e9:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 1f0:	eb 9f                	jmp    0x191
 1f2:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1f5:	5b                   	pop    %ebx
 1f6:	5e                   	pop    %esi
 1f7:	5f                   	pop    %edi
 1f8:	5d                   	pop    %ebp
 1f9:	c3                   	ret    
 1fa:	f3 0f 1e fb          	endbr32 
 1fe:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 202:	83 e4 f0             	and    $0xfffffff0,%esp
 205:	ff 71 fc             	pushl  -0x4(%ecx)
 208:	55                   	push   %ebp
 209:	89 e5                	mov    %esp,%ebp
 20b:	57                   	push   %edi
 20c:	56                   	push   %esi
 20d:	53                   	push   %ebx
 20e:	51                   	push   %ecx
 20f:	83 ec 18             	sub    $0x18,%esp
 212:	8b 01                	mov    (%ecx),%eax
 214:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 217:	8b 51 04             	mov    0x4(%ecx),%edx
 21a:	89 55 e0             	mov    %edx,-0x20(%ebp)
 21d:	83 f8 01             	cmp    $0x1,%eax
 220:	7e 54                	jle    0x276
 222:	8b 45 e0             	mov    -0x20(%ebp),%eax
 225:	8b 40 04             	mov    0x4(%eax),%eax
 228:	89 45 dc             	mov    %eax,-0x24(%ebp)
 22b:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
 22f:	7e 60                	jle    0x291
 231:	be 02 00 00 00       	mov    $0x2,%esi
 236:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 239:	0f 8d 86 00 00 00    	jge    0x2c5
 23f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 242:	8d 3c b0             	lea    (%eax,%esi,4),%edi
 245:	83 ec 08             	sub    $0x8,%esp
 248:	6a 00                	push   $0x0
 24a:	ff 37                	pushl  (%edi)
 24c:	e8 7b 02 00 00       	call   0x4cc
 251:	89 c3                	mov    %eax,%ebx
 253:	83 c4 10             	add    $0x10,%esp
 256:	85 c0                	test   %eax,%eax
 258:	78 4e                	js     0x2a8
 25a:	83 ec 08             	sub    $0x8,%esp
 25d:	50                   	push   %eax
 25e:	ff 75 dc             	pushl  -0x24(%ebp)
 261:	e8 bf fe ff ff       	call   0x125
 266:	89 1c 24             	mov    %ebx,(%esp)
 269:	e8 46 02 00 00       	call   0x4b4
 26e:	83 c6 01             	add    $0x1,%esi
 271:	83 c4 10             	add    $0x10,%esp
 274:	eb c0                	jmp    0x236
 276:	83 ec 08             	sub    $0x8,%esp
 279:	68 9c 08 00 00       	push   $0x89c
 27e:	6a 02                	push   $0x2
 280:	e8 58 03 00 00       	call   0x5dd
 285:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 28c:	e8 fb 01 00 00       	call   0x48c
 291:	83 ec 08             	sub    $0x8,%esp
 294:	6a 00                	push   $0x0
 296:	50                   	push   %eax
 297:	e8 89 fe ff ff       	call   0x125
 29c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2a3:	e8 e4 01 00 00       	call   0x48c
 2a8:	83 ec 04             	sub    $0x4,%esp
 2ab:	ff 37                	pushl  (%edi)
 2ad:	68 bc 08 00 00       	push   $0x8bc
 2b2:	6a 01                	push   $0x1
 2b4:	e8 24 03 00 00       	call   0x5dd
 2b9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2c0:	e8 c7 01 00 00       	call   0x48c
 2c5:	83 ec 0c             	sub    $0xc,%esp
 2c8:	6a 00                	push   $0x0
 2ca:	e8 bd 01 00 00       	call   0x48c
 2cf:	f3 0f 1e fb          	endbr32 
 2d3:	55                   	push   %ebp
 2d4:	89 e5                	mov    %esp,%ebp
 2d6:	56                   	push   %esi
 2d7:	53                   	push   %ebx
 2d8:	8b 75 08             	mov    0x8(%ebp),%esi
 2db:	8b 55 0c             	mov    0xc(%ebp),%edx
 2de:	89 f0                	mov    %esi,%eax
 2e0:	89 d1                	mov    %edx,%ecx
 2e2:	83 c2 01             	add    $0x1,%edx
 2e5:	89 c3                	mov    %eax,%ebx
 2e7:	83 c0 01             	add    $0x1,%eax
 2ea:	0f b6 09             	movzbl (%ecx),%ecx
 2ed:	88 0b                	mov    %cl,(%ebx)
 2ef:	84 c9                	test   %cl,%cl
 2f1:	75 ed                	jne    0x2e0
 2f3:	89 f0                	mov    %esi,%eax
 2f5:	5b                   	pop    %ebx
 2f6:	5e                   	pop    %esi
 2f7:	5d                   	pop    %ebp
 2f8:	c3                   	ret    
 2f9:	f3 0f 1e fb          	endbr32 
 2fd:	55                   	push   %ebp
 2fe:	89 e5                	mov    %esp,%ebp
 300:	8b 4d 08             	mov    0x8(%ebp),%ecx
 303:	8b 55 0c             	mov    0xc(%ebp),%edx
 306:	0f b6 01             	movzbl (%ecx),%eax
 309:	84 c0                	test   %al,%al
 30b:	74 0c                	je     0x319
 30d:	3a 02                	cmp    (%edx),%al
 30f:	75 08                	jne    0x319
 311:	83 c1 01             	add    $0x1,%ecx
 314:	83 c2 01             	add    $0x1,%edx
 317:	eb ed                	jmp    0x306
 319:	0f b6 c0             	movzbl %al,%eax
 31c:	0f b6 12             	movzbl (%edx),%edx
 31f:	29 d0                	sub    %edx,%eax
 321:	5d                   	pop    %ebp
 322:	c3                   	ret    
 323:	f3 0f 1e fb          	endbr32 
 327:	55                   	push   %ebp
 328:	89 e5                	mov    %esp,%ebp
 32a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 32d:	b8 00 00 00 00       	mov    $0x0,%eax
 332:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 336:	74 05                	je     0x33d
 338:	83 c0 01             	add    $0x1,%eax
 33b:	eb f5                	jmp    0x332
 33d:	5d                   	pop    %ebp
 33e:	c3                   	ret    
 33f:	f3 0f 1e fb          	endbr32 
 343:	55                   	push   %ebp
 344:	89 e5                	mov    %esp,%ebp
 346:	57                   	push   %edi
 347:	8b 55 08             	mov    0x8(%ebp),%edx
 34a:	89 d7                	mov    %edx,%edi
 34c:	8b 4d 10             	mov    0x10(%ebp),%ecx
 34f:	8b 45 0c             	mov    0xc(%ebp),%eax
 352:	fc                   	cld    
 353:	f3 aa                	rep stos %al,%es:(%edi)
 355:	89 d0                	mov    %edx,%eax
 357:	5f                   	pop    %edi
 358:	5d                   	pop    %ebp
 359:	c3                   	ret    
 35a:	f3 0f 1e fb          	endbr32 
 35e:	55                   	push   %ebp
 35f:	89 e5                	mov    %esp,%ebp
 361:	8b 45 08             	mov    0x8(%ebp),%eax
 364:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 368:	0f b6 10             	movzbl (%eax),%edx
 36b:	84 d2                	test   %dl,%dl
 36d:	74 09                	je     0x378
 36f:	38 ca                	cmp    %cl,%dl
 371:	74 0a                	je     0x37d
 373:	83 c0 01             	add    $0x1,%eax
 376:	eb f0                	jmp    0x368
 378:	b8 00 00 00 00       	mov    $0x0,%eax
 37d:	5d                   	pop    %ebp
 37e:	c3                   	ret    
 37f:	f3 0f 1e fb          	endbr32 
 383:	55                   	push   %ebp
 384:	89 e5                	mov    %esp,%ebp
 386:	57                   	push   %edi
 387:	56                   	push   %esi
 388:	53                   	push   %ebx
 389:	83 ec 1c             	sub    $0x1c,%esp
 38c:	8b 7d 08             	mov    0x8(%ebp),%edi
 38f:	bb 00 00 00 00       	mov    $0x0,%ebx
 394:	89 de                	mov    %ebx,%esi
 396:	83 c3 01             	add    $0x1,%ebx
 399:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 39c:	7d 2e                	jge    0x3cc
 39e:	83 ec 04             	sub    $0x4,%esp
 3a1:	6a 01                	push   $0x1
 3a3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3a6:	50                   	push   %eax
 3a7:	6a 00                	push   $0x0
 3a9:	e8 f6 00 00 00       	call   0x4a4
 3ae:	83 c4 10             	add    $0x10,%esp
 3b1:	85 c0                	test   %eax,%eax
 3b3:	7e 17                	jle    0x3cc
 3b5:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3b9:	88 04 37             	mov    %al,(%edi,%esi,1)
 3bc:	3c 0a                	cmp    $0xa,%al
 3be:	0f 94 c2             	sete   %dl
 3c1:	3c 0d                	cmp    $0xd,%al
 3c3:	0f 94 c0             	sete   %al
 3c6:	08 c2                	or     %al,%dl
 3c8:	74 ca                	je     0x394
 3ca:	89 de                	mov    %ebx,%esi
 3cc:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 3d0:	89 f8                	mov    %edi,%eax
 3d2:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3d5:	5b                   	pop    %ebx
 3d6:	5e                   	pop    %esi
 3d7:	5f                   	pop    %edi
 3d8:	5d                   	pop    %ebp
 3d9:	c3                   	ret    
 3da:	f3 0f 1e fb          	endbr32 
 3de:	55                   	push   %ebp
 3df:	89 e5                	mov    %esp,%ebp
 3e1:	56                   	push   %esi
 3e2:	53                   	push   %ebx
 3e3:	83 ec 08             	sub    $0x8,%esp
 3e6:	6a 00                	push   $0x0
 3e8:	ff 75 08             	pushl  0x8(%ebp)
 3eb:	e8 dc 00 00 00       	call   0x4cc
 3f0:	83 c4 10             	add    $0x10,%esp
 3f3:	85 c0                	test   %eax,%eax
 3f5:	78 24                	js     0x41b
 3f7:	89 c3                	mov    %eax,%ebx
 3f9:	83 ec 08             	sub    $0x8,%esp
 3fc:	ff 75 0c             	pushl  0xc(%ebp)
 3ff:	50                   	push   %eax
 400:	e8 df 00 00 00       	call   0x4e4
 405:	89 c6                	mov    %eax,%esi
 407:	89 1c 24             	mov    %ebx,(%esp)
 40a:	e8 a5 00 00 00       	call   0x4b4
 40f:	83 c4 10             	add    $0x10,%esp
 412:	89 f0                	mov    %esi,%eax
 414:	8d 65 f8             	lea    -0x8(%ebp),%esp
 417:	5b                   	pop    %ebx
 418:	5e                   	pop    %esi
 419:	5d                   	pop    %ebp
 41a:	c3                   	ret    
 41b:	be ff ff ff ff       	mov    $0xffffffff,%esi
 420:	eb f0                	jmp    0x412
 422:	f3 0f 1e fb          	endbr32 
 426:	55                   	push   %ebp
 427:	89 e5                	mov    %esp,%ebp
 429:	53                   	push   %ebx
 42a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 42d:	ba 00 00 00 00       	mov    $0x0,%edx
 432:	0f b6 01             	movzbl (%ecx),%eax
 435:	8d 58 d0             	lea    -0x30(%eax),%ebx
 438:	80 fb 09             	cmp    $0x9,%bl
 43b:	77 12                	ja     0x44f
 43d:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 440:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 443:	83 c1 01             	add    $0x1,%ecx
 446:	0f be c0             	movsbl %al,%eax
 449:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 44d:	eb e3                	jmp    0x432
 44f:	89 d0                	mov    %edx,%eax
 451:	5b                   	pop    %ebx
 452:	5d                   	pop    %ebp
 453:	c3                   	ret    
 454:	f3 0f 1e fb          	endbr32 
 458:	55                   	push   %ebp
 459:	89 e5                	mov    %esp,%ebp
 45b:	56                   	push   %esi
 45c:	53                   	push   %ebx
 45d:	8b 75 08             	mov    0x8(%ebp),%esi
 460:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 463:	8b 45 10             	mov    0x10(%ebp),%eax
 466:	89 f2                	mov    %esi,%edx
 468:	8d 58 ff             	lea    -0x1(%eax),%ebx
 46b:	85 c0                	test   %eax,%eax
 46d:	7e 0f                	jle    0x47e
 46f:	0f b6 01             	movzbl (%ecx),%eax
 472:	88 02                	mov    %al,(%edx)
 474:	8d 49 01             	lea    0x1(%ecx),%ecx
 477:	8d 52 01             	lea    0x1(%edx),%edx
 47a:	89 d8                	mov    %ebx,%eax
 47c:	eb ea                	jmp    0x468
 47e:	89 f0                	mov    %esi,%eax
 480:	5b                   	pop    %ebx
 481:	5e                   	pop    %esi
 482:	5d                   	pop    %ebp
 483:	c3                   	ret    
 484:	b8 01 00 00 00       	mov    $0x1,%eax
 489:	cd 40                	int    $0x40
 48b:	c3                   	ret    
 48c:	b8 02 00 00 00       	mov    $0x2,%eax
 491:	cd 40                	int    $0x40
 493:	c3                   	ret    
 494:	b8 03 00 00 00       	mov    $0x3,%eax
 499:	cd 40                	int    $0x40
 49b:	c3                   	ret    
 49c:	b8 04 00 00 00       	mov    $0x4,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    
 4a4:	b8 05 00 00 00       	mov    $0x5,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    
 4ac:	b8 10 00 00 00       	mov    $0x10,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    
 4b4:	b8 15 00 00 00       	mov    $0x15,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    
 4bc:	b8 06 00 00 00       	mov    $0x6,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    
 4c4:	b8 07 00 00 00       	mov    $0x7,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    
 4cc:	b8 0f 00 00 00       	mov    $0xf,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    
 4d4:	b8 11 00 00 00       	mov    $0x11,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    
 4dc:	b8 12 00 00 00       	mov    $0x12,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    
 4e4:	b8 08 00 00 00       	mov    $0x8,%eax
 4e9:	cd 40                	int    $0x40
 4eb:	c3                   	ret    
 4ec:	b8 13 00 00 00       	mov    $0x13,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    
 4f4:	b8 14 00 00 00       	mov    $0x14,%eax
 4f9:	cd 40                	int    $0x40
 4fb:	c3                   	ret    
 4fc:	b8 09 00 00 00       	mov    $0x9,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    
 504:	b8 0a 00 00 00       	mov    $0xa,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    
 50c:	b8 0b 00 00 00       	mov    $0xb,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    
 514:	b8 0c 00 00 00       	mov    $0xc,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    
 51c:	b8 0d 00 00 00       	mov    $0xd,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    
 524:	b8 0e 00 00 00       	mov    $0xe,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    
 52c:	b8 16 00 00 00       	mov    $0x16,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    
 534:	b8 17 00 00 00       	mov    $0x17,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    
 53c:	55                   	push   %ebp
 53d:	89 e5                	mov    %esp,%ebp
 53f:	83 ec 1c             	sub    $0x1c,%esp
 542:	88 55 f4             	mov    %dl,-0xc(%ebp)
 545:	6a 01                	push   $0x1
 547:	8d 55 f4             	lea    -0xc(%ebp),%edx
 54a:	52                   	push   %edx
 54b:	50                   	push   %eax
 54c:	e8 5b ff ff ff       	call   0x4ac
 551:	83 c4 10             	add    $0x10,%esp
 554:	c9                   	leave  
 555:	c3                   	ret    
 556:	55                   	push   %ebp
 557:	89 e5                	mov    %esp,%ebp
 559:	57                   	push   %edi
 55a:	56                   	push   %esi
 55b:	53                   	push   %ebx
 55c:	83 ec 2c             	sub    $0x2c,%esp
 55f:	89 45 d0             	mov    %eax,-0x30(%ebp)
 562:	89 d6                	mov    %edx,%esi
 564:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 568:	0f 95 c2             	setne  %dl
 56b:	89 f0                	mov    %esi,%eax
 56d:	c1 e8 1f             	shr    $0x1f,%eax
 570:	84 c2                	test   %al,%dl
 572:	74 42                	je     0x5b6
 574:	f7 de                	neg    %esi
 576:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 57d:	bb 00 00 00 00       	mov    $0x0,%ebx
 582:	89 f0                	mov    %esi,%eax
 584:	ba 00 00 00 00       	mov    $0x0,%edx
 589:	f7 f1                	div    %ecx
 58b:	89 df                	mov    %ebx,%edi
 58d:	83 c3 01             	add    $0x1,%ebx
 590:	0f b6 92 dc 08 00 00 	movzbl 0x8dc(%edx),%edx
 597:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 59b:	89 f2                	mov    %esi,%edx
 59d:	89 c6                	mov    %eax,%esi
 59f:	39 d1                	cmp    %edx,%ecx
 5a1:	76 df                	jbe    0x582
 5a3:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 5a7:	74 2f                	je     0x5d8
 5a9:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 5ae:	8d 5f 02             	lea    0x2(%edi),%ebx
 5b1:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5b4:	eb 15                	jmp    0x5cb
 5b6:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 5bd:	eb be                	jmp    0x57d
 5bf:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 5c4:	89 f0                	mov    %esi,%eax
 5c6:	e8 71 ff ff ff       	call   0x53c
 5cb:	83 eb 01             	sub    $0x1,%ebx
 5ce:	79 ef                	jns    0x5bf
 5d0:	83 c4 2c             	add    $0x2c,%esp
 5d3:	5b                   	pop    %ebx
 5d4:	5e                   	pop    %esi
 5d5:	5f                   	pop    %edi
 5d6:	5d                   	pop    %ebp
 5d7:	c3                   	ret    
 5d8:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5db:	eb ee                	jmp    0x5cb
 5dd:	f3 0f 1e fb          	endbr32 
 5e1:	55                   	push   %ebp
 5e2:	89 e5                	mov    %esp,%ebp
 5e4:	57                   	push   %edi
 5e5:	56                   	push   %esi
 5e6:	53                   	push   %ebx
 5e7:	83 ec 1c             	sub    $0x1c,%esp
 5ea:	8d 45 10             	lea    0x10(%ebp),%eax
 5ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 5f0:	be 00 00 00 00       	mov    $0x0,%esi
 5f5:	bb 00 00 00 00       	mov    $0x0,%ebx
 5fa:	eb 14                	jmp    0x610
 5fc:	89 fa                	mov    %edi,%edx
 5fe:	8b 45 08             	mov    0x8(%ebp),%eax
 601:	e8 36 ff ff ff       	call   0x53c
 606:	eb 05                	jmp    0x60d
 608:	83 fe 25             	cmp    $0x25,%esi
 60b:	74 25                	je     0x632
 60d:	83 c3 01             	add    $0x1,%ebx
 610:	8b 45 0c             	mov    0xc(%ebp),%eax
 613:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 617:	84 c0                	test   %al,%al
 619:	0f 84 23 01 00 00    	je     0x742
 61f:	0f be f8             	movsbl %al,%edi
 622:	0f b6 c0             	movzbl %al,%eax
 625:	85 f6                	test   %esi,%esi
 627:	75 df                	jne    0x608
 629:	83 f8 25             	cmp    $0x25,%eax
 62c:	75 ce                	jne    0x5fc
 62e:	89 c6                	mov    %eax,%esi
 630:	eb db                	jmp    0x60d
 632:	83 f8 64             	cmp    $0x64,%eax
 635:	74 49                	je     0x680
 637:	83 f8 78             	cmp    $0x78,%eax
 63a:	0f 94 c1             	sete   %cl
 63d:	83 f8 70             	cmp    $0x70,%eax
 640:	0f 94 c2             	sete   %dl
 643:	08 d1                	or     %dl,%cl
 645:	75 63                	jne    0x6aa
 647:	83 f8 73             	cmp    $0x73,%eax
 64a:	0f 84 84 00 00 00    	je     0x6d4
 650:	83 f8 63             	cmp    $0x63,%eax
 653:	0f 84 b7 00 00 00    	je     0x710
 659:	83 f8 25             	cmp    $0x25,%eax
 65c:	0f 84 cc 00 00 00    	je     0x72e
 662:	ba 25 00 00 00       	mov    $0x25,%edx
 667:	8b 45 08             	mov    0x8(%ebp),%eax
 66a:	e8 cd fe ff ff       	call   0x53c
 66f:	89 fa                	mov    %edi,%edx
 671:	8b 45 08             	mov    0x8(%ebp),%eax
 674:	e8 c3 fe ff ff       	call   0x53c
 679:	be 00 00 00 00       	mov    $0x0,%esi
 67e:	eb 8d                	jmp    0x60d
 680:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 683:	8b 17                	mov    (%edi),%edx
 685:	83 ec 0c             	sub    $0xc,%esp
 688:	6a 01                	push   $0x1
 68a:	b9 0a 00 00 00       	mov    $0xa,%ecx
 68f:	8b 45 08             	mov    0x8(%ebp),%eax
 692:	e8 bf fe ff ff       	call   0x556
 697:	83 c7 04             	add    $0x4,%edi
 69a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 69d:	83 c4 10             	add    $0x10,%esp
 6a0:	be 00 00 00 00       	mov    $0x0,%esi
 6a5:	e9 63 ff ff ff       	jmp    0x60d
 6aa:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6ad:	8b 17                	mov    (%edi),%edx
 6af:	83 ec 0c             	sub    $0xc,%esp
 6b2:	6a 00                	push   $0x0
 6b4:	b9 10 00 00 00       	mov    $0x10,%ecx
 6b9:	8b 45 08             	mov    0x8(%ebp),%eax
 6bc:	e8 95 fe ff ff       	call   0x556
 6c1:	83 c7 04             	add    $0x4,%edi
 6c4:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6c7:	83 c4 10             	add    $0x10,%esp
 6ca:	be 00 00 00 00       	mov    $0x0,%esi
 6cf:	e9 39 ff ff ff       	jmp    0x60d
 6d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6d7:	8b 30                	mov    (%eax),%esi
 6d9:	83 c0 04             	add    $0x4,%eax
 6dc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 6df:	85 f6                	test   %esi,%esi
 6e1:	75 28                	jne    0x70b
 6e3:	be d2 08 00 00       	mov    $0x8d2,%esi
 6e8:	8b 7d 08             	mov    0x8(%ebp),%edi
 6eb:	eb 0d                	jmp    0x6fa
 6ed:	0f be d2             	movsbl %dl,%edx
 6f0:	89 f8                	mov    %edi,%eax
 6f2:	e8 45 fe ff ff       	call   0x53c
 6f7:	83 c6 01             	add    $0x1,%esi
 6fa:	0f b6 16             	movzbl (%esi),%edx
 6fd:	84 d2                	test   %dl,%dl
 6ff:	75 ec                	jne    0x6ed
 701:	be 00 00 00 00       	mov    $0x0,%esi
 706:	e9 02 ff ff ff       	jmp    0x60d
 70b:	8b 7d 08             	mov    0x8(%ebp),%edi
 70e:	eb ea                	jmp    0x6fa
 710:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 713:	0f be 17             	movsbl (%edi),%edx
 716:	8b 45 08             	mov    0x8(%ebp),%eax
 719:	e8 1e fe ff ff       	call   0x53c
 71e:	83 c7 04             	add    $0x4,%edi
 721:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 724:	be 00 00 00 00       	mov    $0x0,%esi
 729:	e9 df fe ff ff       	jmp    0x60d
 72e:	89 fa                	mov    %edi,%edx
 730:	8b 45 08             	mov    0x8(%ebp),%eax
 733:	e8 04 fe ff ff       	call   0x53c
 738:	be 00 00 00 00       	mov    $0x0,%esi
 73d:	e9 cb fe ff ff       	jmp    0x60d
 742:	8d 65 f4             	lea    -0xc(%ebp),%esp
 745:	5b                   	pop    %ebx
 746:	5e                   	pop    %esi
 747:	5f                   	pop    %edi
 748:	5d                   	pop    %ebp
 749:	c3                   	ret    
 74a:	f3 0f 1e fb          	endbr32 
 74e:	55                   	push   %ebp
 74f:	89 e5                	mov    %esp,%ebp
 751:	57                   	push   %edi
 752:	56                   	push   %esi
 753:	53                   	push   %ebx
 754:	8b 5d 08             	mov    0x8(%ebp),%ebx
 757:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 75a:	a1 40 0c 00 00       	mov    0xc40,%eax
 75f:	eb 02                	jmp    0x763
 761:	89 d0                	mov    %edx,%eax
 763:	39 c8                	cmp    %ecx,%eax
 765:	73 04                	jae    0x76b
 767:	39 08                	cmp    %ecx,(%eax)
 769:	77 12                	ja     0x77d
 76b:	8b 10                	mov    (%eax),%edx
 76d:	39 c2                	cmp    %eax,%edx
 76f:	77 f0                	ja     0x761
 771:	39 c8                	cmp    %ecx,%eax
 773:	72 08                	jb     0x77d
 775:	39 ca                	cmp    %ecx,%edx
 777:	77 04                	ja     0x77d
 779:	89 d0                	mov    %edx,%eax
 77b:	eb e6                	jmp    0x763
 77d:	8b 73 fc             	mov    -0x4(%ebx),%esi
 780:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 783:	8b 10                	mov    (%eax),%edx
 785:	39 d7                	cmp    %edx,%edi
 787:	74 19                	je     0x7a2
 789:	89 53 f8             	mov    %edx,-0x8(%ebx)
 78c:	8b 50 04             	mov    0x4(%eax),%edx
 78f:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 792:	39 ce                	cmp    %ecx,%esi
 794:	74 1b                	je     0x7b1
 796:	89 08                	mov    %ecx,(%eax)
 798:	a3 40 0c 00 00       	mov    %eax,0xc40
 79d:	5b                   	pop    %ebx
 79e:	5e                   	pop    %esi
 79f:	5f                   	pop    %edi
 7a0:	5d                   	pop    %ebp
 7a1:	c3                   	ret    
 7a2:	03 72 04             	add    0x4(%edx),%esi
 7a5:	89 73 fc             	mov    %esi,-0x4(%ebx)
 7a8:	8b 10                	mov    (%eax),%edx
 7aa:	8b 12                	mov    (%edx),%edx
 7ac:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7af:	eb db                	jmp    0x78c
 7b1:	03 53 fc             	add    -0x4(%ebx),%edx
 7b4:	89 50 04             	mov    %edx,0x4(%eax)
 7b7:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7ba:	89 10                	mov    %edx,(%eax)
 7bc:	eb da                	jmp    0x798
 7be:	55                   	push   %ebp
 7bf:	89 e5                	mov    %esp,%ebp
 7c1:	53                   	push   %ebx
 7c2:	83 ec 04             	sub    $0x4,%esp
 7c5:	89 c3                	mov    %eax,%ebx
 7c7:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 7cc:	77 05                	ja     0x7d3
 7ce:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7d3:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7da:	83 ec 0c             	sub    $0xc,%esp
 7dd:	50                   	push   %eax
 7de:	e8 31 fd ff ff       	call   0x514
 7e3:	83 c4 10             	add    $0x10,%esp
 7e6:	83 f8 ff             	cmp    $0xffffffff,%eax
 7e9:	74 1c                	je     0x807
 7eb:	89 58 04             	mov    %ebx,0x4(%eax)
 7ee:	83 c0 08             	add    $0x8,%eax
 7f1:	83 ec 0c             	sub    $0xc,%esp
 7f4:	50                   	push   %eax
 7f5:	e8 50 ff ff ff       	call   0x74a
 7fa:	a1 40 0c 00 00       	mov    0xc40,%eax
 7ff:	83 c4 10             	add    $0x10,%esp
 802:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 805:	c9                   	leave  
 806:	c3                   	ret    
 807:	b8 00 00 00 00       	mov    $0x0,%eax
 80c:	eb f4                	jmp    0x802
 80e:	f3 0f 1e fb          	endbr32 
 812:	55                   	push   %ebp
 813:	89 e5                	mov    %esp,%ebp
 815:	53                   	push   %ebx
 816:	83 ec 04             	sub    $0x4,%esp
 819:	8b 45 08             	mov    0x8(%ebp),%eax
 81c:	8d 58 07             	lea    0x7(%eax),%ebx
 81f:	c1 eb 03             	shr    $0x3,%ebx
 822:	83 c3 01             	add    $0x1,%ebx
 825:	8b 0d 40 0c 00 00    	mov    0xc40,%ecx
 82b:	85 c9                	test   %ecx,%ecx
 82d:	74 04                	je     0x833
 82f:	8b 01                	mov    (%ecx),%eax
 831:	eb 4b                	jmp    0x87e
 833:	c7 05 40 0c 00 00 44 	movl   $0xc44,0xc40
 83a:	0c 00 00 
 83d:	c7 05 44 0c 00 00 44 	movl   $0xc44,0xc44
 844:	0c 00 00 
 847:	c7 05 48 0c 00 00 00 	movl   $0x0,0xc48
 84e:	00 00 00 
 851:	b9 44 0c 00 00       	mov    $0xc44,%ecx
 856:	eb d7                	jmp    0x82f
 858:	74 1a                	je     0x874
 85a:	29 da                	sub    %ebx,%edx
 85c:	89 50 04             	mov    %edx,0x4(%eax)
 85f:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 862:	89 58 04             	mov    %ebx,0x4(%eax)
 865:	89 0d 40 0c 00 00    	mov    %ecx,0xc40
 86b:	83 c0 08             	add    $0x8,%eax
 86e:	83 c4 04             	add    $0x4,%esp
 871:	5b                   	pop    %ebx
 872:	5d                   	pop    %ebp
 873:	c3                   	ret    
 874:	8b 10                	mov    (%eax),%edx
 876:	89 11                	mov    %edx,(%ecx)
 878:	eb eb                	jmp    0x865
 87a:	89 c1                	mov    %eax,%ecx
 87c:	8b 00                	mov    (%eax),%eax
 87e:	8b 50 04             	mov    0x4(%eax),%edx
 881:	39 da                	cmp    %ebx,%edx
 883:	73 d3                	jae    0x858
 885:	39 05 40 0c 00 00    	cmp    %eax,0xc40
 88b:	75 ed                	jne    0x87a
 88d:	89 d8                	mov    %ebx,%eax
 88f:	e8 2a ff ff ff       	call   0x7be
 894:	85 c0                	test   %eax,%eax
 896:	75 e2                	jne    0x87a
 898:	eb d4                	jmp    0x86e
