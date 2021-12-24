
_sh:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
       0:	f3 0f 1e fb          	endbr32 
       4:	55                   	push   %ebp
       5:	89 e5                	mov    %esp,%ebp
       7:	56                   	push   %esi
       8:	53                   	push   %ebx
       9:	8b 5d 08             	mov    0x8(%ebp),%ebx
       c:	8b 75 0c             	mov    0xc(%ebp),%esi
       f:	83 ec 08             	sub    $0x8,%esp
      12:	68 18 10 00 00       	push   $0x1018
      17:	6a 02                	push   $0x2
      19:	e8 3a 0d 00 00       	call   0xd58
      1e:	83 c4 0c             	add    $0xc,%esp
      21:	56                   	push   %esi
      22:	6a 00                	push   $0x0
      24:	53                   	push   %ebx
      25:	e8 90 0a 00 00       	call   0xaba
      2a:	83 c4 08             	add    $0x8,%esp
      2d:	56                   	push   %esi
      2e:	53                   	push   %ebx
      2f:	e8 c6 0a 00 00       	call   0xafa
      34:	83 c4 10             	add    $0x10,%esp
      37:	80 3b 00             	cmpb   $0x0,(%ebx)
      3a:	74 0c                	je     0x48
      3c:	b8 00 00 00 00       	mov    $0x0,%eax
      41:	8d 65 f8             	lea    -0x8(%ebp),%esp
      44:	5b                   	pop    %ebx
      45:	5e                   	pop    %esi
      46:	5d                   	pop    %ebp
      47:	c3                   	ret    
      48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
      4d:	eb f2                	jmp    0x41
      4f:	f3 0f 1e fb          	endbr32 
      53:	55                   	push   %ebp
      54:	89 e5                	mov    %esp,%ebp
      56:	83 ec 0c             	sub    $0xc,%esp
      59:	ff 75 08             	pushl  0x8(%ebp)
      5c:	68 b5 10 00 00       	push   $0x10b5
      61:	6a 02                	push   $0x2
      63:	e8 f0 0c 00 00       	call   0xd58
      68:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      6f:	e8 93 0b 00 00       	call   0xc07
      74:	f3 0f 1e fb          	endbr32 
      78:	55                   	push   %ebp
      79:	89 e5                	mov    %esp,%ebp
      7b:	83 ec 08             	sub    $0x8,%esp
      7e:	e8 7c 0b 00 00       	call   0xbff
      83:	83 f8 ff             	cmp    $0xffffffff,%eax
      86:	74 02                	je     0x8a
      88:	c9                   	leave  
      89:	c3                   	ret    
      8a:	83 ec 0c             	sub    $0xc,%esp
      8d:	68 1b 10 00 00       	push   $0x101b
      92:	e8 b8 ff ff ff       	call   0x4f
      97:	f3 0f 1e fb          	endbr32 
      9b:	55                   	push   %ebp
      9c:	89 e5                	mov    %esp,%ebp
      9e:	53                   	push   %ebx
      9f:	83 ec 14             	sub    $0x14,%esp
      a2:	8b 5d 08             	mov    0x8(%ebp),%ebx
      a5:	85 db                	test   %ebx,%ebx
      a7:	74 0f                	je     0xb8
      a9:	8b 03                	mov    (%ebx),%eax
      ab:	83 f8 05             	cmp    $0x5,%eax
      ae:	77 12                	ja     0xc2
      b0:	3e ff 24 85 e0 10 00 	notrack jmp *0x10e0(,%eax,4)
      b7:	00 
      b8:	83 ec 0c             	sub    $0xc,%esp
      bb:	6a 00                	push   $0x0
      bd:	e8 45 0b 00 00       	call   0xc07
      c2:	83 ec 0c             	sub    $0xc,%esp
      c5:	68 20 10 00 00       	push   $0x1020
      ca:	e8 80 ff ff ff       	call   0x4f
      cf:	8b 43 04             	mov    0x4(%ebx),%eax
      d2:	85 c0                	test   %eax,%eax
      d4:	74 2c                	je     0x102
      d6:	8d 53 04             	lea    0x4(%ebx),%edx
      d9:	83 ec 08             	sub    $0x8,%esp
      dc:	52                   	push   %edx
      dd:	50                   	push   %eax
      de:	e8 5c 0b 00 00       	call   0xc3f
      e3:	83 c4 0c             	add    $0xc,%esp
      e6:	ff 73 04             	pushl  0x4(%ebx)
      e9:	68 27 10 00 00       	push   $0x1027
      ee:	6a 02                	push   $0x2
      f0:	e8 63 0c 00 00       	call   0xd58
      f5:	83 c4 10             	add    $0x10,%esp
      f8:	83 ec 0c             	sub    $0xc,%esp
      fb:	6a 00                	push   $0x0
      fd:	e8 05 0b 00 00       	call   0xc07
     102:	83 ec 0c             	sub    $0xc,%esp
     105:	6a 00                	push   $0x0
     107:	e8 fb 0a 00 00       	call   0xc07
     10c:	83 ec 0c             	sub    $0xc,%esp
     10f:	ff 73 14             	pushl  0x14(%ebx)
     112:	e8 18 0b 00 00       	call   0xc2f
     117:	83 c4 08             	add    $0x8,%esp
     11a:	ff 73 10             	pushl  0x10(%ebx)
     11d:	ff 73 08             	pushl  0x8(%ebx)
     120:	e8 22 0b 00 00       	call   0xc47
     125:	83 c4 10             	add    $0x10,%esp
     128:	85 c0                	test   %eax,%eax
     12a:	78 0b                	js     0x137
     12c:	83 ec 0c             	sub    $0xc,%esp
     12f:	ff 73 04             	pushl  0x4(%ebx)
     132:	e8 60 ff ff ff       	call   0x97
     137:	83 ec 04             	sub    $0x4,%esp
     13a:	ff 73 08             	pushl  0x8(%ebx)
     13d:	68 37 10 00 00       	push   $0x1037
     142:	6a 02                	push   $0x2
     144:	e8 0f 0c 00 00       	call   0xd58
     149:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     150:	e8 b2 0a 00 00       	call   0xc07
     155:	e8 1a ff ff ff       	call   0x74
     15a:	85 c0                	test   %eax,%eax
     15c:	74 15                	je     0x173
     15e:	83 ec 0c             	sub    $0xc,%esp
     161:	6a 00                	push   $0x0
     163:	e8 a7 0a 00 00       	call   0xc0f
     168:	83 c4 04             	add    $0x4,%esp
     16b:	ff 73 08             	pushl  0x8(%ebx)
     16e:	e8 24 ff ff ff       	call   0x97
     173:	83 ec 0c             	sub    $0xc,%esp
     176:	ff 73 04             	pushl  0x4(%ebx)
     179:	e8 19 ff ff ff       	call   0x97
     17e:	83 ec 0c             	sub    $0xc,%esp
     181:	8d 45 f0             	lea    -0x10(%ebp),%eax
     184:	50                   	push   %eax
     185:	e8 8d 0a 00 00       	call   0xc17
     18a:	83 c4 10             	add    $0x10,%esp
     18d:	85 c0                	test   %eax,%eax
     18f:	78 48                	js     0x1d9
     191:	e8 de fe ff ff       	call   0x74
     196:	85 c0                	test   %eax,%eax
     198:	74 4c                	je     0x1e6
     19a:	e8 d5 fe ff ff       	call   0x74
     19f:	85 c0                	test   %eax,%eax
     1a1:	74 79                	je     0x21c
     1a3:	83 ec 0c             	sub    $0xc,%esp
     1a6:	ff 75 f0             	pushl  -0x10(%ebp)
     1a9:	e8 81 0a 00 00       	call   0xc2f
     1ae:	83 c4 04             	add    $0x4,%esp
     1b1:	ff 75 f4             	pushl  -0xc(%ebp)
     1b4:	e8 76 0a 00 00       	call   0xc2f
     1b9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1c0:	e8 4a 0a 00 00       	call   0xc0f
     1c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1cc:	e8 3e 0a 00 00       	call   0xc0f
     1d1:	83 c4 10             	add    $0x10,%esp
     1d4:	e9 1f ff ff ff       	jmp    0xf8
     1d9:	83 ec 0c             	sub    $0xc,%esp
     1dc:	68 47 10 00 00       	push   $0x1047
     1e1:	e8 69 fe ff ff       	call   0x4f
     1e6:	83 ec 0c             	sub    $0xc,%esp
     1e9:	6a 01                	push   $0x1
     1eb:	e8 3f 0a 00 00       	call   0xc2f
     1f0:	83 c4 04             	add    $0x4,%esp
     1f3:	ff 75 f4             	pushl  -0xc(%ebp)
     1f6:	e8 84 0a 00 00       	call   0xc7f
     1fb:	83 c4 04             	add    $0x4,%esp
     1fe:	ff 75 f0             	pushl  -0x10(%ebp)
     201:	e8 29 0a 00 00       	call   0xc2f
     206:	83 c4 04             	add    $0x4,%esp
     209:	ff 75 f4             	pushl  -0xc(%ebp)
     20c:	e8 1e 0a 00 00       	call   0xc2f
     211:	83 c4 04             	add    $0x4,%esp
     214:	ff 73 04             	pushl  0x4(%ebx)
     217:	e8 7b fe ff ff       	call   0x97
     21c:	83 ec 0c             	sub    $0xc,%esp
     21f:	6a 00                	push   $0x0
     221:	e8 09 0a 00 00       	call   0xc2f
     226:	83 c4 04             	add    $0x4,%esp
     229:	ff 75 f0             	pushl  -0x10(%ebp)
     22c:	e8 4e 0a 00 00       	call   0xc7f
     231:	83 c4 04             	add    $0x4,%esp
     234:	ff 75 f0             	pushl  -0x10(%ebp)
     237:	e8 f3 09 00 00       	call   0xc2f
     23c:	83 c4 04             	add    $0x4,%esp
     23f:	ff 75 f4             	pushl  -0xc(%ebp)
     242:	e8 e8 09 00 00       	call   0xc2f
     247:	83 c4 04             	add    $0x4,%esp
     24a:	ff 73 08             	pushl  0x8(%ebx)
     24d:	e8 45 fe ff ff       	call   0x97
     252:	e8 1d fe ff ff       	call   0x74
     257:	85 c0                	test   %eax,%eax
     259:	0f 85 99 fe ff ff    	jne    0xf8
     25f:	83 ec 0c             	sub    $0xc,%esp
     262:	ff 73 04             	pushl  0x4(%ebx)
     265:	e8 2d fe ff ff       	call   0x97
     26a:	f3 0f 1e fb          	endbr32 
     26e:	55                   	push   %ebp
     26f:	89 e5                	mov    %esp,%ebp
     271:	53                   	push   %ebx
     272:	83 ec 10             	sub    $0x10,%esp
     275:	6a 54                	push   $0x54
     277:	e8 0d 0d 00 00       	call   0xf89
     27c:	89 c3                	mov    %eax,%ebx
     27e:	83 c4 0c             	add    $0xc,%esp
     281:	6a 54                	push   $0x54
     283:	6a 00                	push   $0x0
     285:	50                   	push   %eax
     286:	e8 2f 08 00 00       	call   0xaba
     28b:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
     291:	89 d8                	mov    %ebx,%eax
     293:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     296:	c9                   	leave  
     297:	c3                   	ret    
     298:	f3 0f 1e fb          	endbr32 
     29c:	55                   	push   %ebp
     29d:	89 e5                	mov    %esp,%ebp
     29f:	53                   	push   %ebx
     2a0:	83 ec 10             	sub    $0x10,%esp
     2a3:	6a 18                	push   $0x18
     2a5:	e8 df 0c 00 00       	call   0xf89
     2aa:	89 c3                	mov    %eax,%ebx
     2ac:	83 c4 0c             	add    $0xc,%esp
     2af:	6a 18                	push   $0x18
     2b1:	6a 00                	push   $0x0
     2b3:	50                   	push   %eax
     2b4:	e8 01 08 00 00       	call   0xaba
     2b9:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
     2bf:	8b 45 08             	mov    0x8(%ebp),%eax
     2c2:	89 43 04             	mov    %eax,0x4(%ebx)
     2c5:	8b 45 0c             	mov    0xc(%ebp),%eax
     2c8:	89 43 08             	mov    %eax,0x8(%ebx)
     2cb:	8b 45 10             	mov    0x10(%ebp),%eax
     2ce:	89 43 0c             	mov    %eax,0xc(%ebx)
     2d1:	8b 45 14             	mov    0x14(%ebp),%eax
     2d4:	89 43 10             	mov    %eax,0x10(%ebx)
     2d7:	8b 45 18             	mov    0x18(%ebp),%eax
     2da:	89 43 14             	mov    %eax,0x14(%ebx)
     2dd:	89 d8                	mov    %ebx,%eax
     2df:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     2e2:	c9                   	leave  
     2e3:	c3                   	ret    
     2e4:	f3 0f 1e fb          	endbr32 
     2e8:	55                   	push   %ebp
     2e9:	89 e5                	mov    %esp,%ebp
     2eb:	53                   	push   %ebx
     2ec:	83 ec 10             	sub    $0x10,%esp
     2ef:	6a 0c                	push   $0xc
     2f1:	e8 93 0c 00 00       	call   0xf89
     2f6:	89 c3                	mov    %eax,%ebx
     2f8:	83 c4 0c             	add    $0xc,%esp
     2fb:	6a 0c                	push   $0xc
     2fd:	6a 00                	push   $0x0
     2ff:	50                   	push   %eax
     300:	e8 b5 07 00 00       	call   0xaba
     305:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
     30b:	8b 45 08             	mov    0x8(%ebp),%eax
     30e:	89 43 04             	mov    %eax,0x4(%ebx)
     311:	8b 45 0c             	mov    0xc(%ebp),%eax
     314:	89 43 08             	mov    %eax,0x8(%ebx)
     317:	89 d8                	mov    %ebx,%eax
     319:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     31c:	c9                   	leave  
     31d:	c3                   	ret    
     31e:	f3 0f 1e fb          	endbr32 
     322:	55                   	push   %ebp
     323:	89 e5                	mov    %esp,%ebp
     325:	53                   	push   %ebx
     326:	83 ec 10             	sub    $0x10,%esp
     329:	6a 0c                	push   $0xc
     32b:	e8 59 0c 00 00       	call   0xf89
     330:	89 c3                	mov    %eax,%ebx
     332:	83 c4 0c             	add    $0xc,%esp
     335:	6a 0c                	push   $0xc
     337:	6a 00                	push   $0x0
     339:	50                   	push   %eax
     33a:	e8 7b 07 00 00       	call   0xaba
     33f:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
     345:	8b 45 08             	mov    0x8(%ebp),%eax
     348:	89 43 04             	mov    %eax,0x4(%ebx)
     34b:	8b 45 0c             	mov    0xc(%ebp),%eax
     34e:	89 43 08             	mov    %eax,0x8(%ebx)
     351:	89 d8                	mov    %ebx,%eax
     353:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     356:	c9                   	leave  
     357:	c3                   	ret    
     358:	f3 0f 1e fb          	endbr32 
     35c:	55                   	push   %ebp
     35d:	89 e5                	mov    %esp,%ebp
     35f:	53                   	push   %ebx
     360:	83 ec 10             	sub    $0x10,%esp
     363:	6a 08                	push   $0x8
     365:	e8 1f 0c 00 00       	call   0xf89
     36a:	89 c3                	mov    %eax,%ebx
     36c:	83 c4 0c             	add    $0xc,%esp
     36f:	6a 08                	push   $0x8
     371:	6a 00                	push   $0x0
     373:	50                   	push   %eax
     374:	e8 41 07 00 00       	call   0xaba
     379:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
     37f:	8b 45 08             	mov    0x8(%ebp),%eax
     382:	89 43 04             	mov    %eax,0x4(%ebx)
     385:	89 d8                	mov    %ebx,%eax
     387:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     38a:	c9                   	leave  
     38b:	c3                   	ret    
     38c:	f3 0f 1e fb          	endbr32 
     390:	55                   	push   %ebp
     391:	89 e5                	mov    %esp,%ebp
     393:	57                   	push   %edi
     394:	56                   	push   %esi
     395:	53                   	push   %ebx
     396:	83 ec 0c             	sub    $0xc,%esp
     399:	8b 75 0c             	mov    0xc(%ebp),%esi
     39c:	8b 7d 10             	mov    0x10(%ebp),%edi
     39f:	8b 45 08             	mov    0x8(%ebp),%eax
     3a2:	8b 18                	mov    (%eax),%ebx
     3a4:	39 f3                	cmp    %esi,%ebx
     3a6:	73 1d                	jae    0x3c5
     3a8:	83 ec 08             	sub    $0x8,%esp
     3ab:	0f be 03             	movsbl (%ebx),%eax
     3ae:	50                   	push   %eax
     3af:	68 98 16 00 00       	push   $0x1698
     3b4:	e8 1c 07 00 00       	call   0xad5
     3b9:	83 c4 10             	add    $0x10,%esp
     3bc:	85 c0                	test   %eax,%eax
     3be:	74 05                	je     0x3c5
     3c0:	83 c3 01             	add    $0x1,%ebx
     3c3:	eb df                	jmp    0x3a4
     3c5:	85 ff                	test   %edi,%edi
     3c7:	74 02                	je     0x3cb
     3c9:	89 1f                	mov    %ebx,(%edi)
     3cb:	0f b6 03             	movzbl (%ebx),%eax
     3ce:	0f be f8             	movsbl %al,%edi
     3d1:	3c 3c                	cmp    $0x3c,%al
     3d3:	7f 27                	jg     0x3fc
     3d5:	3c 3b                	cmp    $0x3b,%al
     3d7:	7d 13                	jge    0x3ec
     3d9:	84 c0                	test   %al,%al
     3db:	74 12                	je     0x3ef
     3dd:	78 41                	js     0x420
     3df:	3c 26                	cmp    $0x26,%al
     3e1:	74 09                	je     0x3ec
     3e3:	7c 3b                	jl     0x420
     3e5:	83 e8 28             	sub    $0x28,%eax
     3e8:	3c 01                	cmp    $0x1,%al
     3ea:	77 34                	ja     0x420
     3ec:	83 c3 01             	add    $0x1,%ebx
     3ef:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
     3f3:	74 77                	je     0x46c
     3f5:	8b 45 14             	mov    0x14(%ebp),%eax
     3f8:	89 18                	mov    %ebx,(%eax)
     3fa:	eb 70                	jmp    0x46c
     3fc:	3c 3e                	cmp    $0x3e,%al
     3fe:	75 0d                	jne    0x40d
     400:	8d 43 01             	lea    0x1(%ebx),%eax
     403:	80 7b 01 3e          	cmpb   $0x3e,0x1(%ebx)
     407:	74 0a                	je     0x413
     409:	89 c3                	mov    %eax,%ebx
     40b:	eb e2                	jmp    0x3ef
     40d:	3c 7c                	cmp    $0x7c,%al
     40f:	75 0f                	jne    0x420
     411:	eb d9                	jmp    0x3ec
     413:	83 c3 02             	add    $0x2,%ebx
     416:	bf 2b 00 00 00       	mov    $0x2b,%edi
     41b:	eb d2                	jmp    0x3ef
     41d:	83 c3 01             	add    $0x1,%ebx
     420:	39 f3                	cmp    %esi,%ebx
     422:	73 37                	jae    0x45b
     424:	83 ec 08             	sub    $0x8,%esp
     427:	0f be 03             	movsbl (%ebx),%eax
     42a:	50                   	push   %eax
     42b:	68 98 16 00 00       	push   $0x1698
     430:	e8 a0 06 00 00       	call   0xad5
     435:	83 c4 10             	add    $0x10,%esp
     438:	85 c0                	test   %eax,%eax
     43a:	75 26                	jne    0x462
     43c:	83 ec 08             	sub    $0x8,%esp
     43f:	0f be 03             	movsbl (%ebx),%eax
     442:	50                   	push   %eax
     443:	68 90 16 00 00       	push   $0x1690
     448:	e8 88 06 00 00       	call   0xad5
     44d:	83 c4 10             	add    $0x10,%esp
     450:	85 c0                	test   %eax,%eax
     452:	74 c9                	je     0x41d
     454:	bf 61 00 00 00       	mov    $0x61,%edi
     459:	eb 94                	jmp    0x3ef
     45b:	bf 61 00 00 00       	mov    $0x61,%edi
     460:	eb 8d                	jmp    0x3ef
     462:	bf 61 00 00 00       	mov    $0x61,%edi
     467:	eb 86                	jmp    0x3ef
     469:	83 c3 01             	add    $0x1,%ebx
     46c:	39 f3                	cmp    %esi,%ebx
     46e:	73 18                	jae    0x488
     470:	83 ec 08             	sub    $0x8,%esp
     473:	0f be 03             	movsbl (%ebx),%eax
     476:	50                   	push   %eax
     477:	68 98 16 00 00       	push   $0x1698
     47c:	e8 54 06 00 00       	call   0xad5
     481:	83 c4 10             	add    $0x10,%esp
     484:	85 c0                	test   %eax,%eax
     486:	75 e1                	jne    0x469
     488:	8b 45 08             	mov    0x8(%ebp),%eax
     48b:	89 18                	mov    %ebx,(%eax)
     48d:	89 f8                	mov    %edi,%eax
     48f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     492:	5b                   	pop    %ebx
     493:	5e                   	pop    %esi
     494:	5f                   	pop    %edi
     495:	5d                   	pop    %ebp
     496:	c3                   	ret    
     497:	f3 0f 1e fb          	endbr32 
     49b:	55                   	push   %ebp
     49c:	89 e5                	mov    %esp,%ebp
     49e:	57                   	push   %edi
     49f:	56                   	push   %esi
     4a0:	53                   	push   %ebx
     4a1:	83 ec 0c             	sub    $0xc,%esp
     4a4:	8b 7d 08             	mov    0x8(%ebp),%edi
     4a7:	8b 75 0c             	mov    0xc(%ebp),%esi
     4aa:	8b 1f                	mov    (%edi),%ebx
     4ac:	39 f3                	cmp    %esi,%ebx
     4ae:	73 1d                	jae    0x4cd
     4b0:	83 ec 08             	sub    $0x8,%esp
     4b3:	0f be 03             	movsbl (%ebx),%eax
     4b6:	50                   	push   %eax
     4b7:	68 98 16 00 00       	push   $0x1698
     4bc:	e8 14 06 00 00       	call   0xad5
     4c1:	83 c4 10             	add    $0x10,%esp
     4c4:	85 c0                	test   %eax,%eax
     4c6:	74 05                	je     0x4cd
     4c8:	83 c3 01             	add    $0x1,%ebx
     4cb:	eb df                	jmp    0x4ac
     4cd:	89 1f                	mov    %ebx,(%edi)
     4cf:	0f b6 03             	movzbl (%ebx),%eax
     4d2:	84 c0                	test   %al,%al
     4d4:	75 0d                	jne    0x4e3
     4d6:	b8 00 00 00 00       	mov    $0x0,%eax
     4db:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4de:	5b                   	pop    %ebx
     4df:	5e                   	pop    %esi
     4e0:	5f                   	pop    %edi
     4e1:	5d                   	pop    %ebp
     4e2:	c3                   	ret    
     4e3:	83 ec 08             	sub    $0x8,%esp
     4e6:	0f be c0             	movsbl %al,%eax
     4e9:	50                   	push   %eax
     4ea:	ff 75 10             	pushl  0x10(%ebp)
     4ed:	e8 e3 05 00 00       	call   0xad5
     4f2:	83 c4 10             	add    $0x10,%esp
     4f5:	85 c0                	test   %eax,%eax
     4f7:	74 07                	je     0x500
     4f9:	b8 01 00 00 00       	mov    $0x1,%eax
     4fe:	eb db                	jmp    0x4db
     500:	b8 00 00 00 00       	mov    $0x0,%eax
     505:	eb d4                	jmp    0x4db
     507:	f3 0f 1e fb          	endbr32 
     50b:	55                   	push   %ebp
     50c:	89 e5                	mov    %esp,%ebp
     50e:	57                   	push   %edi
     50f:	56                   	push   %esi
     510:	53                   	push   %ebx
     511:	83 ec 1c             	sub    $0x1c,%esp
     514:	8b 7d 0c             	mov    0xc(%ebp),%edi
     517:	8b 75 10             	mov    0x10(%ebp),%esi
     51a:	eb 28                	jmp    0x544
     51c:	83 ec 0c             	sub    $0xc,%esp
     51f:	68 4c 10 00 00       	push   $0x104c
     524:	e8 26 fb ff ff       	call   0x4f
     529:	83 ec 0c             	sub    $0xc,%esp
     52c:	6a 00                	push   $0x0
     52e:	6a 00                	push   $0x0
     530:	ff 75 e0             	pushl  -0x20(%ebp)
     533:	ff 75 e4             	pushl  -0x1c(%ebp)
     536:	ff 75 08             	pushl  0x8(%ebp)
     539:	e8 5a fd ff ff       	call   0x298
     53e:	89 45 08             	mov    %eax,0x8(%ebp)
     541:	83 c4 20             	add    $0x20,%esp
     544:	83 ec 04             	sub    $0x4,%esp
     547:	68 69 10 00 00       	push   $0x1069
     54c:	56                   	push   %esi
     54d:	57                   	push   %edi
     54e:	e8 44 ff ff ff       	call   0x497
     553:	83 c4 10             	add    $0x10,%esp
     556:	85 c0                	test   %eax,%eax
     558:	74 76                	je     0x5d0
     55a:	6a 00                	push   $0x0
     55c:	6a 00                	push   $0x0
     55e:	56                   	push   %esi
     55f:	57                   	push   %edi
     560:	e8 27 fe ff ff       	call   0x38c
     565:	89 c3                	mov    %eax,%ebx
     567:	8d 45 e0             	lea    -0x20(%ebp),%eax
     56a:	50                   	push   %eax
     56b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     56e:	50                   	push   %eax
     56f:	56                   	push   %esi
     570:	57                   	push   %edi
     571:	e8 16 fe ff ff       	call   0x38c
     576:	83 c4 20             	add    $0x20,%esp
     579:	83 f8 61             	cmp    $0x61,%eax
     57c:	75 9e                	jne    0x51c
     57e:	83 fb 3c             	cmp    $0x3c,%ebx
     581:	74 a6                	je     0x529
     583:	83 fb 3e             	cmp    $0x3e,%ebx
     586:	74 25                	je     0x5ad
     588:	83 fb 2b             	cmp    $0x2b,%ebx
     58b:	75 b7                	jne    0x544
     58d:	83 ec 0c             	sub    $0xc,%esp
     590:	6a 01                	push   $0x1
     592:	68 01 02 00 00       	push   $0x201
     597:	ff 75 e0             	pushl  -0x20(%ebp)
     59a:	ff 75 e4             	pushl  -0x1c(%ebp)
     59d:	ff 75 08             	pushl  0x8(%ebp)
     5a0:	e8 f3 fc ff ff       	call   0x298
     5a5:	89 45 08             	mov    %eax,0x8(%ebp)
     5a8:	83 c4 20             	add    $0x20,%esp
     5ab:	eb 97                	jmp    0x544
     5ad:	83 ec 0c             	sub    $0xc,%esp
     5b0:	6a 01                	push   $0x1
     5b2:	68 01 02 00 00       	push   $0x201
     5b7:	ff 75 e0             	pushl  -0x20(%ebp)
     5ba:	ff 75 e4             	pushl  -0x1c(%ebp)
     5bd:	ff 75 08             	pushl  0x8(%ebp)
     5c0:	e8 d3 fc ff ff       	call   0x298
     5c5:	89 45 08             	mov    %eax,0x8(%ebp)
     5c8:	83 c4 20             	add    $0x20,%esp
     5cb:	e9 74 ff ff ff       	jmp    0x544
     5d0:	8b 45 08             	mov    0x8(%ebp),%eax
     5d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     5d6:	5b                   	pop    %ebx
     5d7:	5e                   	pop    %esi
     5d8:	5f                   	pop    %edi
     5d9:	5d                   	pop    %ebp
     5da:	c3                   	ret    
     5db:	f3 0f 1e fb          	endbr32 
     5df:	55                   	push   %ebp
     5e0:	89 e5                	mov    %esp,%ebp
     5e2:	57                   	push   %edi
     5e3:	56                   	push   %esi
     5e4:	53                   	push   %ebx
     5e5:	83 ec 30             	sub    $0x30,%esp
     5e8:	8b 75 08             	mov    0x8(%ebp),%esi
     5eb:	8b 7d 0c             	mov    0xc(%ebp),%edi
     5ee:	68 6c 10 00 00       	push   $0x106c
     5f3:	57                   	push   %edi
     5f4:	56                   	push   %esi
     5f5:	e8 9d fe ff ff       	call   0x497
     5fa:	83 c4 10             	add    $0x10,%esp
     5fd:	85 c0                	test   %eax,%eax
     5ff:	75 1d                	jne    0x61e
     601:	89 c3                	mov    %eax,%ebx
     603:	e8 62 fc ff ff       	call   0x26a
     608:	89 45 d0             	mov    %eax,-0x30(%ebp)
     60b:	83 ec 04             	sub    $0x4,%esp
     60e:	57                   	push   %edi
     60f:	56                   	push   %esi
     610:	50                   	push   %eax
     611:	e8 f1 fe ff ff       	call   0x507
     616:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     619:	83 c4 10             	add    $0x10,%esp
     61c:	eb 3b                	jmp    0x659
     61e:	83 ec 08             	sub    $0x8,%esp
     621:	57                   	push   %edi
     622:	56                   	push   %esi
     623:	e8 97 01 00 00       	call   0x7bf
     628:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     62b:	83 c4 10             	add    $0x10,%esp
     62e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     631:	8d 65 f4             	lea    -0xc(%ebp),%esp
     634:	5b                   	pop    %ebx
     635:	5e                   	pop    %esi
     636:	5f                   	pop    %edi
     637:	5d                   	pop    %ebp
     638:	c3                   	ret    
     639:	83 ec 0c             	sub    $0xc,%esp
     63c:	68 6e 10 00 00       	push   $0x106e
     641:	e8 09 fa ff ff       	call   0x4f
     646:	83 ec 04             	sub    $0x4,%esp
     649:	57                   	push   %edi
     64a:	56                   	push   %esi
     64b:	ff 75 d4             	pushl  -0x2c(%ebp)
     64e:	e8 b4 fe ff ff       	call   0x507
     653:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     656:	83 c4 10             	add    $0x10,%esp
     659:	83 ec 04             	sub    $0x4,%esp
     65c:	68 83 10 00 00       	push   $0x1083
     661:	57                   	push   %edi
     662:	56                   	push   %esi
     663:	e8 2f fe ff ff       	call   0x497
     668:	83 c4 10             	add    $0x10,%esp
     66b:	85 c0                	test   %eax,%eax
     66d:	75 41                	jne    0x6b0
     66f:	8d 45 e0             	lea    -0x20(%ebp),%eax
     672:	50                   	push   %eax
     673:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     676:	50                   	push   %eax
     677:	57                   	push   %edi
     678:	56                   	push   %esi
     679:	e8 0e fd ff ff       	call   0x38c
     67e:	83 c4 10             	add    $0x10,%esp
     681:	85 c0                	test   %eax,%eax
     683:	74 2b                	je     0x6b0
     685:	83 f8 61             	cmp    $0x61,%eax
     688:	75 af                	jne    0x639
     68a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     68d:	8b 55 d0             	mov    -0x30(%ebp),%edx
     690:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
     694:	8b 45 e0             	mov    -0x20(%ebp),%eax
     697:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
     69b:	83 c3 01             	add    $0x1,%ebx
     69e:	83 fb 09             	cmp    $0x9,%ebx
     6a1:	7e a3                	jle    0x646
     6a3:	83 ec 0c             	sub    $0xc,%esp
     6a6:	68 75 10 00 00       	push   $0x1075
     6ab:	e8 9f f9 ff ff       	call   0x4f
     6b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
     6b3:	c7 44 98 04 00 00 00 	movl   $0x0,0x4(%eax,%ebx,4)
     6ba:	00 
     6bb:	c7 44 98 2c 00 00 00 	movl   $0x0,0x2c(%eax,%ebx,4)
     6c2:	00 
     6c3:	e9 66 ff ff ff       	jmp    0x62e
     6c8:	f3 0f 1e fb          	endbr32 
     6cc:	55                   	push   %ebp
     6cd:	89 e5                	mov    %esp,%ebp
     6cf:	57                   	push   %edi
     6d0:	56                   	push   %esi
     6d1:	53                   	push   %ebx
     6d2:	83 ec 14             	sub    $0x14,%esp
     6d5:	8b 75 08             	mov    0x8(%ebp),%esi
     6d8:	8b 7d 0c             	mov    0xc(%ebp),%edi
     6db:	57                   	push   %edi
     6dc:	56                   	push   %esi
     6dd:	e8 f9 fe ff ff       	call   0x5db
     6e2:	89 c3                	mov    %eax,%ebx
     6e4:	83 c4 0c             	add    $0xc,%esp
     6e7:	68 88 10 00 00       	push   $0x1088
     6ec:	57                   	push   %edi
     6ed:	56                   	push   %esi
     6ee:	e8 a4 fd ff ff       	call   0x497
     6f3:	83 c4 10             	add    $0x10,%esp
     6f6:	85 c0                	test   %eax,%eax
     6f8:	75 0a                	jne    0x704
     6fa:	89 d8                	mov    %ebx,%eax
     6fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6ff:	5b                   	pop    %ebx
     700:	5e                   	pop    %esi
     701:	5f                   	pop    %edi
     702:	5d                   	pop    %ebp
     703:	c3                   	ret    
     704:	6a 00                	push   $0x0
     706:	6a 00                	push   $0x0
     708:	57                   	push   %edi
     709:	56                   	push   %esi
     70a:	e8 7d fc ff ff       	call   0x38c
     70f:	83 c4 08             	add    $0x8,%esp
     712:	57                   	push   %edi
     713:	56                   	push   %esi
     714:	e8 af ff ff ff       	call   0x6c8
     719:	83 c4 08             	add    $0x8,%esp
     71c:	50                   	push   %eax
     71d:	53                   	push   %ebx
     71e:	e8 c1 fb ff ff       	call   0x2e4
     723:	89 c3                	mov    %eax,%ebx
     725:	83 c4 10             	add    $0x10,%esp
     728:	eb d0                	jmp    0x6fa
     72a:	f3 0f 1e fb          	endbr32 
     72e:	55                   	push   %ebp
     72f:	89 e5                	mov    %esp,%ebp
     731:	57                   	push   %edi
     732:	56                   	push   %esi
     733:	53                   	push   %ebx
     734:	83 ec 14             	sub    $0x14,%esp
     737:	8b 75 08             	mov    0x8(%ebp),%esi
     73a:	8b 7d 0c             	mov    0xc(%ebp),%edi
     73d:	57                   	push   %edi
     73e:	56                   	push   %esi
     73f:	e8 84 ff ff ff       	call   0x6c8
     744:	89 c3                	mov    %eax,%ebx
     746:	83 c4 10             	add    $0x10,%esp
     749:	83 ec 04             	sub    $0x4,%esp
     74c:	68 8a 10 00 00       	push   $0x108a
     751:	57                   	push   %edi
     752:	56                   	push   %esi
     753:	e8 3f fd ff ff       	call   0x497
     758:	83 c4 10             	add    $0x10,%esp
     75b:	85 c0                	test   %eax,%eax
     75d:	74 1a                	je     0x779
     75f:	6a 00                	push   $0x0
     761:	6a 00                	push   $0x0
     763:	57                   	push   %edi
     764:	56                   	push   %esi
     765:	e8 22 fc ff ff       	call   0x38c
     76a:	89 1c 24             	mov    %ebx,(%esp)
     76d:	e8 e6 fb ff ff       	call   0x358
     772:	89 c3                	mov    %eax,%ebx
     774:	83 c4 10             	add    $0x10,%esp
     777:	eb d0                	jmp    0x749
     779:	83 ec 04             	sub    $0x4,%esp
     77c:	68 86 10 00 00       	push   $0x1086
     781:	57                   	push   %edi
     782:	56                   	push   %esi
     783:	e8 0f fd ff ff       	call   0x497
     788:	83 c4 10             	add    $0x10,%esp
     78b:	85 c0                	test   %eax,%eax
     78d:	75 0a                	jne    0x799
     78f:	89 d8                	mov    %ebx,%eax
     791:	8d 65 f4             	lea    -0xc(%ebp),%esp
     794:	5b                   	pop    %ebx
     795:	5e                   	pop    %esi
     796:	5f                   	pop    %edi
     797:	5d                   	pop    %ebp
     798:	c3                   	ret    
     799:	6a 00                	push   $0x0
     79b:	6a 00                	push   $0x0
     79d:	57                   	push   %edi
     79e:	56                   	push   %esi
     79f:	e8 e8 fb ff ff       	call   0x38c
     7a4:	83 c4 08             	add    $0x8,%esp
     7a7:	57                   	push   %edi
     7a8:	56                   	push   %esi
     7a9:	e8 7c ff ff ff       	call   0x72a
     7ae:	83 c4 08             	add    $0x8,%esp
     7b1:	50                   	push   %eax
     7b2:	53                   	push   %ebx
     7b3:	e8 66 fb ff ff       	call   0x31e
     7b8:	89 c3                	mov    %eax,%ebx
     7ba:	83 c4 10             	add    $0x10,%esp
     7bd:	eb d0                	jmp    0x78f
     7bf:	f3 0f 1e fb          	endbr32 
     7c3:	55                   	push   %ebp
     7c4:	89 e5                	mov    %esp,%ebp
     7c6:	57                   	push   %edi
     7c7:	56                   	push   %esi
     7c8:	53                   	push   %ebx
     7c9:	83 ec 10             	sub    $0x10,%esp
     7cc:	8b 5d 08             	mov    0x8(%ebp),%ebx
     7cf:	8b 75 0c             	mov    0xc(%ebp),%esi
     7d2:	68 6c 10 00 00       	push   $0x106c
     7d7:	56                   	push   %esi
     7d8:	53                   	push   %ebx
     7d9:	e8 b9 fc ff ff       	call   0x497
     7de:	83 c4 10             	add    $0x10,%esp
     7e1:	85 c0                	test   %eax,%eax
     7e3:	74 4b                	je     0x830
     7e5:	6a 00                	push   $0x0
     7e7:	6a 00                	push   $0x0
     7e9:	56                   	push   %esi
     7ea:	53                   	push   %ebx
     7eb:	e8 9c fb ff ff       	call   0x38c
     7f0:	83 c4 08             	add    $0x8,%esp
     7f3:	56                   	push   %esi
     7f4:	53                   	push   %ebx
     7f5:	e8 30 ff ff ff       	call   0x72a
     7fa:	89 c7                	mov    %eax,%edi
     7fc:	83 c4 0c             	add    $0xc,%esp
     7ff:	68 a8 10 00 00       	push   $0x10a8
     804:	56                   	push   %esi
     805:	53                   	push   %ebx
     806:	e8 8c fc ff ff       	call   0x497
     80b:	83 c4 10             	add    $0x10,%esp
     80e:	85 c0                	test   %eax,%eax
     810:	74 2b                	je     0x83d
     812:	6a 00                	push   $0x0
     814:	6a 00                	push   $0x0
     816:	56                   	push   %esi
     817:	53                   	push   %ebx
     818:	e8 6f fb ff ff       	call   0x38c
     81d:	83 c4 0c             	add    $0xc,%esp
     820:	56                   	push   %esi
     821:	53                   	push   %ebx
     822:	57                   	push   %edi
     823:	e8 df fc ff ff       	call   0x507
     828:	8d 65 f4             	lea    -0xc(%ebp),%esp
     82b:	5b                   	pop    %ebx
     82c:	5e                   	pop    %esi
     82d:	5f                   	pop    %edi
     82e:	5d                   	pop    %ebp
     82f:	c3                   	ret    
     830:	83 ec 0c             	sub    $0xc,%esp
     833:	68 8c 10 00 00       	push   $0x108c
     838:	e8 12 f8 ff ff       	call   0x4f
     83d:	83 ec 0c             	sub    $0xc,%esp
     840:	68 97 10 00 00       	push   $0x1097
     845:	e8 05 f8 ff ff       	call   0x4f
     84a:	f3 0f 1e fb          	endbr32 
     84e:	55                   	push   %ebp
     84f:	89 e5                	mov    %esp,%ebp
     851:	53                   	push   %ebx
     852:	83 ec 04             	sub    $0x4,%esp
     855:	8b 5d 08             	mov    0x8(%ebp),%ebx
     858:	85 db                	test   %ebx,%ebx
     85a:	74 3b                	je     0x897
     85c:	8b 03                	mov    (%ebx),%eax
     85e:	83 f8 05             	cmp    $0x5,%eax
     861:	77 34                	ja     0x897
     863:	3e ff 24 85 f8 10 00 	notrack jmp *0x10f8(,%eax,4)
     86a:	00 
     86b:	b8 00 00 00 00       	mov    $0x0,%eax
     870:	83 7c 83 04 00       	cmpl   $0x0,0x4(%ebx,%eax,4)
     875:	74 20                	je     0x897
     877:	8b 54 83 2c          	mov    0x2c(%ebx,%eax,4),%edx
     87b:	c6 02 00             	movb   $0x0,(%edx)
     87e:	83 c0 01             	add    $0x1,%eax
     881:	eb ed                	jmp    0x870
     883:	83 ec 0c             	sub    $0xc,%esp
     886:	ff 73 04             	pushl  0x4(%ebx)
     889:	e8 bc ff ff ff       	call   0x84a
     88e:	8b 43 0c             	mov    0xc(%ebx),%eax
     891:	c6 00 00             	movb   $0x0,(%eax)
     894:	83 c4 10             	add    $0x10,%esp
     897:	89 d8                	mov    %ebx,%eax
     899:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     89c:	c9                   	leave  
     89d:	c3                   	ret    
     89e:	83 ec 0c             	sub    $0xc,%esp
     8a1:	ff 73 04             	pushl  0x4(%ebx)
     8a4:	e8 a1 ff ff ff       	call   0x84a
     8a9:	83 c4 04             	add    $0x4,%esp
     8ac:	ff 73 08             	pushl  0x8(%ebx)
     8af:	e8 96 ff ff ff       	call   0x84a
     8b4:	83 c4 10             	add    $0x10,%esp
     8b7:	eb de                	jmp    0x897
     8b9:	83 ec 0c             	sub    $0xc,%esp
     8bc:	ff 73 04             	pushl  0x4(%ebx)
     8bf:	e8 86 ff ff ff       	call   0x84a
     8c4:	83 c4 04             	add    $0x4,%esp
     8c7:	ff 73 08             	pushl  0x8(%ebx)
     8ca:	e8 7b ff ff ff       	call   0x84a
     8cf:	83 c4 10             	add    $0x10,%esp
     8d2:	eb c3                	jmp    0x897
     8d4:	83 ec 0c             	sub    $0xc,%esp
     8d7:	ff 73 04             	pushl  0x4(%ebx)
     8da:	e8 6b ff ff ff       	call   0x84a
     8df:	83 c4 10             	add    $0x10,%esp
     8e2:	eb b3                	jmp    0x897
     8e4:	f3 0f 1e fb          	endbr32 
     8e8:	55                   	push   %ebp
     8e9:	89 e5                	mov    %esp,%ebp
     8eb:	56                   	push   %esi
     8ec:	53                   	push   %ebx
     8ed:	8b 5d 08             	mov    0x8(%ebp),%ebx
     8f0:	83 ec 0c             	sub    $0xc,%esp
     8f3:	53                   	push   %ebx
     8f4:	e8 a5 01 00 00       	call   0xa9e
     8f9:	01 c3                	add    %eax,%ebx
     8fb:	83 c4 08             	add    $0x8,%esp
     8fe:	53                   	push   %ebx
     8ff:	8d 45 08             	lea    0x8(%ebp),%eax
     902:	50                   	push   %eax
     903:	e8 22 fe ff ff       	call   0x72a
     908:	89 c6                	mov    %eax,%esi
     90a:	83 c4 0c             	add    $0xc,%esp
     90d:	68 36 10 00 00       	push   $0x1036
     912:	53                   	push   %ebx
     913:	8d 45 08             	lea    0x8(%ebp),%eax
     916:	50                   	push   %eax
     917:	e8 7b fb ff ff       	call   0x497
     91c:	8b 45 08             	mov    0x8(%ebp),%eax
     91f:	83 c4 10             	add    $0x10,%esp
     922:	39 d8                	cmp    %ebx,%eax
     924:	75 12                	jne    0x938
     926:	83 ec 0c             	sub    $0xc,%esp
     929:	56                   	push   %esi
     92a:	e8 1b ff ff ff       	call   0x84a
     92f:	89 f0                	mov    %esi,%eax
     931:	8d 65 f8             	lea    -0x8(%ebp),%esp
     934:	5b                   	pop    %ebx
     935:	5e                   	pop    %esi
     936:	5d                   	pop    %ebp
     937:	c3                   	ret    
     938:	83 ec 04             	sub    $0x4,%esp
     93b:	50                   	push   %eax
     93c:	68 aa 10 00 00       	push   $0x10aa
     941:	6a 02                	push   $0x2
     943:	e8 10 04 00 00       	call   0xd58
     948:	c7 04 24 6e 10 00 00 	movl   $0x106e,(%esp)
     94f:	e8 fb f6 ff ff       	call   0x4f
     954:	f3 0f 1e fb          	endbr32 
     958:	8d 4c 24 04          	lea    0x4(%esp),%ecx
     95c:	83 e4 f0             	and    $0xfffffff0,%esp
     95f:	ff 71 fc             	pushl  -0x4(%ecx)
     962:	55                   	push   %ebp
     963:	89 e5                	mov    %esp,%ebp
     965:	51                   	push   %ecx
     966:	83 ec 04             	sub    $0x4,%esp
     969:	83 ec 08             	sub    $0x8,%esp
     96c:	6a 02                	push   $0x2
     96e:	68 b9 10 00 00       	push   $0x10b9
     973:	e8 cf 02 00 00       	call   0xc47
     978:	83 c4 10             	add    $0x10,%esp
     97b:	85 c0                	test   %eax,%eax
     97d:	78 3b                	js     0x9ba
     97f:	83 f8 02             	cmp    $0x2,%eax
     982:	7e e5                	jle    0x969
     984:	83 ec 0c             	sub    $0xc,%esp
     987:	50                   	push   %eax
     988:	e8 a2 02 00 00       	call   0xc2f
     98d:	83 c4 10             	add    $0x10,%esp
     990:	eb 28                	jmp    0x9ba
     992:	e8 dd f6 ff ff       	call   0x74
     997:	85 c0                	test   %eax,%eax
     999:	0f 84 8c 00 00 00    	je     0xa2b
     99f:	83 ec 0c             	sub    $0xc,%esp
     9a2:	6a 00                	push   $0x0
     9a4:	e8 66 02 00 00       	call   0xc0f
     9a9:	83 c4 08             	add    $0x8,%esp
     9ac:	68 cf 10 00 00       	push   $0x10cf
     9b1:	50                   	push   %eax
     9b2:	e8 a1 03 00 00       	call   0xd58
     9b7:	83 c4 10             	add    $0x10,%esp
     9ba:	83 ec 08             	sub    $0x8,%esp
     9bd:	6a 64                	push   $0x64
     9bf:	68 a0 16 00 00       	push   $0x16a0
     9c4:	e8 37 f6 ff ff       	call   0x0
     9c9:	83 c4 10             	add    $0x10,%esp
     9cc:	85 c0                	test   %eax,%eax
     9ce:	78 70                	js     0xa40
     9d0:	80 3d a0 16 00 00 63 	cmpb   $0x63,0x16a0
     9d7:	75 b9                	jne    0x992
     9d9:	80 3d a1 16 00 00 64 	cmpb   $0x64,0x16a1
     9e0:	75 b0                	jne    0x992
     9e2:	80 3d a2 16 00 00 20 	cmpb   $0x20,0x16a2
     9e9:	75 a7                	jne    0x992
     9eb:	83 ec 0c             	sub    $0xc,%esp
     9ee:	68 a0 16 00 00       	push   $0x16a0
     9f3:	e8 a6 00 00 00       	call   0xa9e
     9f8:	c6 80 9f 16 00 00 00 	movb   $0x0,0x169f(%eax)
     9ff:	c7 04 24 a3 16 00 00 	movl   $0x16a3,(%esp)
     a06:	e8 6c 02 00 00       	call   0xc77
     a0b:	83 c4 10             	add    $0x10,%esp
     a0e:	85 c0                	test   %eax,%eax
     a10:	79 a8                	jns    0x9ba
     a12:	83 ec 04             	sub    $0x4,%esp
     a15:	68 a3 16 00 00       	push   $0x16a3
     a1a:	68 c1 10 00 00       	push   $0x10c1
     a1f:	6a 02                	push   $0x2
     a21:	e8 32 03 00 00       	call   0xd58
     a26:	83 c4 10             	add    $0x10,%esp
     a29:	eb 8f                	jmp    0x9ba
     a2b:	83 ec 0c             	sub    $0xc,%esp
     a2e:	68 a0 16 00 00       	push   $0x16a0
     a33:	e8 ac fe ff ff       	call   0x8e4
     a38:	89 04 24             	mov    %eax,(%esp)
     a3b:	e8 57 f6 ff ff       	call   0x97
     a40:	83 ec 0c             	sub    $0xc,%esp
     a43:	6a 00                	push   $0x0
     a45:	e8 bd 01 00 00       	call   0xc07
     a4a:	f3 0f 1e fb          	endbr32 
     a4e:	55                   	push   %ebp
     a4f:	89 e5                	mov    %esp,%ebp
     a51:	56                   	push   %esi
     a52:	53                   	push   %ebx
     a53:	8b 75 08             	mov    0x8(%ebp),%esi
     a56:	8b 55 0c             	mov    0xc(%ebp),%edx
     a59:	89 f0                	mov    %esi,%eax
     a5b:	89 d1                	mov    %edx,%ecx
     a5d:	83 c2 01             	add    $0x1,%edx
     a60:	89 c3                	mov    %eax,%ebx
     a62:	83 c0 01             	add    $0x1,%eax
     a65:	0f b6 09             	movzbl (%ecx),%ecx
     a68:	88 0b                	mov    %cl,(%ebx)
     a6a:	84 c9                	test   %cl,%cl
     a6c:	75 ed                	jne    0xa5b
     a6e:	89 f0                	mov    %esi,%eax
     a70:	5b                   	pop    %ebx
     a71:	5e                   	pop    %esi
     a72:	5d                   	pop    %ebp
     a73:	c3                   	ret    
     a74:	f3 0f 1e fb          	endbr32 
     a78:	55                   	push   %ebp
     a79:	89 e5                	mov    %esp,%ebp
     a7b:	8b 4d 08             	mov    0x8(%ebp),%ecx
     a7e:	8b 55 0c             	mov    0xc(%ebp),%edx
     a81:	0f b6 01             	movzbl (%ecx),%eax
     a84:	84 c0                	test   %al,%al
     a86:	74 0c                	je     0xa94
     a88:	3a 02                	cmp    (%edx),%al
     a8a:	75 08                	jne    0xa94
     a8c:	83 c1 01             	add    $0x1,%ecx
     a8f:	83 c2 01             	add    $0x1,%edx
     a92:	eb ed                	jmp    0xa81
     a94:	0f b6 c0             	movzbl %al,%eax
     a97:	0f b6 12             	movzbl (%edx),%edx
     a9a:	29 d0                	sub    %edx,%eax
     a9c:	5d                   	pop    %ebp
     a9d:	c3                   	ret    
     a9e:	f3 0f 1e fb          	endbr32 
     aa2:	55                   	push   %ebp
     aa3:	89 e5                	mov    %esp,%ebp
     aa5:	8b 4d 08             	mov    0x8(%ebp),%ecx
     aa8:	b8 00 00 00 00       	mov    $0x0,%eax
     aad:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
     ab1:	74 05                	je     0xab8
     ab3:	83 c0 01             	add    $0x1,%eax
     ab6:	eb f5                	jmp    0xaad
     ab8:	5d                   	pop    %ebp
     ab9:	c3                   	ret    
     aba:	f3 0f 1e fb          	endbr32 
     abe:	55                   	push   %ebp
     abf:	89 e5                	mov    %esp,%ebp
     ac1:	57                   	push   %edi
     ac2:	8b 55 08             	mov    0x8(%ebp),%edx
     ac5:	89 d7                	mov    %edx,%edi
     ac7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     aca:	8b 45 0c             	mov    0xc(%ebp),%eax
     acd:	fc                   	cld    
     ace:	f3 aa                	rep stos %al,%es:(%edi)
     ad0:	89 d0                	mov    %edx,%eax
     ad2:	5f                   	pop    %edi
     ad3:	5d                   	pop    %ebp
     ad4:	c3                   	ret    
     ad5:	f3 0f 1e fb          	endbr32 
     ad9:	55                   	push   %ebp
     ada:	89 e5                	mov    %esp,%ebp
     adc:	8b 45 08             	mov    0x8(%ebp),%eax
     adf:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
     ae3:	0f b6 10             	movzbl (%eax),%edx
     ae6:	84 d2                	test   %dl,%dl
     ae8:	74 09                	je     0xaf3
     aea:	38 ca                	cmp    %cl,%dl
     aec:	74 0a                	je     0xaf8
     aee:	83 c0 01             	add    $0x1,%eax
     af1:	eb f0                	jmp    0xae3
     af3:	b8 00 00 00 00       	mov    $0x0,%eax
     af8:	5d                   	pop    %ebp
     af9:	c3                   	ret    
     afa:	f3 0f 1e fb          	endbr32 
     afe:	55                   	push   %ebp
     aff:	89 e5                	mov    %esp,%ebp
     b01:	57                   	push   %edi
     b02:	56                   	push   %esi
     b03:	53                   	push   %ebx
     b04:	83 ec 1c             	sub    $0x1c,%esp
     b07:	8b 7d 08             	mov    0x8(%ebp),%edi
     b0a:	bb 00 00 00 00       	mov    $0x0,%ebx
     b0f:	89 de                	mov    %ebx,%esi
     b11:	83 c3 01             	add    $0x1,%ebx
     b14:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     b17:	7d 2e                	jge    0xb47
     b19:	83 ec 04             	sub    $0x4,%esp
     b1c:	6a 01                	push   $0x1
     b1e:	8d 45 e7             	lea    -0x19(%ebp),%eax
     b21:	50                   	push   %eax
     b22:	6a 00                	push   $0x0
     b24:	e8 f6 00 00 00       	call   0xc1f
     b29:	83 c4 10             	add    $0x10,%esp
     b2c:	85 c0                	test   %eax,%eax
     b2e:	7e 17                	jle    0xb47
     b30:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     b34:	88 04 37             	mov    %al,(%edi,%esi,1)
     b37:	3c 0a                	cmp    $0xa,%al
     b39:	0f 94 c2             	sete   %dl
     b3c:	3c 0d                	cmp    $0xd,%al
     b3e:	0f 94 c0             	sete   %al
     b41:	08 c2                	or     %al,%dl
     b43:	74 ca                	je     0xb0f
     b45:	89 de                	mov    %ebx,%esi
     b47:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
     b4b:	89 f8                	mov    %edi,%eax
     b4d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b50:	5b                   	pop    %ebx
     b51:	5e                   	pop    %esi
     b52:	5f                   	pop    %edi
     b53:	5d                   	pop    %ebp
     b54:	c3                   	ret    
     b55:	f3 0f 1e fb          	endbr32 
     b59:	55                   	push   %ebp
     b5a:	89 e5                	mov    %esp,%ebp
     b5c:	56                   	push   %esi
     b5d:	53                   	push   %ebx
     b5e:	83 ec 08             	sub    $0x8,%esp
     b61:	6a 00                	push   $0x0
     b63:	ff 75 08             	pushl  0x8(%ebp)
     b66:	e8 dc 00 00 00       	call   0xc47
     b6b:	83 c4 10             	add    $0x10,%esp
     b6e:	85 c0                	test   %eax,%eax
     b70:	78 24                	js     0xb96
     b72:	89 c3                	mov    %eax,%ebx
     b74:	83 ec 08             	sub    $0x8,%esp
     b77:	ff 75 0c             	pushl  0xc(%ebp)
     b7a:	50                   	push   %eax
     b7b:	e8 df 00 00 00       	call   0xc5f
     b80:	89 c6                	mov    %eax,%esi
     b82:	89 1c 24             	mov    %ebx,(%esp)
     b85:	e8 a5 00 00 00       	call   0xc2f
     b8a:	83 c4 10             	add    $0x10,%esp
     b8d:	89 f0                	mov    %esi,%eax
     b8f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     b92:	5b                   	pop    %ebx
     b93:	5e                   	pop    %esi
     b94:	5d                   	pop    %ebp
     b95:	c3                   	ret    
     b96:	be ff ff ff ff       	mov    $0xffffffff,%esi
     b9b:	eb f0                	jmp    0xb8d
     b9d:	f3 0f 1e fb          	endbr32 
     ba1:	55                   	push   %ebp
     ba2:	89 e5                	mov    %esp,%ebp
     ba4:	53                   	push   %ebx
     ba5:	8b 4d 08             	mov    0x8(%ebp),%ecx
     ba8:	ba 00 00 00 00       	mov    $0x0,%edx
     bad:	0f b6 01             	movzbl (%ecx),%eax
     bb0:	8d 58 d0             	lea    -0x30(%eax),%ebx
     bb3:	80 fb 09             	cmp    $0x9,%bl
     bb6:	77 12                	ja     0xbca
     bb8:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
     bbb:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
     bbe:	83 c1 01             	add    $0x1,%ecx
     bc1:	0f be c0             	movsbl %al,%eax
     bc4:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
     bc8:	eb e3                	jmp    0xbad
     bca:	89 d0                	mov    %edx,%eax
     bcc:	5b                   	pop    %ebx
     bcd:	5d                   	pop    %ebp
     bce:	c3                   	ret    
     bcf:	f3 0f 1e fb          	endbr32 
     bd3:	55                   	push   %ebp
     bd4:	89 e5                	mov    %esp,%ebp
     bd6:	56                   	push   %esi
     bd7:	53                   	push   %ebx
     bd8:	8b 75 08             	mov    0x8(%ebp),%esi
     bdb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     bde:	8b 45 10             	mov    0x10(%ebp),%eax
     be1:	89 f2                	mov    %esi,%edx
     be3:	8d 58 ff             	lea    -0x1(%eax),%ebx
     be6:	85 c0                	test   %eax,%eax
     be8:	7e 0f                	jle    0xbf9
     bea:	0f b6 01             	movzbl (%ecx),%eax
     bed:	88 02                	mov    %al,(%edx)
     bef:	8d 49 01             	lea    0x1(%ecx),%ecx
     bf2:	8d 52 01             	lea    0x1(%edx),%edx
     bf5:	89 d8                	mov    %ebx,%eax
     bf7:	eb ea                	jmp    0xbe3
     bf9:	89 f0                	mov    %esi,%eax
     bfb:	5b                   	pop    %ebx
     bfc:	5e                   	pop    %esi
     bfd:	5d                   	pop    %ebp
     bfe:	c3                   	ret    
     bff:	b8 01 00 00 00       	mov    $0x1,%eax
     c04:	cd 40                	int    $0x40
     c06:	c3                   	ret    
     c07:	b8 02 00 00 00       	mov    $0x2,%eax
     c0c:	cd 40                	int    $0x40
     c0e:	c3                   	ret    
     c0f:	b8 03 00 00 00       	mov    $0x3,%eax
     c14:	cd 40                	int    $0x40
     c16:	c3                   	ret    
     c17:	b8 04 00 00 00       	mov    $0x4,%eax
     c1c:	cd 40                	int    $0x40
     c1e:	c3                   	ret    
     c1f:	b8 05 00 00 00       	mov    $0x5,%eax
     c24:	cd 40                	int    $0x40
     c26:	c3                   	ret    
     c27:	b8 10 00 00 00       	mov    $0x10,%eax
     c2c:	cd 40                	int    $0x40
     c2e:	c3                   	ret    
     c2f:	b8 15 00 00 00       	mov    $0x15,%eax
     c34:	cd 40                	int    $0x40
     c36:	c3                   	ret    
     c37:	b8 06 00 00 00       	mov    $0x6,%eax
     c3c:	cd 40                	int    $0x40
     c3e:	c3                   	ret    
     c3f:	b8 07 00 00 00       	mov    $0x7,%eax
     c44:	cd 40                	int    $0x40
     c46:	c3                   	ret    
     c47:	b8 0f 00 00 00       	mov    $0xf,%eax
     c4c:	cd 40                	int    $0x40
     c4e:	c3                   	ret    
     c4f:	b8 11 00 00 00       	mov    $0x11,%eax
     c54:	cd 40                	int    $0x40
     c56:	c3                   	ret    
     c57:	b8 12 00 00 00       	mov    $0x12,%eax
     c5c:	cd 40                	int    $0x40
     c5e:	c3                   	ret    
     c5f:	b8 08 00 00 00       	mov    $0x8,%eax
     c64:	cd 40                	int    $0x40
     c66:	c3                   	ret    
     c67:	b8 13 00 00 00       	mov    $0x13,%eax
     c6c:	cd 40                	int    $0x40
     c6e:	c3                   	ret    
     c6f:	b8 14 00 00 00       	mov    $0x14,%eax
     c74:	cd 40                	int    $0x40
     c76:	c3                   	ret    
     c77:	b8 09 00 00 00       	mov    $0x9,%eax
     c7c:	cd 40                	int    $0x40
     c7e:	c3                   	ret    
     c7f:	b8 0a 00 00 00       	mov    $0xa,%eax
     c84:	cd 40                	int    $0x40
     c86:	c3                   	ret    
     c87:	b8 0b 00 00 00       	mov    $0xb,%eax
     c8c:	cd 40                	int    $0x40
     c8e:	c3                   	ret    
     c8f:	b8 0c 00 00 00       	mov    $0xc,%eax
     c94:	cd 40                	int    $0x40
     c96:	c3                   	ret    
     c97:	b8 0d 00 00 00       	mov    $0xd,%eax
     c9c:	cd 40                	int    $0x40
     c9e:	c3                   	ret    
     c9f:	b8 0e 00 00 00       	mov    $0xe,%eax
     ca4:	cd 40                	int    $0x40
     ca6:	c3                   	ret    
     ca7:	b8 16 00 00 00       	mov    $0x16,%eax
     cac:	cd 40                	int    $0x40
     cae:	c3                   	ret    
     caf:	b8 17 00 00 00       	mov    $0x17,%eax
     cb4:	cd 40                	int    $0x40
     cb6:	c3                   	ret    
     cb7:	55                   	push   %ebp
     cb8:	89 e5                	mov    %esp,%ebp
     cba:	83 ec 1c             	sub    $0x1c,%esp
     cbd:	88 55 f4             	mov    %dl,-0xc(%ebp)
     cc0:	6a 01                	push   $0x1
     cc2:	8d 55 f4             	lea    -0xc(%ebp),%edx
     cc5:	52                   	push   %edx
     cc6:	50                   	push   %eax
     cc7:	e8 5b ff ff ff       	call   0xc27
     ccc:	83 c4 10             	add    $0x10,%esp
     ccf:	c9                   	leave  
     cd0:	c3                   	ret    
     cd1:	55                   	push   %ebp
     cd2:	89 e5                	mov    %esp,%ebp
     cd4:	57                   	push   %edi
     cd5:	56                   	push   %esi
     cd6:	53                   	push   %ebx
     cd7:	83 ec 2c             	sub    $0x2c,%esp
     cda:	89 45 d0             	mov    %eax,-0x30(%ebp)
     cdd:	89 d6                	mov    %edx,%esi
     cdf:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
     ce3:	0f 95 c2             	setne  %dl
     ce6:	89 f0                	mov    %esi,%eax
     ce8:	c1 e8 1f             	shr    $0x1f,%eax
     ceb:	84 c2                	test   %al,%dl
     ced:	74 42                	je     0xd31
     cef:	f7 de                	neg    %esi
     cf1:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
     cf8:	bb 00 00 00 00       	mov    $0x0,%ebx
     cfd:	89 f0                	mov    %esi,%eax
     cff:	ba 00 00 00 00       	mov    $0x0,%edx
     d04:	f7 f1                	div    %ecx
     d06:	89 df                	mov    %ebx,%edi
     d08:	83 c3 01             	add    $0x1,%ebx
     d0b:	0f b6 92 18 11 00 00 	movzbl 0x1118(%edx),%edx
     d12:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
     d16:	89 f2                	mov    %esi,%edx
     d18:	89 c6                	mov    %eax,%esi
     d1a:	39 d1                	cmp    %edx,%ecx
     d1c:	76 df                	jbe    0xcfd
     d1e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
     d22:	74 2f                	je     0xd53
     d24:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
     d29:	8d 5f 02             	lea    0x2(%edi),%ebx
     d2c:	8b 75 d0             	mov    -0x30(%ebp),%esi
     d2f:	eb 15                	jmp    0xd46
     d31:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     d38:	eb be                	jmp    0xcf8
     d3a:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
     d3f:	89 f0                	mov    %esi,%eax
     d41:	e8 71 ff ff ff       	call   0xcb7
     d46:	83 eb 01             	sub    $0x1,%ebx
     d49:	79 ef                	jns    0xd3a
     d4b:	83 c4 2c             	add    $0x2c,%esp
     d4e:	5b                   	pop    %ebx
     d4f:	5e                   	pop    %esi
     d50:	5f                   	pop    %edi
     d51:	5d                   	pop    %ebp
     d52:	c3                   	ret    
     d53:	8b 75 d0             	mov    -0x30(%ebp),%esi
     d56:	eb ee                	jmp    0xd46
     d58:	f3 0f 1e fb          	endbr32 
     d5c:	55                   	push   %ebp
     d5d:	89 e5                	mov    %esp,%ebp
     d5f:	57                   	push   %edi
     d60:	56                   	push   %esi
     d61:	53                   	push   %ebx
     d62:	83 ec 1c             	sub    $0x1c,%esp
     d65:	8d 45 10             	lea    0x10(%ebp),%eax
     d68:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     d6b:	be 00 00 00 00       	mov    $0x0,%esi
     d70:	bb 00 00 00 00       	mov    $0x0,%ebx
     d75:	eb 14                	jmp    0xd8b
     d77:	89 fa                	mov    %edi,%edx
     d79:	8b 45 08             	mov    0x8(%ebp),%eax
     d7c:	e8 36 ff ff ff       	call   0xcb7
     d81:	eb 05                	jmp    0xd88
     d83:	83 fe 25             	cmp    $0x25,%esi
     d86:	74 25                	je     0xdad
     d88:	83 c3 01             	add    $0x1,%ebx
     d8b:	8b 45 0c             	mov    0xc(%ebp),%eax
     d8e:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
     d92:	84 c0                	test   %al,%al
     d94:	0f 84 23 01 00 00    	je     0xebd
     d9a:	0f be f8             	movsbl %al,%edi
     d9d:	0f b6 c0             	movzbl %al,%eax
     da0:	85 f6                	test   %esi,%esi
     da2:	75 df                	jne    0xd83
     da4:	83 f8 25             	cmp    $0x25,%eax
     da7:	75 ce                	jne    0xd77
     da9:	89 c6                	mov    %eax,%esi
     dab:	eb db                	jmp    0xd88
     dad:	83 f8 64             	cmp    $0x64,%eax
     db0:	74 49                	je     0xdfb
     db2:	83 f8 78             	cmp    $0x78,%eax
     db5:	0f 94 c1             	sete   %cl
     db8:	83 f8 70             	cmp    $0x70,%eax
     dbb:	0f 94 c2             	sete   %dl
     dbe:	08 d1                	or     %dl,%cl
     dc0:	75 63                	jne    0xe25
     dc2:	83 f8 73             	cmp    $0x73,%eax
     dc5:	0f 84 84 00 00 00    	je     0xe4f
     dcb:	83 f8 63             	cmp    $0x63,%eax
     dce:	0f 84 b7 00 00 00    	je     0xe8b
     dd4:	83 f8 25             	cmp    $0x25,%eax
     dd7:	0f 84 cc 00 00 00    	je     0xea9
     ddd:	ba 25 00 00 00       	mov    $0x25,%edx
     de2:	8b 45 08             	mov    0x8(%ebp),%eax
     de5:	e8 cd fe ff ff       	call   0xcb7
     dea:	89 fa                	mov    %edi,%edx
     dec:	8b 45 08             	mov    0x8(%ebp),%eax
     def:	e8 c3 fe ff ff       	call   0xcb7
     df4:	be 00 00 00 00       	mov    $0x0,%esi
     df9:	eb 8d                	jmp    0xd88
     dfb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
     dfe:	8b 17                	mov    (%edi),%edx
     e00:	83 ec 0c             	sub    $0xc,%esp
     e03:	6a 01                	push   $0x1
     e05:	b9 0a 00 00 00       	mov    $0xa,%ecx
     e0a:	8b 45 08             	mov    0x8(%ebp),%eax
     e0d:	e8 bf fe ff ff       	call   0xcd1
     e12:	83 c7 04             	add    $0x4,%edi
     e15:	89 7d e4             	mov    %edi,-0x1c(%ebp)
     e18:	83 c4 10             	add    $0x10,%esp
     e1b:	be 00 00 00 00       	mov    $0x0,%esi
     e20:	e9 63 ff ff ff       	jmp    0xd88
     e25:	8b 7d e4             	mov    -0x1c(%ebp),%edi
     e28:	8b 17                	mov    (%edi),%edx
     e2a:	83 ec 0c             	sub    $0xc,%esp
     e2d:	6a 00                	push   $0x0
     e2f:	b9 10 00 00 00       	mov    $0x10,%ecx
     e34:	8b 45 08             	mov    0x8(%ebp),%eax
     e37:	e8 95 fe ff ff       	call   0xcd1
     e3c:	83 c7 04             	add    $0x4,%edi
     e3f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
     e42:	83 c4 10             	add    $0x10,%esp
     e45:	be 00 00 00 00       	mov    $0x0,%esi
     e4a:	e9 39 ff ff ff       	jmp    0xd88
     e4f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     e52:	8b 30                	mov    (%eax),%esi
     e54:	83 c0 04             	add    $0x4,%eax
     e57:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     e5a:	85 f6                	test   %esi,%esi
     e5c:	75 28                	jne    0xe86
     e5e:	be 10 11 00 00       	mov    $0x1110,%esi
     e63:	8b 7d 08             	mov    0x8(%ebp),%edi
     e66:	eb 0d                	jmp    0xe75
     e68:	0f be d2             	movsbl %dl,%edx
     e6b:	89 f8                	mov    %edi,%eax
     e6d:	e8 45 fe ff ff       	call   0xcb7
     e72:	83 c6 01             	add    $0x1,%esi
     e75:	0f b6 16             	movzbl (%esi),%edx
     e78:	84 d2                	test   %dl,%dl
     e7a:	75 ec                	jne    0xe68
     e7c:	be 00 00 00 00       	mov    $0x0,%esi
     e81:	e9 02 ff ff ff       	jmp    0xd88
     e86:	8b 7d 08             	mov    0x8(%ebp),%edi
     e89:	eb ea                	jmp    0xe75
     e8b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
     e8e:	0f be 17             	movsbl (%edi),%edx
     e91:	8b 45 08             	mov    0x8(%ebp),%eax
     e94:	e8 1e fe ff ff       	call   0xcb7
     e99:	83 c7 04             	add    $0x4,%edi
     e9c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
     e9f:	be 00 00 00 00       	mov    $0x0,%esi
     ea4:	e9 df fe ff ff       	jmp    0xd88
     ea9:	89 fa                	mov    %edi,%edx
     eab:	8b 45 08             	mov    0x8(%ebp),%eax
     eae:	e8 04 fe ff ff       	call   0xcb7
     eb3:	be 00 00 00 00       	mov    $0x0,%esi
     eb8:	e9 cb fe ff ff       	jmp    0xd88
     ebd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ec0:	5b                   	pop    %ebx
     ec1:	5e                   	pop    %esi
     ec2:	5f                   	pop    %edi
     ec3:	5d                   	pop    %ebp
     ec4:	c3                   	ret    
     ec5:	f3 0f 1e fb          	endbr32 
     ec9:	55                   	push   %ebp
     eca:	89 e5                	mov    %esp,%ebp
     ecc:	57                   	push   %edi
     ecd:	56                   	push   %esi
     ece:	53                   	push   %ebx
     ecf:	8b 5d 08             	mov    0x8(%ebp),%ebx
     ed2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
     ed5:	a1 04 17 00 00       	mov    0x1704,%eax
     eda:	eb 02                	jmp    0xede
     edc:	89 d0                	mov    %edx,%eax
     ede:	39 c8                	cmp    %ecx,%eax
     ee0:	73 04                	jae    0xee6
     ee2:	39 08                	cmp    %ecx,(%eax)
     ee4:	77 12                	ja     0xef8
     ee6:	8b 10                	mov    (%eax),%edx
     ee8:	39 c2                	cmp    %eax,%edx
     eea:	77 f0                	ja     0xedc
     eec:	39 c8                	cmp    %ecx,%eax
     eee:	72 08                	jb     0xef8
     ef0:	39 ca                	cmp    %ecx,%edx
     ef2:	77 04                	ja     0xef8
     ef4:	89 d0                	mov    %edx,%eax
     ef6:	eb e6                	jmp    0xede
     ef8:	8b 73 fc             	mov    -0x4(%ebx),%esi
     efb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
     efe:	8b 10                	mov    (%eax),%edx
     f00:	39 d7                	cmp    %edx,%edi
     f02:	74 19                	je     0xf1d
     f04:	89 53 f8             	mov    %edx,-0x8(%ebx)
     f07:	8b 50 04             	mov    0x4(%eax),%edx
     f0a:	8d 34 d0             	lea    (%eax,%edx,8),%esi
     f0d:	39 ce                	cmp    %ecx,%esi
     f0f:	74 1b                	je     0xf2c
     f11:	89 08                	mov    %ecx,(%eax)
     f13:	a3 04 17 00 00       	mov    %eax,0x1704
     f18:	5b                   	pop    %ebx
     f19:	5e                   	pop    %esi
     f1a:	5f                   	pop    %edi
     f1b:	5d                   	pop    %ebp
     f1c:	c3                   	ret    
     f1d:	03 72 04             	add    0x4(%edx),%esi
     f20:	89 73 fc             	mov    %esi,-0x4(%ebx)
     f23:	8b 10                	mov    (%eax),%edx
     f25:	8b 12                	mov    (%edx),%edx
     f27:	89 53 f8             	mov    %edx,-0x8(%ebx)
     f2a:	eb db                	jmp    0xf07
     f2c:	03 53 fc             	add    -0x4(%ebx),%edx
     f2f:	89 50 04             	mov    %edx,0x4(%eax)
     f32:	8b 53 f8             	mov    -0x8(%ebx),%edx
     f35:	89 10                	mov    %edx,(%eax)
     f37:	eb da                	jmp    0xf13
     f39:	55                   	push   %ebp
     f3a:	89 e5                	mov    %esp,%ebp
     f3c:	53                   	push   %ebx
     f3d:	83 ec 04             	sub    $0x4,%esp
     f40:	89 c3                	mov    %eax,%ebx
     f42:	3d ff 0f 00 00       	cmp    $0xfff,%eax
     f47:	77 05                	ja     0xf4e
     f49:	bb 00 10 00 00       	mov    $0x1000,%ebx
     f4e:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
     f55:	83 ec 0c             	sub    $0xc,%esp
     f58:	50                   	push   %eax
     f59:	e8 31 fd ff ff       	call   0xc8f
     f5e:	83 c4 10             	add    $0x10,%esp
     f61:	83 f8 ff             	cmp    $0xffffffff,%eax
     f64:	74 1c                	je     0xf82
     f66:	89 58 04             	mov    %ebx,0x4(%eax)
     f69:	83 c0 08             	add    $0x8,%eax
     f6c:	83 ec 0c             	sub    $0xc,%esp
     f6f:	50                   	push   %eax
     f70:	e8 50 ff ff ff       	call   0xec5
     f75:	a1 04 17 00 00       	mov    0x1704,%eax
     f7a:	83 c4 10             	add    $0x10,%esp
     f7d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     f80:	c9                   	leave  
     f81:	c3                   	ret    
     f82:	b8 00 00 00 00       	mov    $0x0,%eax
     f87:	eb f4                	jmp    0xf7d
     f89:	f3 0f 1e fb          	endbr32 
     f8d:	55                   	push   %ebp
     f8e:	89 e5                	mov    %esp,%ebp
     f90:	53                   	push   %ebx
     f91:	83 ec 04             	sub    $0x4,%esp
     f94:	8b 45 08             	mov    0x8(%ebp),%eax
     f97:	8d 58 07             	lea    0x7(%eax),%ebx
     f9a:	c1 eb 03             	shr    $0x3,%ebx
     f9d:	83 c3 01             	add    $0x1,%ebx
     fa0:	8b 0d 04 17 00 00    	mov    0x1704,%ecx
     fa6:	85 c9                	test   %ecx,%ecx
     fa8:	74 04                	je     0xfae
     faa:	8b 01                	mov    (%ecx),%eax
     fac:	eb 4b                	jmp    0xff9
     fae:	c7 05 04 17 00 00 08 	movl   $0x1708,0x1704
     fb5:	17 00 00 
     fb8:	c7 05 08 17 00 00 08 	movl   $0x1708,0x1708
     fbf:	17 00 00 
     fc2:	c7 05 0c 17 00 00 00 	movl   $0x0,0x170c
     fc9:	00 00 00 
     fcc:	b9 08 17 00 00       	mov    $0x1708,%ecx
     fd1:	eb d7                	jmp    0xfaa
     fd3:	74 1a                	je     0xfef
     fd5:	29 da                	sub    %ebx,%edx
     fd7:	89 50 04             	mov    %edx,0x4(%eax)
     fda:	8d 04 d0             	lea    (%eax,%edx,8),%eax
     fdd:	89 58 04             	mov    %ebx,0x4(%eax)
     fe0:	89 0d 04 17 00 00    	mov    %ecx,0x1704
     fe6:	83 c0 08             	add    $0x8,%eax
     fe9:	83 c4 04             	add    $0x4,%esp
     fec:	5b                   	pop    %ebx
     fed:	5d                   	pop    %ebp
     fee:	c3                   	ret    
     fef:	8b 10                	mov    (%eax),%edx
     ff1:	89 11                	mov    %edx,(%ecx)
     ff3:	eb eb                	jmp    0xfe0
     ff5:	89 c1                	mov    %eax,%ecx
     ff7:	8b 00                	mov    (%eax),%eax
     ff9:	8b 50 04             	mov    0x4(%eax),%edx
     ffc:	39 da                	cmp    %ebx,%edx
     ffe:	73 d3                	jae    0xfd3
    1000:	39 05 04 17 00 00    	cmp    %eax,0x1704
    1006:	75 ed                	jne    0xff5
    1008:	89 d8                	mov    %ebx,%eax
    100a:	e8 2a ff ff ff       	call   0xf39
    100f:	85 c0                	test   %eax,%eax
    1011:	75 e2                	jne    0xff5
    1013:	eb d4                	jmp    0xfe9
