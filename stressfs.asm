
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
  2e:	68 fc 06 00 00       	push   $0x6fc
  33:	6a 01                	push   $0x1
  35:	e8 02 04 00 00       	call   0x43c
  3a:	83 c4 0c             	add    $0xc,%esp
  3d:	68 00 02 00 00       	push   $0x200
  42:	6a 61                	push   $0x61
  44:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  4a:	50                   	push   %eax
  4b:	e8 4e 01 00 00       	call   0x19e
  50:	83 c4 10             	add    $0x10,%esp
  53:	bb 00 00 00 00       	mov    $0x0,%ebx
  58:	83 fb 03             	cmp    $0x3,%ebx
  5b:	7f 0e                	jg     0x6b
  5d:	e8 81 02 00 00       	call   0x2e3
  62:	85 c0                	test   %eax,%eax
  64:	7f 05                	jg     0x6b
  66:	83 c3 01             	add    $0x1,%ebx
  69:	eb ed                	jmp    0x58
  6b:	83 ec 04             	sub    $0x4,%esp
  6e:	53                   	push   %ebx
  6f:	68 0f 07 00 00       	push   $0x70f
  74:	6a 01                	push   $0x1
  76:	e8 c1 03 00 00       	call   0x43c
  7b:	00 5d e6             	add    %bl,-0x1a(%ebp)
  7e:	83 c4 08             	add    $0x8,%esp
  81:	68 02 02 00 00       	push   $0x202
  86:	8d 45 de             	lea    -0x22(%ebp),%eax
  89:	50                   	push   %eax
  8a:	e8 9c 02 00 00       	call   0x32b
  8f:	89 c6                	mov    %eax,%esi
  91:	83 c4 10             	add    $0x10,%esp
  94:	bb 00 00 00 00       	mov    $0x0,%ebx
  99:	eb 1b                	jmp    0xb6
  9b:	83 ec 04             	sub    $0x4,%esp
  9e:	68 00 02 00 00       	push   $0x200
  a3:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  a9:	50                   	push   %eax
  aa:	56                   	push   %esi
  ab:	e8 5b 02 00 00       	call   0x30b
  b0:	83 c3 01             	add    $0x1,%ebx
  b3:	83 c4 10             	add    $0x10,%esp
  b6:	83 fb 13             	cmp    $0x13,%ebx
  b9:	7e e0                	jle    0x9b
  bb:	83 ec 0c             	sub    $0xc,%esp
  be:	56                   	push   %esi
  bf:	e8 4f 02 00 00       	call   0x313
  c4:	83 c4 08             	add    $0x8,%esp
  c7:	68 19 07 00 00       	push   $0x719
  cc:	6a 01                	push   $0x1
  ce:	e8 69 03 00 00       	call   0x43c
  d3:	83 c4 08             	add    $0x8,%esp
  d6:	6a 00                	push   $0x0
  d8:	8d 45 de             	lea    -0x22(%ebp),%eax
  db:	50                   	push   %eax
  dc:	e8 4a 02 00 00       	call   0x32b
  e1:	89 c6                	mov    %eax,%esi
  e3:	83 c4 10             	add    $0x10,%esp
  e6:	bb 00 00 00 00       	mov    $0x0,%ebx
  eb:	eb 1b                	jmp    0x108
  ed:	83 ec 04             	sub    $0x4,%esp
  f0:	68 00 02 00 00       	push   $0x200
  f5:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  fb:	50                   	push   %eax
  fc:	56                   	push   %esi
  fd:	e8 01 02 00 00       	call   0x303
 102:	83 c3 01             	add    $0x1,%ebx
 105:	83 c4 10             	add    $0x10,%esp
 108:	83 fb 13             	cmp    $0x13,%ebx
 10b:	7e e0                	jle    0xed
 10d:	83 ec 0c             	sub    $0xc,%esp
 110:	56                   	push   %esi
 111:	e8 fd 01 00 00       	call   0x313
 116:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 11d:	e8 d1 01 00 00       	call   0x2f3
 122:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 129:	e8 bd 01 00 00       	call   0x2eb
 12e:	f3 0f 1e fb          	endbr32 
 132:	55                   	push   %ebp
 133:	89 e5                	mov    %esp,%ebp
 135:	56                   	push   %esi
 136:	53                   	push   %ebx
 137:	8b 75 08             	mov    0x8(%ebp),%esi
 13a:	8b 55 0c             	mov    0xc(%ebp),%edx
 13d:	89 f0                	mov    %esi,%eax
 13f:	89 d1                	mov    %edx,%ecx
 141:	83 c2 01             	add    $0x1,%edx
 144:	89 c3                	mov    %eax,%ebx
 146:	83 c0 01             	add    $0x1,%eax
 149:	0f b6 09             	movzbl (%ecx),%ecx
 14c:	88 0b                	mov    %cl,(%ebx)
 14e:	84 c9                	test   %cl,%cl
 150:	75 ed                	jne    0x13f
 152:	89 f0                	mov    %esi,%eax
 154:	5b                   	pop    %ebx
 155:	5e                   	pop    %esi
 156:	5d                   	pop    %ebp
 157:	c3                   	ret    
 158:	f3 0f 1e fb          	endbr32 
 15c:	55                   	push   %ebp
 15d:	89 e5                	mov    %esp,%ebp
 15f:	8b 4d 08             	mov    0x8(%ebp),%ecx
 162:	8b 55 0c             	mov    0xc(%ebp),%edx
 165:	0f b6 01             	movzbl (%ecx),%eax
 168:	84 c0                	test   %al,%al
 16a:	74 0c                	je     0x178
 16c:	3a 02                	cmp    (%edx),%al
 16e:	75 08                	jne    0x178
 170:	83 c1 01             	add    $0x1,%ecx
 173:	83 c2 01             	add    $0x1,%edx
 176:	eb ed                	jmp    0x165
 178:	0f b6 c0             	movzbl %al,%eax
 17b:	0f b6 12             	movzbl (%edx),%edx
 17e:	29 d0                	sub    %edx,%eax
 180:	5d                   	pop    %ebp
 181:	c3                   	ret    
 182:	f3 0f 1e fb          	endbr32 
 186:	55                   	push   %ebp
 187:	89 e5                	mov    %esp,%ebp
 189:	8b 4d 08             	mov    0x8(%ebp),%ecx
 18c:	b8 00 00 00 00       	mov    $0x0,%eax
 191:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 195:	74 05                	je     0x19c
 197:	83 c0 01             	add    $0x1,%eax
 19a:	eb f5                	jmp    0x191
 19c:	5d                   	pop    %ebp
 19d:	c3                   	ret    
 19e:	f3 0f 1e fb          	endbr32 
 1a2:	55                   	push   %ebp
 1a3:	89 e5                	mov    %esp,%ebp
 1a5:	57                   	push   %edi
 1a6:	8b 55 08             	mov    0x8(%ebp),%edx
 1a9:	89 d7                	mov    %edx,%edi
 1ab:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ae:	8b 45 0c             	mov    0xc(%ebp),%eax
 1b1:	fc                   	cld    
 1b2:	f3 aa                	rep stos %al,%es:(%edi)
 1b4:	89 d0                	mov    %edx,%eax
 1b6:	5f                   	pop    %edi
 1b7:	5d                   	pop    %ebp
 1b8:	c3                   	ret    
 1b9:	f3 0f 1e fb          	endbr32 
 1bd:	55                   	push   %ebp
 1be:	89 e5                	mov    %esp,%ebp
 1c0:	8b 45 08             	mov    0x8(%ebp),%eax
 1c3:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1c7:	0f b6 10             	movzbl (%eax),%edx
 1ca:	84 d2                	test   %dl,%dl
 1cc:	74 09                	je     0x1d7
 1ce:	38 ca                	cmp    %cl,%dl
 1d0:	74 0a                	je     0x1dc
 1d2:	83 c0 01             	add    $0x1,%eax
 1d5:	eb f0                	jmp    0x1c7
 1d7:	b8 00 00 00 00       	mov    $0x0,%eax
 1dc:	5d                   	pop    %ebp
 1dd:	c3                   	ret    
 1de:	f3 0f 1e fb          	endbr32 
 1e2:	55                   	push   %ebp
 1e3:	89 e5                	mov    %esp,%ebp
 1e5:	57                   	push   %edi
 1e6:	56                   	push   %esi
 1e7:	53                   	push   %ebx
 1e8:	83 ec 1c             	sub    $0x1c,%esp
 1eb:	8b 7d 08             	mov    0x8(%ebp),%edi
 1ee:	bb 00 00 00 00       	mov    $0x0,%ebx
 1f3:	89 de                	mov    %ebx,%esi
 1f5:	83 c3 01             	add    $0x1,%ebx
 1f8:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1fb:	7d 2e                	jge    0x22b
 1fd:	83 ec 04             	sub    $0x4,%esp
 200:	6a 01                	push   $0x1
 202:	8d 45 e7             	lea    -0x19(%ebp),%eax
 205:	50                   	push   %eax
 206:	6a 00                	push   $0x0
 208:	e8 f6 00 00 00       	call   0x303
 20d:	83 c4 10             	add    $0x10,%esp
 210:	85 c0                	test   %eax,%eax
 212:	7e 17                	jle    0x22b
 214:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 218:	88 04 37             	mov    %al,(%edi,%esi,1)
 21b:	3c 0a                	cmp    $0xa,%al
 21d:	0f 94 c2             	sete   %dl
 220:	3c 0d                	cmp    $0xd,%al
 222:	0f 94 c0             	sete   %al
 225:	08 c2                	or     %al,%dl
 227:	74 ca                	je     0x1f3
 229:	89 de                	mov    %ebx,%esi
 22b:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 22f:	89 f8                	mov    %edi,%eax
 231:	8d 65 f4             	lea    -0xc(%ebp),%esp
 234:	5b                   	pop    %ebx
 235:	5e                   	pop    %esi
 236:	5f                   	pop    %edi
 237:	5d                   	pop    %ebp
 238:	c3                   	ret    
 239:	f3 0f 1e fb          	endbr32 
 23d:	55                   	push   %ebp
 23e:	89 e5                	mov    %esp,%ebp
 240:	56                   	push   %esi
 241:	53                   	push   %ebx
 242:	83 ec 08             	sub    $0x8,%esp
 245:	6a 00                	push   $0x0
 247:	ff 75 08             	pushl  0x8(%ebp)
 24a:	e8 dc 00 00 00       	call   0x32b
 24f:	83 c4 10             	add    $0x10,%esp
 252:	85 c0                	test   %eax,%eax
 254:	78 24                	js     0x27a
 256:	89 c3                	mov    %eax,%ebx
 258:	83 ec 08             	sub    $0x8,%esp
 25b:	ff 75 0c             	pushl  0xc(%ebp)
 25e:	50                   	push   %eax
 25f:	e8 df 00 00 00       	call   0x343
 264:	89 c6                	mov    %eax,%esi
 266:	89 1c 24             	mov    %ebx,(%esp)
 269:	e8 a5 00 00 00       	call   0x313
 26e:	83 c4 10             	add    $0x10,%esp
 271:	89 f0                	mov    %esi,%eax
 273:	8d 65 f8             	lea    -0x8(%ebp),%esp
 276:	5b                   	pop    %ebx
 277:	5e                   	pop    %esi
 278:	5d                   	pop    %ebp
 279:	c3                   	ret    
 27a:	be ff ff ff ff       	mov    $0xffffffff,%esi
 27f:	eb f0                	jmp    0x271
 281:	f3 0f 1e fb          	endbr32 
 285:	55                   	push   %ebp
 286:	89 e5                	mov    %esp,%ebp
 288:	53                   	push   %ebx
 289:	8b 4d 08             	mov    0x8(%ebp),%ecx
 28c:	ba 00 00 00 00       	mov    $0x0,%edx
 291:	0f b6 01             	movzbl (%ecx),%eax
 294:	8d 58 d0             	lea    -0x30(%eax),%ebx
 297:	80 fb 09             	cmp    $0x9,%bl
 29a:	77 12                	ja     0x2ae
 29c:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 29f:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2a2:	83 c1 01             	add    $0x1,%ecx
 2a5:	0f be c0             	movsbl %al,%eax
 2a8:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2ac:	eb e3                	jmp    0x291
 2ae:	89 d0                	mov    %edx,%eax
 2b0:	5b                   	pop    %ebx
 2b1:	5d                   	pop    %ebp
 2b2:	c3                   	ret    
 2b3:	f3 0f 1e fb          	endbr32 
 2b7:	55                   	push   %ebp
 2b8:	89 e5                	mov    %esp,%ebp
 2ba:	56                   	push   %esi
 2bb:	53                   	push   %ebx
 2bc:	8b 75 08             	mov    0x8(%ebp),%esi
 2bf:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2c2:	8b 45 10             	mov    0x10(%ebp),%eax
 2c5:	89 f2                	mov    %esi,%edx
 2c7:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2ca:	85 c0                	test   %eax,%eax
 2cc:	7e 0f                	jle    0x2dd
 2ce:	0f b6 01             	movzbl (%ecx),%eax
 2d1:	88 02                	mov    %al,(%edx)
 2d3:	8d 49 01             	lea    0x1(%ecx),%ecx
 2d6:	8d 52 01             	lea    0x1(%edx),%edx
 2d9:	89 d8                	mov    %ebx,%eax
 2db:	eb ea                	jmp    0x2c7
 2dd:	89 f0                	mov    %esi,%eax
 2df:	5b                   	pop    %ebx
 2e0:	5e                   	pop    %esi
 2e1:	5d                   	pop    %ebp
 2e2:	c3                   	ret    
 2e3:	b8 01 00 00 00       	mov    $0x1,%eax
 2e8:	cd 40                	int    $0x40
 2ea:	c3                   	ret    
 2eb:	b8 02 00 00 00       	mov    $0x2,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret    
 2f3:	b8 03 00 00 00       	mov    $0x3,%eax
 2f8:	cd 40                	int    $0x40
 2fa:	c3                   	ret    
 2fb:	b8 04 00 00 00       	mov    $0x4,%eax
 300:	cd 40                	int    $0x40
 302:	c3                   	ret    
 303:	b8 05 00 00 00       	mov    $0x5,%eax
 308:	cd 40                	int    $0x40
 30a:	c3                   	ret    
 30b:	b8 10 00 00 00       	mov    $0x10,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret    
 313:	b8 15 00 00 00       	mov    $0x15,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret    
 31b:	b8 06 00 00 00       	mov    $0x6,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret    
 323:	b8 07 00 00 00       	mov    $0x7,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret    
 32b:	b8 0f 00 00 00       	mov    $0xf,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret    
 333:	b8 11 00 00 00       	mov    $0x11,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret    
 33b:	b8 12 00 00 00       	mov    $0x12,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret    
 343:	b8 08 00 00 00       	mov    $0x8,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret    
 34b:	b8 13 00 00 00       	mov    $0x13,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret    
 353:	b8 14 00 00 00       	mov    $0x14,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret    
 35b:	b8 09 00 00 00       	mov    $0x9,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret    
 363:	b8 0a 00 00 00       	mov    $0xa,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret    
 36b:	b8 0b 00 00 00       	mov    $0xb,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret    
 373:	b8 0c 00 00 00       	mov    $0xc,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret    
 37b:	b8 0d 00 00 00       	mov    $0xd,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret    
 383:	b8 0e 00 00 00       	mov    $0xe,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret    
 38b:	b8 16 00 00 00       	mov    $0x16,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret    
 393:	b8 17 00 00 00       	mov    $0x17,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret    
 39b:	55                   	push   %ebp
 39c:	89 e5                	mov    %esp,%ebp
 39e:	83 ec 1c             	sub    $0x1c,%esp
 3a1:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3a4:	6a 01                	push   $0x1
 3a6:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3a9:	52                   	push   %edx
 3aa:	50                   	push   %eax
 3ab:	e8 5b ff ff ff       	call   0x30b
 3b0:	83 c4 10             	add    $0x10,%esp
 3b3:	c9                   	leave  
 3b4:	c3                   	ret    
 3b5:	55                   	push   %ebp
 3b6:	89 e5                	mov    %esp,%ebp
 3b8:	57                   	push   %edi
 3b9:	56                   	push   %esi
 3ba:	53                   	push   %ebx
 3bb:	83 ec 2c             	sub    $0x2c,%esp
 3be:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3c1:	89 d6                	mov    %edx,%esi
 3c3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3c7:	0f 95 c2             	setne  %dl
 3ca:	89 f0                	mov    %esi,%eax
 3cc:	c1 e8 1f             	shr    $0x1f,%eax
 3cf:	84 c2                	test   %al,%dl
 3d1:	74 42                	je     0x415
 3d3:	f7 de                	neg    %esi
 3d5:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3dc:	bb 00 00 00 00       	mov    $0x0,%ebx
 3e1:	89 f0                	mov    %esi,%eax
 3e3:	ba 00 00 00 00       	mov    $0x0,%edx
 3e8:	f7 f1                	div    %ecx
 3ea:	89 df                	mov    %ebx,%edi
 3ec:	83 c3 01             	add    $0x1,%ebx
 3ef:	0f b6 92 28 07 00 00 	movzbl 0x728(%edx),%edx
 3f6:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3fa:	89 f2                	mov    %esi,%edx
 3fc:	89 c6                	mov    %eax,%esi
 3fe:	39 d1                	cmp    %edx,%ecx
 400:	76 df                	jbe    0x3e1
 402:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 406:	74 2f                	je     0x437
 408:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 40d:	8d 5f 02             	lea    0x2(%edi),%ebx
 410:	8b 75 d0             	mov    -0x30(%ebp),%esi
 413:	eb 15                	jmp    0x42a
 415:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 41c:	eb be                	jmp    0x3dc
 41e:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 423:	89 f0                	mov    %esi,%eax
 425:	e8 71 ff ff ff       	call   0x39b
 42a:	83 eb 01             	sub    $0x1,%ebx
 42d:	79 ef                	jns    0x41e
 42f:	83 c4 2c             	add    $0x2c,%esp
 432:	5b                   	pop    %ebx
 433:	5e                   	pop    %esi
 434:	5f                   	pop    %edi
 435:	5d                   	pop    %ebp
 436:	c3                   	ret    
 437:	8b 75 d0             	mov    -0x30(%ebp),%esi
 43a:	eb ee                	jmp    0x42a
 43c:	f3 0f 1e fb          	endbr32 
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	56                   	push   %esi
 445:	53                   	push   %ebx
 446:	83 ec 1c             	sub    $0x1c,%esp
 449:	8d 45 10             	lea    0x10(%ebp),%eax
 44c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 44f:	be 00 00 00 00       	mov    $0x0,%esi
 454:	bb 00 00 00 00       	mov    $0x0,%ebx
 459:	eb 14                	jmp    0x46f
 45b:	89 fa                	mov    %edi,%edx
 45d:	8b 45 08             	mov    0x8(%ebp),%eax
 460:	e8 36 ff ff ff       	call   0x39b
 465:	eb 05                	jmp    0x46c
 467:	83 fe 25             	cmp    $0x25,%esi
 46a:	74 25                	je     0x491
 46c:	83 c3 01             	add    $0x1,%ebx
 46f:	8b 45 0c             	mov    0xc(%ebp),%eax
 472:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 476:	84 c0                	test   %al,%al
 478:	0f 84 23 01 00 00    	je     0x5a1
 47e:	0f be f8             	movsbl %al,%edi
 481:	0f b6 c0             	movzbl %al,%eax
 484:	85 f6                	test   %esi,%esi
 486:	75 df                	jne    0x467
 488:	83 f8 25             	cmp    $0x25,%eax
 48b:	75 ce                	jne    0x45b
 48d:	89 c6                	mov    %eax,%esi
 48f:	eb db                	jmp    0x46c
 491:	83 f8 64             	cmp    $0x64,%eax
 494:	74 49                	je     0x4df
 496:	83 f8 78             	cmp    $0x78,%eax
 499:	0f 94 c1             	sete   %cl
 49c:	83 f8 70             	cmp    $0x70,%eax
 49f:	0f 94 c2             	sete   %dl
 4a2:	08 d1                	or     %dl,%cl
 4a4:	75 63                	jne    0x509
 4a6:	83 f8 73             	cmp    $0x73,%eax
 4a9:	0f 84 84 00 00 00    	je     0x533
 4af:	83 f8 63             	cmp    $0x63,%eax
 4b2:	0f 84 b7 00 00 00    	je     0x56f
 4b8:	83 f8 25             	cmp    $0x25,%eax
 4bb:	0f 84 cc 00 00 00    	je     0x58d
 4c1:	ba 25 00 00 00       	mov    $0x25,%edx
 4c6:	8b 45 08             	mov    0x8(%ebp),%eax
 4c9:	e8 cd fe ff ff       	call   0x39b
 4ce:	89 fa                	mov    %edi,%edx
 4d0:	8b 45 08             	mov    0x8(%ebp),%eax
 4d3:	e8 c3 fe ff ff       	call   0x39b
 4d8:	be 00 00 00 00       	mov    $0x0,%esi
 4dd:	eb 8d                	jmp    0x46c
 4df:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4e2:	8b 17                	mov    (%edi),%edx
 4e4:	83 ec 0c             	sub    $0xc,%esp
 4e7:	6a 01                	push   $0x1
 4e9:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4ee:	8b 45 08             	mov    0x8(%ebp),%eax
 4f1:	e8 bf fe ff ff       	call   0x3b5
 4f6:	83 c7 04             	add    $0x4,%edi
 4f9:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4fc:	83 c4 10             	add    $0x10,%esp
 4ff:	be 00 00 00 00       	mov    $0x0,%esi
 504:	e9 63 ff ff ff       	jmp    0x46c
 509:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 50c:	8b 17                	mov    (%edi),%edx
 50e:	83 ec 0c             	sub    $0xc,%esp
 511:	6a 00                	push   $0x0
 513:	b9 10 00 00 00       	mov    $0x10,%ecx
 518:	8b 45 08             	mov    0x8(%ebp),%eax
 51b:	e8 95 fe ff ff       	call   0x3b5
 520:	83 c7 04             	add    $0x4,%edi
 523:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 526:	83 c4 10             	add    $0x10,%esp
 529:	be 00 00 00 00       	mov    $0x0,%esi
 52e:	e9 39 ff ff ff       	jmp    0x46c
 533:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 536:	8b 30                	mov    (%eax),%esi
 538:	83 c0 04             	add    $0x4,%eax
 53b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 53e:	85 f6                	test   %esi,%esi
 540:	75 28                	jne    0x56a
 542:	be 1f 07 00 00       	mov    $0x71f,%esi
 547:	8b 7d 08             	mov    0x8(%ebp),%edi
 54a:	eb 0d                	jmp    0x559
 54c:	0f be d2             	movsbl %dl,%edx
 54f:	89 f8                	mov    %edi,%eax
 551:	e8 45 fe ff ff       	call   0x39b
 556:	83 c6 01             	add    $0x1,%esi
 559:	0f b6 16             	movzbl (%esi),%edx
 55c:	84 d2                	test   %dl,%dl
 55e:	75 ec                	jne    0x54c
 560:	be 00 00 00 00       	mov    $0x0,%esi
 565:	e9 02 ff ff ff       	jmp    0x46c
 56a:	8b 7d 08             	mov    0x8(%ebp),%edi
 56d:	eb ea                	jmp    0x559
 56f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 572:	0f be 17             	movsbl (%edi),%edx
 575:	8b 45 08             	mov    0x8(%ebp),%eax
 578:	e8 1e fe ff ff       	call   0x39b
 57d:	83 c7 04             	add    $0x4,%edi
 580:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 583:	be 00 00 00 00       	mov    $0x0,%esi
 588:	e9 df fe ff ff       	jmp    0x46c
 58d:	89 fa                	mov    %edi,%edx
 58f:	8b 45 08             	mov    0x8(%ebp),%eax
 592:	e8 04 fe ff ff       	call   0x39b
 597:	be 00 00 00 00       	mov    $0x0,%esi
 59c:	e9 cb fe ff ff       	jmp    0x46c
 5a1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5a4:	5b                   	pop    %ebx
 5a5:	5e                   	pop    %esi
 5a6:	5f                   	pop    %edi
 5a7:	5d                   	pop    %ebp
 5a8:	c3                   	ret    
 5a9:	f3 0f 1e fb          	endbr32 
 5ad:	55                   	push   %ebp
 5ae:	89 e5                	mov    %esp,%ebp
 5b0:	57                   	push   %edi
 5b1:	56                   	push   %esi
 5b2:	53                   	push   %ebx
 5b3:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5b6:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5b9:	a1 d0 09 00 00       	mov    0x9d0,%eax
 5be:	eb 02                	jmp    0x5c2
 5c0:	89 d0                	mov    %edx,%eax
 5c2:	39 c8                	cmp    %ecx,%eax
 5c4:	73 04                	jae    0x5ca
 5c6:	39 08                	cmp    %ecx,(%eax)
 5c8:	77 12                	ja     0x5dc
 5ca:	8b 10                	mov    (%eax),%edx
 5cc:	39 c2                	cmp    %eax,%edx
 5ce:	77 f0                	ja     0x5c0
 5d0:	39 c8                	cmp    %ecx,%eax
 5d2:	72 08                	jb     0x5dc
 5d4:	39 ca                	cmp    %ecx,%edx
 5d6:	77 04                	ja     0x5dc
 5d8:	89 d0                	mov    %edx,%eax
 5da:	eb e6                	jmp    0x5c2
 5dc:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5df:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5e2:	8b 10                	mov    (%eax),%edx
 5e4:	39 d7                	cmp    %edx,%edi
 5e6:	74 19                	je     0x601
 5e8:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5eb:	8b 50 04             	mov    0x4(%eax),%edx
 5ee:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5f1:	39 ce                	cmp    %ecx,%esi
 5f3:	74 1b                	je     0x610
 5f5:	89 08                	mov    %ecx,(%eax)
 5f7:	a3 d0 09 00 00       	mov    %eax,0x9d0
 5fc:	5b                   	pop    %ebx
 5fd:	5e                   	pop    %esi
 5fe:	5f                   	pop    %edi
 5ff:	5d                   	pop    %ebp
 600:	c3                   	ret    
 601:	03 72 04             	add    0x4(%edx),%esi
 604:	89 73 fc             	mov    %esi,-0x4(%ebx)
 607:	8b 10                	mov    (%eax),%edx
 609:	8b 12                	mov    (%edx),%edx
 60b:	89 53 f8             	mov    %edx,-0x8(%ebx)
 60e:	eb db                	jmp    0x5eb
 610:	03 53 fc             	add    -0x4(%ebx),%edx
 613:	89 50 04             	mov    %edx,0x4(%eax)
 616:	8b 53 f8             	mov    -0x8(%ebx),%edx
 619:	89 10                	mov    %edx,(%eax)
 61b:	eb da                	jmp    0x5f7
 61d:	55                   	push   %ebp
 61e:	89 e5                	mov    %esp,%ebp
 620:	53                   	push   %ebx
 621:	83 ec 04             	sub    $0x4,%esp
 624:	89 c3                	mov    %eax,%ebx
 626:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 62b:	77 05                	ja     0x632
 62d:	bb 00 10 00 00       	mov    $0x1000,%ebx
 632:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 639:	83 ec 0c             	sub    $0xc,%esp
 63c:	50                   	push   %eax
 63d:	e8 31 fd ff ff       	call   0x373
 642:	83 c4 10             	add    $0x10,%esp
 645:	83 f8 ff             	cmp    $0xffffffff,%eax
 648:	74 1c                	je     0x666
 64a:	89 58 04             	mov    %ebx,0x4(%eax)
 64d:	83 c0 08             	add    $0x8,%eax
 650:	83 ec 0c             	sub    $0xc,%esp
 653:	50                   	push   %eax
 654:	e8 50 ff ff ff       	call   0x5a9
 659:	a1 d0 09 00 00       	mov    0x9d0,%eax
 65e:	83 c4 10             	add    $0x10,%esp
 661:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 664:	c9                   	leave  
 665:	c3                   	ret    
 666:	b8 00 00 00 00       	mov    $0x0,%eax
 66b:	eb f4                	jmp    0x661
 66d:	f3 0f 1e fb          	endbr32 
 671:	55                   	push   %ebp
 672:	89 e5                	mov    %esp,%ebp
 674:	53                   	push   %ebx
 675:	83 ec 04             	sub    $0x4,%esp
 678:	8b 45 08             	mov    0x8(%ebp),%eax
 67b:	8d 58 07             	lea    0x7(%eax),%ebx
 67e:	c1 eb 03             	shr    $0x3,%ebx
 681:	83 c3 01             	add    $0x1,%ebx
 684:	8b 0d d0 09 00 00    	mov    0x9d0,%ecx
 68a:	85 c9                	test   %ecx,%ecx
 68c:	74 04                	je     0x692
 68e:	8b 01                	mov    (%ecx),%eax
 690:	eb 4b                	jmp    0x6dd
 692:	c7 05 d0 09 00 00 d4 	movl   $0x9d4,0x9d0
 699:	09 00 00 
 69c:	c7 05 d4 09 00 00 d4 	movl   $0x9d4,0x9d4
 6a3:	09 00 00 
 6a6:	c7 05 d8 09 00 00 00 	movl   $0x0,0x9d8
 6ad:	00 00 00 
 6b0:	b9 d4 09 00 00       	mov    $0x9d4,%ecx
 6b5:	eb d7                	jmp    0x68e
 6b7:	74 1a                	je     0x6d3
 6b9:	29 da                	sub    %ebx,%edx
 6bb:	89 50 04             	mov    %edx,0x4(%eax)
 6be:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6c1:	89 58 04             	mov    %ebx,0x4(%eax)
 6c4:	89 0d d0 09 00 00    	mov    %ecx,0x9d0
 6ca:	83 c0 08             	add    $0x8,%eax
 6cd:	83 c4 04             	add    $0x4,%esp
 6d0:	5b                   	pop    %ebx
 6d1:	5d                   	pop    %ebp
 6d2:	c3                   	ret    
 6d3:	8b 10                	mov    (%eax),%edx
 6d5:	89 11                	mov    %edx,(%ecx)
 6d7:	eb eb                	jmp    0x6c4
 6d9:	89 c1                	mov    %eax,%ecx
 6db:	8b 00                	mov    (%eax),%eax
 6dd:	8b 50 04             	mov    0x4(%eax),%edx
 6e0:	39 da                	cmp    %ebx,%edx
 6e2:	73 d3                	jae    0x6b7
 6e4:	39 05 d0 09 00 00    	cmp    %eax,0x9d0
 6ea:	75 ed                	jne    0x6d9
 6ec:	89 d8                	mov    %ebx,%eax
 6ee:	e8 2a ff ff ff       	call   0x61d
 6f3:	85 c0                	test   %eax,%eax
 6f5:	75 e2                	jne    0x6d9
 6f7:	eb d4                	jmp    0x6cd
