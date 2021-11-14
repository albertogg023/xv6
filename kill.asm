
_kill:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	57                   	push   %edi
  12:	56                   	push   %esi
  13:	53                   	push   %ebx
  14:	51                   	push   %ecx
  15:	83 ec 08             	sub    $0x8,%esp
  18:	8b 31                	mov    (%ecx),%esi
  1a:	8b 79 04             	mov    0x4(%ecx),%edi
  1d:	83 fe 01             	cmp    $0x1,%esi
  20:	7e 07                	jle    0x29
  22:	bb 01 00 00 00       	mov    $0x1,%ebx
  27:	eb 2d                	jmp    0x56
  29:	83 ec 08             	sub    $0x8,%esp
  2c:	68 2c 06 00 00       	push   $0x62c
  31:	6a 02                	push   $0x2
  33:	e8 35 03 00 00       	call   0x36d
  38:	e8 df 01 00 00       	call   0x21c
  3d:	83 ec 0c             	sub    $0xc,%esp
  40:	ff 34 9f             	pushl  (%edi,%ebx,4)
  43:	e8 6a 01 00 00       	call   0x1b2
  48:	89 04 24             	mov    %eax,(%esp)
  4b:	e8 fc 01 00 00       	call   0x24c
  50:	83 c3 01             	add    $0x1,%ebx
  53:	83 c4 10             	add    $0x10,%esp
  56:	39 f3                	cmp    %esi,%ebx
  58:	7c e3                	jl     0x3d
  5a:	e8 bd 01 00 00       	call   0x21c
  5f:	f3 0f 1e fb          	endbr32 
  63:	55                   	push   %ebp
  64:	89 e5                	mov    %esp,%ebp
  66:	56                   	push   %esi
  67:	53                   	push   %ebx
  68:	8b 75 08             	mov    0x8(%ebp),%esi
  6b:	8b 55 0c             	mov    0xc(%ebp),%edx
  6e:	89 f0                	mov    %esi,%eax
  70:	89 d1                	mov    %edx,%ecx
  72:	83 c2 01             	add    $0x1,%edx
  75:	89 c3                	mov    %eax,%ebx
  77:	83 c0 01             	add    $0x1,%eax
  7a:	0f b6 09             	movzbl (%ecx),%ecx
  7d:	88 0b                	mov    %cl,(%ebx)
  7f:	84 c9                	test   %cl,%cl
  81:	75 ed                	jne    0x70
  83:	89 f0                	mov    %esi,%eax
  85:	5b                   	pop    %ebx
  86:	5e                   	pop    %esi
  87:	5d                   	pop    %ebp
  88:	c3                   	ret    
  89:	f3 0f 1e fb          	endbr32 
  8d:	55                   	push   %ebp
  8e:	89 e5                	mov    %esp,%ebp
  90:	8b 4d 08             	mov    0x8(%ebp),%ecx
  93:	8b 55 0c             	mov    0xc(%ebp),%edx
  96:	0f b6 01             	movzbl (%ecx),%eax
  99:	84 c0                	test   %al,%al
  9b:	74 0c                	je     0xa9
  9d:	3a 02                	cmp    (%edx),%al
  9f:	75 08                	jne    0xa9
  a1:	83 c1 01             	add    $0x1,%ecx
  a4:	83 c2 01             	add    $0x1,%edx
  a7:	eb ed                	jmp    0x96
  a9:	0f b6 c0             	movzbl %al,%eax
  ac:	0f b6 12             	movzbl (%edx),%edx
  af:	29 d0                	sub    %edx,%eax
  b1:	5d                   	pop    %ebp
  b2:	c3                   	ret    
  b3:	f3 0f 1e fb          	endbr32 
  b7:	55                   	push   %ebp
  b8:	89 e5                	mov    %esp,%ebp
  ba:	8b 4d 08             	mov    0x8(%ebp),%ecx
  bd:	b8 00 00 00 00       	mov    $0x0,%eax
  c2:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  c6:	74 05                	je     0xcd
  c8:	83 c0 01             	add    $0x1,%eax
  cb:	eb f5                	jmp    0xc2
  cd:	5d                   	pop    %ebp
  ce:	c3                   	ret    
  cf:	f3 0f 1e fb          	endbr32 
  d3:	55                   	push   %ebp
  d4:	89 e5                	mov    %esp,%ebp
  d6:	57                   	push   %edi
  d7:	8b 55 08             	mov    0x8(%ebp),%edx
  da:	89 d7                	mov    %edx,%edi
  dc:	8b 4d 10             	mov    0x10(%ebp),%ecx
  df:	8b 45 0c             	mov    0xc(%ebp),%eax
  e2:	fc                   	cld    
  e3:	f3 aa                	rep stos %al,%es:(%edi)
  e5:	89 d0                	mov    %edx,%eax
  e7:	5f                   	pop    %edi
  e8:	5d                   	pop    %ebp
  e9:	c3                   	ret    
  ea:	f3 0f 1e fb          	endbr32 
  ee:	55                   	push   %ebp
  ef:	89 e5                	mov    %esp,%ebp
  f1:	8b 45 08             	mov    0x8(%ebp),%eax
  f4:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  f8:	0f b6 10             	movzbl (%eax),%edx
  fb:	84 d2                	test   %dl,%dl
  fd:	74 09                	je     0x108
  ff:	38 ca                	cmp    %cl,%dl
 101:	74 0a                	je     0x10d
 103:	83 c0 01             	add    $0x1,%eax
 106:	eb f0                	jmp    0xf8
 108:	b8 00 00 00 00       	mov    $0x0,%eax
 10d:	5d                   	pop    %ebp
 10e:	c3                   	ret    
 10f:	f3 0f 1e fb          	endbr32 
 113:	55                   	push   %ebp
 114:	89 e5                	mov    %esp,%ebp
 116:	57                   	push   %edi
 117:	56                   	push   %esi
 118:	53                   	push   %ebx
 119:	83 ec 1c             	sub    $0x1c,%esp
 11c:	8b 7d 08             	mov    0x8(%ebp),%edi
 11f:	bb 00 00 00 00       	mov    $0x0,%ebx
 124:	89 de                	mov    %ebx,%esi
 126:	83 c3 01             	add    $0x1,%ebx
 129:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 12c:	7d 2e                	jge    0x15c
 12e:	83 ec 04             	sub    $0x4,%esp
 131:	6a 01                	push   $0x1
 133:	8d 45 e7             	lea    -0x19(%ebp),%eax
 136:	50                   	push   %eax
 137:	6a 00                	push   $0x0
 139:	e8 f6 00 00 00       	call   0x234
 13e:	83 c4 10             	add    $0x10,%esp
 141:	85 c0                	test   %eax,%eax
 143:	7e 17                	jle    0x15c
 145:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 149:	88 04 37             	mov    %al,(%edi,%esi,1)
 14c:	3c 0a                	cmp    $0xa,%al
 14e:	0f 94 c2             	sete   %dl
 151:	3c 0d                	cmp    $0xd,%al
 153:	0f 94 c0             	sete   %al
 156:	08 c2                	or     %al,%dl
 158:	74 ca                	je     0x124
 15a:	89 de                	mov    %ebx,%esi
 15c:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 160:	89 f8                	mov    %edi,%eax
 162:	8d 65 f4             	lea    -0xc(%ebp),%esp
 165:	5b                   	pop    %ebx
 166:	5e                   	pop    %esi
 167:	5f                   	pop    %edi
 168:	5d                   	pop    %ebp
 169:	c3                   	ret    
 16a:	f3 0f 1e fb          	endbr32 
 16e:	55                   	push   %ebp
 16f:	89 e5                	mov    %esp,%ebp
 171:	56                   	push   %esi
 172:	53                   	push   %ebx
 173:	83 ec 08             	sub    $0x8,%esp
 176:	6a 00                	push   $0x0
 178:	ff 75 08             	pushl  0x8(%ebp)
 17b:	e8 dc 00 00 00       	call   0x25c
 180:	83 c4 10             	add    $0x10,%esp
 183:	85 c0                	test   %eax,%eax
 185:	78 24                	js     0x1ab
 187:	89 c3                	mov    %eax,%ebx
 189:	83 ec 08             	sub    $0x8,%esp
 18c:	ff 75 0c             	pushl  0xc(%ebp)
 18f:	50                   	push   %eax
 190:	e8 df 00 00 00       	call   0x274
 195:	89 c6                	mov    %eax,%esi
 197:	89 1c 24             	mov    %ebx,(%esp)
 19a:	e8 a5 00 00 00       	call   0x244
 19f:	83 c4 10             	add    $0x10,%esp
 1a2:	89 f0                	mov    %esi,%eax
 1a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1a7:	5b                   	pop    %ebx
 1a8:	5e                   	pop    %esi
 1a9:	5d                   	pop    %ebp
 1aa:	c3                   	ret    
 1ab:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1b0:	eb f0                	jmp    0x1a2
 1b2:	f3 0f 1e fb          	endbr32 
 1b6:	55                   	push   %ebp
 1b7:	89 e5                	mov    %esp,%ebp
 1b9:	53                   	push   %ebx
 1ba:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1bd:	ba 00 00 00 00       	mov    $0x0,%edx
 1c2:	0f b6 01             	movzbl (%ecx),%eax
 1c5:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1c8:	80 fb 09             	cmp    $0x9,%bl
 1cb:	77 12                	ja     0x1df
 1cd:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1d0:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1d3:	83 c1 01             	add    $0x1,%ecx
 1d6:	0f be c0             	movsbl %al,%eax
 1d9:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1dd:	eb e3                	jmp    0x1c2
 1df:	89 d0                	mov    %edx,%eax
 1e1:	5b                   	pop    %ebx
 1e2:	5d                   	pop    %ebp
 1e3:	c3                   	ret    
 1e4:	f3 0f 1e fb          	endbr32 
 1e8:	55                   	push   %ebp
 1e9:	89 e5                	mov    %esp,%ebp
 1eb:	56                   	push   %esi
 1ec:	53                   	push   %ebx
 1ed:	8b 75 08             	mov    0x8(%ebp),%esi
 1f0:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1f3:	8b 45 10             	mov    0x10(%ebp),%eax
 1f6:	89 f2                	mov    %esi,%edx
 1f8:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1fb:	85 c0                	test   %eax,%eax
 1fd:	7e 0f                	jle    0x20e
 1ff:	0f b6 01             	movzbl (%ecx),%eax
 202:	88 02                	mov    %al,(%edx)
 204:	8d 49 01             	lea    0x1(%ecx),%ecx
 207:	8d 52 01             	lea    0x1(%edx),%edx
 20a:	89 d8                	mov    %ebx,%eax
 20c:	eb ea                	jmp    0x1f8
 20e:	89 f0                	mov    %esi,%eax
 210:	5b                   	pop    %ebx
 211:	5e                   	pop    %esi
 212:	5d                   	pop    %ebp
 213:	c3                   	ret    
 214:	b8 01 00 00 00       	mov    $0x1,%eax
 219:	cd 40                	int    $0x40
 21b:	c3                   	ret    
 21c:	b8 02 00 00 00       	mov    $0x2,%eax
 221:	cd 40                	int    $0x40
 223:	c3                   	ret    
 224:	b8 03 00 00 00       	mov    $0x3,%eax
 229:	cd 40                	int    $0x40
 22b:	c3                   	ret    
 22c:	b8 04 00 00 00       	mov    $0x4,%eax
 231:	cd 40                	int    $0x40
 233:	c3                   	ret    
 234:	b8 05 00 00 00       	mov    $0x5,%eax
 239:	cd 40                	int    $0x40
 23b:	c3                   	ret    
 23c:	b8 10 00 00 00       	mov    $0x10,%eax
 241:	cd 40                	int    $0x40
 243:	c3                   	ret    
 244:	b8 15 00 00 00       	mov    $0x15,%eax
 249:	cd 40                	int    $0x40
 24b:	c3                   	ret    
 24c:	b8 06 00 00 00       	mov    $0x6,%eax
 251:	cd 40                	int    $0x40
 253:	c3                   	ret    
 254:	b8 07 00 00 00       	mov    $0x7,%eax
 259:	cd 40                	int    $0x40
 25b:	c3                   	ret    
 25c:	b8 0f 00 00 00       	mov    $0xf,%eax
 261:	cd 40                	int    $0x40
 263:	c3                   	ret    
 264:	b8 11 00 00 00       	mov    $0x11,%eax
 269:	cd 40                	int    $0x40
 26b:	c3                   	ret    
 26c:	b8 12 00 00 00       	mov    $0x12,%eax
 271:	cd 40                	int    $0x40
 273:	c3                   	ret    
 274:	b8 08 00 00 00       	mov    $0x8,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 13 00 00 00       	mov    $0x13,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 14 00 00 00       	mov    $0x14,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 09 00 00 00       	mov    $0x9,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 0a 00 00 00       	mov    $0xa,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	b8 0b 00 00 00       	mov    $0xb,%eax
 2a1:	cd 40                	int    $0x40
 2a3:	c3                   	ret    
 2a4:	b8 0c 00 00 00       	mov    $0xc,%eax
 2a9:	cd 40                	int    $0x40
 2ab:	c3                   	ret    
 2ac:	b8 0d 00 00 00       	mov    $0xd,%eax
 2b1:	cd 40                	int    $0x40
 2b3:	c3                   	ret    
 2b4:	b8 0e 00 00 00       	mov    $0xe,%eax
 2b9:	cd 40                	int    $0x40
 2bb:	c3                   	ret    
 2bc:	b8 16 00 00 00       	mov    $0x16,%eax
 2c1:	cd 40                	int    $0x40
 2c3:	c3                   	ret    
 2c4:	b8 17 00 00 00       	mov    $0x17,%eax
 2c9:	cd 40                	int    $0x40
 2cb:	c3                   	ret    
 2cc:	55                   	push   %ebp
 2cd:	89 e5                	mov    %esp,%ebp
 2cf:	83 ec 1c             	sub    $0x1c,%esp
 2d2:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2d5:	6a 01                	push   $0x1
 2d7:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2da:	52                   	push   %edx
 2db:	50                   	push   %eax
 2dc:	e8 5b ff ff ff       	call   0x23c
 2e1:	83 c4 10             	add    $0x10,%esp
 2e4:	c9                   	leave  
 2e5:	c3                   	ret    
 2e6:	55                   	push   %ebp
 2e7:	89 e5                	mov    %esp,%ebp
 2e9:	57                   	push   %edi
 2ea:	56                   	push   %esi
 2eb:	53                   	push   %ebx
 2ec:	83 ec 2c             	sub    $0x2c,%esp
 2ef:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2f2:	89 d6                	mov    %edx,%esi
 2f4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2f8:	0f 95 c2             	setne  %dl
 2fb:	89 f0                	mov    %esi,%eax
 2fd:	c1 e8 1f             	shr    $0x1f,%eax
 300:	84 c2                	test   %al,%dl
 302:	74 42                	je     0x346
 304:	f7 de                	neg    %esi
 306:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 30d:	bb 00 00 00 00       	mov    $0x0,%ebx
 312:	89 f0                	mov    %esi,%eax
 314:	ba 00 00 00 00       	mov    $0x0,%edx
 319:	f7 f1                	div    %ecx
 31b:	89 df                	mov    %ebx,%edi
 31d:	83 c3 01             	add    $0x1,%ebx
 320:	0f b6 92 48 06 00 00 	movzbl 0x648(%edx),%edx
 327:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 32b:	89 f2                	mov    %esi,%edx
 32d:	89 c6                	mov    %eax,%esi
 32f:	39 d1                	cmp    %edx,%ecx
 331:	76 df                	jbe    0x312
 333:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 337:	74 2f                	je     0x368
 339:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 33e:	8d 5f 02             	lea    0x2(%edi),%ebx
 341:	8b 75 d0             	mov    -0x30(%ebp),%esi
 344:	eb 15                	jmp    0x35b
 346:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 34d:	eb be                	jmp    0x30d
 34f:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 354:	89 f0                	mov    %esi,%eax
 356:	e8 71 ff ff ff       	call   0x2cc
 35b:	83 eb 01             	sub    $0x1,%ebx
 35e:	79 ef                	jns    0x34f
 360:	83 c4 2c             	add    $0x2c,%esp
 363:	5b                   	pop    %ebx
 364:	5e                   	pop    %esi
 365:	5f                   	pop    %edi
 366:	5d                   	pop    %ebp
 367:	c3                   	ret    
 368:	8b 75 d0             	mov    -0x30(%ebp),%esi
 36b:	eb ee                	jmp    0x35b
 36d:	f3 0f 1e fb          	endbr32 
 371:	55                   	push   %ebp
 372:	89 e5                	mov    %esp,%ebp
 374:	57                   	push   %edi
 375:	56                   	push   %esi
 376:	53                   	push   %ebx
 377:	83 ec 1c             	sub    $0x1c,%esp
 37a:	8d 45 10             	lea    0x10(%ebp),%eax
 37d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 380:	be 00 00 00 00       	mov    $0x0,%esi
 385:	bb 00 00 00 00       	mov    $0x0,%ebx
 38a:	eb 14                	jmp    0x3a0
 38c:	89 fa                	mov    %edi,%edx
 38e:	8b 45 08             	mov    0x8(%ebp),%eax
 391:	e8 36 ff ff ff       	call   0x2cc
 396:	eb 05                	jmp    0x39d
 398:	83 fe 25             	cmp    $0x25,%esi
 39b:	74 25                	je     0x3c2
 39d:	83 c3 01             	add    $0x1,%ebx
 3a0:	8b 45 0c             	mov    0xc(%ebp),%eax
 3a3:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3a7:	84 c0                	test   %al,%al
 3a9:	0f 84 23 01 00 00    	je     0x4d2
 3af:	0f be f8             	movsbl %al,%edi
 3b2:	0f b6 c0             	movzbl %al,%eax
 3b5:	85 f6                	test   %esi,%esi
 3b7:	75 df                	jne    0x398
 3b9:	83 f8 25             	cmp    $0x25,%eax
 3bc:	75 ce                	jne    0x38c
 3be:	89 c6                	mov    %eax,%esi
 3c0:	eb db                	jmp    0x39d
 3c2:	83 f8 64             	cmp    $0x64,%eax
 3c5:	74 49                	je     0x410
 3c7:	83 f8 78             	cmp    $0x78,%eax
 3ca:	0f 94 c1             	sete   %cl
 3cd:	83 f8 70             	cmp    $0x70,%eax
 3d0:	0f 94 c2             	sete   %dl
 3d3:	08 d1                	or     %dl,%cl
 3d5:	75 63                	jne    0x43a
 3d7:	83 f8 73             	cmp    $0x73,%eax
 3da:	0f 84 84 00 00 00    	je     0x464
 3e0:	83 f8 63             	cmp    $0x63,%eax
 3e3:	0f 84 b7 00 00 00    	je     0x4a0
 3e9:	83 f8 25             	cmp    $0x25,%eax
 3ec:	0f 84 cc 00 00 00    	je     0x4be
 3f2:	ba 25 00 00 00       	mov    $0x25,%edx
 3f7:	8b 45 08             	mov    0x8(%ebp),%eax
 3fa:	e8 cd fe ff ff       	call   0x2cc
 3ff:	89 fa                	mov    %edi,%edx
 401:	8b 45 08             	mov    0x8(%ebp),%eax
 404:	e8 c3 fe ff ff       	call   0x2cc
 409:	be 00 00 00 00       	mov    $0x0,%esi
 40e:	eb 8d                	jmp    0x39d
 410:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 413:	8b 17                	mov    (%edi),%edx
 415:	83 ec 0c             	sub    $0xc,%esp
 418:	6a 01                	push   $0x1
 41a:	b9 0a 00 00 00       	mov    $0xa,%ecx
 41f:	8b 45 08             	mov    0x8(%ebp),%eax
 422:	e8 bf fe ff ff       	call   0x2e6
 427:	83 c7 04             	add    $0x4,%edi
 42a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 42d:	83 c4 10             	add    $0x10,%esp
 430:	be 00 00 00 00       	mov    $0x0,%esi
 435:	e9 63 ff ff ff       	jmp    0x39d
 43a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 43d:	8b 17                	mov    (%edi),%edx
 43f:	83 ec 0c             	sub    $0xc,%esp
 442:	6a 00                	push   $0x0
 444:	b9 10 00 00 00       	mov    $0x10,%ecx
 449:	8b 45 08             	mov    0x8(%ebp),%eax
 44c:	e8 95 fe ff ff       	call   0x2e6
 451:	83 c7 04             	add    $0x4,%edi
 454:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 457:	83 c4 10             	add    $0x10,%esp
 45a:	be 00 00 00 00       	mov    $0x0,%esi
 45f:	e9 39 ff ff ff       	jmp    0x39d
 464:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 467:	8b 30                	mov    (%eax),%esi
 469:	83 c0 04             	add    $0x4,%eax
 46c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 46f:	85 f6                	test   %esi,%esi
 471:	75 28                	jne    0x49b
 473:	be 40 06 00 00       	mov    $0x640,%esi
 478:	8b 7d 08             	mov    0x8(%ebp),%edi
 47b:	eb 0d                	jmp    0x48a
 47d:	0f be d2             	movsbl %dl,%edx
 480:	89 f8                	mov    %edi,%eax
 482:	e8 45 fe ff ff       	call   0x2cc
 487:	83 c6 01             	add    $0x1,%esi
 48a:	0f b6 16             	movzbl (%esi),%edx
 48d:	84 d2                	test   %dl,%dl
 48f:	75 ec                	jne    0x47d
 491:	be 00 00 00 00       	mov    $0x0,%esi
 496:	e9 02 ff ff ff       	jmp    0x39d
 49b:	8b 7d 08             	mov    0x8(%ebp),%edi
 49e:	eb ea                	jmp    0x48a
 4a0:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4a3:	0f be 17             	movsbl (%edi),%edx
 4a6:	8b 45 08             	mov    0x8(%ebp),%eax
 4a9:	e8 1e fe ff ff       	call   0x2cc
 4ae:	83 c7 04             	add    $0x4,%edi
 4b1:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4b4:	be 00 00 00 00       	mov    $0x0,%esi
 4b9:	e9 df fe ff ff       	jmp    0x39d
 4be:	89 fa                	mov    %edi,%edx
 4c0:	8b 45 08             	mov    0x8(%ebp),%eax
 4c3:	e8 04 fe ff ff       	call   0x2cc
 4c8:	be 00 00 00 00       	mov    $0x0,%esi
 4cd:	e9 cb fe ff ff       	jmp    0x39d
 4d2:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4d5:	5b                   	pop    %ebx
 4d6:	5e                   	pop    %esi
 4d7:	5f                   	pop    %edi
 4d8:	5d                   	pop    %ebp
 4d9:	c3                   	ret    
 4da:	f3 0f 1e fb          	endbr32 
 4de:	55                   	push   %ebp
 4df:	89 e5                	mov    %esp,%ebp
 4e1:	57                   	push   %edi
 4e2:	56                   	push   %esi
 4e3:	53                   	push   %ebx
 4e4:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4e7:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4ea:	a1 f4 08 00 00       	mov    0x8f4,%eax
 4ef:	eb 02                	jmp    0x4f3
 4f1:	89 d0                	mov    %edx,%eax
 4f3:	39 c8                	cmp    %ecx,%eax
 4f5:	73 04                	jae    0x4fb
 4f7:	39 08                	cmp    %ecx,(%eax)
 4f9:	77 12                	ja     0x50d
 4fb:	8b 10                	mov    (%eax),%edx
 4fd:	39 c2                	cmp    %eax,%edx
 4ff:	77 f0                	ja     0x4f1
 501:	39 c8                	cmp    %ecx,%eax
 503:	72 08                	jb     0x50d
 505:	39 ca                	cmp    %ecx,%edx
 507:	77 04                	ja     0x50d
 509:	89 d0                	mov    %edx,%eax
 50b:	eb e6                	jmp    0x4f3
 50d:	8b 73 fc             	mov    -0x4(%ebx),%esi
 510:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 513:	8b 10                	mov    (%eax),%edx
 515:	39 d7                	cmp    %edx,%edi
 517:	74 19                	je     0x532
 519:	89 53 f8             	mov    %edx,-0x8(%ebx)
 51c:	8b 50 04             	mov    0x4(%eax),%edx
 51f:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 522:	39 ce                	cmp    %ecx,%esi
 524:	74 1b                	je     0x541
 526:	89 08                	mov    %ecx,(%eax)
 528:	a3 f4 08 00 00       	mov    %eax,0x8f4
 52d:	5b                   	pop    %ebx
 52e:	5e                   	pop    %esi
 52f:	5f                   	pop    %edi
 530:	5d                   	pop    %ebp
 531:	c3                   	ret    
 532:	03 72 04             	add    0x4(%edx),%esi
 535:	89 73 fc             	mov    %esi,-0x4(%ebx)
 538:	8b 10                	mov    (%eax),%edx
 53a:	8b 12                	mov    (%edx),%edx
 53c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 53f:	eb db                	jmp    0x51c
 541:	03 53 fc             	add    -0x4(%ebx),%edx
 544:	89 50 04             	mov    %edx,0x4(%eax)
 547:	8b 53 f8             	mov    -0x8(%ebx),%edx
 54a:	89 10                	mov    %edx,(%eax)
 54c:	eb da                	jmp    0x528
 54e:	55                   	push   %ebp
 54f:	89 e5                	mov    %esp,%ebp
 551:	53                   	push   %ebx
 552:	83 ec 04             	sub    $0x4,%esp
 555:	89 c3                	mov    %eax,%ebx
 557:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 55c:	77 05                	ja     0x563
 55e:	bb 00 10 00 00       	mov    $0x1000,%ebx
 563:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 56a:	83 ec 0c             	sub    $0xc,%esp
 56d:	50                   	push   %eax
 56e:	e8 31 fd ff ff       	call   0x2a4
 573:	83 c4 10             	add    $0x10,%esp
 576:	83 f8 ff             	cmp    $0xffffffff,%eax
 579:	74 1c                	je     0x597
 57b:	89 58 04             	mov    %ebx,0x4(%eax)
 57e:	83 c0 08             	add    $0x8,%eax
 581:	83 ec 0c             	sub    $0xc,%esp
 584:	50                   	push   %eax
 585:	e8 50 ff ff ff       	call   0x4da
 58a:	a1 f4 08 00 00       	mov    0x8f4,%eax
 58f:	83 c4 10             	add    $0x10,%esp
 592:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 595:	c9                   	leave  
 596:	c3                   	ret    
 597:	b8 00 00 00 00       	mov    $0x0,%eax
 59c:	eb f4                	jmp    0x592
 59e:	f3 0f 1e fb          	endbr32 
 5a2:	55                   	push   %ebp
 5a3:	89 e5                	mov    %esp,%ebp
 5a5:	53                   	push   %ebx
 5a6:	83 ec 04             	sub    $0x4,%esp
 5a9:	8b 45 08             	mov    0x8(%ebp),%eax
 5ac:	8d 58 07             	lea    0x7(%eax),%ebx
 5af:	c1 eb 03             	shr    $0x3,%ebx
 5b2:	83 c3 01             	add    $0x1,%ebx
 5b5:	8b 0d f4 08 00 00    	mov    0x8f4,%ecx
 5bb:	85 c9                	test   %ecx,%ecx
 5bd:	74 04                	je     0x5c3
 5bf:	8b 01                	mov    (%ecx),%eax
 5c1:	eb 4b                	jmp    0x60e
 5c3:	c7 05 f4 08 00 00 f8 	movl   $0x8f8,0x8f4
 5ca:	08 00 00 
 5cd:	c7 05 f8 08 00 00 f8 	movl   $0x8f8,0x8f8
 5d4:	08 00 00 
 5d7:	c7 05 fc 08 00 00 00 	movl   $0x0,0x8fc
 5de:	00 00 00 
 5e1:	b9 f8 08 00 00       	mov    $0x8f8,%ecx
 5e6:	eb d7                	jmp    0x5bf
 5e8:	74 1a                	je     0x604
 5ea:	29 da                	sub    %ebx,%edx
 5ec:	89 50 04             	mov    %edx,0x4(%eax)
 5ef:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5f2:	89 58 04             	mov    %ebx,0x4(%eax)
 5f5:	89 0d f4 08 00 00    	mov    %ecx,0x8f4
 5fb:	83 c0 08             	add    $0x8,%eax
 5fe:	83 c4 04             	add    $0x4,%esp
 601:	5b                   	pop    %ebx
 602:	5d                   	pop    %ebp
 603:	c3                   	ret    
 604:	8b 10                	mov    (%eax),%edx
 606:	89 11                	mov    %edx,(%ecx)
 608:	eb eb                	jmp    0x5f5
 60a:	89 c1                	mov    %eax,%ecx
 60c:	8b 00                	mov    (%eax),%eax
 60e:	8b 50 04             	mov    0x4(%eax),%edx
 611:	39 da                	cmp    %ebx,%edx
 613:	73 d3                	jae    0x5e8
 615:	39 05 f4 08 00 00    	cmp    %eax,0x8f4
 61b:	75 ed                	jne    0x60a
 61d:	89 d8                	mov    %ebx,%eax
 61f:	e8 2a ff ff ff       	call   0x54e
 624:	85 c0                	test   %eax,%eax
 626:	75 e2                	jne    0x60a
 628:	eb d4                	jmp    0x5fe
