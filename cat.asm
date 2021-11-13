
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
  14:	68 00 0a 00 00       	push   $0xa00
  19:	56                   	push   %esi
  1a:	e8 b6 02 00 00       	call   0x2d5
  1f:	89 c3                	mov    %eax,%ebx
  21:	83 c4 10             	add    $0x10,%esp
  24:	85 c0                	test   %eax,%eax
  26:	7e 2b                	jle    0x53
  28:	83 ec 04             	sub    $0x4,%esp
  2b:	53                   	push   %ebx
  2c:	68 00 0a 00 00       	push   $0xa00
  31:	6a 01                	push   $0x1
  33:	e8 a5 02 00 00       	call   0x2dd
  38:	83 c4 10             	add    $0x10,%esp
  3b:	39 d8                	cmp    %ebx,%eax
  3d:	74 cd                	je     0xc
  3f:	83 ec 08             	sub    $0x8,%esp
  42:	68 c4 06 00 00       	push   $0x6c4
  47:	6a 01                	push   $0x1
  49:	e8 b8 03 00 00       	call   0x406
  4e:	e8 6a 02 00 00       	call   0x2bd
  53:	78 07                	js     0x5c
  55:	8d 65 f8             	lea    -0x8(%ebp),%esp
  58:	5b                   	pop    %ebx
  59:	5e                   	pop    %esi
  5a:	5d                   	pop    %ebp
  5b:	c3                   	ret    
  5c:	83 ec 08             	sub    $0x8,%esp
  5f:	68 d6 06 00 00       	push   $0x6d6
  64:	6a 01                	push   $0x1
  66:	e8 9b 03 00 00       	call   0x406
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
  ea:	68 e7 06 00 00       	push   $0x6e7
  ef:	6a 01                	push   $0x1
  f1:	e8 10 03 00 00       	call   0x406
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
 365:	55                   	push   %ebp
 366:	89 e5                	mov    %esp,%ebp
 368:	83 ec 1c             	sub    $0x1c,%esp
 36b:	88 55 f4             	mov    %dl,-0xc(%ebp)
 36e:	6a 01                	push   $0x1
 370:	8d 55 f4             	lea    -0xc(%ebp),%edx
 373:	52                   	push   %edx
 374:	50                   	push   %eax
 375:	e8 63 ff ff ff       	call   0x2dd
 37a:	83 c4 10             	add    $0x10,%esp
 37d:	c9                   	leave  
 37e:	c3                   	ret    
 37f:	55                   	push   %ebp
 380:	89 e5                	mov    %esp,%ebp
 382:	57                   	push   %edi
 383:	56                   	push   %esi
 384:	53                   	push   %ebx
 385:	83 ec 2c             	sub    $0x2c,%esp
 388:	89 45 d0             	mov    %eax,-0x30(%ebp)
 38b:	89 d6                	mov    %edx,%esi
 38d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 391:	0f 95 c2             	setne  %dl
 394:	89 f0                	mov    %esi,%eax
 396:	c1 e8 1f             	shr    $0x1f,%eax
 399:	84 c2                	test   %al,%dl
 39b:	74 42                	je     0x3df
 39d:	f7 de                	neg    %esi
 39f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3a6:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ab:	89 f0                	mov    %esi,%eax
 3ad:	ba 00 00 00 00       	mov    $0x0,%edx
 3b2:	f7 f1                	div    %ecx
 3b4:	89 df                	mov    %ebx,%edi
 3b6:	83 c3 01             	add    $0x1,%ebx
 3b9:	0f b6 92 04 07 00 00 	movzbl 0x704(%edx),%edx
 3c0:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3c4:	89 f2                	mov    %esi,%edx
 3c6:	89 c6                	mov    %eax,%esi
 3c8:	39 d1                	cmp    %edx,%ecx
 3ca:	76 df                	jbe    0x3ab
 3cc:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3d0:	74 2f                	je     0x401
 3d2:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3d7:	8d 5f 02             	lea    0x2(%edi),%ebx
 3da:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3dd:	eb 15                	jmp    0x3f4
 3df:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3e6:	eb be                	jmp    0x3a6
 3e8:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3ed:	89 f0                	mov    %esi,%eax
 3ef:	e8 71 ff ff ff       	call   0x365
 3f4:	83 eb 01             	sub    $0x1,%ebx
 3f7:	79 ef                	jns    0x3e8
 3f9:	83 c4 2c             	add    $0x2c,%esp
 3fc:	5b                   	pop    %ebx
 3fd:	5e                   	pop    %esi
 3fe:	5f                   	pop    %edi
 3ff:	5d                   	pop    %ebp
 400:	c3                   	ret    
 401:	8b 75 d0             	mov    -0x30(%ebp),%esi
 404:	eb ee                	jmp    0x3f4
 406:	f3 0f 1e fb          	endbr32 
 40a:	55                   	push   %ebp
 40b:	89 e5                	mov    %esp,%ebp
 40d:	57                   	push   %edi
 40e:	56                   	push   %esi
 40f:	53                   	push   %ebx
 410:	83 ec 1c             	sub    $0x1c,%esp
 413:	8d 45 10             	lea    0x10(%ebp),%eax
 416:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 419:	be 00 00 00 00       	mov    $0x0,%esi
 41e:	bb 00 00 00 00       	mov    $0x0,%ebx
 423:	eb 14                	jmp    0x439
 425:	89 fa                	mov    %edi,%edx
 427:	8b 45 08             	mov    0x8(%ebp),%eax
 42a:	e8 36 ff ff ff       	call   0x365
 42f:	eb 05                	jmp    0x436
 431:	83 fe 25             	cmp    $0x25,%esi
 434:	74 25                	je     0x45b
 436:	83 c3 01             	add    $0x1,%ebx
 439:	8b 45 0c             	mov    0xc(%ebp),%eax
 43c:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 440:	84 c0                	test   %al,%al
 442:	0f 84 23 01 00 00    	je     0x56b
 448:	0f be f8             	movsbl %al,%edi
 44b:	0f b6 c0             	movzbl %al,%eax
 44e:	85 f6                	test   %esi,%esi
 450:	75 df                	jne    0x431
 452:	83 f8 25             	cmp    $0x25,%eax
 455:	75 ce                	jne    0x425
 457:	89 c6                	mov    %eax,%esi
 459:	eb db                	jmp    0x436
 45b:	83 f8 64             	cmp    $0x64,%eax
 45e:	74 49                	je     0x4a9
 460:	83 f8 78             	cmp    $0x78,%eax
 463:	0f 94 c1             	sete   %cl
 466:	83 f8 70             	cmp    $0x70,%eax
 469:	0f 94 c2             	sete   %dl
 46c:	08 d1                	or     %dl,%cl
 46e:	75 63                	jne    0x4d3
 470:	83 f8 73             	cmp    $0x73,%eax
 473:	0f 84 84 00 00 00    	je     0x4fd
 479:	83 f8 63             	cmp    $0x63,%eax
 47c:	0f 84 b7 00 00 00    	je     0x539
 482:	83 f8 25             	cmp    $0x25,%eax
 485:	0f 84 cc 00 00 00    	je     0x557
 48b:	ba 25 00 00 00       	mov    $0x25,%edx
 490:	8b 45 08             	mov    0x8(%ebp),%eax
 493:	e8 cd fe ff ff       	call   0x365
 498:	89 fa                	mov    %edi,%edx
 49a:	8b 45 08             	mov    0x8(%ebp),%eax
 49d:	e8 c3 fe ff ff       	call   0x365
 4a2:	be 00 00 00 00       	mov    $0x0,%esi
 4a7:	eb 8d                	jmp    0x436
 4a9:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4ac:	8b 17                	mov    (%edi),%edx
 4ae:	83 ec 0c             	sub    $0xc,%esp
 4b1:	6a 01                	push   $0x1
 4b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4b8:	8b 45 08             	mov    0x8(%ebp),%eax
 4bb:	e8 bf fe ff ff       	call   0x37f
 4c0:	83 c7 04             	add    $0x4,%edi
 4c3:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4c6:	83 c4 10             	add    $0x10,%esp
 4c9:	be 00 00 00 00       	mov    $0x0,%esi
 4ce:	e9 63 ff ff ff       	jmp    0x436
 4d3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4d6:	8b 17                	mov    (%edi),%edx
 4d8:	83 ec 0c             	sub    $0xc,%esp
 4db:	6a 00                	push   $0x0
 4dd:	b9 10 00 00 00       	mov    $0x10,%ecx
 4e2:	8b 45 08             	mov    0x8(%ebp),%eax
 4e5:	e8 95 fe ff ff       	call   0x37f
 4ea:	83 c7 04             	add    $0x4,%edi
 4ed:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4f0:	83 c4 10             	add    $0x10,%esp
 4f3:	be 00 00 00 00       	mov    $0x0,%esi
 4f8:	e9 39 ff ff ff       	jmp    0x436
 4fd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 500:	8b 30                	mov    (%eax),%esi
 502:	83 c0 04             	add    $0x4,%eax
 505:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 508:	85 f6                	test   %esi,%esi
 50a:	75 28                	jne    0x534
 50c:	be fc 06 00 00       	mov    $0x6fc,%esi
 511:	8b 7d 08             	mov    0x8(%ebp),%edi
 514:	eb 0d                	jmp    0x523
 516:	0f be d2             	movsbl %dl,%edx
 519:	89 f8                	mov    %edi,%eax
 51b:	e8 45 fe ff ff       	call   0x365
 520:	83 c6 01             	add    $0x1,%esi
 523:	0f b6 16             	movzbl (%esi),%edx
 526:	84 d2                	test   %dl,%dl
 528:	75 ec                	jne    0x516
 52a:	be 00 00 00 00       	mov    $0x0,%esi
 52f:	e9 02 ff ff ff       	jmp    0x436
 534:	8b 7d 08             	mov    0x8(%ebp),%edi
 537:	eb ea                	jmp    0x523
 539:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 53c:	0f be 17             	movsbl (%edi),%edx
 53f:	8b 45 08             	mov    0x8(%ebp),%eax
 542:	e8 1e fe ff ff       	call   0x365
 547:	83 c7 04             	add    $0x4,%edi
 54a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 54d:	be 00 00 00 00       	mov    $0x0,%esi
 552:	e9 df fe ff ff       	jmp    0x436
 557:	89 fa                	mov    %edi,%edx
 559:	8b 45 08             	mov    0x8(%ebp),%eax
 55c:	e8 04 fe ff ff       	call   0x365
 561:	be 00 00 00 00       	mov    $0x0,%esi
 566:	e9 cb fe ff ff       	jmp    0x436
 56b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 56e:	5b                   	pop    %ebx
 56f:	5e                   	pop    %esi
 570:	5f                   	pop    %edi
 571:	5d                   	pop    %ebp
 572:	c3                   	ret    
 573:	f3 0f 1e fb          	endbr32 
 577:	55                   	push   %ebp
 578:	89 e5                	mov    %esp,%ebp
 57a:	57                   	push   %edi
 57b:	56                   	push   %esi
 57c:	53                   	push   %ebx
 57d:	8b 5d 08             	mov    0x8(%ebp),%ebx
 580:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 583:	a1 e0 09 00 00       	mov    0x9e0,%eax
 588:	eb 02                	jmp    0x58c
 58a:	89 d0                	mov    %edx,%eax
 58c:	39 c8                	cmp    %ecx,%eax
 58e:	73 04                	jae    0x594
 590:	39 08                	cmp    %ecx,(%eax)
 592:	77 12                	ja     0x5a6
 594:	8b 10                	mov    (%eax),%edx
 596:	39 c2                	cmp    %eax,%edx
 598:	77 f0                	ja     0x58a
 59a:	39 c8                	cmp    %ecx,%eax
 59c:	72 08                	jb     0x5a6
 59e:	39 ca                	cmp    %ecx,%edx
 5a0:	77 04                	ja     0x5a6
 5a2:	89 d0                	mov    %edx,%eax
 5a4:	eb e6                	jmp    0x58c
 5a6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5a9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5ac:	8b 10                	mov    (%eax),%edx
 5ae:	39 d7                	cmp    %edx,%edi
 5b0:	74 19                	je     0x5cb
 5b2:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5b5:	8b 50 04             	mov    0x4(%eax),%edx
 5b8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5bb:	39 ce                	cmp    %ecx,%esi
 5bd:	74 1b                	je     0x5da
 5bf:	89 08                	mov    %ecx,(%eax)
 5c1:	a3 e0 09 00 00       	mov    %eax,0x9e0
 5c6:	5b                   	pop    %ebx
 5c7:	5e                   	pop    %esi
 5c8:	5f                   	pop    %edi
 5c9:	5d                   	pop    %ebp
 5ca:	c3                   	ret    
 5cb:	03 72 04             	add    0x4(%edx),%esi
 5ce:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5d1:	8b 10                	mov    (%eax),%edx
 5d3:	8b 12                	mov    (%edx),%edx
 5d5:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5d8:	eb db                	jmp    0x5b5
 5da:	03 53 fc             	add    -0x4(%ebx),%edx
 5dd:	89 50 04             	mov    %edx,0x4(%eax)
 5e0:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5e3:	89 10                	mov    %edx,(%eax)
 5e5:	eb da                	jmp    0x5c1
 5e7:	55                   	push   %ebp
 5e8:	89 e5                	mov    %esp,%ebp
 5ea:	53                   	push   %ebx
 5eb:	83 ec 04             	sub    $0x4,%esp
 5ee:	89 c3                	mov    %eax,%ebx
 5f0:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5f5:	77 05                	ja     0x5fc
 5f7:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5fc:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 603:	83 ec 0c             	sub    $0xc,%esp
 606:	50                   	push   %eax
 607:	e8 39 fd ff ff       	call   0x345
 60c:	83 c4 10             	add    $0x10,%esp
 60f:	83 f8 ff             	cmp    $0xffffffff,%eax
 612:	74 1c                	je     0x630
 614:	89 58 04             	mov    %ebx,0x4(%eax)
 617:	83 c0 08             	add    $0x8,%eax
 61a:	83 ec 0c             	sub    $0xc,%esp
 61d:	50                   	push   %eax
 61e:	e8 50 ff ff ff       	call   0x573
 623:	a1 e0 09 00 00       	mov    0x9e0,%eax
 628:	83 c4 10             	add    $0x10,%esp
 62b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 62e:	c9                   	leave  
 62f:	c3                   	ret    
 630:	b8 00 00 00 00       	mov    $0x0,%eax
 635:	eb f4                	jmp    0x62b
 637:	f3 0f 1e fb          	endbr32 
 63b:	55                   	push   %ebp
 63c:	89 e5                	mov    %esp,%ebp
 63e:	53                   	push   %ebx
 63f:	83 ec 04             	sub    $0x4,%esp
 642:	8b 45 08             	mov    0x8(%ebp),%eax
 645:	8d 58 07             	lea    0x7(%eax),%ebx
 648:	c1 eb 03             	shr    $0x3,%ebx
 64b:	83 c3 01             	add    $0x1,%ebx
 64e:	8b 0d e0 09 00 00    	mov    0x9e0,%ecx
 654:	85 c9                	test   %ecx,%ecx
 656:	74 04                	je     0x65c
 658:	8b 01                	mov    (%ecx),%eax
 65a:	eb 4b                	jmp    0x6a7
 65c:	c7 05 e0 09 00 00 e4 	movl   $0x9e4,0x9e0
 663:	09 00 00 
 666:	c7 05 e4 09 00 00 e4 	movl   $0x9e4,0x9e4
 66d:	09 00 00 
 670:	c7 05 e8 09 00 00 00 	movl   $0x0,0x9e8
 677:	00 00 00 
 67a:	b9 e4 09 00 00       	mov    $0x9e4,%ecx
 67f:	eb d7                	jmp    0x658
 681:	74 1a                	je     0x69d
 683:	29 da                	sub    %ebx,%edx
 685:	89 50 04             	mov    %edx,0x4(%eax)
 688:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 68b:	89 58 04             	mov    %ebx,0x4(%eax)
 68e:	89 0d e0 09 00 00    	mov    %ecx,0x9e0
 694:	83 c0 08             	add    $0x8,%eax
 697:	83 c4 04             	add    $0x4,%esp
 69a:	5b                   	pop    %ebx
 69b:	5d                   	pop    %ebp
 69c:	c3                   	ret    
 69d:	8b 10                	mov    (%eax),%edx
 69f:	89 11                	mov    %edx,(%ecx)
 6a1:	eb eb                	jmp    0x68e
 6a3:	89 c1                	mov    %eax,%ecx
 6a5:	8b 00                	mov    (%eax),%eax
 6a7:	8b 50 04             	mov    0x4(%eax),%edx
 6aa:	39 da                	cmp    %ebx,%edx
 6ac:	73 d3                	jae    0x681
 6ae:	39 05 e0 09 00 00    	cmp    %eax,0x9e0
 6b4:	75 ed                	jne    0x6a3
 6b6:	89 d8                	mov    %ebx,%eax
 6b8:	e8 2a ff ff ff       	call   0x5e7
 6bd:	85 c0                	test   %eax,%eax
 6bf:	75 e2                	jne    0x6a3
 6c1:	eb d4                	jmp    0x697
