
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
  1e:	68 24 06 00 00       	push   $0x624
  23:	6a 02                	push   $0x2
  25:	e8 3c 03 00 00       	call   0x366
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
  4f:	68 37 06 00 00       	push   $0x637
  54:	6a 02                	push   $0x2
  56:	e8 0b 03 00 00       	call   0x366
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
 2c5:	55                   	push   %ebp
 2c6:	89 e5                	mov    %esp,%ebp
 2c8:	83 ec 1c             	sub    $0x1c,%esp
 2cb:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2ce:	6a 01                	push   $0x1
 2d0:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2d3:	52                   	push   %edx
 2d4:	50                   	push   %eax
 2d5:	e8 63 ff ff ff       	call   0x23d
 2da:	83 c4 10             	add    $0x10,%esp
 2dd:	c9                   	leave  
 2de:	c3                   	ret    
 2df:	55                   	push   %ebp
 2e0:	89 e5                	mov    %esp,%ebp
 2e2:	57                   	push   %edi
 2e3:	56                   	push   %esi
 2e4:	53                   	push   %ebx
 2e5:	83 ec 2c             	sub    $0x2c,%esp
 2e8:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2eb:	89 d6                	mov    %edx,%esi
 2ed:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2f1:	0f 95 c2             	setne  %dl
 2f4:	89 f0                	mov    %esi,%eax
 2f6:	c1 e8 1f             	shr    $0x1f,%eax
 2f9:	84 c2                	test   %al,%dl
 2fb:	74 42                	je     0x33f
 2fd:	f7 de                	neg    %esi
 2ff:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 306:	bb 00 00 00 00       	mov    $0x0,%ebx
 30b:	89 f0                	mov    %esi,%eax
 30d:	ba 00 00 00 00       	mov    $0x0,%edx
 312:	f7 f1                	div    %ecx
 314:	89 df                	mov    %ebx,%edi
 316:	83 c3 01             	add    $0x1,%ebx
 319:	0f b6 92 54 06 00 00 	movzbl 0x654(%edx),%edx
 320:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 324:	89 f2                	mov    %esi,%edx
 326:	89 c6                	mov    %eax,%esi
 328:	39 d1                	cmp    %edx,%ecx
 32a:	76 df                	jbe    0x30b
 32c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 330:	74 2f                	je     0x361
 332:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 337:	8d 5f 02             	lea    0x2(%edi),%ebx
 33a:	8b 75 d0             	mov    -0x30(%ebp),%esi
 33d:	eb 15                	jmp    0x354
 33f:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 346:	eb be                	jmp    0x306
 348:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 34d:	89 f0                	mov    %esi,%eax
 34f:	e8 71 ff ff ff       	call   0x2c5
 354:	83 eb 01             	sub    $0x1,%ebx
 357:	79 ef                	jns    0x348
 359:	83 c4 2c             	add    $0x2c,%esp
 35c:	5b                   	pop    %ebx
 35d:	5e                   	pop    %esi
 35e:	5f                   	pop    %edi
 35f:	5d                   	pop    %ebp
 360:	c3                   	ret    
 361:	8b 75 d0             	mov    -0x30(%ebp),%esi
 364:	eb ee                	jmp    0x354
 366:	f3 0f 1e fb          	endbr32 
 36a:	55                   	push   %ebp
 36b:	89 e5                	mov    %esp,%ebp
 36d:	57                   	push   %edi
 36e:	56                   	push   %esi
 36f:	53                   	push   %ebx
 370:	83 ec 1c             	sub    $0x1c,%esp
 373:	8d 45 10             	lea    0x10(%ebp),%eax
 376:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 379:	be 00 00 00 00       	mov    $0x0,%esi
 37e:	bb 00 00 00 00       	mov    $0x0,%ebx
 383:	eb 14                	jmp    0x399
 385:	89 fa                	mov    %edi,%edx
 387:	8b 45 08             	mov    0x8(%ebp),%eax
 38a:	e8 36 ff ff ff       	call   0x2c5
 38f:	eb 05                	jmp    0x396
 391:	83 fe 25             	cmp    $0x25,%esi
 394:	74 25                	je     0x3bb
 396:	83 c3 01             	add    $0x1,%ebx
 399:	8b 45 0c             	mov    0xc(%ebp),%eax
 39c:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3a0:	84 c0                	test   %al,%al
 3a2:	0f 84 23 01 00 00    	je     0x4cb
 3a8:	0f be f8             	movsbl %al,%edi
 3ab:	0f b6 c0             	movzbl %al,%eax
 3ae:	85 f6                	test   %esi,%esi
 3b0:	75 df                	jne    0x391
 3b2:	83 f8 25             	cmp    $0x25,%eax
 3b5:	75 ce                	jne    0x385
 3b7:	89 c6                	mov    %eax,%esi
 3b9:	eb db                	jmp    0x396
 3bb:	83 f8 64             	cmp    $0x64,%eax
 3be:	74 49                	je     0x409
 3c0:	83 f8 78             	cmp    $0x78,%eax
 3c3:	0f 94 c1             	sete   %cl
 3c6:	83 f8 70             	cmp    $0x70,%eax
 3c9:	0f 94 c2             	sete   %dl
 3cc:	08 d1                	or     %dl,%cl
 3ce:	75 63                	jne    0x433
 3d0:	83 f8 73             	cmp    $0x73,%eax
 3d3:	0f 84 84 00 00 00    	je     0x45d
 3d9:	83 f8 63             	cmp    $0x63,%eax
 3dc:	0f 84 b7 00 00 00    	je     0x499
 3e2:	83 f8 25             	cmp    $0x25,%eax
 3e5:	0f 84 cc 00 00 00    	je     0x4b7
 3eb:	ba 25 00 00 00       	mov    $0x25,%edx
 3f0:	8b 45 08             	mov    0x8(%ebp),%eax
 3f3:	e8 cd fe ff ff       	call   0x2c5
 3f8:	89 fa                	mov    %edi,%edx
 3fa:	8b 45 08             	mov    0x8(%ebp),%eax
 3fd:	e8 c3 fe ff ff       	call   0x2c5
 402:	be 00 00 00 00       	mov    $0x0,%esi
 407:	eb 8d                	jmp    0x396
 409:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 40c:	8b 17                	mov    (%edi),%edx
 40e:	83 ec 0c             	sub    $0xc,%esp
 411:	6a 01                	push   $0x1
 413:	b9 0a 00 00 00       	mov    $0xa,%ecx
 418:	8b 45 08             	mov    0x8(%ebp),%eax
 41b:	e8 bf fe ff ff       	call   0x2df
 420:	83 c7 04             	add    $0x4,%edi
 423:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 426:	83 c4 10             	add    $0x10,%esp
 429:	be 00 00 00 00       	mov    $0x0,%esi
 42e:	e9 63 ff ff ff       	jmp    0x396
 433:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 436:	8b 17                	mov    (%edi),%edx
 438:	83 ec 0c             	sub    $0xc,%esp
 43b:	6a 00                	push   $0x0
 43d:	b9 10 00 00 00       	mov    $0x10,%ecx
 442:	8b 45 08             	mov    0x8(%ebp),%eax
 445:	e8 95 fe ff ff       	call   0x2df
 44a:	83 c7 04             	add    $0x4,%edi
 44d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 450:	83 c4 10             	add    $0x10,%esp
 453:	be 00 00 00 00       	mov    $0x0,%esi
 458:	e9 39 ff ff ff       	jmp    0x396
 45d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 460:	8b 30                	mov    (%eax),%esi
 462:	83 c0 04             	add    $0x4,%eax
 465:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 468:	85 f6                	test   %esi,%esi
 46a:	75 28                	jne    0x494
 46c:	be 4b 06 00 00       	mov    $0x64b,%esi
 471:	8b 7d 08             	mov    0x8(%ebp),%edi
 474:	eb 0d                	jmp    0x483
 476:	0f be d2             	movsbl %dl,%edx
 479:	89 f8                	mov    %edi,%eax
 47b:	e8 45 fe ff ff       	call   0x2c5
 480:	83 c6 01             	add    $0x1,%esi
 483:	0f b6 16             	movzbl (%esi),%edx
 486:	84 d2                	test   %dl,%dl
 488:	75 ec                	jne    0x476
 48a:	be 00 00 00 00       	mov    $0x0,%esi
 48f:	e9 02 ff ff ff       	jmp    0x396
 494:	8b 7d 08             	mov    0x8(%ebp),%edi
 497:	eb ea                	jmp    0x483
 499:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 49c:	0f be 17             	movsbl (%edi),%edx
 49f:	8b 45 08             	mov    0x8(%ebp),%eax
 4a2:	e8 1e fe ff ff       	call   0x2c5
 4a7:	83 c7 04             	add    $0x4,%edi
 4aa:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4ad:	be 00 00 00 00       	mov    $0x0,%esi
 4b2:	e9 df fe ff ff       	jmp    0x396
 4b7:	89 fa                	mov    %edi,%edx
 4b9:	8b 45 08             	mov    0x8(%ebp),%eax
 4bc:	e8 04 fe ff ff       	call   0x2c5
 4c1:	be 00 00 00 00       	mov    $0x0,%esi
 4c6:	e9 cb fe ff ff       	jmp    0x396
 4cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ce:	5b                   	pop    %ebx
 4cf:	5e                   	pop    %esi
 4d0:	5f                   	pop    %edi
 4d1:	5d                   	pop    %ebp
 4d2:	c3                   	ret    
 4d3:	f3 0f 1e fb          	endbr32 
 4d7:	55                   	push   %ebp
 4d8:	89 e5                	mov    %esp,%ebp
 4da:	57                   	push   %edi
 4db:	56                   	push   %esi
 4dc:	53                   	push   %ebx
 4dd:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4e0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4e3:	a1 f8 08 00 00       	mov    0x8f8,%eax
 4e8:	eb 02                	jmp    0x4ec
 4ea:	89 d0                	mov    %edx,%eax
 4ec:	39 c8                	cmp    %ecx,%eax
 4ee:	73 04                	jae    0x4f4
 4f0:	39 08                	cmp    %ecx,(%eax)
 4f2:	77 12                	ja     0x506
 4f4:	8b 10                	mov    (%eax),%edx
 4f6:	39 c2                	cmp    %eax,%edx
 4f8:	77 f0                	ja     0x4ea
 4fa:	39 c8                	cmp    %ecx,%eax
 4fc:	72 08                	jb     0x506
 4fe:	39 ca                	cmp    %ecx,%edx
 500:	77 04                	ja     0x506
 502:	89 d0                	mov    %edx,%eax
 504:	eb e6                	jmp    0x4ec
 506:	8b 73 fc             	mov    -0x4(%ebx),%esi
 509:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 50c:	8b 10                	mov    (%eax),%edx
 50e:	39 d7                	cmp    %edx,%edi
 510:	74 19                	je     0x52b
 512:	89 53 f8             	mov    %edx,-0x8(%ebx)
 515:	8b 50 04             	mov    0x4(%eax),%edx
 518:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 51b:	39 ce                	cmp    %ecx,%esi
 51d:	74 1b                	je     0x53a
 51f:	89 08                	mov    %ecx,(%eax)
 521:	a3 f8 08 00 00       	mov    %eax,0x8f8
 526:	5b                   	pop    %ebx
 527:	5e                   	pop    %esi
 528:	5f                   	pop    %edi
 529:	5d                   	pop    %ebp
 52a:	c3                   	ret    
 52b:	03 72 04             	add    0x4(%edx),%esi
 52e:	89 73 fc             	mov    %esi,-0x4(%ebx)
 531:	8b 10                	mov    (%eax),%edx
 533:	8b 12                	mov    (%edx),%edx
 535:	89 53 f8             	mov    %edx,-0x8(%ebx)
 538:	eb db                	jmp    0x515
 53a:	03 53 fc             	add    -0x4(%ebx),%edx
 53d:	89 50 04             	mov    %edx,0x4(%eax)
 540:	8b 53 f8             	mov    -0x8(%ebx),%edx
 543:	89 10                	mov    %edx,(%eax)
 545:	eb da                	jmp    0x521
 547:	55                   	push   %ebp
 548:	89 e5                	mov    %esp,%ebp
 54a:	53                   	push   %ebx
 54b:	83 ec 04             	sub    $0x4,%esp
 54e:	89 c3                	mov    %eax,%ebx
 550:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 555:	77 05                	ja     0x55c
 557:	bb 00 10 00 00       	mov    $0x1000,%ebx
 55c:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 563:	83 ec 0c             	sub    $0xc,%esp
 566:	50                   	push   %eax
 567:	e8 39 fd ff ff       	call   0x2a5
 56c:	83 c4 10             	add    $0x10,%esp
 56f:	83 f8 ff             	cmp    $0xffffffff,%eax
 572:	74 1c                	je     0x590
 574:	89 58 04             	mov    %ebx,0x4(%eax)
 577:	83 c0 08             	add    $0x8,%eax
 57a:	83 ec 0c             	sub    $0xc,%esp
 57d:	50                   	push   %eax
 57e:	e8 50 ff ff ff       	call   0x4d3
 583:	a1 f8 08 00 00       	mov    0x8f8,%eax
 588:	83 c4 10             	add    $0x10,%esp
 58b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 58e:	c9                   	leave  
 58f:	c3                   	ret    
 590:	b8 00 00 00 00       	mov    $0x0,%eax
 595:	eb f4                	jmp    0x58b
 597:	f3 0f 1e fb          	endbr32 
 59b:	55                   	push   %ebp
 59c:	89 e5                	mov    %esp,%ebp
 59e:	53                   	push   %ebx
 59f:	83 ec 04             	sub    $0x4,%esp
 5a2:	8b 45 08             	mov    0x8(%ebp),%eax
 5a5:	8d 58 07             	lea    0x7(%eax),%ebx
 5a8:	c1 eb 03             	shr    $0x3,%ebx
 5ab:	83 c3 01             	add    $0x1,%ebx
 5ae:	8b 0d f8 08 00 00    	mov    0x8f8,%ecx
 5b4:	85 c9                	test   %ecx,%ecx
 5b6:	74 04                	je     0x5bc
 5b8:	8b 01                	mov    (%ecx),%eax
 5ba:	eb 4b                	jmp    0x607
 5bc:	c7 05 f8 08 00 00 fc 	movl   $0x8fc,0x8f8
 5c3:	08 00 00 
 5c6:	c7 05 fc 08 00 00 fc 	movl   $0x8fc,0x8fc
 5cd:	08 00 00 
 5d0:	c7 05 00 09 00 00 00 	movl   $0x0,0x900
 5d7:	00 00 00 
 5da:	b9 fc 08 00 00       	mov    $0x8fc,%ecx
 5df:	eb d7                	jmp    0x5b8
 5e1:	74 1a                	je     0x5fd
 5e3:	29 da                	sub    %ebx,%edx
 5e5:	89 50 04             	mov    %edx,0x4(%eax)
 5e8:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5eb:	89 58 04             	mov    %ebx,0x4(%eax)
 5ee:	89 0d f8 08 00 00    	mov    %ecx,0x8f8
 5f4:	83 c0 08             	add    $0x8,%eax
 5f7:	83 c4 04             	add    $0x4,%esp
 5fa:	5b                   	pop    %ebx
 5fb:	5d                   	pop    %ebp
 5fc:	c3                   	ret    
 5fd:	8b 10                	mov    (%eax),%edx
 5ff:	89 11                	mov    %edx,(%ecx)
 601:	eb eb                	jmp    0x5ee
 603:	89 c1                	mov    %eax,%ecx
 605:	8b 00                	mov    (%eax),%eax
 607:	8b 50 04             	mov    0x4(%eax),%edx
 60a:	39 da                	cmp    %ebx,%edx
 60c:	73 d3                	jae    0x5e1
 60e:	39 05 f8 08 00 00    	cmp    %eax,0x8f8
 614:	75 ed                	jne    0x603
 616:	89 d8                	mov    %ebx,%eax
 618:	e8 2a ff ff ff       	call   0x547
 61d:	85 c0                	test   %eax,%eax
 61f:	75 e2                	jne    0x603
 621:	eb d4                	jmp    0x5f7
