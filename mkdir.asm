
_mkdir:     formato del fichero elf32-i386


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
  15:	83 ec 18             	sub    $0x18,%esp
  18:	8b 39                	mov    (%ecx),%edi
  1a:	8b 41 04             	mov    0x4(%ecx),%eax
  1d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  20:	83 ff 01             	cmp    $0x1,%edi
  23:	7e 25                	jle    0x4a
  25:	bb 01 00 00 00       	mov    $0x1,%ebx
  2a:	39 fb                	cmp    %edi,%ebx
  2c:	7d 4b                	jge    0x79
  2e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  31:	8d 34 98             	lea    (%eax,%ebx,4),%esi
  34:	83 ec 0c             	sub    $0xc,%esp
  37:	ff 36                	pushl  (%esi)
  39:	e8 6a 02 00 00       	call   0x2a8
  3e:	83 c4 10             	add    $0x10,%esp
  41:	85 c0                	test   %eax,%eax
  43:	78 20                	js     0x65
  45:	83 c3 01             	add    $0x1,%ebx
  48:	eb e0                	jmp    0x2a
  4a:	83 ec 08             	sub    $0x8,%esp
  4d:	68 50 06 00 00       	push   $0x650
  52:	6a 02                	push   $0x2
  54:	e8 38 03 00 00       	call   0x391
  59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  60:	e8 db 01 00 00       	call   0x240
  65:	83 ec 04             	sub    $0x4,%esp
  68:	ff 36                	pushl  (%esi)
  6a:	68 67 06 00 00       	push   $0x667
  6f:	6a 02                	push   $0x2
  71:	e8 1b 03 00 00       	call   0x391
  76:	83 c4 10             	add    $0x10,%esp
  79:	83 ec 0c             	sub    $0xc,%esp
  7c:	6a 00                	push   $0x0
  7e:	e8 bd 01 00 00       	call   0x240
  83:	f3 0f 1e fb          	endbr32 
  87:	55                   	push   %ebp
  88:	89 e5                	mov    %esp,%ebp
  8a:	56                   	push   %esi
  8b:	53                   	push   %ebx
  8c:	8b 75 08             	mov    0x8(%ebp),%esi
  8f:	8b 55 0c             	mov    0xc(%ebp),%edx
  92:	89 f0                	mov    %esi,%eax
  94:	89 d1                	mov    %edx,%ecx
  96:	83 c2 01             	add    $0x1,%edx
  99:	89 c3                	mov    %eax,%ebx
  9b:	83 c0 01             	add    $0x1,%eax
  9e:	0f b6 09             	movzbl (%ecx),%ecx
  a1:	88 0b                	mov    %cl,(%ebx)
  a3:	84 c9                	test   %cl,%cl
  a5:	75 ed                	jne    0x94
  a7:	89 f0                	mov    %esi,%eax
  a9:	5b                   	pop    %ebx
  aa:	5e                   	pop    %esi
  ab:	5d                   	pop    %ebp
  ac:	c3                   	ret    
  ad:	f3 0f 1e fb          	endbr32 
  b1:	55                   	push   %ebp
  b2:	89 e5                	mov    %esp,%ebp
  b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b7:	8b 55 0c             	mov    0xc(%ebp),%edx
  ba:	0f b6 01             	movzbl (%ecx),%eax
  bd:	84 c0                	test   %al,%al
  bf:	74 0c                	je     0xcd
  c1:	3a 02                	cmp    (%edx),%al
  c3:	75 08                	jne    0xcd
  c5:	83 c1 01             	add    $0x1,%ecx
  c8:	83 c2 01             	add    $0x1,%edx
  cb:	eb ed                	jmp    0xba
  cd:	0f b6 c0             	movzbl %al,%eax
  d0:	0f b6 12             	movzbl (%edx),%edx
  d3:	29 d0                	sub    %edx,%eax
  d5:	5d                   	pop    %ebp
  d6:	c3                   	ret    
  d7:	f3 0f 1e fb          	endbr32 
  db:	55                   	push   %ebp
  dc:	89 e5                	mov    %esp,%ebp
  de:	8b 4d 08             	mov    0x8(%ebp),%ecx
  e1:	b8 00 00 00 00       	mov    $0x0,%eax
  e6:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  ea:	74 05                	je     0xf1
  ec:	83 c0 01             	add    $0x1,%eax
  ef:	eb f5                	jmp    0xe6
  f1:	5d                   	pop    %ebp
  f2:	c3                   	ret    
  f3:	f3 0f 1e fb          	endbr32 
  f7:	55                   	push   %ebp
  f8:	89 e5                	mov    %esp,%ebp
  fa:	57                   	push   %edi
  fb:	8b 55 08             	mov    0x8(%ebp),%edx
  fe:	89 d7                	mov    %edx,%edi
 100:	8b 4d 10             	mov    0x10(%ebp),%ecx
 103:	8b 45 0c             	mov    0xc(%ebp),%eax
 106:	fc                   	cld    
 107:	f3 aa                	rep stos %al,%es:(%edi)
 109:	89 d0                	mov    %edx,%eax
 10b:	5f                   	pop    %edi
 10c:	5d                   	pop    %ebp
 10d:	c3                   	ret    
 10e:	f3 0f 1e fb          	endbr32 
 112:	55                   	push   %ebp
 113:	89 e5                	mov    %esp,%ebp
 115:	8b 45 08             	mov    0x8(%ebp),%eax
 118:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 11c:	0f b6 10             	movzbl (%eax),%edx
 11f:	84 d2                	test   %dl,%dl
 121:	74 09                	je     0x12c
 123:	38 ca                	cmp    %cl,%dl
 125:	74 0a                	je     0x131
 127:	83 c0 01             	add    $0x1,%eax
 12a:	eb f0                	jmp    0x11c
 12c:	b8 00 00 00 00       	mov    $0x0,%eax
 131:	5d                   	pop    %ebp
 132:	c3                   	ret    
 133:	f3 0f 1e fb          	endbr32 
 137:	55                   	push   %ebp
 138:	89 e5                	mov    %esp,%ebp
 13a:	57                   	push   %edi
 13b:	56                   	push   %esi
 13c:	53                   	push   %ebx
 13d:	83 ec 1c             	sub    $0x1c,%esp
 140:	8b 7d 08             	mov    0x8(%ebp),%edi
 143:	bb 00 00 00 00       	mov    $0x0,%ebx
 148:	89 de                	mov    %ebx,%esi
 14a:	83 c3 01             	add    $0x1,%ebx
 14d:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 150:	7d 2e                	jge    0x180
 152:	83 ec 04             	sub    $0x4,%esp
 155:	6a 01                	push   $0x1
 157:	8d 45 e7             	lea    -0x19(%ebp),%eax
 15a:	50                   	push   %eax
 15b:	6a 00                	push   $0x0
 15d:	e8 f6 00 00 00       	call   0x258
 162:	83 c4 10             	add    $0x10,%esp
 165:	85 c0                	test   %eax,%eax
 167:	7e 17                	jle    0x180
 169:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 16d:	88 04 37             	mov    %al,(%edi,%esi,1)
 170:	3c 0a                	cmp    $0xa,%al
 172:	0f 94 c2             	sete   %dl
 175:	3c 0d                	cmp    $0xd,%al
 177:	0f 94 c0             	sete   %al
 17a:	08 c2                	or     %al,%dl
 17c:	74 ca                	je     0x148
 17e:	89 de                	mov    %ebx,%esi
 180:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 184:	89 f8                	mov    %edi,%eax
 186:	8d 65 f4             	lea    -0xc(%ebp),%esp
 189:	5b                   	pop    %ebx
 18a:	5e                   	pop    %esi
 18b:	5f                   	pop    %edi
 18c:	5d                   	pop    %ebp
 18d:	c3                   	ret    
 18e:	f3 0f 1e fb          	endbr32 
 192:	55                   	push   %ebp
 193:	89 e5                	mov    %esp,%ebp
 195:	56                   	push   %esi
 196:	53                   	push   %ebx
 197:	83 ec 08             	sub    $0x8,%esp
 19a:	6a 00                	push   $0x0
 19c:	ff 75 08             	pushl  0x8(%ebp)
 19f:	e8 dc 00 00 00       	call   0x280
 1a4:	83 c4 10             	add    $0x10,%esp
 1a7:	85 c0                	test   %eax,%eax
 1a9:	78 24                	js     0x1cf
 1ab:	89 c3                	mov    %eax,%ebx
 1ad:	83 ec 08             	sub    $0x8,%esp
 1b0:	ff 75 0c             	pushl  0xc(%ebp)
 1b3:	50                   	push   %eax
 1b4:	e8 df 00 00 00       	call   0x298
 1b9:	89 c6                	mov    %eax,%esi
 1bb:	89 1c 24             	mov    %ebx,(%esp)
 1be:	e8 a5 00 00 00       	call   0x268
 1c3:	83 c4 10             	add    $0x10,%esp
 1c6:	89 f0                	mov    %esi,%eax
 1c8:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1cb:	5b                   	pop    %ebx
 1cc:	5e                   	pop    %esi
 1cd:	5d                   	pop    %ebp
 1ce:	c3                   	ret    
 1cf:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1d4:	eb f0                	jmp    0x1c6
 1d6:	f3 0f 1e fb          	endbr32 
 1da:	55                   	push   %ebp
 1db:	89 e5                	mov    %esp,%ebp
 1dd:	53                   	push   %ebx
 1de:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1e1:	ba 00 00 00 00       	mov    $0x0,%edx
 1e6:	0f b6 01             	movzbl (%ecx),%eax
 1e9:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1ec:	80 fb 09             	cmp    $0x9,%bl
 1ef:	77 12                	ja     0x203
 1f1:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1f4:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1f7:	83 c1 01             	add    $0x1,%ecx
 1fa:	0f be c0             	movsbl %al,%eax
 1fd:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 201:	eb e3                	jmp    0x1e6
 203:	89 d0                	mov    %edx,%eax
 205:	5b                   	pop    %ebx
 206:	5d                   	pop    %ebp
 207:	c3                   	ret    
 208:	f3 0f 1e fb          	endbr32 
 20c:	55                   	push   %ebp
 20d:	89 e5                	mov    %esp,%ebp
 20f:	56                   	push   %esi
 210:	53                   	push   %ebx
 211:	8b 75 08             	mov    0x8(%ebp),%esi
 214:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 217:	8b 45 10             	mov    0x10(%ebp),%eax
 21a:	89 f2                	mov    %esi,%edx
 21c:	8d 58 ff             	lea    -0x1(%eax),%ebx
 21f:	85 c0                	test   %eax,%eax
 221:	7e 0f                	jle    0x232
 223:	0f b6 01             	movzbl (%ecx),%eax
 226:	88 02                	mov    %al,(%edx)
 228:	8d 49 01             	lea    0x1(%ecx),%ecx
 22b:	8d 52 01             	lea    0x1(%edx),%edx
 22e:	89 d8                	mov    %ebx,%eax
 230:	eb ea                	jmp    0x21c
 232:	89 f0                	mov    %esi,%eax
 234:	5b                   	pop    %ebx
 235:	5e                   	pop    %esi
 236:	5d                   	pop    %ebp
 237:	c3                   	ret    
 238:	b8 01 00 00 00       	mov    $0x1,%eax
 23d:	cd 40                	int    $0x40
 23f:	c3                   	ret    
 240:	b8 02 00 00 00       	mov    $0x2,%eax
 245:	cd 40                	int    $0x40
 247:	c3                   	ret    
 248:	b8 03 00 00 00       	mov    $0x3,%eax
 24d:	cd 40                	int    $0x40
 24f:	c3                   	ret    
 250:	b8 04 00 00 00       	mov    $0x4,%eax
 255:	cd 40                	int    $0x40
 257:	c3                   	ret    
 258:	b8 05 00 00 00       	mov    $0x5,%eax
 25d:	cd 40                	int    $0x40
 25f:	c3                   	ret    
 260:	b8 10 00 00 00       	mov    $0x10,%eax
 265:	cd 40                	int    $0x40
 267:	c3                   	ret    
 268:	b8 15 00 00 00       	mov    $0x15,%eax
 26d:	cd 40                	int    $0x40
 26f:	c3                   	ret    
 270:	b8 06 00 00 00       	mov    $0x6,%eax
 275:	cd 40                	int    $0x40
 277:	c3                   	ret    
 278:	b8 07 00 00 00       	mov    $0x7,%eax
 27d:	cd 40                	int    $0x40
 27f:	c3                   	ret    
 280:	b8 0f 00 00 00       	mov    $0xf,%eax
 285:	cd 40                	int    $0x40
 287:	c3                   	ret    
 288:	b8 11 00 00 00       	mov    $0x11,%eax
 28d:	cd 40                	int    $0x40
 28f:	c3                   	ret    
 290:	b8 12 00 00 00       	mov    $0x12,%eax
 295:	cd 40                	int    $0x40
 297:	c3                   	ret    
 298:	b8 08 00 00 00       	mov    $0x8,%eax
 29d:	cd 40                	int    $0x40
 29f:	c3                   	ret    
 2a0:	b8 13 00 00 00       	mov    $0x13,%eax
 2a5:	cd 40                	int    $0x40
 2a7:	c3                   	ret    
 2a8:	b8 14 00 00 00       	mov    $0x14,%eax
 2ad:	cd 40                	int    $0x40
 2af:	c3                   	ret    
 2b0:	b8 09 00 00 00       	mov    $0x9,%eax
 2b5:	cd 40                	int    $0x40
 2b7:	c3                   	ret    
 2b8:	b8 0a 00 00 00       	mov    $0xa,%eax
 2bd:	cd 40                	int    $0x40
 2bf:	c3                   	ret    
 2c0:	b8 0b 00 00 00       	mov    $0xb,%eax
 2c5:	cd 40                	int    $0x40
 2c7:	c3                   	ret    
 2c8:	b8 0c 00 00 00       	mov    $0xc,%eax
 2cd:	cd 40                	int    $0x40
 2cf:	c3                   	ret    
 2d0:	b8 0d 00 00 00       	mov    $0xd,%eax
 2d5:	cd 40                	int    $0x40
 2d7:	c3                   	ret    
 2d8:	b8 0e 00 00 00       	mov    $0xe,%eax
 2dd:	cd 40                	int    $0x40
 2df:	c3                   	ret    
 2e0:	b8 16 00 00 00       	mov    $0x16,%eax
 2e5:	cd 40                	int    $0x40
 2e7:	c3                   	ret    
 2e8:	b8 17 00 00 00       	mov    $0x17,%eax
 2ed:	cd 40                	int    $0x40
 2ef:	c3                   	ret    
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	83 ec 1c             	sub    $0x1c,%esp
 2f6:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2f9:	6a 01                	push   $0x1
 2fb:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2fe:	52                   	push   %edx
 2ff:	50                   	push   %eax
 300:	e8 5b ff ff ff       	call   0x260
 305:	83 c4 10             	add    $0x10,%esp
 308:	c9                   	leave  
 309:	c3                   	ret    
 30a:	55                   	push   %ebp
 30b:	89 e5                	mov    %esp,%ebp
 30d:	57                   	push   %edi
 30e:	56                   	push   %esi
 30f:	53                   	push   %ebx
 310:	83 ec 2c             	sub    $0x2c,%esp
 313:	89 45 d0             	mov    %eax,-0x30(%ebp)
 316:	89 d6                	mov    %edx,%esi
 318:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 31c:	0f 95 c2             	setne  %dl
 31f:	89 f0                	mov    %esi,%eax
 321:	c1 e8 1f             	shr    $0x1f,%eax
 324:	84 c2                	test   %al,%dl
 326:	74 42                	je     0x36a
 328:	f7 de                	neg    %esi
 32a:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 331:	bb 00 00 00 00       	mov    $0x0,%ebx
 336:	89 f0                	mov    %esi,%eax
 338:	ba 00 00 00 00       	mov    $0x0,%edx
 33d:	f7 f1                	div    %ecx
 33f:	89 df                	mov    %ebx,%edi
 341:	83 c3 01             	add    $0x1,%ebx
 344:	0f b6 92 8c 06 00 00 	movzbl 0x68c(%edx),%edx
 34b:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 34f:	89 f2                	mov    %esi,%edx
 351:	89 c6                	mov    %eax,%esi
 353:	39 d1                	cmp    %edx,%ecx
 355:	76 df                	jbe    0x336
 357:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 35b:	74 2f                	je     0x38c
 35d:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 362:	8d 5f 02             	lea    0x2(%edi),%ebx
 365:	8b 75 d0             	mov    -0x30(%ebp),%esi
 368:	eb 15                	jmp    0x37f
 36a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 371:	eb be                	jmp    0x331
 373:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 378:	89 f0                	mov    %esi,%eax
 37a:	e8 71 ff ff ff       	call   0x2f0
 37f:	83 eb 01             	sub    $0x1,%ebx
 382:	79 ef                	jns    0x373
 384:	83 c4 2c             	add    $0x2c,%esp
 387:	5b                   	pop    %ebx
 388:	5e                   	pop    %esi
 389:	5f                   	pop    %edi
 38a:	5d                   	pop    %ebp
 38b:	c3                   	ret    
 38c:	8b 75 d0             	mov    -0x30(%ebp),%esi
 38f:	eb ee                	jmp    0x37f
 391:	f3 0f 1e fb          	endbr32 
 395:	55                   	push   %ebp
 396:	89 e5                	mov    %esp,%ebp
 398:	57                   	push   %edi
 399:	56                   	push   %esi
 39a:	53                   	push   %ebx
 39b:	83 ec 1c             	sub    $0x1c,%esp
 39e:	8d 45 10             	lea    0x10(%ebp),%eax
 3a1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3a4:	be 00 00 00 00       	mov    $0x0,%esi
 3a9:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ae:	eb 14                	jmp    0x3c4
 3b0:	89 fa                	mov    %edi,%edx
 3b2:	8b 45 08             	mov    0x8(%ebp),%eax
 3b5:	e8 36 ff ff ff       	call   0x2f0
 3ba:	eb 05                	jmp    0x3c1
 3bc:	83 fe 25             	cmp    $0x25,%esi
 3bf:	74 25                	je     0x3e6
 3c1:	83 c3 01             	add    $0x1,%ebx
 3c4:	8b 45 0c             	mov    0xc(%ebp),%eax
 3c7:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3cb:	84 c0                	test   %al,%al
 3cd:	0f 84 23 01 00 00    	je     0x4f6
 3d3:	0f be f8             	movsbl %al,%edi
 3d6:	0f b6 c0             	movzbl %al,%eax
 3d9:	85 f6                	test   %esi,%esi
 3db:	75 df                	jne    0x3bc
 3dd:	83 f8 25             	cmp    $0x25,%eax
 3e0:	75 ce                	jne    0x3b0
 3e2:	89 c6                	mov    %eax,%esi
 3e4:	eb db                	jmp    0x3c1
 3e6:	83 f8 64             	cmp    $0x64,%eax
 3e9:	74 49                	je     0x434
 3eb:	83 f8 78             	cmp    $0x78,%eax
 3ee:	0f 94 c1             	sete   %cl
 3f1:	83 f8 70             	cmp    $0x70,%eax
 3f4:	0f 94 c2             	sete   %dl
 3f7:	08 d1                	or     %dl,%cl
 3f9:	75 63                	jne    0x45e
 3fb:	83 f8 73             	cmp    $0x73,%eax
 3fe:	0f 84 84 00 00 00    	je     0x488
 404:	83 f8 63             	cmp    $0x63,%eax
 407:	0f 84 b7 00 00 00    	je     0x4c4
 40d:	83 f8 25             	cmp    $0x25,%eax
 410:	0f 84 cc 00 00 00    	je     0x4e2
 416:	ba 25 00 00 00       	mov    $0x25,%edx
 41b:	8b 45 08             	mov    0x8(%ebp),%eax
 41e:	e8 cd fe ff ff       	call   0x2f0
 423:	89 fa                	mov    %edi,%edx
 425:	8b 45 08             	mov    0x8(%ebp),%eax
 428:	e8 c3 fe ff ff       	call   0x2f0
 42d:	be 00 00 00 00       	mov    $0x0,%esi
 432:	eb 8d                	jmp    0x3c1
 434:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 437:	8b 17                	mov    (%edi),%edx
 439:	83 ec 0c             	sub    $0xc,%esp
 43c:	6a 01                	push   $0x1
 43e:	b9 0a 00 00 00       	mov    $0xa,%ecx
 443:	8b 45 08             	mov    0x8(%ebp),%eax
 446:	e8 bf fe ff ff       	call   0x30a
 44b:	83 c7 04             	add    $0x4,%edi
 44e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 451:	83 c4 10             	add    $0x10,%esp
 454:	be 00 00 00 00       	mov    $0x0,%esi
 459:	e9 63 ff ff ff       	jmp    0x3c1
 45e:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 461:	8b 17                	mov    (%edi),%edx
 463:	83 ec 0c             	sub    $0xc,%esp
 466:	6a 00                	push   $0x0
 468:	b9 10 00 00 00       	mov    $0x10,%ecx
 46d:	8b 45 08             	mov    0x8(%ebp),%eax
 470:	e8 95 fe ff ff       	call   0x30a
 475:	83 c7 04             	add    $0x4,%edi
 478:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 47b:	83 c4 10             	add    $0x10,%esp
 47e:	be 00 00 00 00       	mov    $0x0,%esi
 483:	e9 39 ff ff ff       	jmp    0x3c1
 488:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 48b:	8b 30                	mov    (%eax),%esi
 48d:	83 c0 04             	add    $0x4,%eax
 490:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 493:	85 f6                	test   %esi,%esi
 495:	75 28                	jne    0x4bf
 497:	be 83 06 00 00       	mov    $0x683,%esi
 49c:	8b 7d 08             	mov    0x8(%ebp),%edi
 49f:	eb 0d                	jmp    0x4ae
 4a1:	0f be d2             	movsbl %dl,%edx
 4a4:	89 f8                	mov    %edi,%eax
 4a6:	e8 45 fe ff ff       	call   0x2f0
 4ab:	83 c6 01             	add    $0x1,%esi
 4ae:	0f b6 16             	movzbl (%esi),%edx
 4b1:	84 d2                	test   %dl,%dl
 4b3:	75 ec                	jne    0x4a1
 4b5:	be 00 00 00 00       	mov    $0x0,%esi
 4ba:	e9 02 ff ff ff       	jmp    0x3c1
 4bf:	8b 7d 08             	mov    0x8(%ebp),%edi
 4c2:	eb ea                	jmp    0x4ae
 4c4:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4c7:	0f be 17             	movsbl (%edi),%edx
 4ca:	8b 45 08             	mov    0x8(%ebp),%eax
 4cd:	e8 1e fe ff ff       	call   0x2f0
 4d2:	83 c7 04             	add    $0x4,%edi
 4d5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4d8:	be 00 00 00 00       	mov    $0x0,%esi
 4dd:	e9 df fe ff ff       	jmp    0x3c1
 4e2:	89 fa                	mov    %edi,%edx
 4e4:	8b 45 08             	mov    0x8(%ebp),%eax
 4e7:	e8 04 fe ff ff       	call   0x2f0
 4ec:	be 00 00 00 00       	mov    $0x0,%esi
 4f1:	e9 cb fe ff ff       	jmp    0x3c1
 4f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4f9:	5b                   	pop    %ebx
 4fa:	5e                   	pop    %esi
 4fb:	5f                   	pop    %edi
 4fc:	5d                   	pop    %ebp
 4fd:	c3                   	ret    
 4fe:	f3 0f 1e fb          	endbr32 
 502:	55                   	push   %ebp
 503:	89 e5                	mov    %esp,%ebp
 505:	57                   	push   %edi
 506:	56                   	push   %esi
 507:	53                   	push   %ebx
 508:	8b 5d 08             	mov    0x8(%ebp),%ebx
 50b:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 50e:	a1 38 09 00 00       	mov    0x938,%eax
 513:	eb 02                	jmp    0x517
 515:	89 d0                	mov    %edx,%eax
 517:	39 c8                	cmp    %ecx,%eax
 519:	73 04                	jae    0x51f
 51b:	39 08                	cmp    %ecx,(%eax)
 51d:	77 12                	ja     0x531
 51f:	8b 10                	mov    (%eax),%edx
 521:	39 c2                	cmp    %eax,%edx
 523:	77 f0                	ja     0x515
 525:	39 c8                	cmp    %ecx,%eax
 527:	72 08                	jb     0x531
 529:	39 ca                	cmp    %ecx,%edx
 52b:	77 04                	ja     0x531
 52d:	89 d0                	mov    %edx,%eax
 52f:	eb e6                	jmp    0x517
 531:	8b 73 fc             	mov    -0x4(%ebx),%esi
 534:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 537:	8b 10                	mov    (%eax),%edx
 539:	39 d7                	cmp    %edx,%edi
 53b:	74 19                	je     0x556
 53d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 540:	8b 50 04             	mov    0x4(%eax),%edx
 543:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 546:	39 ce                	cmp    %ecx,%esi
 548:	74 1b                	je     0x565
 54a:	89 08                	mov    %ecx,(%eax)
 54c:	a3 38 09 00 00       	mov    %eax,0x938
 551:	5b                   	pop    %ebx
 552:	5e                   	pop    %esi
 553:	5f                   	pop    %edi
 554:	5d                   	pop    %ebp
 555:	c3                   	ret    
 556:	03 72 04             	add    0x4(%edx),%esi
 559:	89 73 fc             	mov    %esi,-0x4(%ebx)
 55c:	8b 10                	mov    (%eax),%edx
 55e:	8b 12                	mov    (%edx),%edx
 560:	89 53 f8             	mov    %edx,-0x8(%ebx)
 563:	eb db                	jmp    0x540
 565:	03 53 fc             	add    -0x4(%ebx),%edx
 568:	89 50 04             	mov    %edx,0x4(%eax)
 56b:	8b 53 f8             	mov    -0x8(%ebx),%edx
 56e:	89 10                	mov    %edx,(%eax)
 570:	eb da                	jmp    0x54c
 572:	55                   	push   %ebp
 573:	89 e5                	mov    %esp,%ebp
 575:	53                   	push   %ebx
 576:	83 ec 04             	sub    $0x4,%esp
 579:	89 c3                	mov    %eax,%ebx
 57b:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 580:	77 05                	ja     0x587
 582:	bb 00 10 00 00       	mov    $0x1000,%ebx
 587:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 58e:	83 ec 0c             	sub    $0xc,%esp
 591:	50                   	push   %eax
 592:	e8 31 fd ff ff       	call   0x2c8
 597:	83 c4 10             	add    $0x10,%esp
 59a:	83 f8 ff             	cmp    $0xffffffff,%eax
 59d:	74 1c                	je     0x5bb
 59f:	89 58 04             	mov    %ebx,0x4(%eax)
 5a2:	83 c0 08             	add    $0x8,%eax
 5a5:	83 ec 0c             	sub    $0xc,%esp
 5a8:	50                   	push   %eax
 5a9:	e8 50 ff ff ff       	call   0x4fe
 5ae:	a1 38 09 00 00       	mov    0x938,%eax
 5b3:	83 c4 10             	add    $0x10,%esp
 5b6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5b9:	c9                   	leave  
 5ba:	c3                   	ret    
 5bb:	b8 00 00 00 00       	mov    $0x0,%eax
 5c0:	eb f4                	jmp    0x5b6
 5c2:	f3 0f 1e fb          	endbr32 
 5c6:	55                   	push   %ebp
 5c7:	89 e5                	mov    %esp,%ebp
 5c9:	53                   	push   %ebx
 5ca:	83 ec 04             	sub    $0x4,%esp
 5cd:	8b 45 08             	mov    0x8(%ebp),%eax
 5d0:	8d 58 07             	lea    0x7(%eax),%ebx
 5d3:	c1 eb 03             	shr    $0x3,%ebx
 5d6:	83 c3 01             	add    $0x1,%ebx
 5d9:	8b 0d 38 09 00 00    	mov    0x938,%ecx
 5df:	85 c9                	test   %ecx,%ecx
 5e1:	74 04                	je     0x5e7
 5e3:	8b 01                	mov    (%ecx),%eax
 5e5:	eb 4b                	jmp    0x632
 5e7:	c7 05 38 09 00 00 3c 	movl   $0x93c,0x938
 5ee:	09 00 00 
 5f1:	c7 05 3c 09 00 00 3c 	movl   $0x93c,0x93c
 5f8:	09 00 00 
 5fb:	c7 05 40 09 00 00 00 	movl   $0x0,0x940
 602:	00 00 00 
 605:	b9 3c 09 00 00       	mov    $0x93c,%ecx
 60a:	eb d7                	jmp    0x5e3
 60c:	74 1a                	je     0x628
 60e:	29 da                	sub    %ebx,%edx
 610:	89 50 04             	mov    %edx,0x4(%eax)
 613:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 616:	89 58 04             	mov    %ebx,0x4(%eax)
 619:	89 0d 38 09 00 00    	mov    %ecx,0x938
 61f:	83 c0 08             	add    $0x8,%eax
 622:	83 c4 04             	add    $0x4,%esp
 625:	5b                   	pop    %ebx
 626:	5d                   	pop    %ebp
 627:	c3                   	ret    
 628:	8b 10                	mov    (%eax),%edx
 62a:	89 11                	mov    %edx,(%ecx)
 62c:	eb eb                	jmp    0x619
 62e:	89 c1                	mov    %eax,%ecx
 630:	8b 00                	mov    (%eax),%eax
 632:	8b 50 04             	mov    0x4(%eax),%edx
 635:	39 da                	cmp    %ebx,%edx
 637:	73 d3                	jae    0x60c
 639:	39 05 38 09 00 00    	cmp    %eax,0x938
 63f:	75 ed                	jne    0x62e
 641:	89 d8                	mov    %ebx,%eax
 643:	e8 2a ff ff ff       	call   0x572
 648:	85 c0                	test   %eax,%eax
 64a:	75 e2                	jne    0x62e
 64c:	eb d4                	jmp    0x622
