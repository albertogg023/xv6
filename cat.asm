
_cat:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	56                   	push   %esi
   8:	53                   	push   %ebx
   9:	8b 75 08             	mov    0x8(%ebp),%esi
   c:	83 ec 04             	sub    $0x4,%esp
   f:	68 00 02 00 00       	push   $0x200
  14:	68 20 0a 00 00       	push   $0xa20
  19:	56                   	push   %esi
  1a:	e8 b6 02 00 00       	call   0x2d5
  1f:	89 c3                	mov    %eax,%ebx
  21:	83 c4 10             	add    $0x10,%esp
  24:	85 c0                	test   %eax,%eax
  26:	7e 2b                	jle    0x53
  28:	83 ec 04             	sub    $0x4,%esp
  2b:	53                   	push   %ebx
  2c:	68 20 0a 00 00       	push   $0xa20
  31:	6a 01                	push   $0x1
  33:	e8 a5 02 00 00       	call   0x2dd
  38:	83 c4 10             	add    $0x10,%esp
  3b:	39 d8                	cmp    %ebx,%eax
  3d:	74 cd                	je     0xc
  3f:	83 ec 08             	sub    $0x8,%esp
  42:	68 cc 06 00 00       	push   $0x6cc
  47:	6a 01                	push   $0x1
  49:	e8 c0 03 00 00       	call   0x40e
  4e:	e8 6a 02 00 00       	call   0x2bd
  53:	78 07                	js     0x5c
  55:	8d 65 f8             	lea    -0x8(%ebp),%esp
  58:	5b                   	pop    %ebx
  59:	5e                   	pop    %esi
  5a:	5d                   	pop    %ebp
  5b:	c3                   	ret    
  5c:	83 ec 08             	sub    $0x8,%esp
  5f:	68 de 06 00 00       	push   $0x6de
  64:	6a 01                	push   $0x1
  66:	e8 a3 03 00 00       	call   0x40e
  6b:	e8 4d 02 00 00       	call   0x2bd
  70:	f3 0f 1e fb          	endbr32 
  74:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  78:	83 e4 f0             	and    $0xfffffff0,%esp
  7b:	ff 71 fc             	pushl  -0x4(%ecx)
  7e:	55                   	push   %ebp
  7f:	89 e5                	mov    %esp,%ebp
  81:	57                   	push   %edi
  82:	56                   	push   %esi
  83:	53                   	push   %ebx
  84:	51                   	push   %ecx
  85:	83 ec 18             	sub    $0x18,%esp
  88:	8b 01                	mov    (%ecx),%eax
  8a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  8d:	8b 51 04             	mov    0x4(%ecx),%edx
  90:	89 55 e0             	mov    %edx,-0x20(%ebp)
  93:	83 f8 01             	cmp    $0x1,%eax
  96:	7e 3e                	jle    0xd6
  98:	be 01 00 00 00       	mov    $0x1,%esi
  9d:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
  a0:	7d 59                	jge    0xfb
  a2:	8b 45 e0             	mov    -0x20(%ebp),%eax
  a5:	8d 3c b0             	lea    (%eax,%esi,4),%edi
  a8:	83 ec 08             	sub    $0x8,%esp
  ab:	6a 00                	push   $0x0
  ad:	ff 37                	pushl  (%edi)
  af:	e8 49 02 00 00       	call   0x2fd
  b4:	89 c3                	mov    %eax,%ebx
  b6:	83 c4 10             	add    $0x10,%esp
  b9:	85 c0                	test   %eax,%eax
  bb:	78 28                	js     0xe5
  bd:	83 ec 0c             	sub    $0xc,%esp
  c0:	50                   	push   %eax
  c1:	e8 3a ff ff ff       	call   0x0
  c6:	89 1c 24             	mov    %ebx,(%esp)
  c9:	e8 17 02 00 00       	call   0x2e5
  ce:	83 c6 01             	add    $0x1,%esi
  d1:	83 c4 10             	add    $0x10,%esp
  d4:	eb c7                	jmp    0x9d
  d6:	83 ec 0c             	sub    $0xc,%esp
  d9:	6a 00                	push   $0x0
  db:	e8 20 ff ff ff       	call   0x0
  e0:	e8 d8 01 00 00       	call   0x2bd
  e5:	83 ec 04             	sub    $0x4,%esp
  e8:	ff 37                	pushl  (%edi)
  ea:	68 ef 06 00 00       	push   $0x6ef
  ef:	6a 01                	push   $0x1
  f1:	e8 18 03 00 00       	call   0x40e
  f6:	e8 c2 01 00 00       	call   0x2bd
  fb:	e8 bd 01 00 00       	call   0x2bd
 100:	f3 0f 1e fb          	endbr32 
 104:	55                   	push   %ebp
 105:	89 e5                	mov    %esp,%ebp
 107:	56                   	push   %esi
 108:	53                   	push   %ebx
 109:	8b 75 08             	mov    0x8(%ebp),%esi
 10c:	8b 55 0c             	mov    0xc(%ebp),%edx
 10f:	89 f0                	mov    %esi,%eax
 111:	89 d1                	mov    %edx,%ecx
 113:	83 c2 01             	add    $0x1,%edx
 116:	89 c3                	mov    %eax,%ebx
 118:	83 c0 01             	add    $0x1,%eax
 11b:	0f b6 09             	movzbl (%ecx),%ecx
 11e:	88 0b                	mov    %cl,(%ebx)
 120:	84 c9                	test   %cl,%cl
 122:	75 ed                	jne    0x111
 124:	89 f0                	mov    %esi,%eax
 126:	5b                   	pop    %ebx
 127:	5e                   	pop    %esi
 128:	5d                   	pop    %ebp
 129:	c3                   	ret    
 12a:	f3 0f 1e fb          	endbr32 
 12e:	55                   	push   %ebp
 12f:	89 e5                	mov    %esp,%ebp
 131:	8b 4d 08             	mov    0x8(%ebp),%ecx
 134:	8b 55 0c             	mov    0xc(%ebp),%edx
 137:	0f b6 01             	movzbl (%ecx),%eax
 13a:	84 c0                	test   %al,%al
 13c:	74 0c                	je     0x14a
 13e:	3a 02                	cmp    (%edx),%al
 140:	75 08                	jne    0x14a
 142:	83 c1 01             	add    $0x1,%ecx
 145:	83 c2 01             	add    $0x1,%edx
 148:	eb ed                	jmp    0x137
 14a:	0f b6 c0             	movzbl %al,%eax
 14d:	0f b6 12             	movzbl (%edx),%edx
 150:	29 d0                	sub    %edx,%eax
 152:	5d                   	pop    %ebp
 153:	c3                   	ret    
 154:	f3 0f 1e fb          	endbr32 
 158:	55                   	push   %ebp
 159:	89 e5                	mov    %esp,%ebp
 15b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 15e:	b8 00 00 00 00       	mov    $0x0,%eax
 163:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 167:	74 05                	je     0x16e
 169:	83 c0 01             	add    $0x1,%eax
 16c:	eb f5                	jmp    0x163
 16e:	5d                   	pop    %ebp
 16f:	c3                   	ret    
 170:	f3 0f 1e fb          	endbr32 
 174:	55                   	push   %ebp
 175:	89 e5                	mov    %esp,%ebp
 177:	57                   	push   %edi
 178:	8b 55 08             	mov    0x8(%ebp),%edx
 17b:	89 d7                	mov    %edx,%edi
 17d:	8b 4d 10             	mov    0x10(%ebp),%ecx
 180:	8b 45 0c             	mov    0xc(%ebp),%eax
 183:	fc                   	cld    
 184:	f3 aa                	rep stos %al,%es:(%edi)
 186:	89 d0                	mov    %edx,%eax
 188:	5f                   	pop    %edi
 189:	5d                   	pop    %ebp
 18a:	c3                   	ret    
 18b:	f3 0f 1e fb          	endbr32 
 18f:	55                   	push   %ebp
 190:	89 e5                	mov    %esp,%ebp
 192:	8b 45 08             	mov    0x8(%ebp),%eax
 195:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 199:	0f b6 10             	movzbl (%eax),%edx
 19c:	84 d2                	test   %dl,%dl
 19e:	74 09                	je     0x1a9
 1a0:	38 ca                	cmp    %cl,%dl
 1a2:	74 0a                	je     0x1ae
 1a4:	83 c0 01             	add    $0x1,%eax
 1a7:	eb f0                	jmp    0x199
 1a9:	b8 00 00 00 00       	mov    $0x0,%eax
 1ae:	5d                   	pop    %ebp
 1af:	c3                   	ret    
 1b0:	f3 0f 1e fb          	endbr32 
 1b4:	55                   	push   %ebp
 1b5:	89 e5                	mov    %esp,%ebp
 1b7:	57                   	push   %edi
 1b8:	56                   	push   %esi
 1b9:	53                   	push   %ebx
 1ba:	83 ec 1c             	sub    $0x1c,%esp
 1bd:	8b 7d 08             	mov    0x8(%ebp),%edi
 1c0:	bb 00 00 00 00       	mov    $0x0,%ebx
 1c5:	89 de                	mov    %ebx,%esi
 1c7:	83 c3 01             	add    $0x1,%ebx
 1ca:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1cd:	7d 2e                	jge    0x1fd
 1cf:	83 ec 04             	sub    $0x4,%esp
 1d2:	6a 01                	push   $0x1
 1d4:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1d7:	50                   	push   %eax
 1d8:	6a 00                	push   $0x0
 1da:	e8 f6 00 00 00       	call   0x2d5
 1df:	83 c4 10             	add    $0x10,%esp
 1e2:	85 c0                	test   %eax,%eax
 1e4:	7e 17                	jle    0x1fd
 1e6:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1ea:	88 04 37             	mov    %al,(%edi,%esi,1)
 1ed:	3c 0a                	cmp    $0xa,%al
 1ef:	0f 94 c2             	sete   %dl
 1f2:	3c 0d                	cmp    $0xd,%al
 1f4:	0f 94 c0             	sete   %al
 1f7:	08 c2                	or     %al,%dl
 1f9:	74 ca                	je     0x1c5
 1fb:	89 de                	mov    %ebx,%esi
 1fd:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 201:	89 f8                	mov    %edi,%eax
 203:	8d 65 f4             	lea    -0xc(%ebp),%esp
 206:	5b                   	pop    %ebx
 207:	5e                   	pop    %esi
 208:	5f                   	pop    %edi
 209:	5d                   	pop    %ebp
 20a:	c3                   	ret    
 20b:	f3 0f 1e fb          	endbr32 
 20f:	55                   	push   %ebp
 210:	89 e5                	mov    %esp,%ebp
 212:	56                   	push   %esi
 213:	53                   	push   %ebx
 214:	83 ec 08             	sub    $0x8,%esp
 217:	6a 00                	push   $0x0
 219:	ff 75 08             	pushl  0x8(%ebp)
 21c:	e8 dc 00 00 00       	call   0x2fd
 221:	83 c4 10             	add    $0x10,%esp
 224:	85 c0                	test   %eax,%eax
 226:	78 24                	js     0x24c
 228:	89 c3                	mov    %eax,%ebx
 22a:	83 ec 08             	sub    $0x8,%esp
 22d:	ff 75 0c             	pushl  0xc(%ebp)
 230:	50                   	push   %eax
 231:	e8 df 00 00 00       	call   0x315
 236:	89 c6                	mov    %eax,%esi
 238:	89 1c 24             	mov    %ebx,(%esp)
 23b:	e8 a5 00 00 00       	call   0x2e5
 240:	83 c4 10             	add    $0x10,%esp
 243:	89 f0                	mov    %esi,%eax
 245:	8d 65 f8             	lea    -0x8(%ebp),%esp
 248:	5b                   	pop    %ebx
 249:	5e                   	pop    %esi
 24a:	5d                   	pop    %ebp
 24b:	c3                   	ret    
 24c:	be ff ff ff ff       	mov    $0xffffffff,%esi
 251:	eb f0                	jmp    0x243
 253:	f3 0f 1e fb          	endbr32 
 257:	55                   	push   %ebp
 258:	89 e5                	mov    %esp,%ebp
 25a:	53                   	push   %ebx
 25b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 25e:	ba 00 00 00 00       	mov    $0x0,%edx
 263:	0f b6 01             	movzbl (%ecx),%eax
 266:	8d 58 d0             	lea    -0x30(%eax),%ebx
 269:	80 fb 09             	cmp    $0x9,%bl
 26c:	77 12                	ja     0x280
 26e:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 271:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 274:	83 c1 01             	add    $0x1,%ecx
 277:	0f be c0             	movsbl %al,%eax
 27a:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 27e:	eb e3                	jmp    0x263
 280:	89 d0                	mov    %edx,%eax
 282:	5b                   	pop    %ebx
 283:	5d                   	pop    %ebp
 284:	c3                   	ret    
 285:	f3 0f 1e fb          	endbr32 
 289:	55                   	push   %ebp
 28a:	89 e5                	mov    %esp,%ebp
 28c:	56                   	push   %esi
 28d:	53                   	push   %ebx
 28e:	8b 75 08             	mov    0x8(%ebp),%esi
 291:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 294:	8b 45 10             	mov    0x10(%ebp),%eax
 297:	89 f2                	mov    %esi,%edx
 299:	8d 58 ff             	lea    -0x1(%eax),%ebx
 29c:	85 c0                	test   %eax,%eax
 29e:	7e 0f                	jle    0x2af
 2a0:	0f b6 01             	movzbl (%ecx),%eax
 2a3:	88 02                	mov    %al,(%edx)
 2a5:	8d 49 01             	lea    0x1(%ecx),%ecx
 2a8:	8d 52 01             	lea    0x1(%edx),%edx
 2ab:	89 d8                	mov    %ebx,%eax
 2ad:	eb ea                	jmp    0x299
 2af:	89 f0                	mov    %esi,%eax
 2b1:	5b                   	pop    %ebx
 2b2:	5e                   	pop    %esi
 2b3:	5d                   	pop    %ebp
 2b4:	c3                   	ret    
 2b5:	b8 01 00 00 00       	mov    $0x1,%eax
 2ba:	cd 40                	int    $0x40
 2bc:	c3                   	ret    
 2bd:	b8 02 00 00 00       	mov    $0x2,%eax
 2c2:	cd 40                	int    $0x40
 2c4:	c3                   	ret    
 2c5:	b8 03 00 00 00       	mov    $0x3,%eax
 2ca:	cd 40                	int    $0x40
 2cc:	c3                   	ret    
 2cd:	b8 04 00 00 00       	mov    $0x4,%eax
 2d2:	cd 40                	int    $0x40
 2d4:	c3                   	ret    
 2d5:	b8 05 00 00 00       	mov    $0x5,%eax
 2da:	cd 40                	int    $0x40
 2dc:	c3                   	ret    
 2dd:	b8 10 00 00 00       	mov    $0x10,%eax
 2e2:	cd 40                	int    $0x40
 2e4:	c3                   	ret    
 2e5:	b8 15 00 00 00       	mov    $0x15,%eax
 2ea:	cd 40                	int    $0x40
 2ec:	c3                   	ret    
 2ed:	b8 06 00 00 00       	mov    $0x6,%eax
 2f2:	cd 40                	int    $0x40
 2f4:	c3                   	ret    
 2f5:	b8 07 00 00 00       	mov    $0x7,%eax
 2fa:	cd 40                	int    $0x40
 2fc:	c3                   	ret    
 2fd:	b8 0f 00 00 00       	mov    $0xf,%eax
 302:	cd 40                	int    $0x40
 304:	c3                   	ret    
 305:	b8 11 00 00 00       	mov    $0x11,%eax
 30a:	cd 40                	int    $0x40
 30c:	c3                   	ret    
 30d:	b8 12 00 00 00       	mov    $0x12,%eax
 312:	cd 40                	int    $0x40
 314:	c3                   	ret    
 315:	b8 08 00 00 00       	mov    $0x8,%eax
 31a:	cd 40                	int    $0x40
 31c:	c3                   	ret    
 31d:	b8 13 00 00 00       	mov    $0x13,%eax
 322:	cd 40                	int    $0x40
 324:	c3                   	ret    
 325:	b8 14 00 00 00       	mov    $0x14,%eax
 32a:	cd 40                	int    $0x40
 32c:	c3                   	ret    
 32d:	b8 09 00 00 00       	mov    $0x9,%eax
 332:	cd 40                	int    $0x40
 334:	c3                   	ret    
 335:	b8 0a 00 00 00       	mov    $0xa,%eax
 33a:	cd 40                	int    $0x40
 33c:	c3                   	ret    
 33d:	b8 0b 00 00 00       	mov    $0xb,%eax
 342:	cd 40                	int    $0x40
 344:	c3                   	ret    
 345:	b8 0c 00 00 00       	mov    $0xc,%eax
 34a:	cd 40                	int    $0x40
 34c:	c3                   	ret    
 34d:	b8 0d 00 00 00       	mov    $0xd,%eax
 352:	cd 40                	int    $0x40
 354:	c3                   	ret    
 355:	b8 0e 00 00 00       	mov    $0xe,%eax
 35a:	cd 40                	int    $0x40
 35c:	c3                   	ret    
 35d:	b8 16 00 00 00       	mov    $0x16,%eax
 362:	cd 40                	int    $0x40
 364:	c3                   	ret    
 365:	b8 17 00 00 00       	mov    $0x17,%eax
 36a:	cd 40                	int    $0x40
 36c:	c3                   	ret    
 36d:	55                   	push   %ebp
 36e:	89 e5                	mov    %esp,%ebp
 370:	83 ec 1c             	sub    $0x1c,%esp
 373:	88 55 f4             	mov    %dl,-0xc(%ebp)
 376:	6a 01                	push   $0x1
 378:	8d 55 f4             	lea    -0xc(%ebp),%edx
 37b:	52                   	push   %edx
 37c:	50                   	push   %eax
 37d:	e8 5b ff ff ff       	call   0x2dd
 382:	83 c4 10             	add    $0x10,%esp
 385:	c9                   	leave  
 386:	c3                   	ret    
 387:	55                   	push   %ebp
 388:	89 e5                	mov    %esp,%ebp
 38a:	57                   	push   %edi
 38b:	56                   	push   %esi
 38c:	53                   	push   %ebx
 38d:	83 ec 2c             	sub    $0x2c,%esp
 390:	89 45 d0             	mov    %eax,-0x30(%ebp)
 393:	89 d6                	mov    %edx,%esi
 395:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 399:	0f 95 c2             	setne  %dl
 39c:	89 f0                	mov    %esi,%eax
 39e:	c1 e8 1f             	shr    $0x1f,%eax
 3a1:	84 c2                	test   %al,%dl
 3a3:	74 42                	je     0x3e7
 3a5:	f7 de                	neg    %esi
 3a7:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3ae:	bb 00 00 00 00       	mov    $0x0,%ebx
 3b3:	89 f0                	mov    %esi,%eax
 3b5:	ba 00 00 00 00       	mov    $0x0,%edx
 3ba:	f7 f1                	div    %ecx
 3bc:	89 df                	mov    %ebx,%edi
 3be:	83 c3 01             	add    $0x1,%ebx
 3c1:	0f b6 92 0c 07 00 00 	movzbl 0x70c(%edx),%edx
 3c8:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3cc:	89 f2                	mov    %esi,%edx
 3ce:	89 c6                	mov    %eax,%esi
 3d0:	39 d1                	cmp    %edx,%ecx
 3d2:	76 df                	jbe    0x3b3
 3d4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3d8:	74 2f                	je     0x409
 3da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3df:	8d 5f 02             	lea    0x2(%edi),%ebx
 3e2:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3e5:	eb 15                	jmp    0x3fc
 3e7:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3ee:	eb be                	jmp    0x3ae
 3f0:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3f5:	89 f0                	mov    %esi,%eax
 3f7:	e8 71 ff ff ff       	call   0x36d
 3fc:	83 eb 01             	sub    $0x1,%ebx
 3ff:	79 ef                	jns    0x3f0
 401:	83 c4 2c             	add    $0x2c,%esp
 404:	5b                   	pop    %ebx
 405:	5e                   	pop    %esi
 406:	5f                   	pop    %edi
 407:	5d                   	pop    %ebp
 408:	c3                   	ret    
 409:	8b 75 d0             	mov    -0x30(%ebp),%esi
 40c:	eb ee                	jmp    0x3fc
 40e:	f3 0f 1e fb          	endbr32 
 412:	55                   	push   %ebp
 413:	89 e5                	mov    %esp,%ebp
 415:	57                   	push   %edi
 416:	56                   	push   %esi
 417:	53                   	push   %ebx
 418:	83 ec 1c             	sub    $0x1c,%esp
 41b:	8d 45 10             	lea    0x10(%ebp),%eax
 41e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 421:	be 00 00 00 00       	mov    $0x0,%esi
 426:	bb 00 00 00 00       	mov    $0x0,%ebx
 42b:	eb 14                	jmp    0x441
 42d:	89 fa                	mov    %edi,%edx
 42f:	8b 45 08             	mov    0x8(%ebp),%eax
 432:	e8 36 ff ff ff       	call   0x36d
 437:	eb 05                	jmp    0x43e
 439:	83 fe 25             	cmp    $0x25,%esi
 43c:	74 25                	je     0x463
 43e:	83 c3 01             	add    $0x1,%ebx
 441:	8b 45 0c             	mov    0xc(%ebp),%eax
 444:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 448:	84 c0                	test   %al,%al
 44a:	0f 84 23 01 00 00    	je     0x573
 450:	0f be f8             	movsbl %al,%edi
 453:	0f b6 c0             	movzbl %al,%eax
 456:	85 f6                	test   %esi,%esi
 458:	75 df                	jne    0x439
 45a:	83 f8 25             	cmp    $0x25,%eax
 45d:	75 ce                	jne    0x42d
 45f:	89 c6                	mov    %eax,%esi
 461:	eb db                	jmp    0x43e
 463:	83 f8 64             	cmp    $0x64,%eax
 466:	74 49                	je     0x4b1
 468:	83 f8 78             	cmp    $0x78,%eax
 46b:	0f 94 c1             	sete   %cl
 46e:	83 f8 70             	cmp    $0x70,%eax
 471:	0f 94 c2             	sete   %dl
 474:	08 d1                	or     %dl,%cl
 476:	75 63                	jne    0x4db
 478:	83 f8 73             	cmp    $0x73,%eax
 47b:	0f 84 84 00 00 00    	je     0x505
 481:	83 f8 63             	cmp    $0x63,%eax
 484:	0f 84 b7 00 00 00    	je     0x541
 48a:	83 f8 25             	cmp    $0x25,%eax
 48d:	0f 84 cc 00 00 00    	je     0x55f
 493:	ba 25 00 00 00       	mov    $0x25,%edx
 498:	8b 45 08             	mov    0x8(%ebp),%eax
 49b:	e8 cd fe ff ff       	call   0x36d
 4a0:	89 fa                	mov    %edi,%edx
 4a2:	8b 45 08             	mov    0x8(%ebp),%eax
 4a5:	e8 c3 fe ff ff       	call   0x36d
 4aa:	be 00 00 00 00       	mov    $0x0,%esi
 4af:	eb 8d                	jmp    0x43e
 4b1:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4b4:	8b 17                	mov    (%edi),%edx
 4b6:	83 ec 0c             	sub    $0xc,%esp
 4b9:	6a 01                	push   $0x1
 4bb:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4c0:	8b 45 08             	mov    0x8(%ebp),%eax
 4c3:	e8 bf fe ff ff       	call   0x387
 4c8:	83 c7 04             	add    $0x4,%edi
 4cb:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4ce:	83 c4 10             	add    $0x10,%esp
 4d1:	be 00 00 00 00       	mov    $0x0,%esi
 4d6:	e9 63 ff ff ff       	jmp    0x43e
 4db:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4de:	8b 17                	mov    (%edi),%edx
 4e0:	83 ec 0c             	sub    $0xc,%esp
 4e3:	6a 00                	push   $0x0
 4e5:	b9 10 00 00 00       	mov    $0x10,%ecx
 4ea:	8b 45 08             	mov    0x8(%ebp),%eax
 4ed:	e8 95 fe ff ff       	call   0x387
 4f2:	83 c7 04             	add    $0x4,%edi
 4f5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4f8:	83 c4 10             	add    $0x10,%esp
 4fb:	be 00 00 00 00       	mov    $0x0,%esi
 500:	e9 39 ff ff ff       	jmp    0x43e
 505:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 508:	8b 30                	mov    (%eax),%esi
 50a:	83 c0 04             	add    $0x4,%eax
 50d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 510:	85 f6                	test   %esi,%esi
 512:	75 28                	jne    0x53c
 514:	be 04 07 00 00       	mov    $0x704,%esi
 519:	8b 7d 08             	mov    0x8(%ebp),%edi
 51c:	eb 0d                	jmp    0x52b
 51e:	0f be d2             	movsbl %dl,%edx
 521:	89 f8                	mov    %edi,%eax
 523:	e8 45 fe ff ff       	call   0x36d
 528:	83 c6 01             	add    $0x1,%esi
 52b:	0f b6 16             	movzbl (%esi),%edx
 52e:	84 d2                	test   %dl,%dl
 530:	75 ec                	jne    0x51e
 532:	be 00 00 00 00       	mov    $0x0,%esi
 537:	e9 02 ff ff ff       	jmp    0x43e
 53c:	8b 7d 08             	mov    0x8(%ebp),%edi
 53f:	eb ea                	jmp    0x52b
 541:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 544:	0f be 17             	movsbl (%edi),%edx
 547:	8b 45 08             	mov    0x8(%ebp),%eax
 54a:	e8 1e fe ff ff       	call   0x36d
 54f:	83 c7 04             	add    $0x4,%edi
 552:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 555:	be 00 00 00 00       	mov    $0x0,%esi
 55a:	e9 df fe ff ff       	jmp    0x43e
 55f:	89 fa                	mov    %edi,%edx
 561:	8b 45 08             	mov    0x8(%ebp),%eax
 564:	e8 04 fe ff ff       	call   0x36d
 569:	be 00 00 00 00       	mov    $0x0,%esi
 56e:	e9 cb fe ff ff       	jmp    0x43e
 573:	8d 65 f4             	lea    -0xc(%ebp),%esp
 576:	5b                   	pop    %ebx
 577:	5e                   	pop    %esi
 578:	5f                   	pop    %edi
 579:	5d                   	pop    %ebp
 57a:	c3                   	ret    
 57b:	f3 0f 1e fb          	endbr32 
 57f:	55                   	push   %ebp
 580:	89 e5                	mov    %esp,%ebp
 582:	57                   	push   %edi
 583:	56                   	push   %esi
 584:	53                   	push   %ebx
 585:	8b 5d 08             	mov    0x8(%ebp),%ebx
 588:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 58b:	a1 00 0a 00 00       	mov    0xa00,%eax
 590:	eb 02                	jmp    0x594
 592:	89 d0                	mov    %edx,%eax
 594:	39 c8                	cmp    %ecx,%eax
 596:	73 04                	jae    0x59c
 598:	39 08                	cmp    %ecx,(%eax)
 59a:	77 12                	ja     0x5ae
 59c:	8b 10                	mov    (%eax),%edx
 59e:	39 c2                	cmp    %eax,%edx
 5a0:	77 f0                	ja     0x592
 5a2:	39 c8                	cmp    %ecx,%eax
 5a4:	72 08                	jb     0x5ae
 5a6:	39 ca                	cmp    %ecx,%edx
 5a8:	77 04                	ja     0x5ae
 5aa:	89 d0                	mov    %edx,%eax
 5ac:	eb e6                	jmp    0x594
 5ae:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5b1:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5b4:	8b 10                	mov    (%eax),%edx
 5b6:	39 d7                	cmp    %edx,%edi
 5b8:	74 19                	je     0x5d3
 5ba:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5bd:	8b 50 04             	mov    0x4(%eax),%edx
 5c0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5c3:	39 ce                	cmp    %ecx,%esi
 5c5:	74 1b                	je     0x5e2
 5c7:	89 08                	mov    %ecx,(%eax)
 5c9:	a3 00 0a 00 00       	mov    %eax,0xa00
 5ce:	5b                   	pop    %ebx
 5cf:	5e                   	pop    %esi
 5d0:	5f                   	pop    %edi
 5d1:	5d                   	pop    %ebp
 5d2:	c3                   	ret    
 5d3:	03 72 04             	add    0x4(%edx),%esi
 5d6:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5d9:	8b 10                	mov    (%eax),%edx
 5db:	8b 12                	mov    (%edx),%edx
 5dd:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5e0:	eb db                	jmp    0x5bd
 5e2:	03 53 fc             	add    -0x4(%ebx),%edx
 5e5:	89 50 04             	mov    %edx,0x4(%eax)
 5e8:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5eb:	89 10                	mov    %edx,(%eax)
 5ed:	eb da                	jmp    0x5c9
 5ef:	55                   	push   %ebp
 5f0:	89 e5                	mov    %esp,%ebp
 5f2:	53                   	push   %ebx
 5f3:	83 ec 04             	sub    $0x4,%esp
 5f6:	89 c3                	mov    %eax,%ebx
 5f8:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5fd:	77 05                	ja     0x604
 5ff:	bb 00 10 00 00       	mov    $0x1000,%ebx
 604:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 60b:	83 ec 0c             	sub    $0xc,%esp
 60e:	50                   	push   %eax
 60f:	e8 31 fd ff ff       	call   0x345
 614:	83 c4 10             	add    $0x10,%esp
 617:	83 f8 ff             	cmp    $0xffffffff,%eax
 61a:	74 1c                	je     0x638
 61c:	89 58 04             	mov    %ebx,0x4(%eax)
 61f:	83 c0 08             	add    $0x8,%eax
 622:	83 ec 0c             	sub    $0xc,%esp
 625:	50                   	push   %eax
 626:	e8 50 ff ff ff       	call   0x57b
 62b:	a1 00 0a 00 00       	mov    0xa00,%eax
 630:	83 c4 10             	add    $0x10,%esp
 633:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 636:	c9                   	leave  
 637:	c3                   	ret    
 638:	b8 00 00 00 00       	mov    $0x0,%eax
 63d:	eb f4                	jmp    0x633
 63f:	f3 0f 1e fb          	endbr32 
 643:	55                   	push   %ebp
 644:	89 e5                	mov    %esp,%ebp
 646:	53                   	push   %ebx
 647:	83 ec 04             	sub    $0x4,%esp
 64a:	8b 45 08             	mov    0x8(%ebp),%eax
 64d:	8d 58 07             	lea    0x7(%eax),%ebx
 650:	c1 eb 03             	shr    $0x3,%ebx
 653:	83 c3 01             	add    $0x1,%ebx
 656:	8b 0d 00 0a 00 00    	mov    0xa00,%ecx
 65c:	85 c9                	test   %ecx,%ecx
 65e:	74 04                	je     0x664
 660:	8b 01                	mov    (%ecx),%eax
 662:	eb 4b                	jmp    0x6af
 664:	c7 05 00 0a 00 00 04 	movl   $0xa04,0xa00
 66b:	0a 00 00 
 66e:	c7 05 04 0a 00 00 04 	movl   $0xa04,0xa04
 675:	0a 00 00 
 678:	c7 05 08 0a 00 00 00 	movl   $0x0,0xa08
 67f:	00 00 00 
 682:	b9 04 0a 00 00       	mov    $0xa04,%ecx
 687:	eb d7                	jmp    0x660
 689:	74 1a                	je     0x6a5
 68b:	29 da                	sub    %ebx,%edx
 68d:	89 50 04             	mov    %edx,0x4(%eax)
 690:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 693:	89 58 04             	mov    %ebx,0x4(%eax)
 696:	89 0d 00 0a 00 00    	mov    %ecx,0xa00
 69c:	83 c0 08             	add    $0x8,%eax
 69f:	83 c4 04             	add    $0x4,%esp
 6a2:	5b                   	pop    %ebx
 6a3:	5d                   	pop    %ebp
 6a4:	c3                   	ret    
 6a5:	8b 10                	mov    (%eax),%edx
 6a7:	89 11                	mov    %edx,(%ecx)
 6a9:	eb eb                	jmp    0x696
 6ab:	89 c1                	mov    %eax,%ecx
 6ad:	8b 00                	mov    (%eax),%eax
 6af:	8b 50 04             	mov    0x4(%eax),%edx
 6b2:	39 da                	cmp    %ebx,%edx
 6b4:	73 d3                	jae    0x689
 6b6:	39 05 00 0a 00 00    	cmp    %eax,0xa00
 6bc:	75 ed                	jne    0x6ab
 6be:	89 d8                	mov    %ebx,%eax
 6c0:	e8 2a ff ff ff       	call   0x5ef
 6c5:	85 c0                	test   %eax,%eax
 6c7:	75 e2                	jne    0x6ab
 6c9:	eb d4                	jmp    0x69f
