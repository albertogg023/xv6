
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
   f:	e8 35 01 00 00       	call   0x149
  14:	83 c4 0c             	add    $0xc,%esp
  17:	50                   	push   %eax
  18:	53                   	push   %ebx
  19:	ff 75 08             	pushl  0x8(%ebp)
  1c:	e8 b1 02 00 00       	call   0x2d2
  21:	83 c4 10             	add    $0x10,%esp
  24:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  27:	c9                   	leave  
  28:	c3                   	ret    
  29:	f3 0f 1e fb          	endbr32 
  2d:	55                   	push   %ebp
  2e:	89 e5                	mov    %esp,%ebp
  30:	53                   	push   %ebx
  31:	83 ec 0c             	sub    $0xc,%esp
  34:	68 5c 03 00 00       	push   $0x35c
  39:	6a 01                	push   $0x1
  3b:	e8 c0 ff ff ff       	call   0x0
  40:	83 c4 10             	add    $0x10,%esp
  43:	bb 00 00 00 00       	mov    $0x0,%ebx
  48:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
  4e:	7f 15                	jg     0x65
  50:	e8 55 02 00 00       	call   0x2aa
  55:	85 c0                	test   %eax,%eax
  57:	78 0c                	js     0x65
  59:	74 05                	je     0x60
  5b:	83 c3 01             	add    $0x1,%ebx
  5e:	eb e8                	jmp    0x48
  60:	e8 4d 02 00 00       	call   0x2b2
  65:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  6b:	74 12                	je     0x7f
  6d:	85 db                	test   %ebx,%ebx
  6f:	7e 3b                	jle    0xac
  71:	e8 44 02 00 00       	call   0x2ba
  76:	85 c0                	test   %eax,%eax
  78:	78 1e                	js     0x98
  7a:	83 eb 01             	sub    $0x1,%ebx
  7d:	eb ee                	jmp    0x6d
  7f:	83 ec 04             	sub    $0x4,%esp
  82:	68 e8 03 00 00       	push   $0x3e8
  87:	68 9c 03 00 00       	push   $0x39c
  8c:	6a 01                	push   $0x1
  8e:	e8 6d ff ff ff       	call   0x0
  93:	e8 1a 02 00 00       	call   0x2b2
  98:	83 ec 08             	sub    $0x8,%esp
  9b:	68 67 03 00 00       	push   $0x367
  a0:	6a 01                	push   $0x1
  a2:	e8 59 ff ff ff       	call   0x0
  a7:	e8 06 02 00 00       	call   0x2b2
  ac:	e8 09 02 00 00       	call   0x2ba
  b1:	83 f8 ff             	cmp    $0xffffffff,%eax
  b4:	75 17                	jne    0xcd
  b6:	83 ec 08             	sub    $0x8,%esp
  b9:	68 8e 03 00 00       	push   $0x38e
  be:	6a 01                	push   $0x1
  c0:	e8 3b ff ff ff       	call   0x0
  c5:	83 c4 10             	add    $0x10,%esp
  c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  cb:	c9                   	leave  
  cc:	c3                   	ret    
  cd:	83 ec 08             	sub    $0x8,%esp
  d0:	68 7b 03 00 00       	push   $0x37b
  d5:	6a 01                	push   $0x1
  d7:	e8 24 ff ff ff       	call   0x0
  dc:	e8 d1 01 00 00       	call   0x2b2
  e1:	f3 0f 1e fb          	endbr32 
  e5:	55                   	push   %ebp
  e6:	89 e5                	mov    %esp,%ebp
  e8:	83 e4 f0             	and    $0xfffffff0,%esp
  eb:	e8 39 ff ff ff       	call   0x29
  f0:	e8 bd 01 00 00       	call   0x2b2
  f5:	f3 0f 1e fb          	endbr32 
  f9:	55                   	push   %ebp
  fa:	89 e5                	mov    %esp,%ebp
  fc:	56                   	push   %esi
  fd:	53                   	push   %ebx
  fe:	8b 75 08             	mov    0x8(%ebp),%esi
 101:	8b 55 0c             	mov    0xc(%ebp),%edx
 104:	89 f0                	mov    %esi,%eax
 106:	89 d1                	mov    %edx,%ecx
 108:	83 c2 01             	add    $0x1,%edx
 10b:	89 c3                	mov    %eax,%ebx
 10d:	83 c0 01             	add    $0x1,%eax
 110:	0f b6 09             	movzbl (%ecx),%ecx
 113:	88 0b                	mov    %cl,(%ebx)
 115:	84 c9                	test   %cl,%cl
 117:	75 ed                	jne    0x106
 119:	89 f0                	mov    %esi,%eax
 11b:	5b                   	pop    %ebx
 11c:	5e                   	pop    %esi
 11d:	5d                   	pop    %ebp
 11e:	c3                   	ret    
 11f:	f3 0f 1e fb          	endbr32 
 123:	55                   	push   %ebp
 124:	89 e5                	mov    %esp,%ebp
 126:	8b 4d 08             	mov    0x8(%ebp),%ecx
 129:	8b 55 0c             	mov    0xc(%ebp),%edx
 12c:	0f b6 01             	movzbl (%ecx),%eax
 12f:	84 c0                	test   %al,%al
 131:	74 0c                	je     0x13f
 133:	3a 02                	cmp    (%edx),%al
 135:	75 08                	jne    0x13f
 137:	83 c1 01             	add    $0x1,%ecx
 13a:	83 c2 01             	add    $0x1,%edx
 13d:	eb ed                	jmp    0x12c
 13f:	0f b6 c0             	movzbl %al,%eax
 142:	0f b6 12             	movzbl (%edx),%edx
 145:	29 d0                	sub    %edx,%eax
 147:	5d                   	pop    %ebp
 148:	c3                   	ret    
 149:	f3 0f 1e fb          	endbr32 
 14d:	55                   	push   %ebp
 14e:	89 e5                	mov    %esp,%ebp
 150:	8b 4d 08             	mov    0x8(%ebp),%ecx
 153:	b8 00 00 00 00       	mov    $0x0,%eax
 158:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 15c:	74 05                	je     0x163
 15e:	83 c0 01             	add    $0x1,%eax
 161:	eb f5                	jmp    0x158
 163:	5d                   	pop    %ebp
 164:	c3                   	ret    
 165:	f3 0f 1e fb          	endbr32 
 169:	55                   	push   %ebp
 16a:	89 e5                	mov    %esp,%ebp
 16c:	57                   	push   %edi
 16d:	8b 55 08             	mov    0x8(%ebp),%edx
 170:	89 d7                	mov    %edx,%edi
 172:	8b 4d 10             	mov    0x10(%ebp),%ecx
 175:	8b 45 0c             	mov    0xc(%ebp),%eax
 178:	fc                   	cld    
 179:	f3 aa                	rep stos %al,%es:(%edi)
 17b:	89 d0                	mov    %edx,%eax
 17d:	5f                   	pop    %edi
 17e:	5d                   	pop    %ebp
 17f:	c3                   	ret    
 180:	f3 0f 1e fb          	endbr32 
 184:	55                   	push   %ebp
 185:	89 e5                	mov    %esp,%ebp
 187:	8b 45 08             	mov    0x8(%ebp),%eax
 18a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 18e:	0f b6 10             	movzbl (%eax),%edx
 191:	84 d2                	test   %dl,%dl
 193:	74 09                	je     0x19e
 195:	38 ca                	cmp    %cl,%dl
 197:	74 0a                	je     0x1a3
 199:	83 c0 01             	add    $0x1,%eax
 19c:	eb f0                	jmp    0x18e
 19e:	b8 00 00 00 00       	mov    $0x0,%eax
 1a3:	5d                   	pop    %ebp
 1a4:	c3                   	ret    
 1a5:	f3 0f 1e fb          	endbr32 
 1a9:	55                   	push   %ebp
 1aa:	89 e5                	mov    %esp,%ebp
 1ac:	57                   	push   %edi
 1ad:	56                   	push   %esi
 1ae:	53                   	push   %ebx
 1af:	83 ec 1c             	sub    $0x1c,%esp
 1b2:	8b 7d 08             	mov    0x8(%ebp),%edi
 1b5:	bb 00 00 00 00       	mov    $0x0,%ebx
 1ba:	89 de                	mov    %ebx,%esi
 1bc:	83 c3 01             	add    $0x1,%ebx
 1bf:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1c2:	7d 2e                	jge    0x1f2
 1c4:	83 ec 04             	sub    $0x4,%esp
 1c7:	6a 01                	push   $0x1
 1c9:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1cc:	50                   	push   %eax
 1cd:	6a 00                	push   $0x0
 1cf:	e8 f6 00 00 00       	call   0x2ca
 1d4:	83 c4 10             	add    $0x10,%esp
 1d7:	85 c0                	test   %eax,%eax
 1d9:	7e 17                	jle    0x1f2
 1db:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1df:	88 04 37             	mov    %al,(%edi,%esi,1)
 1e2:	3c 0a                	cmp    $0xa,%al
 1e4:	0f 94 c2             	sete   %dl
 1e7:	3c 0d                	cmp    $0xd,%al
 1e9:	0f 94 c0             	sete   %al
 1ec:	08 c2                	or     %al,%dl
 1ee:	74 ca                	je     0x1ba
 1f0:	89 de                	mov    %ebx,%esi
 1f2:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 1f6:	89 f8                	mov    %edi,%eax
 1f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1fb:	5b                   	pop    %ebx
 1fc:	5e                   	pop    %esi
 1fd:	5f                   	pop    %edi
 1fe:	5d                   	pop    %ebp
 1ff:	c3                   	ret    
 200:	f3 0f 1e fb          	endbr32 
 204:	55                   	push   %ebp
 205:	89 e5                	mov    %esp,%ebp
 207:	56                   	push   %esi
 208:	53                   	push   %ebx
 209:	83 ec 08             	sub    $0x8,%esp
 20c:	6a 00                	push   $0x0
 20e:	ff 75 08             	pushl  0x8(%ebp)
 211:	e8 dc 00 00 00       	call   0x2f2
 216:	83 c4 10             	add    $0x10,%esp
 219:	85 c0                	test   %eax,%eax
 21b:	78 24                	js     0x241
 21d:	89 c3                	mov    %eax,%ebx
 21f:	83 ec 08             	sub    $0x8,%esp
 222:	ff 75 0c             	pushl  0xc(%ebp)
 225:	50                   	push   %eax
 226:	e8 df 00 00 00       	call   0x30a
 22b:	89 c6                	mov    %eax,%esi
 22d:	89 1c 24             	mov    %ebx,(%esp)
 230:	e8 a5 00 00 00       	call   0x2da
 235:	83 c4 10             	add    $0x10,%esp
 238:	89 f0                	mov    %esi,%eax
 23a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 23d:	5b                   	pop    %ebx
 23e:	5e                   	pop    %esi
 23f:	5d                   	pop    %ebp
 240:	c3                   	ret    
 241:	be ff ff ff ff       	mov    $0xffffffff,%esi
 246:	eb f0                	jmp    0x238
 248:	f3 0f 1e fb          	endbr32 
 24c:	55                   	push   %ebp
 24d:	89 e5                	mov    %esp,%ebp
 24f:	53                   	push   %ebx
 250:	8b 4d 08             	mov    0x8(%ebp),%ecx
 253:	ba 00 00 00 00       	mov    $0x0,%edx
 258:	0f b6 01             	movzbl (%ecx),%eax
 25b:	8d 58 d0             	lea    -0x30(%eax),%ebx
 25e:	80 fb 09             	cmp    $0x9,%bl
 261:	77 12                	ja     0x275
 263:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 266:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 269:	83 c1 01             	add    $0x1,%ecx
 26c:	0f be c0             	movsbl %al,%eax
 26f:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 273:	eb e3                	jmp    0x258
 275:	89 d0                	mov    %edx,%eax
 277:	5b                   	pop    %ebx
 278:	5d                   	pop    %ebp
 279:	c3                   	ret    
 27a:	f3 0f 1e fb          	endbr32 
 27e:	55                   	push   %ebp
 27f:	89 e5                	mov    %esp,%ebp
 281:	56                   	push   %esi
 282:	53                   	push   %ebx
 283:	8b 75 08             	mov    0x8(%ebp),%esi
 286:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 289:	8b 45 10             	mov    0x10(%ebp),%eax
 28c:	89 f2                	mov    %esi,%edx
 28e:	8d 58 ff             	lea    -0x1(%eax),%ebx
 291:	85 c0                	test   %eax,%eax
 293:	7e 0f                	jle    0x2a4
 295:	0f b6 01             	movzbl (%ecx),%eax
 298:	88 02                	mov    %al,(%edx)
 29a:	8d 49 01             	lea    0x1(%ecx),%ecx
 29d:	8d 52 01             	lea    0x1(%edx),%edx
 2a0:	89 d8                	mov    %ebx,%eax
 2a2:	eb ea                	jmp    0x28e
 2a4:	89 f0                	mov    %esi,%eax
 2a6:	5b                   	pop    %ebx
 2a7:	5e                   	pop    %esi
 2a8:	5d                   	pop    %ebp
 2a9:	c3                   	ret    
 2aa:	b8 01 00 00 00       	mov    $0x1,%eax
 2af:	cd 40                	int    $0x40
 2b1:	c3                   	ret    
 2b2:	b8 02 00 00 00       	mov    $0x2,%eax
 2b7:	cd 40                	int    $0x40
 2b9:	c3                   	ret    
 2ba:	b8 03 00 00 00       	mov    $0x3,%eax
 2bf:	cd 40                	int    $0x40
 2c1:	c3                   	ret    
 2c2:	b8 04 00 00 00       	mov    $0x4,%eax
 2c7:	cd 40                	int    $0x40
 2c9:	c3                   	ret    
 2ca:	b8 05 00 00 00       	mov    $0x5,%eax
 2cf:	cd 40                	int    $0x40
 2d1:	c3                   	ret    
 2d2:	b8 10 00 00 00       	mov    $0x10,%eax
 2d7:	cd 40                	int    $0x40
 2d9:	c3                   	ret    
 2da:	b8 15 00 00 00       	mov    $0x15,%eax
 2df:	cd 40                	int    $0x40
 2e1:	c3                   	ret    
 2e2:	b8 06 00 00 00       	mov    $0x6,%eax
 2e7:	cd 40                	int    $0x40
 2e9:	c3                   	ret    
 2ea:	b8 07 00 00 00       	mov    $0x7,%eax
 2ef:	cd 40                	int    $0x40
 2f1:	c3                   	ret    
 2f2:	b8 0f 00 00 00       	mov    $0xf,%eax
 2f7:	cd 40                	int    $0x40
 2f9:	c3                   	ret    
 2fa:	b8 11 00 00 00       	mov    $0x11,%eax
 2ff:	cd 40                	int    $0x40
 301:	c3                   	ret    
 302:	b8 12 00 00 00       	mov    $0x12,%eax
 307:	cd 40                	int    $0x40
 309:	c3                   	ret    
 30a:	b8 08 00 00 00       	mov    $0x8,%eax
 30f:	cd 40                	int    $0x40
 311:	c3                   	ret    
 312:	b8 13 00 00 00       	mov    $0x13,%eax
 317:	cd 40                	int    $0x40
 319:	c3                   	ret    
 31a:	b8 14 00 00 00       	mov    $0x14,%eax
 31f:	cd 40                	int    $0x40
 321:	c3                   	ret    
 322:	b8 09 00 00 00       	mov    $0x9,%eax
 327:	cd 40                	int    $0x40
 329:	c3                   	ret    
 32a:	b8 0a 00 00 00       	mov    $0xa,%eax
 32f:	cd 40                	int    $0x40
 331:	c3                   	ret    
 332:	b8 0b 00 00 00       	mov    $0xb,%eax
 337:	cd 40                	int    $0x40
 339:	c3                   	ret    
 33a:	b8 0c 00 00 00       	mov    $0xc,%eax
 33f:	cd 40                	int    $0x40
 341:	c3                   	ret    
 342:	b8 0d 00 00 00       	mov    $0xd,%eax
 347:	cd 40                	int    $0x40
 349:	c3                   	ret    
 34a:	b8 0e 00 00 00       	mov    $0xe,%eax
 34f:	cd 40                	int    $0x40
 351:	c3                   	ret    
 352:	b8 16 00 00 00       	mov    $0x16,%eax
 357:	cd 40                	int    $0x40
 359:	c3                   	ret    
