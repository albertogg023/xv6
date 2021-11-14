
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
  19:	74 14                	je     0x2f
  1b:	83 ec 08             	sub    $0x8,%esp
  1e:	68 2c 06 00 00       	push   $0x62c
  23:	6a 02                	push   $0x2
  25:	e8 44 03 00 00       	call   0x36e
  2a:	e8 ee 01 00 00       	call   0x21d
  2f:	83 ec 08             	sub    $0x8,%esp
  32:	ff 73 08             	pushl  0x8(%ebx)
  35:	ff 73 04             	pushl  0x4(%ebx)
  38:	e8 40 02 00 00       	call   0x27d
  3d:	83 c4 10             	add    $0x10,%esp
  40:	85 c0                	test   %eax,%eax
  42:	78 05                	js     0x49
  44:	e8 d4 01 00 00       	call   0x21d
  49:	ff 73 08             	pushl  0x8(%ebx)
  4c:	ff 73 04             	pushl  0x4(%ebx)
  4f:	68 3f 06 00 00       	push   $0x63f
  54:	6a 02                	push   $0x2
  56:	e8 13 03 00 00       	call   0x36e
  5b:	83 c4 10             	add    $0x10,%esp
  5e:	eb e4                	jmp    0x44
  60:	f3 0f 1e fb          	endbr32 
  64:	55                   	push   %ebp
  65:	89 e5                	mov    %esp,%ebp
  67:	56                   	push   %esi
  68:	53                   	push   %ebx
  69:	8b 75 08             	mov    0x8(%ebp),%esi
  6c:	8b 55 0c             	mov    0xc(%ebp),%edx
  6f:	89 f0                	mov    %esi,%eax
  71:	89 d1                	mov    %edx,%ecx
  73:	83 c2 01             	add    $0x1,%edx
  76:	89 c3                	mov    %eax,%ebx
  78:	83 c0 01             	add    $0x1,%eax
  7b:	0f b6 09             	movzbl (%ecx),%ecx
  7e:	88 0b                	mov    %cl,(%ebx)
  80:	84 c9                	test   %cl,%cl
  82:	75 ed                	jne    0x71
  84:	89 f0                	mov    %esi,%eax
  86:	5b                   	pop    %ebx
  87:	5e                   	pop    %esi
  88:	5d                   	pop    %ebp
  89:	c3                   	ret    
  8a:	f3 0f 1e fb          	endbr32 
  8e:	55                   	push   %ebp
  8f:	89 e5                	mov    %esp,%ebp
  91:	8b 4d 08             	mov    0x8(%ebp),%ecx
  94:	8b 55 0c             	mov    0xc(%ebp),%edx
  97:	0f b6 01             	movzbl (%ecx),%eax
  9a:	84 c0                	test   %al,%al
  9c:	74 0c                	je     0xaa
  9e:	3a 02                	cmp    (%edx),%al
  a0:	75 08                	jne    0xaa
  a2:	83 c1 01             	add    $0x1,%ecx
  a5:	83 c2 01             	add    $0x1,%edx
  a8:	eb ed                	jmp    0x97
  aa:	0f b6 c0             	movzbl %al,%eax
  ad:	0f b6 12             	movzbl (%edx),%edx
  b0:	29 d0                	sub    %edx,%eax
  b2:	5d                   	pop    %ebp
  b3:	c3                   	ret    
  b4:	f3 0f 1e fb          	endbr32 
  b8:	55                   	push   %ebp
  b9:	89 e5                	mov    %esp,%ebp
  bb:	8b 4d 08             	mov    0x8(%ebp),%ecx
  be:	b8 00 00 00 00       	mov    $0x0,%eax
  c3:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  c7:	74 05                	je     0xce
  c9:	83 c0 01             	add    $0x1,%eax
  cc:	eb f5                	jmp    0xc3
  ce:	5d                   	pop    %ebp
  cf:	c3                   	ret    
  d0:	f3 0f 1e fb          	endbr32 
  d4:	55                   	push   %ebp
  d5:	89 e5                	mov    %esp,%ebp
  d7:	57                   	push   %edi
  d8:	8b 55 08             	mov    0x8(%ebp),%edx
  db:	89 d7                	mov    %edx,%edi
  dd:	8b 4d 10             	mov    0x10(%ebp),%ecx
  e0:	8b 45 0c             	mov    0xc(%ebp),%eax
  e3:	fc                   	cld    
  e4:	f3 aa                	rep stos %al,%es:(%edi)
  e6:	89 d0                	mov    %edx,%eax
  e8:	5f                   	pop    %edi
  e9:	5d                   	pop    %ebp
  ea:	c3                   	ret    
  eb:	f3 0f 1e fb          	endbr32 
  ef:	55                   	push   %ebp
  f0:	89 e5                	mov    %esp,%ebp
  f2:	8b 45 08             	mov    0x8(%ebp),%eax
  f5:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  f9:	0f b6 10             	movzbl (%eax),%edx
  fc:	84 d2                	test   %dl,%dl
  fe:	74 09                	je     0x109
 100:	38 ca                	cmp    %cl,%dl
 102:	74 0a                	je     0x10e
 104:	83 c0 01             	add    $0x1,%eax
 107:	eb f0                	jmp    0xf9
 109:	b8 00 00 00 00       	mov    $0x0,%eax
 10e:	5d                   	pop    %ebp
 10f:	c3                   	ret    
 110:	f3 0f 1e fb          	endbr32 
 114:	55                   	push   %ebp
 115:	89 e5                	mov    %esp,%ebp
 117:	57                   	push   %edi
 118:	56                   	push   %esi
 119:	53                   	push   %ebx
 11a:	83 ec 1c             	sub    $0x1c,%esp
 11d:	8b 7d 08             	mov    0x8(%ebp),%edi
 120:	bb 00 00 00 00       	mov    $0x0,%ebx
 125:	89 de                	mov    %ebx,%esi
 127:	83 c3 01             	add    $0x1,%ebx
 12a:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 12d:	7d 2e                	jge    0x15d
 12f:	83 ec 04             	sub    $0x4,%esp
 132:	6a 01                	push   $0x1
 134:	8d 45 e7             	lea    -0x19(%ebp),%eax
 137:	50                   	push   %eax
 138:	6a 00                	push   $0x0
 13a:	e8 f6 00 00 00       	call   0x235
 13f:	83 c4 10             	add    $0x10,%esp
 142:	85 c0                	test   %eax,%eax
 144:	7e 17                	jle    0x15d
 146:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 14a:	88 04 37             	mov    %al,(%edi,%esi,1)
 14d:	3c 0a                	cmp    $0xa,%al
 14f:	0f 94 c2             	sete   %dl
 152:	3c 0d                	cmp    $0xd,%al
 154:	0f 94 c0             	sete   %al
 157:	08 c2                	or     %al,%dl
 159:	74 ca                	je     0x125
 15b:	89 de                	mov    %ebx,%esi
 15d:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 161:	89 f8                	mov    %edi,%eax
 163:	8d 65 f4             	lea    -0xc(%ebp),%esp
 166:	5b                   	pop    %ebx
 167:	5e                   	pop    %esi
 168:	5f                   	pop    %edi
 169:	5d                   	pop    %ebp
 16a:	c3                   	ret    
 16b:	f3 0f 1e fb          	endbr32 
 16f:	55                   	push   %ebp
 170:	89 e5                	mov    %esp,%ebp
 172:	56                   	push   %esi
 173:	53                   	push   %ebx
 174:	83 ec 08             	sub    $0x8,%esp
 177:	6a 00                	push   $0x0
 179:	ff 75 08             	pushl  0x8(%ebp)
 17c:	e8 dc 00 00 00       	call   0x25d
 181:	83 c4 10             	add    $0x10,%esp
 184:	85 c0                	test   %eax,%eax
 186:	78 24                	js     0x1ac
 188:	89 c3                	mov    %eax,%ebx
 18a:	83 ec 08             	sub    $0x8,%esp
 18d:	ff 75 0c             	pushl  0xc(%ebp)
 190:	50                   	push   %eax
 191:	e8 df 00 00 00       	call   0x275
 196:	89 c6                	mov    %eax,%esi
 198:	89 1c 24             	mov    %ebx,(%esp)
 19b:	e8 a5 00 00 00       	call   0x245
 1a0:	83 c4 10             	add    $0x10,%esp
 1a3:	89 f0                	mov    %esi,%eax
 1a5:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1a8:	5b                   	pop    %ebx
 1a9:	5e                   	pop    %esi
 1aa:	5d                   	pop    %ebp
 1ab:	c3                   	ret    
 1ac:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1b1:	eb f0                	jmp    0x1a3
 1b3:	f3 0f 1e fb          	endbr32 
 1b7:	55                   	push   %ebp
 1b8:	89 e5                	mov    %esp,%ebp
 1ba:	53                   	push   %ebx
 1bb:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1be:	ba 00 00 00 00       	mov    $0x0,%edx
 1c3:	0f b6 01             	movzbl (%ecx),%eax
 1c6:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1c9:	80 fb 09             	cmp    $0x9,%bl
 1cc:	77 12                	ja     0x1e0
 1ce:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1d1:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1d4:	83 c1 01             	add    $0x1,%ecx
 1d7:	0f be c0             	movsbl %al,%eax
 1da:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1de:	eb e3                	jmp    0x1c3
 1e0:	89 d0                	mov    %edx,%eax
 1e2:	5b                   	pop    %ebx
 1e3:	5d                   	pop    %ebp
 1e4:	c3                   	ret    
 1e5:	f3 0f 1e fb          	endbr32 
 1e9:	55                   	push   %ebp
 1ea:	89 e5                	mov    %esp,%ebp
 1ec:	56                   	push   %esi
 1ed:	53                   	push   %ebx
 1ee:	8b 75 08             	mov    0x8(%ebp),%esi
 1f1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1f4:	8b 45 10             	mov    0x10(%ebp),%eax
 1f7:	89 f2                	mov    %esi,%edx
 1f9:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1fc:	85 c0                	test   %eax,%eax
 1fe:	7e 0f                	jle    0x20f
 200:	0f b6 01             	movzbl (%ecx),%eax
 203:	88 02                	mov    %al,(%edx)
 205:	8d 49 01             	lea    0x1(%ecx),%ecx
 208:	8d 52 01             	lea    0x1(%edx),%edx
 20b:	89 d8                	mov    %ebx,%eax
 20d:	eb ea                	jmp    0x1f9
 20f:	89 f0                	mov    %esi,%eax
 211:	5b                   	pop    %ebx
 212:	5e                   	pop    %esi
 213:	5d                   	pop    %ebp
 214:	c3                   	ret    
 215:	b8 01 00 00 00       	mov    $0x1,%eax
 21a:	cd 40                	int    $0x40
 21c:	c3                   	ret    
 21d:	b8 02 00 00 00       	mov    $0x2,%eax
 222:	cd 40                	int    $0x40
 224:	c3                   	ret    
 225:	b8 03 00 00 00       	mov    $0x3,%eax
 22a:	cd 40                	int    $0x40
 22c:	c3                   	ret    
 22d:	b8 04 00 00 00       	mov    $0x4,%eax
 232:	cd 40                	int    $0x40
 234:	c3                   	ret    
 235:	b8 05 00 00 00       	mov    $0x5,%eax
 23a:	cd 40                	int    $0x40
 23c:	c3                   	ret    
 23d:	b8 10 00 00 00       	mov    $0x10,%eax
 242:	cd 40                	int    $0x40
 244:	c3                   	ret    
 245:	b8 15 00 00 00       	mov    $0x15,%eax
 24a:	cd 40                	int    $0x40
 24c:	c3                   	ret    
 24d:	b8 06 00 00 00       	mov    $0x6,%eax
 252:	cd 40                	int    $0x40
 254:	c3                   	ret    
 255:	b8 07 00 00 00       	mov    $0x7,%eax
 25a:	cd 40                	int    $0x40
 25c:	c3                   	ret    
 25d:	b8 0f 00 00 00       	mov    $0xf,%eax
 262:	cd 40                	int    $0x40
 264:	c3                   	ret    
 265:	b8 11 00 00 00       	mov    $0x11,%eax
 26a:	cd 40                	int    $0x40
 26c:	c3                   	ret    
 26d:	b8 12 00 00 00       	mov    $0x12,%eax
 272:	cd 40                	int    $0x40
 274:	c3                   	ret    
 275:	b8 08 00 00 00       	mov    $0x8,%eax
 27a:	cd 40                	int    $0x40
 27c:	c3                   	ret    
 27d:	b8 13 00 00 00       	mov    $0x13,%eax
 282:	cd 40                	int    $0x40
 284:	c3                   	ret    
 285:	b8 14 00 00 00       	mov    $0x14,%eax
 28a:	cd 40                	int    $0x40
 28c:	c3                   	ret    
 28d:	b8 09 00 00 00       	mov    $0x9,%eax
 292:	cd 40                	int    $0x40
 294:	c3                   	ret    
 295:	b8 0a 00 00 00       	mov    $0xa,%eax
 29a:	cd 40                	int    $0x40
 29c:	c3                   	ret    
 29d:	b8 0b 00 00 00       	mov    $0xb,%eax
 2a2:	cd 40                	int    $0x40
 2a4:	c3                   	ret    
 2a5:	b8 0c 00 00 00       	mov    $0xc,%eax
 2aa:	cd 40                	int    $0x40
 2ac:	c3                   	ret    
 2ad:	b8 0d 00 00 00       	mov    $0xd,%eax
 2b2:	cd 40                	int    $0x40
 2b4:	c3                   	ret    
 2b5:	b8 0e 00 00 00       	mov    $0xe,%eax
 2ba:	cd 40                	int    $0x40
 2bc:	c3                   	ret    
 2bd:	b8 16 00 00 00       	mov    $0x16,%eax
 2c2:	cd 40                	int    $0x40
 2c4:	c3                   	ret    
 2c5:	b8 17 00 00 00       	mov    $0x17,%eax
 2ca:	cd 40                	int    $0x40
 2cc:	c3                   	ret    
 2cd:	55                   	push   %ebp
 2ce:	89 e5                	mov    %esp,%ebp
 2d0:	83 ec 1c             	sub    $0x1c,%esp
 2d3:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2d6:	6a 01                	push   $0x1
 2d8:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2db:	52                   	push   %edx
 2dc:	50                   	push   %eax
 2dd:	e8 5b ff ff ff       	call   0x23d
 2e2:	83 c4 10             	add    $0x10,%esp
 2e5:	c9                   	leave  
 2e6:	c3                   	ret    
 2e7:	55                   	push   %ebp
 2e8:	89 e5                	mov    %esp,%ebp
 2ea:	57                   	push   %edi
 2eb:	56                   	push   %esi
 2ec:	53                   	push   %ebx
 2ed:	83 ec 2c             	sub    $0x2c,%esp
 2f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2f3:	89 d6                	mov    %edx,%esi
 2f5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2f9:	0f 95 c2             	setne  %dl
 2fc:	89 f0                	mov    %esi,%eax
 2fe:	c1 e8 1f             	shr    $0x1f,%eax
 301:	84 c2                	test   %al,%dl
 303:	74 42                	je     0x347
 305:	f7 de                	neg    %esi
 307:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 30e:	bb 00 00 00 00       	mov    $0x0,%ebx
 313:	89 f0                	mov    %esi,%eax
 315:	ba 00 00 00 00       	mov    $0x0,%edx
 31a:	f7 f1                	div    %ecx
 31c:	89 df                	mov    %ebx,%edi
 31e:	83 c3 01             	add    $0x1,%ebx
 321:	0f b6 92 5c 06 00 00 	movzbl 0x65c(%edx),%edx
 328:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 32c:	89 f2                	mov    %esi,%edx
 32e:	89 c6                	mov    %eax,%esi
 330:	39 d1                	cmp    %edx,%ecx
 332:	76 df                	jbe    0x313
 334:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 338:	74 2f                	je     0x369
 33a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 33f:	8d 5f 02             	lea    0x2(%edi),%ebx
 342:	8b 75 d0             	mov    -0x30(%ebp),%esi
 345:	eb 15                	jmp    0x35c
 347:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 34e:	eb be                	jmp    0x30e
 350:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 355:	89 f0                	mov    %esi,%eax
 357:	e8 71 ff ff ff       	call   0x2cd
 35c:	83 eb 01             	sub    $0x1,%ebx
 35f:	79 ef                	jns    0x350
 361:	83 c4 2c             	add    $0x2c,%esp
 364:	5b                   	pop    %ebx
 365:	5e                   	pop    %esi
 366:	5f                   	pop    %edi
 367:	5d                   	pop    %ebp
 368:	c3                   	ret    
 369:	8b 75 d0             	mov    -0x30(%ebp),%esi
 36c:	eb ee                	jmp    0x35c
 36e:	f3 0f 1e fb          	endbr32 
 372:	55                   	push   %ebp
 373:	89 e5                	mov    %esp,%ebp
 375:	57                   	push   %edi
 376:	56                   	push   %esi
 377:	53                   	push   %ebx
 378:	83 ec 1c             	sub    $0x1c,%esp
 37b:	8d 45 10             	lea    0x10(%ebp),%eax
 37e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 381:	be 00 00 00 00       	mov    $0x0,%esi
 386:	bb 00 00 00 00       	mov    $0x0,%ebx
 38b:	eb 14                	jmp    0x3a1
 38d:	89 fa                	mov    %edi,%edx
 38f:	8b 45 08             	mov    0x8(%ebp),%eax
 392:	e8 36 ff ff ff       	call   0x2cd
 397:	eb 05                	jmp    0x39e
 399:	83 fe 25             	cmp    $0x25,%esi
 39c:	74 25                	je     0x3c3
 39e:	83 c3 01             	add    $0x1,%ebx
 3a1:	8b 45 0c             	mov    0xc(%ebp),%eax
 3a4:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3a8:	84 c0                	test   %al,%al
 3aa:	0f 84 23 01 00 00    	je     0x4d3
 3b0:	0f be f8             	movsbl %al,%edi
 3b3:	0f b6 c0             	movzbl %al,%eax
 3b6:	85 f6                	test   %esi,%esi
 3b8:	75 df                	jne    0x399
 3ba:	83 f8 25             	cmp    $0x25,%eax
 3bd:	75 ce                	jne    0x38d
 3bf:	89 c6                	mov    %eax,%esi
 3c1:	eb db                	jmp    0x39e
 3c3:	83 f8 64             	cmp    $0x64,%eax
 3c6:	74 49                	je     0x411
 3c8:	83 f8 78             	cmp    $0x78,%eax
 3cb:	0f 94 c1             	sete   %cl
 3ce:	83 f8 70             	cmp    $0x70,%eax
 3d1:	0f 94 c2             	sete   %dl
 3d4:	08 d1                	or     %dl,%cl
 3d6:	75 63                	jne    0x43b
 3d8:	83 f8 73             	cmp    $0x73,%eax
 3db:	0f 84 84 00 00 00    	je     0x465
 3e1:	83 f8 63             	cmp    $0x63,%eax
 3e4:	0f 84 b7 00 00 00    	je     0x4a1
 3ea:	83 f8 25             	cmp    $0x25,%eax
 3ed:	0f 84 cc 00 00 00    	je     0x4bf
 3f3:	ba 25 00 00 00       	mov    $0x25,%edx
 3f8:	8b 45 08             	mov    0x8(%ebp),%eax
 3fb:	e8 cd fe ff ff       	call   0x2cd
 400:	89 fa                	mov    %edi,%edx
 402:	8b 45 08             	mov    0x8(%ebp),%eax
 405:	e8 c3 fe ff ff       	call   0x2cd
 40a:	be 00 00 00 00       	mov    $0x0,%esi
 40f:	eb 8d                	jmp    0x39e
 411:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 414:	8b 17                	mov    (%edi),%edx
 416:	83 ec 0c             	sub    $0xc,%esp
 419:	6a 01                	push   $0x1
 41b:	b9 0a 00 00 00       	mov    $0xa,%ecx
 420:	8b 45 08             	mov    0x8(%ebp),%eax
 423:	e8 bf fe ff ff       	call   0x2e7
 428:	83 c7 04             	add    $0x4,%edi
 42b:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 42e:	83 c4 10             	add    $0x10,%esp
 431:	be 00 00 00 00       	mov    $0x0,%esi
 436:	e9 63 ff ff ff       	jmp    0x39e
 43b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 43e:	8b 17                	mov    (%edi),%edx
 440:	83 ec 0c             	sub    $0xc,%esp
 443:	6a 00                	push   $0x0
 445:	b9 10 00 00 00       	mov    $0x10,%ecx
 44a:	8b 45 08             	mov    0x8(%ebp),%eax
 44d:	e8 95 fe ff ff       	call   0x2e7
 452:	83 c7 04             	add    $0x4,%edi
 455:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 458:	83 c4 10             	add    $0x10,%esp
 45b:	be 00 00 00 00       	mov    $0x0,%esi
 460:	e9 39 ff ff ff       	jmp    0x39e
 465:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 468:	8b 30                	mov    (%eax),%esi
 46a:	83 c0 04             	add    $0x4,%eax
 46d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 470:	85 f6                	test   %esi,%esi
 472:	75 28                	jne    0x49c
 474:	be 53 06 00 00       	mov    $0x653,%esi
 479:	8b 7d 08             	mov    0x8(%ebp),%edi
 47c:	eb 0d                	jmp    0x48b
 47e:	0f be d2             	movsbl %dl,%edx
 481:	89 f8                	mov    %edi,%eax
 483:	e8 45 fe ff ff       	call   0x2cd
 488:	83 c6 01             	add    $0x1,%esi
 48b:	0f b6 16             	movzbl (%esi),%edx
 48e:	84 d2                	test   %dl,%dl
 490:	75 ec                	jne    0x47e
 492:	be 00 00 00 00       	mov    $0x0,%esi
 497:	e9 02 ff ff ff       	jmp    0x39e
 49c:	8b 7d 08             	mov    0x8(%ebp),%edi
 49f:	eb ea                	jmp    0x48b
 4a1:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4a4:	0f be 17             	movsbl (%edi),%edx
 4a7:	8b 45 08             	mov    0x8(%ebp),%eax
 4aa:	e8 1e fe ff ff       	call   0x2cd
 4af:	83 c7 04             	add    $0x4,%edi
 4b2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4b5:	be 00 00 00 00       	mov    $0x0,%esi
 4ba:	e9 df fe ff ff       	jmp    0x39e
 4bf:	89 fa                	mov    %edi,%edx
 4c1:	8b 45 08             	mov    0x8(%ebp),%eax
 4c4:	e8 04 fe ff ff       	call   0x2cd
 4c9:	be 00 00 00 00       	mov    $0x0,%esi
 4ce:	e9 cb fe ff ff       	jmp    0x39e
 4d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4d6:	5b                   	pop    %ebx
 4d7:	5e                   	pop    %esi
 4d8:	5f                   	pop    %edi
 4d9:	5d                   	pop    %ebp
 4da:	c3                   	ret    
 4db:	f3 0f 1e fb          	endbr32 
 4df:	55                   	push   %ebp
 4e0:	89 e5                	mov    %esp,%ebp
 4e2:	57                   	push   %edi
 4e3:	56                   	push   %esi
 4e4:	53                   	push   %ebx
 4e5:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4e8:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4eb:	a1 00 09 00 00       	mov    0x900,%eax
 4f0:	eb 02                	jmp    0x4f4
 4f2:	89 d0                	mov    %edx,%eax
 4f4:	39 c8                	cmp    %ecx,%eax
 4f6:	73 04                	jae    0x4fc
 4f8:	39 08                	cmp    %ecx,(%eax)
 4fa:	77 12                	ja     0x50e
 4fc:	8b 10                	mov    (%eax),%edx
 4fe:	39 c2                	cmp    %eax,%edx
 500:	77 f0                	ja     0x4f2
 502:	39 c8                	cmp    %ecx,%eax
 504:	72 08                	jb     0x50e
 506:	39 ca                	cmp    %ecx,%edx
 508:	77 04                	ja     0x50e
 50a:	89 d0                	mov    %edx,%eax
 50c:	eb e6                	jmp    0x4f4
 50e:	8b 73 fc             	mov    -0x4(%ebx),%esi
 511:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 514:	8b 10                	mov    (%eax),%edx
 516:	39 d7                	cmp    %edx,%edi
 518:	74 19                	je     0x533
 51a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 51d:	8b 50 04             	mov    0x4(%eax),%edx
 520:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 523:	39 ce                	cmp    %ecx,%esi
 525:	74 1b                	je     0x542
 527:	89 08                	mov    %ecx,(%eax)
 529:	a3 00 09 00 00       	mov    %eax,0x900
 52e:	5b                   	pop    %ebx
 52f:	5e                   	pop    %esi
 530:	5f                   	pop    %edi
 531:	5d                   	pop    %ebp
 532:	c3                   	ret    
 533:	03 72 04             	add    0x4(%edx),%esi
 536:	89 73 fc             	mov    %esi,-0x4(%ebx)
 539:	8b 10                	mov    (%eax),%edx
 53b:	8b 12                	mov    (%edx),%edx
 53d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 540:	eb db                	jmp    0x51d
 542:	03 53 fc             	add    -0x4(%ebx),%edx
 545:	89 50 04             	mov    %edx,0x4(%eax)
 548:	8b 53 f8             	mov    -0x8(%ebx),%edx
 54b:	89 10                	mov    %edx,(%eax)
 54d:	eb da                	jmp    0x529
 54f:	55                   	push   %ebp
 550:	89 e5                	mov    %esp,%ebp
 552:	53                   	push   %ebx
 553:	83 ec 04             	sub    $0x4,%esp
 556:	89 c3                	mov    %eax,%ebx
 558:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 55d:	77 05                	ja     0x564
 55f:	bb 00 10 00 00       	mov    $0x1000,%ebx
 564:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 56b:	83 ec 0c             	sub    $0xc,%esp
 56e:	50                   	push   %eax
 56f:	e8 31 fd ff ff       	call   0x2a5
 574:	83 c4 10             	add    $0x10,%esp
 577:	83 f8 ff             	cmp    $0xffffffff,%eax
 57a:	74 1c                	je     0x598
 57c:	89 58 04             	mov    %ebx,0x4(%eax)
 57f:	83 c0 08             	add    $0x8,%eax
 582:	83 ec 0c             	sub    $0xc,%esp
 585:	50                   	push   %eax
 586:	e8 50 ff ff ff       	call   0x4db
 58b:	a1 00 09 00 00       	mov    0x900,%eax
 590:	83 c4 10             	add    $0x10,%esp
 593:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 596:	c9                   	leave  
 597:	c3                   	ret    
 598:	b8 00 00 00 00       	mov    $0x0,%eax
 59d:	eb f4                	jmp    0x593
 59f:	f3 0f 1e fb          	endbr32 
 5a3:	55                   	push   %ebp
 5a4:	89 e5                	mov    %esp,%ebp
 5a6:	53                   	push   %ebx
 5a7:	83 ec 04             	sub    $0x4,%esp
 5aa:	8b 45 08             	mov    0x8(%ebp),%eax
 5ad:	8d 58 07             	lea    0x7(%eax),%ebx
 5b0:	c1 eb 03             	shr    $0x3,%ebx
 5b3:	83 c3 01             	add    $0x1,%ebx
 5b6:	8b 0d 00 09 00 00    	mov    0x900,%ecx
 5bc:	85 c9                	test   %ecx,%ecx
 5be:	74 04                	je     0x5c4
 5c0:	8b 01                	mov    (%ecx),%eax
 5c2:	eb 4b                	jmp    0x60f
 5c4:	c7 05 00 09 00 00 04 	movl   $0x904,0x900
 5cb:	09 00 00 
 5ce:	c7 05 04 09 00 00 04 	movl   $0x904,0x904
 5d5:	09 00 00 
 5d8:	c7 05 08 09 00 00 00 	movl   $0x0,0x908
 5df:	00 00 00 
 5e2:	b9 04 09 00 00       	mov    $0x904,%ecx
 5e7:	eb d7                	jmp    0x5c0
 5e9:	74 1a                	je     0x605
 5eb:	29 da                	sub    %ebx,%edx
 5ed:	89 50 04             	mov    %edx,0x4(%eax)
 5f0:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5f3:	89 58 04             	mov    %ebx,0x4(%eax)
 5f6:	89 0d 00 09 00 00    	mov    %ecx,0x900
 5fc:	83 c0 08             	add    $0x8,%eax
 5ff:	83 c4 04             	add    $0x4,%esp
 602:	5b                   	pop    %ebx
 603:	5d                   	pop    %ebp
 604:	c3                   	ret    
 605:	8b 10                	mov    (%eax),%edx
 607:	89 11                	mov    %edx,(%ecx)
 609:	eb eb                	jmp    0x5f6
 60b:	89 c1                	mov    %eax,%ecx
 60d:	8b 00                	mov    (%eax),%eax
 60f:	8b 50 04             	mov    0x4(%eax),%edx
 612:	39 da                	cmp    %ebx,%edx
 614:	73 d3                	jae    0x5e9
 616:	39 05 00 09 00 00    	cmp    %eax,0x900
 61c:	75 ed                	jne    0x60b
 61e:	89 d8                	mov    %ebx,%eax
 620:	e8 2a ff ff ff       	call   0x54f
 625:	85 c0                	test   %eax,%eax
 627:	75 e2                	jne    0x60b
 629:	eb d4                	jmp    0x5ff
