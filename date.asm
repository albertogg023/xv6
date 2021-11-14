
_date:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	51                   	push   %ecx
  12:	83 ec 30             	sub    $0x30,%esp
  15:	8d 45 e0             	lea    -0x20(%ebp),%eax
  18:	50                   	push   %eax
  19:	e8 98 02 00 00       	call   0x2b6
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	74 14                	je     0x39
  25:	83 ec 08             	sub    $0x8,%esp
  28:	68 24 06 00 00       	push   $0x624
  2d:	6a 02                	push   $0x2
  2f:	e8 33 03 00 00       	call   0x367
  34:	e8 dd 01 00 00       	call   0x216
  39:	83 ec 0c             	sub    $0xc,%esp
  3c:	ff 75 f4             	pushl  -0xc(%ebp)
  3f:	ff 75 f0             	pushl  -0x10(%ebp)
  42:	ff 75 ec             	pushl  -0x14(%ebp)
  45:	68 32 06 00 00       	push   $0x632
  4a:	6a 01                	push   $0x1
  4c:	e8 16 03 00 00       	call   0x367
  51:	83 c4 20             	add    $0x20,%esp
  54:	e8 bd 01 00 00       	call   0x216
  59:	f3 0f 1e fb          	endbr32 
  5d:	55                   	push   %ebp
  5e:	89 e5                	mov    %esp,%ebp
  60:	56                   	push   %esi
  61:	53                   	push   %ebx
  62:	8b 75 08             	mov    0x8(%ebp),%esi
  65:	8b 55 0c             	mov    0xc(%ebp),%edx
  68:	89 f0                	mov    %esi,%eax
  6a:	89 d1                	mov    %edx,%ecx
  6c:	83 c2 01             	add    $0x1,%edx
  6f:	89 c3                	mov    %eax,%ebx
  71:	83 c0 01             	add    $0x1,%eax
  74:	0f b6 09             	movzbl (%ecx),%ecx
  77:	88 0b                	mov    %cl,(%ebx)
  79:	84 c9                	test   %cl,%cl
  7b:	75 ed                	jne    0x6a
  7d:	89 f0                	mov    %esi,%eax
  7f:	5b                   	pop    %ebx
  80:	5e                   	pop    %esi
  81:	5d                   	pop    %ebp
  82:	c3                   	ret    
  83:	f3 0f 1e fb          	endbr32 
  87:	55                   	push   %ebp
  88:	89 e5                	mov    %esp,%ebp
  8a:	8b 4d 08             	mov    0x8(%ebp),%ecx
  8d:	8b 55 0c             	mov    0xc(%ebp),%edx
  90:	0f b6 01             	movzbl (%ecx),%eax
  93:	84 c0                	test   %al,%al
  95:	74 0c                	je     0xa3
  97:	3a 02                	cmp    (%edx),%al
  99:	75 08                	jne    0xa3
  9b:	83 c1 01             	add    $0x1,%ecx
  9e:	83 c2 01             	add    $0x1,%edx
  a1:	eb ed                	jmp    0x90
  a3:	0f b6 c0             	movzbl %al,%eax
  a6:	0f b6 12             	movzbl (%edx),%edx
  a9:	29 d0                	sub    %edx,%eax
  ab:	5d                   	pop    %ebp
  ac:	c3                   	ret    
  ad:	f3 0f 1e fb          	endbr32 
  b1:	55                   	push   %ebp
  b2:	89 e5                	mov    %esp,%ebp
  b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b7:	b8 00 00 00 00       	mov    $0x0,%eax
  bc:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  c0:	74 05                	je     0xc7
  c2:	83 c0 01             	add    $0x1,%eax
  c5:	eb f5                	jmp    0xbc
  c7:	5d                   	pop    %ebp
  c8:	c3                   	ret    
  c9:	f3 0f 1e fb          	endbr32 
  cd:	55                   	push   %ebp
  ce:	89 e5                	mov    %esp,%ebp
  d0:	57                   	push   %edi
  d1:	8b 55 08             	mov    0x8(%ebp),%edx
  d4:	89 d7                	mov    %edx,%edi
  d6:	8b 4d 10             	mov    0x10(%ebp),%ecx
  d9:	8b 45 0c             	mov    0xc(%ebp),%eax
  dc:	fc                   	cld    
  dd:	f3 aa                	rep stos %al,%es:(%edi)
  df:	89 d0                	mov    %edx,%eax
  e1:	5f                   	pop    %edi
  e2:	5d                   	pop    %ebp
  e3:	c3                   	ret    
  e4:	f3 0f 1e fb          	endbr32 
  e8:	55                   	push   %ebp
  e9:	89 e5                	mov    %esp,%ebp
  eb:	8b 45 08             	mov    0x8(%ebp),%eax
  ee:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  f2:	0f b6 10             	movzbl (%eax),%edx
  f5:	84 d2                	test   %dl,%dl
  f7:	74 09                	je     0x102
  f9:	38 ca                	cmp    %cl,%dl
  fb:	74 0a                	je     0x107
  fd:	83 c0 01             	add    $0x1,%eax
 100:	eb f0                	jmp    0xf2
 102:	b8 00 00 00 00       	mov    $0x0,%eax
 107:	5d                   	pop    %ebp
 108:	c3                   	ret    
 109:	f3 0f 1e fb          	endbr32 
 10d:	55                   	push   %ebp
 10e:	89 e5                	mov    %esp,%ebp
 110:	57                   	push   %edi
 111:	56                   	push   %esi
 112:	53                   	push   %ebx
 113:	83 ec 1c             	sub    $0x1c,%esp
 116:	8b 7d 08             	mov    0x8(%ebp),%edi
 119:	bb 00 00 00 00       	mov    $0x0,%ebx
 11e:	89 de                	mov    %ebx,%esi
 120:	83 c3 01             	add    $0x1,%ebx
 123:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 126:	7d 2e                	jge    0x156
 128:	83 ec 04             	sub    $0x4,%esp
 12b:	6a 01                	push   $0x1
 12d:	8d 45 e7             	lea    -0x19(%ebp),%eax
 130:	50                   	push   %eax
 131:	6a 00                	push   $0x0
 133:	e8 f6 00 00 00       	call   0x22e
 138:	83 c4 10             	add    $0x10,%esp
 13b:	85 c0                	test   %eax,%eax
 13d:	7e 17                	jle    0x156
 13f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 143:	88 04 37             	mov    %al,(%edi,%esi,1)
 146:	3c 0a                	cmp    $0xa,%al
 148:	0f 94 c2             	sete   %dl
 14b:	3c 0d                	cmp    $0xd,%al
 14d:	0f 94 c0             	sete   %al
 150:	08 c2                	or     %al,%dl
 152:	74 ca                	je     0x11e
 154:	89 de                	mov    %ebx,%esi
 156:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 15a:	89 f8                	mov    %edi,%eax
 15c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 15f:	5b                   	pop    %ebx
 160:	5e                   	pop    %esi
 161:	5f                   	pop    %edi
 162:	5d                   	pop    %ebp
 163:	c3                   	ret    
 164:	f3 0f 1e fb          	endbr32 
 168:	55                   	push   %ebp
 169:	89 e5                	mov    %esp,%ebp
 16b:	56                   	push   %esi
 16c:	53                   	push   %ebx
 16d:	83 ec 08             	sub    $0x8,%esp
 170:	6a 00                	push   $0x0
 172:	ff 75 08             	pushl  0x8(%ebp)
 175:	e8 dc 00 00 00       	call   0x256
 17a:	83 c4 10             	add    $0x10,%esp
 17d:	85 c0                	test   %eax,%eax
 17f:	78 24                	js     0x1a5
 181:	89 c3                	mov    %eax,%ebx
 183:	83 ec 08             	sub    $0x8,%esp
 186:	ff 75 0c             	pushl  0xc(%ebp)
 189:	50                   	push   %eax
 18a:	e8 df 00 00 00       	call   0x26e
 18f:	89 c6                	mov    %eax,%esi
 191:	89 1c 24             	mov    %ebx,(%esp)
 194:	e8 a5 00 00 00       	call   0x23e
 199:	83 c4 10             	add    $0x10,%esp
 19c:	89 f0                	mov    %esi,%eax
 19e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1a1:	5b                   	pop    %ebx
 1a2:	5e                   	pop    %esi
 1a3:	5d                   	pop    %ebp
 1a4:	c3                   	ret    
 1a5:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1aa:	eb f0                	jmp    0x19c
 1ac:	f3 0f 1e fb          	endbr32 
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b7:	ba 00 00 00 00       	mov    $0x0,%edx
 1bc:	0f b6 01             	movzbl (%ecx),%eax
 1bf:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1c2:	80 fb 09             	cmp    $0x9,%bl
 1c5:	77 12                	ja     0x1d9
 1c7:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1ca:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1cd:	83 c1 01             	add    $0x1,%ecx
 1d0:	0f be c0             	movsbl %al,%eax
 1d3:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1d7:	eb e3                	jmp    0x1bc
 1d9:	89 d0                	mov    %edx,%eax
 1db:	5b                   	pop    %ebx
 1dc:	5d                   	pop    %ebp
 1dd:	c3                   	ret    
 1de:	f3 0f 1e fb          	endbr32 
 1e2:	55                   	push   %ebp
 1e3:	89 e5                	mov    %esp,%ebp
 1e5:	56                   	push   %esi
 1e6:	53                   	push   %ebx
 1e7:	8b 75 08             	mov    0x8(%ebp),%esi
 1ea:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1ed:	8b 45 10             	mov    0x10(%ebp),%eax
 1f0:	89 f2                	mov    %esi,%edx
 1f2:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1f5:	85 c0                	test   %eax,%eax
 1f7:	7e 0f                	jle    0x208
 1f9:	0f b6 01             	movzbl (%ecx),%eax
 1fc:	88 02                	mov    %al,(%edx)
 1fe:	8d 49 01             	lea    0x1(%ecx),%ecx
 201:	8d 52 01             	lea    0x1(%edx),%edx
 204:	89 d8                	mov    %ebx,%eax
 206:	eb ea                	jmp    0x1f2
 208:	89 f0                	mov    %esi,%eax
 20a:	5b                   	pop    %ebx
 20b:	5e                   	pop    %esi
 20c:	5d                   	pop    %ebp
 20d:	c3                   	ret    
 20e:	b8 01 00 00 00       	mov    $0x1,%eax
 213:	cd 40                	int    $0x40
 215:	c3                   	ret    
 216:	b8 02 00 00 00       	mov    $0x2,%eax
 21b:	cd 40                	int    $0x40
 21d:	c3                   	ret    
 21e:	b8 03 00 00 00       	mov    $0x3,%eax
 223:	cd 40                	int    $0x40
 225:	c3                   	ret    
 226:	b8 04 00 00 00       	mov    $0x4,%eax
 22b:	cd 40                	int    $0x40
 22d:	c3                   	ret    
 22e:	b8 05 00 00 00       	mov    $0x5,%eax
 233:	cd 40                	int    $0x40
 235:	c3                   	ret    
 236:	b8 10 00 00 00       	mov    $0x10,%eax
 23b:	cd 40                	int    $0x40
 23d:	c3                   	ret    
 23e:	b8 15 00 00 00       	mov    $0x15,%eax
 243:	cd 40                	int    $0x40
 245:	c3                   	ret    
 246:	b8 06 00 00 00       	mov    $0x6,%eax
 24b:	cd 40                	int    $0x40
 24d:	c3                   	ret    
 24e:	b8 07 00 00 00       	mov    $0x7,%eax
 253:	cd 40                	int    $0x40
 255:	c3                   	ret    
 256:	b8 0f 00 00 00       	mov    $0xf,%eax
 25b:	cd 40                	int    $0x40
 25d:	c3                   	ret    
 25e:	b8 11 00 00 00       	mov    $0x11,%eax
 263:	cd 40                	int    $0x40
 265:	c3                   	ret    
 266:	b8 12 00 00 00       	mov    $0x12,%eax
 26b:	cd 40                	int    $0x40
 26d:	c3                   	ret    
 26e:	b8 08 00 00 00       	mov    $0x8,%eax
 273:	cd 40                	int    $0x40
 275:	c3                   	ret    
 276:	b8 13 00 00 00       	mov    $0x13,%eax
 27b:	cd 40                	int    $0x40
 27d:	c3                   	ret    
 27e:	b8 14 00 00 00       	mov    $0x14,%eax
 283:	cd 40                	int    $0x40
 285:	c3                   	ret    
 286:	b8 09 00 00 00       	mov    $0x9,%eax
 28b:	cd 40                	int    $0x40
 28d:	c3                   	ret    
 28e:	b8 0a 00 00 00       	mov    $0xa,%eax
 293:	cd 40                	int    $0x40
 295:	c3                   	ret    
 296:	b8 0b 00 00 00       	mov    $0xb,%eax
 29b:	cd 40                	int    $0x40
 29d:	c3                   	ret    
 29e:	b8 0c 00 00 00       	mov    $0xc,%eax
 2a3:	cd 40                	int    $0x40
 2a5:	c3                   	ret    
 2a6:	b8 0d 00 00 00       	mov    $0xd,%eax
 2ab:	cd 40                	int    $0x40
 2ad:	c3                   	ret    
 2ae:	b8 0e 00 00 00       	mov    $0xe,%eax
 2b3:	cd 40                	int    $0x40
 2b5:	c3                   	ret    
 2b6:	b8 16 00 00 00       	mov    $0x16,%eax
 2bb:	cd 40                	int    $0x40
 2bd:	c3                   	ret    
 2be:	b8 17 00 00 00       	mov    $0x17,%eax
 2c3:	cd 40                	int    $0x40
 2c5:	c3                   	ret    
 2c6:	55                   	push   %ebp
 2c7:	89 e5                	mov    %esp,%ebp
 2c9:	83 ec 1c             	sub    $0x1c,%esp
 2cc:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2cf:	6a 01                	push   $0x1
 2d1:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2d4:	52                   	push   %edx
 2d5:	50                   	push   %eax
 2d6:	e8 5b ff ff ff       	call   0x236
 2db:	83 c4 10             	add    $0x10,%esp
 2de:	c9                   	leave  
 2df:	c3                   	ret    
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	57                   	push   %edi
 2e4:	56                   	push   %esi
 2e5:	53                   	push   %ebx
 2e6:	83 ec 2c             	sub    $0x2c,%esp
 2e9:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2ec:	89 d6                	mov    %edx,%esi
 2ee:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2f2:	0f 95 c2             	setne  %dl
 2f5:	89 f0                	mov    %esi,%eax
 2f7:	c1 e8 1f             	shr    $0x1f,%eax
 2fa:	84 c2                	test   %al,%dl
 2fc:	74 42                	je     0x340
 2fe:	f7 de                	neg    %esi
 300:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 307:	bb 00 00 00 00       	mov    $0x0,%ebx
 30c:	89 f0                	mov    %esi,%eax
 30e:	ba 00 00 00 00       	mov    $0x0,%edx
 313:	f7 f1                	div    %ecx
 315:	89 df                	mov    %ebx,%edi
 317:	83 c3 01             	add    $0x1,%ebx
 31a:	0f b6 92 44 06 00 00 	movzbl 0x644(%edx),%edx
 321:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 325:	89 f2                	mov    %esi,%edx
 327:	89 c6                	mov    %eax,%esi
 329:	39 d1                	cmp    %edx,%ecx
 32b:	76 df                	jbe    0x30c
 32d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 331:	74 2f                	je     0x362
 333:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 338:	8d 5f 02             	lea    0x2(%edi),%ebx
 33b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 33e:	eb 15                	jmp    0x355
 340:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 347:	eb be                	jmp    0x307
 349:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 34e:	89 f0                	mov    %esi,%eax
 350:	e8 71 ff ff ff       	call   0x2c6
 355:	83 eb 01             	sub    $0x1,%ebx
 358:	79 ef                	jns    0x349
 35a:	83 c4 2c             	add    $0x2c,%esp
 35d:	5b                   	pop    %ebx
 35e:	5e                   	pop    %esi
 35f:	5f                   	pop    %edi
 360:	5d                   	pop    %ebp
 361:	c3                   	ret    
 362:	8b 75 d0             	mov    -0x30(%ebp),%esi
 365:	eb ee                	jmp    0x355
 367:	f3 0f 1e fb          	endbr32 
 36b:	55                   	push   %ebp
 36c:	89 e5                	mov    %esp,%ebp
 36e:	57                   	push   %edi
 36f:	56                   	push   %esi
 370:	53                   	push   %ebx
 371:	83 ec 1c             	sub    $0x1c,%esp
 374:	8d 45 10             	lea    0x10(%ebp),%eax
 377:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 37a:	be 00 00 00 00       	mov    $0x0,%esi
 37f:	bb 00 00 00 00       	mov    $0x0,%ebx
 384:	eb 14                	jmp    0x39a
 386:	89 fa                	mov    %edi,%edx
 388:	8b 45 08             	mov    0x8(%ebp),%eax
 38b:	e8 36 ff ff ff       	call   0x2c6
 390:	eb 05                	jmp    0x397
 392:	83 fe 25             	cmp    $0x25,%esi
 395:	74 25                	je     0x3bc
 397:	83 c3 01             	add    $0x1,%ebx
 39a:	8b 45 0c             	mov    0xc(%ebp),%eax
 39d:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3a1:	84 c0                	test   %al,%al
 3a3:	0f 84 23 01 00 00    	je     0x4cc
 3a9:	0f be f8             	movsbl %al,%edi
 3ac:	0f b6 c0             	movzbl %al,%eax
 3af:	85 f6                	test   %esi,%esi
 3b1:	75 df                	jne    0x392
 3b3:	83 f8 25             	cmp    $0x25,%eax
 3b6:	75 ce                	jne    0x386
 3b8:	89 c6                	mov    %eax,%esi
 3ba:	eb db                	jmp    0x397
 3bc:	83 f8 64             	cmp    $0x64,%eax
 3bf:	74 49                	je     0x40a
 3c1:	83 f8 78             	cmp    $0x78,%eax
 3c4:	0f 94 c1             	sete   %cl
 3c7:	83 f8 70             	cmp    $0x70,%eax
 3ca:	0f 94 c2             	sete   %dl
 3cd:	08 d1                	or     %dl,%cl
 3cf:	75 63                	jne    0x434
 3d1:	83 f8 73             	cmp    $0x73,%eax
 3d4:	0f 84 84 00 00 00    	je     0x45e
 3da:	83 f8 63             	cmp    $0x63,%eax
 3dd:	0f 84 b7 00 00 00    	je     0x49a
 3e3:	83 f8 25             	cmp    $0x25,%eax
 3e6:	0f 84 cc 00 00 00    	je     0x4b8
 3ec:	ba 25 00 00 00       	mov    $0x25,%edx
 3f1:	8b 45 08             	mov    0x8(%ebp),%eax
 3f4:	e8 cd fe ff ff       	call   0x2c6
 3f9:	89 fa                	mov    %edi,%edx
 3fb:	8b 45 08             	mov    0x8(%ebp),%eax
 3fe:	e8 c3 fe ff ff       	call   0x2c6
 403:	be 00 00 00 00       	mov    $0x0,%esi
 408:	eb 8d                	jmp    0x397
 40a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 40d:	8b 17                	mov    (%edi),%edx
 40f:	83 ec 0c             	sub    $0xc,%esp
 412:	6a 01                	push   $0x1
 414:	b9 0a 00 00 00       	mov    $0xa,%ecx
 419:	8b 45 08             	mov    0x8(%ebp),%eax
 41c:	e8 bf fe ff ff       	call   0x2e0
 421:	83 c7 04             	add    $0x4,%edi
 424:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 427:	83 c4 10             	add    $0x10,%esp
 42a:	be 00 00 00 00       	mov    $0x0,%esi
 42f:	e9 63 ff ff ff       	jmp    0x397
 434:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 437:	8b 17                	mov    (%edi),%edx
 439:	83 ec 0c             	sub    $0xc,%esp
 43c:	6a 00                	push   $0x0
 43e:	b9 10 00 00 00       	mov    $0x10,%ecx
 443:	8b 45 08             	mov    0x8(%ebp),%eax
 446:	e8 95 fe ff ff       	call   0x2e0
 44b:	83 c7 04             	add    $0x4,%edi
 44e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 451:	83 c4 10             	add    $0x10,%esp
 454:	be 00 00 00 00       	mov    $0x0,%esi
 459:	e9 39 ff ff ff       	jmp    0x397
 45e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 461:	8b 30                	mov    (%eax),%esi
 463:	83 c0 04             	add    $0x4,%eax
 466:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 469:	85 f6                	test   %esi,%esi
 46b:	75 28                	jne    0x495
 46d:	be 3b 06 00 00       	mov    $0x63b,%esi
 472:	8b 7d 08             	mov    0x8(%ebp),%edi
 475:	eb 0d                	jmp    0x484
 477:	0f be d2             	movsbl %dl,%edx
 47a:	89 f8                	mov    %edi,%eax
 47c:	e8 45 fe ff ff       	call   0x2c6
 481:	83 c6 01             	add    $0x1,%esi
 484:	0f b6 16             	movzbl (%esi),%edx
 487:	84 d2                	test   %dl,%dl
 489:	75 ec                	jne    0x477
 48b:	be 00 00 00 00       	mov    $0x0,%esi
 490:	e9 02 ff ff ff       	jmp    0x397
 495:	8b 7d 08             	mov    0x8(%ebp),%edi
 498:	eb ea                	jmp    0x484
 49a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 49d:	0f be 17             	movsbl (%edi),%edx
 4a0:	8b 45 08             	mov    0x8(%ebp),%eax
 4a3:	e8 1e fe ff ff       	call   0x2c6
 4a8:	83 c7 04             	add    $0x4,%edi
 4ab:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4ae:	be 00 00 00 00       	mov    $0x0,%esi
 4b3:	e9 df fe ff ff       	jmp    0x397
 4b8:	89 fa                	mov    %edi,%edx
 4ba:	8b 45 08             	mov    0x8(%ebp),%eax
 4bd:	e8 04 fe ff ff       	call   0x2c6
 4c2:	be 00 00 00 00       	mov    $0x0,%esi
 4c7:	e9 cb fe ff ff       	jmp    0x397
 4cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4cf:	5b                   	pop    %ebx
 4d0:	5e                   	pop    %esi
 4d1:	5f                   	pop    %edi
 4d2:	5d                   	pop    %ebp
 4d3:	c3                   	ret    
 4d4:	f3 0f 1e fb          	endbr32 
 4d8:	55                   	push   %ebp
 4d9:	89 e5                	mov    %esp,%ebp
 4db:	57                   	push   %edi
 4dc:	56                   	push   %esi
 4dd:	53                   	push   %ebx
 4de:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4e1:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4e4:	a1 e4 08 00 00       	mov    0x8e4,%eax
 4e9:	eb 02                	jmp    0x4ed
 4eb:	89 d0                	mov    %edx,%eax
 4ed:	39 c8                	cmp    %ecx,%eax
 4ef:	73 04                	jae    0x4f5
 4f1:	39 08                	cmp    %ecx,(%eax)
 4f3:	77 12                	ja     0x507
 4f5:	8b 10                	mov    (%eax),%edx
 4f7:	39 c2                	cmp    %eax,%edx
 4f9:	77 f0                	ja     0x4eb
 4fb:	39 c8                	cmp    %ecx,%eax
 4fd:	72 08                	jb     0x507
 4ff:	39 ca                	cmp    %ecx,%edx
 501:	77 04                	ja     0x507
 503:	89 d0                	mov    %edx,%eax
 505:	eb e6                	jmp    0x4ed
 507:	8b 73 fc             	mov    -0x4(%ebx),%esi
 50a:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 50d:	8b 10                	mov    (%eax),%edx
 50f:	39 d7                	cmp    %edx,%edi
 511:	74 19                	je     0x52c
 513:	89 53 f8             	mov    %edx,-0x8(%ebx)
 516:	8b 50 04             	mov    0x4(%eax),%edx
 519:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 51c:	39 ce                	cmp    %ecx,%esi
 51e:	74 1b                	je     0x53b
 520:	89 08                	mov    %ecx,(%eax)
 522:	a3 e4 08 00 00       	mov    %eax,0x8e4
 527:	5b                   	pop    %ebx
 528:	5e                   	pop    %esi
 529:	5f                   	pop    %edi
 52a:	5d                   	pop    %ebp
 52b:	c3                   	ret    
 52c:	03 72 04             	add    0x4(%edx),%esi
 52f:	89 73 fc             	mov    %esi,-0x4(%ebx)
 532:	8b 10                	mov    (%eax),%edx
 534:	8b 12                	mov    (%edx),%edx
 536:	89 53 f8             	mov    %edx,-0x8(%ebx)
 539:	eb db                	jmp    0x516
 53b:	03 53 fc             	add    -0x4(%ebx),%edx
 53e:	89 50 04             	mov    %edx,0x4(%eax)
 541:	8b 53 f8             	mov    -0x8(%ebx),%edx
 544:	89 10                	mov    %edx,(%eax)
 546:	eb da                	jmp    0x522
 548:	55                   	push   %ebp
 549:	89 e5                	mov    %esp,%ebp
 54b:	53                   	push   %ebx
 54c:	83 ec 04             	sub    $0x4,%esp
 54f:	89 c3                	mov    %eax,%ebx
 551:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 556:	77 05                	ja     0x55d
 558:	bb 00 10 00 00       	mov    $0x1000,%ebx
 55d:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 564:	83 ec 0c             	sub    $0xc,%esp
 567:	50                   	push   %eax
 568:	e8 31 fd ff ff       	call   0x29e
 56d:	83 c4 10             	add    $0x10,%esp
 570:	83 f8 ff             	cmp    $0xffffffff,%eax
 573:	74 1c                	je     0x591
 575:	89 58 04             	mov    %ebx,0x4(%eax)
 578:	83 c0 08             	add    $0x8,%eax
 57b:	83 ec 0c             	sub    $0xc,%esp
 57e:	50                   	push   %eax
 57f:	e8 50 ff ff ff       	call   0x4d4
 584:	a1 e4 08 00 00       	mov    0x8e4,%eax
 589:	83 c4 10             	add    $0x10,%esp
 58c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 58f:	c9                   	leave  
 590:	c3                   	ret    
 591:	b8 00 00 00 00       	mov    $0x0,%eax
 596:	eb f4                	jmp    0x58c
 598:	f3 0f 1e fb          	endbr32 
 59c:	55                   	push   %ebp
 59d:	89 e5                	mov    %esp,%ebp
 59f:	53                   	push   %ebx
 5a0:	83 ec 04             	sub    $0x4,%esp
 5a3:	8b 45 08             	mov    0x8(%ebp),%eax
 5a6:	8d 58 07             	lea    0x7(%eax),%ebx
 5a9:	c1 eb 03             	shr    $0x3,%ebx
 5ac:	83 c3 01             	add    $0x1,%ebx
 5af:	8b 0d e4 08 00 00    	mov    0x8e4,%ecx
 5b5:	85 c9                	test   %ecx,%ecx
 5b7:	74 04                	je     0x5bd
 5b9:	8b 01                	mov    (%ecx),%eax
 5bb:	eb 4b                	jmp    0x608
 5bd:	c7 05 e4 08 00 00 e8 	movl   $0x8e8,0x8e4
 5c4:	08 00 00 
 5c7:	c7 05 e8 08 00 00 e8 	movl   $0x8e8,0x8e8
 5ce:	08 00 00 
 5d1:	c7 05 ec 08 00 00 00 	movl   $0x0,0x8ec
 5d8:	00 00 00 
 5db:	b9 e8 08 00 00       	mov    $0x8e8,%ecx
 5e0:	eb d7                	jmp    0x5b9
 5e2:	74 1a                	je     0x5fe
 5e4:	29 da                	sub    %ebx,%edx
 5e6:	89 50 04             	mov    %edx,0x4(%eax)
 5e9:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5ec:	89 58 04             	mov    %ebx,0x4(%eax)
 5ef:	89 0d e4 08 00 00    	mov    %ecx,0x8e4
 5f5:	83 c0 08             	add    $0x8,%eax
 5f8:	83 c4 04             	add    $0x4,%esp
 5fb:	5b                   	pop    %ebx
 5fc:	5d                   	pop    %ebp
 5fd:	c3                   	ret    
 5fe:	8b 10                	mov    (%eax),%edx
 600:	89 11                	mov    %edx,(%ecx)
 602:	eb eb                	jmp    0x5ef
 604:	89 c1                	mov    %eax,%ecx
 606:	8b 00                	mov    (%eax),%eax
 608:	8b 50 04             	mov    0x4(%eax),%edx
 60b:	39 da                	cmp    %ebx,%edx
 60d:	73 d3                	jae    0x5e2
 60f:	39 05 e4 08 00 00    	cmp    %eax,0x8e4
 615:	75 ed                	jne    0x604
 617:	89 d8                	mov    %ebx,%eax
 619:	e8 2a ff ff ff       	call   0x548
 61e:	85 c0                	test   %eax,%eax
 620:	75 e2                	jne    0x604
 622:	eb d4                	jmp    0x5f8
