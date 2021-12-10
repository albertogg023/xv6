
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
  19:	e8 a1 02 00 00       	call   0x2bf
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	74 1b                	je     0x40
  25:	83 ec 08             	sub    $0x8,%esp
  28:	68 30 06 00 00       	push   $0x630
  2d:	6a 02                	push   $0x2
  2f:	e8 3c 03 00 00       	call   0x370
  34:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3b:	e8 df 01 00 00       	call   0x21f
  40:	83 ec 0c             	sub    $0xc,%esp
  43:	ff 75 f4             	pushl  -0xc(%ebp)
  46:	ff 75 f0             	pushl  -0x10(%ebp)
  49:	ff 75 ec             	pushl  -0x14(%ebp)
  4c:	68 3e 06 00 00       	push   $0x63e
  51:	6a 01                	push   $0x1
  53:	e8 18 03 00 00       	call   0x370
  58:	83 c4 14             	add    $0x14,%esp
  5b:	6a 00                	push   $0x0
  5d:	e8 bd 01 00 00       	call   0x21f
  62:	f3 0f 1e fb          	endbr32 
  66:	55                   	push   %ebp
  67:	89 e5                	mov    %esp,%ebp
  69:	56                   	push   %esi
  6a:	53                   	push   %ebx
  6b:	8b 75 08             	mov    0x8(%ebp),%esi
  6e:	8b 55 0c             	mov    0xc(%ebp),%edx
  71:	89 f0                	mov    %esi,%eax
  73:	89 d1                	mov    %edx,%ecx
  75:	83 c2 01             	add    $0x1,%edx
  78:	89 c3                	mov    %eax,%ebx
  7a:	83 c0 01             	add    $0x1,%eax
  7d:	0f b6 09             	movzbl (%ecx),%ecx
  80:	88 0b                	mov    %cl,(%ebx)
  82:	84 c9                	test   %cl,%cl
  84:	75 ed                	jne    0x73
  86:	89 f0                	mov    %esi,%eax
  88:	5b                   	pop    %ebx
  89:	5e                   	pop    %esi
  8a:	5d                   	pop    %ebp
  8b:	c3                   	ret    
  8c:	f3 0f 1e fb          	endbr32 
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	8b 4d 08             	mov    0x8(%ebp),%ecx
  96:	8b 55 0c             	mov    0xc(%ebp),%edx
  99:	0f b6 01             	movzbl (%ecx),%eax
  9c:	84 c0                	test   %al,%al
  9e:	74 0c                	je     0xac
  a0:	3a 02                	cmp    (%edx),%al
  a2:	75 08                	jne    0xac
  a4:	83 c1 01             	add    $0x1,%ecx
  a7:	83 c2 01             	add    $0x1,%edx
  aa:	eb ed                	jmp    0x99
  ac:	0f b6 c0             	movzbl %al,%eax
  af:	0f b6 12             	movzbl (%edx),%edx
  b2:	29 d0                	sub    %edx,%eax
  b4:	5d                   	pop    %ebp
  b5:	c3                   	ret    
  b6:	f3 0f 1e fb          	endbr32 
  ba:	55                   	push   %ebp
  bb:	89 e5                	mov    %esp,%ebp
  bd:	8b 4d 08             	mov    0x8(%ebp),%ecx
  c0:	b8 00 00 00 00       	mov    $0x0,%eax
  c5:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  c9:	74 05                	je     0xd0
  cb:	83 c0 01             	add    $0x1,%eax
  ce:	eb f5                	jmp    0xc5
  d0:	5d                   	pop    %ebp
  d1:	c3                   	ret    
  d2:	f3 0f 1e fb          	endbr32 
  d6:	55                   	push   %ebp
  d7:	89 e5                	mov    %esp,%ebp
  d9:	57                   	push   %edi
  da:	8b 55 08             	mov    0x8(%ebp),%edx
  dd:	89 d7                	mov    %edx,%edi
  df:	8b 4d 10             	mov    0x10(%ebp),%ecx
  e2:	8b 45 0c             	mov    0xc(%ebp),%eax
  e5:	fc                   	cld    
  e6:	f3 aa                	rep stos %al,%es:(%edi)
  e8:	89 d0                	mov    %edx,%eax
  ea:	5f                   	pop    %edi
  eb:	5d                   	pop    %ebp
  ec:	c3                   	ret    
  ed:	f3 0f 1e fb          	endbr32 
  f1:	55                   	push   %ebp
  f2:	89 e5                	mov    %esp,%ebp
  f4:	8b 45 08             	mov    0x8(%ebp),%eax
  f7:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  fb:	0f b6 10             	movzbl (%eax),%edx
  fe:	84 d2                	test   %dl,%dl
 100:	74 09                	je     0x10b
 102:	38 ca                	cmp    %cl,%dl
 104:	74 0a                	je     0x110
 106:	83 c0 01             	add    $0x1,%eax
 109:	eb f0                	jmp    0xfb
 10b:	b8 00 00 00 00       	mov    $0x0,%eax
 110:	5d                   	pop    %ebp
 111:	c3                   	ret    
 112:	f3 0f 1e fb          	endbr32 
 116:	55                   	push   %ebp
 117:	89 e5                	mov    %esp,%ebp
 119:	57                   	push   %edi
 11a:	56                   	push   %esi
 11b:	53                   	push   %ebx
 11c:	83 ec 1c             	sub    $0x1c,%esp
 11f:	8b 7d 08             	mov    0x8(%ebp),%edi
 122:	bb 00 00 00 00       	mov    $0x0,%ebx
 127:	89 de                	mov    %ebx,%esi
 129:	83 c3 01             	add    $0x1,%ebx
 12c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 12f:	7d 2e                	jge    0x15f
 131:	83 ec 04             	sub    $0x4,%esp
 134:	6a 01                	push   $0x1
 136:	8d 45 e7             	lea    -0x19(%ebp),%eax
 139:	50                   	push   %eax
 13a:	6a 00                	push   $0x0
 13c:	e8 f6 00 00 00       	call   0x237
 141:	83 c4 10             	add    $0x10,%esp
 144:	85 c0                	test   %eax,%eax
 146:	7e 17                	jle    0x15f
 148:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 14c:	88 04 37             	mov    %al,(%edi,%esi,1)
 14f:	3c 0a                	cmp    $0xa,%al
 151:	0f 94 c2             	sete   %dl
 154:	3c 0d                	cmp    $0xd,%al
 156:	0f 94 c0             	sete   %al
 159:	08 c2                	or     %al,%dl
 15b:	74 ca                	je     0x127
 15d:	89 de                	mov    %ebx,%esi
 15f:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 163:	89 f8                	mov    %edi,%eax
 165:	8d 65 f4             	lea    -0xc(%ebp),%esp
 168:	5b                   	pop    %ebx
 169:	5e                   	pop    %esi
 16a:	5f                   	pop    %edi
 16b:	5d                   	pop    %ebp
 16c:	c3                   	ret    
 16d:	f3 0f 1e fb          	endbr32 
 171:	55                   	push   %ebp
 172:	89 e5                	mov    %esp,%ebp
 174:	56                   	push   %esi
 175:	53                   	push   %ebx
 176:	83 ec 08             	sub    $0x8,%esp
 179:	6a 00                	push   $0x0
 17b:	ff 75 08             	pushl  0x8(%ebp)
 17e:	e8 dc 00 00 00       	call   0x25f
 183:	83 c4 10             	add    $0x10,%esp
 186:	85 c0                	test   %eax,%eax
 188:	78 24                	js     0x1ae
 18a:	89 c3                	mov    %eax,%ebx
 18c:	83 ec 08             	sub    $0x8,%esp
 18f:	ff 75 0c             	pushl  0xc(%ebp)
 192:	50                   	push   %eax
 193:	e8 df 00 00 00       	call   0x277
 198:	89 c6                	mov    %eax,%esi
 19a:	89 1c 24             	mov    %ebx,(%esp)
 19d:	e8 a5 00 00 00       	call   0x247
 1a2:	83 c4 10             	add    $0x10,%esp
 1a5:	89 f0                	mov    %esi,%eax
 1a7:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1aa:	5b                   	pop    %ebx
 1ab:	5e                   	pop    %esi
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1b3:	eb f0                	jmp    0x1a5
 1b5:	f3 0f 1e fb          	endbr32 
 1b9:	55                   	push   %ebp
 1ba:	89 e5                	mov    %esp,%ebp
 1bc:	53                   	push   %ebx
 1bd:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1c0:	ba 00 00 00 00       	mov    $0x0,%edx
 1c5:	0f b6 01             	movzbl (%ecx),%eax
 1c8:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1cb:	80 fb 09             	cmp    $0x9,%bl
 1ce:	77 12                	ja     0x1e2
 1d0:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1d3:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1d6:	83 c1 01             	add    $0x1,%ecx
 1d9:	0f be c0             	movsbl %al,%eax
 1dc:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1e0:	eb e3                	jmp    0x1c5
 1e2:	89 d0                	mov    %edx,%eax
 1e4:	5b                   	pop    %ebx
 1e5:	5d                   	pop    %ebp
 1e6:	c3                   	ret    
 1e7:	f3 0f 1e fb          	endbr32 
 1eb:	55                   	push   %ebp
 1ec:	89 e5                	mov    %esp,%ebp
 1ee:	56                   	push   %esi
 1ef:	53                   	push   %ebx
 1f0:	8b 75 08             	mov    0x8(%ebp),%esi
 1f3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1f6:	8b 45 10             	mov    0x10(%ebp),%eax
 1f9:	89 f2                	mov    %esi,%edx
 1fb:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1fe:	85 c0                	test   %eax,%eax
 200:	7e 0f                	jle    0x211
 202:	0f b6 01             	movzbl (%ecx),%eax
 205:	88 02                	mov    %al,(%edx)
 207:	8d 49 01             	lea    0x1(%ecx),%ecx
 20a:	8d 52 01             	lea    0x1(%edx),%edx
 20d:	89 d8                	mov    %ebx,%eax
 20f:	eb ea                	jmp    0x1fb
 211:	89 f0                	mov    %esi,%eax
 213:	5b                   	pop    %ebx
 214:	5e                   	pop    %esi
 215:	5d                   	pop    %ebp
 216:	c3                   	ret    
 217:	b8 01 00 00 00       	mov    $0x1,%eax
 21c:	cd 40                	int    $0x40
 21e:	c3                   	ret    
 21f:	b8 02 00 00 00       	mov    $0x2,%eax
 224:	cd 40                	int    $0x40
 226:	c3                   	ret    
 227:	b8 03 00 00 00       	mov    $0x3,%eax
 22c:	cd 40                	int    $0x40
 22e:	c3                   	ret    
 22f:	b8 04 00 00 00       	mov    $0x4,%eax
 234:	cd 40                	int    $0x40
 236:	c3                   	ret    
 237:	b8 05 00 00 00       	mov    $0x5,%eax
 23c:	cd 40                	int    $0x40
 23e:	c3                   	ret    
 23f:	b8 10 00 00 00       	mov    $0x10,%eax
 244:	cd 40                	int    $0x40
 246:	c3                   	ret    
 247:	b8 15 00 00 00       	mov    $0x15,%eax
 24c:	cd 40                	int    $0x40
 24e:	c3                   	ret    
 24f:	b8 06 00 00 00       	mov    $0x6,%eax
 254:	cd 40                	int    $0x40
 256:	c3                   	ret    
 257:	b8 07 00 00 00       	mov    $0x7,%eax
 25c:	cd 40                	int    $0x40
 25e:	c3                   	ret    
 25f:	b8 0f 00 00 00       	mov    $0xf,%eax
 264:	cd 40                	int    $0x40
 266:	c3                   	ret    
 267:	b8 11 00 00 00       	mov    $0x11,%eax
 26c:	cd 40                	int    $0x40
 26e:	c3                   	ret    
 26f:	b8 12 00 00 00       	mov    $0x12,%eax
 274:	cd 40                	int    $0x40
 276:	c3                   	ret    
 277:	b8 08 00 00 00       	mov    $0x8,%eax
 27c:	cd 40                	int    $0x40
 27e:	c3                   	ret    
 27f:	b8 13 00 00 00       	mov    $0x13,%eax
 284:	cd 40                	int    $0x40
 286:	c3                   	ret    
 287:	b8 14 00 00 00       	mov    $0x14,%eax
 28c:	cd 40                	int    $0x40
 28e:	c3                   	ret    
 28f:	b8 09 00 00 00       	mov    $0x9,%eax
 294:	cd 40                	int    $0x40
 296:	c3                   	ret    
 297:	b8 0a 00 00 00       	mov    $0xa,%eax
 29c:	cd 40                	int    $0x40
 29e:	c3                   	ret    
 29f:	b8 0b 00 00 00       	mov    $0xb,%eax
 2a4:	cd 40                	int    $0x40
 2a6:	c3                   	ret    
 2a7:	b8 0c 00 00 00       	mov    $0xc,%eax
 2ac:	cd 40                	int    $0x40
 2ae:	c3                   	ret    
 2af:	b8 0d 00 00 00       	mov    $0xd,%eax
 2b4:	cd 40                	int    $0x40
 2b6:	c3                   	ret    
 2b7:	b8 0e 00 00 00       	mov    $0xe,%eax
 2bc:	cd 40                	int    $0x40
 2be:	c3                   	ret    
 2bf:	b8 16 00 00 00       	mov    $0x16,%eax
 2c4:	cd 40                	int    $0x40
 2c6:	c3                   	ret    
 2c7:	b8 17 00 00 00       	mov    $0x17,%eax
 2cc:	cd 40                	int    $0x40
 2ce:	c3                   	ret    
 2cf:	55                   	push   %ebp
 2d0:	89 e5                	mov    %esp,%ebp
 2d2:	83 ec 1c             	sub    $0x1c,%esp
 2d5:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2d8:	6a 01                	push   $0x1
 2da:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2dd:	52                   	push   %edx
 2de:	50                   	push   %eax
 2df:	e8 5b ff ff ff       	call   0x23f
 2e4:	83 c4 10             	add    $0x10,%esp
 2e7:	c9                   	leave  
 2e8:	c3                   	ret    
 2e9:	55                   	push   %ebp
 2ea:	89 e5                	mov    %esp,%ebp
 2ec:	57                   	push   %edi
 2ed:	56                   	push   %esi
 2ee:	53                   	push   %ebx
 2ef:	83 ec 2c             	sub    $0x2c,%esp
 2f2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2f5:	89 d6                	mov    %edx,%esi
 2f7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2fb:	0f 95 c2             	setne  %dl
 2fe:	89 f0                	mov    %esi,%eax
 300:	c1 e8 1f             	shr    $0x1f,%eax
 303:	84 c2                	test   %al,%dl
 305:	74 42                	je     0x349
 307:	f7 de                	neg    %esi
 309:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 310:	bb 00 00 00 00       	mov    $0x0,%ebx
 315:	89 f0                	mov    %esi,%eax
 317:	ba 00 00 00 00       	mov    $0x0,%edx
 31c:	f7 f1                	div    %ecx
 31e:	89 df                	mov    %ebx,%edi
 320:	83 c3 01             	add    $0x1,%ebx
 323:	0f b6 92 50 06 00 00 	movzbl 0x650(%edx),%edx
 32a:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 32e:	89 f2                	mov    %esi,%edx
 330:	89 c6                	mov    %eax,%esi
 332:	39 d1                	cmp    %edx,%ecx
 334:	76 df                	jbe    0x315
 336:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 33a:	74 2f                	je     0x36b
 33c:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 341:	8d 5f 02             	lea    0x2(%edi),%ebx
 344:	8b 75 d0             	mov    -0x30(%ebp),%esi
 347:	eb 15                	jmp    0x35e
 349:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 350:	eb be                	jmp    0x310
 352:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 357:	89 f0                	mov    %esi,%eax
 359:	e8 71 ff ff ff       	call   0x2cf
 35e:	83 eb 01             	sub    $0x1,%ebx
 361:	79 ef                	jns    0x352
 363:	83 c4 2c             	add    $0x2c,%esp
 366:	5b                   	pop    %ebx
 367:	5e                   	pop    %esi
 368:	5f                   	pop    %edi
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret    
 36b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 36e:	eb ee                	jmp    0x35e
 370:	f3 0f 1e fb          	endbr32 
 374:	55                   	push   %ebp
 375:	89 e5                	mov    %esp,%ebp
 377:	57                   	push   %edi
 378:	56                   	push   %esi
 379:	53                   	push   %ebx
 37a:	83 ec 1c             	sub    $0x1c,%esp
 37d:	8d 45 10             	lea    0x10(%ebp),%eax
 380:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 383:	be 00 00 00 00       	mov    $0x0,%esi
 388:	bb 00 00 00 00       	mov    $0x0,%ebx
 38d:	eb 14                	jmp    0x3a3
 38f:	89 fa                	mov    %edi,%edx
 391:	8b 45 08             	mov    0x8(%ebp),%eax
 394:	e8 36 ff ff ff       	call   0x2cf
 399:	eb 05                	jmp    0x3a0
 39b:	83 fe 25             	cmp    $0x25,%esi
 39e:	74 25                	je     0x3c5
 3a0:	83 c3 01             	add    $0x1,%ebx
 3a3:	8b 45 0c             	mov    0xc(%ebp),%eax
 3a6:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3aa:	84 c0                	test   %al,%al
 3ac:	0f 84 23 01 00 00    	je     0x4d5
 3b2:	0f be f8             	movsbl %al,%edi
 3b5:	0f b6 c0             	movzbl %al,%eax
 3b8:	85 f6                	test   %esi,%esi
 3ba:	75 df                	jne    0x39b
 3bc:	83 f8 25             	cmp    $0x25,%eax
 3bf:	75 ce                	jne    0x38f
 3c1:	89 c6                	mov    %eax,%esi
 3c3:	eb db                	jmp    0x3a0
 3c5:	83 f8 64             	cmp    $0x64,%eax
 3c8:	74 49                	je     0x413
 3ca:	83 f8 78             	cmp    $0x78,%eax
 3cd:	0f 94 c1             	sete   %cl
 3d0:	83 f8 70             	cmp    $0x70,%eax
 3d3:	0f 94 c2             	sete   %dl
 3d6:	08 d1                	or     %dl,%cl
 3d8:	75 63                	jne    0x43d
 3da:	83 f8 73             	cmp    $0x73,%eax
 3dd:	0f 84 84 00 00 00    	je     0x467
 3e3:	83 f8 63             	cmp    $0x63,%eax
 3e6:	0f 84 b7 00 00 00    	je     0x4a3
 3ec:	83 f8 25             	cmp    $0x25,%eax
 3ef:	0f 84 cc 00 00 00    	je     0x4c1
 3f5:	ba 25 00 00 00       	mov    $0x25,%edx
 3fa:	8b 45 08             	mov    0x8(%ebp),%eax
 3fd:	e8 cd fe ff ff       	call   0x2cf
 402:	89 fa                	mov    %edi,%edx
 404:	8b 45 08             	mov    0x8(%ebp),%eax
 407:	e8 c3 fe ff ff       	call   0x2cf
 40c:	be 00 00 00 00       	mov    $0x0,%esi
 411:	eb 8d                	jmp    0x3a0
 413:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 416:	8b 17                	mov    (%edi),%edx
 418:	83 ec 0c             	sub    $0xc,%esp
 41b:	6a 01                	push   $0x1
 41d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 422:	8b 45 08             	mov    0x8(%ebp),%eax
 425:	e8 bf fe ff ff       	call   0x2e9
 42a:	83 c7 04             	add    $0x4,%edi
 42d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 430:	83 c4 10             	add    $0x10,%esp
 433:	be 00 00 00 00       	mov    $0x0,%esi
 438:	e9 63 ff ff ff       	jmp    0x3a0
 43d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 440:	8b 17                	mov    (%edi),%edx
 442:	83 ec 0c             	sub    $0xc,%esp
 445:	6a 00                	push   $0x0
 447:	b9 10 00 00 00       	mov    $0x10,%ecx
 44c:	8b 45 08             	mov    0x8(%ebp),%eax
 44f:	e8 95 fe ff ff       	call   0x2e9
 454:	83 c7 04             	add    $0x4,%edi
 457:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 45a:	83 c4 10             	add    $0x10,%esp
 45d:	be 00 00 00 00       	mov    $0x0,%esi
 462:	e9 39 ff ff ff       	jmp    0x3a0
 467:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 46a:	8b 30                	mov    (%eax),%esi
 46c:	83 c0 04             	add    $0x4,%eax
 46f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 472:	85 f6                	test   %esi,%esi
 474:	75 28                	jne    0x49e
 476:	be 47 06 00 00       	mov    $0x647,%esi
 47b:	8b 7d 08             	mov    0x8(%ebp),%edi
 47e:	eb 0d                	jmp    0x48d
 480:	0f be d2             	movsbl %dl,%edx
 483:	89 f8                	mov    %edi,%eax
 485:	e8 45 fe ff ff       	call   0x2cf
 48a:	83 c6 01             	add    $0x1,%esi
 48d:	0f b6 16             	movzbl (%esi),%edx
 490:	84 d2                	test   %dl,%dl
 492:	75 ec                	jne    0x480
 494:	be 00 00 00 00       	mov    $0x0,%esi
 499:	e9 02 ff ff ff       	jmp    0x3a0
 49e:	8b 7d 08             	mov    0x8(%ebp),%edi
 4a1:	eb ea                	jmp    0x48d
 4a3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4a6:	0f be 17             	movsbl (%edi),%edx
 4a9:	8b 45 08             	mov    0x8(%ebp),%eax
 4ac:	e8 1e fe ff ff       	call   0x2cf
 4b1:	83 c7 04             	add    $0x4,%edi
 4b4:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4b7:	be 00 00 00 00       	mov    $0x0,%esi
 4bc:	e9 df fe ff ff       	jmp    0x3a0
 4c1:	89 fa                	mov    %edi,%edx
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	e8 04 fe ff ff       	call   0x2cf
 4cb:	be 00 00 00 00       	mov    $0x0,%esi
 4d0:	e9 cb fe ff ff       	jmp    0x3a0
 4d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4d8:	5b                   	pop    %ebx
 4d9:	5e                   	pop    %esi
 4da:	5f                   	pop    %edi
 4db:	5d                   	pop    %ebp
 4dc:	c3                   	ret    
 4dd:	f3 0f 1e fb          	endbr32 
 4e1:	55                   	push   %ebp
 4e2:	89 e5                	mov    %esp,%ebp
 4e4:	57                   	push   %edi
 4e5:	56                   	push   %esi
 4e6:	53                   	push   %ebx
 4e7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4ea:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4ed:	a1 f0 08 00 00       	mov    0x8f0,%eax
 4f2:	eb 02                	jmp    0x4f6
 4f4:	89 d0                	mov    %edx,%eax
 4f6:	39 c8                	cmp    %ecx,%eax
 4f8:	73 04                	jae    0x4fe
 4fa:	39 08                	cmp    %ecx,(%eax)
 4fc:	77 12                	ja     0x510
 4fe:	8b 10                	mov    (%eax),%edx
 500:	39 c2                	cmp    %eax,%edx
 502:	77 f0                	ja     0x4f4
 504:	39 c8                	cmp    %ecx,%eax
 506:	72 08                	jb     0x510
 508:	39 ca                	cmp    %ecx,%edx
 50a:	77 04                	ja     0x510
 50c:	89 d0                	mov    %edx,%eax
 50e:	eb e6                	jmp    0x4f6
 510:	8b 73 fc             	mov    -0x4(%ebx),%esi
 513:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 516:	8b 10                	mov    (%eax),%edx
 518:	39 d7                	cmp    %edx,%edi
 51a:	74 19                	je     0x535
 51c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 51f:	8b 50 04             	mov    0x4(%eax),%edx
 522:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 525:	39 ce                	cmp    %ecx,%esi
 527:	74 1b                	je     0x544
 529:	89 08                	mov    %ecx,(%eax)
 52b:	a3 f0 08 00 00       	mov    %eax,0x8f0
 530:	5b                   	pop    %ebx
 531:	5e                   	pop    %esi
 532:	5f                   	pop    %edi
 533:	5d                   	pop    %ebp
 534:	c3                   	ret    
 535:	03 72 04             	add    0x4(%edx),%esi
 538:	89 73 fc             	mov    %esi,-0x4(%ebx)
 53b:	8b 10                	mov    (%eax),%edx
 53d:	8b 12                	mov    (%edx),%edx
 53f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 542:	eb db                	jmp    0x51f
 544:	03 53 fc             	add    -0x4(%ebx),%edx
 547:	89 50 04             	mov    %edx,0x4(%eax)
 54a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 54d:	89 10                	mov    %edx,(%eax)
 54f:	eb da                	jmp    0x52b
 551:	55                   	push   %ebp
 552:	89 e5                	mov    %esp,%ebp
 554:	53                   	push   %ebx
 555:	83 ec 04             	sub    $0x4,%esp
 558:	89 c3                	mov    %eax,%ebx
 55a:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 55f:	77 05                	ja     0x566
 561:	bb 00 10 00 00       	mov    $0x1000,%ebx
 566:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 56d:	83 ec 0c             	sub    $0xc,%esp
 570:	50                   	push   %eax
 571:	e8 31 fd ff ff       	call   0x2a7
 576:	83 c4 10             	add    $0x10,%esp
 579:	83 f8 ff             	cmp    $0xffffffff,%eax
 57c:	74 1c                	je     0x59a
 57e:	89 58 04             	mov    %ebx,0x4(%eax)
 581:	83 c0 08             	add    $0x8,%eax
 584:	83 ec 0c             	sub    $0xc,%esp
 587:	50                   	push   %eax
 588:	e8 50 ff ff ff       	call   0x4dd
 58d:	a1 f0 08 00 00       	mov    0x8f0,%eax
 592:	83 c4 10             	add    $0x10,%esp
 595:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 598:	c9                   	leave  
 599:	c3                   	ret    
 59a:	b8 00 00 00 00       	mov    $0x0,%eax
 59f:	eb f4                	jmp    0x595
 5a1:	f3 0f 1e fb          	endbr32 
 5a5:	55                   	push   %ebp
 5a6:	89 e5                	mov    %esp,%ebp
 5a8:	53                   	push   %ebx
 5a9:	83 ec 04             	sub    $0x4,%esp
 5ac:	8b 45 08             	mov    0x8(%ebp),%eax
 5af:	8d 58 07             	lea    0x7(%eax),%ebx
 5b2:	c1 eb 03             	shr    $0x3,%ebx
 5b5:	83 c3 01             	add    $0x1,%ebx
 5b8:	8b 0d f0 08 00 00    	mov    0x8f0,%ecx
 5be:	85 c9                	test   %ecx,%ecx
 5c0:	74 04                	je     0x5c6
 5c2:	8b 01                	mov    (%ecx),%eax
 5c4:	eb 4b                	jmp    0x611
 5c6:	c7 05 f0 08 00 00 f4 	movl   $0x8f4,0x8f0
 5cd:	08 00 00 
 5d0:	c7 05 f4 08 00 00 f4 	movl   $0x8f4,0x8f4
 5d7:	08 00 00 
 5da:	c7 05 f8 08 00 00 00 	movl   $0x0,0x8f8
 5e1:	00 00 00 
 5e4:	b9 f4 08 00 00       	mov    $0x8f4,%ecx
 5e9:	eb d7                	jmp    0x5c2
 5eb:	74 1a                	je     0x607
 5ed:	29 da                	sub    %ebx,%edx
 5ef:	89 50 04             	mov    %edx,0x4(%eax)
 5f2:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5f5:	89 58 04             	mov    %ebx,0x4(%eax)
 5f8:	89 0d f0 08 00 00    	mov    %ecx,0x8f0
 5fe:	83 c0 08             	add    $0x8,%eax
 601:	83 c4 04             	add    $0x4,%esp
 604:	5b                   	pop    %ebx
 605:	5d                   	pop    %ebp
 606:	c3                   	ret    
 607:	8b 10                	mov    (%eax),%edx
 609:	89 11                	mov    %edx,(%ecx)
 60b:	eb eb                	jmp    0x5f8
 60d:	89 c1                	mov    %eax,%ecx
 60f:	8b 00                	mov    (%eax),%eax
 611:	8b 50 04             	mov    0x4(%eax),%edx
 614:	39 da                	cmp    %ebx,%edx
 616:	73 d3                	jae    0x5eb
 618:	39 05 f0 08 00 00    	cmp    %eax,0x8f0
 61e:	75 ed                	jne    0x60d
 620:	89 d8                	mov    %ebx,%eax
 622:	e8 2a ff ff ff       	call   0x551
 627:	85 c0                	test   %eax,%eax
 629:	75 e2                	jne    0x60d
 62b:	eb d4                	jmp    0x601
