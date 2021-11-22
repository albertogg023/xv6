
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
  14:	68 40 0a 00 00       	push   $0xa40
  19:	56                   	push   %esi
  1a:	e8 d7 02 00 00       	call   0x2f6
  1f:	89 c3                	mov    %eax,%ebx
  21:	83 c4 10             	add    $0x10,%esp
  24:	85 c0                	test   %eax,%eax
  26:	7e 32                	jle    0x5a
  28:	83 ec 04             	sub    $0x4,%esp
  2b:	53                   	push   %ebx
  2c:	68 40 0a 00 00       	push   $0xa40
  31:	6a 01                	push   $0x1
  33:	e8 c6 02 00 00       	call   0x2fe
  38:	83 c4 10             	add    $0x10,%esp
  3b:	39 d8                	cmp    %ebx,%eax
  3d:	74 cd                	je     0xc
  3f:	83 ec 08             	sub    $0x8,%esp
  42:	68 ec 06 00 00       	push   $0x6ec
  47:	6a 01                	push   $0x1
  49:	e8 e1 03 00 00       	call   0x42f
  4e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  55:	e8 84 02 00 00       	call   0x2de
  5a:	78 07                	js     0x63
  5c:	8d 65 f8             	lea    -0x8(%ebp),%esp
  5f:	5b                   	pop    %ebx
  60:	5e                   	pop    %esi
  61:	5d                   	pop    %ebp
  62:	c3                   	ret    
  63:	83 ec 08             	sub    $0x8,%esp
  66:	68 fe 06 00 00       	push   $0x6fe
  6b:	6a 01                	push   $0x1
  6d:	e8 bd 03 00 00       	call   0x42f
  72:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  79:	e8 60 02 00 00       	call   0x2de
  7e:	f3 0f 1e fb          	endbr32 
  82:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  86:	83 e4 f0             	and    $0xfffffff0,%esp
  89:	ff 71 fc             	pushl  -0x4(%ecx)
  8c:	55                   	push   %ebp
  8d:	89 e5                	mov    %esp,%ebp
  8f:	57                   	push   %edi
  90:	56                   	push   %esi
  91:	53                   	push   %ebx
  92:	51                   	push   %ecx
  93:	83 ec 18             	sub    $0x18,%esp
  96:	8b 01                	mov    (%ecx),%eax
  98:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  9b:	8b 51 04             	mov    0x4(%ecx),%edx
  9e:	89 55 e0             	mov    %edx,-0x20(%ebp)
  a1:	83 f8 01             	cmp    $0x1,%eax
  a4:	7e 3e                	jle    0xe4
  a6:	be 01 00 00 00       	mov    $0x1,%esi
  ab:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
  ae:	7d 67                	jge    0x117
  b0:	8b 45 e0             	mov    -0x20(%ebp),%eax
  b3:	8d 3c b0             	lea    (%eax,%esi,4),%edi
  b6:	83 ec 08             	sub    $0x8,%esp
  b9:	6a 00                	push   $0x0
  bb:	ff 37                	pushl  (%edi)
  bd:	e8 5c 02 00 00       	call   0x31e
  c2:	89 c3                	mov    %eax,%ebx
  c4:	83 c4 10             	add    $0x10,%esp
  c7:	85 c0                	test   %eax,%eax
  c9:	78 2f                	js     0xfa
  cb:	83 ec 0c             	sub    $0xc,%esp
  ce:	50                   	push   %eax
  cf:	e8 2c ff ff ff       	call   0x0
  d4:	89 1c 24             	mov    %ebx,(%esp)
  d7:	e8 2a 02 00 00       	call   0x306
  dc:	83 c6 01             	add    $0x1,%esi
  df:	83 c4 10             	add    $0x10,%esp
  e2:	eb c7                	jmp    0xab
  e4:	83 ec 0c             	sub    $0xc,%esp
  e7:	6a 00                	push   $0x0
  e9:	e8 12 ff ff ff       	call   0x0
  ee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f5:	e8 e4 01 00 00       	call   0x2de
  fa:	83 ec 04             	sub    $0x4,%esp
  fd:	ff 37                	pushl  (%edi)
  ff:	68 0f 07 00 00       	push   $0x70f
 104:	6a 01                	push   $0x1
 106:	e8 24 03 00 00       	call   0x42f
 10b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 112:	e8 c7 01 00 00       	call   0x2de
 117:	83 ec 0c             	sub    $0xc,%esp
 11a:	6a 00                	push   $0x0
 11c:	e8 bd 01 00 00       	call   0x2de
 121:	f3 0f 1e fb          	endbr32 
 125:	55                   	push   %ebp
 126:	89 e5                	mov    %esp,%ebp
 128:	56                   	push   %esi
 129:	53                   	push   %ebx
 12a:	8b 75 08             	mov    0x8(%ebp),%esi
 12d:	8b 55 0c             	mov    0xc(%ebp),%edx
 130:	89 f0                	mov    %esi,%eax
 132:	89 d1                	mov    %edx,%ecx
 134:	83 c2 01             	add    $0x1,%edx
 137:	89 c3                	mov    %eax,%ebx
 139:	83 c0 01             	add    $0x1,%eax
 13c:	0f b6 09             	movzbl (%ecx),%ecx
 13f:	88 0b                	mov    %cl,(%ebx)
 141:	84 c9                	test   %cl,%cl
 143:	75 ed                	jne    0x132
 145:	89 f0                	mov    %esi,%eax
 147:	5b                   	pop    %ebx
 148:	5e                   	pop    %esi
 149:	5d                   	pop    %ebp
 14a:	c3                   	ret    
 14b:	f3 0f 1e fb          	endbr32 
 14f:	55                   	push   %ebp
 150:	89 e5                	mov    %esp,%ebp
 152:	8b 4d 08             	mov    0x8(%ebp),%ecx
 155:	8b 55 0c             	mov    0xc(%ebp),%edx
 158:	0f b6 01             	movzbl (%ecx),%eax
 15b:	84 c0                	test   %al,%al
 15d:	74 0c                	je     0x16b
 15f:	3a 02                	cmp    (%edx),%al
 161:	75 08                	jne    0x16b
 163:	83 c1 01             	add    $0x1,%ecx
 166:	83 c2 01             	add    $0x1,%edx
 169:	eb ed                	jmp    0x158
 16b:	0f b6 c0             	movzbl %al,%eax
 16e:	0f b6 12             	movzbl (%edx),%edx
 171:	29 d0                	sub    %edx,%eax
 173:	5d                   	pop    %ebp
 174:	c3                   	ret    
 175:	f3 0f 1e fb          	endbr32 
 179:	55                   	push   %ebp
 17a:	89 e5                	mov    %esp,%ebp
 17c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 17f:	b8 00 00 00 00       	mov    $0x0,%eax
 184:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 188:	74 05                	je     0x18f
 18a:	83 c0 01             	add    $0x1,%eax
 18d:	eb f5                	jmp    0x184
 18f:	5d                   	pop    %ebp
 190:	c3                   	ret    
 191:	f3 0f 1e fb          	endbr32 
 195:	55                   	push   %ebp
 196:	89 e5                	mov    %esp,%ebp
 198:	57                   	push   %edi
 199:	8b 55 08             	mov    0x8(%ebp),%edx
 19c:	89 d7                	mov    %edx,%edi
 19e:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1a1:	8b 45 0c             	mov    0xc(%ebp),%eax
 1a4:	fc                   	cld    
 1a5:	f3 aa                	rep stos %al,%es:(%edi)
 1a7:	89 d0                	mov    %edx,%eax
 1a9:	5f                   	pop    %edi
 1aa:	5d                   	pop    %ebp
 1ab:	c3                   	ret    
 1ac:	f3 0f 1e fb          	endbr32 
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 45 08             	mov    0x8(%ebp),%eax
 1b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1ba:	0f b6 10             	movzbl (%eax),%edx
 1bd:	84 d2                	test   %dl,%dl
 1bf:	74 09                	je     0x1ca
 1c1:	38 ca                	cmp    %cl,%dl
 1c3:	74 0a                	je     0x1cf
 1c5:	83 c0 01             	add    $0x1,%eax
 1c8:	eb f0                	jmp    0x1ba
 1ca:	b8 00 00 00 00       	mov    $0x0,%eax
 1cf:	5d                   	pop    %ebp
 1d0:	c3                   	ret    
 1d1:	f3 0f 1e fb          	endbr32 
 1d5:	55                   	push   %ebp
 1d6:	89 e5                	mov    %esp,%ebp
 1d8:	57                   	push   %edi
 1d9:	56                   	push   %esi
 1da:	53                   	push   %ebx
 1db:	83 ec 1c             	sub    $0x1c,%esp
 1de:	8b 7d 08             	mov    0x8(%ebp),%edi
 1e1:	bb 00 00 00 00       	mov    $0x0,%ebx
 1e6:	89 de                	mov    %ebx,%esi
 1e8:	83 c3 01             	add    $0x1,%ebx
 1eb:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1ee:	7d 2e                	jge    0x21e
 1f0:	83 ec 04             	sub    $0x4,%esp
 1f3:	6a 01                	push   $0x1
 1f5:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1f8:	50                   	push   %eax
 1f9:	6a 00                	push   $0x0
 1fb:	e8 f6 00 00 00       	call   0x2f6
 200:	83 c4 10             	add    $0x10,%esp
 203:	85 c0                	test   %eax,%eax
 205:	7e 17                	jle    0x21e
 207:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 20b:	88 04 37             	mov    %al,(%edi,%esi,1)
 20e:	3c 0a                	cmp    $0xa,%al
 210:	0f 94 c2             	sete   %dl
 213:	3c 0d                	cmp    $0xd,%al
 215:	0f 94 c0             	sete   %al
 218:	08 c2                	or     %al,%dl
 21a:	74 ca                	je     0x1e6
 21c:	89 de                	mov    %ebx,%esi
 21e:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 222:	89 f8                	mov    %edi,%eax
 224:	8d 65 f4             	lea    -0xc(%ebp),%esp
 227:	5b                   	pop    %ebx
 228:	5e                   	pop    %esi
 229:	5f                   	pop    %edi
 22a:	5d                   	pop    %ebp
 22b:	c3                   	ret    
 22c:	f3 0f 1e fb          	endbr32 
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	56                   	push   %esi
 234:	53                   	push   %ebx
 235:	83 ec 08             	sub    $0x8,%esp
 238:	6a 00                	push   $0x0
 23a:	ff 75 08             	pushl  0x8(%ebp)
 23d:	e8 dc 00 00 00       	call   0x31e
 242:	83 c4 10             	add    $0x10,%esp
 245:	85 c0                	test   %eax,%eax
 247:	78 24                	js     0x26d
 249:	89 c3                	mov    %eax,%ebx
 24b:	83 ec 08             	sub    $0x8,%esp
 24e:	ff 75 0c             	pushl  0xc(%ebp)
 251:	50                   	push   %eax
 252:	e8 df 00 00 00       	call   0x336
 257:	89 c6                	mov    %eax,%esi
 259:	89 1c 24             	mov    %ebx,(%esp)
 25c:	e8 a5 00 00 00       	call   0x306
 261:	83 c4 10             	add    $0x10,%esp
 264:	89 f0                	mov    %esi,%eax
 266:	8d 65 f8             	lea    -0x8(%ebp),%esp
 269:	5b                   	pop    %ebx
 26a:	5e                   	pop    %esi
 26b:	5d                   	pop    %ebp
 26c:	c3                   	ret    
 26d:	be ff ff ff ff       	mov    $0xffffffff,%esi
 272:	eb f0                	jmp    0x264
 274:	f3 0f 1e fb          	endbr32 
 278:	55                   	push   %ebp
 279:	89 e5                	mov    %esp,%ebp
 27b:	53                   	push   %ebx
 27c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 27f:	ba 00 00 00 00       	mov    $0x0,%edx
 284:	0f b6 01             	movzbl (%ecx),%eax
 287:	8d 58 d0             	lea    -0x30(%eax),%ebx
 28a:	80 fb 09             	cmp    $0x9,%bl
 28d:	77 12                	ja     0x2a1
 28f:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 292:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 295:	83 c1 01             	add    $0x1,%ecx
 298:	0f be c0             	movsbl %al,%eax
 29b:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 29f:	eb e3                	jmp    0x284
 2a1:	89 d0                	mov    %edx,%eax
 2a3:	5b                   	pop    %ebx
 2a4:	5d                   	pop    %ebp
 2a5:	c3                   	ret    
 2a6:	f3 0f 1e fb          	endbr32 
 2aa:	55                   	push   %ebp
 2ab:	89 e5                	mov    %esp,%ebp
 2ad:	56                   	push   %esi
 2ae:	53                   	push   %ebx
 2af:	8b 75 08             	mov    0x8(%ebp),%esi
 2b2:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2b5:	8b 45 10             	mov    0x10(%ebp),%eax
 2b8:	89 f2                	mov    %esi,%edx
 2ba:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2bd:	85 c0                	test   %eax,%eax
 2bf:	7e 0f                	jle    0x2d0
 2c1:	0f b6 01             	movzbl (%ecx),%eax
 2c4:	88 02                	mov    %al,(%edx)
 2c6:	8d 49 01             	lea    0x1(%ecx),%ecx
 2c9:	8d 52 01             	lea    0x1(%edx),%edx
 2cc:	89 d8                	mov    %ebx,%eax
 2ce:	eb ea                	jmp    0x2ba
 2d0:	89 f0                	mov    %esi,%eax
 2d2:	5b                   	pop    %ebx
 2d3:	5e                   	pop    %esi
 2d4:	5d                   	pop    %ebp
 2d5:	c3                   	ret    
 2d6:	b8 01 00 00 00       	mov    $0x1,%eax
 2db:	cd 40                	int    $0x40
 2dd:	c3                   	ret    
 2de:	b8 02 00 00 00       	mov    $0x2,%eax
 2e3:	cd 40                	int    $0x40
 2e5:	c3                   	ret    
 2e6:	b8 03 00 00 00       	mov    $0x3,%eax
 2eb:	cd 40                	int    $0x40
 2ed:	c3                   	ret    
 2ee:	b8 04 00 00 00       	mov    $0x4,%eax
 2f3:	cd 40                	int    $0x40
 2f5:	c3                   	ret    
 2f6:	b8 05 00 00 00       	mov    $0x5,%eax
 2fb:	cd 40                	int    $0x40
 2fd:	c3                   	ret    
 2fe:	b8 10 00 00 00       	mov    $0x10,%eax
 303:	cd 40                	int    $0x40
 305:	c3                   	ret    
 306:	b8 15 00 00 00       	mov    $0x15,%eax
 30b:	cd 40                	int    $0x40
 30d:	c3                   	ret    
 30e:	b8 06 00 00 00       	mov    $0x6,%eax
 313:	cd 40                	int    $0x40
 315:	c3                   	ret    
 316:	b8 07 00 00 00       	mov    $0x7,%eax
 31b:	cd 40                	int    $0x40
 31d:	c3                   	ret    
 31e:	b8 0f 00 00 00       	mov    $0xf,%eax
 323:	cd 40                	int    $0x40
 325:	c3                   	ret    
 326:	b8 11 00 00 00       	mov    $0x11,%eax
 32b:	cd 40                	int    $0x40
 32d:	c3                   	ret    
 32e:	b8 12 00 00 00       	mov    $0x12,%eax
 333:	cd 40                	int    $0x40
 335:	c3                   	ret    
 336:	b8 08 00 00 00       	mov    $0x8,%eax
 33b:	cd 40                	int    $0x40
 33d:	c3                   	ret    
 33e:	b8 13 00 00 00       	mov    $0x13,%eax
 343:	cd 40                	int    $0x40
 345:	c3                   	ret    
 346:	b8 14 00 00 00       	mov    $0x14,%eax
 34b:	cd 40                	int    $0x40
 34d:	c3                   	ret    
 34e:	b8 09 00 00 00       	mov    $0x9,%eax
 353:	cd 40                	int    $0x40
 355:	c3                   	ret    
 356:	b8 0a 00 00 00       	mov    $0xa,%eax
 35b:	cd 40                	int    $0x40
 35d:	c3                   	ret    
 35e:	b8 0b 00 00 00       	mov    $0xb,%eax
 363:	cd 40                	int    $0x40
 365:	c3                   	ret    
 366:	b8 0c 00 00 00       	mov    $0xc,%eax
 36b:	cd 40                	int    $0x40
 36d:	c3                   	ret    
 36e:	b8 0d 00 00 00       	mov    $0xd,%eax
 373:	cd 40                	int    $0x40
 375:	c3                   	ret    
 376:	b8 0e 00 00 00       	mov    $0xe,%eax
 37b:	cd 40                	int    $0x40
 37d:	c3                   	ret    
 37e:	b8 16 00 00 00       	mov    $0x16,%eax
 383:	cd 40                	int    $0x40
 385:	c3                   	ret    
 386:	b8 17 00 00 00       	mov    $0x17,%eax
 38b:	cd 40                	int    $0x40
 38d:	c3                   	ret    
 38e:	55                   	push   %ebp
 38f:	89 e5                	mov    %esp,%ebp
 391:	83 ec 1c             	sub    $0x1c,%esp
 394:	88 55 f4             	mov    %dl,-0xc(%ebp)
 397:	6a 01                	push   $0x1
 399:	8d 55 f4             	lea    -0xc(%ebp),%edx
 39c:	52                   	push   %edx
 39d:	50                   	push   %eax
 39e:	e8 5b ff ff ff       	call   0x2fe
 3a3:	83 c4 10             	add    $0x10,%esp
 3a6:	c9                   	leave  
 3a7:	c3                   	ret    
 3a8:	55                   	push   %ebp
 3a9:	89 e5                	mov    %esp,%ebp
 3ab:	57                   	push   %edi
 3ac:	56                   	push   %esi
 3ad:	53                   	push   %ebx
 3ae:	83 ec 2c             	sub    $0x2c,%esp
 3b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3b4:	89 d6                	mov    %edx,%esi
 3b6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3ba:	0f 95 c2             	setne  %dl
 3bd:	89 f0                	mov    %esi,%eax
 3bf:	c1 e8 1f             	shr    $0x1f,%eax
 3c2:	84 c2                	test   %al,%dl
 3c4:	74 42                	je     0x408
 3c6:	f7 de                	neg    %esi
 3c8:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3cf:	bb 00 00 00 00       	mov    $0x0,%ebx
 3d4:	89 f0                	mov    %esi,%eax
 3d6:	ba 00 00 00 00       	mov    $0x0,%edx
 3db:	f7 f1                	div    %ecx
 3dd:	89 df                	mov    %ebx,%edi
 3df:	83 c3 01             	add    $0x1,%ebx
 3e2:	0f b6 92 2c 07 00 00 	movzbl 0x72c(%edx),%edx
 3e9:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3ed:	89 f2                	mov    %esi,%edx
 3ef:	89 c6                	mov    %eax,%esi
 3f1:	39 d1                	cmp    %edx,%ecx
 3f3:	76 df                	jbe    0x3d4
 3f5:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3f9:	74 2f                	je     0x42a
 3fb:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 400:	8d 5f 02             	lea    0x2(%edi),%ebx
 403:	8b 75 d0             	mov    -0x30(%ebp),%esi
 406:	eb 15                	jmp    0x41d
 408:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 40f:	eb be                	jmp    0x3cf
 411:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 416:	89 f0                	mov    %esi,%eax
 418:	e8 71 ff ff ff       	call   0x38e
 41d:	83 eb 01             	sub    $0x1,%ebx
 420:	79 ef                	jns    0x411
 422:	83 c4 2c             	add    $0x2c,%esp
 425:	5b                   	pop    %ebx
 426:	5e                   	pop    %esi
 427:	5f                   	pop    %edi
 428:	5d                   	pop    %ebp
 429:	c3                   	ret    
 42a:	8b 75 d0             	mov    -0x30(%ebp),%esi
 42d:	eb ee                	jmp    0x41d
 42f:	f3 0f 1e fb          	endbr32 
 433:	55                   	push   %ebp
 434:	89 e5                	mov    %esp,%ebp
 436:	57                   	push   %edi
 437:	56                   	push   %esi
 438:	53                   	push   %ebx
 439:	83 ec 1c             	sub    $0x1c,%esp
 43c:	8d 45 10             	lea    0x10(%ebp),%eax
 43f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 442:	be 00 00 00 00       	mov    $0x0,%esi
 447:	bb 00 00 00 00       	mov    $0x0,%ebx
 44c:	eb 14                	jmp    0x462
 44e:	89 fa                	mov    %edi,%edx
 450:	8b 45 08             	mov    0x8(%ebp),%eax
 453:	e8 36 ff ff ff       	call   0x38e
 458:	eb 05                	jmp    0x45f
 45a:	83 fe 25             	cmp    $0x25,%esi
 45d:	74 25                	je     0x484
 45f:	83 c3 01             	add    $0x1,%ebx
 462:	8b 45 0c             	mov    0xc(%ebp),%eax
 465:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 469:	84 c0                	test   %al,%al
 46b:	0f 84 23 01 00 00    	je     0x594
 471:	0f be f8             	movsbl %al,%edi
 474:	0f b6 c0             	movzbl %al,%eax
 477:	85 f6                	test   %esi,%esi
 479:	75 df                	jne    0x45a
 47b:	83 f8 25             	cmp    $0x25,%eax
 47e:	75 ce                	jne    0x44e
 480:	89 c6                	mov    %eax,%esi
 482:	eb db                	jmp    0x45f
 484:	83 f8 64             	cmp    $0x64,%eax
 487:	74 49                	je     0x4d2
 489:	83 f8 78             	cmp    $0x78,%eax
 48c:	0f 94 c1             	sete   %cl
 48f:	83 f8 70             	cmp    $0x70,%eax
 492:	0f 94 c2             	sete   %dl
 495:	08 d1                	or     %dl,%cl
 497:	75 63                	jne    0x4fc
 499:	83 f8 73             	cmp    $0x73,%eax
 49c:	0f 84 84 00 00 00    	je     0x526
 4a2:	83 f8 63             	cmp    $0x63,%eax
 4a5:	0f 84 b7 00 00 00    	je     0x562
 4ab:	83 f8 25             	cmp    $0x25,%eax
 4ae:	0f 84 cc 00 00 00    	je     0x580
 4b4:	ba 25 00 00 00       	mov    $0x25,%edx
 4b9:	8b 45 08             	mov    0x8(%ebp),%eax
 4bc:	e8 cd fe ff ff       	call   0x38e
 4c1:	89 fa                	mov    %edi,%edx
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	e8 c3 fe ff ff       	call   0x38e
 4cb:	be 00 00 00 00       	mov    $0x0,%esi
 4d0:	eb 8d                	jmp    0x45f
 4d2:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4d5:	8b 17                	mov    (%edi),%edx
 4d7:	83 ec 0c             	sub    $0xc,%esp
 4da:	6a 01                	push   $0x1
 4dc:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4e1:	8b 45 08             	mov    0x8(%ebp),%eax
 4e4:	e8 bf fe ff ff       	call   0x3a8
 4e9:	83 c7 04             	add    $0x4,%edi
 4ec:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4ef:	83 c4 10             	add    $0x10,%esp
 4f2:	be 00 00 00 00       	mov    $0x0,%esi
 4f7:	e9 63 ff ff ff       	jmp    0x45f
 4fc:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4ff:	8b 17                	mov    (%edi),%edx
 501:	83 ec 0c             	sub    $0xc,%esp
 504:	6a 00                	push   $0x0
 506:	b9 10 00 00 00       	mov    $0x10,%ecx
 50b:	8b 45 08             	mov    0x8(%ebp),%eax
 50e:	e8 95 fe ff ff       	call   0x3a8
 513:	83 c7 04             	add    $0x4,%edi
 516:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 519:	83 c4 10             	add    $0x10,%esp
 51c:	be 00 00 00 00       	mov    $0x0,%esi
 521:	e9 39 ff ff ff       	jmp    0x45f
 526:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 529:	8b 30                	mov    (%eax),%esi
 52b:	83 c0 04             	add    $0x4,%eax
 52e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 531:	85 f6                	test   %esi,%esi
 533:	75 28                	jne    0x55d
 535:	be 24 07 00 00       	mov    $0x724,%esi
 53a:	8b 7d 08             	mov    0x8(%ebp),%edi
 53d:	eb 0d                	jmp    0x54c
 53f:	0f be d2             	movsbl %dl,%edx
 542:	89 f8                	mov    %edi,%eax
 544:	e8 45 fe ff ff       	call   0x38e
 549:	83 c6 01             	add    $0x1,%esi
 54c:	0f b6 16             	movzbl (%esi),%edx
 54f:	84 d2                	test   %dl,%dl
 551:	75 ec                	jne    0x53f
 553:	be 00 00 00 00       	mov    $0x0,%esi
 558:	e9 02 ff ff ff       	jmp    0x45f
 55d:	8b 7d 08             	mov    0x8(%ebp),%edi
 560:	eb ea                	jmp    0x54c
 562:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 565:	0f be 17             	movsbl (%edi),%edx
 568:	8b 45 08             	mov    0x8(%ebp),%eax
 56b:	e8 1e fe ff ff       	call   0x38e
 570:	83 c7 04             	add    $0x4,%edi
 573:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 576:	be 00 00 00 00       	mov    $0x0,%esi
 57b:	e9 df fe ff ff       	jmp    0x45f
 580:	89 fa                	mov    %edi,%edx
 582:	8b 45 08             	mov    0x8(%ebp),%eax
 585:	e8 04 fe ff ff       	call   0x38e
 58a:	be 00 00 00 00       	mov    $0x0,%esi
 58f:	e9 cb fe ff ff       	jmp    0x45f
 594:	8d 65 f4             	lea    -0xc(%ebp),%esp
 597:	5b                   	pop    %ebx
 598:	5e                   	pop    %esi
 599:	5f                   	pop    %edi
 59a:	5d                   	pop    %ebp
 59b:	c3                   	ret    
 59c:	f3 0f 1e fb          	endbr32 
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	56                   	push   %esi
 5a5:	53                   	push   %ebx
 5a6:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5a9:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5ac:	a1 20 0a 00 00       	mov    0xa20,%eax
 5b1:	eb 02                	jmp    0x5b5
 5b3:	89 d0                	mov    %edx,%eax
 5b5:	39 c8                	cmp    %ecx,%eax
 5b7:	73 04                	jae    0x5bd
 5b9:	39 08                	cmp    %ecx,(%eax)
 5bb:	77 12                	ja     0x5cf
 5bd:	8b 10                	mov    (%eax),%edx
 5bf:	39 c2                	cmp    %eax,%edx
 5c1:	77 f0                	ja     0x5b3
 5c3:	39 c8                	cmp    %ecx,%eax
 5c5:	72 08                	jb     0x5cf
 5c7:	39 ca                	cmp    %ecx,%edx
 5c9:	77 04                	ja     0x5cf
 5cb:	89 d0                	mov    %edx,%eax
 5cd:	eb e6                	jmp    0x5b5
 5cf:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5d2:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5d5:	8b 10                	mov    (%eax),%edx
 5d7:	39 d7                	cmp    %edx,%edi
 5d9:	74 19                	je     0x5f4
 5db:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5de:	8b 50 04             	mov    0x4(%eax),%edx
 5e1:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5e4:	39 ce                	cmp    %ecx,%esi
 5e6:	74 1b                	je     0x603
 5e8:	89 08                	mov    %ecx,(%eax)
 5ea:	a3 20 0a 00 00       	mov    %eax,0xa20
 5ef:	5b                   	pop    %ebx
 5f0:	5e                   	pop    %esi
 5f1:	5f                   	pop    %edi
 5f2:	5d                   	pop    %ebp
 5f3:	c3                   	ret    
 5f4:	03 72 04             	add    0x4(%edx),%esi
 5f7:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5fa:	8b 10                	mov    (%eax),%edx
 5fc:	8b 12                	mov    (%edx),%edx
 5fe:	89 53 f8             	mov    %edx,-0x8(%ebx)
 601:	eb db                	jmp    0x5de
 603:	03 53 fc             	add    -0x4(%ebx),%edx
 606:	89 50 04             	mov    %edx,0x4(%eax)
 609:	8b 53 f8             	mov    -0x8(%ebx),%edx
 60c:	89 10                	mov    %edx,(%eax)
 60e:	eb da                	jmp    0x5ea
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	53                   	push   %ebx
 614:	83 ec 04             	sub    $0x4,%esp
 617:	89 c3                	mov    %eax,%ebx
 619:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 61e:	77 05                	ja     0x625
 620:	bb 00 10 00 00       	mov    $0x1000,%ebx
 625:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 62c:	83 ec 0c             	sub    $0xc,%esp
 62f:	50                   	push   %eax
 630:	e8 31 fd ff ff       	call   0x366
 635:	83 c4 10             	add    $0x10,%esp
 638:	83 f8 ff             	cmp    $0xffffffff,%eax
 63b:	74 1c                	je     0x659
 63d:	89 58 04             	mov    %ebx,0x4(%eax)
 640:	83 c0 08             	add    $0x8,%eax
 643:	83 ec 0c             	sub    $0xc,%esp
 646:	50                   	push   %eax
 647:	e8 50 ff ff ff       	call   0x59c
 64c:	a1 20 0a 00 00       	mov    0xa20,%eax
 651:	83 c4 10             	add    $0x10,%esp
 654:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 657:	c9                   	leave  
 658:	c3                   	ret    
 659:	b8 00 00 00 00       	mov    $0x0,%eax
 65e:	eb f4                	jmp    0x654
 660:	f3 0f 1e fb          	endbr32 
 664:	55                   	push   %ebp
 665:	89 e5                	mov    %esp,%ebp
 667:	53                   	push   %ebx
 668:	83 ec 04             	sub    $0x4,%esp
 66b:	8b 45 08             	mov    0x8(%ebp),%eax
 66e:	8d 58 07             	lea    0x7(%eax),%ebx
 671:	c1 eb 03             	shr    $0x3,%ebx
 674:	83 c3 01             	add    $0x1,%ebx
 677:	8b 0d 20 0a 00 00    	mov    0xa20,%ecx
 67d:	85 c9                	test   %ecx,%ecx
 67f:	74 04                	je     0x685
 681:	8b 01                	mov    (%ecx),%eax
 683:	eb 4b                	jmp    0x6d0
 685:	c7 05 20 0a 00 00 24 	movl   $0xa24,0xa20
 68c:	0a 00 00 
 68f:	c7 05 24 0a 00 00 24 	movl   $0xa24,0xa24
 696:	0a 00 00 
 699:	c7 05 28 0a 00 00 00 	movl   $0x0,0xa28
 6a0:	00 00 00 
 6a3:	b9 24 0a 00 00       	mov    $0xa24,%ecx
 6a8:	eb d7                	jmp    0x681
 6aa:	74 1a                	je     0x6c6
 6ac:	29 da                	sub    %ebx,%edx
 6ae:	89 50 04             	mov    %edx,0x4(%eax)
 6b1:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6b4:	89 58 04             	mov    %ebx,0x4(%eax)
 6b7:	89 0d 20 0a 00 00    	mov    %ecx,0xa20
 6bd:	83 c0 08             	add    $0x8,%eax
 6c0:	83 c4 04             	add    $0x4,%esp
 6c3:	5b                   	pop    %ebx
 6c4:	5d                   	pop    %ebp
 6c5:	c3                   	ret    
 6c6:	8b 10                	mov    (%eax),%edx
 6c8:	89 11                	mov    %edx,(%ecx)
 6ca:	eb eb                	jmp    0x6b7
 6cc:	89 c1                	mov    %eax,%ecx
 6ce:	8b 00                	mov    (%eax),%eax
 6d0:	8b 50 04             	mov    0x4(%eax),%edx
 6d3:	39 da                	cmp    %ebx,%edx
 6d5:	73 d3                	jae    0x6aa
 6d7:	39 05 20 0a 00 00    	cmp    %eax,0xa20
 6dd:	75 ed                	jne    0x6cc
 6df:	89 d8                	mov    %ebx,%eax
 6e1:	e8 2a ff ff ff       	call   0x610
 6e6:	85 c0                	test   %eax,%eax
 6e8:	75 e2                	jne    0x6cc
 6ea:	eb d4                	jmp    0x6c0
