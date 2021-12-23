
_echo:     formato del fichero elf32-i386


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
  1d:	b8 01 00 00 00       	mov    $0x1,%eax
  22:	eb 1a                	jmp    0x3e
  24:	ba 28 06 00 00       	mov    $0x628,%edx
  29:	52                   	push   %edx
  2a:	ff 34 87             	pushl  (%edi,%eax,4)
  2d:	68 2c 06 00 00       	push   $0x62c
  32:	6a 01                	push   $0x1
  34:	e8 2f 03 00 00       	call   0x368
  39:	83 c4 10             	add    $0x10,%esp
  3c:	89 d8                	mov    %ebx,%eax
  3e:	39 f0                	cmp    %esi,%eax
  40:	7d 0e                	jge    0x50
  42:	8d 58 01             	lea    0x1(%eax),%ebx
  45:	39 f3                	cmp    %esi,%ebx
  47:	7d db                	jge    0x24
  49:	ba 2a 06 00 00       	mov    $0x62a,%edx
  4e:	eb d9                	jmp    0x29
  50:	83 ec 0c             	sub    $0xc,%esp
  53:	6a 00                	push   $0x0
  55:	e8 bd 01 00 00       	call   0x217
  5a:	f3 0f 1e fb          	endbr32 
  5e:	55                   	push   %ebp
  5f:	89 e5                	mov    %esp,%ebp
  61:	56                   	push   %esi
  62:	53                   	push   %ebx
  63:	8b 75 08             	mov    0x8(%ebp),%esi
  66:	8b 55 0c             	mov    0xc(%ebp),%edx
  69:	89 f0                	mov    %esi,%eax
  6b:	89 d1                	mov    %edx,%ecx
  6d:	83 c2 01             	add    $0x1,%edx
  70:	89 c3                	mov    %eax,%ebx
  72:	83 c0 01             	add    $0x1,%eax
  75:	0f b6 09             	movzbl (%ecx),%ecx
  78:	88 0b                	mov    %cl,(%ebx)
  7a:	84 c9                	test   %cl,%cl
  7c:	75 ed                	jne    0x6b
  7e:	89 f0                	mov    %esi,%eax
  80:	5b                   	pop    %ebx
  81:	5e                   	pop    %esi
  82:	5d                   	pop    %ebp
  83:	c3                   	ret    
  84:	f3 0f 1e fb          	endbr32 
  88:	55                   	push   %ebp
  89:	89 e5                	mov    %esp,%ebp
  8b:	8b 4d 08             	mov    0x8(%ebp),%ecx
  8e:	8b 55 0c             	mov    0xc(%ebp),%edx
  91:	0f b6 01             	movzbl (%ecx),%eax
  94:	84 c0                	test   %al,%al
  96:	74 0c                	je     0xa4
  98:	3a 02                	cmp    (%edx),%al
  9a:	75 08                	jne    0xa4
  9c:	83 c1 01             	add    $0x1,%ecx
  9f:	83 c2 01             	add    $0x1,%edx
  a2:	eb ed                	jmp    0x91
  a4:	0f b6 c0             	movzbl %al,%eax
  a7:	0f b6 12             	movzbl (%edx),%edx
  aa:	29 d0                	sub    %edx,%eax
  ac:	5d                   	pop    %ebp
  ad:	c3                   	ret    
  ae:	f3 0f 1e fb          	endbr32 
  b2:	55                   	push   %ebp
  b3:	89 e5                	mov    %esp,%ebp
  b5:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b8:	b8 00 00 00 00       	mov    $0x0,%eax
  bd:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  c1:	74 05                	je     0xc8
  c3:	83 c0 01             	add    $0x1,%eax
  c6:	eb f5                	jmp    0xbd
  c8:	5d                   	pop    %ebp
  c9:	c3                   	ret    
  ca:	f3 0f 1e fb          	endbr32 
  ce:	55                   	push   %ebp
  cf:	89 e5                	mov    %esp,%ebp
  d1:	57                   	push   %edi
  d2:	8b 55 08             	mov    0x8(%ebp),%edx
  d5:	89 d7                	mov    %edx,%edi
  d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  da:	8b 45 0c             	mov    0xc(%ebp),%eax
  dd:	fc                   	cld    
  de:	f3 aa                	rep stos %al,%es:(%edi)
  e0:	89 d0                	mov    %edx,%eax
  e2:	5f                   	pop    %edi
  e3:	5d                   	pop    %ebp
  e4:	c3                   	ret    
  e5:	f3 0f 1e fb          	endbr32 
  e9:	55                   	push   %ebp
  ea:	89 e5                	mov    %esp,%ebp
  ec:	8b 45 08             	mov    0x8(%ebp),%eax
  ef:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  f3:	0f b6 10             	movzbl (%eax),%edx
  f6:	84 d2                	test   %dl,%dl
  f8:	74 09                	je     0x103
  fa:	38 ca                	cmp    %cl,%dl
  fc:	74 0a                	je     0x108
  fe:	83 c0 01             	add    $0x1,%eax
 101:	eb f0                	jmp    0xf3
 103:	b8 00 00 00 00       	mov    $0x0,%eax
 108:	5d                   	pop    %ebp
 109:	c3                   	ret    
 10a:	f3 0f 1e fb          	endbr32 
 10e:	55                   	push   %ebp
 10f:	89 e5                	mov    %esp,%ebp
 111:	57                   	push   %edi
 112:	56                   	push   %esi
 113:	53                   	push   %ebx
 114:	83 ec 1c             	sub    $0x1c,%esp
 117:	8b 7d 08             	mov    0x8(%ebp),%edi
 11a:	bb 00 00 00 00       	mov    $0x0,%ebx
 11f:	89 de                	mov    %ebx,%esi
 121:	83 c3 01             	add    $0x1,%ebx
 124:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 127:	7d 2e                	jge    0x157
 129:	83 ec 04             	sub    $0x4,%esp
 12c:	6a 01                	push   $0x1
 12e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 131:	50                   	push   %eax
 132:	6a 00                	push   $0x0
 134:	e8 f6 00 00 00       	call   0x22f
 139:	83 c4 10             	add    $0x10,%esp
 13c:	85 c0                	test   %eax,%eax
 13e:	7e 17                	jle    0x157
 140:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 144:	88 04 37             	mov    %al,(%edi,%esi,1)
 147:	3c 0a                	cmp    $0xa,%al
 149:	0f 94 c2             	sete   %dl
 14c:	3c 0d                	cmp    $0xd,%al
 14e:	0f 94 c0             	sete   %al
 151:	08 c2                	or     %al,%dl
 153:	74 ca                	je     0x11f
 155:	89 de                	mov    %ebx,%esi
 157:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 15b:	89 f8                	mov    %edi,%eax
 15d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 160:	5b                   	pop    %ebx
 161:	5e                   	pop    %esi
 162:	5f                   	pop    %edi
 163:	5d                   	pop    %ebp
 164:	c3                   	ret    
 165:	f3 0f 1e fb          	endbr32 
 169:	55                   	push   %ebp
 16a:	89 e5                	mov    %esp,%ebp
 16c:	56                   	push   %esi
 16d:	53                   	push   %ebx
 16e:	83 ec 08             	sub    $0x8,%esp
 171:	6a 00                	push   $0x0
 173:	ff 75 08             	pushl  0x8(%ebp)
 176:	e8 dc 00 00 00       	call   0x257
 17b:	83 c4 10             	add    $0x10,%esp
 17e:	85 c0                	test   %eax,%eax
 180:	78 24                	js     0x1a6
 182:	89 c3                	mov    %eax,%ebx
 184:	83 ec 08             	sub    $0x8,%esp
 187:	ff 75 0c             	pushl  0xc(%ebp)
 18a:	50                   	push   %eax
 18b:	e8 df 00 00 00       	call   0x26f
 190:	89 c6                	mov    %eax,%esi
 192:	89 1c 24             	mov    %ebx,(%esp)
 195:	e8 a5 00 00 00       	call   0x23f
 19a:	83 c4 10             	add    $0x10,%esp
 19d:	89 f0                	mov    %esi,%eax
 19f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1a2:	5b                   	pop    %ebx
 1a3:	5e                   	pop    %esi
 1a4:	5d                   	pop    %ebp
 1a5:	c3                   	ret    
 1a6:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1ab:	eb f0                	jmp    0x19d
 1ad:	f3 0f 1e fb          	endbr32 
 1b1:	55                   	push   %ebp
 1b2:	89 e5                	mov    %esp,%ebp
 1b4:	53                   	push   %ebx
 1b5:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b8:	ba 00 00 00 00       	mov    $0x0,%edx
 1bd:	0f b6 01             	movzbl (%ecx),%eax
 1c0:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1c3:	80 fb 09             	cmp    $0x9,%bl
 1c6:	77 12                	ja     0x1da
 1c8:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1cb:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1ce:	83 c1 01             	add    $0x1,%ecx
 1d1:	0f be c0             	movsbl %al,%eax
 1d4:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1d8:	eb e3                	jmp    0x1bd
 1da:	89 d0                	mov    %edx,%eax
 1dc:	5b                   	pop    %ebx
 1dd:	5d                   	pop    %ebp
 1de:	c3                   	ret    
 1df:	f3 0f 1e fb          	endbr32 
 1e3:	55                   	push   %ebp
 1e4:	89 e5                	mov    %esp,%ebp
 1e6:	56                   	push   %esi
 1e7:	53                   	push   %ebx
 1e8:	8b 75 08             	mov    0x8(%ebp),%esi
 1eb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1ee:	8b 45 10             	mov    0x10(%ebp),%eax
 1f1:	89 f2                	mov    %esi,%edx
 1f3:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1f6:	85 c0                	test   %eax,%eax
 1f8:	7e 0f                	jle    0x209
 1fa:	0f b6 01             	movzbl (%ecx),%eax
 1fd:	88 02                	mov    %al,(%edx)
 1ff:	8d 49 01             	lea    0x1(%ecx),%ecx
 202:	8d 52 01             	lea    0x1(%edx),%edx
 205:	89 d8                	mov    %ebx,%eax
 207:	eb ea                	jmp    0x1f3
 209:	89 f0                	mov    %esi,%eax
 20b:	5b                   	pop    %ebx
 20c:	5e                   	pop    %esi
 20d:	5d                   	pop    %ebp
 20e:	c3                   	ret    
 20f:	b8 01 00 00 00       	mov    $0x1,%eax
 214:	cd 40                	int    $0x40
 216:	c3                   	ret    
 217:	b8 02 00 00 00       	mov    $0x2,%eax
 21c:	cd 40                	int    $0x40
 21e:	c3                   	ret    
 21f:	b8 03 00 00 00       	mov    $0x3,%eax
 224:	cd 40                	int    $0x40
 226:	c3                   	ret    
 227:	b8 04 00 00 00       	mov    $0x4,%eax
 22c:	cd 40                	int    $0x40
 22e:	c3                   	ret    
 22f:	b8 05 00 00 00       	mov    $0x5,%eax
 234:	cd 40                	int    $0x40
 236:	c3                   	ret    
 237:	b8 10 00 00 00       	mov    $0x10,%eax
 23c:	cd 40                	int    $0x40
 23e:	c3                   	ret    
 23f:	b8 15 00 00 00       	mov    $0x15,%eax
 244:	cd 40                	int    $0x40
 246:	c3                   	ret    
 247:	b8 06 00 00 00       	mov    $0x6,%eax
 24c:	cd 40                	int    $0x40
 24e:	c3                   	ret    
 24f:	b8 07 00 00 00       	mov    $0x7,%eax
 254:	cd 40                	int    $0x40
 256:	c3                   	ret    
 257:	b8 0f 00 00 00       	mov    $0xf,%eax
 25c:	cd 40                	int    $0x40
 25e:	c3                   	ret    
 25f:	b8 11 00 00 00       	mov    $0x11,%eax
 264:	cd 40                	int    $0x40
 266:	c3                   	ret    
 267:	b8 12 00 00 00       	mov    $0x12,%eax
 26c:	cd 40                	int    $0x40
 26e:	c3                   	ret    
 26f:	b8 08 00 00 00       	mov    $0x8,%eax
 274:	cd 40                	int    $0x40
 276:	c3                   	ret    
 277:	b8 13 00 00 00       	mov    $0x13,%eax
 27c:	cd 40                	int    $0x40
 27e:	c3                   	ret    
 27f:	b8 14 00 00 00       	mov    $0x14,%eax
 284:	cd 40                	int    $0x40
 286:	c3                   	ret    
 287:	b8 09 00 00 00       	mov    $0x9,%eax
 28c:	cd 40                	int    $0x40
 28e:	c3                   	ret    
 28f:	b8 0a 00 00 00       	mov    $0xa,%eax
 294:	cd 40                	int    $0x40
 296:	c3                   	ret    
 297:	b8 0b 00 00 00       	mov    $0xb,%eax
 29c:	cd 40                	int    $0x40
 29e:	c3                   	ret    
 29f:	b8 0c 00 00 00       	mov    $0xc,%eax
 2a4:	cd 40                	int    $0x40
 2a6:	c3                   	ret    
 2a7:	b8 0d 00 00 00       	mov    $0xd,%eax
 2ac:	cd 40                	int    $0x40
 2ae:	c3                   	ret    
 2af:	b8 0e 00 00 00       	mov    $0xe,%eax
 2b4:	cd 40                	int    $0x40
 2b6:	c3                   	ret    
 2b7:	b8 16 00 00 00       	mov    $0x16,%eax
 2bc:	cd 40                	int    $0x40
 2be:	c3                   	ret    
 2bf:	b8 17 00 00 00       	mov    $0x17,%eax
 2c4:	cd 40                	int    $0x40
 2c6:	c3                   	ret    
 2c7:	55                   	push   %ebp
 2c8:	89 e5                	mov    %esp,%ebp
 2ca:	83 ec 1c             	sub    $0x1c,%esp
 2cd:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2d0:	6a 01                	push   $0x1
 2d2:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2d5:	52                   	push   %edx
 2d6:	50                   	push   %eax
 2d7:	e8 5b ff ff ff       	call   0x237
 2dc:	83 c4 10             	add    $0x10,%esp
 2df:	c9                   	leave  
 2e0:	c3                   	ret    
 2e1:	55                   	push   %ebp
 2e2:	89 e5                	mov    %esp,%ebp
 2e4:	57                   	push   %edi
 2e5:	56                   	push   %esi
 2e6:	53                   	push   %ebx
 2e7:	83 ec 2c             	sub    $0x2c,%esp
 2ea:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2ed:	89 d6                	mov    %edx,%esi
 2ef:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2f3:	0f 95 c2             	setne  %dl
 2f6:	89 f0                	mov    %esi,%eax
 2f8:	c1 e8 1f             	shr    $0x1f,%eax
 2fb:	84 c2                	test   %al,%dl
 2fd:	74 42                	je     0x341
 2ff:	f7 de                	neg    %esi
 301:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 308:	bb 00 00 00 00       	mov    $0x0,%ebx
 30d:	89 f0                	mov    %esi,%eax
 30f:	ba 00 00 00 00       	mov    $0x0,%edx
 314:	f7 f1                	div    %ecx
 316:	89 df                	mov    %ebx,%edi
 318:	83 c3 01             	add    $0x1,%ebx
 31b:	0f b6 92 38 06 00 00 	movzbl 0x638(%edx),%edx
 322:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 326:	89 f2                	mov    %esi,%edx
 328:	89 c6                	mov    %eax,%esi
 32a:	39 d1                	cmp    %edx,%ecx
 32c:	76 df                	jbe    0x30d
 32e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 332:	74 2f                	je     0x363
 334:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 339:	8d 5f 02             	lea    0x2(%edi),%ebx
 33c:	8b 75 d0             	mov    -0x30(%ebp),%esi
 33f:	eb 15                	jmp    0x356
 341:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 348:	eb be                	jmp    0x308
 34a:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 34f:	89 f0                	mov    %esi,%eax
 351:	e8 71 ff ff ff       	call   0x2c7
 356:	83 eb 01             	sub    $0x1,%ebx
 359:	79 ef                	jns    0x34a
 35b:	83 c4 2c             	add    $0x2c,%esp
 35e:	5b                   	pop    %ebx
 35f:	5e                   	pop    %esi
 360:	5f                   	pop    %edi
 361:	5d                   	pop    %ebp
 362:	c3                   	ret    
 363:	8b 75 d0             	mov    -0x30(%ebp),%esi
 366:	eb ee                	jmp    0x356
 368:	f3 0f 1e fb          	endbr32 
 36c:	55                   	push   %ebp
 36d:	89 e5                	mov    %esp,%ebp
 36f:	57                   	push   %edi
 370:	56                   	push   %esi
 371:	53                   	push   %ebx
 372:	83 ec 1c             	sub    $0x1c,%esp
 375:	8d 45 10             	lea    0x10(%ebp),%eax
 378:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 37b:	be 00 00 00 00       	mov    $0x0,%esi
 380:	bb 00 00 00 00       	mov    $0x0,%ebx
 385:	eb 14                	jmp    0x39b
 387:	89 fa                	mov    %edi,%edx
 389:	8b 45 08             	mov    0x8(%ebp),%eax
 38c:	e8 36 ff ff ff       	call   0x2c7
 391:	eb 05                	jmp    0x398
 393:	83 fe 25             	cmp    $0x25,%esi
 396:	74 25                	je     0x3bd
 398:	83 c3 01             	add    $0x1,%ebx
 39b:	8b 45 0c             	mov    0xc(%ebp),%eax
 39e:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3a2:	84 c0                	test   %al,%al
 3a4:	0f 84 23 01 00 00    	je     0x4cd
 3aa:	0f be f8             	movsbl %al,%edi
 3ad:	0f b6 c0             	movzbl %al,%eax
 3b0:	85 f6                	test   %esi,%esi
 3b2:	75 df                	jne    0x393
 3b4:	83 f8 25             	cmp    $0x25,%eax
 3b7:	75 ce                	jne    0x387
 3b9:	89 c6                	mov    %eax,%esi
 3bb:	eb db                	jmp    0x398
 3bd:	83 f8 64             	cmp    $0x64,%eax
 3c0:	74 49                	je     0x40b
 3c2:	83 f8 78             	cmp    $0x78,%eax
 3c5:	0f 94 c1             	sete   %cl
 3c8:	83 f8 70             	cmp    $0x70,%eax
 3cb:	0f 94 c2             	sete   %dl
 3ce:	08 d1                	or     %dl,%cl
 3d0:	75 63                	jne    0x435
 3d2:	83 f8 73             	cmp    $0x73,%eax
 3d5:	0f 84 84 00 00 00    	je     0x45f
 3db:	83 f8 63             	cmp    $0x63,%eax
 3de:	0f 84 b7 00 00 00    	je     0x49b
 3e4:	83 f8 25             	cmp    $0x25,%eax
 3e7:	0f 84 cc 00 00 00    	je     0x4b9
 3ed:	ba 25 00 00 00       	mov    $0x25,%edx
 3f2:	8b 45 08             	mov    0x8(%ebp),%eax
 3f5:	e8 cd fe ff ff       	call   0x2c7
 3fa:	89 fa                	mov    %edi,%edx
 3fc:	8b 45 08             	mov    0x8(%ebp),%eax
 3ff:	e8 c3 fe ff ff       	call   0x2c7
 404:	be 00 00 00 00       	mov    $0x0,%esi
 409:	eb 8d                	jmp    0x398
 40b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 40e:	8b 17                	mov    (%edi),%edx
 410:	83 ec 0c             	sub    $0xc,%esp
 413:	6a 01                	push   $0x1
 415:	b9 0a 00 00 00       	mov    $0xa,%ecx
 41a:	8b 45 08             	mov    0x8(%ebp),%eax
 41d:	e8 bf fe ff ff       	call   0x2e1
 422:	83 c7 04             	add    $0x4,%edi
 425:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 428:	83 c4 10             	add    $0x10,%esp
 42b:	be 00 00 00 00       	mov    $0x0,%esi
 430:	e9 63 ff ff ff       	jmp    0x398
 435:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 438:	8b 17                	mov    (%edi),%edx
 43a:	83 ec 0c             	sub    $0xc,%esp
 43d:	6a 00                	push   $0x0
 43f:	b9 10 00 00 00       	mov    $0x10,%ecx
 444:	8b 45 08             	mov    0x8(%ebp),%eax
 447:	e8 95 fe ff ff       	call   0x2e1
 44c:	83 c7 04             	add    $0x4,%edi
 44f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 452:	83 c4 10             	add    $0x10,%esp
 455:	be 00 00 00 00       	mov    $0x0,%esi
 45a:	e9 39 ff ff ff       	jmp    0x398
 45f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 462:	8b 30                	mov    (%eax),%esi
 464:	83 c0 04             	add    $0x4,%eax
 467:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 46a:	85 f6                	test   %esi,%esi
 46c:	75 28                	jne    0x496
 46e:	be 31 06 00 00       	mov    $0x631,%esi
 473:	8b 7d 08             	mov    0x8(%ebp),%edi
 476:	eb 0d                	jmp    0x485
 478:	0f be d2             	movsbl %dl,%edx
 47b:	89 f8                	mov    %edi,%eax
 47d:	e8 45 fe ff ff       	call   0x2c7
 482:	83 c6 01             	add    $0x1,%esi
 485:	0f b6 16             	movzbl (%esi),%edx
 488:	84 d2                	test   %dl,%dl
 48a:	75 ec                	jne    0x478
 48c:	be 00 00 00 00       	mov    $0x0,%esi
 491:	e9 02 ff ff ff       	jmp    0x398
 496:	8b 7d 08             	mov    0x8(%ebp),%edi
 499:	eb ea                	jmp    0x485
 49b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 49e:	0f be 17             	movsbl (%edi),%edx
 4a1:	8b 45 08             	mov    0x8(%ebp),%eax
 4a4:	e8 1e fe ff ff       	call   0x2c7
 4a9:	83 c7 04             	add    $0x4,%edi
 4ac:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4af:	be 00 00 00 00       	mov    $0x0,%esi
 4b4:	e9 df fe ff ff       	jmp    0x398
 4b9:	89 fa                	mov    %edi,%edx
 4bb:	8b 45 08             	mov    0x8(%ebp),%eax
 4be:	e8 04 fe ff ff       	call   0x2c7
 4c3:	be 00 00 00 00       	mov    $0x0,%esi
 4c8:	e9 cb fe ff ff       	jmp    0x398
 4cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4d0:	5b                   	pop    %ebx
 4d1:	5e                   	pop    %esi
 4d2:	5f                   	pop    %edi
 4d3:	5d                   	pop    %ebp
 4d4:	c3                   	ret    
 4d5:	f3 0f 1e fb          	endbr32 
 4d9:	55                   	push   %ebp
 4da:	89 e5                	mov    %esp,%ebp
 4dc:	57                   	push   %edi
 4dd:	56                   	push   %esi
 4de:	53                   	push   %ebx
 4df:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4e2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4e5:	a1 e4 08 00 00       	mov    0x8e4,%eax
 4ea:	eb 02                	jmp    0x4ee
 4ec:	89 d0                	mov    %edx,%eax
 4ee:	39 c8                	cmp    %ecx,%eax
 4f0:	73 04                	jae    0x4f6
 4f2:	39 08                	cmp    %ecx,(%eax)
 4f4:	77 12                	ja     0x508
 4f6:	8b 10                	mov    (%eax),%edx
 4f8:	39 c2                	cmp    %eax,%edx
 4fa:	77 f0                	ja     0x4ec
 4fc:	39 c8                	cmp    %ecx,%eax
 4fe:	72 08                	jb     0x508
 500:	39 ca                	cmp    %ecx,%edx
 502:	77 04                	ja     0x508
 504:	89 d0                	mov    %edx,%eax
 506:	eb e6                	jmp    0x4ee
 508:	8b 73 fc             	mov    -0x4(%ebx),%esi
 50b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 50e:	8b 10                	mov    (%eax),%edx
 510:	39 d7                	cmp    %edx,%edi
 512:	74 19                	je     0x52d
 514:	89 53 f8             	mov    %edx,-0x8(%ebx)
 517:	8b 50 04             	mov    0x4(%eax),%edx
 51a:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 51d:	39 ce                	cmp    %ecx,%esi
 51f:	74 1b                	je     0x53c
 521:	89 08                	mov    %ecx,(%eax)
 523:	a3 e4 08 00 00       	mov    %eax,0x8e4
 528:	5b                   	pop    %ebx
 529:	5e                   	pop    %esi
 52a:	5f                   	pop    %edi
 52b:	5d                   	pop    %ebp
 52c:	c3                   	ret    
 52d:	03 72 04             	add    0x4(%edx),%esi
 530:	89 73 fc             	mov    %esi,-0x4(%ebx)
 533:	8b 10                	mov    (%eax),%edx
 535:	8b 12                	mov    (%edx),%edx
 537:	89 53 f8             	mov    %edx,-0x8(%ebx)
 53a:	eb db                	jmp    0x517
 53c:	03 53 fc             	add    -0x4(%ebx),%edx
 53f:	89 50 04             	mov    %edx,0x4(%eax)
 542:	8b 53 f8             	mov    -0x8(%ebx),%edx
 545:	89 10                	mov    %edx,(%eax)
 547:	eb da                	jmp    0x523
 549:	55                   	push   %ebp
 54a:	89 e5                	mov    %esp,%ebp
 54c:	53                   	push   %ebx
 54d:	83 ec 04             	sub    $0x4,%esp
 550:	89 c3                	mov    %eax,%ebx
 552:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 557:	77 05                	ja     0x55e
 559:	bb 00 10 00 00       	mov    $0x1000,%ebx
 55e:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 565:	83 ec 0c             	sub    $0xc,%esp
 568:	50                   	push   %eax
 569:	e8 31 fd ff ff       	call   0x29f
 56e:	83 c4 10             	add    $0x10,%esp
 571:	83 f8 ff             	cmp    $0xffffffff,%eax
 574:	74 1c                	je     0x592
 576:	89 58 04             	mov    %ebx,0x4(%eax)
 579:	83 c0 08             	add    $0x8,%eax
 57c:	83 ec 0c             	sub    $0xc,%esp
 57f:	50                   	push   %eax
 580:	e8 50 ff ff ff       	call   0x4d5
 585:	a1 e4 08 00 00       	mov    0x8e4,%eax
 58a:	83 c4 10             	add    $0x10,%esp
 58d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 590:	c9                   	leave  
 591:	c3                   	ret    
 592:	b8 00 00 00 00       	mov    $0x0,%eax
 597:	eb f4                	jmp    0x58d
 599:	f3 0f 1e fb          	endbr32 
 59d:	55                   	push   %ebp
 59e:	89 e5                	mov    %esp,%ebp
 5a0:	53                   	push   %ebx
 5a1:	83 ec 04             	sub    $0x4,%esp
 5a4:	8b 45 08             	mov    0x8(%ebp),%eax
 5a7:	8d 58 07             	lea    0x7(%eax),%ebx
 5aa:	c1 eb 03             	shr    $0x3,%ebx
 5ad:	83 c3 01             	add    $0x1,%ebx
 5b0:	8b 0d e4 08 00 00    	mov    0x8e4,%ecx
 5b6:	85 c9                	test   %ecx,%ecx
 5b8:	74 04                	je     0x5be
 5ba:	8b 01                	mov    (%ecx),%eax
 5bc:	eb 4b                	jmp    0x609
 5be:	c7 05 e4 08 00 00 e8 	movl   $0x8e8,0x8e4
 5c5:	08 00 00 
 5c8:	c7 05 e8 08 00 00 e8 	movl   $0x8e8,0x8e8
 5cf:	08 00 00 
 5d2:	c7 05 ec 08 00 00 00 	movl   $0x0,0x8ec
 5d9:	00 00 00 
 5dc:	b9 e8 08 00 00       	mov    $0x8e8,%ecx
 5e1:	eb d7                	jmp    0x5ba
 5e3:	74 1a                	je     0x5ff
 5e5:	29 da                	sub    %ebx,%edx
 5e7:	89 50 04             	mov    %edx,0x4(%eax)
 5ea:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5ed:	89 58 04             	mov    %ebx,0x4(%eax)
 5f0:	89 0d e4 08 00 00    	mov    %ecx,0x8e4
 5f6:	83 c0 08             	add    $0x8,%eax
 5f9:	83 c4 04             	add    $0x4,%esp
 5fc:	5b                   	pop    %ebx
 5fd:	5d                   	pop    %ebp
 5fe:	c3                   	ret    
 5ff:	8b 10                	mov    (%eax),%edx
 601:	89 11                	mov    %edx,(%ecx)
 603:	eb eb                	jmp    0x5f0
 605:	89 c1                	mov    %eax,%ecx
 607:	8b 00                	mov    (%eax),%eax
 609:	8b 50 04             	mov    0x4(%eax),%edx
 60c:	39 da                	cmp    %ebx,%edx
 60e:	73 d3                	jae    0x5e3
 610:	39 05 e4 08 00 00    	cmp    %eax,0x8e4
 616:	75 ed                	jne    0x605
 618:	89 d8                	mov    %ebx,%eax
 61a:	e8 2a ff ff ff       	call   0x549
 61f:	85 c0                	test   %eax,%eax
 621:	75 e2                	jne    0x605
 623:	eb d4                	jmp    0x5f9
