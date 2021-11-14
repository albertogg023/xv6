
_stressfs:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	56                   	push   %esi
  12:	53                   	push   %ebx
  13:	51                   	push   %ecx
  14:	81 ec 24 02 00 00    	sub    $0x224,%esp
  1a:	c7 45 de 73 74 72 65 	movl   $0x65727473,-0x22(%ebp)
  21:	c7 45 e2 73 73 66 73 	movl   $0x73667373,-0x1e(%ebp)
  28:	66 c7 45 e6 30 00    	movw   $0x30,-0x1a(%ebp)
  2e:	68 ec 06 00 00       	push   $0x6ec
  33:	6a 01                	push   $0x1
  35:	e8 f4 03 00 00       	call   0x42e
  3a:	83 c4 0c             	add    $0xc,%esp
  3d:	68 00 02 00 00       	push   $0x200
  42:	6a 61                	push   $0x61
  44:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  4a:	50                   	push   %eax
  4b:	e8 40 01 00 00       	call   0x190
  50:	83 c4 10             	add    $0x10,%esp
  53:	bb 00 00 00 00       	mov    $0x0,%ebx
  58:	83 fb 03             	cmp    $0x3,%ebx
  5b:	7f 0e                	jg     0x6b
  5d:	e8 73 02 00 00       	call   0x2d5
  62:	85 c0                	test   %eax,%eax
  64:	7f 05                	jg     0x6b
  66:	83 c3 01             	add    $0x1,%ebx
  69:	eb ed                	jmp    0x58
  6b:	83 ec 04             	sub    $0x4,%esp
  6e:	53                   	push   %ebx
  6f:	68 ff 06 00 00       	push   $0x6ff
  74:	6a 01                	push   $0x1
  76:	e8 b3 03 00 00       	call   0x42e
  7b:	00 5d e6             	add    %bl,-0x1a(%ebp)
  7e:	83 c4 08             	add    $0x8,%esp
  81:	68 02 02 00 00       	push   $0x202
  86:	8d 45 de             	lea    -0x22(%ebp),%eax
  89:	50                   	push   %eax
  8a:	e8 8e 02 00 00       	call   0x31d
  8f:	89 c6                	mov    %eax,%esi
  91:	83 c4 10             	add    $0x10,%esp
  94:	bb 00 00 00 00       	mov    $0x0,%ebx
  99:	eb 1b                	jmp    0xb6
  9b:	83 ec 04             	sub    $0x4,%esp
  9e:	68 00 02 00 00       	push   $0x200
  a3:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  a9:	50                   	push   %eax
  aa:	56                   	push   %esi
  ab:	e8 4d 02 00 00       	call   0x2fd
  b0:	83 c3 01             	add    $0x1,%ebx
  b3:	83 c4 10             	add    $0x10,%esp
  b6:	83 fb 13             	cmp    $0x13,%ebx
  b9:	7e e0                	jle    0x9b
  bb:	83 ec 0c             	sub    $0xc,%esp
  be:	56                   	push   %esi
  bf:	e8 41 02 00 00       	call   0x305
  c4:	83 c4 08             	add    $0x8,%esp
  c7:	68 09 07 00 00       	push   $0x709
  cc:	6a 01                	push   $0x1
  ce:	e8 5b 03 00 00       	call   0x42e
  d3:	83 c4 08             	add    $0x8,%esp
  d6:	6a 00                	push   $0x0
  d8:	8d 45 de             	lea    -0x22(%ebp),%eax
  db:	50                   	push   %eax
  dc:	e8 3c 02 00 00       	call   0x31d
  e1:	89 c6                	mov    %eax,%esi
  e3:	83 c4 10             	add    $0x10,%esp
  e6:	bb 00 00 00 00       	mov    $0x0,%ebx
  eb:	eb 1b                	jmp    0x108
  ed:	83 ec 04             	sub    $0x4,%esp
  f0:	68 00 02 00 00       	push   $0x200
  f5:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  fb:	50                   	push   %eax
  fc:	56                   	push   %esi
  fd:	e8 f3 01 00 00       	call   0x2f5
 102:	83 c3 01             	add    $0x1,%ebx
 105:	83 c4 10             	add    $0x10,%esp
 108:	83 fb 13             	cmp    $0x13,%ebx
 10b:	7e e0                	jle    0xed
 10d:	83 ec 0c             	sub    $0xc,%esp
 110:	56                   	push   %esi
 111:	e8 ef 01 00 00       	call   0x305
 116:	e8 ca 01 00 00       	call   0x2e5
 11b:	e8 bd 01 00 00       	call   0x2dd
 120:	f3 0f 1e fb          	endbr32 
 124:	55                   	push   %ebp
 125:	89 e5                	mov    %esp,%ebp
 127:	56                   	push   %esi
 128:	53                   	push   %ebx
 129:	8b 75 08             	mov    0x8(%ebp),%esi
 12c:	8b 55 0c             	mov    0xc(%ebp),%edx
 12f:	89 f0                	mov    %esi,%eax
 131:	89 d1                	mov    %edx,%ecx
 133:	83 c2 01             	add    $0x1,%edx
 136:	89 c3                	mov    %eax,%ebx
 138:	83 c0 01             	add    $0x1,%eax
 13b:	0f b6 09             	movzbl (%ecx),%ecx
 13e:	88 0b                	mov    %cl,(%ebx)
 140:	84 c9                	test   %cl,%cl
 142:	75 ed                	jne    0x131
 144:	89 f0                	mov    %esi,%eax
 146:	5b                   	pop    %ebx
 147:	5e                   	pop    %esi
 148:	5d                   	pop    %ebp
 149:	c3                   	ret    
 14a:	f3 0f 1e fb          	endbr32 
 14e:	55                   	push   %ebp
 14f:	89 e5                	mov    %esp,%ebp
 151:	8b 4d 08             	mov    0x8(%ebp),%ecx
 154:	8b 55 0c             	mov    0xc(%ebp),%edx
 157:	0f b6 01             	movzbl (%ecx),%eax
 15a:	84 c0                	test   %al,%al
 15c:	74 0c                	je     0x16a
 15e:	3a 02                	cmp    (%edx),%al
 160:	75 08                	jne    0x16a
 162:	83 c1 01             	add    $0x1,%ecx
 165:	83 c2 01             	add    $0x1,%edx
 168:	eb ed                	jmp    0x157
 16a:	0f b6 c0             	movzbl %al,%eax
 16d:	0f b6 12             	movzbl (%edx),%edx
 170:	29 d0                	sub    %edx,%eax
 172:	5d                   	pop    %ebp
 173:	c3                   	ret    
 174:	f3 0f 1e fb          	endbr32 
 178:	55                   	push   %ebp
 179:	89 e5                	mov    %esp,%ebp
 17b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 17e:	b8 00 00 00 00       	mov    $0x0,%eax
 183:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 187:	74 05                	je     0x18e
 189:	83 c0 01             	add    $0x1,%eax
 18c:	eb f5                	jmp    0x183
 18e:	5d                   	pop    %ebp
 18f:	c3                   	ret    
 190:	f3 0f 1e fb          	endbr32 
 194:	55                   	push   %ebp
 195:	89 e5                	mov    %esp,%ebp
 197:	57                   	push   %edi
 198:	8b 55 08             	mov    0x8(%ebp),%edx
 19b:	89 d7                	mov    %edx,%edi
 19d:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1a0:	8b 45 0c             	mov    0xc(%ebp),%eax
 1a3:	fc                   	cld    
 1a4:	f3 aa                	rep stos %al,%es:(%edi)
 1a6:	89 d0                	mov    %edx,%eax
 1a8:	5f                   	pop    %edi
 1a9:	5d                   	pop    %ebp
 1aa:	c3                   	ret    
 1ab:	f3 0f 1e fb          	endbr32 
 1af:	55                   	push   %ebp
 1b0:	89 e5                	mov    %esp,%ebp
 1b2:	8b 45 08             	mov    0x8(%ebp),%eax
 1b5:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1b9:	0f b6 10             	movzbl (%eax),%edx
 1bc:	84 d2                	test   %dl,%dl
 1be:	74 09                	je     0x1c9
 1c0:	38 ca                	cmp    %cl,%dl
 1c2:	74 0a                	je     0x1ce
 1c4:	83 c0 01             	add    $0x1,%eax
 1c7:	eb f0                	jmp    0x1b9
 1c9:	b8 00 00 00 00       	mov    $0x0,%eax
 1ce:	5d                   	pop    %ebp
 1cf:	c3                   	ret    
 1d0:	f3 0f 1e fb          	endbr32 
 1d4:	55                   	push   %ebp
 1d5:	89 e5                	mov    %esp,%ebp
 1d7:	57                   	push   %edi
 1d8:	56                   	push   %esi
 1d9:	53                   	push   %ebx
 1da:	83 ec 1c             	sub    $0x1c,%esp
 1dd:	8b 7d 08             	mov    0x8(%ebp),%edi
 1e0:	bb 00 00 00 00       	mov    $0x0,%ebx
 1e5:	89 de                	mov    %ebx,%esi
 1e7:	83 c3 01             	add    $0x1,%ebx
 1ea:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1ed:	7d 2e                	jge    0x21d
 1ef:	83 ec 04             	sub    $0x4,%esp
 1f2:	6a 01                	push   $0x1
 1f4:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1f7:	50                   	push   %eax
 1f8:	6a 00                	push   $0x0
 1fa:	e8 f6 00 00 00       	call   0x2f5
 1ff:	83 c4 10             	add    $0x10,%esp
 202:	85 c0                	test   %eax,%eax
 204:	7e 17                	jle    0x21d
 206:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 20a:	88 04 37             	mov    %al,(%edi,%esi,1)
 20d:	3c 0a                	cmp    $0xa,%al
 20f:	0f 94 c2             	sete   %dl
 212:	3c 0d                	cmp    $0xd,%al
 214:	0f 94 c0             	sete   %al
 217:	08 c2                	or     %al,%dl
 219:	74 ca                	je     0x1e5
 21b:	89 de                	mov    %ebx,%esi
 21d:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 221:	89 f8                	mov    %edi,%eax
 223:	8d 65 f4             	lea    -0xc(%ebp),%esp
 226:	5b                   	pop    %ebx
 227:	5e                   	pop    %esi
 228:	5f                   	pop    %edi
 229:	5d                   	pop    %ebp
 22a:	c3                   	ret    
 22b:	f3 0f 1e fb          	endbr32 
 22f:	55                   	push   %ebp
 230:	89 e5                	mov    %esp,%ebp
 232:	56                   	push   %esi
 233:	53                   	push   %ebx
 234:	83 ec 08             	sub    $0x8,%esp
 237:	6a 00                	push   $0x0
 239:	ff 75 08             	pushl  0x8(%ebp)
 23c:	e8 dc 00 00 00       	call   0x31d
 241:	83 c4 10             	add    $0x10,%esp
 244:	85 c0                	test   %eax,%eax
 246:	78 24                	js     0x26c
 248:	89 c3                	mov    %eax,%ebx
 24a:	83 ec 08             	sub    $0x8,%esp
 24d:	ff 75 0c             	pushl  0xc(%ebp)
 250:	50                   	push   %eax
 251:	e8 df 00 00 00       	call   0x335
 256:	89 c6                	mov    %eax,%esi
 258:	89 1c 24             	mov    %ebx,(%esp)
 25b:	e8 a5 00 00 00       	call   0x305
 260:	83 c4 10             	add    $0x10,%esp
 263:	89 f0                	mov    %esi,%eax
 265:	8d 65 f8             	lea    -0x8(%ebp),%esp
 268:	5b                   	pop    %ebx
 269:	5e                   	pop    %esi
 26a:	5d                   	pop    %ebp
 26b:	c3                   	ret    
 26c:	be ff ff ff ff       	mov    $0xffffffff,%esi
 271:	eb f0                	jmp    0x263
 273:	f3 0f 1e fb          	endbr32 
 277:	55                   	push   %ebp
 278:	89 e5                	mov    %esp,%ebp
 27a:	53                   	push   %ebx
 27b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 27e:	ba 00 00 00 00       	mov    $0x0,%edx
 283:	0f b6 01             	movzbl (%ecx),%eax
 286:	8d 58 d0             	lea    -0x30(%eax),%ebx
 289:	80 fb 09             	cmp    $0x9,%bl
 28c:	77 12                	ja     0x2a0
 28e:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 291:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 294:	83 c1 01             	add    $0x1,%ecx
 297:	0f be c0             	movsbl %al,%eax
 29a:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 29e:	eb e3                	jmp    0x283
 2a0:	89 d0                	mov    %edx,%eax
 2a2:	5b                   	pop    %ebx
 2a3:	5d                   	pop    %ebp
 2a4:	c3                   	ret    
 2a5:	f3 0f 1e fb          	endbr32 
 2a9:	55                   	push   %ebp
 2aa:	89 e5                	mov    %esp,%ebp
 2ac:	56                   	push   %esi
 2ad:	53                   	push   %ebx
 2ae:	8b 75 08             	mov    0x8(%ebp),%esi
 2b1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2b4:	8b 45 10             	mov    0x10(%ebp),%eax
 2b7:	89 f2                	mov    %esi,%edx
 2b9:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2bc:	85 c0                	test   %eax,%eax
 2be:	7e 0f                	jle    0x2cf
 2c0:	0f b6 01             	movzbl (%ecx),%eax
 2c3:	88 02                	mov    %al,(%edx)
 2c5:	8d 49 01             	lea    0x1(%ecx),%ecx
 2c8:	8d 52 01             	lea    0x1(%edx),%edx
 2cb:	89 d8                	mov    %ebx,%eax
 2cd:	eb ea                	jmp    0x2b9
 2cf:	89 f0                	mov    %esi,%eax
 2d1:	5b                   	pop    %ebx
 2d2:	5e                   	pop    %esi
 2d3:	5d                   	pop    %ebp
 2d4:	c3                   	ret    
 2d5:	b8 01 00 00 00       	mov    $0x1,%eax
 2da:	cd 40                	int    $0x40
 2dc:	c3                   	ret    
 2dd:	b8 02 00 00 00       	mov    $0x2,%eax
 2e2:	cd 40                	int    $0x40
 2e4:	c3                   	ret    
 2e5:	b8 03 00 00 00       	mov    $0x3,%eax
 2ea:	cd 40                	int    $0x40
 2ec:	c3                   	ret    
 2ed:	b8 04 00 00 00       	mov    $0x4,%eax
 2f2:	cd 40                	int    $0x40
 2f4:	c3                   	ret    
 2f5:	b8 05 00 00 00       	mov    $0x5,%eax
 2fa:	cd 40                	int    $0x40
 2fc:	c3                   	ret    
 2fd:	b8 10 00 00 00       	mov    $0x10,%eax
 302:	cd 40                	int    $0x40
 304:	c3                   	ret    
 305:	b8 15 00 00 00       	mov    $0x15,%eax
 30a:	cd 40                	int    $0x40
 30c:	c3                   	ret    
 30d:	b8 06 00 00 00       	mov    $0x6,%eax
 312:	cd 40                	int    $0x40
 314:	c3                   	ret    
 315:	b8 07 00 00 00       	mov    $0x7,%eax
 31a:	cd 40                	int    $0x40
 31c:	c3                   	ret    
 31d:	b8 0f 00 00 00       	mov    $0xf,%eax
 322:	cd 40                	int    $0x40
 324:	c3                   	ret    
 325:	b8 11 00 00 00       	mov    $0x11,%eax
 32a:	cd 40                	int    $0x40
 32c:	c3                   	ret    
 32d:	b8 12 00 00 00       	mov    $0x12,%eax
 332:	cd 40                	int    $0x40
 334:	c3                   	ret    
 335:	b8 08 00 00 00       	mov    $0x8,%eax
 33a:	cd 40                	int    $0x40
 33c:	c3                   	ret    
 33d:	b8 13 00 00 00       	mov    $0x13,%eax
 342:	cd 40                	int    $0x40
 344:	c3                   	ret    
 345:	b8 14 00 00 00       	mov    $0x14,%eax
 34a:	cd 40                	int    $0x40
 34c:	c3                   	ret    
 34d:	b8 09 00 00 00       	mov    $0x9,%eax
 352:	cd 40                	int    $0x40
 354:	c3                   	ret    
 355:	b8 0a 00 00 00       	mov    $0xa,%eax
 35a:	cd 40                	int    $0x40
 35c:	c3                   	ret    
 35d:	b8 0b 00 00 00       	mov    $0xb,%eax
 362:	cd 40                	int    $0x40
 364:	c3                   	ret    
 365:	b8 0c 00 00 00       	mov    $0xc,%eax
 36a:	cd 40                	int    $0x40
 36c:	c3                   	ret    
 36d:	b8 0d 00 00 00       	mov    $0xd,%eax
 372:	cd 40                	int    $0x40
 374:	c3                   	ret    
 375:	b8 0e 00 00 00       	mov    $0xe,%eax
 37a:	cd 40                	int    $0x40
 37c:	c3                   	ret    
 37d:	b8 16 00 00 00       	mov    $0x16,%eax
 382:	cd 40                	int    $0x40
 384:	c3                   	ret    
 385:	b8 17 00 00 00       	mov    $0x17,%eax
 38a:	cd 40                	int    $0x40
 38c:	c3                   	ret    
 38d:	55                   	push   %ebp
 38e:	89 e5                	mov    %esp,%ebp
 390:	83 ec 1c             	sub    $0x1c,%esp
 393:	88 55 f4             	mov    %dl,-0xc(%ebp)
 396:	6a 01                	push   $0x1
 398:	8d 55 f4             	lea    -0xc(%ebp),%edx
 39b:	52                   	push   %edx
 39c:	50                   	push   %eax
 39d:	e8 5b ff ff ff       	call   0x2fd
 3a2:	83 c4 10             	add    $0x10,%esp
 3a5:	c9                   	leave  
 3a6:	c3                   	ret    
 3a7:	55                   	push   %ebp
 3a8:	89 e5                	mov    %esp,%ebp
 3aa:	57                   	push   %edi
 3ab:	56                   	push   %esi
 3ac:	53                   	push   %ebx
 3ad:	83 ec 2c             	sub    $0x2c,%esp
 3b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3b3:	89 d6                	mov    %edx,%esi
 3b5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3b9:	0f 95 c2             	setne  %dl
 3bc:	89 f0                	mov    %esi,%eax
 3be:	c1 e8 1f             	shr    $0x1f,%eax
 3c1:	84 c2                	test   %al,%dl
 3c3:	74 42                	je     0x407
 3c5:	f7 de                	neg    %esi
 3c7:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3ce:	bb 00 00 00 00       	mov    $0x0,%ebx
 3d3:	89 f0                	mov    %esi,%eax
 3d5:	ba 00 00 00 00       	mov    $0x0,%edx
 3da:	f7 f1                	div    %ecx
 3dc:	89 df                	mov    %ebx,%edi
 3de:	83 c3 01             	add    $0x1,%ebx
 3e1:	0f b6 92 18 07 00 00 	movzbl 0x718(%edx),%edx
 3e8:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3ec:	89 f2                	mov    %esi,%edx
 3ee:	89 c6                	mov    %eax,%esi
 3f0:	39 d1                	cmp    %edx,%ecx
 3f2:	76 df                	jbe    0x3d3
 3f4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3f8:	74 2f                	je     0x429
 3fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3ff:	8d 5f 02             	lea    0x2(%edi),%ebx
 402:	8b 75 d0             	mov    -0x30(%ebp),%esi
 405:	eb 15                	jmp    0x41c
 407:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 40e:	eb be                	jmp    0x3ce
 410:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 415:	89 f0                	mov    %esi,%eax
 417:	e8 71 ff ff ff       	call   0x38d
 41c:	83 eb 01             	sub    $0x1,%ebx
 41f:	79 ef                	jns    0x410
 421:	83 c4 2c             	add    $0x2c,%esp
 424:	5b                   	pop    %ebx
 425:	5e                   	pop    %esi
 426:	5f                   	pop    %edi
 427:	5d                   	pop    %ebp
 428:	c3                   	ret    
 429:	8b 75 d0             	mov    -0x30(%ebp),%esi
 42c:	eb ee                	jmp    0x41c
 42e:	f3 0f 1e fb          	endbr32 
 432:	55                   	push   %ebp
 433:	89 e5                	mov    %esp,%ebp
 435:	57                   	push   %edi
 436:	56                   	push   %esi
 437:	53                   	push   %ebx
 438:	83 ec 1c             	sub    $0x1c,%esp
 43b:	8d 45 10             	lea    0x10(%ebp),%eax
 43e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 441:	be 00 00 00 00       	mov    $0x0,%esi
 446:	bb 00 00 00 00       	mov    $0x0,%ebx
 44b:	eb 14                	jmp    0x461
 44d:	89 fa                	mov    %edi,%edx
 44f:	8b 45 08             	mov    0x8(%ebp),%eax
 452:	e8 36 ff ff ff       	call   0x38d
 457:	eb 05                	jmp    0x45e
 459:	83 fe 25             	cmp    $0x25,%esi
 45c:	74 25                	je     0x483
 45e:	83 c3 01             	add    $0x1,%ebx
 461:	8b 45 0c             	mov    0xc(%ebp),%eax
 464:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 468:	84 c0                	test   %al,%al
 46a:	0f 84 23 01 00 00    	je     0x593
 470:	0f be f8             	movsbl %al,%edi
 473:	0f b6 c0             	movzbl %al,%eax
 476:	85 f6                	test   %esi,%esi
 478:	75 df                	jne    0x459
 47a:	83 f8 25             	cmp    $0x25,%eax
 47d:	75 ce                	jne    0x44d
 47f:	89 c6                	mov    %eax,%esi
 481:	eb db                	jmp    0x45e
 483:	83 f8 64             	cmp    $0x64,%eax
 486:	74 49                	je     0x4d1
 488:	83 f8 78             	cmp    $0x78,%eax
 48b:	0f 94 c1             	sete   %cl
 48e:	83 f8 70             	cmp    $0x70,%eax
 491:	0f 94 c2             	sete   %dl
 494:	08 d1                	or     %dl,%cl
 496:	75 63                	jne    0x4fb
 498:	83 f8 73             	cmp    $0x73,%eax
 49b:	0f 84 84 00 00 00    	je     0x525
 4a1:	83 f8 63             	cmp    $0x63,%eax
 4a4:	0f 84 b7 00 00 00    	je     0x561
 4aa:	83 f8 25             	cmp    $0x25,%eax
 4ad:	0f 84 cc 00 00 00    	je     0x57f
 4b3:	ba 25 00 00 00       	mov    $0x25,%edx
 4b8:	8b 45 08             	mov    0x8(%ebp),%eax
 4bb:	e8 cd fe ff ff       	call   0x38d
 4c0:	89 fa                	mov    %edi,%edx
 4c2:	8b 45 08             	mov    0x8(%ebp),%eax
 4c5:	e8 c3 fe ff ff       	call   0x38d
 4ca:	be 00 00 00 00       	mov    $0x0,%esi
 4cf:	eb 8d                	jmp    0x45e
 4d1:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4d4:	8b 17                	mov    (%edi),%edx
 4d6:	83 ec 0c             	sub    $0xc,%esp
 4d9:	6a 01                	push   $0x1
 4db:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4e0:	8b 45 08             	mov    0x8(%ebp),%eax
 4e3:	e8 bf fe ff ff       	call   0x3a7
 4e8:	83 c7 04             	add    $0x4,%edi
 4eb:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4ee:	83 c4 10             	add    $0x10,%esp
 4f1:	be 00 00 00 00       	mov    $0x0,%esi
 4f6:	e9 63 ff ff ff       	jmp    0x45e
 4fb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4fe:	8b 17                	mov    (%edi),%edx
 500:	83 ec 0c             	sub    $0xc,%esp
 503:	6a 00                	push   $0x0
 505:	b9 10 00 00 00       	mov    $0x10,%ecx
 50a:	8b 45 08             	mov    0x8(%ebp),%eax
 50d:	e8 95 fe ff ff       	call   0x3a7
 512:	83 c7 04             	add    $0x4,%edi
 515:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 518:	83 c4 10             	add    $0x10,%esp
 51b:	be 00 00 00 00       	mov    $0x0,%esi
 520:	e9 39 ff ff ff       	jmp    0x45e
 525:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 528:	8b 30                	mov    (%eax),%esi
 52a:	83 c0 04             	add    $0x4,%eax
 52d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 530:	85 f6                	test   %esi,%esi
 532:	75 28                	jne    0x55c
 534:	be 0f 07 00 00       	mov    $0x70f,%esi
 539:	8b 7d 08             	mov    0x8(%ebp),%edi
 53c:	eb 0d                	jmp    0x54b
 53e:	0f be d2             	movsbl %dl,%edx
 541:	89 f8                	mov    %edi,%eax
 543:	e8 45 fe ff ff       	call   0x38d
 548:	83 c6 01             	add    $0x1,%esi
 54b:	0f b6 16             	movzbl (%esi),%edx
 54e:	84 d2                	test   %dl,%dl
 550:	75 ec                	jne    0x53e
 552:	be 00 00 00 00       	mov    $0x0,%esi
 557:	e9 02 ff ff ff       	jmp    0x45e
 55c:	8b 7d 08             	mov    0x8(%ebp),%edi
 55f:	eb ea                	jmp    0x54b
 561:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 564:	0f be 17             	movsbl (%edi),%edx
 567:	8b 45 08             	mov    0x8(%ebp),%eax
 56a:	e8 1e fe ff ff       	call   0x38d
 56f:	83 c7 04             	add    $0x4,%edi
 572:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 575:	be 00 00 00 00       	mov    $0x0,%esi
 57a:	e9 df fe ff ff       	jmp    0x45e
 57f:	89 fa                	mov    %edi,%edx
 581:	8b 45 08             	mov    0x8(%ebp),%eax
 584:	e8 04 fe ff ff       	call   0x38d
 589:	be 00 00 00 00       	mov    $0x0,%esi
 58e:	e9 cb fe ff ff       	jmp    0x45e
 593:	8d 65 f4             	lea    -0xc(%ebp),%esp
 596:	5b                   	pop    %ebx
 597:	5e                   	pop    %esi
 598:	5f                   	pop    %edi
 599:	5d                   	pop    %ebp
 59a:	c3                   	ret    
 59b:	f3 0f 1e fb          	endbr32 
 59f:	55                   	push   %ebp
 5a0:	89 e5                	mov    %esp,%ebp
 5a2:	57                   	push   %edi
 5a3:	56                   	push   %esi
 5a4:	53                   	push   %ebx
 5a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5a8:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5ab:	a1 c0 09 00 00       	mov    0x9c0,%eax
 5b0:	eb 02                	jmp    0x5b4
 5b2:	89 d0                	mov    %edx,%eax
 5b4:	39 c8                	cmp    %ecx,%eax
 5b6:	73 04                	jae    0x5bc
 5b8:	39 08                	cmp    %ecx,(%eax)
 5ba:	77 12                	ja     0x5ce
 5bc:	8b 10                	mov    (%eax),%edx
 5be:	39 c2                	cmp    %eax,%edx
 5c0:	77 f0                	ja     0x5b2
 5c2:	39 c8                	cmp    %ecx,%eax
 5c4:	72 08                	jb     0x5ce
 5c6:	39 ca                	cmp    %ecx,%edx
 5c8:	77 04                	ja     0x5ce
 5ca:	89 d0                	mov    %edx,%eax
 5cc:	eb e6                	jmp    0x5b4
 5ce:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5d1:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5d4:	8b 10                	mov    (%eax),%edx
 5d6:	39 d7                	cmp    %edx,%edi
 5d8:	74 19                	je     0x5f3
 5da:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5dd:	8b 50 04             	mov    0x4(%eax),%edx
 5e0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5e3:	39 ce                	cmp    %ecx,%esi
 5e5:	74 1b                	je     0x602
 5e7:	89 08                	mov    %ecx,(%eax)
 5e9:	a3 c0 09 00 00       	mov    %eax,0x9c0
 5ee:	5b                   	pop    %ebx
 5ef:	5e                   	pop    %esi
 5f0:	5f                   	pop    %edi
 5f1:	5d                   	pop    %ebp
 5f2:	c3                   	ret    
 5f3:	03 72 04             	add    0x4(%edx),%esi
 5f6:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5f9:	8b 10                	mov    (%eax),%edx
 5fb:	8b 12                	mov    (%edx),%edx
 5fd:	89 53 f8             	mov    %edx,-0x8(%ebx)
 600:	eb db                	jmp    0x5dd
 602:	03 53 fc             	add    -0x4(%ebx),%edx
 605:	89 50 04             	mov    %edx,0x4(%eax)
 608:	8b 53 f8             	mov    -0x8(%ebx),%edx
 60b:	89 10                	mov    %edx,(%eax)
 60d:	eb da                	jmp    0x5e9
 60f:	55                   	push   %ebp
 610:	89 e5                	mov    %esp,%ebp
 612:	53                   	push   %ebx
 613:	83 ec 04             	sub    $0x4,%esp
 616:	89 c3                	mov    %eax,%ebx
 618:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 61d:	77 05                	ja     0x624
 61f:	bb 00 10 00 00       	mov    $0x1000,%ebx
 624:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 62b:	83 ec 0c             	sub    $0xc,%esp
 62e:	50                   	push   %eax
 62f:	e8 31 fd ff ff       	call   0x365
 634:	83 c4 10             	add    $0x10,%esp
 637:	83 f8 ff             	cmp    $0xffffffff,%eax
 63a:	74 1c                	je     0x658
 63c:	89 58 04             	mov    %ebx,0x4(%eax)
 63f:	83 c0 08             	add    $0x8,%eax
 642:	83 ec 0c             	sub    $0xc,%esp
 645:	50                   	push   %eax
 646:	e8 50 ff ff ff       	call   0x59b
 64b:	a1 c0 09 00 00       	mov    0x9c0,%eax
 650:	83 c4 10             	add    $0x10,%esp
 653:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 656:	c9                   	leave  
 657:	c3                   	ret    
 658:	b8 00 00 00 00       	mov    $0x0,%eax
 65d:	eb f4                	jmp    0x653
 65f:	f3 0f 1e fb          	endbr32 
 663:	55                   	push   %ebp
 664:	89 e5                	mov    %esp,%ebp
 666:	53                   	push   %ebx
 667:	83 ec 04             	sub    $0x4,%esp
 66a:	8b 45 08             	mov    0x8(%ebp),%eax
 66d:	8d 58 07             	lea    0x7(%eax),%ebx
 670:	c1 eb 03             	shr    $0x3,%ebx
 673:	83 c3 01             	add    $0x1,%ebx
 676:	8b 0d c0 09 00 00    	mov    0x9c0,%ecx
 67c:	85 c9                	test   %ecx,%ecx
 67e:	74 04                	je     0x684
 680:	8b 01                	mov    (%ecx),%eax
 682:	eb 4b                	jmp    0x6cf
 684:	c7 05 c0 09 00 00 c4 	movl   $0x9c4,0x9c0
 68b:	09 00 00 
 68e:	c7 05 c4 09 00 00 c4 	movl   $0x9c4,0x9c4
 695:	09 00 00 
 698:	c7 05 c8 09 00 00 00 	movl   $0x0,0x9c8
 69f:	00 00 00 
 6a2:	b9 c4 09 00 00       	mov    $0x9c4,%ecx
 6a7:	eb d7                	jmp    0x680
 6a9:	74 1a                	je     0x6c5
 6ab:	29 da                	sub    %ebx,%edx
 6ad:	89 50 04             	mov    %edx,0x4(%eax)
 6b0:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6b3:	89 58 04             	mov    %ebx,0x4(%eax)
 6b6:	89 0d c0 09 00 00    	mov    %ecx,0x9c0
 6bc:	83 c0 08             	add    $0x8,%eax
 6bf:	83 c4 04             	add    $0x4,%esp
 6c2:	5b                   	pop    %ebx
 6c3:	5d                   	pop    %ebp
 6c4:	c3                   	ret    
 6c5:	8b 10                	mov    (%eax),%edx
 6c7:	89 11                	mov    %edx,(%ecx)
 6c9:	eb eb                	jmp    0x6b6
 6cb:	89 c1                	mov    %eax,%ecx
 6cd:	8b 00                	mov    (%eax),%eax
 6cf:	8b 50 04             	mov    0x4(%eax),%edx
 6d2:	39 da                	cmp    %ebx,%edx
 6d4:	73 d3                	jae    0x6a9
 6d6:	39 05 c0 09 00 00    	cmp    %eax,0x9c0
 6dc:	75 ed                	jne    0x6cb
 6de:	89 d8                	mov    %ebx,%eax
 6e0:	e8 2a ff ff ff       	call   0x60f
 6e5:	85 c0                	test   %eax,%eax
 6e7:	75 e2                	jne    0x6cb
 6e9:	eb d4                	jmp    0x6bf
