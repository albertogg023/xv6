
_forktest:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	53                   	push   %ebx
   8:	83 ec 10             	sub    $0x10,%esp
   b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   e:	53                   	push   %ebx
   f:	e8 6f 01 00 00       	call   0x183
  14:	83 c4 0c             	add    $0xc,%esp
  17:	50                   	push   %eax
  18:	53                   	push   %ebx
  19:	ff 75 08             	pushl  0x8(%ebp)
  1c:	e8 eb 02 00 00       	call   0x30c
  21:	83 c4 10             	add    $0x10,%esp
  24:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  27:	c9                   	leave  
  28:	c3                   	ret    
  29:	f3 0f 1e fb          	endbr32 
  2d:	55                   	push   %ebp
  2e:	89 e5                	mov    %esp,%ebp
  30:	53                   	push   %ebx
  31:	83 ec 0c             	sub    $0xc,%esp
  34:	68 9c 03 00 00       	push   $0x39c
  39:	6a 01                	push   $0x1
  3b:	e8 c0 ff ff ff       	call   0x0
  40:	83 c4 10             	add    $0x10,%esp
  43:	bb 00 00 00 00       	mov    $0x0,%ebx
  48:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
  4e:	7f 1a                	jg     0x6a
  50:	e8 8f 02 00 00       	call   0x2e4
  55:	85 c0                	test   %eax,%eax
  57:	78 11                	js     0x6a
  59:	74 05                	je     0x60
  5b:	83 c3 01             	add    $0x1,%ebx
  5e:	eb e8                	jmp    0x48
  60:	83 ec 0c             	sub    $0xc,%esp
  63:	6a 00                	push   $0x0
  65:	e8 82 02 00 00       	call   0x2ec
  6a:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  70:	74 1a                	je     0x8c
  72:	85 db                	test   %ebx,%ebx
  74:	7e 51                	jle    0xc7
  76:	83 ec 0c             	sub    $0xc,%esp
  79:	6a 00                	push   $0x0
  7b:	e8 74 02 00 00       	call   0x2f4
  80:	83 c4 10             	add    $0x10,%esp
  83:	85 c0                	test   %eax,%eax
  85:	78 25                	js     0xac
  87:	83 eb 01             	sub    $0x1,%ebx
  8a:	eb e6                	jmp    0x72
  8c:	83 ec 04             	sub    $0x4,%esp
  8f:	68 e8 03 00 00       	push   $0x3e8
  94:	68 dc 03 00 00       	push   $0x3dc
  99:	6a 01                	push   $0x1
  9b:	e8 60 ff ff ff       	call   0x0
  a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a7:	e8 40 02 00 00       	call   0x2ec
  ac:	83 ec 08             	sub    $0x8,%esp
  af:	68 a7 03 00 00       	push   $0x3a7
  b4:	6a 01                	push   $0x1
  b6:	e8 45 ff ff ff       	call   0x0
  bb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  c2:	e8 25 02 00 00       	call   0x2ec
  c7:	83 ec 0c             	sub    $0xc,%esp
  ca:	6a 00                	push   $0x0
  cc:	e8 23 02 00 00       	call   0x2f4
  d1:	83 c4 10             	add    $0x10,%esp
  d4:	83 f8 ff             	cmp    $0xffffffff,%eax
  d7:	75 17                	jne    0xf0
  d9:	83 ec 08             	sub    $0x8,%esp
  dc:	68 ce 03 00 00       	push   $0x3ce
  e1:	6a 01                	push   $0x1
  e3:	e8 18 ff ff ff       	call   0x0
  e8:	83 c4 10             	add    $0x10,%esp
  eb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  ee:	c9                   	leave  
  ef:	c3                   	ret    
  f0:	83 ec 08             	sub    $0x8,%esp
  f3:	68 bb 03 00 00       	push   $0x3bb
  f8:	6a 01                	push   $0x1
  fa:	e8 01 ff ff ff       	call   0x0
  ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 106:	e8 e1 01 00 00       	call   0x2ec
 10b:	f3 0f 1e fb          	endbr32 
 10f:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 113:	83 e4 f0             	and    $0xfffffff0,%esp
 116:	ff 71 fc             	pushl  -0x4(%ecx)
 119:	55                   	push   %ebp
 11a:	89 e5                	mov    %esp,%ebp
 11c:	51                   	push   %ecx
 11d:	83 ec 04             	sub    $0x4,%esp
 120:	e8 04 ff ff ff       	call   0x29
 125:	83 ec 0c             	sub    $0xc,%esp
 128:	6a 00                	push   $0x0
 12a:	e8 bd 01 00 00       	call   0x2ec
 12f:	f3 0f 1e fb          	endbr32 
 133:	55                   	push   %ebp
 134:	89 e5                	mov    %esp,%ebp
 136:	56                   	push   %esi
 137:	53                   	push   %ebx
 138:	8b 75 08             	mov    0x8(%ebp),%esi
 13b:	8b 55 0c             	mov    0xc(%ebp),%edx
 13e:	89 f0                	mov    %esi,%eax
 140:	89 d1                	mov    %edx,%ecx
 142:	83 c2 01             	add    $0x1,%edx
 145:	89 c3                	mov    %eax,%ebx
 147:	83 c0 01             	add    $0x1,%eax
 14a:	0f b6 09             	movzbl (%ecx),%ecx
 14d:	88 0b                	mov    %cl,(%ebx)
 14f:	84 c9                	test   %cl,%cl
 151:	75 ed                	jne    0x140
 153:	89 f0                	mov    %esi,%eax
 155:	5b                   	pop    %ebx
 156:	5e                   	pop    %esi
 157:	5d                   	pop    %ebp
 158:	c3                   	ret    
 159:	f3 0f 1e fb          	endbr32 
 15d:	55                   	push   %ebp
 15e:	89 e5                	mov    %esp,%ebp
 160:	8b 4d 08             	mov    0x8(%ebp),%ecx
 163:	8b 55 0c             	mov    0xc(%ebp),%edx
 166:	0f b6 01             	movzbl (%ecx),%eax
 169:	84 c0                	test   %al,%al
 16b:	74 0c                	je     0x179
 16d:	3a 02                	cmp    (%edx),%al
 16f:	75 08                	jne    0x179
 171:	83 c1 01             	add    $0x1,%ecx
 174:	83 c2 01             	add    $0x1,%edx
 177:	eb ed                	jmp    0x166
 179:	0f b6 c0             	movzbl %al,%eax
 17c:	0f b6 12             	movzbl (%edx),%edx
 17f:	29 d0                	sub    %edx,%eax
 181:	5d                   	pop    %ebp
 182:	c3                   	ret    
 183:	f3 0f 1e fb          	endbr32 
 187:	55                   	push   %ebp
 188:	89 e5                	mov    %esp,%ebp
 18a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 18d:	b8 00 00 00 00       	mov    $0x0,%eax
 192:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 196:	74 05                	je     0x19d
 198:	83 c0 01             	add    $0x1,%eax
 19b:	eb f5                	jmp    0x192
 19d:	5d                   	pop    %ebp
 19e:	c3                   	ret    
 19f:	f3 0f 1e fb          	endbr32 
 1a3:	55                   	push   %ebp
 1a4:	89 e5                	mov    %esp,%ebp
 1a6:	57                   	push   %edi
 1a7:	8b 55 08             	mov    0x8(%ebp),%edx
 1aa:	89 d7                	mov    %edx,%edi
 1ac:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1af:	8b 45 0c             	mov    0xc(%ebp),%eax
 1b2:	fc                   	cld    
 1b3:	f3 aa                	rep stos %al,%es:(%edi)
 1b5:	89 d0                	mov    %edx,%eax
 1b7:	5f                   	pop    %edi
 1b8:	5d                   	pop    %ebp
 1b9:	c3                   	ret    
 1ba:	f3 0f 1e fb          	endbr32 
 1be:	55                   	push   %ebp
 1bf:	89 e5                	mov    %esp,%ebp
 1c1:	8b 45 08             	mov    0x8(%ebp),%eax
 1c4:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1c8:	0f b6 10             	movzbl (%eax),%edx
 1cb:	84 d2                	test   %dl,%dl
 1cd:	74 09                	je     0x1d8
 1cf:	38 ca                	cmp    %cl,%dl
 1d1:	74 0a                	je     0x1dd
 1d3:	83 c0 01             	add    $0x1,%eax
 1d6:	eb f0                	jmp    0x1c8
 1d8:	b8 00 00 00 00       	mov    $0x0,%eax
 1dd:	5d                   	pop    %ebp
 1de:	c3                   	ret    
 1df:	f3 0f 1e fb          	endbr32 
 1e3:	55                   	push   %ebp
 1e4:	89 e5                	mov    %esp,%ebp
 1e6:	57                   	push   %edi
 1e7:	56                   	push   %esi
 1e8:	53                   	push   %ebx
 1e9:	83 ec 1c             	sub    $0x1c,%esp
 1ec:	8b 7d 08             	mov    0x8(%ebp),%edi
 1ef:	bb 00 00 00 00       	mov    $0x0,%ebx
 1f4:	89 de                	mov    %ebx,%esi
 1f6:	83 c3 01             	add    $0x1,%ebx
 1f9:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1fc:	7d 2e                	jge    0x22c
 1fe:	83 ec 04             	sub    $0x4,%esp
 201:	6a 01                	push   $0x1
 203:	8d 45 e7             	lea    -0x19(%ebp),%eax
 206:	50                   	push   %eax
 207:	6a 00                	push   $0x0
 209:	e8 f6 00 00 00       	call   0x304
 20e:	83 c4 10             	add    $0x10,%esp
 211:	85 c0                	test   %eax,%eax
 213:	7e 17                	jle    0x22c
 215:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 219:	88 04 37             	mov    %al,(%edi,%esi,1)
 21c:	3c 0a                	cmp    $0xa,%al
 21e:	0f 94 c2             	sete   %dl
 221:	3c 0d                	cmp    $0xd,%al
 223:	0f 94 c0             	sete   %al
 226:	08 c2                	or     %al,%dl
 228:	74 ca                	je     0x1f4
 22a:	89 de                	mov    %ebx,%esi
 22c:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 230:	89 f8                	mov    %edi,%eax
 232:	8d 65 f4             	lea    -0xc(%ebp),%esp
 235:	5b                   	pop    %ebx
 236:	5e                   	pop    %esi
 237:	5f                   	pop    %edi
 238:	5d                   	pop    %ebp
 239:	c3                   	ret    
 23a:	f3 0f 1e fb          	endbr32 
 23e:	55                   	push   %ebp
 23f:	89 e5                	mov    %esp,%ebp
 241:	56                   	push   %esi
 242:	53                   	push   %ebx
 243:	83 ec 08             	sub    $0x8,%esp
 246:	6a 00                	push   $0x0
 248:	ff 75 08             	pushl  0x8(%ebp)
 24b:	e8 dc 00 00 00       	call   0x32c
 250:	83 c4 10             	add    $0x10,%esp
 253:	85 c0                	test   %eax,%eax
 255:	78 24                	js     0x27b
 257:	89 c3                	mov    %eax,%ebx
 259:	83 ec 08             	sub    $0x8,%esp
 25c:	ff 75 0c             	pushl  0xc(%ebp)
 25f:	50                   	push   %eax
 260:	e8 df 00 00 00       	call   0x344
 265:	89 c6                	mov    %eax,%esi
 267:	89 1c 24             	mov    %ebx,(%esp)
 26a:	e8 a5 00 00 00       	call   0x314
 26f:	83 c4 10             	add    $0x10,%esp
 272:	89 f0                	mov    %esi,%eax
 274:	8d 65 f8             	lea    -0x8(%ebp),%esp
 277:	5b                   	pop    %ebx
 278:	5e                   	pop    %esi
 279:	5d                   	pop    %ebp
 27a:	c3                   	ret    
 27b:	be ff ff ff ff       	mov    $0xffffffff,%esi
 280:	eb f0                	jmp    0x272
 282:	f3 0f 1e fb          	endbr32 
 286:	55                   	push   %ebp
 287:	89 e5                	mov    %esp,%ebp
 289:	53                   	push   %ebx
 28a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 28d:	ba 00 00 00 00       	mov    $0x0,%edx
 292:	0f b6 01             	movzbl (%ecx),%eax
 295:	8d 58 d0             	lea    -0x30(%eax),%ebx
 298:	80 fb 09             	cmp    $0x9,%bl
 29b:	77 12                	ja     0x2af
 29d:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 2a0:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2a3:	83 c1 01             	add    $0x1,%ecx
 2a6:	0f be c0             	movsbl %al,%eax
 2a9:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2ad:	eb e3                	jmp    0x292
 2af:	89 d0                	mov    %edx,%eax
 2b1:	5b                   	pop    %ebx
 2b2:	5d                   	pop    %ebp
 2b3:	c3                   	ret    
 2b4:	f3 0f 1e fb          	endbr32 
 2b8:	55                   	push   %ebp
 2b9:	89 e5                	mov    %esp,%ebp
 2bb:	56                   	push   %esi
 2bc:	53                   	push   %ebx
 2bd:	8b 75 08             	mov    0x8(%ebp),%esi
 2c0:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2c3:	8b 45 10             	mov    0x10(%ebp),%eax
 2c6:	89 f2                	mov    %esi,%edx
 2c8:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2cb:	85 c0                	test   %eax,%eax
 2cd:	7e 0f                	jle    0x2de
 2cf:	0f b6 01             	movzbl (%ecx),%eax
 2d2:	88 02                	mov    %al,(%edx)
 2d4:	8d 49 01             	lea    0x1(%ecx),%ecx
 2d7:	8d 52 01             	lea    0x1(%edx),%edx
 2da:	89 d8                	mov    %ebx,%eax
 2dc:	eb ea                	jmp    0x2c8
 2de:	89 f0                	mov    %esi,%eax
 2e0:	5b                   	pop    %ebx
 2e1:	5e                   	pop    %esi
 2e2:	5d                   	pop    %ebp
 2e3:	c3                   	ret    
 2e4:	b8 01 00 00 00       	mov    $0x1,%eax
 2e9:	cd 40                	int    $0x40
 2eb:	c3                   	ret    
 2ec:	b8 02 00 00 00       	mov    $0x2,%eax
 2f1:	cd 40                	int    $0x40
 2f3:	c3                   	ret    
 2f4:	b8 03 00 00 00       	mov    $0x3,%eax
 2f9:	cd 40                	int    $0x40
 2fb:	c3                   	ret    
 2fc:	b8 04 00 00 00       	mov    $0x4,%eax
 301:	cd 40                	int    $0x40
 303:	c3                   	ret    
 304:	b8 05 00 00 00       	mov    $0x5,%eax
 309:	cd 40                	int    $0x40
 30b:	c3                   	ret    
 30c:	b8 10 00 00 00       	mov    $0x10,%eax
 311:	cd 40                	int    $0x40
 313:	c3                   	ret    
 314:	b8 15 00 00 00       	mov    $0x15,%eax
 319:	cd 40                	int    $0x40
 31b:	c3                   	ret    
 31c:	b8 06 00 00 00       	mov    $0x6,%eax
 321:	cd 40                	int    $0x40
 323:	c3                   	ret    
 324:	b8 07 00 00 00       	mov    $0x7,%eax
 329:	cd 40                	int    $0x40
 32b:	c3                   	ret    
 32c:	b8 0f 00 00 00       	mov    $0xf,%eax
 331:	cd 40                	int    $0x40
 333:	c3                   	ret    
 334:	b8 11 00 00 00       	mov    $0x11,%eax
 339:	cd 40                	int    $0x40
 33b:	c3                   	ret    
 33c:	b8 12 00 00 00       	mov    $0x12,%eax
 341:	cd 40                	int    $0x40
 343:	c3                   	ret    
 344:	b8 08 00 00 00       	mov    $0x8,%eax
 349:	cd 40                	int    $0x40
 34b:	c3                   	ret    
 34c:	b8 13 00 00 00       	mov    $0x13,%eax
 351:	cd 40                	int    $0x40
 353:	c3                   	ret    
 354:	b8 14 00 00 00       	mov    $0x14,%eax
 359:	cd 40                	int    $0x40
 35b:	c3                   	ret    
 35c:	b8 09 00 00 00       	mov    $0x9,%eax
 361:	cd 40                	int    $0x40
 363:	c3                   	ret    
 364:	b8 0a 00 00 00       	mov    $0xa,%eax
 369:	cd 40                	int    $0x40
 36b:	c3                   	ret    
 36c:	b8 0b 00 00 00       	mov    $0xb,%eax
 371:	cd 40                	int    $0x40
 373:	c3                   	ret    
 374:	b8 0c 00 00 00       	mov    $0xc,%eax
 379:	cd 40                	int    $0x40
 37b:	c3                   	ret    
 37c:	b8 0d 00 00 00       	mov    $0xd,%eax
 381:	cd 40                	int    $0x40
 383:	c3                   	ret    
 384:	b8 0e 00 00 00       	mov    $0xe,%eax
 389:	cd 40                	int    $0x40
 38b:	c3                   	ret    
 38c:	b8 16 00 00 00       	mov    $0x16,%eax
 391:	cd 40                	int    $0x40
 393:	c3                   	ret    
 394:	b8 17 00 00 00       	mov    $0x17,%eax
 399:	cd 40                	int    $0x40
 39b:	c3                   	ret    
