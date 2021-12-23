
_ln:     formato del fichero elf32-i386


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
  13:	8b 59 04             	mov    0x4(%ecx),%ebx
  16:	83 39 03             	cmpl   $0x3,(%ecx)
  19:	74 1b                	je     0x36
  1b:	83 ec 08             	sub    $0x8,%esp
  1e:	68 38 06 00 00       	push   $0x638
  23:	6a 02                	push   $0x2
  25:	e8 50 03 00 00       	call   0x37a
  2a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  31:	e8 f3 01 00 00       	call   0x229
  36:	83 ec 08             	sub    $0x8,%esp
  39:	ff 73 08             	pushl  0x8(%ebx)
  3c:	ff 73 04             	pushl  0x4(%ebx)
  3f:	e8 45 02 00 00       	call   0x289
  44:	83 c4 10             	add    $0x10,%esp
  47:	85 c0                	test   %eax,%eax
  49:	78 0a                	js     0x55
  4b:	83 ec 0c             	sub    $0xc,%esp
  4e:	6a 00                	push   $0x0
  50:	e8 d4 01 00 00       	call   0x229
  55:	ff 73 08             	pushl  0x8(%ebx)
  58:	ff 73 04             	pushl  0x4(%ebx)
  5b:	68 4b 06 00 00       	push   $0x64b
  60:	6a 02                	push   $0x2
  62:	e8 13 03 00 00       	call   0x37a
  67:	83 c4 10             	add    $0x10,%esp
  6a:	eb df                	jmp    0x4b
  6c:	f3 0f 1e fb          	endbr32 
  70:	55                   	push   %ebp
  71:	89 e5                	mov    %esp,%ebp
  73:	56                   	push   %esi
  74:	53                   	push   %ebx
  75:	8b 75 08             	mov    0x8(%ebp),%esi
  78:	8b 55 0c             	mov    0xc(%ebp),%edx
  7b:	89 f0                	mov    %esi,%eax
  7d:	89 d1                	mov    %edx,%ecx
  7f:	83 c2 01             	add    $0x1,%edx
  82:	89 c3                	mov    %eax,%ebx
  84:	83 c0 01             	add    $0x1,%eax
  87:	0f b6 09             	movzbl (%ecx),%ecx
  8a:	88 0b                	mov    %cl,(%ebx)
  8c:	84 c9                	test   %cl,%cl
  8e:	75 ed                	jne    0x7d
  90:	89 f0                	mov    %esi,%eax
  92:	5b                   	pop    %ebx
  93:	5e                   	pop    %esi
  94:	5d                   	pop    %ebp
  95:	c3                   	ret    
  96:	f3 0f 1e fb          	endbr32 
  9a:	55                   	push   %ebp
  9b:	89 e5                	mov    %esp,%ebp
  9d:	8b 4d 08             	mov    0x8(%ebp),%ecx
  a0:	8b 55 0c             	mov    0xc(%ebp),%edx
  a3:	0f b6 01             	movzbl (%ecx),%eax
  a6:	84 c0                	test   %al,%al
  a8:	74 0c                	je     0xb6
  aa:	3a 02                	cmp    (%edx),%al
  ac:	75 08                	jne    0xb6
  ae:	83 c1 01             	add    $0x1,%ecx
  b1:	83 c2 01             	add    $0x1,%edx
  b4:	eb ed                	jmp    0xa3
  b6:	0f b6 c0             	movzbl %al,%eax
  b9:	0f b6 12             	movzbl (%edx),%edx
  bc:	29 d0                	sub    %edx,%eax
  be:	5d                   	pop    %ebp
  bf:	c3                   	ret    
  c0:	f3 0f 1e fb          	endbr32 
  c4:	55                   	push   %ebp
  c5:	89 e5                	mov    %esp,%ebp
  c7:	8b 4d 08             	mov    0x8(%ebp),%ecx
  ca:	b8 00 00 00 00       	mov    $0x0,%eax
  cf:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  d3:	74 05                	je     0xda
  d5:	83 c0 01             	add    $0x1,%eax
  d8:	eb f5                	jmp    0xcf
  da:	5d                   	pop    %ebp
  db:	c3                   	ret    
  dc:	f3 0f 1e fb          	endbr32 
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	57                   	push   %edi
  e4:	8b 55 08             	mov    0x8(%ebp),%edx
  e7:	89 d7                	mov    %edx,%edi
  e9:	8b 4d 10             	mov    0x10(%ebp),%ecx
  ec:	8b 45 0c             	mov    0xc(%ebp),%eax
  ef:	fc                   	cld    
  f0:	f3 aa                	rep stos %al,%es:(%edi)
  f2:	89 d0                	mov    %edx,%eax
  f4:	5f                   	pop    %edi
  f5:	5d                   	pop    %ebp
  f6:	c3                   	ret    
  f7:	f3 0f 1e fb          	endbr32 
  fb:	55                   	push   %ebp
  fc:	89 e5                	mov    %esp,%ebp
  fe:	8b 45 08             	mov    0x8(%ebp),%eax
 101:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 105:	0f b6 10             	movzbl (%eax),%edx
 108:	84 d2                	test   %dl,%dl
 10a:	74 09                	je     0x115
 10c:	38 ca                	cmp    %cl,%dl
 10e:	74 0a                	je     0x11a
 110:	83 c0 01             	add    $0x1,%eax
 113:	eb f0                	jmp    0x105
 115:	b8 00 00 00 00       	mov    $0x0,%eax
 11a:	5d                   	pop    %ebp
 11b:	c3                   	ret    
 11c:	f3 0f 1e fb          	endbr32 
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	57                   	push   %edi
 124:	56                   	push   %esi
 125:	53                   	push   %ebx
 126:	83 ec 1c             	sub    $0x1c,%esp
 129:	8b 7d 08             	mov    0x8(%ebp),%edi
 12c:	bb 00 00 00 00       	mov    $0x0,%ebx
 131:	89 de                	mov    %ebx,%esi
 133:	83 c3 01             	add    $0x1,%ebx
 136:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 139:	7d 2e                	jge    0x169
 13b:	83 ec 04             	sub    $0x4,%esp
 13e:	6a 01                	push   $0x1
 140:	8d 45 e7             	lea    -0x19(%ebp),%eax
 143:	50                   	push   %eax
 144:	6a 00                	push   $0x0
 146:	e8 f6 00 00 00       	call   0x241
 14b:	83 c4 10             	add    $0x10,%esp
 14e:	85 c0                	test   %eax,%eax
 150:	7e 17                	jle    0x169
 152:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 156:	88 04 37             	mov    %al,(%edi,%esi,1)
 159:	3c 0a                	cmp    $0xa,%al
 15b:	0f 94 c2             	sete   %dl
 15e:	3c 0d                	cmp    $0xd,%al
 160:	0f 94 c0             	sete   %al
 163:	08 c2                	or     %al,%dl
 165:	74 ca                	je     0x131
 167:	89 de                	mov    %ebx,%esi
 169:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 16d:	89 f8                	mov    %edi,%eax
 16f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 172:	5b                   	pop    %ebx
 173:	5e                   	pop    %esi
 174:	5f                   	pop    %edi
 175:	5d                   	pop    %ebp
 176:	c3                   	ret    
 177:	f3 0f 1e fb          	endbr32 
 17b:	55                   	push   %ebp
 17c:	89 e5                	mov    %esp,%ebp
 17e:	56                   	push   %esi
 17f:	53                   	push   %ebx
 180:	83 ec 08             	sub    $0x8,%esp
 183:	6a 00                	push   $0x0
 185:	ff 75 08             	pushl  0x8(%ebp)
 188:	e8 dc 00 00 00       	call   0x269
 18d:	83 c4 10             	add    $0x10,%esp
 190:	85 c0                	test   %eax,%eax
 192:	78 24                	js     0x1b8
 194:	89 c3                	mov    %eax,%ebx
 196:	83 ec 08             	sub    $0x8,%esp
 199:	ff 75 0c             	pushl  0xc(%ebp)
 19c:	50                   	push   %eax
 19d:	e8 df 00 00 00       	call   0x281
 1a2:	89 c6                	mov    %eax,%esi
 1a4:	89 1c 24             	mov    %ebx,(%esp)
 1a7:	e8 a5 00 00 00       	call   0x251
 1ac:	83 c4 10             	add    $0x10,%esp
 1af:	89 f0                	mov    %esi,%eax
 1b1:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1b4:	5b                   	pop    %ebx
 1b5:	5e                   	pop    %esi
 1b6:	5d                   	pop    %ebp
 1b7:	c3                   	ret    
 1b8:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1bd:	eb f0                	jmp    0x1af
 1bf:	f3 0f 1e fb          	endbr32 
 1c3:	55                   	push   %ebp
 1c4:	89 e5                	mov    %esp,%ebp
 1c6:	53                   	push   %ebx
 1c7:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1ca:	ba 00 00 00 00       	mov    $0x0,%edx
 1cf:	0f b6 01             	movzbl (%ecx),%eax
 1d2:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1d5:	80 fb 09             	cmp    $0x9,%bl
 1d8:	77 12                	ja     0x1ec
 1da:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1dd:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1e0:	83 c1 01             	add    $0x1,%ecx
 1e3:	0f be c0             	movsbl %al,%eax
 1e6:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1ea:	eb e3                	jmp    0x1cf
 1ec:	89 d0                	mov    %edx,%eax
 1ee:	5b                   	pop    %ebx
 1ef:	5d                   	pop    %ebp
 1f0:	c3                   	ret    
 1f1:	f3 0f 1e fb          	endbr32 
 1f5:	55                   	push   %ebp
 1f6:	89 e5                	mov    %esp,%ebp
 1f8:	56                   	push   %esi
 1f9:	53                   	push   %ebx
 1fa:	8b 75 08             	mov    0x8(%ebp),%esi
 1fd:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 200:	8b 45 10             	mov    0x10(%ebp),%eax
 203:	89 f2                	mov    %esi,%edx
 205:	8d 58 ff             	lea    -0x1(%eax),%ebx
 208:	85 c0                	test   %eax,%eax
 20a:	7e 0f                	jle    0x21b
 20c:	0f b6 01             	movzbl (%ecx),%eax
 20f:	88 02                	mov    %al,(%edx)
 211:	8d 49 01             	lea    0x1(%ecx),%ecx
 214:	8d 52 01             	lea    0x1(%edx),%edx
 217:	89 d8                	mov    %ebx,%eax
 219:	eb ea                	jmp    0x205
 21b:	89 f0                	mov    %esi,%eax
 21d:	5b                   	pop    %ebx
 21e:	5e                   	pop    %esi
 21f:	5d                   	pop    %ebp
 220:	c3                   	ret    
 221:	b8 01 00 00 00       	mov    $0x1,%eax
 226:	cd 40                	int    $0x40
 228:	c3                   	ret    
 229:	b8 02 00 00 00       	mov    $0x2,%eax
 22e:	cd 40                	int    $0x40
 230:	c3                   	ret    
 231:	b8 03 00 00 00       	mov    $0x3,%eax
 236:	cd 40                	int    $0x40
 238:	c3                   	ret    
 239:	b8 04 00 00 00       	mov    $0x4,%eax
 23e:	cd 40                	int    $0x40
 240:	c3                   	ret    
 241:	b8 05 00 00 00       	mov    $0x5,%eax
 246:	cd 40                	int    $0x40
 248:	c3                   	ret    
 249:	b8 10 00 00 00       	mov    $0x10,%eax
 24e:	cd 40                	int    $0x40
 250:	c3                   	ret    
 251:	b8 15 00 00 00       	mov    $0x15,%eax
 256:	cd 40                	int    $0x40
 258:	c3                   	ret    
 259:	b8 06 00 00 00       	mov    $0x6,%eax
 25e:	cd 40                	int    $0x40
 260:	c3                   	ret    
 261:	b8 07 00 00 00       	mov    $0x7,%eax
 266:	cd 40                	int    $0x40
 268:	c3                   	ret    
 269:	b8 0f 00 00 00       	mov    $0xf,%eax
 26e:	cd 40                	int    $0x40
 270:	c3                   	ret    
 271:	b8 11 00 00 00       	mov    $0x11,%eax
 276:	cd 40                	int    $0x40
 278:	c3                   	ret    
 279:	b8 12 00 00 00       	mov    $0x12,%eax
 27e:	cd 40                	int    $0x40
 280:	c3                   	ret    
 281:	b8 08 00 00 00       	mov    $0x8,%eax
 286:	cd 40                	int    $0x40
 288:	c3                   	ret    
 289:	b8 13 00 00 00       	mov    $0x13,%eax
 28e:	cd 40                	int    $0x40
 290:	c3                   	ret    
 291:	b8 14 00 00 00       	mov    $0x14,%eax
 296:	cd 40                	int    $0x40
 298:	c3                   	ret    
 299:	b8 09 00 00 00       	mov    $0x9,%eax
 29e:	cd 40                	int    $0x40
 2a0:	c3                   	ret    
 2a1:	b8 0a 00 00 00       	mov    $0xa,%eax
 2a6:	cd 40                	int    $0x40
 2a8:	c3                   	ret    
 2a9:	b8 0b 00 00 00       	mov    $0xb,%eax
 2ae:	cd 40                	int    $0x40
 2b0:	c3                   	ret    
 2b1:	b8 0c 00 00 00       	mov    $0xc,%eax
 2b6:	cd 40                	int    $0x40
 2b8:	c3                   	ret    
 2b9:	b8 0d 00 00 00       	mov    $0xd,%eax
 2be:	cd 40                	int    $0x40
 2c0:	c3                   	ret    
 2c1:	b8 0e 00 00 00       	mov    $0xe,%eax
 2c6:	cd 40                	int    $0x40
 2c8:	c3                   	ret    
 2c9:	b8 16 00 00 00       	mov    $0x16,%eax
 2ce:	cd 40                	int    $0x40
 2d0:	c3                   	ret    
 2d1:	b8 17 00 00 00       	mov    $0x17,%eax
 2d6:	cd 40                	int    $0x40
 2d8:	c3                   	ret    
 2d9:	55                   	push   %ebp
 2da:	89 e5                	mov    %esp,%ebp
 2dc:	83 ec 1c             	sub    $0x1c,%esp
 2df:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2e2:	6a 01                	push   $0x1
 2e4:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2e7:	52                   	push   %edx
 2e8:	50                   	push   %eax
 2e9:	e8 5b ff ff ff       	call   0x249
 2ee:	83 c4 10             	add    $0x10,%esp
 2f1:	c9                   	leave  
 2f2:	c3                   	ret    
 2f3:	55                   	push   %ebp
 2f4:	89 e5                	mov    %esp,%ebp
 2f6:	57                   	push   %edi
 2f7:	56                   	push   %esi
 2f8:	53                   	push   %ebx
 2f9:	83 ec 2c             	sub    $0x2c,%esp
 2fc:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2ff:	89 d6                	mov    %edx,%esi
 301:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 305:	0f 95 c2             	setne  %dl
 308:	89 f0                	mov    %esi,%eax
 30a:	c1 e8 1f             	shr    $0x1f,%eax
 30d:	84 c2                	test   %al,%dl
 30f:	74 42                	je     0x353
 311:	f7 de                	neg    %esi
 313:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 31a:	bb 00 00 00 00       	mov    $0x0,%ebx
 31f:	89 f0                	mov    %esi,%eax
 321:	ba 00 00 00 00       	mov    $0x0,%edx
 326:	f7 f1                	div    %ecx
 328:	89 df                	mov    %ebx,%edi
 32a:	83 c3 01             	add    $0x1,%ebx
 32d:	0f b6 92 68 06 00 00 	movzbl 0x668(%edx),%edx
 334:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 338:	89 f2                	mov    %esi,%edx
 33a:	89 c6                	mov    %eax,%esi
 33c:	39 d1                	cmp    %edx,%ecx
 33e:	76 df                	jbe    0x31f
 340:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 344:	74 2f                	je     0x375
 346:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 34b:	8d 5f 02             	lea    0x2(%edi),%ebx
 34e:	8b 75 d0             	mov    -0x30(%ebp),%esi
 351:	eb 15                	jmp    0x368
 353:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 35a:	eb be                	jmp    0x31a
 35c:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 361:	89 f0                	mov    %esi,%eax
 363:	e8 71 ff ff ff       	call   0x2d9
 368:	83 eb 01             	sub    $0x1,%ebx
 36b:	79 ef                	jns    0x35c
 36d:	83 c4 2c             	add    $0x2c,%esp
 370:	5b                   	pop    %ebx
 371:	5e                   	pop    %esi
 372:	5f                   	pop    %edi
 373:	5d                   	pop    %ebp
 374:	c3                   	ret    
 375:	8b 75 d0             	mov    -0x30(%ebp),%esi
 378:	eb ee                	jmp    0x368
 37a:	f3 0f 1e fb          	endbr32 
 37e:	55                   	push   %ebp
 37f:	89 e5                	mov    %esp,%ebp
 381:	57                   	push   %edi
 382:	56                   	push   %esi
 383:	53                   	push   %ebx
 384:	83 ec 1c             	sub    $0x1c,%esp
 387:	8d 45 10             	lea    0x10(%ebp),%eax
 38a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 38d:	be 00 00 00 00       	mov    $0x0,%esi
 392:	bb 00 00 00 00       	mov    $0x0,%ebx
 397:	eb 14                	jmp    0x3ad
 399:	89 fa                	mov    %edi,%edx
 39b:	8b 45 08             	mov    0x8(%ebp),%eax
 39e:	e8 36 ff ff ff       	call   0x2d9
 3a3:	eb 05                	jmp    0x3aa
 3a5:	83 fe 25             	cmp    $0x25,%esi
 3a8:	74 25                	je     0x3cf
 3aa:	83 c3 01             	add    $0x1,%ebx
 3ad:	8b 45 0c             	mov    0xc(%ebp),%eax
 3b0:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3b4:	84 c0                	test   %al,%al
 3b6:	0f 84 23 01 00 00    	je     0x4df
 3bc:	0f be f8             	movsbl %al,%edi
 3bf:	0f b6 c0             	movzbl %al,%eax
 3c2:	85 f6                	test   %esi,%esi
 3c4:	75 df                	jne    0x3a5
 3c6:	83 f8 25             	cmp    $0x25,%eax
 3c9:	75 ce                	jne    0x399
 3cb:	89 c6                	mov    %eax,%esi
 3cd:	eb db                	jmp    0x3aa
 3cf:	83 f8 64             	cmp    $0x64,%eax
 3d2:	74 49                	je     0x41d
 3d4:	83 f8 78             	cmp    $0x78,%eax
 3d7:	0f 94 c1             	sete   %cl
 3da:	83 f8 70             	cmp    $0x70,%eax
 3dd:	0f 94 c2             	sete   %dl
 3e0:	08 d1                	or     %dl,%cl
 3e2:	75 63                	jne    0x447
 3e4:	83 f8 73             	cmp    $0x73,%eax
 3e7:	0f 84 84 00 00 00    	je     0x471
 3ed:	83 f8 63             	cmp    $0x63,%eax
 3f0:	0f 84 b7 00 00 00    	je     0x4ad
 3f6:	83 f8 25             	cmp    $0x25,%eax
 3f9:	0f 84 cc 00 00 00    	je     0x4cb
 3ff:	ba 25 00 00 00       	mov    $0x25,%edx
 404:	8b 45 08             	mov    0x8(%ebp),%eax
 407:	e8 cd fe ff ff       	call   0x2d9
 40c:	89 fa                	mov    %edi,%edx
 40e:	8b 45 08             	mov    0x8(%ebp),%eax
 411:	e8 c3 fe ff ff       	call   0x2d9
 416:	be 00 00 00 00       	mov    $0x0,%esi
 41b:	eb 8d                	jmp    0x3aa
 41d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 420:	8b 17                	mov    (%edi),%edx
 422:	83 ec 0c             	sub    $0xc,%esp
 425:	6a 01                	push   $0x1
 427:	b9 0a 00 00 00       	mov    $0xa,%ecx
 42c:	8b 45 08             	mov    0x8(%ebp),%eax
 42f:	e8 bf fe ff ff       	call   0x2f3
 434:	83 c7 04             	add    $0x4,%edi
 437:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 43a:	83 c4 10             	add    $0x10,%esp
 43d:	be 00 00 00 00       	mov    $0x0,%esi
 442:	e9 63 ff ff ff       	jmp    0x3aa
 447:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 44a:	8b 17                	mov    (%edi),%edx
 44c:	83 ec 0c             	sub    $0xc,%esp
 44f:	6a 00                	push   $0x0
 451:	b9 10 00 00 00       	mov    $0x10,%ecx
 456:	8b 45 08             	mov    0x8(%ebp),%eax
 459:	e8 95 fe ff ff       	call   0x2f3
 45e:	83 c7 04             	add    $0x4,%edi
 461:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 464:	83 c4 10             	add    $0x10,%esp
 467:	be 00 00 00 00       	mov    $0x0,%esi
 46c:	e9 39 ff ff ff       	jmp    0x3aa
 471:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 474:	8b 30                	mov    (%eax),%esi
 476:	83 c0 04             	add    $0x4,%eax
 479:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 47c:	85 f6                	test   %esi,%esi
 47e:	75 28                	jne    0x4a8
 480:	be 5f 06 00 00       	mov    $0x65f,%esi
 485:	8b 7d 08             	mov    0x8(%ebp),%edi
 488:	eb 0d                	jmp    0x497
 48a:	0f be d2             	movsbl %dl,%edx
 48d:	89 f8                	mov    %edi,%eax
 48f:	e8 45 fe ff ff       	call   0x2d9
 494:	83 c6 01             	add    $0x1,%esi
 497:	0f b6 16             	movzbl (%esi),%edx
 49a:	84 d2                	test   %dl,%dl
 49c:	75 ec                	jne    0x48a
 49e:	be 00 00 00 00       	mov    $0x0,%esi
 4a3:	e9 02 ff ff ff       	jmp    0x3aa
 4a8:	8b 7d 08             	mov    0x8(%ebp),%edi
 4ab:	eb ea                	jmp    0x497
 4ad:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4b0:	0f be 17             	movsbl (%edi),%edx
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 4b6:	e8 1e fe ff ff       	call   0x2d9
 4bb:	83 c7 04             	add    $0x4,%edi
 4be:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4c1:	be 00 00 00 00       	mov    $0x0,%esi
 4c6:	e9 df fe ff ff       	jmp    0x3aa
 4cb:	89 fa                	mov    %edi,%edx
 4cd:	8b 45 08             	mov    0x8(%ebp),%eax
 4d0:	e8 04 fe ff ff       	call   0x2d9
 4d5:	be 00 00 00 00       	mov    $0x0,%esi
 4da:	e9 cb fe ff ff       	jmp    0x3aa
 4df:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4e2:	5b                   	pop    %ebx
 4e3:	5e                   	pop    %esi
 4e4:	5f                   	pop    %edi
 4e5:	5d                   	pop    %ebp
 4e6:	c3                   	ret    
 4e7:	f3 0f 1e fb          	endbr32 
 4eb:	55                   	push   %ebp
 4ec:	89 e5                	mov    %esp,%ebp
 4ee:	57                   	push   %edi
 4ef:	56                   	push   %esi
 4f0:	53                   	push   %ebx
 4f1:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4f4:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4f7:	a1 0c 09 00 00       	mov    0x90c,%eax
 4fc:	eb 02                	jmp    0x500
 4fe:	89 d0                	mov    %edx,%eax
 500:	39 c8                	cmp    %ecx,%eax
 502:	73 04                	jae    0x508
 504:	39 08                	cmp    %ecx,(%eax)
 506:	77 12                	ja     0x51a
 508:	8b 10                	mov    (%eax),%edx
 50a:	39 c2                	cmp    %eax,%edx
 50c:	77 f0                	ja     0x4fe
 50e:	39 c8                	cmp    %ecx,%eax
 510:	72 08                	jb     0x51a
 512:	39 ca                	cmp    %ecx,%edx
 514:	77 04                	ja     0x51a
 516:	89 d0                	mov    %edx,%eax
 518:	eb e6                	jmp    0x500
 51a:	8b 73 fc             	mov    -0x4(%ebx),%esi
 51d:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 520:	8b 10                	mov    (%eax),%edx
 522:	39 d7                	cmp    %edx,%edi
 524:	74 19                	je     0x53f
 526:	89 53 f8             	mov    %edx,-0x8(%ebx)
 529:	8b 50 04             	mov    0x4(%eax),%edx
 52c:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 52f:	39 ce                	cmp    %ecx,%esi
 531:	74 1b                	je     0x54e
 533:	89 08                	mov    %ecx,(%eax)
 535:	a3 0c 09 00 00       	mov    %eax,0x90c
 53a:	5b                   	pop    %ebx
 53b:	5e                   	pop    %esi
 53c:	5f                   	pop    %edi
 53d:	5d                   	pop    %ebp
 53e:	c3                   	ret    
 53f:	03 72 04             	add    0x4(%edx),%esi
 542:	89 73 fc             	mov    %esi,-0x4(%ebx)
 545:	8b 10                	mov    (%eax),%edx
 547:	8b 12                	mov    (%edx),%edx
 549:	89 53 f8             	mov    %edx,-0x8(%ebx)
 54c:	eb db                	jmp    0x529
 54e:	03 53 fc             	add    -0x4(%ebx),%edx
 551:	89 50 04             	mov    %edx,0x4(%eax)
 554:	8b 53 f8             	mov    -0x8(%ebx),%edx
 557:	89 10                	mov    %edx,(%eax)
 559:	eb da                	jmp    0x535
 55b:	55                   	push   %ebp
 55c:	89 e5                	mov    %esp,%ebp
 55e:	53                   	push   %ebx
 55f:	83 ec 04             	sub    $0x4,%esp
 562:	89 c3                	mov    %eax,%ebx
 564:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 569:	77 05                	ja     0x570
 56b:	bb 00 10 00 00       	mov    $0x1000,%ebx
 570:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 577:	83 ec 0c             	sub    $0xc,%esp
 57a:	50                   	push   %eax
 57b:	e8 31 fd ff ff       	call   0x2b1
 580:	83 c4 10             	add    $0x10,%esp
 583:	83 f8 ff             	cmp    $0xffffffff,%eax
 586:	74 1c                	je     0x5a4
 588:	89 58 04             	mov    %ebx,0x4(%eax)
 58b:	83 c0 08             	add    $0x8,%eax
 58e:	83 ec 0c             	sub    $0xc,%esp
 591:	50                   	push   %eax
 592:	e8 50 ff ff ff       	call   0x4e7
 597:	a1 0c 09 00 00       	mov    0x90c,%eax
 59c:	83 c4 10             	add    $0x10,%esp
 59f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5a2:	c9                   	leave  
 5a3:	c3                   	ret    
 5a4:	b8 00 00 00 00       	mov    $0x0,%eax
 5a9:	eb f4                	jmp    0x59f
 5ab:	f3 0f 1e fb          	endbr32 
 5af:	55                   	push   %ebp
 5b0:	89 e5                	mov    %esp,%ebp
 5b2:	53                   	push   %ebx
 5b3:	83 ec 04             	sub    $0x4,%esp
 5b6:	8b 45 08             	mov    0x8(%ebp),%eax
 5b9:	8d 58 07             	lea    0x7(%eax),%ebx
 5bc:	c1 eb 03             	shr    $0x3,%ebx
 5bf:	83 c3 01             	add    $0x1,%ebx
 5c2:	8b 0d 0c 09 00 00    	mov    0x90c,%ecx
 5c8:	85 c9                	test   %ecx,%ecx
 5ca:	74 04                	je     0x5d0
 5cc:	8b 01                	mov    (%ecx),%eax
 5ce:	eb 4b                	jmp    0x61b
 5d0:	c7 05 0c 09 00 00 10 	movl   $0x910,0x90c
 5d7:	09 00 00 
 5da:	c7 05 10 09 00 00 10 	movl   $0x910,0x910
 5e1:	09 00 00 
 5e4:	c7 05 14 09 00 00 00 	movl   $0x0,0x914
 5eb:	00 00 00 
 5ee:	b9 10 09 00 00       	mov    $0x910,%ecx
 5f3:	eb d7                	jmp    0x5cc
 5f5:	74 1a                	je     0x611
 5f7:	29 da                	sub    %ebx,%edx
 5f9:	89 50 04             	mov    %edx,0x4(%eax)
 5fc:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5ff:	89 58 04             	mov    %ebx,0x4(%eax)
 602:	89 0d 0c 09 00 00    	mov    %ecx,0x90c
 608:	83 c0 08             	add    $0x8,%eax
 60b:	83 c4 04             	add    $0x4,%esp
 60e:	5b                   	pop    %ebx
 60f:	5d                   	pop    %ebp
 610:	c3                   	ret    
 611:	8b 10                	mov    (%eax),%edx
 613:	89 11                	mov    %edx,(%ecx)
 615:	eb eb                	jmp    0x602
 617:	89 c1                	mov    %eax,%ecx
 619:	8b 00                	mov    (%eax),%eax
 61b:	8b 50 04             	mov    0x4(%eax),%edx
 61e:	39 da                	cmp    %ebx,%edx
 620:	73 d3                	jae    0x5f5
 622:	39 05 0c 09 00 00    	cmp    %eax,0x90c
 628:	75 ed                	jne    0x617
 62a:	89 d8                	mov    %ebx,%eax
 62c:	e8 2a ff ff ff       	call   0x55b
 631:	85 c0                	test   %eax,%eax
 633:	75 e2                	jne    0x617
 635:	eb d4                	jmp    0x60b
