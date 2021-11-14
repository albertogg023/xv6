
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
 14d:	e8 3c 03 00 00       	call   0x48e
 152:	83 c4 10             	add    $0x10,%esp
 155:	8d 73 01             	lea    0x1(%ebx),%esi
 158:	83 ec 08             	sub    $0x8,%esp
 15b:	6a 0a                	push   $0xa
 15d:	56                   	push   %esi
 15e:	e8 d9 01 00 00       	call   0x33c
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
 182:	81 fe 40 0c 00 00    	cmp    $0xc40,%esi
 188:	74 5f                	je     0x1e9
 18a:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 18d:	85 c9                	test   %ecx,%ecx
 18f:	7f 38                	jg     0x1c9
 191:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 196:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 199:	29 c8                	sub    %ecx,%eax
 19b:	83 ec 04             	sub    $0x4,%esp
 19e:	50                   	push   %eax
 19f:	8d 81 40 0c 00 00    	lea    0xc40(%ecx),%eax
 1a5:	50                   	push   %eax
 1a6:	ff 75 0c             	pushl  0xc(%ebp)
 1a9:	e8 d8 02 00 00       	call   0x486
 1ae:	83 c4 10             	add    $0x10,%esp
 1b1:	85 c0                	test   %eax,%eax
 1b3:	7e 3d                	jle    0x1f2
 1b5:	01 45 e4             	add    %eax,-0x1c(%ebp)
 1b8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 1bb:	c6 82 40 0c 00 00 00 	movb   $0x0,0xc40(%edx)
 1c2:	be 40 0c 00 00       	mov    $0xc40,%esi
 1c7:	eb 8f                	jmp    0x158
 1c9:	89 f0                	mov    %esi,%eax
 1cb:	2d 40 0c 00 00       	sub    $0xc40,%eax
 1d0:	29 c1                	sub    %eax,%ecx
 1d2:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 1d5:	83 ec 04             	sub    $0x4,%esp
 1d8:	51                   	push   %ecx
 1d9:	56                   	push   %esi
 1da:	68 40 0c 00 00       	push   $0xc40
 1df:	e8 52 02 00 00       	call   0x436
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
 220:	7e 50                	jle    0x272
 222:	8b 45 e0             	mov    -0x20(%ebp),%eax
 225:	8b 40 04             	mov    0x4(%eax),%eax
 228:	89 45 dc             	mov    %eax,-0x24(%ebp)
 22b:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
 22f:	7e 55                	jle    0x286
 231:	be 02 00 00 00       	mov    $0x2,%esi
 236:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 239:	7d 71                	jge    0x2ac
 23b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 23e:	8d 3c b0             	lea    (%eax,%esi,4),%edi
 241:	83 ec 08             	sub    $0x8,%esp
 244:	6a 00                	push   $0x0
 246:	ff 37                	pushl  (%edi)
 248:	e8 61 02 00 00       	call   0x4ae
 24d:	89 c3                	mov    %eax,%ebx
 24f:	83 c4 10             	add    $0x10,%esp
 252:	85 c0                	test   %eax,%eax
 254:	78 40                	js     0x296
 256:	83 ec 08             	sub    $0x8,%esp
 259:	50                   	push   %eax
 25a:	ff 75 dc             	pushl  -0x24(%ebp)
 25d:	e8 c3 fe ff ff       	call   0x125
 262:	89 1c 24             	mov    %ebx,(%esp)
 265:	e8 2c 02 00 00       	call   0x496
 26a:	83 c6 01             	add    $0x1,%esi
 26d:	83 c4 10             	add    $0x10,%esp
 270:	eb c4                	jmp    0x236
 272:	83 ec 08             	sub    $0x8,%esp
 275:	68 7c 08 00 00       	push   $0x87c
 27a:	6a 02                	push   $0x2
 27c:	e8 3e 03 00 00       	call   0x5bf
 281:	e8 e8 01 00 00       	call   0x46e
 286:	83 ec 08             	sub    $0x8,%esp
 289:	6a 00                	push   $0x0
 28b:	50                   	push   %eax
 28c:	e8 94 fe ff ff       	call   0x125
 291:	e8 d8 01 00 00       	call   0x46e
 296:	83 ec 04             	sub    $0x4,%esp
 299:	ff 37                	pushl  (%edi)
 29b:	68 9c 08 00 00       	push   $0x89c
 2a0:	6a 01                	push   $0x1
 2a2:	e8 18 03 00 00       	call   0x5bf
 2a7:	e8 c2 01 00 00       	call   0x46e
 2ac:	e8 bd 01 00 00       	call   0x46e
 2b1:	f3 0f 1e fb          	endbr32 
 2b5:	55                   	push   %ebp
 2b6:	89 e5                	mov    %esp,%ebp
 2b8:	56                   	push   %esi
 2b9:	53                   	push   %ebx
 2ba:	8b 75 08             	mov    0x8(%ebp),%esi
 2bd:	8b 55 0c             	mov    0xc(%ebp),%edx
 2c0:	89 f0                	mov    %esi,%eax
 2c2:	89 d1                	mov    %edx,%ecx
 2c4:	83 c2 01             	add    $0x1,%edx
 2c7:	89 c3                	mov    %eax,%ebx
 2c9:	83 c0 01             	add    $0x1,%eax
 2cc:	0f b6 09             	movzbl (%ecx),%ecx
 2cf:	88 0b                	mov    %cl,(%ebx)
 2d1:	84 c9                	test   %cl,%cl
 2d3:	75 ed                	jne    0x2c2
 2d5:	89 f0                	mov    %esi,%eax
 2d7:	5b                   	pop    %ebx
 2d8:	5e                   	pop    %esi
 2d9:	5d                   	pop    %ebp
 2da:	c3                   	ret    
 2db:	f3 0f 1e fb          	endbr32 
 2df:	55                   	push   %ebp
 2e0:	89 e5                	mov    %esp,%ebp
 2e2:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e5:	8b 55 0c             	mov    0xc(%ebp),%edx
 2e8:	0f b6 01             	movzbl (%ecx),%eax
 2eb:	84 c0                	test   %al,%al
 2ed:	74 0c                	je     0x2fb
 2ef:	3a 02                	cmp    (%edx),%al
 2f1:	75 08                	jne    0x2fb
 2f3:	83 c1 01             	add    $0x1,%ecx
 2f6:	83 c2 01             	add    $0x1,%edx
 2f9:	eb ed                	jmp    0x2e8
 2fb:	0f b6 c0             	movzbl %al,%eax
 2fe:	0f b6 12             	movzbl (%edx),%edx
 301:	29 d0                	sub    %edx,%eax
 303:	5d                   	pop    %ebp
 304:	c3                   	ret    
 305:	f3 0f 1e fb          	endbr32 
 309:	55                   	push   %ebp
 30a:	89 e5                	mov    %esp,%ebp
 30c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 30f:	b8 00 00 00 00       	mov    $0x0,%eax
 314:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 318:	74 05                	je     0x31f
 31a:	83 c0 01             	add    $0x1,%eax
 31d:	eb f5                	jmp    0x314
 31f:	5d                   	pop    %ebp
 320:	c3                   	ret    
 321:	f3 0f 1e fb          	endbr32 
 325:	55                   	push   %ebp
 326:	89 e5                	mov    %esp,%ebp
 328:	57                   	push   %edi
 329:	8b 55 08             	mov    0x8(%ebp),%edx
 32c:	89 d7                	mov    %edx,%edi
 32e:	8b 4d 10             	mov    0x10(%ebp),%ecx
 331:	8b 45 0c             	mov    0xc(%ebp),%eax
 334:	fc                   	cld    
 335:	f3 aa                	rep stos %al,%es:(%edi)
 337:	89 d0                	mov    %edx,%eax
 339:	5f                   	pop    %edi
 33a:	5d                   	pop    %ebp
 33b:	c3                   	ret    
 33c:	f3 0f 1e fb          	endbr32 
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	8b 45 08             	mov    0x8(%ebp),%eax
 346:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 34a:	0f b6 10             	movzbl (%eax),%edx
 34d:	84 d2                	test   %dl,%dl
 34f:	74 09                	je     0x35a
 351:	38 ca                	cmp    %cl,%dl
 353:	74 0a                	je     0x35f
 355:	83 c0 01             	add    $0x1,%eax
 358:	eb f0                	jmp    0x34a
 35a:	b8 00 00 00 00       	mov    $0x0,%eax
 35f:	5d                   	pop    %ebp
 360:	c3                   	ret    
 361:	f3 0f 1e fb          	endbr32 
 365:	55                   	push   %ebp
 366:	89 e5                	mov    %esp,%ebp
 368:	57                   	push   %edi
 369:	56                   	push   %esi
 36a:	53                   	push   %ebx
 36b:	83 ec 1c             	sub    $0x1c,%esp
 36e:	8b 7d 08             	mov    0x8(%ebp),%edi
 371:	bb 00 00 00 00       	mov    $0x0,%ebx
 376:	89 de                	mov    %ebx,%esi
 378:	83 c3 01             	add    $0x1,%ebx
 37b:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 37e:	7d 2e                	jge    0x3ae
 380:	83 ec 04             	sub    $0x4,%esp
 383:	6a 01                	push   $0x1
 385:	8d 45 e7             	lea    -0x19(%ebp),%eax
 388:	50                   	push   %eax
 389:	6a 00                	push   $0x0
 38b:	e8 f6 00 00 00       	call   0x486
 390:	83 c4 10             	add    $0x10,%esp
 393:	85 c0                	test   %eax,%eax
 395:	7e 17                	jle    0x3ae
 397:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 39b:	88 04 37             	mov    %al,(%edi,%esi,1)
 39e:	3c 0a                	cmp    $0xa,%al
 3a0:	0f 94 c2             	sete   %dl
 3a3:	3c 0d                	cmp    $0xd,%al
 3a5:	0f 94 c0             	sete   %al
 3a8:	08 c2                	or     %al,%dl
 3aa:	74 ca                	je     0x376
 3ac:	89 de                	mov    %ebx,%esi
 3ae:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 3b2:	89 f8                	mov    %edi,%eax
 3b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3b7:	5b                   	pop    %ebx
 3b8:	5e                   	pop    %esi
 3b9:	5f                   	pop    %edi
 3ba:	5d                   	pop    %ebp
 3bb:	c3                   	ret    
 3bc:	f3 0f 1e fb          	endbr32 
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	56                   	push   %esi
 3c4:	53                   	push   %ebx
 3c5:	83 ec 08             	sub    $0x8,%esp
 3c8:	6a 00                	push   $0x0
 3ca:	ff 75 08             	pushl  0x8(%ebp)
 3cd:	e8 dc 00 00 00       	call   0x4ae
 3d2:	83 c4 10             	add    $0x10,%esp
 3d5:	85 c0                	test   %eax,%eax
 3d7:	78 24                	js     0x3fd
 3d9:	89 c3                	mov    %eax,%ebx
 3db:	83 ec 08             	sub    $0x8,%esp
 3de:	ff 75 0c             	pushl  0xc(%ebp)
 3e1:	50                   	push   %eax
 3e2:	e8 df 00 00 00       	call   0x4c6
 3e7:	89 c6                	mov    %eax,%esi
 3e9:	89 1c 24             	mov    %ebx,(%esp)
 3ec:	e8 a5 00 00 00       	call   0x496
 3f1:	83 c4 10             	add    $0x10,%esp
 3f4:	89 f0                	mov    %esi,%eax
 3f6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3f9:	5b                   	pop    %ebx
 3fa:	5e                   	pop    %esi
 3fb:	5d                   	pop    %ebp
 3fc:	c3                   	ret    
 3fd:	be ff ff ff ff       	mov    $0xffffffff,%esi
 402:	eb f0                	jmp    0x3f4
 404:	f3 0f 1e fb          	endbr32 
 408:	55                   	push   %ebp
 409:	89 e5                	mov    %esp,%ebp
 40b:	53                   	push   %ebx
 40c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 40f:	ba 00 00 00 00       	mov    $0x0,%edx
 414:	0f b6 01             	movzbl (%ecx),%eax
 417:	8d 58 d0             	lea    -0x30(%eax),%ebx
 41a:	80 fb 09             	cmp    $0x9,%bl
 41d:	77 12                	ja     0x431
 41f:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 422:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 425:	83 c1 01             	add    $0x1,%ecx
 428:	0f be c0             	movsbl %al,%eax
 42b:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 42f:	eb e3                	jmp    0x414
 431:	89 d0                	mov    %edx,%eax
 433:	5b                   	pop    %ebx
 434:	5d                   	pop    %ebp
 435:	c3                   	ret    
 436:	f3 0f 1e fb          	endbr32 
 43a:	55                   	push   %ebp
 43b:	89 e5                	mov    %esp,%ebp
 43d:	56                   	push   %esi
 43e:	53                   	push   %ebx
 43f:	8b 75 08             	mov    0x8(%ebp),%esi
 442:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 445:	8b 45 10             	mov    0x10(%ebp),%eax
 448:	89 f2                	mov    %esi,%edx
 44a:	8d 58 ff             	lea    -0x1(%eax),%ebx
 44d:	85 c0                	test   %eax,%eax
 44f:	7e 0f                	jle    0x460
 451:	0f b6 01             	movzbl (%ecx),%eax
 454:	88 02                	mov    %al,(%edx)
 456:	8d 49 01             	lea    0x1(%ecx),%ecx
 459:	8d 52 01             	lea    0x1(%edx),%edx
 45c:	89 d8                	mov    %ebx,%eax
 45e:	eb ea                	jmp    0x44a
 460:	89 f0                	mov    %esi,%eax
 462:	5b                   	pop    %ebx
 463:	5e                   	pop    %esi
 464:	5d                   	pop    %ebp
 465:	c3                   	ret    
 466:	b8 01 00 00 00       	mov    $0x1,%eax
 46b:	cd 40                	int    $0x40
 46d:	c3                   	ret    
 46e:	b8 02 00 00 00       	mov    $0x2,%eax
 473:	cd 40                	int    $0x40
 475:	c3                   	ret    
 476:	b8 03 00 00 00       	mov    $0x3,%eax
 47b:	cd 40                	int    $0x40
 47d:	c3                   	ret    
 47e:	b8 04 00 00 00       	mov    $0x4,%eax
 483:	cd 40                	int    $0x40
 485:	c3                   	ret    
 486:	b8 05 00 00 00       	mov    $0x5,%eax
 48b:	cd 40                	int    $0x40
 48d:	c3                   	ret    
 48e:	b8 10 00 00 00       	mov    $0x10,%eax
 493:	cd 40                	int    $0x40
 495:	c3                   	ret    
 496:	b8 15 00 00 00       	mov    $0x15,%eax
 49b:	cd 40                	int    $0x40
 49d:	c3                   	ret    
 49e:	b8 06 00 00 00       	mov    $0x6,%eax
 4a3:	cd 40                	int    $0x40
 4a5:	c3                   	ret    
 4a6:	b8 07 00 00 00       	mov    $0x7,%eax
 4ab:	cd 40                	int    $0x40
 4ad:	c3                   	ret    
 4ae:	b8 0f 00 00 00       	mov    $0xf,%eax
 4b3:	cd 40                	int    $0x40
 4b5:	c3                   	ret    
 4b6:	b8 11 00 00 00       	mov    $0x11,%eax
 4bb:	cd 40                	int    $0x40
 4bd:	c3                   	ret    
 4be:	b8 12 00 00 00       	mov    $0x12,%eax
 4c3:	cd 40                	int    $0x40
 4c5:	c3                   	ret    
 4c6:	b8 08 00 00 00       	mov    $0x8,%eax
 4cb:	cd 40                	int    $0x40
 4cd:	c3                   	ret    
 4ce:	b8 13 00 00 00       	mov    $0x13,%eax
 4d3:	cd 40                	int    $0x40
 4d5:	c3                   	ret    
 4d6:	b8 14 00 00 00       	mov    $0x14,%eax
 4db:	cd 40                	int    $0x40
 4dd:	c3                   	ret    
 4de:	b8 09 00 00 00       	mov    $0x9,%eax
 4e3:	cd 40                	int    $0x40
 4e5:	c3                   	ret    
 4e6:	b8 0a 00 00 00       	mov    $0xa,%eax
 4eb:	cd 40                	int    $0x40
 4ed:	c3                   	ret    
 4ee:	b8 0b 00 00 00       	mov    $0xb,%eax
 4f3:	cd 40                	int    $0x40
 4f5:	c3                   	ret    
 4f6:	b8 0c 00 00 00       	mov    $0xc,%eax
 4fb:	cd 40                	int    $0x40
 4fd:	c3                   	ret    
 4fe:	b8 0d 00 00 00       	mov    $0xd,%eax
 503:	cd 40                	int    $0x40
 505:	c3                   	ret    
 506:	b8 0e 00 00 00       	mov    $0xe,%eax
 50b:	cd 40                	int    $0x40
 50d:	c3                   	ret    
 50e:	b8 16 00 00 00       	mov    $0x16,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    
 516:	b8 17 00 00 00       	mov    $0x17,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    
 51e:	55                   	push   %ebp
 51f:	89 e5                	mov    %esp,%ebp
 521:	83 ec 1c             	sub    $0x1c,%esp
 524:	88 55 f4             	mov    %dl,-0xc(%ebp)
 527:	6a 01                	push   $0x1
 529:	8d 55 f4             	lea    -0xc(%ebp),%edx
 52c:	52                   	push   %edx
 52d:	50                   	push   %eax
 52e:	e8 5b ff ff ff       	call   0x48e
 533:	83 c4 10             	add    $0x10,%esp
 536:	c9                   	leave  
 537:	c3                   	ret    
 538:	55                   	push   %ebp
 539:	89 e5                	mov    %esp,%ebp
 53b:	57                   	push   %edi
 53c:	56                   	push   %esi
 53d:	53                   	push   %ebx
 53e:	83 ec 2c             	sub    $0x2c,%esp
 541:	89 45 d0             	mov    %eax,-0x30(%ebp)
 544:	89 d6                	mov    %edx,%esi
 546:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 54a:	0f 95 c2             	setne  %dl
 54d:	89 f0                	mov    %esi,%eax
 54f:	c1 e8 1f             	shr    $0x1f,%eax
 552:	84 c2                	test   %al,%dl
 554:	74 42                	je     0x598
 556:	f7 de                	neg    %esi
 558:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 55f:	bb 00 00 00 00       	mov    $0x0,%ebx
 564:	89 f0                	mov    %esi,%eax
 566:	ba 00 00 00 00       	mov    $0x0,%edx
 56b:	f7 f1                	div    %ecx
 56d:	89 df                	mov    %ebx,%edi
 56f:	83 c3 01             	add    $0x1,%ebx
 572:	0f b6 92 bc 08 00 00 	movzbl 0x8bc(%edx),%edx
 579:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 57d:	89 f2                	mov    %esi,%edx
 57f:	89 c6                	mov    %eax,%esi
 581:	39 d1                	cmp    %edx,%ecx
 583:	76 df                	jbe    0x564
 585:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 589:	74 2f                	je     0x5ba
 58b:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 590:	8d 5f 02             	lea    0x2(%edi),%ebx
 593:	8b 75 d0             	mov    -0x30(%ebp),%esi
 596:	eb 15                	jmp    0x5ad
 598:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 59f:	eb be                	jmp    0x55f
 5a1:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 5a6:	89 f0                	mov    %esi,%eax
 5a8:	e8 71 ff ff ff       	call   0x51e
 5ad:	83 eb 01             	sub    $0x1,%ebx
 5b0:	79 ef                	jns    0x5a1
 5b2:	83 c4 2c             	add    $0x2c,%esp
 5b5:	5b                   	pop    %ebx
 5b6:	5e                   	pop    %esi
 5b7:	5f                   	pop    %edi
 5b8:	5d                   	pop    %ebp
 5b9:	c3                   	ret    
 5ba:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5bd:	eb ee                	jmp    0x5ad
 5bf:	f3 0f 1e fb          	endbr32 
 5c3:	55                   	push   %ebp
 5c4:	89 e5                	mov    %esp,%ebp
 5c6:	57                   	push   %edi
 5c7:	56                   	push   %esi
 5c8:	53                   	push   %ebx
 5c9:	83 ec 1c             	sub    $0x1c,%esp
 5cc:	8d 45 10             	lea    0x10(%ebp),%eax
 5cf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 5d2:	be 00 00 00 00       	mov    $0x0,%esi
 5d7:	bb 00 00 00 00       	mov    $0x0,%ebx
 5dc:	eb 14                	jmp    0x5f2
 5de:	89 fa                	mov    %edi,%edx
 5e0:	8b 45 08             	mov    0x8(%ebp),%eax
 5e3:	e8 36 ff ff ff       	call   0x51e
 5e8:	eb 05                	jmp    0x5ef
 5ea:	83 fe 25             	cmp    $0x25,%esi
 5ed:	74 25                	je     0x614
 5ef:	83 c3 01             	add    $0x1,%ebx
 5f2:	8b 45 0c             	mov    0xc(%ebp),%eax
 5f5:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 5f9:	84 c0                	test   %al,%al
 5fb:	0f 84 23 01 00 00    	je     0x724
 601:	0f be f8             	movsbl %al,%edi
 604:	0f b6 c0             	movzbl %al,%eax
 607:	85 f6                	test   %esi,%esi
 609:	75 df                	jne    0x5ea
 60b:	83 f8 25             	cmp    $0x25,%eax
 60e:	75 ce                	jne    0x5de
 610:	89 c6                	mov    %eax,%esi
 612:	eb db                	jmp    0x5ef
 614:	83 f8 64             	cmp    $0x64,%eax
 617:	74 49                	je     0x662
 619:	83 f8 78             	cmp    $0x78,%eax
 61c:	0f 94 c1             	sete   %cl
 61f:	83 f8 70             	cmp    $0x70,%eax
 622:	0f 94 c2             	sete   %dl
 625:	08 d1                	or     %dl,%cl
 627:	75 63                	jne    0x68c
 629:	83 f8 73             	cmp    $0x73,%eax
 62c:	0f 84 84 00 00 00    	je     0x6b6
 632:	83 f8 63             	cmp    $0x63,%eax
 635:	0f 84 b7 00 00 00    	je     0x6f2
 63b:	83 f8 25             	cmp    $0x25,%eax
 63e:	0f 84 cc 00 00 00    	je     0x710
 644:	ba 25 00 00 00       	mov    $0x25,%edx
 649:	8b 45 08             	mov    0x8(%ebp),%eax
 64c:	e8 cd fe ff ff       	call   0x51e
 651:	89 fa                	mov    %edi,%edx
 653:	8b 45 08             	mov    0x8(%ebp),%eax
 656:	e8 c3 fe ff ff       	call   0x51e
 65b:	be 00 00 00 00       	mov    $0x0,%esi
 660:	eb 8d                	jmp    0x5ef
 662:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 665:	8b 17                	mov    (%edi),%edx
 667:	83 ec 0c             	sub    $0xc,%esp
 66a:	6a 01                	push   $0x1
 66c:	b9 0a 00 00 00       	mov    $0xa,%ecx
 671:	8b 45 08             	mov    0x8(%ebp),%eax
 674:	e8 bf fe ff ff       	call   0x538
 679:	83 c7 04             	add    $0x4,%edi
 67c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 67f:	83 c4 10             	add    $0x10,%esp
 682:	be 00 00 00 00       	mov    $0x0,%esi
 687:	e9 63 ff ff ff       	jmp    0x5ef
 68c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 68f:	8b 17                	mov    (%edi),%edx
 691:	83 ec 0c             	sub    $0xc,%esp
 694:	6a 00                	push   $0x0
 696:	b9 10 00 00 00       	mov    $0x10,%ecx
 69b:	8b 45 08             	mov    0x8(%ebp),%eax
 69e:	e8 95 fe ff ff       	call   0x538
 6a3:	83 c7 04             	add    $0x4,%edi
 6a6:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6a9:	83 c4 10             	add    $0x10,%esp
 6ac:	be 00 00 00 00       	mov    $0x0,%esi
 6b1:	e9 39 ff ff ff       	jmp    0x5ef
 6b6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6b9:	8b 30                	mov    (%eax),%esi
 6bb:	83 c0 04             	add    $0x4,%eax
 6be:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 6c1:	85 f6                	test   %esi,%esi
 6c3:	75 28                	jne    0x6ed
 6c5:	be b2 08 00 00       	mov    $0x8b2,%esi
 6ca:	8b 7d 08             	mov    0x8(%ebp),%edi
 6cd:	eb 0d                	jmp    0x6dc
 6cf:	0f be d2             	movsbl %dl,%edx
 6d2:	89 f8                	mov    %edi,%eax
 6d4:	e8 45 fe ff ff       	call   0x51e
 6d9:	83 c6 01             	add    $0x1,%esi
 6dc:	0f b6 16             	movzbl (%esi),%edx
 6df:	84 d2                	test   %dl,%dl
 6e1:	75 ec                	jne    0x6cf
 6e3:	be 00 00 00 00       	mov    $0x0,%esi
 6e8:	e9 02 ff ff ff       	jmp    0x5ef
 6ed:	8b 7d 08             	mov    0x8(%ebp),%edi
 6f0:	eb ea                	jmp    0x6dc
 6f2:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6f5:	0f be 17             	movsbl (%edi),%edx
 6f8:	8b 45 08             	mov    0x8(%ebp),%eax
 6fb:	e8 1e fe ff ff       	call   0x51e
 700:	83 c7 04             	add    $0x4,%edi
 703:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 706:	be 00 00 00 00       	mov    $0x0,%esi
 70b:	e9 df fe ff ff       	jmp    0x5ef
 710:	89 fa                	mov    %edi,%edx
 712:	8b 45 08             	mov    0x8(%ebp),%eax
 715:	e8 04 fe ff ff       	call   0x51e
 71a:	be 00 00 00 00       	mov    $0x0,%esi
 71f:	e9 cb fe ff ff       	jmp    0x5ef
 724:	8d 65 f4             	lea    -0xc(%ebp),%esp
 727:	5b                   	pop    %ebx
 728:	5e                   	pop    %esi
 729:	5f                   	pop    %edi
 72a:	5d                   	pop    %ebp
 72b:	c3                   	ret    
 72c:	f3 0f 1e fb          	endbr32 
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	56                   	push   %esi
 735:	53                   	push   %ebx
 736:	8b 5d 08             	mov    0x8(%ebp),%ebx
 739:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 73c:	a1 20 0c 00 00       	mov    0xc20,%eax
 741:	eb 02                	jmp    0x745
 743:	89 d0                	mov    %edx,%eax
 745:	39 c8                	cmp    %ecx,%eax
 747:	73 04                	jae    0x74d
 749:	39 08                	cmp    %ecx,(%eax)
 74b:	77 12                	ja     0x75f
 74d:	8b 10                	mov    (%eax),%edx
 74f:	39 c2                	cmp    %eax,%edx
 751:	77 f0                	ja     0x743
 753:	39 c8                	cmp    %ecx,%eax
 755:	72 08                	jb     0x75f
 757:	39 ca                	cmp    %ecx,%edx
 759:	77 04                	ja     0x75f
 75b:	89 d0                	mov    %edx,%eax
 75d:	eb e6                	jmp    0x745
 75f:	8b 73 fc             	mov    -0x4(%ebx),%esi
 762:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 765:	8b 10                	mov    (%eax),%edx
 767:	39 d7                	cmp    %edx,%edi
 769:	74 19                	je     0x784
 76b:	89 53 f8             	mov    %edx,-0x8(%ebx)
 76e:	8b 50 04             	mov    0x4(%eax),%edx
 771:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 774:	39 ce                	cmp    %ecx,%esi
 776:	74 1b                	je     0x793
 778:	89 08                	mov    %ecx,(%eax)
 77a:	a3 20 0c 00 00       	mov    %eax,0xc20
 77f:	5b                   	pop    %ebx
 780:	5e                   	pop    %esi
 781:	5f                   	pop    %edi
 782:	5d                   	pop    %ebp
 783:	c3                   	ret    
 784:	03 72 04             	add    0x4(%edx),%esi
 787:	89 73 fc             	mov    %esi,-0x4(%ebx)
 78a:	8b 10                	mov    (%eax),%edx
 78c:	8b 12                	mov    (%edx),%edx
 78e:	89 53 f8             	mov    %edx,-0x8(%ebx)
 791:	eb db                	jmp    0x76e
 793:	03 53 fc             	add    -0x4(%ebx),%edx
 796:	89 50 04             	mov    %edx,0x4(%eax)
 799:	8b 53 f8             	mov    -0x8(%ebx),%edx
 79c:	89 10                	mov    %edx,(%eax)
 79e:	eb da                	jmp    0x77a
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	53                   	push   %ebx
 7a4:	83 ec 04             	sub    $0x4,%esp
 7a7:	89 c3                	mov    %eax,%ebx
 7a9:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 7ae:	77 05                	ja     0x7b5
 7b0:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7b5:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7bc:	83 ec 0c             	sub    $0xc,%esp
 7bf:	50                   	push   %eax
 7c0:	e8 31 fd ff ff       	call   0x4f6
 7c5:	83 c4 10             	add    $0x10,%esp
 7c8:	83 f8 ff             	cmp    $0xffffffff,%eax
 7cb:	74 1c                	je     0x7e9
 7cd:	89 58 04             	mov    %ebx,0x4(%eax)
 7d0:	83 c0 08             	add    $0x8,%eax
 7d3:	83 ec 0c             	sub    $0xc,%esp
 7d6:	50                   	push   %eax
 7d7:	e8 50 ff ff ff       	call   0x72c
 7dc:	a1 20 0c 00 00       	mov    0xc20,%eax
 7e1:	83 c4 10             	add    $0x10,%esp
 7e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7e7:	c9                   	leave  
 7e8:	c3                   	ret    
 7e9:	b8 00 00 00 00       	mov    $0x0,%eax
 7ee:	eb f4                	jmp    0x7e4
 7f0:	f3 0f 1e fb          	endbr32 
 7f4:	55                   	push   %ebp
 7f5:	89 e5                	mov    %esp,%ebp
 7f7:	53                   	push   %ebx
 7f8:	83 ec 04             	sub    $0x4,%esp
 7fb:	8b 45 08             	mov    0x8(%ebp),%eax
 7fe:	8d 58 07             	lea    0x7(%eax),%ebx
 801:	c1 eb 03             	shr    $0x3,%ebx
 804:	83 c3 01             	add    $0x1,%ebx
 807:	8b 0d 20 0c 00 00    	mov    0xc20,%ecx
 80d:	85 c9                	test   %ecx,%ecx
 80f:	74 04                	je     0x815
 811:	8b 01                	mov    (%ecx),%eax
 813:	eb 4b                	jmp    0x860
 815:	c7 05 20 0c 00 00 24 	movl   $0xc24,0xc20
 81c:	0c 00 00 
 81f:	c7 05 24 0c 00 00 24 	movl   $0xc24,0xc24
 826:	0c 00 00 
 829:	c7 05 28 0c 00 00 00 	movl   $0x0,0xc28
 830:	00 00 00 
 833:	b9 24 0c 00 00       	mov    $0xc24,%ecx
 838:	eb d7                	jmp    0x811
 83a:	74 1a                	je     0x856
 83c:	29 da                	sub    %ebx,%edx
 83e:	89 50 04             	mov    %edx,0x4(%eax)
 841:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 844:	89 58 04             	mov    %ebx,0x4(%eax)
 847:	89 0d 20 0c 00 00    	mov    %ecx,0xc20
 84d:	83 c0 08             	add    $0x8,%eax
 850:	83 c4 04             	add    $0x4,%esp
 853:	5b                   	pop    %ebx
 854:	5d                   	pop    %ebp
 855:	c3                   	ret    
 856:	8b 10                	mov    (%eax),%edx
 858:	89 11                	mov    %edx,(%ecx)
 85a:	eb eb                	jmp    0x847
 85c:	89 c1                	mov    %eax,%ecx
 85e:	8b 00                	mov    (%eax),%eax
 860:	8b 50 04             	mov    0x4(%eax),%edx
 863:	39 da                	cmp    %ebx,%edx
 865:	73 d3                	jae    0x83a
 867:	39 05 20 0c 00 00    	cmp    %eax,0xc20
 86d:	75 ed                	jne    0x85c
 86f:	89 d8                	mov    %ebx,%eax
 871:	e8 2a ff ff ff       	call   0x7a0
 876:	85 c0                	test   %eax,%eax
 878:	75 e2                	jne    0x85c
 87a:	eb d4                	jmp    0x850
