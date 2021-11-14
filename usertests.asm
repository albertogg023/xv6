
_usertests:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
       0:	f3 0f 1e fb          	endbr32 
       4:	55                   	push   %ebp
       5:	89 e5                	mov    %esp,%ebp
       7:	83 ec 10             	sub    $0x10,%esp
       a:	68 74 3c 00 00       	push   $0x3c74
       f:	ff 35 10 5c 00 00    	pushl  0x5c10
      15:	e8 09 39 00 00       	call   0x3923
      1a:	c7 04 24 07 3c 00 00 	movl   $0x3c07,(%esp)
      21:	e8 14 38 00 00       	call   0x383a
      26:	83 c4 10             	add    $0x10,%esp
      29:	85 c0                	test   %eax,%eax
      2b:	78 54                	js     0x81
      2d:	83 ec 0c             	sub    $0xc,%esp
      30:	68 07 3c 00 00       	push   $0x3c07
      35:	e8 08 38 00 00       	call   0x3842
      3a:	83 c4 10             	add    $0x10,%esp
      3d:	85 c0                	test   %eax,%eax
      3f:	78 58                	js     0x99
      41:	83 ec 0c             	sub    $0xc,%esp
      44:	68 04 3c 00 00       	push   $0x3c04
      49:	e8 d4 37 00 00       	call   0x3822
      4e:	83 c4 10             	add    $0x10,%esp
      51:	85 c0                	test   %eax,%eax
      53:	78 5c                	js     0xb1
      55:	83 ec 0c             	sub    $0xc,%esp
      58:	68 29 3c 00 00       	push   $0x3c29
      5d:	e8 e0 37 00 00       	call   0x3842
      62:	83 c4 10             	add    $0x10,%esp
      65:	85 c0                	test   %eax,%eax
      67:	78 60                	js     0xc9
      69:	83 ec 08             	sub    $0x8,%esp
      6c:	68 ac 3c 00 00       	push   $0x3cac
      71:	ff 35 10 5c 00 00    	pushl  0x5c10
      77:	e8 a7 38 00 00       	call   0x3923
      7c:	83 c4 10             	add    $0x10,%esp
      7f:	c9                   	leave  
      80:	c3                   	ret    
      81:	83 ec 08             	sub    $0x8,%esp
      84:	68 e0 3b 00 00       	push   $0x3be0
      89:	ff 35 10 5c 00 00    	pushl  0x5c10
      8f:	e8 8f 38 00 00       	call   0x3923
      94:	e8 39 37 00 00       	call   0x37d2
      99:	83 ec 08             	sub    $0x8,%esp
      9c:	68 ee 3b 00 00       	push   $0x3bee
      a1:	ff 35 10 5c 00 00    	pushl  0x5c10
      a7:	e8 77 38 00 00       	call   0x3923
      ac:	e8 21 37 00 00       	call   0x37d2
      b1:	83 ec 08             	sub    $0x8,%esp
      b4:	68 0f 3c 00 00       	push   $0x3c0f
      b9:	ff 35 10 5c 00 00    	pushl  0x5c10
      bf:	e8 5f 38 00 00       	call   0x3923
      c4:	e8 09 37 00 00       	call   0x37d2
      c9:	83 ec 08             	sub    $0x8,%esp
      cc:	68 2b 3c 00 00       	push   $0x3c2b
      d1:	ff 35 10 5c 00 00    	pushl  0x5c10
      d7:	e8 47 38 00 00       	call   0x3923
      dc:	e8 f1 36 00 00       	call   0x37d2
      e1:	f3 0f 1e fb          	endbr32 
      e5:	55                   	push   %ebp
      e6:	89 e5                	mov    %esp,%ebp
      e8:	83 ec 10             	sub    $0x10,%esp
      eb:	68 3b 3c 00 00       	push   $0x3c3b
      f0:	ff 35 10 5c 00 00    	pushl  0x5c10
      f6:	e8 28 38 00 00       	call   0x3923
      fb:	e8 ca 36 00 00       	call   0x37ca
     100:	83 c4 10             	add    $0x10,%esp
     103:	85 c0                	test   %eax,%eax
     105:	78 47                	js     0x14e
     107:	0f 85 a1 00 00 00    	jne    0x1ae
     10d:	83 ec 0c             	sub    $0xc,%esp
     110:	68 07 3c 00 00       	push   $0x3c07
     115:	e8 20 37 00 00       	call   0x383a
     11a:	83 c4 10             	add    $0x10,%esp
     11d:	85 c0                	test   %eax,%eax
     11f:	78 45                	js     0x166
     121:	83 ec 0c             	sub    $0xc,%esp
     124:	68 07 3c 00 00       	push   $0x3c07
     129:	e8 14 37 00 00       	call   0x3842
     12e:	83 c4 10             	add    $0x10,%esp
     131:	85 c0                	test   %eax,%eax
     133:	78 49                	js     0x17e
     135:	83 ec 0c             	sub    $0xc,%esp
     138:	68 04 3c 00 00       	push   $0x3c04
     13d:	e8 e0 36 00 00       	call   0x3822
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 4d                	js     0x196
     149:	e8 84 36 00 00       	call   0x37d2
     14e:	83 ec 08             	sub    $0x8,%esp
     151:	68 21 4b 00 00       	push   $0x4b21
     156:	ff 35 10 5c 00 00    	pushl  0x5c10
     15c:	e8 c2 37 00 00       	call   0x3923
     161:	e8 6c 36 00 00       	call   0x37d2
     166:	83 ec 08             	sub    $0x8,%esp
     169:	68 e0 3b 00 00       	push   $0x3be0
     16e:	ff 35 10 5c 00 00    	pushl  0x5c10
     174:	e8 aa 37 00 00       	call   0x3923
     179:	e8 54 36 00 00       	call   0x37d2
     17e:	83 ec 08             	sub    $0x8,%esp
     181:	68 4a 3c 00 00       	push   $0x3c4a
     186:	ff 35 10 5c 00 00    	pushl  0x5c10
     18c:	e8 92 37 00 00       	call   0x3923
     191:	e8 3c 36 00 00       	call   0x37d2
     196:	83 ec 08             	sub    $0x8,%esp
     199:	68 0f 3c 00 00       	push   $0x3c0f
     19e:	ff 35 10 5c 00 00    	pushl  0x5c10
     1a4:	e8 7a 37 00 00       	call   0x3923
     1a9:	e8 24 36 00 00       	call   0x37d2
     1ae:	e8 27 36 00 00       	call   0x37da
     1b3:	83 ec 08             	sub    $0x8,%esp
     1b6:	68 5e 3c 00 00       	push   $0x3c5e
     1bb:	ff 35 10 5c 00 00    	pushl  0x5c10
     1c1:	e8 5d 37 00 00       	call   0x3923
     1c6:	83 c4 10             	add    $0x10,%esp
     1c9:	c9                   	leave  
     1ca:	c3                   	ret    
     1cb:	f3 0f 1e fb          	endbr32 
     1cf:	55                   	push   %ebp
     1d0:	89 e5                	mov    %esp,%ebp
     1d2:	83 ec 10             	sub    $0x10,%esp
     1d5:	68 70 3c 00 00       	push   $0x3c70
     1da:	ff 35 10 5c 00 00    	pushl  0x5c10
     1e0:	e8 3e 37 00 00       	call   0x3923
     1e5:	c7 04 24 7f 3c 00 00 	movl   $0x3c7f,(%esp)
     1ec:	e8 49 36 00 00       	call   0x383a
     1f1:	83 c4 10             	add    $0x10,%esp
     1f4:	85 c0                	test   %eax,%eax
     1f6:	78 39                	js     0x231
     1f8:	e8 cd 35 00 00       	call   0x37ca
     1fd:	85 c0                	test   %eax,%eax
     1ff:	78 48                	js     0x249
     201:	75 63                	jne    0x266
     203:	83 ec 08             	sub    $0x8,%esp
     206:	6a 02                	push   $0x2
     208:	68 7f 3c 00 00       	push   $0x3c7f
     20d:	e8 00 36 00 00       	call   0x3812
     212:	83 c4 10             	add    $0x10,%esp
     215:	85 c0                	test   %eax,%eax
     217:	78 48                	js     0x261
     219:	83 ec 08             	sub    $0x8,%esp
     21c:	68 04 4c 00 00       	push   $0x4c04
     221:	ff 35 10 5c 00 00    	pushl  0x5c10
     227:	e8 f7 36 00 00       	call   0x3923
     22c:	e8 a1 35 00 00       	call   0x37d2
     231:	83 ec 08             	sub    $0x8,%esp
     234:	68 85 3c 00 00       	push   $0x3c85
     239:	ff 35 10 5c 00 00    	pushl  0x5c10
     23f:	e8 df 36 00 00       	call   0x3923
     244:	e8 89 35 00 00       	call   0x37d2
     249:	83 ec 08             	sub    $0x8,%esp
     24c:	68 21 4b 00 00       	push   $0x4b21
     251:	ff 35 10 5c 00 00    	pushl  0x5c10
     257:	e8 c7 36 00 00       	call   0x3923
     25c:	e8 71 35 00 00       	call   0x37d2
     261:	e8 6c 35 00 00       	call   0x37d2
     266:	83 ec 0c             	sub    $0xc,%esp
     269:	6a 01                	push   $0x1
     26b:	e8 f2 35 00 00       	call   0x3862
     270:	c7 04 24 7f 3c 00 00 	movl   $0x3c7f,(%esp)
     277:	e8 a6 35 00 00       	call   0x3822
     27c:	83 c4 10             	add    $0x10,%esp
     27f:	85 c0                	test   %eax,%eax
     281:	75 1d                	jne    0x2a0
     283:	e8 52 35 00 00       	call   0x37da
     288:	83 ec 08             	sub    $0x8,%esp
     28b:	68 a8 3c 00 00       	push   $0x3ca8
     290:	ff 35 10 5c 00 00    	pushl  0x5c10
     296:	e8 88 36 00 00       	call   0x3923
     29b:	83 c4 10             	add    $0x10,%esp
     29e:	c9                   	leave  
     29f:	c3                   	ret    
     2a0:	83 ec 08             	sub    $0x8,%esp
     2a3:	68 99 3c 00 00       	push   $0x3c99
     2a8:	ff 35 10 5c 00 00    	pushl  0x5c10
     2ae:	e8 70 36 00 00       	call   0x3923
     2b3:	e8 1a 35 00 00       	call   0x37d2
     2b8:	f3 0f 1e fb          	endbr32 
     2bc:	55                   	push   %ebp
     2bd:	89 e5                	mov    %esp,%ebp
     2bf:	83 ec 10             	sub    $0x10,%esp
     2c2:	68 ba 3c 00 00       	push   $0x3cba
     2c7:	ff 35 10 5c 00 00    	pushl  0x5c10
     2cd:	e8 51 36 00 00       	call   0x3923
     2d2:	83 c4 08             	add    $0x8,%esp
     2d5:	6a 00                	push   $0x0
     2d7:	68 c5 3c 00 00       	push   $0x3cc5
     2dc:	e8 31 35 00 00       	call   0x3812
     2e1:	83 c4 10             	add    $0x10,%esp
     2e4:	85 c0                	test   %eax,%eax
     2e6:	78 37                	js     0x31f
     2e8:	83 ec 0c             	sub    $0xc,%esp
     2eb:	50                   	push   %eax
     2ec:	e8 09 35 00 00       	call   0x37fa
     2f1:	83 c4 08             	add    $0x8,%esp
     2f4:	6a 00                	push   $0x0
     2f6:	68 dd 3c 00 00       	push   $0x3cdd
     2fb:	e8 12 35 00 00       	call   0x3812
     300:	83 c4 10             	add    $0x10,%esp
     303:	85 c0                	test   %eax,%eax
     305:	79 30                	jns    0x337
     307:	83 ec 08             	sub    $0x8,%esp
     30a:	68 08 3d 00 00       	push   $0x3d08
     30f:	ff 35 10 5c 00 00    	pushl  0x5c10
     315:	e8 09 36 00 00       	call   0x3923
     31a:	83 c4 10             	add    $0x10,%esp
     31d:	c9                   	leave  
     31e:	c3                   	ret    
     31f:	83 ec 08             	sub    $0x8,%esp
     322:	68 ca 3c 00 00       	push   $0x3cca
     327:	ff 35 10 5c 00 00    	pushl  0x5c10
     32d:	e8 f1 35 00 00       	call   0x3923
     332:	e8 9b 34 00 00       	call   0x37d2
     337:	83 ec 08             	sub    $0x8,%esp
     33a:	68 ea 3c 00 00       	push   $0x3cea
     33f:	ff 35 10 5c 00 00    	pushl  0x5c10
     345:	e8 d9 35 00 00       	call   0x3923
     34a:	e8 83 34 00 00       	call   0x37d2
     34f:	f3 0f 1e fb          	endbr32 
     353:	55                   	push   %ebp
     354:	89 e5                	mov    %esp,%ebp
     356:	56                   	push   %esi
     357:	53                   	push   %ebx
     358:	83 ec 08             	sub    $0x8,%esp
     35b:	68 16 3d 00 00       	push   $0x3d16
     360:	ff 35 10 5c 00 00    	pushl  0x5c10
     366:	e8 b8 35 00 00       	call   0x3923
     36b:	83 c4 08             	add    $0x8,%esp
     36e:	68 02 02 00 00       	push   $0x202
     373:	68 27 3d 00 00       	push   $0x3d27
     378:	e8 95 34 00 00       	call   0x3812
     37d:	83 c4 10             	add    $0x10,%esp
     380:	85 c0                	test   %eax,%eax
     382:	78 57                	js     0x3db
     384:	89 c6                	mov    %eax,%esi
     386:	83 ec 08             	sub    $0x8,%esp
     389:	68 2d 3d 00 00       	push   $0x3d2d
     38e:	ff 35 10 5c 00 00    	pushl  0x5c10
     394:	e8 8a 35 00 00       	call   0x3923
     399:	83 c4 10             	add    $0x10,%esp
     39c:	bb 00 00 00 00       	mov    $0x0,%ebx
     3a1:	83 fb 63             	cmp    $0x63,%ebx
     3a4:	7f 7f                	jg     0x425
     3a6:	83 ec 04             	sub    $0x4,%esp
     3a9:	6a 0a                	push   $0xa
     3ab:	68 64 3d 00 00       	push   $0x3d64
     3b0:	56                   	push   %esi
     3b1:	e8 3c 34 00 00       	call   0x37f2
     3b6:	83 c4 10             	add    $0x10,%esp
     3b9:	83 f8 0a             	cmp    $0xa,%eax
     3bc:	75 35                	jne    0x3f3
     3be:	83 ec 04             	sub    $0x4,%esp
     3c1:	6a 0a                	push   $0xa
     3c3:	68 6f 3d 00 00       	push   $0x3d6f
     3c8:	56                   	push   %esi
     3c9:	e8 24 34 00 00       	call   0x37f2
     3ce:	83 c4 10             	add    $0x10,%esp
     3d1:	83 f8 0a             	cmp    $0xa,%eax
     3d4:	75 36                	jne    0x40c
     3d6:	83 c3 01             	add    $0x1,%ebx
     3d9:	eb c6                	jmp    0x3a1
     3db:	83 ec 08             	sub    $0x8,%esp
     3de:	68 48 3d 00 00       	push   $0x3d48
     3e3:	ff 35 10 5c 00 00    	pushl  0x5c10
     3e9:	e8 35 35 00 00       	call   0x3923
     3ee:	e8 df 33 00 00       	call   0x37d2
     3f3:	83 ec 04             	sub    $0x4,%esp
     3f6:	53                   	push   %ebx
     3f7:	68 28 4c 00 00       	push   $0x4c28
     3fc:	ff 35 10 5c 00 00    	pushl  0x5c10
     402:	e8 1c 35 00 00       	call   0x3923
     407:	e8 c6 33 00 00       	call   0x37d2
     40c:	83 ec 04             	sub    $0x4,%esp
     40f:	53                   	push   %ebx
     410:	68 4c 4c 00 00       	push   $0x4c4c
     415:	ff 35 10 5c 00 00    	pushl  0x5c10
     41b:	e8 03 35 00 00       	call   0x3923
     420:	e8 ad 33 00 00       	call   0x37d2
     425:	83 ec 08             	sub    $0x8,%esp
     428:	68 7a 3d 00 00       	push   $0x3d7a
     42d:	ff 35 10 5c 00 00    	pushl  0x5c10
     433:	e8 eb 34 00 00       	call   0x3923
     438:	89 34 24             	mov    %esi,(%esp)
     43b:	e8 ba 33 00 00       	call   0x37fa
     440:	83 c4 08             	add    $0x8,%esp
     443:	6a 00                	push   $0x0
     445:	68 27 3d 00 00       	push   $0x3d27
     44a:	e8 c3 33 00 00       	call   0x3812
     44f:	89 c3                	mov    %eax,%ebx
     451:	83 c4 10             	add    $0x10,%esp
     454:	85 c0                	test   %eax,%eax
     456:	78 7b                	js     0x4d3
     458:	83 ec 08             	sub    $0x8,%esp
     45b:	68 85 3d 00 00       	push   $0x3d85
     460:	ff 35 10 5c 00 00    	pushl  0x5c10
     466:	e8 b8 34 00 00       	call   0x3923
     46b:	83 c4 0c             	add    $0xc,%esp
     46e:	68 d0 07 00 00       	push   $0x7d0
     473:	68 00 84 00 00       	push   $0x8400
     478:	53                   	push   %ebx
     479:	e8 6c 33 00 00       	call   0x37ea
     47e:	83 c4 10             	add    $0x10,%esp
     481:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     486:	75 63                	jne    0x4eb
     488:	83 ec 08             	sub    $0x8,%esp
     48b:	68 b9 3d 00 00       	push   $0x3db9
     490:	ff 35 10 5c 00 00    	pushl  0x5c10
     496:	e8 88 34 00 00       	call   0x3923
     49b:	89 1c 24             	mov    %ebx,(%esp)
     49e:	e8 57 33 00 00       	call   0x37fa
     4a3:	c7 04 24 27 3d 00 00 	movl   $0x3d27,(%esp)
     4aa:	e8 73 33 00 00       	call   0x3822
     4af:	83 c4 10             	add    $0x10,%esp
     4b2:	85 c0                	test   %eax,%eax
     4b4:	78 4d                	js     0x503
     4b6:	83 ec 08             	sub    $0x8,%esp
     4b9:	68 e1 3d 00 00       	push   $0x3de1
     4be:	ff 35 10 5c 00 00    	pushl  0x5c10
     4c4:	e8 5a 34 00 00       	call   0x3923
     4c9:	83 c4 10             	add    $0x10,%esp
     4cc:	8d 65 f8             	lea    -0x8(%ebp),%esp
     4cf:	5b                   	pop    %ebx
     4d0:	5e                   	pop    %esi
     4d1:	5d                   	pop    %ebp
     4d2:	c3                   	ret    
     4d3:	83 ec 08             	sub    $0x8,%esp
     4d6:	68 9e 3d 00 00       	push   $0x3d9e
     4db:	ff 35 10 5c 00 00    	pushl  0x5c10
     4e1:	e8 3d 34 00 00       	call   0x3923
     4e6:	e8 e7 32 00 00       	call   0x37d2
     4eb:	83 ec 08             	sub    $0x8,%esp
     4ee:	68 e5 40 00 00       	push   $0x40e5
     4f3:	ff 35 10 5c 00 00    	pushl  0x5c10
     4f9:	e8 25 34 00 00       	call   0x3923
     4fe:	e8 cf 32 00 00       	call   0x37d2
     503:	83 ec 08             	sub    $0x8,%esp
     506:	68 cc 3d 00 00       	push   $0x3dcc
     50b:	ff 35 10 5c 00 00    	pushl  0x5c10
     511:	e8 0d 34 00 00       	call   0x3923
     516:	e8 b7 32 00 00       	call   0x37d2
     51b:	f3 0f 1e fb          	endbr32 
     51f:	55                   	push   %ebp
     520:	89 e5                	mov    %esp,%ebp
     522:	56                   	push   %esi
     523:	53                   	push   %ebx
     524:	83 ec 08             	sub    $0x8,%esp
     527:	68 f5 3d 00 00       	push   $0x3df5
     52c:	ff 35 10 5c 00 00    	pushl  0x5c10
     532:	e8 ec 33 00 00       	call   0x3923
     537:	83 c4 08             	add    $0x8,%esp
     53a:	68 02 02 00 00       	push   $0x202
     53f:	68 6f 3e 00 00       	push   $0x3e6f
     544:	e8 c9 32 00 00       	call   0x3812
     549:	83 c4 10             	add    $0x10,%esp
     54c:	85 c0                	test   %eax,%eax
     54e:	78 37                	js     0x587
     550:	89 c6                	mov    %eax,%esi
     552:	bb 00 00 00 00       	mov    $0x0,%ebx
     557:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     55d:	77 59                	ja     0x5b8
     55f:	89 1d 00 84 00 00    	mov    %ebx,0x8400
     565:	83 ec 04             	sub    $0x4,%esp
     568:	68 00 02 00 00       	push   $0x200
     56d:	68 00 84 00 00       	push   $0x8400
     572:	56                   	push   %esi
     573:	e8 7a 32 00 00       	call   0x37f2
     578:	83 c4 10             	add    $0x10,%esp
     57b:	3d 00 02 00 00       	cmp    $0x200,%eax
     580:	75 1d                	jne    0x59f
     582:	83 c3 01             	add    $0x1,%ebx
     585:	eb d0                	jmp    0x557
     587:	83 ec 08             	sub    $0x8,%esp
     58a:	68 05 3e 00 00       	push   $0x3e05
     58f:	ff 35 10 5c 00 00    	pushl  0x5c10
     595:	e8 89 33 00 00       	call   0x3923
     59a:	e8 33 32 00 00       	call   0x37d2
     59f:	83 ec 04             	sub    $0x4,%esp
     5a2:	53                   	push   %ebx
     5a3:	68 1f 3e 00 00       	push   $0x3e1f
     5a8:	ff 35 10 5c 00 00    	pushl  0x5c10
     5ae:	e8 70 33 00 00       	call   0x3923
     5b3:	e8 1a 32 00 00       	call   0x37d2
     5b8:	83 ec 0c             	sub    $0xc,%esp
     5bb:	56                   	push   %esi
     5bc:	e8 39 32 00 00       	call   0x37fa
     5c1:	83 c4 08             	add    $0x8,%esp
     5c4:	6a 00                	push   $0x0
     5c6:	68 6f 3e 00 00       	push   $0x3e6f
     5cb:	e8 42 32 00 00       	call   0x3812
     5d0:	89 c6                	mov    %eax,%esi
     5d2:	83 c4 10             	add    $0x10,%esp
     5d5:	85 c0                	test   %eax,%eax
     5d7:	78 3c                	js     0x615
     5d9:	bb 00 00 00 00       	mov    $0x0,%ebx
     5de:	83 ec 04             	sub    $0x4,%esp
     5e1:	68 00 02 00 00       	push   $0x200
     5e6:	68 00 84 00 00       	push   $0x8400
     5eb:	56                   	push   %esi
     5ec:	e8 f9 31 00 00       	call   0x37ea
     5f1:	83 c4 10             	add    $0x10,%esp
     5f4:	85 c0                	test   %eax,%eax
     5f6:	74 35                	je     0x62d
     5f8:	3d 00 02 00 00       	cmp    $0x200,%eax
     5fd:	0f 85 84 00 00 00    	jne    0x687
     603:	a1 00 84 00 00       	mov    0x8400,%eax
     608:	39 d8                	cmp    %ebx,%eax
     60a:	0f 85 90 00 00 00    	jne    0x6a0
     610:	83 c3 01             	add    $0x1,%ebx
     613:	eb c9                	jmp    0x5de
     615:	83 ec 08             	sub    $0x8,%esp
     618:	68 3d 3e 00 00       	push   $0x3e3d
     61d:	ff 35 10 5c 00 00    	pushl  0x5c10
     623:	e8 fb 32 00 00       	call   0x3923
     628:	e8 a5 31 00 00       	call   0x37d2
     62d:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     633:	74 39                	je     0x66e
     635:	83 ec 0c             	sub    $0xc,%esp
     638:	56                   	push   %esi
     639:	e8 bc 31 00 00       	call   0x37fa
     63e:	c7 04 24 6f 3e 00 00 	movl   $0x3e6f,(%esp)
     645:	e8 d8 31 00 00       	call   0x3822
     64a:	83 c4 10             	add    $0x10,%esp
     64d:	85 c0                	test   %eax,%eax
     64f:	78 66                	js     0x6b7
     651:	83 ec 08             	sub    $0x8,%esp
     654:	68 96 3e 00 00       	push   $0x3e96
     659:	ff 35 10 5c 00 00    	pushl  0x5c10
     65f:	e8 bf 32 00 00       	call   0x3923
     664:	83 c4 10             	add    $0x10,%esp
     667:	8d 65 f8             	lea    -0x8(%ebp),%esp
     66a:	5b                   	pop    %ebx
     66b:	5e                   	pop    %esi
     66c:	5d                   	pop    %ebp
     66d:	c3                   	ret    
     66e:	83 ec 04             	sub    $0x4,%esp
     671:	53                   	push   %ebx
     672:	68 56 3e 00 00       	push   $0x3e56
     677:	ff 35 10 5c 00 00    	pushl  0x5c10
     67d:	e8 a1 32 00 00       	call   0x3923
     682:	e8 4b 31 00 00       	call   0x37d2
     687:	83 ec 04             	sub    $0x4,%esp
     68a:	50                   	push   %eax
     68b:	68 73 3e 00 00       	push   $0x3e73
     690:	ff 35 10 5c 00 00    	pushl  0x5c10
     696:	e8 88 32 00 00       	call   0x3923
     69b:	e8 32 31 00 00       	call   0x37d2
     6a0:	50                   	push   %eax
     6a1:	53                   	push   %ebx
     6a2:	68 70 4c 00 00       	push   $0x4c70
     6a7:	ff 35 10 5c 00 00    	pushl  0x5c10
     6ad:	e8 71 32 00 00       	call   0x3923
     6b2:	e8 1b 31 00 00       	call   0x37d2
     6b7:	83 ec 08             	sub    $0x8,%esp
     6ba:	68 83 3e 00 00       	push   $0x3e83
     6bf:	ff 35 10 5c 00 00    	pushl  0x5c10
     6c5:	e8 59 32 00 00       	call   0x3923
     6ca:	e8 03 31 00 00       	call   0x37d2
     6cf:	f3 0f 1e fb          	endbr32 
     6d3:	55                   	push   %ebp
     6d4:	89 e5                	mov    %esp,%ebp
     6d6:	53                   	push   %ebx
     6d7:	83 ec 0c             	sub    $0xc,%esp
     6da:	68 90 4c 00 00       	push   $0x4c90
     6df:	ff 35 10 5c 00 00    	pushl  0x5c10
     6e5:	e8 39 32 00 00       	call   0x3923
     6ea:	c6 05 00 a4 00 00 61 	movb   $0x61,0xa400
     6f1:	c6 05 02 a4 00 00 00 	movb   $0x0,0xa402
     6f8:	83 c4 10             	add    $0x10,%esp
     6fb:	bb 00 00 00 00       	mov    $0x0,%ebx
     700:	eb 28                	jmp    0x72a
     702:	8d 43 30             	lea    0x30(%ebx),%eax
     705:	a2 01 a4 00 00       	mov    %al,0xa401
     70a:	83 ec 08             	sub    $0x8,%esp
     70d:	68 02 02 00 00       	push   $0x202
     712:	68 00 a4 00 00       	push   $0xa400
     717:	e8 f6 30 00 00       	call   0x3812
     71c:	89 04 24             	mov    %eax,(%esp)
     71f:	e8 d6 30 00 00       	call   0x37fa
     724:	83 c3 01             	add    $0x1,%ebx
     727:	83 c4 10             	add    $0x10,%esp
     72a:	83 fb 33             	cmp    $0x33,%ebx
     72d:	7e d3                	jle    0x702
     72f:	c6 05 00 a4 00 00 61 	movb   $0x61,0xa400
     736:	c6 05 02 a4 00 00 00 	movb   $0x0,0xa402
     73d:	bb 00 00 00 00       	mov    $0x0,%ebx
     742:	eb 1b                	jmp    0x75f
     744:	8d 43 30             	lea    0x30(%ebx),%eax
     747:	a2 01 a4 00 00       	mov    %al,0xa401
     74c:	83 ec 0c             	sub    $0xc,%esp
     74f:	68 00 a4 00 00       	push   $0xa400
     754:	e8 c9 30 00 00       	call   0x3822
     759:	83 c3 01             	add    $0x1,%ebx
     75c:	83 c4 10             	add    $0x10,%esp
     75f:	83 fb 33             	cmp    $0x33,%ebx
     762:	7e e0                	jle    0x744
     764:	83 ec 08             	sub    $0x8,%esp
     767:	68 b8 4c 00 00       	push   $0x4cb8
     76c:	ff 35 10 5c 00 00    	pushl  0x5c10
     772:	e8 ac 31 00 00       	call   0x3923
     777:	83 c4 10             	add    $0x10,%esp
     77a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     77d:	c9                   	leave  
     77e:	c3                   	ret    
     77f:	f3 0f 1e fb          	endbr32 
     783:	55                   	push   %ebp
     784:	89 e5                	mov    %esp,%ebp
     786:	83 ec 10             	sub    $0x10,%esp
     789:	68 a4 3e 00 00       	push   $0x3ea4
     78e:	ff 35 10 5c 00 00    	pushl  0x5c10
     794:	e8 8a 31 00 00       	call   0x3923
     799:	c7 04 24 b0 3e 00 00 	movl   $0x3eb0,(%esp)
     7a0:	e8 95 30 00 00       	call   0x383a
     7a5:	83 c4 10             	add    $0x10,%esp
     7a8:	85 c0                	test   %eax,%eax
     7aa:	78 54                	js     0x800
     7ac:	83 ec 0c             	sub    $0xc,%esp
     7af:	68 b0 3e 00 00       	push   $0x3eb0
     7b4:	e8 89 30 00 00       	call   0x3842
     7b9:	83 c4 10             	add    $0x10,%esp
     7bc:	85 c0                	test   %eax,%eax
     7be:	78 58                	js     0x818
     7c0:	83 ec 0c             	sub    $0xc,%esp
     7c3:	68 55 44 00 00       	push   $0x4455
     7c8:	e8 75 30 00 00       	call   0x3842
     7cd:	83 c4 10             	add    $0x10,%esp
     7d0:	85 c0                	test   %eax,%eax
     7d2:	78 5c                	js     0x830
     7d4:	83 ec 0c             	sub    $0xc,%esp
     7d7:	68 b0 3e 00 00       	push   $0x3eb0
     7dc:	e8 41 30 00 00       	call   0x3822
     7e1:	83 c4 10             	add    $0x10,%esp
     7e4:	85 c0                	test   %eax,%eax
     7e6:	78 60                	js     0x848
     7e8:	83 ec 08             	sub    $0x8,%esp
     7eb:	68 ed 3e 00 00       	push   $0x3eed
     7f0:	ff 35 10 5c 00 00    	pushl  0x5c10
     7f6:	e8 28 31 00 00       	call   0x3923
     7fb:	83 c4 10             	add    $0x10,%esp
     7fe:	c9                   	leave  
     7ff:	c3                   	ret    
     800:	83 ec 08             	sub    $0x8,%esp
     803:	68 e0 3b 00 00       	push   $0x3be0
     808:	ff 35 10 5c 00 00    	pushl  0x5c10
     80e:	e8 10 31 00 00       	call   0x3923
     813:	e8 ba 2f 00 00       	call   0x37d2
     818:	83 ec 08             	sub    $0x8,%esp
     81b:	68 b5 3e 00 00       	push   $0x3eb5
     820:	ff 35 10 5c 00 00    	pushl  0x5c10
     826:	e8 f8 30 00 00       	call   0x3923
     82b:	e8 a2 2f 00 00       	call   0x37d2
     830:	83 ec 08             	sub    $0x8,%esp
     833:	68 c8 3e 00 00       	push   $0x3ec8
     838:	ff 35 10 5c 00 00    	pushl  0x5c10
     83e:	e8 e0 30 00 00       	call   0x3923
     843:	e8 8a 2f 00 00       	call   0x37d2
     848:	83 ec 08             	sub    $0x8,%esp
     84b:	68 d9 3e 00 00       	push   $0x3ed9
     850:	ff 35 10 5c 00 00    	pushl  0x5c10
     856:	e8 c8 30 00 00       	call   0x3923
     85b:	e8 72 2f 00 00       	call   0x37d2
     860:	f3 0f 1e fb          	endbr32 
     864:	55                   	push   %ebp
     865:	89 e5                	mov    %esp,%ebp
     867:	83 ec 10             	sub    $0x10,%esp
     86a:	68 fc 3e 00 00       	push   $0x3efc
     86f:	ff 35 10 5c 00 00    	pushl  0x5c10
     875:	e8 a9 30 00 00       	call   0x3923
     87a:	83 c4 08             	add    $0x8,%esp
     87d:	68 14 5c 00 00       	push   $0x5c14
     882:	68 c5 3c 00 00       	push   $0x3cc5
     887:	e8 7e 2f 00 00       	call   0x380a
     88c:	83 c4 10             	add    $0x10,%esp
     88f:	85 c0                	test   %eax,%eax
     891:	78 02                	js     0x895
     893:	c9                   	leave  
     894:	c3                   	ret    
     895:	83 ec 08             	sub    $0x8,%esp
     898:	68 07 3f 00 00       	push   $0x3f07
     89d:	ff 35 10 5c 00 00    	pushl  0x5c10
     8a3:	e8 7b 30 00 00       	call   0x3923
     8a8:	e8 25 2f 00 00       	call   0x37d2
     8ad:	f3 0f 1e fb          	endbr32 
     8b1:	55                   	push   %ebp
     8b2:	89 e5                	mov    %esp,%ebp
     8b4:	57                   	push   %edi
     8b5:	56                   	push   %esi
     8b6:	53                   	push   %ebx
     8b7:	83 ec 38             	sub    $0x38,%esp
     8ba:	8d 45 e0             	lea    -0x20(%ebp),%eax
     8bd:	50                   	push   %eax
     8be:	e8 1f 2f 00 00       	call   0x37e2
     8c3:	83 c4 10             	add    $0x10,%esp
     8c6:	85 c0                	test   %eax,%eax
     8c8:	75 74                	jne    0x93e
     8ca:	89 c6                	mov    %eax,%esi
     8cc:	e8 f9 2e 00 00       	call   0x37ca
     8d1:	89 c7                	mov    %eax,%edi
     8d3:	85 c0                	test   %eax,%eax
     8d5:	74 7b                	je     0x952
     8d7:	0f 8e 60 01 00 00    	jle    0xa3d
     8dd:	83 ec 0c             	sub    $0xc,%esp
     8e0:	ff 75 e4             	pushl  -0x1c(%ebp)
     8e3:	e8 12 2f 00 00       	call   0x37fa
     8e8:	83 c4 10             	add    $0x10,%esp
     8eb:	89 75 d0             	mov    %esi,-0x30(%ebp)
     8ee:	89 f3                	mov    %esi,%ebx
     8f0:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
     8f7:	83 ec 04             	sub    $0x4,%esp
     8fa:	ff 75 d4             	pushl  -0x2c(%ebp)
     8fd:	68 00 84 00 00       	push   $0x8400
     902:	ff 75 e0             	pushl  -0x20(%ebp)
     905:	e8 e0 2e 00 00       	call   0x37ea
     90a:	89 c7                	mov    %eax,%edi
     90c:	83 c4 10             	add    $0x10,%esp
     90f:	85 c0                	test   %eax,%eax
     911:	0f 8e e2 00 00 00    	jle    0x9f9
     917:	89 f0                	mov    %esi,%eax
     919:	89 d9                	mov    %ebx,%ecx
     91b:	39 f8                	cmp    %edi,%eax
     91d:	0f 8d b4 00 00 00    	jge    0x9d7
     923:	0f be 98 00 84 00 00 	movsbl 0x8400(%eax),%ebx
     92a:	8d 51 01             	lea    0x1(%ecx),%edx
     92d:	31 cb                	xor    %ecx,%ebx
     92f:	84 db                	test   %bl,%bl
     931:	0f 85 86 00 00 00    	jne    0x9bd
     937:	83 c0 01             	add    $0x1,%eax
     93a:	89 d1                	mov    %edx,%ecx
     93c:	eb dd                	jmp    0x91b
     93e:	83 ec 08             	sub    $0x8,%esp
     941:	68 19 3f 00 00       	push   $0x3f19
     946:	6a 01                	push   $0x1
     948:	e8 d6 2f 00 00       	call   0x3923
     94d:	e8 80 2e 00 00       	call   0x37d2
     952:	83 ec 0c             	sub    $0xc,%esp
     955:	ff 75 e0             	pushl  -0x20(%ebp)
     958:	e8 9d 2e 00 00       	call   0x37fa
     95d:	83 c4 10             	add    $0x10,%esp
     960:	89 fe                	mov    %edi,%esi
     962:	89 fb                	mov    %edi,%ebx
     964:	eb 22                	jmp    0x988
     966:	83 ec 04             	sub    $0x4,%esp
     969:	68 09 04 00 00       	push   $0x409
     96e:	68 00 84 00 00       	push   $0x8400
     973:	ff 75 e4             	pushl  -0x1c(%ebp)
     976:	e8 77 2e 00 00       	call   0x37f2
     97b:	83 c4 10             	add    $0x10,%esp
     97e:	3d 09 04 00 00       	cmp    $0x409,%eax
     983:	75 1f                	jne    0x9a4
     985:	83 c6 01             	add    $0x1,%esi
     988:	83 fe 04             	cmp    $0x4,%esi
     98b:	7f 2b                	jg     0x9b8
     98d:	89 f8                	mov    %edi,%eax
     98f:	3d 08 04 00 00       	cmp    $0x408,%eax
     994:	7f d0                	jg     0x966
     996:	88 98 00 84 00 00    	mov    %bl,0x8400(%eax)
     99c:	83 c0 01             	add    $0x1,%eax
     99f:	8d 5b 01             	lea    0x1(%ebx),%ebx
     9a2:	eb eb                	jmp    0x98f
     9a4:	83 ec 08             	sub    $0x8,%esp
     9a7:	68 28 3f 00 00       	push   $0x3f28
     9ac:	6a 01                	push   $0x1
     9ae:	e8 70 2f 00 00       	call   0x3923
     9b3:	e8 1a 2e 00 00       	call   0x37d2
     9b8:	e8 15 2e 00 00       	call   0x37d2
     9bd:	83 ec 08             	sub    $0x8,%esp
     9c0:	68 36 3f 00 00       	push   $0x3f36
     9c5:	6a 01                	push   $0x1
     9c7:	e8 57 2f 00 00       	call   0x3923
     9cc:	83 c4 10             	add    $0x10,%esp
     9cf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9d2:	5b                   	pop    %ebx
     9d3:	5e                   	pop    %esi
     9d4:	5f                   	pop    %edi
     9d5:	5d                   	pop    %ebp
     9d6:	c3                   	ret    
     9d7:	89 cb                	mov    %ecx,%ebx
     9d9:	01 7d d0             	add    %edi,-0x30(%ebp)
     9dc:	d1 65 d4             	shll   -0x2c(%ebp)
     9df:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     9e2:	3d 00 20 00 00       	cmp    $0x2000,%eax
     9e7:	0f 86 0a ff ff ff    	jbe    0x8f7
     9ed:	c7 45 d4 00 20 00 00 	movl   $0x2000,-0x2c(%ebp)
     9f4:	e9 fe fe ff ff       	jmp    0x8f7
     9f9:	81 7d d0 2d 14 00 00 	cmpl   $0x142d,-0x30(%ebp)
     a00:	75 24                	jne    0xa26
     a02:	83 ec 0c             	sub    $0xc,%esp
     a05:	ff 75 e0             	pushl  -0x20(%ebp)
     a08:	e8 ed 2d 00 00       	call   0x37fa
     a0d:	e8 c8 2d 00 00       	call   0x37da
     a12:	83 c4 08             	add    $0x8,%esp
     a15:	68 5b 3f 00 00       	push   $0x3f5b
     a1a:	6a 01                	push   $0x1
     a1c:	e8 02 2f 00 00       	call   0x3923
     a21:	83 c4 10             	add    $0x10,%esp
     a24:	eb a9                	jmp    0x9cf
     a26:	83 ec 04             	sub    $0x4,%esp
     a29:	ff 75 d0             	pushl  -0x30(%ebp)
     a2c:	68 44 3f 00 00       	push   $0x3f44
     a31:	6a 01                	push   $0x1
     a33:	e8 eb 2e 00 00       	call   0x3923
     a38:	e8 95 2d 00 00       	call   0x37d2
     a3d:	83 ec 08             	sub    $0x8,%esp
     a40:	68 65 3f 00 00       	push   $0x3f65
     a45:	6a 01                	push   $0x1
     a47:	e8 d7 2e 00 00       	call   0x3923
     a4c:	e8 81 2d 00 00       	call   0x37d2
     a51:	f3 0f 1e fb          	endbr32 
     a55:	55                   	push   %ebp
     a56:	89 e5                	mov    %esp,%ebp
     a58:	57                   	push   %edi
     a59:	56                   	push   %esi
     a5a:	53                   	push   %ebx
     a5b:	83 ec 24             	sub    $0x24,%esp
     a5e:	68 74 3f 00 00       	push   $0x3f74
     a63:	6a 01                	push   $0x1
     a65:	e8 b9 2e 00 00       	call   0x3923
     a6a:	e8 5b 2d 00 00       	call   0x37ca
     a6f:	83 c4 10             	add    $0x10,%esp
     a72:	85 c0                	test   %eax,%eax
     a74:	75 02                	jne    0xa78
     a76:	eb fe                	jmp    0xa76
     a78:	89 c7                	mov    %eax,%edi
     a7a:	e8 4b 2d 00 00       	call   0x37ca
     a7f:	89 c6                	mov    %eax,%esi
     a81:	85 c0                	test   %eax,%eax
     a83:	75 02                	jne    0xa87
     a85:	eb fe                	jmp    0xa85
     a87:	83 ec 0c             	sub    $0xc,%esp
     a8a:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a8d:	50                   	push   %eax
     a8e:	e8 4f 2d 00 00       	call   0x37e2
     a93:	e8 32 2d 00 00       	call   0x37ca
     a98:	89 c3                	mov    %eax,%ebx
     a9a:	83 c4 10             	add    $0x10,%esp
     a9d:	85 c0                	test   %eax,%eax
     a9f:	75 49                	jne    0xaea
     aa1:	83 ec 0c             	sub    $0xc,%esp
     aa4:	ff 75 e0             	pushl  -0x20(%ebp)
     aa7:	e8 4e 2d 00 00       	call   0x37fa
     aac:	83 c4 0c             	add    $0xc,%esp
     aaf:	6a 01                	push   $0x1
     ab1:	68 39 45 00 00       	push   $0x4539
     ab6:	ff 75 e4             	pushl  -0x1c(%ebp)
     ab9:	e8 34 2d 00 00       	call   0x37f2
     abe:	83 c4 10             	add    $0x10,%esp
     ac1:	83 f8 01             	cmp    $0x1,%eax
     ac4:	75 10                	jne    0xad6
     ac6:	83 ec 0c             	sub    $0xc,%esp
     ac9:	ff 75 e4             	pushl  -0x1c(%ebp)
     acc:	e8 29 2d 00 00       	call   0x37fa
     ad1:	83 c4 10             	add    $0x10,%esp
     ad4:	eb fe                	jmp    0xad4
     ad6:	83 ec 08             	sub    $0x8,%esp
     ad9:	68 7e 3f 00 00       	push   $0x3f7e
     ade:	6a 01                	push   $0x1
     ae0:	e8 3e 2e 00 00       	call   0x3923
     ae5:	83 c4 10             	add    $0x10,%esp
     ae8:	eb dc                	jmp    0xac6
     aea:	83 ec 0c             	sub    $0xc,%esp
     aed:	ff 75 e4             	pushl  -0x1c(%ebp)
     af0:	e8 05 2d 00 00       	call   0x37fa
     af5:	83 c4 0c             	add    $0xc,%esp
     af8:	68 00 20 00 00       	push   $0x2000
     afd:	68 00 84 00 00       	push   $0x8400
     b02:	ff 75 e0             	pushl  -0x20(%ebp)
     b05:	e8 e0 2c 00 00       	call   0x37ea
     b0a:	83 c4 10             	add    $0x10,%esp
     b0d:	83 f8 01             	cmp    $0x1,%eax
     b10:	74 1a                	je     0xb2c
     b12:	83 ec 08             	sub    $0x8,%esp
     b15:	68 92 3f 00 00       	push   $0x3f92
     b1a:	6a 01                	push   $0x1
     b1c:	e8 02 2e 00 00       	call   0x3923
     b21:	83 c4 10             	add    $0x10,%esp
     b24:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b27:	5b                   	pop    %ebx
     b28:	5e                   	pop    %esi
     b29:	5f                   	pop    %edi
     b2a:	5d                   	pop    %ebp
     b2b:	c3                   	ret    
     b2c:	83 ec 0c             	sub    $0xc,%esp
     b2f:	ff 75 e0             	pushl  -0x20(%ebp)
     b32:	e8 c3 2c 00 00       	call   0x37fa
     b37:	83 c4 08             	add    $0x8,%esp
     b3a:	68 a5 3f 00 00       	push   $0x3fa5
     b3f:	6a 01                	push   $0x1
     b41:	e8 dd 2d 00 00       	call   0x3923
     b46:	89 3c 24             	mov    %edi,(%esp)
     b49:	e8 b4 2c 00 00       	call   0x3802
     b4e:	89 34 24             	mov    %esi,(%esp)
     b51:	e8 ac 2c 00 00       	call   0x3802
     b56:	89 1c 24             	mov    %ebx,(%esp)
     b59:	e8 a4 2c 00 00       	call   0x3802
     b5e:	83 c4 08             	add    $0x8,%esp
     b61:	68 ae 3f 00 00       	push   $0x3fae
     b66:	6a 01                	push   $0x1
     b68:	e8 b6 2d 00 00       	call   0x3923
     b6d:	e8 68 2c 00 00       	call   0x37da
     b72:	e8 63 2c 00 00       	call   0x37da
     b77:	e8 5e 2c 00 00       	call   0x37da
     b7c:	83 c4 08             	add    $0x8,%esp
     b7f:	68 b7 3f 00 00       	push   $0x3fb7
     b84:	6a 01                	push   $0x1
     b86:	e8 98 2d 00 00       	call   0x3923
     b8b:	83 c4 10             	add    $0x10,%esp
     b8e:	eb 94                	jmp    0xb24
     b90:	f3 0f 1e fb          	endbr32 
     b94:	55                   	push   %ebp
     b95:	89 e5                	mov    %esp,%ebp
     b97:	56                   	push   %esi
     b98:	53                   	push   %ebx
     b99:	be 00 00 00 00       	mov    $0x0,%esi
     b9e:	eb 21                	jmp    0xbc1
     ba0:	83 ec 08             	sub    $0x8,%esp
     ba3:	68 21 4b 00 00       	push   $0x4b21
     ba8:	6a 01                	push   $0x1
     baa:	e8 74 2d 00 00       	call   0x3923
     baf:	83 c4 10             	add    $0x10,%esp
     bb2:	8d 65 f8             	lea    -0x8(%ebp),%esp
     bb5:	5b                   	pop    %ebx
     bb6:	5e                   	pop    %esi
     bb7:	5d                   	pop    %ebp
     bb8:	c3                   	ret    
     bb9:	e8 14 2c 00 00       	call   0x37d2
     bbe:	83 c6 01             	add    $0x1,%esi
     bc1:	83 fe 63             	cmp    $0x63,%esi
     bc4:	7f 2a                	jg     0xbf0
     bc6:	e8 ff 2b 00 00       	call   0x37ca
     bcb:	89 c3                	mov    %eax,%ebx
     bcd:	85 c0                	test   %eax,%eax
     bcf:	78 cf                	js     0xba0
     bd1:	74 e6                	je     0xbb9
     bd3:	e8 02 2c 00 00       	call   0x37da
     bd8:	39 d8                	cmp    %ebx,%eax
     bda:	74 e2                	je     0xbbe
     bdc:	83 ec 08             	sub    $0x8,%esp
     bdf:	68 c3 3f 00 00       	push   $0x3fc3
     be4:	6a 01                	push   $0x1
     be6:	e8 38 2d 00 00       	call   0x3923
     beb:	83 c4 10             	add    $0x10,%esp
     bee:	eb c2                	jmp    0xbb2
     bf0:	83 ec 08             	sub    $0x8,%esp
     bf3:	68 d3 3f 00 00       	push   $0x3fd3
     bf8:	6a 01                	push   $0x1
     bfa:	e8 24 2d 00 00       	call   0x3923
     bff:	83 c4 10             	add    $0x10,%esp
     c02:	eb ae                	jmp    0xbb2
     c04:	f3 0f 1e fb          	endbr32 
     c08:	55                   	push   %ebp
     c09:	89 e5                	mov    %esp,%ebp
     c0b:	57                   	push   %edi
     c0c:	56                   	push   %esi
     c0d:	53                   	push   %ebx
     c0e:	83 ec 14             	sub    $0x14,%esp
     c11:	68 e0 3f 00 00       	push   $0x3fe0
     c16:	6a 01                	push   $0x1
     c18:	e8 06 2d 00 00       	call   0x3923
     c1d:	e8 30 2c 00 00       	call   0x3852
     c22:	89 c6                	mov    %eax,%esi
     c24:	e8 a1 2b 00 00       	call   0x37ca
     c29:	83 c4 10             	add    $0x10,%esp
     c2c:	85 c0                	test   %eax,%eax
     c2e:	0f 85 80 00 00 00    	jne    0xcb4
     c34:	bb 00 00 00 00       	mov    $0x0,%ebx
     c39:	83 ec 0c             	sub    $0xc,%esp
     c3c:	68 11 27 00 00       	push   $0x2711
     c41:	e8 0e 2f 00 00       	call   0x3b54
     c46:	83 c4 10             	add    $0x10,%esp
     c49:	85 c0                	test   %eax,%eax
     c4b:	74 16                	je     0xc63
     c4d:	89 18                	mov    %ebx,(%eax)
     c4f:	89 c3                	mov    %eax,%ebx
     c51:	eb e6                	jmp    0xc39
     c53:	8b 3b                	mov    (%ebx),%edi
     c55:	83 ec 0c             	sub    $0xc,%esp
     c58:	53                   	push   %ebx
     c59:	e8 32 2e 00 00       	call   0x3a90
     c5e:	83 c4 10             	add    $0x10,%esp
     c61:	89 fb                	mov    %edi,%ebx
     c63:	85 db                	test   %ebx,%ebx
     c65:	75 ec                	jne    0xc53
     c67:	83 ec 0c             	sub    $0xc,%esp
     c6a:	68 00 50 00 00       	push   $0x5000
     c6f:	e8 e0 2e 00 00       	call   0x3b54
     c74:	83 c4 10             	add    $0x10,%esp
     c77:	85 c0                	test   %eax,%eax
     c79:	74 1d                	je     0xc98
     c7b:	83 ec 0c             	sub    $0xc,%esp
     c7e:	50                   	push   %eax
     c7f:	e8 0c 2e 00 00       	call   0x3a90
     c84:	83 c4 08             	add    $0x8,%esp
     c87:	68 04 40 00 00       	push   $0x4004
     c8c:	6a 01                	push   $0x1
     c8e:	e8 90 2c 00 00       	call   0x3923
     c93:	e8 3a 2b 00 00       	call   0x37d2
     c98:	83 ec 08             	sub    $0x8,%esp
     c9b:	68 ea 3f 00 00       	push   $0x3fea
     ca0:	6a 01                	push   $0x1
     ca2:	e8 7c 2c 00 00       	call   0x3923
     ca7:	89 34 24             	mov    %esi,(%esp)
     caa:	e8 53 2b 00 00       	call   0x3802
     caf:	e8 1e 2b 00 00       	call   0x37d2
     cb4:	e8 21 2b 00 00       	call   0x37da
     cb9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cbc:	5b                   	pop    %ebx
     cbd:	5e                   	pop    %esi
     cbe:	5f                   	pop    %edi
     cbf:	5d                   	pop    %ebp
     cc0:	c3                   	ret    
     cc1:	f3 0f 1e fb          	endbr32 
     cc5:	55                   	push   %ebp
     cc6:	89 e5                	mov    %esp,%ebp
     cc8:	57                   	push   %edi
     cc9:	56                   	push   %esi
     cca:	53                   	push   %ebx
     ccb:	83 ec 24             	sub    $0x24,%esp
     cce:	68 0c 40 00 00       	push   $0x400c
     cd3:	6a 01                	push   $0x1
     cd5:	e8 49 2c 00 00       	call   0x3923
     cda:	c7 04 24 1b 40 00 00 	movl   $0x401b,(%esp)
     ce1:	e8 3c 2b 00 00       	call   0x3822
     ce6:	83 c4 08             	add    $0x8,%esp
     ce9:	68 02 02 00 00       	push   $0x202
     cee:	68 1b 40 00 00       	push   $0x401b
     cf3:	e8 1a 2b 00 00       	call   0x3812
     cf8:	83 c4 10             	add    $0x10,%esp
     cfb:	85 c0                	test   %eax,%eax
     cfd:	78 4d                	js     0xd4c
     cff:	89 c6                	mov    %eax,%esi
     d01:	e8 c4 2a 00 00       	call   0x37ca
     d06:	89 c7                	mov    %eax,%edi
     d08:	85 c0                	test   %eax,%eax
     d0a:	75 57                	jne    0xd63
     d0c:	b8 63 00 00 00       	mov    $0x63,%eax
     d11:	83 ec 04             	sub    $0x4,%esp
     d14:	6a 0a                	push   $0xa
     d16:	50                   	push   %eax
     d17:	8d 45 de             	lea    -0x22(%ebp),%eax
     d1a:	50                   	push   %eax
     d1b:	e8 65 29 00 00       	call   0x3685
     d20:	83 c4 10             	add    $0x10,%esp
     d23:	bb 00 00 00 00       	mov    $0x0,%ebx
     d28:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
     d2e:	7f 4c                	jg     0xd7c
     d30:	83 ec 04             	sub    $0x4,%esp
     d33:	6a 0a                	push   $0xa
     d35:	8d 45 de             	lea    -0x22(%ebp),%eax
     d38:	50                   	push   %eax
     d39:	56                   	push   %esi
     d3a:	e8 b3 2a 00 00       	call   0x37f2
     d3f:	83 c4 10             	add    $0x10,%esp
     d42:	83 f8 0a             	cmp    $0xa,%eax
     d45:	75 23                	jne    0xd6a
     d47:	83 c3 01             	add    $0x1,%ebx
     d4a:	eb dc                	jmp    0xd28
     d4c:	83 ec 08             	sub    $0x8,%esp
     d4f:	68 e0 4c 00 00       	push   $0x4ce0
     d54:	6a 01                	push   $0x1
     d56:	e8 c8 2b 00 00       	call   0x3923
     d5b:	83 c4 10             	add    $0x10,%esp
     d5e:	e9 e4 00 00 00       	jmp    0xe47
     d63:	b8 70 00 00 00       	mov    $0x70,%eax
     d68:	eb a7                	jmp    0xd11
     d6a:	83 ec 08             	sub    $0x8,%esp
     d6d:	68 0c 4d 00 00       	push   $0x4d0c
     d72:	6a 01                	push   $0x1
     d74:	e8 aa 2b 00 00       	call   0x3923
     d79:	83 c4 10             	add    $0x10,%esp
     d7c:	85 ff                	test   %edi,%edi
     d7e:	74 4d                	je     0xdcd
     d80:	e8 55 2a 00 00       	call   0x37da
     d85:	83 ec 0c             	sub    $0xc,%esp
     d88:	56                   	push   %esi
     d89:	e8 6c 2a 00 00       	call   0x37fa
     d8e:	83 c4 08             	add    $0x8,%esp
     d91:	6a 00                	push   $0x0
     d93:	68 1b 40 00 00       	push   $0x401b
     d98:	e8 75 2a 00 00       	call   0x3812
     d9d:	89 c7                	mov    %eax,%edi
     d9f:	83 c4 10             	add    $0x10,%esp
     da2:	85 c0                	test   %eax,%eax
     da4:	78 2c                	js     0xdd2
     da6:	be 00 00 00 00       	mov    $0x0,%esi
     dab:	bb 00 00 00 00       	mov    $0x0,%ebx
     db0:	83 ec 04             	sub    $0x4,%esp
     db3:	6a 0a                	push   $0xa
     db5:	8d 45 de             	lea    -0x22(%ebp),%eax
     db8:	50                   	push   %eax
     db9:	57                   	push   %edi
     dba:	e8 2b 2a 00 00       	call   0x37ea
     dbf:	83 c4 10             	add    $0x10,%esp
     dc2:	85 c0                	test   %eax,%eax
     dc4:	7e 41                	jle    0xe07
     dc6:	b8 00 00 00 00       	mov    $0x0,%eax
     dcb:	eb 21                	jmp    0xdee
     dcd:	e8 00 2a 00 00       	call   0x37d2
     dd2:	83 ec 08             	sub    $0x8,%esp
     dd5:	68 2c 4d 00 00       	push   $0x4d2c
     dda:	6a 01                	push   $0x1
     ddc:	e8 42 2b 00 00       	call   0x3923
     de1:	83 c4 10             	add    $0x10,%esp
     de4:	eb 61                	jmp    0xe47
     de6:	83 c3 01             	add    $0x1,%ebx
     de9:	eb 12                	jmp    0xdfd
     deb:	83 c0 01             	add    $0x1,%eax
     dee:	83 f8 09             	cmp    $0x9,%eax
     df1:	77 bd                	ja     0xdb0
     df3:	0f b6 54 05 de       	movzbl -0x22(%ebp,%eax,1),%edx
     df8:	80 fa 63             	cmp    $0x63,%dl
     dfb:	74 e9                	je     0xde6
     dfd:	80 fa 70             	cmp    $0x70,%dl
     e00:	75 e9                	jne    0xdeb
     e02:	83 c6 01             	add    $0x1,%esi
     e05:	eb e4                	jmp    0xdeb
     e07:	83 ec 0c             	sub    $0xc,%esp
     e0a:	57                   	push   %edi
     e0b:	e8 ea 29 00 00       	call   0x37fa
     e10:	c7 04 24 1b 40 00 00 	movl   $0x401b,(%esp)
     e17:	e8 06 2a 00 00       	call   0x3822
     e1c:	83 c4 10             	add    $0x10,%esp
     e1f:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     e25:	0f 94 c2             	sete   %dl
     e28:	81 fe 10 27 00 00    	cmp    $0x2710,%esi
     e2e:	0f 94 c0             	sete   %al
     e31:	84 c2                	test   %al,%dl
     e33:	74 1a                	je     0xe4f
     e35:	83 ec 08             	sub    $0x8,%esp
     e38:	68 24 40 00 00       	push   $0x4024
     e3d:	6a 01                	push   $0x1
     e3f:	e8 df 2a 00 00       	call   0x3923
     e44:	83 c4 10             	add    $0x10,%esp
     e47:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e4a:	5b                   	pop    %ebx
     e4b:	5e                   	pop    %esi
     e4c:	5f                   	pop    %edi
     e4d:	5d                   	pop    %ebp
     e4e:	c3                   	ret    
     e4f:	56                   	push   %esi
     e50:	53                   	push   %ebx
     e51:	68 31 40 00 00       	push   $0x4031
     e56:	6a 01                	push   $0x1
     e58:	e8 c6 2a 00 00       	call   0x3923
     e5d:	e8 70 29 00 00       	call   0x37d2
     e62:	f3 0f 1e fb          	endbr32 
     e66:	55                   	push   %ebp
     e67:	89 e5                	mov    %esp,%ebp
     e69:	57                   	push   %edi
     e6a:	56                   	push   %esi
     e6b:	53                   	push   %ebx
     e6c:	83 ec 34             	sub    $0x34,%esp
     e6f:	c7 45 d8 46 40 00 00 	movl   $0x4046,-0x28(%ebp)
     e76:	c7 45 dc 8f 41 00 00 	movl   $0x418f,-0x24(%ebp)
     e7d:	c7 45 e0 93 41 00 00 	movl   $0x4193,-0x20(%ebp)
     e84:	c7 45 e4 49 40 00 00 	movl   $0x4049,-0x1c(%ebp)
     e8b:	68 4c 40 00 00       	push   $0x404c
     e90:	6a 01                	push   $0x1
     e92:	e8 8c 2a 00 00       	call   0x3923
     e97:	83 c4 10             	add    $0x10,%esp
     e9a:	be 00 00 00 00       	mov    $0x0,%esi
     e9f:	83 fe 03             	cmp    $0x3,%esi
     ea2:	0f 8f bb 00 00 00    	jg     0xf63
     ea8:	8b 7c b5 d8          	mov    -0x28(%ebp,%esi,4),%edi
     eac:	83 ec 0c             	sub    $0xc,%esp
     eaf:	57                   	push   %edi
     eb0:	e8 6d 29 00 00       	call   0x3822
     eb5:	e8 10 29 00 00       	call   0x37ca
     eba:	83 c4 10             	add    $0x10,%esp
     ebd:	85 c0                	test   %eax,%eax
     ebf:	78 07                	js     0xec8
     ec1:	74 19                	je     0xedc
     ec3:	83 c6 01             	add    $0x1,%esi
     ec6:	eb d7                	jmp    0xe9f
     ec8:	83 ec 08             	sub    $0x8,%esp
     ecb:	68 21 4b 00 00       	push   $0x4b21
     ed0:	6a 01                	push   $0x1
     ed2:	e8 4c 2a 00 00       	call   0x3923
     ed7:	e8 f6 28 00 00       	call   0x37d2
     edc:	89 c3                	mov    %eax,%ebx
     ede:	83 ec 08             	sub    $0x8,%esp
     ee1:	68 02 02 00 00       	push   $0x202
     ee6:	57                   	push   %edi
     ee7:	e8 26 29 00 00       	call   0x3812
     eec:	89 c7                	mov    %eax,%edi
     eee:	83 c4 10             	add    $0x10,%esp
     ef1:	85 c0                	test   %eax,%eax
     ef3:	78 40                	js     0xf35
     ef5:	83 ec 04             	sub    $0x4,%esp
     ef8:	68 00 02 00 00       	push   $0x200
     efd:	83 c6 30             	add    $0x30,%esi
     f00:	56                   	push   %esi
     f01:	68 00 84 00 00       	push   $0x8400
     f06:	e8 7a 27 00 00       	call   0x3685
     f0b:	83 c4 10             	add    $0x10,%esp
     f0e:	83 fb 0b             	cmp    $0xb,%ebx
     f11:	7f 4b                	jg     0xf5e
     f13:	83 ec 04             	sub    $0x4,%esp
     f16:	68 f4 01 00 00       	push   $0x1f4
     f1b:	68 00 84 00 00       	push   $0x8400
     f20:	57                   	push   %edi
     f21:	e8 cc 28 00 00       	call   0x37f2
     f26:	83 c4 10             	add    $0x10,%esp
     f29:	3d f4 01 00 00       	cmp    $0x1f4,%eax
     f2e:	75 19                	jne    0xf49
     f30:	83 c3 01             	add    $0x1,%ebx
     f33:	eb d9                	jmp    0xf0e
     f35:	83 ec 08             	sub    $0x8,%esp
     f38:	68 e7 42 00 00       	push   $0x42e7
     f3d:	6a 01                	push   $0x1
     f3f:	e8 df 29 00 00       	call   0x3923
     f44:	e8 89 28 00 00       	call   0x37d2
     f49:	83 ec 04             	sub    $0x4,%esp
     f4c:	50                   	push   %eax
     f4d:	68 5c 40 00 00       	push   $0x405c
     f52:	6a 01                	push   $0x1
     f54:	e8 ca 29 00 00       	call   0x3923
     f59:	e8 74 28 00 00       	call   0x37d2
     f5e:	e8 6f 28 00 00       	call   0x37d2
     f63:	bb 00 00 00 00       	mov    $0x0,%ebx
     f68:	eb 08                	jmp    0xf72
     f6a:	e8 6b 28 00 00       	call   0x37da
     f6f:	83 c3 01             	add    $0x1,%ebx
     f72:	83 fb 03             	cmp    $0x3,%ebx
     f75:	7e f3                	jle    0xf6a
     f77:	bb 00 00 00 00       	mov    $0x0,%ebx
     f7c:	eb 75                	jmp    0xff3
     f7e:	83 ec 08             	sub    $0x8,%esp
     f81:	68 6d 40 00 00       	push   $0x406d
     f86:	6a 01                	push   $0x1
     f88:	e8 96 29 00 00       	call   0x3923
     f8d:	e8 40 28 00 00       	call   0x37d2
     f92:	01 c6                	add    %eax,%esi
     f94:	83 ec 04             	sub    $0x4,%esp
     f97:	68 00 20 00 00       	push   $0x2000
     f9c:	68 00 84 00 00       	push   $0x8400
     fa1:	ff 75 d4             	pushl  -0x2c(%ebp)
     fa4:	e8 41 28 00 00       	call   0x37ea
     fa9:	83 c4 10             	add    $0x10,%esp
     fac:	85 c0                	test   %eax,%eax
     fae:	7e 1c                	jle    0xfcc
     fb0:	ba 00 00 00 00       	mov    $0x0,%edx
     fb5:	39 c2                	cmp    %eax,%edx
     fb7:	7d d9                	jge    0xf92
     fb9:	0f be ba 00 84 00 00 	movsbl 0x8400(%edx),%edi
     fc0:	8d 4b 30             	lea    0x30(%ebx),%ecx
     fc3:	39 cf                	cmp    %ecx,%edi
     fc5:	75 b7                	jne    0xf7e
     fc7:	83 c2 01             	add    $0x1,%edx
     fca:	eb e9                	jmp    0xfb5
     fcc:	83 ec 0c             	sub    $0xc,%esp
     fcf:	ff 75 d4             	pushl  -0x2c(%ebp)
     fd2:	e8 23 28 00 00       	call   0x37fa
     fd7:	83 c4 10             	add    $0x10,%esp
     fda:	81 fe 70 17 00 00    	cmp    $0x1770,%esi
     fe0:	75 38                	jne    0x101a
     fe2:	83 ec 0c             	sub    $0xc,%esp
     fe5:	ff 75 d0             	pushl  -0x30(%ebp)
     fe8:	e8 35 28 00 00       	call   0x3822
     fed:	83 c3 01             	add    $0x1,%ebx
     ff0:	83 c4 10             	add    $0x10,%esp
     ff3:	83 fb 01             	cmp    $0x1,%ebx
     ff6:	7f 37                	jg     0x102f
     ff8:	8b 44 9d d8          	mov    -0x28(%ebp,%ebx,4),%eax
     ffc:	89 45 d0             	mov    %eax,-0x30(%ebp)
     fff:	83 ec 08             	sub    $0x8,%esp
    1002:	6a 00                	push   $0x0
    1004:	50                   	push   %eax
    1005:	e8 08 28 00 00       	call   0x3812
    100a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    100d:	83 c4 10             	add    $0x10,%esp
    1010:	be 00 00 00 00       	mov    $0x0,%esi
    1015:	e9 7a ff ff ff       	jmp    0xf94
    101a:	83 ec 04             	sub    $0x4,%esp
    101d:	56                   	push   %esi
    101e:	68 79 40 00 00       	push   $0x4079
    1023:	6a 01                	push   $0x1
    1025:	e8 f9 28 00 00       	call   0x3923
    102a:	e8 a3 27 00 00       	call   0x37d2
    102f:	83 ec 08             	sub    $0x8,%esp
    1032:	68 8a 40 00 00       	push   $0x408a
    1037:	6a 01                	push   $0x1
    1039:	e8 e5 28 00 00       	call   0x3923
    103e:	83 c4 10             	add    $0x10,%esp
    1041:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1044:	5b                   	pop    %ebx
    1045:	5e                   	pop    %esi
    1046:	5f                   	pop    %edi
    1047:	5d                   	pop    %ebp
    1048:	c3                   	ret    
    1049:	f3 0f 1e fb          	endbr32 
    104d:	55                   	push   %ebp
    104e:	89 e5                	mov    %esp,%ebp
    1050:	56                   	push   %esi
    1051:	53                   	push   %ebx
    1052:	83 ec 28             	sub    $0x28,%esp
    1055:	68 98 40 00 00       	push   $0x4098
    105a:	6a 01                	push   $0x1
    105c:	e8 c2 28 00 00       	call   0x3923
    1061:	83 c4 10             	add    $0x10,%esp
    1064:	be 00 00 00 00       	mov    $0x0,%esi
    1069:	83 fe 03             	cmp    $0x3,%esi
    106c:	0f 8f bc 00 00 00    	jg     0x112e
    1072:	e8 53 27 00 00       	call   0x37ca
    1077:	89 c3                	mov    %eax,%ebx
    1079:	85 c0                	test   %eax,%eax
    107b:	78 07                	js     0x1084
    107d:	74 19                	je     0x1098
    107f:	83 c6 01             	add    $0x1,%esi
    1082:	eb e5                	jmp    0x1069
    1084:	83 ec 08             	sub    $0x8,%esp
    1087:	68 21 4b 00 00       	push   $0x4b21
    108c:	6a 01                	push   $0x1
    108e:	e8 90 28 00 00       	call   0x3923
    1093:	e8 3a 27 00 00       	call   0x37d2
    1098:	8d 46 70             	lea    0x70(%esi),%eax
    109b:	88 45 d8             	mov    %al,-0x28(%ebp)
    109e:	c6 45 da 00          	movb   $0x0,-0x26(%ebp)
    10a2:	eb 17                	jmp    0x10bb
    10a4:	83 ec 08             	sub    $0x8,%esp
    10a7:	68 e7 42 00 00       	push   $0x42e7
    10ac:	6a 01                	push   $0x1
    10ae:	e8 70 28 00 00       	call   0x3923
    10b3:	e8 1a 27 00 00       	call   0x37d2
    10b8:	83 c3 01             	add    $0x1,%ebx
    10bb:	83 fb 13             	cmp    $0x13,%ebx
    10be:	7f 69                	jg     0x1129
    10c0:	8d 43 30             	lea    0x30(%ebx),%eax
    10c3:	88 45 d9             	mov    %al,-0x27(%ebp)
    10c6:	83 ec 08             	sub    $0x8,%esp
    10c9:	68 02 02 00 00       	push   $0x202
    10ce:	8d 45 d8             	lea    -0x28(%ebp),%eax
    10d1:	50                   	push   %eax
    10d2:	e8 3b 27 00 00       	call   0x3812
    10d7:	83 c4 10             	add    $0x10,%esp
    10da:	85 c0                	test   %eax,%eax
    10dc:	78 c6                	js     0x10a4
    10de:	83 ec 0c             	sub    $0xc,%esp
    10e1:	50                   	push   %eax
    10e2:	e8 13 27 00 00       	call   0x37fa
    10e7:	83 c4 10             	add    $0x10,%esp
    10ea:	85 db                	test   %ebx,%ebx
    10ec:	7e ca                	jle    0x10b8
    10ee:	f6 c3 01             	test   $0x1,%bl
    10f1:	75 c5                	jne    0x10b8
    10f3:	89 d8                	mov    %ebx,%eax
    10f5:	c1 e8 1f             	shr    $0x1f,%eax
    10f8:	01 d8                	add    %ebx,%eax
    10fa:	d1 f8                	sar    %eax
    10fc:	83 c0 30             	add    $0x30,%eax
    10ff:	88 45 d9             	mov    %al,-0x27(%ebp)
    1102:	83 ec 0c             	sub    $0xc,%esp
    1105:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1108:	50                   	push   %eax
    1109:	e8 14 27 00 00       	call   0x3822
    110e:	83 c4 10             	add    $0x10,%esp
    1111:	85 c0                	test   %eax,%eax
    1113:	79 a3                	jns    0x10b8
    1115:	83 ec 08             	sub    $0x8,%esp
    1118:	68 99 3c 00 00       	push   $0x3c99
    111d:	6a 01                	push   $0x1
    111f:	e8 ff 27 00 00       	call   0x3923
    1124:	e8 a9 26 00 00       	call   0x37d2
    1129:	e8 a4 26 00 00       	call   0x37d2
    112e:	bb 00 00 00 00       	mov    $0x0,%ebx
    1133:	eb 08                	jmp    0x113d
    1135:	e8 a0 26 00 00       	call   0x37da
    113a:	83 c3 01             	add    $0x1,%ebx
    113d:	83 fb 03             	cmp    $0x3,%ebx
    1140:	7e f3                	jle    0x1135
    1142:	c6 45 da 00          	movb   $0x0,-0x26(%ebp)
    1146:	c6 45 d9 00          	movb   $0x0,-0x27(%ebp)
    114a:	c6 45 d8 00          	movb   $0x0,-0x28(%ebp)
    114e:	bb 00 00 00 00       	mov    $0x0,%ebx
    1153:	e9 89 00 00 00       	jmp    0x11e1
    1158:	8d 53 ff             	lea    -0x1(%ebx),%edx
    115b:	83 fa 08             	cmp    $0x8,%edx
    115e:	76 54                	jbe    0x11b4
    1160:	85 c0                	test   %eax,%eax
    1162:	79 6c                	jns    0x11d0
    1164:	83 c6 01             	add    $0x1,%esi
    1167:	83 fe 03             	cmp    $0x3,%esi
    116a:	7f 72                	jg     0x11de
    116c:	8d 46 70             	lea    0x70(%esi),%eax
    116f:	88 45 d8             	mov    %al,-0x28(%ebp)
    1172:	8d 43 30             	lea    0x30(%ebx),%eax
    1175:	88 45 d9             	mov    %al,-0x27(%ebp)
    1178:	83 ec 08             	sub    $0x8,%esp
    117b:	6a 00                	push   $0x0
    117d:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1180:	50                   	push   %eax
    1181:	e8 8c 26 00 00       	call   0x3812
    1186:	83 c4 10             	add    $0x10,%esp
    1189:	85 db                	test   %ebx,%ebx
    118b:	0f 94 c1             	sete   %cl
    118e:	83 fb 09             	cmp    $0x9,%ebx
    1191:	0f 9f c2             	setg   %dl
    1194:	08 d1                	or     %dl,%cl
    1196:	74 c0                	je     0x1158
    1198:	85 c0                	test   %eax,%eax
    119a:	79 bc                	jns    0x1158
    119c:	83 ec 04             	sub    $0x4,%esp
    119f:	8d 45 d8             	lea    -0x28(%ebp),%eax
    11a2:	50                   	push   %eax
    11a3:	68 58 4d 00 00       	push   $0x4d58
    11a8:	6a 01                	push   $0x1
    11aa:	e8 74 27 00 00       	call   0x3923
    11af:	e8 1e 26 00 00       	call   0x37d2
    11b4:	85 c0                	test   %eax,%eax
    11b6:	78 a8                	js     0x1160
    11b8:	83 ec 04             	sub    $0x4,%esp
    11bb:	8d 45 d8             	lea    -0x28(%ebp),%eax
    11be:	50                   	push   %eax
    11bf:	68 7c 4d 00 00       	push   $0x4d7c
    11c4:	6a 01                	push   $0x1
    11c6:	e8 58 27 00 00       	call   0x3923
    11cb:	e8 02 26 00 00       	call   0x37d2
    11d0:	83 ec 0c             	sub    $0xc,%esp
    11d3:	50                   	push   %eax
    11d4:	e8 21 26 00 00       	call   0x37fa
    11d9:	83 c4 10             	add    $0x10,%esp
    11dc:	eb 86                	jmp    0x1164
    11de:	83 c3 01             	add    $0x1,%ebx
    11e1:	83 fb 13             	cmp    $0x13,%ebx
    11e4:	7f 0a                	jg     0x11f0
    11e6:	be 00 00 00 00       	mov    $0x0,%esi
    11eb:	e9 77 ff ff ff       	jmp    0x1167
    11f0:	be 00 00 00 00       	mov    $0x0,%esi
    11f5:	eb 26                	jmp    0x121d
    11f7:	8d 46 70             	lea    0x70(%esi),%eax
    11fa:	88 45 d8             	mov    %al,-0x28(%ebp)
    11fd:	8d 46 30             	lea    0x30(%esi),%eax
    1200:	88 45 d9             	mov    %al,-0x27(%ebp)
    1203:	83 ec 0c             	sub    $0xc,%esp
    1206:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1209:	50                   	push   %eax
    120a:	e8 13 26 00 00       	call   0x3822
    120f:	83 c3 01             	add    $0x1,%ebx
    1212:	83 c4 10             	add    $0x10,%esp
    1215:	83 fb 03             	cmp    $0x3,%ebx
    1218:	7e dd                	jle    0x11f7
    121a:	83 c6 01             	add    $0x1,%esi
    121d:	83 fe 13             	cmp    $0x13,%esi
    1220:	7f 07                	jg     0x1229
    1222:	bb 00 00 00 00       	mov    $0x0,%ebx
    1227:	eb ec                	jmp    0x1215
    1229:	83 ec 08             	sub    $0x8,%esp
    122c:	68 ab 40 00 00       	push   $0x40ab
    1231:	6a 01                	push   $0x1
    1233:	e8 eb 26 00 00       	call   0x3923
    1238:	83 c4 10             	add    $0x10,%esp
    123b:	8d 65 f8             	lea    -0x8(%ebp),%esp
    123e:	5b                   	pop    %ebx
    123f:	5e                   	pop    %esi
    1240:	5d                   	pop    %ebp
    1241:	c3                   	ret    
    1242:	f3 0f 1e fb          	endbr32 
    1246:	55                   	push   %ebp
    1247:	89 e5                	mov    %esp,%ebp
    1249:	56                   	push   %esi
    124a:	53                   	push   %ebx
    124b:	83 ec 08             	sub    $0x8,%esp
    124e:	68 bc 40 00 00       	push   $0x40bc
    1253:	6a 01                	push   $0x1
    1255:	e8 c9 26 00 00       	call   0x3923
    125a:	83 c4 08             	add    $0x8,%esp
    125d:	68 02 02 00 00       	push   $0x202
    1262:	68 cd 40 00 00       	push   $0x40cd
    1267:	e8 a6 25 00 00       	call   0x3812
    126c:	83 c4 10             	add    $0x10,%esp
    126f:	85 c0                	test   %eax,%eax
    1271:	0f 88 f0 00 00 00    	js     0x1367
    1277:	89 c3                	mov    %eax,%ebx
    1279:	83 ec 04             	sub    $0x4,%esp
    127c:	6a 05                	push   $0x5
    127e:	68 f2 40 00 00       	push   $0x40f2
    1283:	50                   	push   %eax
    1284:	e8 69 25 00 00       	call   0x37f2
    1289:	89 1c 24             	mov    %ebx,(%esp)
    128c:	e8 69 25 00 00       	call   0x37fa
    1291:	83 c4 08             	add    $0x8,%esp
    1294:	6a 02                	push   $0x2
    1296:	68 cd 40 00 00       	push   $0x40cd
    129b:	e8 72 25 00 00       	call   0x3812
    12a0:	89 c3                	mov    %eax,%ebx
    12a2:	83 c4 10             	add    $0x10,%esp
    12a5:	85 c0                	test   %eax,%eax
    12a7:	0f 88 ce 00 00 00    	js     0x137b
    12ad:	83 ec 0c             	sub    $0xc,%esp
    12b0:	68 cd 40 00 00       	push   $0x40cd
    12b5:	e8 68 25 00 00       	call   0x3822
    12ba:	83 c4 10             	add    $0x10,%esp
    12bd:	85 c0                	test   %eax,%eax
    12bf:	0f 85 ca 00 00 00    	jne    0x138f
    12c5:	83 ec 08             	sub    $0x8,%esp
    12c8:	68 02 02 00 00       	push   $0x202
    12cd:	68 cd 40 00 00       	push   $0x40cd
    12d2:	e8 3b 25 00 00       	call   0x3812
    12d7:	89 c6                	mov    %eax,%esi
    12d9:	83 c4 0c             	add    $0xc,%esp
    12dc:	6a 03                	push   $0x3
    12de:	68 2a 41 00 00       	push   $0x412a
    12e3:	50                   	push   %eax
    12e4:	e8 09 25 00 00       	call   0x37f2
    12e9:	89 34 24             	mov    %esi,(%esp)
    12ec:	e8 09 25 00 00       	call   0x37fa
    12f1:	83 c4 0c             	add    $0xc,%esp
    12f4:	68 00 20 00 00       	push   $0x2000
    12f9:	68 00 84 00 00       	push   $0x8400
    12fe:	53                   	push   %ebx
    12ff:	e8 e6 24 00 00       	call   0x37ea
    1304:	83 c4 10             	add    $0x10,%esp
    1307:	83 f8 05             	cmp    $0x5,%eax
    130a:	0f 85 93 00 00 00    	jne    0x13a3
    1310:	80 3d 00 84 00 00 68 	cmpb   $0x68,0x8400
    1317:	0f 85 9a 00 00 00    	jne    0x13b7
    131d:	83 ec 04             	sub    $0x4,%esp
    1320:	6a 0a                	push   $0xa
    1322:	68 00 84 00 00       	push   $0x8400
    1327:	53                   	push   %ebx
    1328:	e8 c5 24 00 00       	call   0x37f2
    132d:	83 c4 10             	add    $0x10,%esp
    1330:	83 f8 0a             	cmp    $0xa,%eax
    1333:	0f 85 92 00 00 00    	jne    0x13cb
    1339:	83 ec 0c             	sub    $0xc,%esp
    133c:	53                   	push   %ebx
    133d:	e8 b8 24 00 00       	call   0x37fa
    1342:	c7 04 24 cd 40 00 00 	movl   $0x40cd,(%esp)
    1349:	e8 d4 24 00 00       	call   0x3822
    134e:	83 c4 08             	add    $0x8,%esp
    1351:	68 75 41 00 00       	push   $0x4175
    1356:	6a 01                	push   $0x1
    1358:	e8 c6 25 00 00       	call   0x3923
    135d:	83 c4 10             	add    $0x10,%esp
    1360:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1363:	5b                   	pop    %ebx
    1364:	5e                   	pop    %esi
    1365:	5d                   	pop    %ebp
    1366:	c3                   	ret    
    1367:	83 ec 08             	sub    $0x8,%esp
    136a:	68 d8 40 00 00       	push   $0x40d8
    136f:	6a 01                	push   $0x1
    1371:	e8 ad 25 00 00       	call   0x3923
    1376:	e8 57 24 00 00       	call   0x37d2
    137b:	83 ec 08             	sub    $0x8,%esp
    137e:	68 f8 40 00 00       	push   $0x40f8
    1383:	6a 01                	push   $0x1
    1385:	e8 99 25 00 00       	call   0x3923
    138a:	e8 43 24 00 00       	call   0x37d2
    138f:	83 ec 08             	sub    $0x8,%esp
    1392:	68 10 41 00 00       	push   $0x4110
    1397:	6a 01                	push   $0x1
    1399:	e8 85 25 00 00       	call   0x3923
    139e:	e8 2f 24 00 00       	call   0x37d2
    13a3:	83 ec 08             	sub    $0x8,%esp
    13a6:	68 2e 41 00 00       	push   $0x412e
    13ab:	6a 01                	push   $0x1
    13ad:	e8 71 25 00 00       	call   0x3923
    13b2:	e8 1b 24 00 00       	call   0x37d2
    13b7:	83 ec 08             	sub    $0x8,%esp
    13ba:	68 45 41 00 00       	push   $0x4145
    13bf:	6a 01                	push   $0x1
    13c1:	e8 5d 25 00 00       	call   0x3923
    13c6:	e8 07 24 00 00       	call   0x37d2
    13cb:	83 ec 08             	sub    $0x8,%esp
    13ce:	68 5c 41 00 00       	push   $0x415c
    13d3:	6a 01                	push   $0x1
    13d5:	e8 49 25 00 00       	call   0x3923
    13da:	e8 f3 23 00 00       	call   0x37d2
    13df:	f3 0f 1e fb          	endbr32 
    13e3:	55                   	push   %ebp
    13e4:	89 e5                	mov    %esp,%ebp
    13e6:	53                   	push   %ebx
    13e7:	83 ec 0c             	sub    $0xc,%esp
    13ea:	68 84 41 00 00       	push   $0x4184
    13ef:	6a 01                	push   $0x1
    13f1:	e8 2d 25 00 00       	call   0x3923
    13f6:	c7 04 24 8e 41 00 00 	movl   $0x418e,(%esp)
    13fd:	e8 20 24 00 00       	call   0x3822
    1402:	c7 04 24 92 41 00 00 	movl   $0x4192,(%esp)
    1409:	e8 14 24 00 00       	call   0x3822
    140e:	83 c4 08             	add    $0x8,%esp
    1411:	68 02 02 00 00       	push   $0x202
    1416:	68 8e 41 00 00       	push   $0x418e
    141b:	e8 f2 23 00 00       	call   0x3812
    1420:	83 c4 10             	add    $0x10,%esp
    1423:	85 c0                	test   %eax,%eax
    1425:	0f 88 2a 01 00 00    	js     0x1555
    142b:	89 c3                	mov    %eax,%ebx
    142d:	83 ec 04             	sub    $0x4,%esp
    1430:	6a 05                	push   $0x5
    1432:	68 f2 40 00 00       	push   $0x40f2
    1437:	50                   	push   %eax
    1438:	e8 b5 23 00 00       	call   0x37f2
    143d:	83 c4 10             	add    $0x10,%esp
    1440:	83 f8 05             	cmp    $0x5,%eax
    1443:	0f 85 20 01 00 00    	jne    0x1569
    1449:	83 ec 0c             	sub    $0xc,%esp
    144c:	53                   	push   %ebx
    144d:	e8 a8 23 00 00       	call   0x37fa
    1452:	83 c4 08             	add    $0x8,%esp
    1455:	68 92 41 00 00       	push   $0x4192
    145a:	68 8e 41 00 00       	push   $0x418e
    145f:	e8 ce 23 00 00       	call   0x3832
    1464:	83 c4 10             	add    $0x10,%esp
    1467:	85 c0                	test   %eax,%eax
    1469:	0f 88 0e 01 00 00    	js     0x157d
    146f:	83 ec 0c             	sub    $0xc,%esp
    1472:	68 8e 41 00 00       	push   $0x418e
    1477:	e8 a6 23 00 00       	call   0x3822
    147c:	83 c4 08             	add    $0x8,%esp
    147f:	6a 00                	push   $0x0
    1481:	68 8e 41 00 00       	push   $0x418e
    1486:	e8 87 23 00 00       	call   0x3812
    148b:	83 c4 10             	add    $0x10,%esp
    148e:	85 c0                	test   %eax,%eax
    1490:	0f 89 fb 00 00 00    	jns    0x1591
    1496:	83 ec 08             	sub    $0x8,%esp
    1499:	6a 00                	push   $0x0
    149b:	68 92 41 00 00       	push   $0x4192
    14a0:	e8 6d 23 00 00       	call   0x3812
    14a5:	89 c3                	mov    %eax,%ebx
    14a7:	83 c4 10             	add    $0x10,%esp
    14aa:	85 c0                	test   %eax,%eax
    14ac:	0f 88 f3 00 00 00    	js     0x15a5
    14b2:	83 ec 04             	sub    $0x4,%esp
    14b5:	68 00 20 00 00       	push   $0x2000
    14ba:	68 00 84 00 00       	push   $0x8400
    14bf:	50                   	push   %eax
    14c0:	e8 25 23 00 00       	call   0x37ea
    14c5:	83 c4 10             	add    $0x10,%esp
    14c8:	83 f8 05             	cmp    $0x5,%eax
    14cb:	0f 85 e8 00 00 00    	jne    0x15b9
    14d1:	83 ec 0c             	sub    $0xc,%esp
    14d4:	53                   	push   %ebx
    14d5:	e8 20 23 00 00       	call   0x37fa
    14da:	83 c4 08             	add    $0x8,%esp
    14dd:	68 92 41 00 00       	push   $0x4192
    14e2:	68 92 41 00 00       	push   $0x4192
    14e7:	e8 46 23 00 00       	call   0x3832
    14ec:	83 c4 10             	add    $0x10,%esp
    14ef:	85 c0                	test   %eax,%eax
    14f1:	0f 89 d6 00 00 00    	jns    0x15cd
    14f7:	83 ec 0c             	sub    $0xc,%esp
    14fa:	68 92 41 00 00       	push   $0x4192
    14ff:	e8 1e 23 00 00       	call   0x3822
    1504:	83 c4 08             	add    $0x8,%esp
    1507:	68 8e 41 00 00       	push   $0x418e
    150c:	68 92 41 00 00       	push   $0x4192
    1511:	e8 1c 23 00 00       	call   0x3832
    1516:	83 c4 10             	add    $0x10,%esp
    1519:	85 c0                	test   %eax,%eax
    151b:	0f 89 c0 00 00 00    	jns    0x15e1
    1521:	83 ec 08             	sub    $0x8,%esp
    1524:	68 8e 41 00 00       	push   $0x418e
    1529:	68 56 44 00 00       	push   $0x4456
    152e:	e8 ff 22 00 00       	call   0x3832
    1533:	83 c4 10             	add    $0x10,%esp
    1536:	85 c0                	test   %eax,%eax
    1538:	0f 89 b7 00 00 00    	jns    0x15f5
    153e:	83 ec 08             	sub    $0x8,%esp
    1541:	68 2c 42 00 00       	push   $0x422c
    1546:	6a 01                	push   $0x1
    1548:	e8 d6 23 00 00       	call   0x3923
    154d:	83 c4 10             	add    $0x10,%esp
    1550:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1553:	c9                   	leave  
    1554:	c3                   	ret    
    1555:	83 ec 08             	sub    $0x8,%esp
    1558:	68 96 41 00 00       	push   $0x4196
    155d:	6a 01                	push   $0x1
    155f:	e8 bf 23 00 00       	call   0x3923
    1564:	e8 69 22 00 00       	call   0x37d2
    1569:	83 ec 08             	sub    $0x8,%esp
    156c:	68 a9 41 00 00       	push   $0x41a9
    1571:	6a 01                	push   $0x1
    1573:	e8 ab 23 00 00       	call   0x3923
    1578:	e8 55 22 00 00       	call   0x37d2
    157d:	83 ec 08             	sub    $0x8,%esp
    1580:	68 bb 41 00 00       	push   $0x41bb
    1585:	6a 01                	push   $0x1
    1587:	e8 97 23 00 00       	call   0x3923
    158c:	e8 41 22 00 00       	call   0x37d2
    1591:	83 ec 08             	sub    $0x8,%esp
    1594:	68 9c 4d 00 00       	push   $0x4d9c
    1599:	6a 01                	push   $0x1
    159b:	e8 83 23 00 00       	call   0x3923
    15a0:	e8 2d 22 00 00       	call   0x37d2
    15a5:	83 ec 08             	sub    $0x8,%esp
    15a8:	68 d0 41 00 00       	push   $0x41d0
    15ad:	6a 01                	push   $0x1
    15af:	e8 6f 23 00 00       	call   0x3923
    15b4:	e8 19 22 00 00       	call   0x37d2
    15b9:	83 ec 08             	sub    $0x8,%esp
    15bc:	68 e1 41 00 00       	push   $0x41e1
    15c1:	6a 01                	push   $0x1
    15c3:	e8 5b 23 00 00       	call   0x3923
    15c8:	e8 05 22 00 00       	call   0x37d2
    15cd:	83 ec 08             	sub    $0x8,%esp
    15d0:	68 f2 41 00 00       	push   $0x41f2
    15d5:	6a 01                	push   $0x1
    15d7:	e8 47 23 00 00       	call   0x3923
    15dc:	e8 f1 21 00 00       	call   0x37d2
    15e1:	83 ec 08             	sub    $0x8,%esp
    15e4:	68 c4 4d 00 00       	push   $0x4dc4
    15e9:	6a 01                	push   $0x1
    15eb:	e8 33 23 00 00       	call   0x3923
    15f0:	e8 dd 21 00 00       	call   0x37d2
    15f5:	83 ec 08             	sub    $0x8,%esp
    15f8:	68 10 42 00 00       	push   $0x4210
    15fd:	6a 01                	push   $0x1
    15ff:	e8 1f 23 00 00       	call   0x3923
    1604:	e8 c9 21 00 00       	call   0x37d2
    1609:	f3 0f 1e fb          	endbr32 
    160d:	55                   	push   %ebp
    160e:	89 e5                	mov    %esp,%ebp
    1610:	57                   	push   %edi
    1611:	56                   	push   %esi
    1612:	53                   	push   %ebx
    1613:	83 ec 54             	sub    $0x54,%esp
    1616:	68 39 42 00 00       	push   $0x4239
    161b:	6a 01                	push   $0x1
    161d:	e8 01 23 00 00       	call   0x3923
    1622:	c6 45 e5 43          	movb   $0x43,-0x1b(%ebp)
    1626:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
    162a:	83 c4 10             	add    $0x10,%esp
    162d:	bb 00 00 00 00       	mov    $0x0,%ebx
    1632:	eb 5e                	jmp    0x1692
    1634:	85 f6                	test   %esi,%esi
    1636:	75 22                	jne    0x165a
    1638:	ba 67 66 66 66       	mov    $0x66666667,%edx
    163d:	89 d8                	mov    %ebx,%eax
    163f:	f7 ea                	imul   %edx
    1641:	d1 fa                	sar    %edx
    1643:	89 d8                	mov    %ebx,%eax
    1645:	c1 f8 1f             	sar    $0x1f,%eax
    1648:	29 c2                	sub    %eax,%edx
    164a:	8d 04 92             	lea    (%edx,%edx,4),%eax
    164d:	89 da                	mov    %ebx,%edx
    164f:	29 c2                	sub    %eax,%edx
    1651:	83 fa 01             	cmp    $0x1,%edx
    1654:	0f 84 9b 00 00 00    	je     0x16f5
    165a:	83 ec 08             	sub    $0x8,%esp
    165d:	68 02 02 00 00       	push   $0x202
    1662:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1665:	50                   	push   %eax
    1666:	e8 a7 21 00 00       	call   0x3812
    166b:	83 c4 10             	add    $0x10,%esp
    166e:	85 c0                	test   %eax,%eax
    1670:	0f 88 98 00 00 00    	js     0x170e
    1676:	83 ec 0c             	sub    $0xc,%esp
    1679:	50                   	push   %eax
    167a:	e8 7b 21 00 00       	call   0x37fa
    167f:	83 c4 10             	add    $0x10,%esp
    1682:	85 f6                	test   %esi,%esi
    1684:	0f 84 9c 00 00 00    	je     0x1726
    168a:	e8 4b 21 00 00       	call   0x37da
    168f:	83 c3 01             	add    $0x1,%ebx
    1692:	83 fb 27             	cmp    $0x27,%ebx
    1695:	0f 8f 90 00 00 00    	jg     0x172b
    169b:	8d 43 30             	lea    0x30(%ebx),%eax
    169e:	88 45 e6             	mov    %al,-0x1a(%ebp)
    16a1:	83 ec 0c             	sub    $0xc,%esp
    16a4:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    16a7:	50                   	push   %eax
    16a8:	e8 75 21 00 00       	call   0x3822
    16ad:	e8 18 21 00 00       	call   0x37ca
    16b2:	89 c6                	mov    %eax,%esi
    16b4:	83 c4 10             	add    $0x10,%esp
    16b7:	85 c0                	test   %eax,%eax
    16b9:	0f 84 75 ff ff ff    	je     0x1634
    16bf:	ba 56 55 55 55       	mov    $0x55555556,%edx
    16c4:	89 d8                	mov    %ebx,%eax
    16c6:	f7 ea                	imul   %edx
    16c8:	89 d8                	mov    %ebx,%eax
    16ca:	c1 f8 1f             	sar    $0x1f,%eax
    16cd:	29 c2                	sub    %eax,%edx
    16cf:	8d 04 52             	lea    (%edx,%edx,2),%eax
    16d2:	89 da                	mov    %ebx,%edx
    16d4:	29 c2                	sub    %eax,%edx
    16d6:	83 fa 01             	cmp    $0x1,%edx
    16d9:	0f 85 55 ff ff ff    	jne    0x1634
    16df:	83 ec 08             	sub    $0x8,%esp
    16e2:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    16e5:	50                   	push   %eax
    16e6:	68 49 42 00 00       	push   $0x4249
    16eb:	e8 42 21 00 00       	call   0x3832
    16f0:	83 c4 10             	add    $0x10,%esp
    16f3:	eb 8d                	jmp    0x1682
    16f5:	83 ec 08             	sub    $0x8,%esp
    16f8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    16fb:	50                   	push   %eax
    16fc:	68 49 42 00 00       	push   $0x4249
    1701:	e8 2c 21 00 00       	call   0x3832
    1706:	83 c4 10             	add    $0x10,%esp
    1709:	e9 74 ff ff ff       	jmp    0x1682
    170e:	83 ec 04             	sub    $0x4,%esp
    1711:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1714:	50                   	push   %eax
    1715:	68 4c 42 00 00       	push   $0x424c
    171a:	6a 01                	push   $0x1
    171c:	e8 02 22 00 00       	call   0x3923
    1721:	e8 ac 20 00 00       	call   0x37d2
    1726:	e8 a7 20 00 00       	call   0x37d2
    172b:	83 ec 04             	sub    $0x4,%esp
    172e:	6a 28                	push   $0x28
    1730:	6a 00                	push   $0x0
    1732:	8d 45 bd             	lea    -0x43(%ebp),%eax
    1735:	50                   	push   %eax
    1736:	e8 4a 1f 00 00       	call   0x3685
    173b:	83 c4 08             	add    $0x8,%esp
    173e:	6a 00                	push   $0x0
    1740:	68 56 44 00 00       	push   $0x4456
    1745:	e8 c8 20 00 00       	call   0x3812
    174a:	89 c3                	mov    %eax,%ebx
    174c:	83 c4 10             	add    $0x10,%esp
    174f:	be 00 00 00 00       	mov    $0x0,%esi
    1754:	83 ec 04             	sub    $0x4,%esp
    1757:	6a 10                	push   $0x10
    1759:	8d 45 ac             	lea    -0x54(%ebp),%eax
    175c:	50                   	push   %eax
    175d:	53                   	push   %ebx
    175e:	e8 87 20 00 00       	call   0x37ea
    1763:	83 c4 10             	add    $0x10,%esp
    1766:	85 c0                	test   %eax,%eax
    1768:	7e 60                	jle    0x17ca
    176a:	66 83 7d ac 00       	cmpw   $0x0,-0x54(%ebp)
    176f:	74 e3                	je     0x1754
    1771:	80 7d ae 43          	cmpb   $0x43,-0x52(%ebp)
    1775:	75 dd                	jne    0x1754
    1777:	80 7d b0 00          	cmpb   $0x0,-0x50(%ebp)
    177b:	75 d7                	jne    0x1754
    177d:	0f be 45 af          	movsbl -0x51(%ebp),%eax
    1781:	83 e8 30             	sub    $0x30,%eax
    1784:	83 f8 27             	cmp    $0x27,%eax
    1787:	77 11                	ja     0x179a
    1789:	80 7c 05 bd 00       	cmpb   $0x0,-0x43(%ebp,%eax,1)
    178e:	75 22                	jne    0x17b2
    1790:	c6 44 05 bd 01       	movb   $0x1,-0x43(%ebp,%eax,1)
    1795:	83 c6 01             	add    $0x1,%esi
    1798:	eb ba                	jmp    0x1754
    179a:	83 ec 04             	sub    $0x4,%esp
    179d:	8d 45 ae             	lea    -0x52(%ebp),%eax
    17a0:	50                   	push   %eax
    17a1:	68 68 42 00 00       	push   $0x4268
    17a6:	6a 01                	push   $0x1
    17a8:	e8 76 21 00 00       	call   0x3923
    17ad:	e8 20 20 00 00       	call   0x37d2
    17b2:	83 ec 04             	sub    $0x4,%esp
    17b5:	8d 45 ae             	lea    -0x52(%ebp),%eax
    17b8:	50                   	push   %eax
    17b9:	68 81 42 00 00       	push   $0x4281
    17be:	6a 01                	push   $0x1
    17c0:	e8 5e 21 00 00       	call   0x3923
    17c5:	e8 08 20 00 00       	call   0x37d2
    17ca:	83 ec 0c             	sub    $0xc,%esp
    17cd:	53                   	push   %ebx
    17ce:	e8 27 20 00 00       	call   0x37fa
    17d3:	83 c4 10             	add    $0x10,%esp
    17d6:	83 fe 28             	cmp    $0x28,%esi
    17d9:	75 0a                	jne    0x17e5
    17db:	bb 00 00 00 00       	mov    $0x0,%ebx
    17e0:	e9 86 00 00 00       	jmp    0x186b
    17e5:	83 ec 08             	sub    $0x8,%esp
    17e8:	68 e8 4d 00 00       	push   $0x4de8
    17ed:	6a 01                	push   $0x1
    17ef:	e8 2f 21 00 00       	call   0x3923
    17f4:	e8 d9 1f 00 00       	call   0x37d2
    17f9:	83 ec 08             	sub    $0x8,%esp
    17fc:	68 21 4b 00 00       	push   $0x4b21
    1801:	6a 01                	push   $0x1
    1803:	e8 1b 21 00 00       	call   0x3923
    1808:	e8 c5 1f 00 00       	call   0x37d2
    180d:	83 ec 08             	sub    $0x8,%esp
    1810:	6a 00                	push   $0x0
    1812:	8d 7d e5             	lea    -0x1b(%ebp),%edi
    1815:	57                   	push   %edi
    1816:	e8 f7 1f 00 00       	call   0x3812
    181b:	89 04 24             	mov    %eax,(%esp)
    181e:	e8 d7 1f 00 00       	call   0x37fa
    1823:	83 c4 08             	add    $0x8,%esp
    1826:	6a 00                	push   $0x0
    1828:	57                   	push   %edi
    1829:	e8 e4 1f 00 00       	call   0x3812
    182e:	89 04 24             	mov    %eax,(%esp)
    1831:	e8 c4 1f 00 00       	call   0x37fa
    1836:	83 c4 08             	add    $0x8,%esp
    1839:	6a 00                	push   $0x0
    183b:	57                   	push   %edi
    183c:	e8 d1 1f 00 00       	call   0x3812
    1841:	89 04 24             	mov    %eax,(%esp)
    1844:	e8 b1 1f 00 00       	call   0x37fa
    1849:	83 c4 08             	add    $0x8,%esp
    184c:	6a 00                	push   $0x0
    184e:	57                   	push   %edi
    184f:	e8 be 1f 00 00       	call   0x3812
    1854:	89 04 24             	mov    %eax,(%esp)
    1857:	e8 9e 1f 00 00       	call   0x37fa
    185c:	83 c4 10             	add    $0x10,%esp
    185f:	85 f6                	test   %esi,%esi
    1861:	74 79                	je     0x18dc
    1863:	e8 72 1f 00 00       	call   0x37da
    1868:	83 c3 01             	add    $0x1,%ebx
    186b:	83 fb 27             	cmp    $0x27,%ebx
    186e:	7f 71                	jg     0x18e1
    1870:	8d 43 30             	lea    0x30(%ebx),%eax
    1873:	88 45 e6             	mov    %al,-0x1a(%ebp)
    1876:	e8 4f 1f 00 00       	call   0x37ca
    187b:	89 c6                	mov    %eax,%esi
    187d:	85 c0                	test   %eax,%eax
    187f:	0f 88 74 ff ff ff    	js     0x17f9
    1885:	ba 56 55 55 55       	mov    $0x55555556,%edx
    188a:	89 d8                	mov    %ebx,%eax
    188c:	f7 ea                	imul   %edx
    188e:	89 d8                	mov    %ebx,%eax
    1890:	c1 f8 1f             	sar    $0x1f,%eax
    1893:	29 c2                	sub    %eax,%edx
    1895:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1898:	89 da                	mov    %ebx,%edx
    189a:	29 c2                	sub    %eax,%edx
    189c:	89 d0                	mov    %edx,%eax
    189e:	09 f0                	or     %esi,%eax
    18a0:	0f 84 67 ff ff ff    	je     0x180d
    18a6:	83 fa 01             	cmp    $0x1,%edx
    18a9:	75 08                	jne    0x18b3
    18ab:	85 f6                	test   %esi,%esi
    18ad:	0f 85 5a ff ff ff    	jne    0x180d
    18b3:	83 ec 0c             	sub    $0xc,%esp
    18b6:	8d 7d e5             	lea    -0x1b(%ebp),%edi
    18b9:	57                   	push   %edi
    18ba:	e8 63 1f 00 00       	call   0x3822
    18bf:	89 3c 24             	mov    %edi,(%esp)
    18c2:	e8 5b 1f 00 00       	call   0x3822
    18c7:	89 3c 24             	mov    %edi,(%esp)
    18ca:	e8 53 1f 00 00       	call   0x3822
    18cf:	89 3c 24             	mov    %edi,(%esp)
    18d2:	e8 4b 1f 00 00       	call   0x3822
    18d7:	83 c4 10             	add    $0x10,%esp
    18da:	eb 83                	jmp    0x185f
    18dc:	e8 f1 1e 00 00       	call   0x37d2
    18e1:	83 ec 08             	sub    $0x8,%esp
    18e4:	68 9e 42 00 00       	push   $0x429e
    18e9:	6a 01                	push   $0x1
    18eb:	e8 33 20 00 00       	call   0x3923
    18f0:	83 c4 10             	add    $0x10,%esp
    18f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    18f6:	5b                   	pop    %ebx
    18f7:	5e                   	pop    %esi
    18f8:	5f                   	pop    %edi
    18f9:	5d                   	pop    %ebp
    18fa:	c3                   	ret    
    18fb:	f3 0f 1e fb          	endbr32 
    18ff:	55                   	push   %ebp
    1900:	89 e5                	mov    %esp,%ebp
    1902:	57                   	push   %edi
    1903:	56                   	push   %esi
    1904:	53                   	push   %ebx
    1905:	83 ec 14             	sub    $0x14,%esp
    1908:	68 ac 42 00 00       	push   $0x42ac
    190d:	6a 01                	push   $0x1
    190f:	e8 0f 20 00 00       	call   0x3923
    1914:	c7 04 24 39 45 00 00 	movl   $0x4539,(%esp)
    191b:	e8 02 1f 00 00       	call   0x3822
    1920:	e8 a5 1e 00 00       	call   0x37ca
    1925:	83 c4 10             	add    $0x10,%esp
    1928:	85 c0                	test   %eax,%eax
    192a:	78 10                	js     0x193c
    192c:	89 c7                	mov    %eax,%edi
    192e:	74 20                	je     0x1950
    1930:	bb 01 00 00 00       	mov    $0x1,%ebx
    1935:	be 00 00 00 00       	mov    $0x0,%esi
    193a:	eb 4d                	jmp    0x1989
    193c:	83 ec 08             	sub    $0x8,%esp
    193f:	68 21 4b 00 00       	push   $0x4b21
    1944:	6a 01                	push   $0x1
    1946:	e8 d8 1f 00 00       	call   0x3923
    194b:	e8 82 1e 00 00       	call   0x37d2
    1950:	bb 61 00 00 00       	mov    $0x61,%ebx
    1955:	eb de                	jmp    0x1935
    1957:	83 ec 08             	sub    $0x8,%esp
    195a:	68 02 02 00 00       	push   $0x202
    195f:	68 39 45 00 00       	push   $0x4539
    1964:	e8 a9 1e 00 00       	call   0x3812
    1969:	89 04 24             	mov    %eax,(%esp)
    196c:	e8 89 1e 00 00       	call   0x37fa
    1971:	83 c4 10             	add    $0x10,%esp
    1974:	eb 10                	jmp    0x1986
    1976:	83 ec 0c             	sub    $0xc,%esp
    1979:	68 39 45 00 00       	push   $0x4539
    197e:	e8 9f 1e 00 00       	call   0x3822
    1983:	83 c4 10             	add    $0x10,%esp
    1986:	83 c6 01             	add    $0x1,%esi
    1989:	83 fe 63             	cmp    $0x63,%esi
    198c:	7f 40                	jg     0x19ce
    198e:	69 db 6d 4e c6 41    	imul   $0x41c64e6d,%ebx,%ebx
    1994:	81 c3 39 30 00 00    	add    $0x3039,%ebx
    199a:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
    199f:	89 d8                	mov    %ebx,%eax
    19a1:	f7 e2                	mul    %edx
    19a3:	89 d0                	mov    %edx,%eax
    19a5:	d1 e8                	shr    %eax
    19a7:	83 e2 fe             	and    $0xfffffffe,%edx
    19aa:	01 c2                	add    %eax,%edx
    19ac:	89 d8                	mov    %ebx,%eax
    19ae:	29 d0                	sub    %edx,%eax
    19b0:	74 a5                	je     0x1957
    19b2:	83 f8 01             	cmp    $0x1,%eax
    19b5:	75 bf                	jne    0x1976
    19b7:	83 ec 08             	sub    $0x8,%esp
    19ba:	68 39 45 00 00       	push   $0x4539
    19bf:	68 bd 42 00 00       	push   $0x42bd
    19c4:	e8 69 1e 00 00       	call   0x3832
    19c9:	83 c4 10             	add    $0x10,%esp
    19cc:	eb b8                	jmp    0x1986
    19ce:	85 ff                	test   %edi,%edi
    19d0:	74 1c                	je     0x19ee
    19d2:	e8 03 1e 00 00       	call   0x37da
    19d7:	83 ec 08             	sub    $0x8,%esp
    19da:	68 c1 42 00 00       	push   $0x42c1
    19df:	6a 01                	push   $0x1
    19e1:	e8 3d 1f 00 00       	call   0x3923
    19e6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    19e9:	5b                   	pop    %ebx
    19ea:	5e                   	pop    %esi
    19eb:	5f                   	pop    %edi
    19ec:	5d                   	pop    %ebp
    19ed:	c3                   	ret    
    19ee:	e8 df 1d 00 00       	call   0x37d2
    19f3:	f3 0f 1e fb          	endbr32 
    19f7:	55                   	push   %ebp
    19f8:	89 e5                	mov    %esp,%ebp
    19fa:	53                   	push   %ebx
    19fb:	83 ec 1c             	sub    $0x1c,%esp
    19fe:	68 d0 42 00 00       	push   $0x42d0
    1a03:	6a 01                	push   $0x1
    1a05:	e8 19 1f 00 00       	call   0x3923
    1a0a:	c7 04 24 dd 42 00 00 	movl   $0x42dd,(%esp)
    1a11:	e8 0c 1e 00 00       	call   0x3822
    1a16:	83 c4 08             	add    $0x8,%esp
    1a19:	68 00 02 00 00       	push   $0x200
    1a1e:	68 dd 42 00 00       	push   $0x42dd
    1a23:	e8 ea 1d 00 00       	call   0x3812
    1a28:	83 c4 10             	add    $0x10,%esp
    1a2b:	85 c0                	test   %eax,%eax
    1a2d:	78 65                	js     0x1a94
    1a2f:	83 ec 0c             	sub    $0xc,%esp
    1a32:	50                   	push   %eax
    1a33:	e8 c2 1d 00 00       	call   0x37fa
    1a38:	83 c4 10             	add    $0x10,%esp
    1a3b:	bb 00 00 00 00       	mov    $0x0,%ebx
    1a40:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    1a46:	7f 74                	jg     0x1abc
    1a48:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    1a4c:	8d 43 3f             	lea    0x3f(%ebx),%eax
    1a4f:	85 db                	test   %ebx,%ebx
    1a51:	0f 49 c3             	cmovns %ebx,%eax
    1a54:	c1 f8 06             	sar    $0x6,%eax
    1a57:	83 c0 30             	add    $0x30,%eax
    1a5a:	88 45 ef             	mov    %al,-0x11(%ebp)
    1a5d:	89 da                	mov    %ebx,%edx
    1a5f:	c1 fa 1f             	sar    $0x1f,%edx
    1a62:	c1 ea 1a             	shr    $0x1a,%edx
    1a65:	8d 04 13             	lea    (%ebx,%edx,1),%eax
    1a68:	83 e0 3f             	and    $0x3f,%eax
    1a6b:	29 d0                	sub    %edx,%eax
    1a6d:	83 c0 30             	add    $0x30,%eax
    1a70:	88 45 f0             	mov    %al,-0x10(%ebp)
    1a73:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    1a77:	83 ec 08             	sub    $0x8,%esp
    1a7a:	8d 45 ee             	lea    -0x12(%ebp),%eax
    1a7d:	50                   	push   %eax
    1a7e:	68 dd 42 00 00       	push   $0x42dd
    1a83:	e8 aa 1d 00 00       	call   0x3832
    1a88:	83 c4 10             	add    $0x10,%esp
    1a8b:	85 c0                	test   %eax,%eax
    1a8d:	75 19                	jne    0x1aa8
    1a8f:	83 c3 01             	add    $0x1,%ebx
    1a92:	eb ac                	jmp    0x1a40
    1a94:	83 ec 08             	sub    $0x8,%esp
    1a97:	68 e0 42 00 00       	push   $0x42e0
    1a9c:	6a 01                	push   $0x1
    1a9e:	e8 80 1e 00 00       	call   0x3923
    1aa3:	e8 2a 1d 00 00       	call   0x37d2
    1aa8:	83 ec 08             	sub    $0x8,%esp
    1aab:	68 f6 42 00 00       	push   $0x42f6
    1ab0:	6a 01                	push   $0x1
    1ab2:	e8 6c 1e 00 00       	call   0x3923
    1ab7:	e8 16 1d 00 00       	call   0x37d2
    1abc:	83 ec 0c             	sub    $0xc,%esp
    1abf:	68 dd 42 00 00       	push   $0x42dd
    1ac4:	e8 59 1d 00 00       	call   0x3822
    1ac9:	83 c4 10             	add    $0x10,%esp
    1acc:	bb 00 00 00 00       	mov    $0x0,%ebx
    1ad1:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    1ad7:	7f 5b                	jg     0x1b34
    1ad9:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    1add:	8d 43 3f             	lea    0x3f(%ebx),%eax
    1ae0:	85 db                	test   %ebx,%ebx
    1ae2:	0f 49 c3             	cmovns %ebx,%eax
    1ae5:	c1 f8 06             	sar    $0x6,%eax
    1ae8:	83 c0 30             	add    $0x30,%eax
    1aeb:	88 45 ef             	mov    %al,-0x11(%ebp)
    1aee:	89 da                	mov    %ebx,%edx
    1af0:	c1 fa 1f             	sar    $0x1f,%edx
    1af3:	c1 ea 1a             	shr    $0x1a,%edx
    1af6:	8d 04 13             	lea    (%ebx,%edx,1),%eax
    1af9:	83 e0 3f             	and    $0x3f,%eax
    1afc:	29 d0                	sub    %edx,%eax
    1afe:	83 c0 30             	add    $0x30,%eax
    1b01:	88 45 f0             	mov    %al,-0x10(%ebp)
    1b04:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    1b08:	83 ec 0c             	sub    $0xc,%esp
    1b0b:	8d 45 ee             	lea    -0x12(%ebp),%eax
    1b0e:	50                   	push   %eax
    1b0f:	e8 0e 1d 00 00       	call   0x3822
    1b14:	83 c4 10             	add    $0x10,%esp
    1b17:	85 c0                	test   %eax,%eax
    1b19:	75 05                	jne    0x1b20
    1b1b:	83 c3 01             	add    $0x1,%ebx
    1b1e:	eb b1                	jmp    0x1ad1
    1b20:	83 ec 08             	sub    $0x8,%esp
    1b23:	68 0a 43 00 00       	push   $0x430a
    1b28:	6a 01                	push   $0x1
    1b2a:	e8 f4 1d 00 00       	call   0x3923
    1b2f:	e8 9e 1c 00 00       	call   0x37d2
    1b34:	83 ec 08             	sub    $0x8,%esp
    1b37:	68 1f 43 00 00       	push   $0x431f
    1b3c:	6a 01                	push   $0x1
    1b3e:	e8 e0 1d 00 00       	call   0x3923
    1b43:	83 c4 10             	add    $0x10,%esp
    1b46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1b49:	c9                   	leave  
    1b4a:	c3                   	ret    
    1b4b:	f3 0f 1e fb          	endbr32 
    1b4f:	55                   	push   %ebp
    1b50:	89 e5                	mov    %esp,%ebp
    1b52:	53                   	push   %ebx
    1b53:	83 ec 0c             	sub    $0xc,%esp
    1b56:	68 2a 43 00 00       	push   $0x432a
    1b5b:	6a 01                	push   $0x1
    1b5d:	e8 c1 1d 00 00       	call   0x3923
    1b62:	c7 04 24 b3 43 00 00 	movl   $0x43b3,(%esp)
    1b69:	e8 b4 1c 00 00       	call   0x3822
    1b6e:	c7 04 24 50 44 00 00 	movl   $0x4450,(%esp)
    1b75:	e8 c0 1c 00 00       	call   0x383a
    1b7a:	83 c4 10             	add    $0x10,%esp
    1b7d:	85 c0                	test   %eax,%eax
    1b7f:	0f 85 14 04 00 00    	jne    0x1f99
    1b85:	83 ec 08             	sub    $0x8,%esp
    1b88:	68 02 02 00 00       	push   $0x202
    1b8d:	68 89 43 00 00       	push   $0x4389
    1b92:	e8 7b 1c 00 00       	call   0x3812
    1b97:	89 c3                	mov    %eax,%ebx
    1b99:	83 c4 10             	add    $0x10,%esp
    1b9c:	85 c0                	test   %eax,%eax
    1b9e:	0f 88 09 04 00 00    	js     0x1fad
    1ba4:	83 ec 04             	sub    $0x4,%esp
    1ba7:	6a 02                	push   $0x2
    1ba9:	68 b3 43 00 00       	push   $0x43b3
    1bae:	50                   	push   %eax
    1baf:	e8 3e 1c 00 00       	call   0x37f2
    1bb4:	89 1c 24             	mov    %ebx,(%esp)
    1bb7:	e8 3e 1c 00 00       	call   0x37fa
    1bbc:	c7 04 24 50 44 00 00 	movl   $0x4450,(%esp)
    1bc3:	e8 5a 1c 00 00       	call   0x3822
    1bc8:	83 c4 10             	add    $0x10,%esp
    1bcb:	85 c0                	test   %eax,%eax
    1bcd:	0f 89 ee 03 00 00    	jns    0x1fc1
    1bd3:	83 ec 0c             	sub    $0xc,%esp
    1bd6:	68 64 43 00 00       	push   $0x4364
    1bdb:	e8 5a 1c 00 00       	call   0x383a
    1be0:	83 c4 10             	add    $0x10,%esp
    1be3:	85 c0                	test   %eax,%eax
    1be5:	0f 85 ea 03 00 00    	jne    0x1fd5
    1beb:	83 ec 08             	sub    $0x8,%esp
    1bee:	68 02 02 00 00       	push   $0x202
    1bf3:	68 86 43 00 00       	push   $0x4386
    1bf8:	e8 15 1c 00 00       	call   0x3812
    1bfd:	89 c3                	mov    %eax,%ebx
    1bff:	83 c4 10             	add    $0x10,%esp
    1c02:	85 c0                	test   %eax,%eax
    1c04:	0f 88 df 03 00 00    	js     0x1fe9
    1c0a:	83 ec 04             	sub    $0x4,%esp
    1c0d:	6a 02                	push   $0x2
    1c0f:	68 a7 43 00 00       	push   $0x43a7
    1c14:	50                   	push   %eax
    1c15:	e8 d8 1b 00 00       	call   0x37f2
    1c1a:	89 1c 24             	mov    %ebx,(%esp)
    1c1d:	e8 d8 1b 00 00       	call   0x37fa
    1c22:	83 c4 08             	add    $0x8,%esp
    1c25:	6a 00                	push   $0x0
    1c27:	68 aa 43 00 00       	push   $0x43aa
    1c2c:	e8 e1 1b 00 00       	call   0x3812
    1c31:	89 c3                	mov    %eax,%ebx
    1c33:	83 c4 10             	add    $0x10,%esp
    1c36:	85 c0                	test   %eax,%eax
    1c38:	0f 88 bf 03 00 00    	js     0x1ffd
    1c3e:	83 ec 04             	sub    $0x4,%esp
    1c41:	68 00 20 00 00       	push   $0x2000
    1c46:	68 00 84 00 00       	push   $0x8400
    1c4b:	50                   	push   %eax
    1c4c:	e8 99 1b 00 00       	call   0x37ea
    1c51:	83 c4 10             	add    $0x10,%esp
    1c54:	83 f8 02             	cmp    $0x2,%eax
    1c57:	0f 85 b4 03 00 00    	jne    0x2011
    1c5d:	80 3d 00 84 00 00 66 	cmpb   $0x66,0x8400
    1c64:	0f 85 a7 03 00 00    	jne    0x2011
    1c6a:	83 ec 0c             	sub    $0xc,%esp
    1c6d:	53                   	push   %ebx
    1c6e:	e8 87 1b 00 00       	call   0x37fa
    1c73:	83 c4 08             	add    $0x8,%esp
    1c76:	68 ea 43 00 00       	push   $0x43ea
    1c7b:	68 86 43 00 00       	push   $0x4386
    1c80:	e8 ad 1b 00 00       	call   0x3832
    1c85:	83 c4 10             	add    $0x10,%esp
    1c88:	85 c0                	test   %eax,%eax
    1c8a:	0f 85 95 03 00 00    	jne    0x2025
    1c90:	83 ec 0c             	sub    $0xc,%esp
    1c93:	68 86 43 00 00       	push   $0x4386
    1c98:	e8 85 1b 00 00       	call   0x3822
    1c9d:	83 c4 10             	add    $0x10,%esp
    1ca0:	85 c0                	test   %eax,%eax
    1ca2:	0f 85 91 03 00 00    	jne    0x2039
    1ca8:	83 ec 08             	sub    $0x8,%esp
    1cab:	6a 00                	push   $0x0
    1cad:	68 86 43 00 00       	push   $0x4386
    1cb2:	e8 5b 1b 00 00       	call   0x3812
    1cb7:	83 c4 10             	add    $0x10,%esp
    1cba:	85 c0                	test   %eax,%eax
    1cbc:	0f 89 8b 03 00 00    	jns    0x204d
    1cc2:	83 ec 0c             	sub    $0xc,%esp
    1cc5:	68 50 44 00 00       	push   $0x4450
    1cca:	e8 73 1b 00 00       	call   0x3842
    1ccf:	83 c4 10             	add    $0x10,%esp
    1cd2:	85 c0                	test   %eax,%eax
    1cd4:	0f 85 87 03 00 00    	jne    0x2061
    1cda:	83 ec 0c             	sub    $0xc,%esp
    1cdd:	68 1e 44 00 00       	push   $0x441e
    1ce2:	e8 5b 1b 00 00       	call   0x3842
    1ce7:	83 c4 10             	add    $0x10,%esp
    1cea:	85 c0                	test   %eax,%eax
    1cec:	0f 85 83 03 00 00    	jne    0x2075
    1cf2:	83 ec 0c             	sub    $0xc,%esp
    1cf5:	68 44 44 00 00       	push   $0x4444
    1cfa:	e8 43 1b 00 00       	call   0x3842
    1cff:	83 c4 10             	add    $0x10,%esp
    1d02:	85 c0                	test   %eax,%eax
    1d04:	0f 85 7f 03 00 00    	jne    0x2089
    1d0a:	83 ec 0c             	sub    $0xc,%esp
    1d0d:	68 53 44 00 00       	push   $0x4453
    1d12:	e8 2b 1b 00 00       	call   0x3842
    1d17:	83 c4 10             	add    $0x10,%esp
    1d1a:	85 c0                	test   %eax,%eax
    1d1c:	0f 85 7b 03 00 00    	jne    0x209d
    1d22:	83 ec 08             	sub    $0x8,%esp
    1d25:	6a 00                	push   $0x0
    1d27:	68 ea 43 00 00       	push   $0x43ea
    1d2c:	e8 e1 1a 00 00       	call   0x3812
    1d31:	89 c3                	mov    %eax,%ebx
    1d33:	83 c4 10             	add    $0x10,%esp
    1d36:	85 c0                	test   %eax,%eax
    1d38:	0f 88 73 03 00 00    	js     0x20b1
    1d3e:	83 ec 04             	sub    $0x4,%esp
    1d41:	68 00 20 00 00       	push   $0x2000
    1d46:	68 00 84 00 00       	push   $0x8400
    1d4b:	50                   	push   %eax
    1d4c:	e8 99 1a 00 00       	call   0x37ea
    1d51:	83 c4 10             	add    $0x10,%esp
    1d54:	83 f8 02             	cmp    $0x2,%eax
    1d57:	0f 85 68 03 00 00    	jne    0x20c5
    1d5d:	83 ec 0c             	sub    $0xc,%esp
    1d60:	53                   	push   %ebx
    1d61:	e8 94 1a 00 00       	call   0x37fa
    1d66:	83 c4 08             	add    $0x8,%esp
    1d69:	6a 00                	push   $0x0
    1d6b:	68 86 43 00 00       	push   $0x4386
    1d70:	e8 9d 1a 00 00       	call   0x3812
    1d75:	83 c4 10             	add    $0x10,%esp
    1d78:	85 c0                	test   %eax,%eax
    1d7a:	0f 89 59 03 00 00    	jns    0x20d9
    1d80:	83 ec 08             	sub    $0x8,%esp
    1d83:	68 02 02 00 00       	push   $0x202
    1d88:	68 9e 44 00 00       	push   $0x449e
    1d8d:	e8 80 1a 00 00       	call   0x3812
    1d92:	83 c4 10             	add    $0x10,%esp
    1d95:	85 c0                	test   %eax,%eax
    1d97:	0f 89 50 03 00 00    	jns    0x20ed
    1d9d:	83 ec 08             	sub    $0x8,%esp
    1da0:	68 02 02 00 00       	push   $0x202
    1da5:	68 c3 44 00 00       	push   $0x44c3
    1daa:	e8 63 1a 00 00       	call   0x3812
    1daf:	83 c4 10             	add    $0x10,%esp
    1db2:	85 c0                	test   %eax,%eax
    1db4:	0f 89 47 03 00 00    	jns    0x2101
    1dba:	83 ec 08             	sub    $0x8,%esp
    1dbd:	68 00 02 00 00       	push   $0x200
    1dc2:	68 50 44 00 00       	push   $0x4450
    1dc7:	e8 46 1a 00 00       	call   0x3812
    1dcc:	83 c4 10             	add    $0x10,%esp
    1dcf:	85 c0                	test   %eax,%eax
    1dd1:	0f 89 3e 03 00 00    	jns    0x2115
    1dd7:	83 ec 08             	sub    $0x8,%esp
    1dda:	6a 02                	push   $0x2
    1ddc:	68 50 44 00 00       	push   $0x4450
    1de1:	e8 2c 1a 00 00       	call   0x3812
    1de6:	83 c4 10             	add    $0x10,%esp
    1de9:	85 c0                	test   %eax,%eax
    1deb:	0f 89 38 03 00 00    	jns    0x2129
    1df1:	83 ec 08             	sub    $0x8,%esp
    1df4:	6a 01                	push   $0x1
    1df6:	68 50 44 00 00       	push   $0x4450
    1dfb:	e8 12 1a 00 00       	call   0x3812
    1e00:	83 c4 10             	add    $0x10,%esp
    1e03:	85 c0                	test   %eax,%eax
    1e05:	0f 89 32 03 00 00    	jns    0x213d
    1e0b:	83 ec 08             	sub    $0x8,%esp
    1e0e:	68 32 45 00 00       	push   $0x4532
    1e13:	68 9e 44 00 00       	push   $0x449e
    1e18:	e8 15 1a 00 00       	call   0x3832
    1e1d:	83 c4 10             	add    $0x10,%esp
    1e20:	85 c0                	test   %eax,%eax
    1e22:	0f 84 29 03 00 00    	je     0x2151
    1e28:	83 ec 08             	sub    $0x8,%esp
    1e2b:	68 32 45 00 00       	push   $0x4532
    1e30:	68 c3 44 00 00       	push   $0x44c3
    1e35:	e8 f8 19 00 00       	call   0x3832
    1e3a:	83 c4 10             	add    $0x10,%esp
    1e3d:	85 c0                	test   %eax,%eax
    1e3f:	0f 84 20 03 00 00    	je     0x2165
    1e45:	83 ec 08             	sub    $0x8,%esp
    1e48:	68 ea 43 00 00       	push   $0x43ea
    1e4d:	68 89 43 00 00       	push   $0x4389
    1e52:	e8 db 19 00 00       	call   0x3832
    1e57:	83 c4 10             	add    $0x10,%esp
    1e5a:	85 c0                	test   %eax,%eax
    1e5c:	0f 84 17 03 00 00    	je     0x2179
    1e62:	83 ec 0c             	sub    $0xc,%esp
    1e65:	68 9e 44 00 00       	push   $0x449e
    1e6a:	e8 cb 19 00 00       	call   0x383a
    1e6f:	83 c4 10             	add    $0x10,%esp
    1e72:	85 c0                	test   %eax,%eax
    1e74:	0f 84 13 03 00 00    	je     0x218d
    1e7a:	83 ec 0c             	sub    $0xc,%esp
    1e7d:	68 c3 44 00 00       	push   $0x44c3
    1e82:	e8 b3 19 00 00       	call   0x383a
    1e87:	83 c4 10             	add    $0x10,%esp
    1e8a:	85 c0                	test   %eax,%eax
    1e8c:	0f 84 0f 03 00 00    	je     0x21a1
    1e92:	83 ec 0c             	sub    $0xc,%esp
    1e95:	68 ea 43 00 00       	push   $0x43ea
    1e9a:	e8 9b 19 00 00       	call   0x383a
    1e9f:	83 c4 10             	add    $0x10,%esp
    1ea2:	85 c0                	test   %eax,%eax
    1ea4:	0f 84 0b 03 00 00    	je     0x21b5
    1eaa:	83 ec 0c             	sub    $0xc,%esp
    1ead:	68 c3 44 00 00       	push   $0x44c3
    1eb2:	e8 6b 19 00 00       	call   0x3822
    1eb7:	83 c4 10             	add    $0x10,%esp
    1eba:	85 c0                	test   %eax,%eax
    1ebc:	0f 84 07 03 00 00    	je     0x21c9
    1ec2:	83 ec 0c             	sub    $0xc,%esp
    1ec5:	68 9e 44 00 00       	push   $0x449e
    1eca:	e8 53 19 00 00       	call   0x3822
    1ecf:	83 c4 10             	add    $0x10,%esp
    1ed2:	85 c0                	test   %eax,%eax
    1ed4:	0f 84 03 03 00 00    	je     0x21dd
    1eda:	83 ec 0c             	sub    $0xc,%esp
    1edd:	68 89 43 00 00       	push   $0x4389
    1ee2:	e8 5b 19 00 00       	call   0x3842
    1ee7:	83 c4 10             	add    $0x10,%esp
    1eea:	85 c0                	test   %eax,%eax
    1eec:	0f 84 ff 02 00 00    	je     0x21f1
    1ef2:	83 ec 0c             	sub    $0xc,%esp
    1ef5:	68 35 45 00 00       	push   $0x4535
    1efa:	e8 43 19 00 00       	call   0x3842
    1eff:	83 c4 10             	add    $0x10,%esp
    1f02:	85 c0                	test   %eax,%eax
    1f04:	0f 84 fb 02 00 00    	je     0x2205
    1f0a:	83 ec 0c             	sub    $0xc,%esp
    1f0d:	68 ea 43 00 00       	push   $0x43ea
    1f12:	e8 0b 19 00 00       	call   0x3822
    1f17:	83 c4 10             	add    $0x10,%esp
    1f1a:	85 c0                	test   %eax,%eax
    1f1c:	0f 85 f7 02 00 00    	jne    0x2219
    1f22:	83 ec 0c             	sub    $0xc,%esp
    1f25:	68 89 43 00 00       	push   $0x4389
    1f2a:	e8 f3 18 00 00       	call   0x3822
    1f2f:	83 c4 10             	add    $0x10,%esp
    1f32:	85 c0                	test   %eax,%eax
    1f34:	0f 85 f3 02 00 00    	jne    0x222d
    1f3a:	83 ec 0c             	sub    $0xc,%esp
    1f3d:	68 50 44 00 00       	push   $0x4450
    1f42:	e8 db 18 00 00       	call   0x3822
    1f47:	83 c4 10             	add    $0x10,%esp
    1f4a:	85 c0                	test   %eax,%eax
    1f4c:	0f 84 ef 02 00 00    	je     0x2241
    1f52:	83 ec 0c             	sub    $0xc,%esp
    1f55:	68 65 43 00 00       	push   $0x4365
    1f5a:	e8 c3 18 00 00       	call   0x3822
    1f5f:	83 c4 10             	add    $0x10,%esp
    1f62:	85 c0                	test   %eax,%eax
    1f64:	0f 88 eb 02 00 00    	js     0x2255
    1f6a:	83 ec 0c             	sub    $0xc,%esp
    1f6d:	68 50 44 00 00       	push   $0x4450
    1f72:	e8 ab 18 00 00       	call   0x3822
    1f77:	83 c4 10             	add    $0x10,%esp
    1f7a:	85 c0                	test   %eax,%eax
    1f7c:	0f 88 e7 02 00 00    	js     0x2269
    1f82:	83 ec 08             	sub    $0x8,%esp
    1f85:	68 32 46 00 00       	push   $0x4632
    1f8a:	6a 01                	push   $0x1
    1f8c:	e8 92 19 00 00       	call   0x3923
    1f91:	83 c4 10             	add    $0x10,%esp
    1f94:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1f97:	c9                   	leave  
    1f98:	c3                   	ret    
    1f99:	83 ec 08             	sub    $0x8,%esp
    1f9c:	68 37 43 00 00       	push   $0x4337
    1fa1:	6a 01                	push   $0x1
    1fa3:	e8 7b 19 00 00       	call   0x3923
    1fa8:	e8 25 18 00 00       	call   0x37d2
    1fad:	83 ec 08             	sub    $0x8,%esp
    1fb0:	68 4f 43 00 00       	push   $0x434f
    1fb5:	6a 01                	push   $0x1
    1fb7:	e8 67 19 00 00       	call   0x3923
    1fbc:	e8 11 18 00 00       	call   0x37d2
    1fc1:	83 ec 08             	sub    $0x8,%esp
    1fc4:	68 1c 4e 00 00       	push   $0x4e1c
    1fc9:	6a 01                	push   $0x1
    1fcb:	e8 53 19 00 00       	call   0x3923
    1fd0:	e8 fd 17 00 00       	call   0x37d2
    1fd5:	83 ec 08             	sub    $0x8,%esp
    1fd8:	68 6b 43 00 00       	push   $0x436b
    1fdd:	6a 01                	push   $0x1
    1fdf:	e8 3f 19 00 00       	call   0x3923
    1fe4:	e8 e9 17 00 00       	call   0x37d2
    1fe9:	83 ec 08             	sub    $0x8,%esp
    1fec:	68 8f 43 00 00       	push   $0x438f
    1ff1:	6a 01                	push   $0x1
    1ff3:	e8 2b 19 00 00       	call   0x3923
    1ff8:	e8 d5 17 00 00       	call   0x37d2
    1ffd:	83 ec 08             	sub    $0x8,%esp
    2000:	68 b6 43 00 00       	push   $0x43b6
    2005:	6a 01                	push   $0x1
    2007:	e8 17 19 00 00       	call   0x3923
    200c:	e8 c1 17 00 00       	call   0x37d2
    2011:	83 ec 08             	sub    $0x8,%esp
    2014:	68 cf 43 00 00       	push   $0x43cf
    2019:	6a 01                	push   $0x1
    201b:	e8 03 19 00 00       	call   0x3923
    2020:	e8 ad 17 00 00       	call   0x37d2
    2025:	83 ec 08             	sub    $0x8,%esp
    2028:	68 44 4e 00 00       	push   $0x4e44
    202d:	6a 01                	push   $0x1
    202f:	e8 ef 18 00 00       	call   0x3923
    2034:	e8 99 17 00 00       	call   0x37d2
    2039:	83 ec 08             	sub    $0x8,%esp
    203c:	68 f5 43 00 00       	push   $0x43f5
    2041:	6a 01                	push   $0x1
    2043:	e8 db 18 00 00       	call   0x3923
    2048:	e8 85 17 00 00       	call   0x37d2
    204d:	83 ec 08             	sub    $0x8,%esp
    2050:	68 68 4e 00 00       	push   $0x4e68
    2055:	6a 01                	push   $0x1
    2057:	e8 c7 18 00 00       	call   0x3923
    205c:	e8 71 17 00 00       	call   0x37d2
    2061:	83 ec 08             	sub    $0x8,%esp
    2064:	68 0d 44 00 00       	push   $0x440d
    2069:	6a 01                	push   $0x1
    206b:	e8 b3 18 00 00       	call   0x3923
    2070:	e8 5d 17 00 00       	call   0x37d2
    2075:	83 ec 08             	sub    $0x8,%esp
    2078:	68 2a 44 00 00       	push   $0x442a
    207d:	6a 01                	push   $0x1
    207f:	e8 9f 18 00 00       	call   0x3923
    2084:	e8 49 17 00 00       	call   0x37d2
    2089:	83 ec 08             	sub    $0x8,%esp
    208c:	68 2a 44 00 00       	push   $0x442a
    2091:	6a 01                	push   $0x1
    2093:	e8 8b 18 00 00       	call   0x3923
    2098:	e8 35 17 00 00       	call   0x37d2
    209d:	83 ec 08             	sub    $0x8,%esp
    20a0:	68 58 44 00 00       	push   $0x4458
    20a5:	6a 01                	push   $0x1
    20a7:	e8 77 18 00 00       	call   0x3923
    20ac:	e8 21 17 00 00       	call   0x37d2
    20b1:	83 ec 08             	sub    $0x8,%esp
    20b4:	68 6b 44 00 00       	push   $0x446b
    20b9:	6a 01                	push   $0x1
    20bb:	e8 63 18 00 00       	call   0x3923
    20c0:	e8 0d 17 00 00       	call   0x37d2
    20c5:	83 ec 08             	sub    $0x8,%esp
    20c8:	68 83 44 00 00       	push   $0x4483
    20cd:	6a 01                	push   $0x1
    20cf:	e8 4f 18 00 00       	call   0x3923
    20d4:	e8 f9 16 00 00       	call   0x37d2
    20d9:	83 ec 08             	sub    $0x8,%esp
    20dc:	68 8c 4e 00 00       	push   $0x4e8c
    20e1:	6a 01                	push   $0x1
    20e3:	e8 3b 18 00 00       	call   0x3923
    20e8:	e8 e5 16 00 00       	call   0x37d2
    20ed:	83 ec 08             	sub    $0x8,%esp
    20f0:	68 a7 44 00 00       	push   $0x44a7
    20f5:	6a 01                	push   $0x1
    20f7:	e8 27 18 00 00       	call   0x3923
    20fc:	e8 d1 16 00 00       	call   0x37d2
    2101:	83 ec 08             	sub    $0x8,%esp
    2104:	68 cc 44 00 00       	push   $0x44cc
    2109:	6a 01                	push   $0x1
    210b:	e8 13 18 00 00       	call   0x3923
    2110:	e8 bd 16 00 00       	call   0x37d2
    2115:	83 ec 08             	sub    $0x8,%esp
    2118:	68 e8 44 00 00       	push   $0x44e8
    211d:	6a 01                	push   $0x1
    211f:	e8 ff 17 00 00       	call   0x3923
    2124:	e8 a9 16 00 00       	call   0x37d2
    2129:	83 ec 08             	sub    $0x8,%esp
    212c:	68 fe 44 00 00       	push   $0x44fe
    2131:	6a 01                	push   $0x1
    2133:	e8 eb 17 00 00       	call   0x3923
    2138:	e8 95 16 00 00       	call   0x37d2
    213d:	83 ec 08             	sub    $0x8,%esp
    2140:	68 17 45 00 00       	push   $0x4517
    2145:	6a 01                	push   $0x1
    2147:	e8 d7 17 00 00       	call   0x3923
    214c:	e8 81 16 00 00       	call   0x37d2
    2151:	83 ec 08             	sub    $0x8,%esp
    2154:	68 b4 4e 00 00       	push   $0x4eb4
    2159:	6a 01                	push   $0x1
    215b:	e8 c3 17 00 00       	call   0x3923
    2160:	e8 6d 16 00 00       	call   0x37d2
    2165:	83 ec 08             	sub    $0x8,%esp
    2168:	68 d8 4e 00 00       	push   $0x4ed8
    216d:	6a 01                	push   $0x1
    216f:	e8 af 17 00 00       	call   0x3923
    2174:	e8 59 16 00 00       	call   0x37d2
    2179:	83 ec 08             	sub    $0x8,%esp
    217c:	68 fc 4e 00 00       	push   $0x4efc
    2181:	6a 01                	push   $0x1
    2183:	e8 9b 17 00 00       	call   0x3923
    2188:	e8 45 16 00 00       	call   0x37d2
    218d:	83 ec 08             	sub    $0x8,%esp
    2190:	68 3b 45 00 00       	push   $0x453b
    2195:	6a 01                	push   $0x1
    2197:	e8 87 17 00 00       	call   0x3923
    219c:	e8 31 16 00 00       	call   0x37d2
    21a1:	83 ec 08             	sub    $0x8,%esp
    21a4:	68 56 45 00 00       	push   $0x4556
    21a9:	6a 01                	push   $0x1
    21ab:	e8 73 17 00 00       	call   0x3923
    21b0:	e8 1d 16 00 00       	call   0x37d2
    21b5:	83 ec 08             	sub    $0x8,%esp
    21b8:	68 71 45 00 00       	push   $0x4571
    21bd:	6a 01                	push   $0x1
    21bf:	e8 5f 17 00 00       	call   0x3923
    21c4:	e8 09 16 00 00       	call   0x37d2
    21c9:	83 ec 08             	sub    $0x8,%esp
    21cc:	68 8e 45 00 00       	push   $0x458e
    21d1:	6a 01                	push   $0x1
    21d3:	e8 4b 17 00 00       	call   0x3923
    21d8:	e8 f5 15 00 00       	call   0x37d2
    21dd:	83 ec 08             	sub    $0x8,%esp
    21e0:	68 aa 45 00 00       	push   $0x45aa
    21e5:	6a 01                	push   $0x1
    21e7:	e8 37 17 00 00       	call   0x3923
    21ec:	e8 e1 15 00 00       	call   0x37d2
    21f1:	83 ec 08             	sub    $0x8,%esp
    21f4:	68 c6 45 00 00       	push   $0x45c6
    21f9:	6a 01                	push   $0x1
    21fb:	e8 23 17 00 00       	call   0x3923
    2200:	e8 cd 15 00 00       	call   0x37d2
    2205:	83 ec 08             	sub    $0x8,%esp
    2208:	68 de 45 00 00       	push   $0x45de
    220d:	6a 01                	push   $0x1
    220f:	e8 0f 17 00 00       	call   0x3923
    2214:	e8 b9 15 00 00       	call   0x37d2
    2219:	83 ec 08             	sub    $0x8,%esp
    221c:	68 f5 43 00 00       	push   $0x43f5
    2221:	6a 01                	push   $0x1
    2223:	e8 fb 16 00 00       	call   0x3923
    2228:	e8 a5 15 00 00       	call   0x37d2
    222d:	83 ec 08             	sub    $0x8,%esp
    2230:	68 f6 45 00 00       	push   $0x45f6
    2235:	6a 01                	push   $0x1
    2237:	e8 e7 16 00 00       	call   0x3923
    223c:	e8 91 15 00 00       	call   0x37d2
    2241:	83 ec 08             	sub    $0x8,%esp
    2244:	68 20 4f 00 00       	push   $0x4f20
    2249:	6a 01                	push   $0x1
    224b:	e8 d3 16 00 00       	call   0x3923
    2250:	e8 7d 15 00 00       	call   0x37d2
    2255:	83 ec 08             	sub    $0x8,%esp
    2258:	68 0b 46 00 00       	push   $0x460b
    225d:	6a 01                	push   $0x1
    225f:	e8 bf 16 00 00       	call   0x3923
    2264:	e8 69 15 00 00       	call   0x37d2
    2269:	83 ec 08             	sub    $0x8,%esp
    226c:	68 20 46 00 00       	push   $0x4620
    2271:	6a 01                	push   $0x1
    2273:	e8 ab 16 00 00       	call   0x3923
    2278:	e8 55 15 00 00       	call   0x37d2
    227d:	f3 0f 1e fb          	endbr32 
    2281:	55                   	push   %ebp
    2282:	89 e5                	mov    %esp,%ebp
    2284:	57                   	push   %edi
    2285:	56                   	push   %esi
    2286:	53                   	push   %ebx
    2287:	83 ec 14             	sub    $0x14,%esp
    228a:	68 3d 46 00 00       	push   $0x463d
    228f:	6a 01                	push   $0x1
    2291:	e8 8d 16 00 00       	call   0x3923
    2296:	c7 04 24 4c 46 00 00 	movl   $0x464c,(%esp)
    229d:	e8 80 15 00 00       	call   0x3822
    22a2:	83 c4 10             	add    $0x10,%esp
    22a5:	be f3 01 00 00       	mov    $0x1f3,%esi
    22aa:	eb 45                	jmp    0x22f1
    22ac:	83 ec 08             	sub    $0x8,%esp
    22af:	68 55 46 00 00       	push   $0x4655
    22b4:	6a 01                	push   $0x1
    22b6:	e8 68 16 00 00       	call   0x3923
    22bb:	e8 12 15 00 00       	call   0x37d2
    22c0:	50                   	push   %eax
    22c1:	56                   	push   %esi
    22c2:	68 6d 46 00 00       	push   $0x466d
    22c7:	6a 01                	push   $0x1
    22c9:	e8 55 16 00 00       	call   0x3923
    22ce:	e8 ff 14 00 00       	call   0x37d2
    22d3:	83 ec 0c             	sub    $0xc,%esp
    22d6:	57                   	push   %edi
    22d7:	e8 1e 15 00 00       	call   0x37fa
    22dc:	c7 04 24 4c 46 00 00 	movl   $0x464c,(%esp)
    22e3:	e8 3a 15 00 00       	call   0x3822
    22e8:	81 c6 d7 01 00 00    	add    $0x1d7,%esi
    22ee:	83 c4 10             	add    $0x10,%esp
    22f1:	81 fe ff 17 00 00    	cmp    $0x17ff,%esi
    22f7:	7f 40                	jg     0x2339
    22f9:	83 ec 08             	sub    $0x8,%esp
    22fc:	68 02 02 00 00       	push   $0x202
    2301:	68 4c 46 00 00       	push   $0x464c
    2306:	e8 07 15 00 00       	call   0x3812
    230b:	89 c7                	mov    %eax,%edi
    230d:	83 c4 10             	add    $0x10,%esp
    2310:	85 c0                	test   %eax,%eax
    2312:	78 98                	js     0x22ac
    2314:	bb 00 00 00 00       	mov    $0x0,%ebx
    2319:	83 fb 01             	cmp    $0x1,%ebx
    231c:	7f b5                	jg     0x22d3
    231e:	83 ec 04             	sub    $0x4,%esp
    2321:	56                   	push   %esi
    2322:	68 00 84 00 00       	push   $0x8400
    2327:	57                   	push   %edi
    2328:	e8 c5 14 00 00       	call   0x37f2
    232d:	83 c4 10             	add    $0x10,%esp
    2330:	39 c6                	cmp    %eax,%esi
    2332:	75 8c                	jne    0x22c0
    2334:	83 c3 01             	add    $0x1,%ebx
    2337:	eb e0                	jmp    0x2319
    2339:	83 ec 08             	sub    $0x8,%esp
    233c:	68 7f 46 00 00       	push   $0x467f
    2341:	6a 01                	push   $0x1
    2343:	e8 db 15 00 00       	call   0x3923
    2348:	83 c4 10             	add    $0x10,%esp
    234b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    234e:	5b                   	pop    %ebx
    234f:	5e                   	pop    %esi
    2350:	5f                   	pop    %edi
    2351:	5d                   	pop    %ebp
    2352:	c3                   	ret    
    2353:	f3 0f 1e fb          	endbr32 
    2357:	55                   	push   %ebp
    2358:	89 e5                	mov    %esp,%ebp
    235a:	57                   	push   %edi
    235b:	56                   	push   %esi
    235c:	53                   	push   %ebx
    235d:	83 ec 14             	sub    $0x14,%esp
    2360:	68 8c 46 00 00       	push   $0x468c
    2365:	6a 01                	push   $0x1
    2367:	e8 b7 15 00 00       	call   0x3923
    236c:	c7 04 24 a8 46 00 00 	movl   $0x46a8,(%esp)
    2373:	e8 aa 14 00 00       	call   0x3822
    2378:	83 c4 08             	add    $0x8,%esp
    237b:	68 02 02 00 00       	push   $0x202
    2380:	68 a8 46 00 00       	push   $0x46a8
    2385:	e8 88 14 00 00       	call   0x3812
    238a:	83 c4 10             	add    $0x10,%esp
    238d:	85 c0                	test   %eax,%eax
    238f:	78 41                	js     0x23d2
    2391:	89 c6                	mov    %eax,%esi
    2393:	bb 00 00 00 00       	mov    $0x0,%ebx
    2398:	83 fb 13             	cmp    $0x13,%ebx
    239b:	7f 5d                	jg     0x23fa
    239d:	83 ec 04             	sub    $0x4,%esp
    23a0:	68 58 02 00 00       	push   $0x258
    23a5:	53                   	push   %ebx
    23a6:	68 00 84 00 00       	push   $0x8400
    23ab:	e8 d5 12 00 00       	call   0x3685
    23b0:	83 c4 0c             	add    $0xc,%esp
    23b3:	68 58 02 00 00       	push   $0x258
    23b8:	68 00 84 00 00       	push   $0x8400
    23bd:	56                   	push   %esi
    23be:	e8 2f 14 00 00       	call   0x37f2
    23c3:	83 c4 10             	add    $0x10,%esp
    23c6:	3d 58 02 00 00       	cmp    $0x258,%eax
    23cb:	75 19                	jne    0x23e6
    23cd:	83 c3 01             	add    $0x1,%ebx
    23d0:	eb c6                	jmp    0x2398
    23d2:	83 ec 08             	sub    $0x8,%esp
    23d5:	68 9a 46 00 00       	push   $0x469a
    23da:	6a 01                	push   $0x1
    23dc:	e8 42 15 00 00       	call   0x3923
    23e1:	e8 ec 13 00 00       	call   0x37d2
    23e6:	83 ec 08             	sub    $0x8,%esp
    23e9:	68 b0 46 00 00       	push   $0x46b0
    23ee:	6a 01                	push   $0x1
    23f0:	e8 2e 15 00 00       	call   0x3923
    23f5:	e8 d8 13 00 00       	call   0x37d2
    23fa:	83 ec 0c             	sub    $0xc,%esp
    23fd:	56                   	push   %esi
    23fe:	e8 f7 13 00 00       	call   0x37fa
    2403:	83 c4 08             	add    $0x8,%esp
    2406:	6a 00                	push   $0x0
    2408:	68 a8 46 00 00       	push   $0x46a8
    240d:	e8 00 14 00 00       	call   0x3812
    2412:	89 c7                	mov    %eax,%edi
    2414:	83 c4 10             	add    $0x10,%esp
    2417:	85 c0                	test   %eax,%eax
    2419:	78 53                	js     0x246e
    241b:	be 00 00 00 00       	mov    $0x0,%esi
    2420:	bb 00 00 00 00       	mov    $0x0,%ebx
    2425:	83 ec 04             	sub    $0x4,%esp
    2428:	68 2c 01 00 00       	push   $0x12c
    242d:	68 00 84 00 00       	push   $0x8400
    2432:	57                   	push   %edi
    2433:	e8 b2 13 00 00       	call   0x37ea
    2438:	83 c4 10             	add    $0x10,%esp
    243b:	85 c0                	test   %eax,%eax
    243d:	78 43                	js     0x2482
    243f:	74 7d                	je     0x24be
    2441:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2446:	75 4e                	jne    0x2496
    2448:	0f be 0d 00 84 00 00 	movsbl 0x8400,%ecx
    244f:	89 da                	mov    %ebx,%edx
    2451:	c1 ea 1f             	shr    $0x1f,%edx
    2454:	01 da                	add    %ebx,%edx
    2456:	d1 fa                	sar    %edx
    2458:	39 d1                	cmp    %edx,%ecx
    245a:	75 4e                	jne    0x24aa
    245c:	0f be 0d 2b 85 00 00 	movsbl 0x852b,%ecx
    2463:	39 ca                	cmp    %ecx,%edx
    2465:	75 43                	jne    0x24aa
    2467:	01 c6                	add    %eax,%esi
    2469:	83 c3 01             	add    $0x1,%ebx
    246c:	eb b7                	jmp    0x2425
    246e:	83 ec 08             	sub    $0x8,%esp
    2471:	68 c6 46 00 00       	push   $0x46c6
    2476:	6a 01                	push   $0x1
    2478:	e8 a6 14 00 00       	call   0x3923
    247d:	e8 50 13 00 00       	call   0x37d2
    2482:	83 ec 08             	sub    $0x8,%esp
    2485:	68 db 46 00 00       	push   $0x46db
    248a:	6a 01                	push   $0x1
    248c:	e8 92 14 00 00       	call   0x3923
    2491:	e8 3c 13 00 00       	call   0x37d2
    2496:	83 ec 08             	sub    $0x8,%esp
    2499:	68 f0 46 00 00       	push   $0x46f0
    249e:	6a 01                	push   $0x1
    24a0:	e8 7e 14 00 00       	call   0x3923
    24a5:	e8 28 13 00 00       	call   0x37d2
    24aa:	83 ec 08             	sub    $0x8,%esp
    24ad:	68 04 47 00 00       	push   $0x4704
    24b2:	6a 01                	push   $0x1
    24b4:	e8 6a 14 00 00       	call   0x3923
    24b9:	e8 14 13 00 00       	call   0x37d2
    24be:	83 ec 0c             	sub    $0xc,%esp
    24c1:	57                   	push   %edi
    24c2:	e8 33 13 00 00       	call   0x37fa
    24c7:	83 c4 10             	add    $0x10,%esp
    24ca:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    24d0:	75 27                	jne    0x24f9
    24d2:	83 ec 0c             	sub    $0xc,%esp
    24d5:	68 a8 46 00 00       	push   $0x46a8
    24da:	e8 43 13 00 00       	call   0x3822
    24df:	83 c4 08             	add    $0x8,%esp
    24e2:	68 37 47 00 00       	push   $0x4737
    24e7:	6a 01                	push   $0x1
    24e9:	e8 35 14 00 00       	call   0x3923
    24ee:	83 c4 10             	add    $0x10,%esp
    24f1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    24f4:	5b                   	pop    %ebx
    24f5:	5e                   	pop    %esi
    24f6:	5f                   	pop    %edi
    24f7:	5d                   	pop    %ebp
    24f8:	c3                   	ret    
    24f9:	83 ec 08             	sub    $0x8,%esp
    24fc:	68 1d 47 00 00       	push   $0x471d
    2501:	6a 01                	push   $0x1
    2503:	e8 1b 14 00 00       	call   0x3923
    2508:	e8 c5 12 00 00       	call   0x37d2
    250d:	f3 0f 1e fb          	endbr32 
    2511:	55                   	push   %ebp
    2512:	89 e5                	mov    %esp,%ebp
    2514:	83 ec 10             	sub    $0x10,%esp
    2517:	68 48 47 00 00       	push   $0x4748
    251c:	6a 01                	push   $0x1
    251e:	e8 00 14 00 00       	call   0x3923
    2523:	c7 04 24 83 47 00 00 	movl   $0x4783,(%esp)
    252a:	e8 0b 13 00 00       	call   0x383a
    252f:	83 c4 10             	add    $0x10,%esp
    2532:	85 c0                	test   %eax,%eax
    2534:	0f 85 9c 00 00 00    	jne    0x25d6
    253a:	83 ec 0c             	sub    $0xc,%esp
    253d:	68 40 4f 00 00       	push   $0x4f40
    2542:	e8 f3 12 00 00       	call   0x383a
    2547:	83 c4 10             	add    $0x10,%esp
    254a:	85 c0                	test   %eax,%eax
    254c:	0f 85 98 00 00 00    	jne    0x25ea
    2552:	83 ec 08             	sub    $0x8,%esp
    2555:	68 00 02 00 00       	push   $0x200
    255a:	68 90 4f 00 00       	push   $0x4f90
    255f:	e8 ae 12 00 00       	call   0x3812
    2564:	83 c4 10             	add    $0x10,%esp
    2567:	85 c0                	test   %eax,%eax
    2569:	0f 88 8f 00 00 00    	js     0x25fe
    256f:	83 ec 0c             	sub    $0xc,%esp
    2572:	50                   	push   %eax
    2573:	e8 82 12 00 00       	call   0x37fa
    2578:	83 c4 08             	add    $0x8,%esp
    257b:	6a 00                	push   $0x0
    257d:	68 00 50 00 00       	push   $0x5000
    2582:	e8 8b 12 00 00       	call   0x3812
    2587:	83 c4 10             	add    $0x10,%esp
    258a:	85 c0                	test   %eax,%eax
    258c:	0f 88 80 00 00 00    	js     0x2612
    2592:	83 ec 0c             	sub    $0xc,%esp
    2595:	50                   	push   %eax
    2596:	e8 5f 12 00 00       	call   0x37fa
    259b:	c7 04 24 74 47 00 00 	movl   $0x4774,(%esp)
    25a2:	e8 93 12 00 00       	call   0x383a
    25a7:	83 c4 10             	add    $0x10,%esp
    25aa:	85 c0                	test   %eax,%eax
    25ac:	74 78                	je     0x2626
    25ae:	83 ec 0c             	sub    $0xc,%esp
    25b1:	68 9c 50 00 00       	push   $0x509c
    25b6:	e8 7f 12 00 00       	call   0x383a
    25bb:	83 c4 10             	add    $0x10,%esp
    25be:	85 c0                	test   %eax,%eax
    25c0:	74 78                	je     0x263a
    25c2:	83 ec 08             	sub    $0x8,%esp
    25c5:	68 92 47 00 00       	push   $0x4792
    25ca:	6a 01                	push   $0x1
    25cc:	e8 52 13 00 00       	call   0x3923
    25d1:	83 c4 10             	add    $0x10,%esp
    25d4:	c9                   	leave  
    25d5:	c3                   	ret    
    25d6:	83 ec 08             	sub    $0x8,%esp
    25d9:	68 57 47 00 00       	push   $0x4757
    25de:	6a 01                	push   $0x1
    25e0:	e8 3e 13 00 00       	call   0x3923
    25e5:	e8 e8 11 00 00       	call   0x37d2
    25ea:	83 ec 08             	sub    $0x8,%esp
    25ed:	68 60 4f 00 00       	push   $0x4f60
    25f2:	6a 01                	push   $0x1
    25f4:	e8 2a 13 00 00       	call   0x3923
    25f9:	e8 d4 11 00 00       	call   0x37d2
    25fe:	83 ec 08             	sub    $0x8,%esp
    2601:	68 c0 4f 00 00       	push   $0x4fc0
    2606:	6a 01                	push   $0x1
    2608:	e8 16 13 00 00       	call   0x3923
    260d:	e8 c0 11 00 00       	call   0x37d2
    2612:	83 ec 08             	sub    $0x8,%esp
    2615:	68 30 50 00 00       	push   $0x5030
    261a:	6a 01                	push   $0x1
    261c:	e8 02 13 00 00       	call   0x3923
    2621:	e8 ac 11 00 00       	call   0x37d2
    2626:	83 ec 08             	sub    $0x8,%esp
    2629:	68 6c 50 00 00       	push   $0x506c
    262e:	6a 01                	push   $0x1
    2630:	e8 ee 12 00 00       	call   0x3923
    2635:	e8 98 11 00 00       	call   0x37d2
    263a:	83 ec 08             	sub    $0x8,%esp
    263d:	68 bc 50 00 00       	push   $0x50bc
    2642:	6a 01                	push   $0x1
    2644:	e8 da 12 00 00       	call   0x3923
    2649:	e8 84 11 00 00       	call   0x37d2
    264e:	f3 0f 1e fb          	endbr32 
    2652:	55                   	push   %ebp
    2653:	89 e5                	mov    %esp,%ebp
    2655:	83 ec 10             	sub    $0x10,%esp
    2658:	68 9f 47 00 00       	push   $0x479f
    265d:	6a 01                	push   $0x1
    265f:	e8 bf 12 00 00       	call   0x3923
    2664:	c7 04 24 ab 47 00 00 	movl   $0x47ab,(%esp)
    266b:	e8 ca 11 00 00       	call   0x383a
    2670:	83 c4 10             	add    $0x10,%esp
    2673:	85 c0                	test   %eax,%eax
    2675:	0f 85 bc 00 00 00    	jne    0x2737
    267b:	83 ec 0c             	sub    $0xc,%esp
    267e:	68 ab 47 00 00       	push   $0x47ab
    2683:	e8 ba 11 00 00       	call   0x3842
    2688:	83 c4 10             	add    $0x10,%esp
    268b:	85 c0                	test   %eax,%eax
    268d:	0f 85 b8 00 00 00    	jne    0x274b
    2693:	83 ec 0c             	sub    $0xc,%esp
    2696:	68 56 44 00 00       	push   $0x4456
    269b:	e8 82 11 00 00       	call   0x3822
    26a0:	83 c4 10             	add    $0x10,%esp
    26a3:	85 c0                	test   %eax,%eax
    26a5:	0f 84 b4 00 00 00    	je     0x275f
    26ab:	83 ec 0c             	sub    $0xc,%esp
    26ae:	68 55 44 00 00       	push   $0x4455
    26b3:	e8 6a 11 00 00       	call   0x3822
    26b8:	83 c4 10             	add    $0x10,%esp
    26bb:	85 c0                	test   %eax,%eax
    26bd:	0f 84 b0 00 00 00    	je     0x2773
    26c3:	83 ec 0c             	sub    $0xc,%esp
    26c6:	68 29 3c 00 00       	push   $0x3c29
    26cb:	e8 72 11 00 00       	call   0x3842
    26d0:	83 c4 10             	add    $0x10,%esp
    26d3:	85 c0                	test   %eax,%eax
    26d5:	0f 85 ac 00 00 00    	jne    0x2787
    26db:	83 ec 0c             	sub    $0xc,%esp
    26de:	68 f3 47 00 00       	push   $0x47f3
    26e3:	e8 3a 11 00 00       	call   0x3822
    26e8:	83 c4 10             	add    $0x10,%esp
    26eb:	85 c0                	test   %eax,%eax
    26ed:	0f 84 a8 00 00 00    	je     0x279b
    26f3:	83 ec 0c             	sub    $0xc,%esp
    26f6:	68 11 48 00 00       	push   $0x4811
    26fb:	e8 22 11 00 00       	call   0x3822
    2700:	83 c4 10             	add    $0x10,%esp
    2703:	85 c0                	test   %eax,%eax
    2705:	0f 84 a4 00 00 00    	je     0x27af
    270b:	83 ec 0c             	sub    $0xc,%esp
    270e:	68 ab 47 00 00       	push   $0x47ab
    2713:	e8 0a 11 00 00       	call   0x3822
    2718:	83 c4 10             	add    $0x10,%esp
    271b:	85 c0                	test   %eax,%eax
    271d:	0f 85 a0 00 00 00    	jne    0x27c3
    2723:	83 ec 08             	sub    $0x8,%esp
    2726:	68 46 48 00 00       	push   $0x4846
    272b:	6a 01                	push   $0x1
    272d:	e8 f1 11 00 00       	call   0x3923
    2732:	83 c4 10             	add    $0x10,%esp
    2735:	c9                   	leave  
    2736:	c3                   	ret    
    2737:	83 ec 08             	sub    $0x8,%esp
    273a:	68 b0 47 00 00       	push   $0x47b0
    273f:	6a 01                	push   $0x1
    2741:	e8 dd 11 00 00       	call   0x3923
    2746:	e8 87 10 00 00       	call   0x37d2
    274b:	83 ec 08             	sub    $0x8,%esp
    274e:	68 c3 47 00 00       	push   $0x47c3
    2753:	6a 01                	push   $0x1
    2755:	e8 c9 11 00 00       	call   0x3923
    275a:	e8 73 10 00 00       	call   0x37d2
    275f:	83 ec 08             	sub    $0x8,%esp
    2762:	68 d6 47 00 00       	push   $0x47d6
    2767:	6a 01                	push   $0x1
    2769:	e8 b5 11 00 00       	call   0x3923
    276e:	e8 5f 10 00 00       	call   0x37d2
    2773:	83 ec 08             	sub    $0x8,%esp
    2776:	68 e4 47 00 00       	push   $0x47e4
    277b:	6a 01                	push   $0x1
    277d:	e8 a1 11 00 00       	call   0x3923
    2782:	e8 4b 10 00 00       	call   0x37d2
    2787:	83 ec 08             	sub    $0x8,%esp
    278a:	68 2b 3c 00 00       	push   $0x3c2b
    278f:	6a 01                	push   $0x1
    2791:	e8 8d 11 00 00       	call   0x3923
    2796:	e8 37 10 00 00       	call   0x37d2
    279b:	83 ec 08             	sub    $0x8,%esp
    279e:	68 fa 47 00 00       	push   $0x47fa
    27a3:	6a 01                	push   $0x1
    27a5:	e8 79 11 00 00       	call   0x3923
    27aa:	e8 23 10 00 00       	call   0x37d2
    27af:	83 ec 08             	sub    $0x8,%esp
    27b2:	68 19 48 00 00       	push   $0x4819
    27b7:	6a 01                	push   $0x1
    27b9:	e8 65 11 00 00       	call   0x3923
    27be:	e8 0f 10 00 00       	call   0x37d2
    27c3:	83 ec 08             	sub    $0x8,%esp
    27c6:	68 31 48 00 00       	push   $0x4831
    27cb:	6a 01                	push   $0x1
    27cd:	e8 51 11 00 00       	call   0x3923
    27d2:	e8 fb 0f 00 00       	call   0x37d2
    27d7:	f3 0f 1e fb          	endbr32 
    27db:	55                   	push   %ebp
    27dc:	89 e5                	mov    %esp,%ebp
    27de:	53                   	push   %ebx
    27df:	83 ec 0c             	sub    $0xc,%esp
    27e2:	68 50 48 00 00       	push   $0x4850
    27e7:	6a 01                	push   $0x1
    27e9:	e8 35 11 00 00       	call   0x3923
    27ee:	83 c4 08             	add    $0x8,%esp
    27f1:	68 00 02 00 00       	push   $0x200
    27f6:	68 5d 48 00 00       	push   $0x485d
    27fb:	e8 12 10 00 00       	call   0x3812
    2800:	83 c4 10             	add    $0x10,%esp
    2803:	85 c0                	test   %eax,%eax
    2805:	0f 88 22 01 00 00    	js     0x292d
    280b:	83 ec 0c             	sub    $0xc,%esp
    280e:	50                   	push   %eax
    280f:	e8 e6 0f 00 00       	call   0x37fa
    2814:	c7 04 24 5d 48 00 00 	movl   $0x485d,(%esp)
    281b:	e8 22 10 00 00       	call   0x3842
    2820:	83 c4 10             	add    $0x10,%esp
    2823:	85 c0                	test   %eax,%eax
    2825:	0f 84 16 01 00 00    	je     0x2941
    282b:	83 ec 08             	sub    $0x8,%esp
    282e:	6a 00                	push   $0x0
    2830:	68 96 48 00 00       	push   $0x4896
    2835:	e8 d8 0f 00 00       	call   0x3812
    283a:	83 c4 10             	add    $0x10,%esp
    283d:	85 c0                	test   %eax,%eax
    283f:	0f 89 10 01 00 00    	jns    0x2955
    2845:	83 ec 08             	sub    $0x8,%esp
    2848:	68 00 02 00 00       	push   $0x200
    284d:	68 96 48 00 00       	push   $0x4896
    2852:	e8 bb 0f 00 00       	call   0x3812
    2857:	83 c4 10             	add    $0x10,%esp
    285a:	85 c0                	test   %eax,%eax
    285c:	0f 89 07 01 00 00    	jns    0x2969
    2862:	83 ec 0c             	sub    $0xc,%esp
    2865:	68 96 48 00 00       	push   $0x4896
    286a:	e8 cb 0f 00 00       	call   0x383a
    286f:	83 c4 10             	add    $0x10,%esp
    2872:	85 c0                	test   %eax,%eax
    2874:	0f 84 03 01 00 00    	je     0x297d
    287a:	83 ec 0c             	sub    $0xc,%esp
    287d:	68 96 48 00 00       	push   $0x4896
    2882:	e8 9b 0f 00 00       	call   0x3822
    2887:	83 c4 10             	add    $0x10,%esp
    288a:	85 c0                	test   %eax,%eax
    288c:	0f 84 ff 00 00 00    	je     0x2991
    2892:	83 ec 08             	sub    $0x8,%esp
    2895:	68 96 48 00 00       	push   $0x4896
    289a:	68 fa 48 00 00       	push   $0x48fa
    289f:	e8 8e 0f 00 00       	call   0x3832
    28a4:	83 c4 10             	add    $0x10,%esp
    28a7:	85 c0                	test   %eax,%eax
    28a9:	0f 84 f6 00 00 00    	je     0x29a5
    28af:	83 ec 0c             	sub    $0xc,%esp
    28b2:	68 5d 48 00 00       	push   $0x485d
    28b7:	e8 66 0f 00 00       	call   0x3822
    28bc:	83 c4 10             	add    $0x10,%esp
    28bf:	85 c0                	test   %eax,%eax
    28c1:	0f 85 f2 00 00 00    	jne    0x29b9
    28c7:	83 ec 08             	sub    $0x8,%esp
    28ca:	6a 02                	push   $0x2
    28cc:	68 56 44 00 00       	push   $0x4456
    28d1:	e8 3c 0f 00 00       	call   0x3812
    28d6:	83 c4 10             	add    $0x10,%esp
    28d9:	85 c0                	test   %eax,%eax
    28db:	0f 89 ec 00 00 00    	jns    0x29cd
    28e1:	83 ec 08             	sub    $0x8,%esp
    28e4:	6a 00                	push   $0x0
    28e6:	68 56 44 00 00       	push   $0x4456
    28eb:	e8 22 0f 00 00       	call   0x3812
    28f0:	89 c3                	mov    %eax,%ebx
    28f2:	83 c4 0c             	add    $0xc,%esp
    28f5:	6a 01                	push   $0x1
    28f7:	68 39 45 00 00       	push   $0x4539
    28fc:	50                   	push   %eax
    28fd:	e8 f0 0e 00 00       	call   0x37f2
    2902:	83 c4 10             	add    $0x10,%esp
    2905:	85 c0                	test   %eax,%eax
    2907:	0f 8f d4 00 00 00    	jg     0x29e1
    290d:	83 ec 0c             	sub    $0xc,%esp
    2910:	53                   	push   %ebx
    2911:	e8 e4 0e 00 00       	call   0x37fa
    2916:	83 c4 08             	add    $0x8,%esp
    2919:	68 2d 49 00 00       	push   $0x492d
    291e:	6a 01                	push   $0x1
    2920:	e8 fe 0f 00 00       	call   0x3923
    2925:	83 c4 10             	add    $0x10,%esp
    2928:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    292b:	c9                   	leave  
    292c:	c3                   	ret    
    292d:	83 ec 08             	sub    $0x8,%esp
    2930:	68 65 48 00 00       	push   $0x4865
    2935:	6a 01                	push   $0x1
    2937:	e8 e7 0f 00 00       	call   0x3923
    293c:	e8 91 0e 00 00       	call   0x37d2
    2941:	83 ec 08             	sub    $0x8,%esp
    2944:	68 7c 48 00 00       	push   $0x487c
    2949:	6a 01                	push   $0x1
    294b:	e8 d3 0f 00 00       	call   0x3923
    2950:	e8 7d 0e 00 00       	call   0x37d2
    2955:	83 ec 08             	sub    $0x8,%esp
    2958:	68 a1 48 00 00       	push   $0x48a1
    295d:	6a 01                	push   $0x1
    295f:	e8 bf 0f 00 00       	call   0x3923
    2964:	e8 69 0e 00 00       	call   0x37d2
    2969:	83 ec 08             	sub    $0x8,%esp
    296c:	68 a1 48 00 00       	push   $0x48a1
    2971:	6a 01                	push   $0x1
    2973:	e8 ab 0f 00 00       	call   0x3923
    2978:	e8 55 0e 00 00       	call   0x37d2
    297d:	83 ec 08             	sub    $0x8,%esp
    2980:	68 bf 48 00 00       	push   $0x48bf
    2985:	6a 01                	push   $0x1
    2987:	e8 97 0f 00 00       	call   0x3923
    298c:	e8 41 0e 00 00       	call   0x37d2
    2991:	83 ec 08             	sub    $0x8,%esp
    2994:	68 dc 48 00 00       	push   $0x48dc
    2999:	6a 01                	push   $0x1
    299b:	e8 83 0f 00 00       	call   0x3923
    29a0:	e8 2d 0e 00 00       	call   0x37d2
    29a5:	83 ec 08             	sub    $0x8,%esp
    29a8:	68 f0 50 00 00       	push   $0x50f0
    29ad:	6a 01                	push   $0x1
    29af:	e8 6f 0f 00 00       	call   0x3923
    29b4:	e8 19 0e 00 00       	call   0x37d2
    29b9:	83 ec 08             	sub    $0x8,%esp
    29bc:	68 01 49 00 00       	push   $0x4901
    29c1:	6a 01                	push   $0x1
    29c3:	e8 5b 0f 00 00       	call   0x3923
    29c8:	e8 05 0e 00 00       	call   0x37d2
    29cd:	83 ec 08             	sub    $0x8,%esp
    29d0:	68 10 51 00 00       	push   $0x5110
    29d5:	6a 01                	push   $0x1
    29d7:	e8 47 0f 00 00       	call   0x3923
    29dc:	e8 f1 0d 00 00       	call   0x37d2
    29e1:	83 ec 08             	sub    $0x8,%esp
    29e4:	68 19 49 00 00       	push   $0x4919
    29e9:	6a 01                	push   $0x1
    29eb:	e8 33 0f 00 00       	call   0x3923
    29f0:	e8 dd 0d 00 00       	call   0x37d2
    29f5:	f3 0f 1e fb          	endbr32 
    29f9:	55                   	push   %ebp
    29fa:	89 e5                	mov    %esp,%ebp
    29fc:	53                   	push   %ebx
    29fd:	83 ec 0c             	sub    $0xc,%esp
    2a00:	68 3d 49 00 00       	push   $0x493d
    2a05:	6a 01                	push   $0x1
    2a07:	e8 17 0f 00 00       	call   0x3923
    2a0c:	83 c4 10             	add    $0x10,%esp
    2a0f:	bb 00 00 00 00       	mov    $0x0,%ebx
    2a14:	eb 4c                	jmp    0x2a62
    2a16:	83 ec 08             	sub    $0x8,%esp
    2a19:	68 54 49 00 00       	push   $0x4954
    2a1e:	6a 01                	push   $0x1
    2a20:	e8 fe 0e 00 00       	call   0x3923
    2a25:	e8 a8 0d 00 00       	call   0x37d2
    2a2a:	83 ec 08             	sub    $0x8,%esp
    2a2d:	68 68 49 00 00       	push   $0x4968
    2a32:	6a 01                	push   $0x1
    2a34:	e8 ea 0e 00 00       	call   0x3923
    2a39:	e8 94 0d 00 00       	call   0x37d2
    2a3e:	83 ec 0c             	sub    $0xc,%esp
    2a41:	50                   	push   %eax
    2a42:	e8 b3 0d 00 00       	call   0x37fa
    2a47:	83 c4 10             	add    $0x10,%esp
    2a4a:	e9 80 00 00 00       	jmp    0x2acf
    2a4f:	83 ec 0c             	sub    $0xc,%esp
    2a52:	68 38 45 00 00       	push   $0x4538
    2a57:	e8 c6 0d 00 00       	call   0x3822
    2a5c:	83 c3 01             	add    $0x1,%ebx
    2a5f:	83 c4 10             	add    $0x10,%esp
    2a62:	83 fb 32             	cmp    $0x32,%ebx
    2a65:	0f 8f 92 00 00 00    	jg     0x2afd
    2a6b:	83 ec 0c             	sub    $0xc,%esp
    2a6e:	68 4e 49 00 00       	push   $0x494e
    2a73:	e8 c2 0d 00 00       	call   0x383a
    2a78:	83 c4 10             	add    $0x10,%esp
    2a7b:	85 c0                	test   %eax,%eax
    2a7d:	75 97                	jne    0x2a16
    2a7f:	83 ec 0c             	sub    $0xc,%esp
    2a82:	68 4e 49 00 00       	push   $0x494e
    2a87:	e8 b6 0d 00 00       	call   0x3842
    2a8c:	83 c4 10             	add    $0x10,%esp
    2a8f:	85 c0                	test   %eax,%eax
    2a91:	75 97                	jne    0x2a2a
    2a93:	83 ec 0c             	sub    $0xc,%esp
    2a96:	68 03 40 00 00       	push   $0x4003
    2a9b:	e8 9a 0d 00 00       	call   0x383a
    2aa0:	83 c4 08             	add    $0x8,%esp
    2aa3:	68 03 40 00 00       	push   $0x4003
    2aa8:	68 fa 48 00 00       	push   $0x48fa
    2aad:	e8 80 0d 00 00       	call   0x3832
    2ab2:	83 c4 08             	add    $0x8,%esp
    2ab5:	68 00 02 00 00       	push   $0x200
    2aba:	68 03 40 00 00       	push   $0x4003
    2abf:	e8 4e 0d 00 00       	call   0x3812
    2ac4:	83 c4 10             	add    $0x10,%esp
    2ac7:	85 c0                	test   %eax,%eax
    2ac9:	0f 89 6f ff ff ff    	jns    0x2a3e
    2acf:	83 ec 08             	sub    $0x8,%esp
    2ad2:	68 00 02 00 00       	push   $0x200
    2ad7:	68 38 45 00 00       	push   $0x4538
    2adc:	e8 31 0d 00 00       	call   0x3812
    2ae1:	83 c4 10             	add    $0x10,%esp
    2ae4:	85 c0                	test   %eax,%eax
    2ae6:	0f 88 63 ff ff ff    	js     0x2a4f
    2aec:	83 ec 0c             	sub    $0xc,%esp
    2aef:	50                   	push   %eax
    2af0:	e8 05 0d 00 00       	call   0x37fa
    2af5:	83 c4 10             	add    $0x10,%esp
    2af8:	e9 52 ff ff ff       	jmp    0x2a4f
    2afd:	83 ec 0c             	sub    $0xc,%esp
    2b00:	68 29 3c 00 00       	push   $0x3c29
    2b05:	e8 38 0d 00 00       	call   0x3842
    2b0a:	83 c4 08             	add    $0x8,%esp
    2b0d:	68 7c 49 00 00       	push   $0x497c
    2b12:	6a 01                	push   $0x1
    2b14:	e8 0a 0e 00 00       	call   0x3923
    2b19:	83 c4 10             	add    $0x10,%esp
    2b1c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2b1f:	c9                   	leave  
    2b20:	c3                   	ret    
    2b21:	f3 0f 1e fb          	endbr32 
    2b25:	55                   	push   %ebp
    2b26:	89 e5                	mov    %esp,%ebp
    2b28:	53                   	push   %ebx
    2b29:	83 ec 0c             	sub    $0xc,%esp
    2b2c:	68 90 49 00 00       	push   $0x4990
    2b31:	6a 01                	push   $0x1
    2b33:	e8 eb 0d 00 00       	call   0x3923
    2b38:	83 c4 10             	add    $0x10,%esp
    2b3b:	bb 00 00 00 00       	mov    $0x0,%ebx
    2b40:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
    2b46:	7f 15                	jg     0x2b5d
    2b48:	e8 7d 0c 00 00       	call   0x37ca
    2b4d:	85 c0                	test   %eax,%eax
    2b4f:	78 0c                	js     0x2b5d
    2b51:	74 05                	je     0x2b58
    2b53:	83 c3 01             	add    $0x1,%ebx
    2b56:	eb e8                	jmp    0x2b40
    2b58:	e8 75 0c 00 00       	call   0x37d2
    2b5d:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2b63:	74 12                	je     0x2b77
    2b65:	85 db                	test   %ebx,%ebx
    2b67:	7e 36                	jle    0x2b9f
    2b69:	e8 6c 0c 00 00       	call   0x37da
    2b6e:	85 c0                	test   %eax,%eax
    2b70:	78 19                	js     0x2b8b
    2b72:	83 eb 01             	sub    $0x1,%ebx
    2b75:	eb ee                	jmp    0x2b65
    2b77:	83 ec 08             	sub    $0x8,%esp
    2b7a:	68 30 51 00 00       	push   $0x5130
    2b7f:	6a 01                	push   $0x1
    2b81:	e8 9d 0d 00 00       	call   0x3923
    2b86:	e8 47 0c 00 00       	call   0x37d2
    2b8b:	83 ec 08             	sub    $0x8,%esp
    2b8e:	68 9b 49 00 00       	push   $0x499b
    2b93:	6a 01                	push   $0x1
    2b95:	e8 89 0d 00 00       	call   0x3923
    2b9a:	e8 33 0c 00 00       	call   0x37d2
    2b9f:	e8 36 0c 00 00       	call   0x37da
    2ba4:	83 f8 ff             	cmp    $0xffffffff,%eax
    2ba7:	75 17                	jne    0x2bc0
    2ba9:	83 ec 08             	sub    $0x8,%esp
    2bac:	68 c2 49 00 00       	push   $0x49c2
    2bb1:	6a 01                	push   $0x1
    2bb3:	e8 6b 0d 00 00       	call   0x3923
    2bb8:	83 c4 10             	add    $0x10,%esp
    2bbb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2bbe:	c9                   	leave  
    2bbf:	c3                   	ret    
    2bc0:	83 ec 08             	sub    $0x8,%esp
    2bc3:	68 af 49 00 00       	push   $0x49af
    2bc8:	6a 01                	push   $0x1
    2bca:	e8 54 0d 00 00       	call   0x3923
    2bcf:	e8 fe 0b 00 00       	call   0x37d2
    2bd4:	f3 0f 1e fb          	endbr32 
    2bd8:	55                   	push   %ebp
    2bd9:	89 e5                	mov    %esp,%ebp
    2bdb:	57                   	push   %edi
    2bdc:	56                   	push   %esi
    2bdd:	53                   	push   %ebx
    2bde:	83 ec 54             	sub    $0x54,%esp
    2be1:	68 d0 49 00 00       	push   $0x49d0
    2be6:	ff 35 10 5c 00 00    	pushl  0x5c10
    2bec:	e8 32 0d 00 00       	call   0x3923
    2bf1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bf8:	e8 5d 0c 00 00       	call   0x385a
    2bfd:	89 c7                	mov    %eax,%edi
    2bff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c06:	e8 4f 0c 00 00       	call   0x385a
    2c0b:	89 c6                	mov    %eax,%esi
    2c0d:	83 c4 10             	add    $0x10,%esp
    2c10:	bb 00 00 00 00       	mov    $0x0,%ebx
    2c15:	81 fb 87 13 00 00    	cmp    $0x1387,%ebx
    2c1b:	7f 3a                	jg     0x2c57
    2c1d:	83 ec 0c             	sub    $0xc,%esp
    2c20:	6a 01                	push   $0x1
    2c22:	e8 33 0c 00 00       	call   0x385a
    2c27:	83 c4 10             	add    $0x10,%esp
    2c2a:	39 c6                	cmp    %eax,%esi
    2c2c:	75 0b                	jne    0x2c39
    2c2e:	c6 00 01             	movb   $0x1,(%eax)
    2c31:	8d 70 01             	lea    0x1(%eax),%esi
    2c34:	83 c3 01             	add    $0x1,%ebx
    2c37:	eb dc                	jmp    0x2c15
    2c39:	83 ec 0c             	sub    $0xc,%esp
    2c3c:	50                   	push   %eax
    2c3d:	56                   	push   %esi
    2c3e:	53                   	push   %ebx
    2c3f:	68 db 49 00 00       	push   $0x49db
    2c44:	ff 35 10 5c 00 00    	pushl  0x5c10
    2c4a:	e8 d4 0c 00 00       	call   0x3923
    2c4f:	83 c4 20             	add    $0x20,%esp
    2c52:	e8 7b 0b 00 00       	call   0x37d2
    2c57:	e8 6e 0b 00 00       	call   0x37ca
    2c5c:	89 c3                	mov    %eax,%ebx
    2c5e:	85 c0                	test   %eax,%eax
    2c60:	0f 88 51 01 00 00    	js     0x2db7
    2c66:	83 ec 0c             	sub    $0xc,%esp
    2c69:	6a 01                	push   $0x1
    2c6b:	e8 ea 0b 00 00       	call   0x385a
    2c70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c77:	e8 de 0b 00 00       	call   0x385a
    2c7c:	83 c6 01             	add    $0x1,%esi
    2c7f:	83 c4 10             	add    $0x10,%esp
    2c82:	39 c6                	cmp    %eax,%esi
    2c84:	0f 85 45 01 00 00    	jne    0x2dcf
    2c8a:	85 db                	test   %ebx,%ebx
    2c8c:	0f 84 55 01 00 00    	je     0x2de7
    2c92:	e8 43 0b 00 00       	call   0x37da
    2c97:	83 ec 0c             	sub    $0xc,%esp
    2c9a:	6a 00                	push   $0x0
    2c9c:	e8 b9 0b 00 00       	call   0x385a
    2ca1:	89 c3                	mov    %eax,%ebx
    2ca3:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2ca8:	29 d8                	sub    %ebx,%eax
    2caa:	89 04 24             	mov    %eax,(%esp)
    2cad:	e8 a8 0b 00 00       	call   0x385a
    2cb2:	83 c4 10             	add    $0x10,%esp
    2cb5:	39 c3                	cmp    %eax,%ebx
    2cb7:	0f 85 2f 01 00 00    	jne    0x2dec
    2cbd:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
    2cc4:	83 ec 0c             	sub    $0xc,%esp
    2cc7:	6a 00                	push   $0x0
    2cc9:	e8 8c 0b 00 00       	call   0x385a
    2cce:	89 c3                	mov    %eax,%ebx
    2cd0:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
    2cd7:	e8 7e 0b 00 00       	call   0x385a
    2cdc:	83 c4 10             	add    $0x10,%esp
    2cdf:	83 f8 ff             	cmp    $0xffffffff,%eax
    2ce2:	0f 84 1c 01 00 00    	je     0x2e04
    2ce8:	83 ec 0c             	sub    $0xc,%esp
    2ceb:	6a 00                	push   $0x0
    2ced:	e8 68 0b 00 00       	call   0x385a
    2cf2:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2cf8:	83 c4 10             	add    $0x10,%esp
    2cfb:	39 c2                	cmp    %eax,%edx
    2cfd:	0f 85 19 01 00 00    	jne    0x2e1c
    2d03:	83 ec 0c             	sub    $0xc,%esp
    2d06:	6a 00                	push   $0x0
    2d08:	e8 4d 0b 00 00       	call   0x385a
    2d0d:	89 c3                	mov    %eax,%ebx
    2d0f:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    2d16:	e8 3f 0b 00 00       	call   0x385a
    2d1b:	89 c6                	mov    %eax,%esi
    2d1d:	83 c4 10             	add    $0x10,%esp
    2d20:	39 c3                	cmp    %eax,%ebx
    2d22:	0f 85 0b 01 00 00    	jne    0x2e33
    2d28:	83 ec 0c             	sub    $0xc,%esp
    2d2b:	6a 00                	push   $0x0
    2d2d:	e8 28 0b 00 00       	call   0x385a
    2d32:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    2d38:	83 c4 10             	add    $0x10,%esp
    2d3b:	39 c2                	cmp    %eax,%edx
    2d3d:	0f 85 f0 00 00 00    	jne    0x2e33
    2d43:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2d4a:	0f 84 fa 00 00 00    	je     0x2e4a
    2d50:	83 ec 0c             	sub    $0xc,%esp
    2d53:	6a 00                	push   $0x0
    2d55:	e8 00 0b 00 00       	call   0x385a
    2d5a:	89 c3                	mov    %eax,%ebx
    2d5c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d63:	e8 f2 0a 00 00       	call   0x385a
    2d68:	89 f9                	mov    %edi,%ecx
    2d6a:	29 c1                	sub    %eax,%ecx
    2d6c:	89 0c 24             	mov    %ecx,(%esp)
    2d6f:	e8 e6 0a 00 00       	call   0x385a
    2d74:	83 c4 10             	add    $0x10,%esp
    2d77:	39 c3                	cmp    %eax,%ebx
    2d79:	0f 85 e3 00 00 00    	jne    0x2e62
    2d7f:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    2d84:	81 fb 7f 84 1e 80    	cmp    $0x801e847f,%ebx
    2d8a:	0f 87 23 01 00 00    	ja     0x2eb3
    2d90:	e8 bd 0a 00 00       	call   0x3852
    2d95:	89 c6                	mov    %eax,%esi
    2d97:	e8 2e 0a 00 00       	call   0x37ca
    2d9c:	85 c0                	test   %eax,%eax
    2d9e:	0f 88 d5 00 00 00    	js     0x2e79
    2da4:	0f 84 e7 00 00 00    	je     0x2e91
    2daa:	e8 2b 0a 00 00       	call   0x37da
    2daf:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    2db5:	eb cd                	jmp    0x2d84
    2db7:	83 ec 08             	sub    $0x8,%esp
    2dba:	68 f6 49 00 00       	push   $0x49f6
    2dbf:	ff 35 10 5c 00 00    	pushl  0x5c10
    2dc5:	e8 59 0b 00 00       	call   0x3923
    2dca:	e8 03 0a 00 00       	call   0x37d2
    2dcf:	83 ec 08             	sub    $0x8,%esp
    2dd2:	68 0d 4a 00 00       	push   $0x4a0d
    2dd7:	ff 35 10 5c 00 00    	pushl  0x5c10
    2ddd:	e8 41 0b 00 00       	call   0x3923
    2de2:	e8 eb 09 00 00       	call   0x37d2
    2de7:	e8 e6 09 00 00       	call   0x37d2
    2dec:	83 ec 08             	sub    $0x8,%esp
    2def:	68 54 51 00 00       	push   $0x5154
    2df4:	ff 35 10 5c 00 00    	pushl  0x5c10
    2dfa:	e8 24 0b 00 00       	call   0x3923
    2dff:	e8 ce 09 00 00       	call   0x37d2
    2e04:	83 ec 08             	sub    $0x8,%esp
    2e07:	68 29 4a 00 00       	push   $0x4a29
    2e0c:	ff 35 10 5c 00 00    	pushl  0x5c10
    2e12:	e8 0c 0b 00 00       	call   0x3923
    2e17:	e8 b6 09 00 00       	call   0x37d2
    2e1c:	50                   	push   %eax
    2e1d:	53                   	push   %ebx
    2e1e:	68 94 51 00 00       	push   $0x5194
    2e23:	ff 35 10 5c 00 00    	pushl  0x5c10
    2e29:	e8 f5 0a 00 00       	call   0x3923
    2e2e:	e8 9f 09 00 00       	call   0x37d2
    2e33:	56                   	push   %esi
    2e34:	53                   	push   %ebx
    2e35:	68 cc 51 00 00       	push   $0x51cc
    2e3a:	ff 35 10 5c 00 00    	pushl  0x5c10
    2e40:	e8 de 0a 00 00       	call   0x3923
    2e45:	e8 88 09 00 00       	call   0x37d2
    2e4a:	83 ec 08             	sub    $0x8,%esp
    2e4d:	68 f4 51 00 00       	push   $0x51f4
    2e52:	ff 35 10 5c 00 00    	pushl  0x5c10
    2e58:	e8 c6 0a 00 00       	call   0x3923
    2e5d:	e8 70 09 00 00       	call   0x37d2
    2e62:	50                   	push   %eax
    2e63:	53                   	push   %ebx
    2e64:	68 24 52 00 00       	push   $0x5224
    2e69:	ff 35 10 5c 00 00    	pushl  0x5c10
    2e6f:	e8 af 0a 00 00       	call   0x3923
    2e74:	e8 59 09 00 00       	call   0x37d2
    2e79:	83 ec 08             	sub    $0x8,%esp
    2e7c:	68 21 4b 00 00       	push   $0x4b21
    2e81:	ff 35 10 5c 00 00    	pushl  0x5c10
    2e87:	e8 97 0a 00 00       	call   0x3923
    2e8c:	e8 41 09 00 00       	call   0x37d2
    2e91:	0f be 03             	movsbl (%ebx),%eax
    2e94:	50                   	push   %eax
    2e95:	53                   	push   %ebx
    2e96:	68 44 4a 00 00       	push   $0x4a44
    2e9b:	ff 35 10 5c 00 00    	pushl  0x5c10
    2ea1:	e8 7d 0a 00 00       	call   0x3923
    2ea6:	89 34 24             	mov    %esi,(%esp)
    2ea9:	e8 54 09 00 00       	call   0x3802
    2eae:	e8 1f 09 00 00       	call   0x37d2
    2eb3:	83 ec 0c             	sub    $0xc,%esp
    2eb6:	8d 45 e0             	lea    -0x20(%ebp),%eax
    2eb9:	50                   	push   %eax
    2eba:	e8 23 09 00 00       	call   0x37e2
    2ebf:	89 c3                	mov    %eax,%ebx
    2ec1:	83 c4 10             	add    $0x10,%esp
    2ec4:	85 c0                	test   %eax,%eax
    2ec6:	75 04                	jne    0x2ecc
    2ec8:	89 c6                	mov    %eax,%esi
    2eca:	eb 59                	jmp    0x2f25
    2ecc:	83 ec 08             	sub    $0x8,%esp
    2ecf:	68 19 3f 00 00       	push   $0x3f19
    2ed4:	6a 01                	push   $0x1
    2ed6:	e8 48 0a 00 00       	call   0x3923
    2edb:	e8 f2 08 00 00       	call   0x37d2
    2ee0:	83 ec 0c             	sub    $0xc,%esp
    2ee3:	6a 00                	push   $0x0
    2ee5:	e8 70 09 00 00       	call   0x385a
    2eea:	89 c2                	mov    %eax,%edx
    2eec:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2ef1:	29 d0                	sub    %edx,%eax
    2ef3:	89 04 24             	mov    %eax,(%esp)
    2ef6:	e8 5f 09 00 00       	call   0x385a
    2efb:	83 c4 0c             	add    $0xc,%esp
    2efe:	6a 01                	push   $0x1
    2f00:	68 39 45 00 00       	push   $0x4539
    2f05:	ff 75 e4             	pushl  -0x1c(%ebp)
    2f08:	e8 e5 08 00 00       	call   0x37f2
    2f0d:	83 c4 10             	add    $0x10,%esp
    2f10:	83 ec 0c             	sub    $0xc,%esp
    2f13:	68 e8 03 00 00       	push   $0x3e8
    2f18:	e8 45 09 00 00       	call   0x3862
    2f1d:	83 c4 10             	add    $0x10,%esp
    2f20:	eb ee                	jmp    0x2f10
    2f22:	83 c6 01             	add    $0x1,%esi
    2f25:	83 fe 09             	cmp    $0x9,%esi
    2f28:	77 28                	ja     0x2f52
    2f2a:	e8 9b 08 00 00       	call   0x37ca
    2f2f:	89 44 b5 b8          	mov    %eax,-0x48(%ebp,%esi,4)
    2f33:	85 c0                	test   %eax,%eax
    2f35:	74 a9                	je     0x2ee0
    2f37:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f3a:	74 e6                	je     0x2f22
    2f3c:	83 ec 04             	sub    $0x4,%esp
    2f3f:	6a 01                	push   $0x1
    2f41:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2f44:	50                   	push   %eax
    2f45:	ff 75 e0             	pushl  -0x20(%ebp)
    2f48:	e8 9d 08 00 00       	call   0x37ea
    2f4d:	83 c4 10             	add    $0x10,%esp
    2f50:	eb d0                	jmp    0x2f22
    2f52:	83 ec 0c             	sub    $0xc,%esp
    2f55:	68 00 10 00 00       	push   $0x1000
    2f5a:	e8 fb 08 00 00       	call   0x385a
    2f5f:	89 c6                	mov    %eax,%esi
    2f61:	83 c4 10             	add    $0x10,%esp
    2f64:	eb 03                	jmp    0x2f69
    2f66:	83 c3 01             	add    $0x1,%ebx
    2f69:	83 fb 09             	cmp    $0x9,%ebx
    2f6c:	77 1c                	ja     0x2f8a
    2f6e:	8b 44 9d b8          	mov    -0x48(%ebp,%ebx,4),%eax
    2f72:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f75:	74 ef                	je     0x2f66
    2f77:	83 ec 0c             	sub    $0xc,%esp
    2f7a:	50                   	push   %eax
    2f7b:	e8 82 08 00 00       	call   0x3802
    2f80:	e8 55 08 00 00       	call   0x37da
    2f85:	83 c4 10             	add    $0x10,%esp
    2f88:	eb dc                	jmp    0x2f66
    2f8a:	83 fe ff             	cmp    $0xffffffff,%esi
    2f8d:	74 2f                	je     0x2fbe
    2f8f:	83 ec 0c             	sub    $0xc,%esp
    2f92:	6a 00                	push   $0x0
    2f94:	e8 c1 08 00 00       	call   0x385a
    2f99:	83 c4 10             	add    $0x10,%esp
    2f9c:	39 c7                	cmp    %eax,%edi
    2f9e:	72 36                	jb     0x2fd6
    2fa0:	83 ec 08             	sub    $0x8,%esp
    2fa3:	68 78 4a 00 00       	push   $0x4a78
    2fa8:	ff 35 10 5c 00 00    	pushl  0x5c10
    2fae:	e8 70 09 00 00       	call   0x3923
    2fb3:	83 c4 10             	add    $0x10,%esp
    2fb6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fb9:	5b                   	pop    %ebx
    2fba:	5e                   	pop    %esi
    2fbb:	5f                   	pop    %edi
    2fbc:	5d                   	pop    %ebp
    2fbd:	c3                   	ret    
    2fbe:	83 ec 08             	sub    $0x8,%esp
    2fc1:	68 5d 4a 00 00       	push   $0x4a5d
    2fc6:	ff 35 10 5c 00 00    	pushl  0x5c10
    2fcc:	e8 52 09 00 00       	call   0x3923
    2fd1:	e8 fc 07 00 00       	call   0x37d2
    2fd6:	83 ec 0c             	sub    $0xc,%esp
    2fd9:	6a 00                	push   $0x0
    2fdb:	e8 7a 08 00 00       	call   0x385a
    2fe0:	29 c7                	sub    %eax,%edi
    2fe2:	89 3c 24             	mov    %edi,(%esp)
    2fe5:	e8 70 08 00 00       	call   0x385a
    2fea:	83 c4 10             	add    $0x10,%esp
    2fed:	eb b1                	jmp    0x2fa0
    2fef:	f3 0f 1e fb          	endbr32 
    2ff3:	c3                   	ret    
    2ff4:	f3 0f 1e fb          	endbr32 
    2ff8:	55                   	push   %ebp
    2ff9:	89 e5                	mov    %esp,%ebp
    2ffb:	56                   	push   %esi
    2ffc:	53                   	push   %ebx
    2ffd:	83 ec 08             	sub    $0x8,%esp
    3000:	68 86 4a 00 00       	push   $0x4a86
    3005:	ff 35 10 5c 00 00    	pushl  0x5c10
    300b:	e8 13 09 00 00       	call   0x3923
    3010:	83 c4 10             	add    $0x10,%esp
    3013:	be 00 00 00 00       	mov    $0x0,%esi
    3018:	eb 0b                	jmp    0x3025
    301a:	e8 b3 07 00 00       	call   0x37d2
    301f:	81 c6 00 10 00 00    	add    $0x1000,%esi
    3025:	81 fe 00 30 11 00    	cmp    $0x113000,%esi
    302b:	77 5c                	ja     0x3089
    302d:	e8 98 07 00 00       	call   0x37ca
    3032:	89 c3                	mov    %eax,%ebx
    3034:	85 c0                	test   %eax,%eax
    3036:	74 e2                	je     0x301a
    3038:	83 ec 0c             	sub    $0xc,%esp
    303b:	6a 00                	push   $0x0
    303d:	e8 20 08 00 00       	call   0x3862
    3042:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3049:	e8 14 08 00 00       	call   0x3862
    304e:	89 1c 24             	mov    %ebx,(%esp)
    3051:	e8 ac 07 00 00       	call   0x3802
    3056:	e8 7f 07 00 00       	call   0x37da
    305b:	83 c4 08             	add    $0x8,%esp
    305e:	56                   	push   %esi
    305f:	68 95 4a 00 00       	push   $0x4a95
    3064:	e8 c9 07 00 00       	call   0x3832
    3069:	83 c4 10             	add    $0x10,%esp
    306c:	83 f8 ff             	cmp    $0xffffffff,%eax
    306f:	74 ae                	je     0x301f
    3071:	83 ec 08             	sub    $0x8,%esp
    3074:	68 a0 4a 00 00       	push   $0x4aa0
    3079:	ff 35 10 5c 00 00    	pushl  0x5c10
    307f:	e8 9f 08 00 00       	call   0x3923
    3084:	e8 49 07 00 00       	call   0x37d2
    3089:	83 ec 08             	sub    $0x8,%esp
    308c:	68 b9 4a 00 00       	push   $0x4ab9
    3091:	ff 35 10 5c 00 00    	pushl  0x5c10
    3097:	e8 87 08 00 00       	call   0x3923
    309c:	83 c4 10             	add    $0x10,%esp
    309f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    30a2:	5b                   	pop    %ebx
    30a3:	5e                   	pop    %esi
    30a4:	5d                   	pop    %ebp
    30a5:	c3                   	ret    
    30a6:	f3 0f 1e fb          	endbr32 
    30aa:	55                   	push   %ebp
    30ab:	89 e5                	mov    %esp,%ebp
    30ad:	83 ec 10             	sub    $0x10,%esp
    30b0:	68 c6 4a 00 00       	push   $0x4ac6
    30b5:	ff 35 10 5c 00 00    	pushl  0x5c10
    30bb:	e8 63 08 00 00       	call   0x3923
    30c0:	83 c4 10             	add    $0x10,%esp
    30c3:	b8 00 00 00 00       	mov    $0x0,%eax
    30c8:	3d 0f 27 00 00       	cmp    $0x270f,%eax
    30cd:	77 26                	ja     0x30f5
    30cf:	80 b8 e0 5c 00 00 00 	cmpb   $0x0,0x5ce0(%eax)
    30d6:	75 05                	jne    0x30dd
    30d8:	83 c0 01             	add    $0x1,%eax
    30db:	eb eb                	jmp    0x30c8
    30dd:	83 ec 08             	sub    $0x8,%esp
    30e0:	68 d0 4a 00 00       	push   $0x4ad0
    30e5:	ff 35 10 5c 00 00    	pushl  0x5c10
    30eb:	e8 33 08 00 00       	call   0x3923
    30f0:	e8 dd 06 00 00       	call   0x37d2
    30f5:	83 ec 08             	sub    $0x8,%esp
    30f8:	68 e1 4a 00 00       	push   $0x4ae1
    30fd:	ff 35 10 5c 00 00    	pushl  0x5c10
    3103:	e8 1b 08 00 00       	call   0x3923
    3108:	83 c4 10             	add    $0x10,%esp
    310b:	c9                   	leave  
    310c:	c3                   	ret    
    310d:	f3 0f 1e fb          	endbr32 
    3111:	55                   	push   %ebp
    3112:	89 e5                	mov    %esp,%ebp
    3114:	83 ec 14             	sub    $0x14,%esp
    3117:	68 ee 4a 00 00       	push   $0x4aee
    311c:	e8 01 07 00 00       	call   0x3822
    3121:	e8 a4 06 00 00       	call   0x37ca
    3126:	83 c4 10             	add    $0x10,%esp
    3129:	85 c0                	test   %eax,%eax
    312b:	74 4d                	je     0x317a
    312d:	0f 88 ad 00 00 00    	js     0x31e0
    3133:	e8 a2 06 00 00       	call   0x37da
    3138:	83 ec 08             	sub    $0x8,%esp
    313b:	6a 00                	push   $0x0
    313d:	68 ee 4a 00 00       	push   $0x4aee
    3142:	e8 cb 06 00 00       	call   0x3812
    3147:	83 c4 10             	add    $0x10,%esp
    314a:	85 c0                	test   %eax,%eax
    314c:	0f 88 a6 00 00 00    	js     0x31f8
    3152:	83 ec 0c             	sub    $0xc,%esp
    3155:	50                   	push   %eax
    3156:	e8 9f 06 00 00       	call   0x37fa
    315b:	c7 04 24 ee 4a 00 00 	movl   $0x4aee,(%esp)
    3162:	e8 bb 06 00 00       	call   0x3822
    3167:	83 c4 10             	add    $0x10,%esp
    316a:	c9                   	leave  
    316b:	c3                   	ret    
    316c:	c7 04 85 40 5c 00 00 	movl   $0x5248,0x5c40(,%eax,4)
    3173:	48 52 00 00 
    3177:	83 c0 01             	add    $0x1,%eax
    317a:	83 f8 1e             	cmp    $0x1e,%eax
    317d:	7e ed                	jle    0x316c
    317f:	c7 05 bc 5c 00 00 00 	movl   $0x0,0x5cbc
    3186:	00 00 00 
    3189:	83 ec 08             	sub    $0x8,%esp
    318c:	68 f8 4a 00 00       	push   $0x4af8
    3191:	ff 35 10 5c 00 00    	pushl  0x5c10
    3197:	e8 87 07 00 00       	call   0x3923
    319c:	83 c4 08             	add    $0x8,%esp
    319f:	68 40 5c 00 00       	push   $0x5c40
    31a4:	68 c5 3c 00 00       	push   $0x3cc5
    31a9:	e8 5c 06 00 00       	call   0x380a
    31ae:	83 c4 08             	add    $0x8,%esp
    31b1:	68 05 4b 00 00       	push   $0x4b05
    31b6:	ff 35 10 5c 00 00    	pushl  0x5c10
    31bc:	e8 62 07 00 00       	call   0x3923
    31c1:	83 c4 08             	add    $0x8,%esp
    31c4:	68 00 02 00 00       	push   $0x200
    31c9:	68 ee 4a 00 00       	push   $0x4aee
    31ce:	e8 3f 06 00 00       	call   0x3812
    31d3:	89 04 24             	mov    %eax,(%esp)
    31d6:	e8 1f 06 00 00       	call   0x37fa
    31db:	e8 f2 05 00 00       	call   0x37d2
    31e0:	83 ec 08             	sub    $0x8,%esp
    31e3:	68 15 4b 00 00       	push   $0x4b15
    31e8:	ff 35 10 5c 00 00    	pushl  0x5c10
    31ee:	e8 30 07 00 00       	call   0x3923
    31f3:	e8 da 05 00 00       	call   0x37d2
    31f8:	83 ec 08             	sub    $0x8,%esp
    31fb:	68 2e 4b 00 00       	push   $0x4b2e
    3200:	ff 35 10 5c 00 00    	pushl  0x5c10
    3206:	e8 18 07 00 00       	call   0x3923
    320b:	e8 c2 05 00 00       	call   0x37d2
    3210:	f3 0f 1e fb          	endbr32 
    3214:	55                   	push   %ebp
    3215:	89 e5                	mov    %esp,%ebp
    3217:	57                   	push   %edi
    3218:	56                   	push   %esi
    3219:	53                   	push   %ebx
    321a:	83 ec 54             	sub    $0x54,%esp
    321d:	68 43 4b 00 00       	push   $0x4b43
    3222:	6a 01                	push   $0x1
    3224:	e8 fa 06 00 00       	call   0x3923
    3229:	83 c4 10             	add    $0x10,%esp
    322c:	bb 00 00 00 00       	mov    $0x0,%ebx
    3231:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    3235:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
    323a:	89 d8                	mov    %ebx,%eax
    323c:	f7 ea                	imul   %edx
    323e:	c1 fa 06             	sar    $0x6,%edx
    3241:	89 df                	mov    %ebx,%edi
    3243:	c1 ff 1f             	sar    $0x1f,%edi
    3246:	29 fa                	sub    %edi,%edx
    3248:	8d 42 30             	lea    0x30(%edx),%eax
    324b:	88 45 a9             	mov    %al,-0x57(%ebp)
    324e:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    3254:	89 de                	mov    %ebx,%esi
    3256:	29 d6                	sub    %edx,%esi
    3258:	b9 1f 85 eb 51       	mov    $0x51eb851f,%ecx
    325d:	89 f0                	mov    %esi,%eax
    325f:	f7 e9                	imul   %ecx
    3261:	c1 fa 05             	sar    $0x5,%edx
    3264:	c1 fe 1f             	sar    $0x1f,%esi
    3267:	29 f2                	sub    %esi,%edx
    3269:	83 c2 30             	add    $0x30,%edx
    326c:	88 55 aa             	mov    %dl,-0x56(%ebp)
    326f:	89 d8                	mov    %ebx,%eax
    3271:	f7 e9                	imul   %ecx
    3273:	89 d1                	mov    %edx,%ecx
    3275:	c1 f9 05             	sar    $0x5,%ecx
    3278:	29 f9                	sub    %edi,%ecx
    327a:	6b c9 64             	imul   $0x64,%ecx,%ecx
    327d:	89 d8                	mov    %ebx,%eax
    327f:	29 c8                	sub    %ecx,%eax
    3281:	89 c1                	mov    %eax,%ecx
    3283:	be 67 66 66 66       	mov    $0x66666667,%esi
    3288:	f7 ee                	imul   %esi
    328a:	c1 fa 02             	sar    $0x2,%edx
    328d:	c1 f9 1f             	sar    $0x1f,%ecx
    3290:	29 ca                	sub    %ecx,%edx
    3292:	83 c2 30             	add    $0x30,%edx
    3295:	88 55 ab             	mov    %dl,-0x55(%ebp)
    3298:	89 d8                	mov    %ebx,%eax
    329a:	f7 ee                	imul   %esi
    329c:	c1 fa 02             	sar    $0x2,%edx
    329f:	29 fa                	sub    %edi,%edx
    32a1:	8d 04 92             	lea    (%edx,%edx,4),%eax
    32a4:	01 c0                	add    %eax,%eax
    32a6:	89 da                	mov    %ebx,%edx
    32a8:	29 c2                	sub    %eax,%edx
    32aa:	83 c2 30             	add    $0x30,%edx
    32ad:	88 55 ac             	mov    %dl,-0x54(%ebp)
    32b0:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    32b4:	83 ec 04             	sub    $0x4,%esp
    32b7:	8d 75 a8             	lea    -0x58(%ebp),%esi
    32ba:	56                   	push   %esi
    32bb:	68 50 4b 00 00       	push   $0x4b50
    32c0:	6a 01                	push   $0x1
    32c2:	e8 5c 06 00 00       	call   0x3923
    32c7:	83 c4 08             	add    $0x8,%esp
    32ca:	68 02 02 00 00       	push   $0x202
    32cf:	56                   	push   %esi
    32d0:	e8 3d 05 00 00       	call   0x3812
    32d5:	89 c6                	mov    %eax,%esi
    32d7:	83 c4 10             	add    $0x10,%esp
    32da:	85 c0                	test   %eax,%eax
    32dc:	79 1b                	jns    0x32f9
    32de:	83 ec 04             	sub    $0x4,%esp
    32e1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    32e4:	50                   	push   %eax
    32e5:	68 5c 4b 00 00       	push   $0x4b5c
    32ea:	6a 01                	push   $0x1
    32ec:	e8 32 06 00 00       	call   0x3923
    32f1:	83 c4 10             	add    $0x10,%esp
    32f4:	e9 e6 00 00 00       	jmp    0x33df
    32f9:	bf 00 00 00 00       	mov    $0x0,%edi
    32fe:	83 ec 04             	sub    $0x4,%esp
    3301:	68 00 02 00 00       	push   $0x200
    3306:	68 00 84 00 00       	push   $0x8400
    330b:	56                   	push   %esi
    330c:	e8 e1 04 00 00       	call   0x37f2
    3311:	83 c4 10             	add    $0x10,%esp
    3314:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3319:	7e 04                	jle    0x331f
    331b:	01 c7                	add    %eax,%edi
    331d:	eb df                	jmp    0x32fe
    331f:	83 ec 04             	sub    $0x4,%esp
    3322:	57                   	push   %edi
    3323:	68 6c 4b 00 00       	push   $0x4b6c
    3328:	6a 01                	push   $0x1
    332a:	e8 f4 05 00 00       	call   0x3923
    332f:	89 34 24             	mov    %esi,(%esp)
    3332:	e8 c3 04 00 00       	call   0x37fa
    3337:	83 c4 10             	add    $0x10,%esp
    333a:	85 ff                	test   %edi,%edi
    333c:	0f 84 9d 00 00 00    	je     0x33df
    3342:	83 c3 01             	add    $0x1,%ebx
    3345:	e9 e7 fe ff ff       	jmp    0x3231
    334a:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    334e:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
    3353:	89 d8                	mov    %ebx,%eax
    3355:	f7 ea                	imul   %edx
    3357:	c1 fa 06             	sar    $0x6,%edx
    335a:	89 df                	mov    %ebx,%edi
    335c:	c1 ff 1f             	sar    $0x1f,%edi
    335f:	29 fa                	sub    %edi,%edx
    3361:	8d 42 30             	lea    0x30(%edx),%eax
    3364:	88 45 a9             	mov    %al,-0x57(%ebp)
    3367:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    336d:	89 de                	mov    %ebx,%esi
    336f:	29 d6                	sub    %edx,%esi
    3371:	b9 1f 85 eb 51       	mov    $0x51eb851f,%ecx
    3376:	89 f0                	mov    %esi,%eax
    3378:	f7 e9                	imul   %ecx
    337a:	c1 fa 05             	sar    $0x5,%edx
    337d:	c1 fe 1f             	sar    $0x1f,%esi
    3380:	29 f2                	sub    %esi,%edx
    3382:	83 c2 30             	add    $0x30,%edx
    3385:	88 55 aa             	mov    %dl,-0x56(%ebp)
    3388:	89 d8                	mov    %ebx,%eax
    338a:	f7 e9                	imul   %ecx
    338c:	89 d1                	mov    %edx,%ecx
    338e:	c1 f9 05             	sar    $0x5,%ecx
    3391:	29 f9                	sub    %edi,%ecx
    3393:	6b c9 64             	imul   $0x64,%ecx,%ecx
    3396:	89 d8                	mov    %ebx,%eax
    3398:	29 c8                	sub    %ecx,%eax
    339a:	89 c1                	mov    %eax,%ecx
    339c:	be 67 66 66 66       	mov    $0x66666667,%esi
    33a1:	f7 ee                	imul   %esi
    33a3:	c1 fa 02             	sar    $0x2,%edx
    33a6:	c1 f9 1f             	sar    $0x1f,%ecx
    33a9:	29 ca                	sub    %ecx,%edx
    33ab:	83 c2 30             	add    $0x30,%edx
    33ae:	88 55 ab             	mov    %dl,-0x55(%ebp)
    33b1:	89 d8                	mov    %ebx,%eax
    33b3:	f7 ee                	imul   %esi
    33b5:	c1 fa 02             	sar    $0x2,%edx
    33b8:	29 fa                	sub    %edi,%edx
    33ba:	8d 04 92             	lea    (%edx,%edx,4),%eax
    33bd:	01 c0                	add    %eax,%eax
    33bf:	89 da                	mov    %ebx,%edx
    33c1:	29 c2                	sub    %eax,%edx
    33c3:	83 c2 30             	add    $0x30,%edx
    33c6:	88 55 ac             	mov    %dl,-0x54(%ebp)
    33c9:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    33cd:	83 ec 0c             	sub    $0xc,%esp
    33d0:	8d 45 a8             	lea    -0x58(%ebp),%eax
    33d3:	50                   	push   %eax
    33d4:	e8 49 04 00 00       	call   0x3822
    33d9:	83 eb 01             	sub    $0x1,%ebx
    33dc:	83 c4 10             	add    $0x10,%esp
    33df:	85 db                	test   %ebx,%ebx
    33e1:	0f 89 63 ff ff ff    	jns    0x334a
    33e7:	83 ec 08             	sub    $0x8,%esp
    33ea:	68 7c 4b 00 00       	push   $0x4b7c
    33ef:	6a 01                	push   $0x1
    33f1:	e8 2d 05 00 00       	call   0x3923
    33f6:	83 c4 10             	add    $0x10,%esp
    33f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    33fc:	5b                   	pop    %ebx
    33fd:	5e                   	pop    %esi
    33fe:	5f                   	pop    %edi
    33ff:	5d                   	pop    %ebp
    3400:	c3                   	ret    
    3401:	f3 0f 1e fb          	endbr32 
    3405:	55                   	push   %ebp
    3406:	89 e5                	mov    %esp,%ebp
    3408:	83 ec 10             	sub    $0x10,%esp
    340b:	68 92 4b 00 00       	push   $0x4b92
    3410:	6a 01                	push   $0x1
    3412:	e8 0c 05 00 00       	call   0x3923
    3417:	e8 ae 03 00 00       	call   0x37ca
    341c:	83 c4 10             	add    $0x10,%esp
    341f:	85 c0                	test   %eax,%eax
    3421:	74 1b                	je     0x343e
    3423:	78 3e                	js     0x3463
    3425:	e8 b0 03 00 00       	call   0x37da
    342a:	83 ec 08             	sub    $0x8,%esp
    342d:	68 9c 4b 00 00       	push   $0x4b9c
    3432:	6a 01                	push   $0x1
    3434:	e8 ea 04 00 00       	call   0x3923
    3439:	83 c4 10             	add    $0x10,%esp
    343c:	c9                   	leave  
    343d:	c3                   	ret    
    343e:	b8 09 00 00 00       	mov    $0x9,%eax
    3443:	ba 70 00 00 00       	mov    $0x70,%edx
    3448:	ee                   	out    %al,(%dx)
    3449:	ba 71 00 00 00       	mov    $0x71,%edx
    344e:	ec                   	in     (%dx),%al
    344f:	83 ec 08             	sub    $0x8,%esp
    3452:	68 28 53 00 00       	push   $0x5328
    3457:	6a 01                	push   $0x1
    3459:	e8 c5 04 00 00       	call   0x3923
    345e:	e8 6f 03 00 00       	call   0x37d2
    3463:	83 ec 08             	sub    $0x8,%esp
    3466:	68 21 4b 00 00       	push   $0x4b21
    346b:	6a 01                	push   $0x1
    346d:	e8 b1 04 00 00       	call   0x3923
    3472:	e8 5b 03 00 00       	call   0x37d2
    3477:	f3 0f 1e fb          	endbr32 
    347b:	55                   	push   %ebp
    347c:	89 e5                	mov    %esp,%ebp
    347e:	53                   	push   %ebx
    347f:	83 ec 0c             	sub    $0xc,%esp
    3482:	6a 00                	push   $0x0
    3484:	68 ab 4b 00 00       	push   $0x4bab
    3489:	e8 84 03 00 00       	call   0x3812
    348e:	83 c4 10             	add    $0x10,%esp
    3491:	85 c0                	test   %eax,%eax
    3493:	78 3a                	js     0x34cf
    3495:	89 c3                	mov    %eax,%ebx
    3497:	83 ec 0c             	sub    $0xc,%esp
    349a:	6a 00                	push   $0x0
    349c:	e8 b9 03 00 00       	call   0x385a
    34a1:	83 e8 01             	sub    $0x1,%eax
    34a4:	83 c4 0c             	add    $0xc,%esp
    34a7:	6a ff                	push   $0xffffffff
    34a9:	50                   	push   %eax
    34aa:	53                   	push   %ebx
    34ab:	e8 3a 03 00 00       	call   0x37ea
    34b0:	89 1c 24             	mov    %ebx,(%esp)
    34b3:	e8 42 03 00 00       	call   0x37fa
    34b8:	83 c4 08             	add    $0x8,%esp
    34bb:	68 bd 4b 00 00       	push   $0x4bbd
    34c0:	6a 01                	push   $0x1
    34c2:	e8 5c 04 00 00       	call   0x3923
    34c7:	83 c4 10             	add    $0x10,%esp
    34ca:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    34cd:	c9                   	leave  
    34ce:	c3                   	ret    
    34cf:	83 ec 08             	sub    $0x8,%esp
    34d2:	68 b0 4b 00 00       	push   $0x4bb0
    34d7:	6a 02                	push   $0x2
    34d9:	e8 45 04 00 00       	call   0x3923
    34de:	e8 ef 02 00 00       	call   0x37d2
    34e3:	f3 0f 1e fb          	endbr32 
    34e7:	69 05 0c 5c 00 00 0d 	imul   $0x19660d,0x5c0c,%eax
    34ee:	66 19 00 
    34f1:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    34f6:	a3 0c 5c 00 00       	mov    %eax,0x5c0c
    34fb:	c3                   	ret    
    34fc:	f3 0f 1e fb          	endbr32 
    3500:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    3504:	83 e4 f0             	and    $0xfffffff0,%esp
    3507:	ff 71 fc             	pushl  -0x4(%ecx)
    350a:	55                   	push   %ebp
    350b:	89 e5                	mov    %esp,%ebp
    350d:	51                   	push   %ecx
    350e:	83 ec 0c             	sub    $0xc,%esp
    3511:	68 ce 4b 00 00       	push   $0x4bce
    3516:	6a 01                	push   $0x1
    3518:	e8 06 04 00 00       	call   0x3923
    351d:	83 c4 08             	add    $0x8,%esp
    3520:	6a 00                	push   $0x0
    3522:	68 e2 4b 00 00       	push   $0x4be2
    3527:	e8 e6 02 00 00       	call   0x3812
    352c:	83 c4 10             	add    $0x10,%esp
    352f:	85 c0                	test   %eax,%eax
    3531:	78 14                	js     0x3547
    3533:	83 ec 08             	sub    $0x8,%esp
    3536:	68 4c 53 00 00       	push   $0x534c
    353b:	6a 01                	push   $0x1
    353d:	e8 e1 03 00 00       	call   0x3923
    3542:	e8 8b 02 00 00       	call   0x37d2
    3547:	83 ec 08             	sub    $0x8,%esp
    354a:	68 00 02 00 00       	push   $0x200
    354f:	68 e2 4b 00 00       	push   $0x4be2
    3554:	e8 b9 02 00 00       	call   0x3812
    3559:	89 04 24             	mov    %eax,(%esp)
    355c:	e8 99 02 00 00       	call   0x37fa
    3561:	e8 11 ff ff ff       	call   0x3477
    3566:	e8 de da ff ff       	call   0x1049
    356b:	e8 8b e3 ff ff       	call   0x18fb
    3570:	e8 94 e0 ff ff       	call   0x1609
    3575:	e8 e8 d8 ff ff       	call   0xe62
    357a:	e8 42 d7 ff ff       	call   0xcc1
    357f:	e8 89 fb ff ff       	call   0x310d
    3584:	e8 f4 ec ff ff       	call   0x227d
    3589:	e8 7f fb ff ff       	call   0x310d
    358e:	e8 13 fb ff ff       	call   0x30a6
    3593:	e8 3c f6 ff ff       	call   0x2bd4
    3598:	e8 57 fa ff ff       	call   0x2ff4
    359d:	e8 16 cd ff ff       	call   0x2b8
    35a2:	e8 a8 cd ff ff       	call   0x34f
    35a7:	e8 6f cf ff ff       	call   0x51b
    35ac:	e8 1e d1 ff ff       	call   0x6cf
    35b1:	e8 15 cc ff ff       	call   0x1cb
    35b6:	e8 26 cb ff ff       	call   0xe1
    35bb:	e8 40 ca ff ff       	call   0x0
    35c0:	e8 3f d6 ff ff       	call   0xc04
    35c5:	e8 e3 d2 ff ff       	call   0x8ad
    35ca:	e8 82 d4 ff ff       	call   0xa51
    35cf:	e8 bc d5 ff ff       	call   0xb90
    35d4:	e8 75 f0 ff ff       	call   0x264e
    35d9:	e8 2f ef ff ff       	call   0x250d
    35de:	e8 70 ed ff ff       	call   0x2353
    35e3:	e8 63 e5 ff ff       	call   0x1b4b
    35e8:	e8 f2 dd ff ff       	call   0x13df
    35ed:	e8 50 dc ff ff       	call   0x1242
    35f2:	e8 e0 f1 ff ff       	call   0x27d7
    35f7:	e8 f9 f3 ff ff       	call   0x29f5
    35fc:	e8 20 f5 ff ff       	call   0x2b21
    3601:	e8 ed e3 ff ff       	call   0x19f3
    3606:	e8 f6 fd ff ff       	call   0x3401
    360b:	e8 50 d2 ff ff       	call   0x860
    3610:	e8 bd 01 00 00       	call   0x37d2
    3615:	f3 0f 1e fb          	endbr32 
    3619:	55                   	push   %ebp
    361a:	89 e5                	mov    %esp,%ebp
    361c:	56                   	push   %esi
    361d:	53                   	push   %ebx
    361e:	8b 75 08             	mov    0x8(%ebp),%esi
    3621:	8b 55 0c             	mov    0xc(%ebp),%edx
    3624:	89 f0                	mov    %esi,%eax
    3626:	89 d1                	mov    %edx,%ecx
    3628:	83 c2 01             	add    $0x1,%edx
    362b:	89 c3                	mov    %eax,%ebx
    362d:	83 c0 01             	add    $0x1,%eax
    3630:	0f b6 09             	movzbl (%ecx),%ecx
    3633:	88 0b                	mov    %cl,(%ebx)
    3635:	84 c9                	test   %cl,%cl
    3637:	75 ed                	jne    0x3626
    3639:	89 f0                	mov    %esi,%eax
    363b:	5b                   	pop    %ebx
    363c:	5e                   	pop    %esi
    363d:	5d                   	pop    %ebp
    363e:	c3                   	ret    
    363f:	f3 0f 1e fb          	endbr32 
    3643:	55                   	push   %ebp
    3644:	89 e5                	mov    %esp,%ebp
    3646:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3649:	8b 55 0c             	mov    0xc(%ebp),%edx
    364c:	0f b6 01             	movzbl (%ecx),%eax
    364f:	84 c0                	test   %al,%al
    3651:	74 0c                	je     0x365f
    3653:	3a 02                	cmp    (%edx),%al
    3655:	75 08                	jne    0x365f
    3657:	83 c1 01             	add    $0x1,%ecx
    365a:	83 c2 01             	add    $0x1,%edx
    365d:	eb ed                	jmp    0x364c
    365f:	0f b6 c0             	movzbl %al,%eax
    3662:	0f b6 12             	movzbl (%edx),%edx
    3665:	29 d0                	sub    %edx,%eax
    3667:	5d                   	pop    %ebp
    3668:	c3                   	ret    
    3669:	f3 0f 1e fb          	endbr32 
    366d:	55                   	push   %ebp
    366e:	89 e5                	mov    %esp,%ebp
    3670:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3673:	b8 00 00 00 00       	mov    $0x0,%eax
    3678:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
    367c:	74 05                	je     0x3683
    367e:	83 c0 01             	add    $0x1,%eax
    3681:	eb f5                	jmp    0x3678
    3683:	5d                   	pop    %ebp
    3684:	c3                   	ret    
    3685:	f3 0f 1e fb          	endbr32 
    3689:	55                   	push   %ebp
    368a:	89 e5                	mov    %esp,%ebp
    368c:	57                   	push   %edi
    368d:	8b 55 08             	mov    0x8(%ebp),%edx
    3690:	89 d7                	mov    %edx,%edi
    3692:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3695:	8b 45 0c             	mov    0xc(%ebp),%eax
    3698:	fc                   	cld    
    3699:	f3 aa                	rep stos %al,%es:(%edi)
    369b:	89 d0                	mov    %edx,%eax
    369d:	5f                   	pop    %edi
    369e:	5d                   	pop    %ebp
    369f:	c3                   	ret    
    36a0:	f3 0f 1e fb          	endbr32 
    36a4:	55                   	push   %ebp
    36a5:	89 e5                	mov    %esp,%ebp
    36a7:	8b 45 08             	mov    0x8(%ebp),%eax
    36aa:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
    36ae:	0f b6 10             	movzbl (%eax),%edx
    36b1:	84 d2                	test   %dl,%dl
    36b3:	74 09                	je     0x36be
    36b5:	38 ca                	cmp    %cl,%dl
    36b7:	74 0a                	je     0x36c3
    36b9:	83 c0 01             	add    $0x1,%eax
    36bc:	eb f0                	jmp    0x36ae
    36be:	b8 00 00 00 00       	mov    $0x0,%eax
    36c3:	5d                   	pop    %ebp
    36c4:	c3                   	ret    
    36c5:	f3 0f 1e fb          	endbr32 
    36c9:	55                   	push   %ebp
    36ca:	89 e5                	mov    %esp,%ebp
    36cc:	57                   	push   %edi
    36cd:	56                   	push   %esi
    36ce:	53                   	push   %ebx
    36cf:	83 ec 1c             	sub    $0x1c,%esp
    36d2:	8b 7d 08             	mov    0x8(%ebp),%edi
    36d5:	bb 00 00 00 00       	mov    $0x0,%ebx
    36da:	89 de                	mov    %ebx,%esi
    36dc:	83 c3 01             	add    $0x1,%ebx
    36df:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    36e2:	7d 2e                	jge    0x3712
    36e4:	83 ec 04             	sub    $0x4,%esp
    36e7:	6a 01                	push   $0x1
    36e9:	8d 45 e7             	lea    -0x19(%ebp),%eax
    36ec:	50                   	push   %eax
    36ed:	6a 00                	push   $0x0
    36ef:	e8 f6 00 00 00       	call   0x37ea
    36f4:	83 c4 10             	add    $0x10,%esp
    36f7:	85 c0                	test   %eax,%eax
    36f9:	7e 17                	jle    0x3712
    36fb:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    36ff:	88 04 37             	mov    %al,(%edi,%esi,1)
    3702:	3c 0a                	cmp    $0xa,%al
    3704:	0f 94 c2             	sete   %dl
    3707:	3c 0d                	cmp    $0xd,%al
    3709:	0f 94 c0             	sete   %al
    370c:	08 c2                	or     %al,%dl
    370e:	74 ca                	je     0x36da
    3710:	89 de                	mov    %ebx,%esi
    3712:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
    3716:	89 f8                	mov    %edi,%eax
    3718:	8d 65 f4             	lea    -0xc(%ebp),%esp
    371b:	5b                   	pop    %ebx
    371c:	5e                   	pop    %esi
    371d:	5f                   	pop    %edi
    371e:	5d                   	pop    %ebp
    371f:	c3                   	ret    
    3720:	f3 0f 1e fb          	endbr32 
    3724:	55                   	push   %ebp
    3725:	89 e5                	mov    %esp,%ebp
    3727:	56                   	push   %esi
    3728:	53                   	push   %ebx
    3729:	83 ec 08             	sub    $0x8,%esp
    372c:	6a 00                	push   $0x0
    372e:	ff 75 08             	pushl  0x8(%ebp)
    3731:	e8 dc 00 00 00       	call   0x3812
    3736:	83 c4 10             	add    $0x10,%esp
    3739:	85 c0                	test   %eax,%eax
    373b:	78 24                	js     0x3761
    373d:	89 c3                	mov    %eax,%ebx
    373f:	83 ec 08             	sub    $0x8,%esp
    3742:	ff 75 0c             	pushl  0xc(%ebp)
    3745:	50                   	push   %eax
    3746:	e8 df 00 00 00       	call   0x382a
    374b:	89 c6                	mov    %eax,%esi
    374d:	89 1c 24             	mov    %ebx,(%esp)
    3750:	e8 a5 00 00 00       	call   0x37fa
    3755:	83 c4 10             	add    $0x10,%esp
    3758:	89 f0                	mov    %esi,%eax
    375a:	8d 65 f8             	lea    -0x8(%ebp),%esp
    375d:	5b                   	pop    %ebx
    375e:	5e                   	pop    %esi
    375f:	5d                   	pop    %ebp
    3760:	c3                   	ret    
    3761:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3766:	eb f0                	jmp    0x3758
    3768:	f3 0f 1e fb          	endbr32 
    376c:	55                   	push   %ebp
    376d:	89 e5                	mov    %esp,%ebp
    376f:	53                   	push   %ebx
    3770:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3773:	ba 00 00 00 00       	mov    $0x0,%edx
    3778:	0f b6 01             	movzbl (%ecx),%eax
    377b:	8d 58 d0             	lea    -0x30(%eax),%ebx
    377e:	80 fb 09             	cmp    $0x9,%bl
    3781:	77 12                	ja     0x3795
    3783:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
    3786:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
    3789:	83 c1 01             	add    $0x1,%ecx
    378c:	0f be c0             	movsbl %al,%eax
    378f:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
    3793:	eb e3                	jmp    0x3778
    3795:	89 d0                	mov    %edx,%eax
    3797:	5b                   	pop    %ebx
    3798:	5d                   	pop    %ebp
    3799:	c3                   	ret    
    379a:	f3 0f 1e fb          	endbr32 
    379e:	55                   	push   %ebp
    379f:	89 e5                	mov    %esp,%ebp
    37a1:	56                   	push   %esi
    37a2:	53                   	push   %ebx
    37a3:	8b 75 08             	mov    0x8(%ebp),%esi
    37a6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    37a9:	8b 45 10             	mov    0x10(%ebp),%eax
    37ac:	89 f2                	mov    %esi,%edx
    37ae:	8d 58 ff             	lea    -0x1(%eax),%ebx
    37b1:	85 c0                	test   %eax,%eax
    37b3:	7e 0f                	jle    0x37c4
    37b5:	0f b6 01             	movzbl (%ecx),%eax
    37b8:	88 02                	mov    %al,(%edx)
    37ba:	8d 49 01             	lea    0x1(%ecx),%ecx
    37bd:	8d 52 01             	lea    0x1(%edx),%edx
    37c0:	89 d8                	mov    %ebx,%eax
    37c2:	eb ea                	jmp    0x37ae
    37c4:	89 f0                	mov    %esi,%eax
    37c6:	5b                   	pop    %ebx
    37c7:	5e                   	pop    %esi
    37c8:	5d                   	pop    %ebp
    37c9:	c3                   	ret    
    37ca:	b8 01 00 00 00       	mov    $0x1,%eax
    37cf:	cd 40                	int    $0x40
    37d1:	c3                   	ret    
    37d2:	b8 02 00 00 00       	mov    $0x2,%eax
    37d7:	cd 40                	int    $0x40
    37d9:	c3                   	ret    
    37da:	b8 03 00 00 00       	mov    $0x3,%eax
    37df:	cd 40                	int    $0x40
    37e1:	c3                   	ret    
    37e2:	b8 04 00 00 00       	mov    $0x4,%eax
    37e7:	cd 40                	int    $0x40
    37e9:	c3                   	ret    
    37ea:	b8 05 00 00 00       	mov    $0x5,%eax
    37ef:	cd 40                	int    $0x40
    37f1:	c3                   	ret    
    37f2:	b8 10 00 00 00       	mov    $0x10,%eax
    37f7:	cd 40                	int    $0x40
    37f9:	c3                   	ret    
    37fa:	b8 15 00 00 00       	mov    $0x15,%eax
    37ff:	cd 40                	int    $0x40
    3801:	c3                   	ret    
    3802:	b8 06 00 00 00       	mov    $0x6,%eax
    3807:	cd 40                	int    $0x40
    3809:	c3                   	ret    
    380a:	b8 07 00 00 00       	mov    $0x7,%eax
    380f:	cd 40                	int    $0x40
    3811:	c3                   	ret    
    3812:	b8 0f 00 00 00       	mov    $0xf,%eax
    3817:	cd 40                	int    $0x40
    3819:	c3                   	ret    
    381a:	b8 11 00 00 00       	mov    $0x11,%eax
    381f:	cd 40                	int    $0x40
    3821:	c3                   	ret    
    3822:	b8 12 00 00 00       	mov    $0x12,%eax
    3827:	cd 40                	int    $0x40
    3829:	c3                   	ret    
    382a:	b8 08 00 00 00       	mov    $0x8,%eax
    382f:	cd 40                	int    $0x40
    3831:	c3                   	ret    
    3832:	b8 13 00 00 00       	mov    $0x13,%eax
    3837:	cd 40                	int    $0x40
    3839:	c3                   	ret    
    383a:	b8 14 00 00 00       	mov    $0x14,%eax
    383f:	cd 40                	int    $0x40
    3841:	c3                   	ret    
    3842:	b8 09 00 00 00       	mov    $0x9,%eax
    3847:	cd 40                	int    $0x40
    3849:	c3                   	ret    
    384a:	b8 0a 00 00 00       	mov    $0xa,%eax
    384f:	cd 40                	int    $0x40
    3851:	c3                   	ret    
    3852:	b8 0b 00 00 00       	mov    $0xb,%eax
    3857:	cd 40                	int    $0x40
    3859:	c3                   	ret    
    385a:	b8 0c 00 00 00       	mov    $0xc,%eax
    385f:	cd 40                	int    $0x40
    3861:	c3                   	ret    
    3862:	b8 0d 00 00 00       	mov    $0xd,%eax
    3867:	cd 40                	int    $0x40
    3869:	c3                   	ret    
    386a:	b8 0e 00 00 00       	mov    $0xe,%eax
    386f:	cd 40                	int    $0x40
    3871:	c3                   	ret    
    3872:	b8 16 00 00 00       	mov    $0x16,%eax
    3877:	cd 40                	int    $0x40
    3879:	c3                   	ret    
    387a:	b8 17 00 00 00       	mov    $0x17,%eax
    387f:	cd 40                	int    $0x40
    3881:	c3                   	ret    
    3882:	55                   	push   %ebp
    3883:	89 e5                	mov    %esp,%ebp
    3885:	83 ec 1c             	sub    $0x1c,%esp
    3888:	88 55 f4             	mov    %dl,-0xc(%ebp)
    388b:	6a 01                	push   $0x1
    388d:	8d 55 f4             	lea    -0xc(%ebp),%edx
    3890:	52                   	push   %edx
    3891:	50                   	push   %eax
    3892:	e8 5b ff ff ff       	call   0x37f2
    3897:	83 c4 10             	add    $0x10,%esp
    389a:	c9                   	leave  
    389b:	c3                   	ret    
    389c:	55                   	push   %ebp
    389d:	89 e5                	mov    %esp,%ebp
    389f:	57                   	push   %edi
    38a0:	56                   	push   %esi
    38a1:	53                   	push   %ebx
    38a2:	83 ec 2c             	sub    $0x2c,%esp
    38a5:	89 45 d0             	mov    %eax,-0x30(%ebp)
    38a8:	89 d6                	mov    %edx,%esi
    38aa:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    38ae:	0f 95 c2             	setne  %dl
    38b1:	89 f0                	mov    %esi,%eax
    38b3:	c1 e8 1f             	shr    $0x1f,%eax
    38b6:	84 c2                	test   %al,%dl
    38b8:	74 42                	je     0x38fc
    38ba:	f7 de                	neg    %esi
    38bc:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
    38c3:	bb 00 00 00 00       	mov    $0x0,%ebx
    38c8:	89 f0                	mov    %esi,%eax
    38ca:	ba 00 00 00 00       	mov    $0x0,%edx
    38cf:	f7 f1                	div    %ecx
    38d1:	89 df                	mov    %ebx,%edi
    38d3:	83 c3 01             	add    $0x1,%ebx
    38d6:	0f b6 92 80 53 00 00 	movzbl 0x5380(%edx),%edx
    38dd:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
    38e1:	89 f2                	mov    %esi,%edx
    38e3:	89 c6                	mov    %eax,%esi
    38e5:	39 d1                	cmp    %edx,%ecx
    38e7:	76 df                	jbe    0x38c8
    38e9:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    38ed:	74 2f                	je     0x391e
    38ef:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    38f4:	8d 5f 02             	lea    0x2(%edi),%ebx
    38f7:	8b 75 d0             	mov    -0x30(%ebp),%esi
    38fa:	eb 15                	jmp    0x3911
    38fc:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    3903:	eb be                	jmp    0x38c3
    3905:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
    390a:	89 f0                	mov    %esi,%eax
    390c:	e8 71 ff ff ff       	call   0x3882
    3911:	83 eb 01             	sub    $0x1,%ebx
    3914:	79 ef                	jns    0x3905
    3916:	83 c4 2c             	add    $0x2c,%esp
    3919:	5b                   	pop    %ebx
    391a:	5e                   	pop    %esi
    391b:	5f                   	pop    %edi
    391c:	5d                   	pop    %ebp
    391d:	c3                   	ret    
    391e:	8b 75 d0             	mov    -0x30(%ebp),%esi
    3921:	eb ee                	jmp    0x3911
    3923:	f3 0f 1e fb          	endbr32 
    3927:	55                   	push   %ebp
    3928:	89 e5                	mov    %esp,%ebp
    392a:	57                   	push   %edi
    392b:	56                   	push   %esi
    392c:	53                   	push   %ebx
    392d:	83 ec 1c             	sub    $0x1c,%esp
    3930:	8d 45 10             	lea    0x10(%ebp),%eax
    3933:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3936:	be 00 00 00 00       	mov    $0x0,%esi
    393b:	bb 00 00 00 00       	mov    $0x0,%ebx
    3940:	eb 14                	jmp    0x3956
    3942:	89 fa                	mov    %edi,%edx
    3944:	8b 45 08             	mov    0x8(%ebp),%eax
    3947:	e8 36 ff ff ff       	call   0x3882
    394c:	eb 05                	jmp    0x3953
    394e:	83 fe 25             	cmp    $0x25,%esi
    3951:	74 25                	je     0x3978
    3953:	83 c3 01             	add    $0x1,%ebx
    3956:	8b 45 0c             	mov    0xc(%ebp),%eax
    3959:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
    395d:	84 c0                	test   %al,%al
    395f:	0f 84 23 01 00 00    	je     0x3a88
    3965:	0f be f8             	movsbl %al,%edi
    3968:	0f b6 c0             	movzbl %al,%eax
    396b:	85 f6                	test   %esi,%esi
    396d:	75 df                	jne    0x394e
    396f:	83 f8 25             	cmp    $0x25,%eax
    3972:	75 ce                	jne    0x3942
    3974:	89 c6                	mov    %eax,%esi
    3976:	eb db                	jmp    0x3953
    3978:	83 f8 64             	cmp    $0x64,%eax
    397b:	74 49                	je     0x39c6
    397d:	83 f8 78             	cmp    $0x78,%eax
    3980:	0f 94 c1             	sete   %cl
    3983:	83 f8 70             	cmp    $0x70,%eax
    3986:	0f 94 c2             	sete   %dl
    3989:	08 d1                	or     %dl,%cl
    398b:	75 63                	jne    0x39f0
    398d:	83 f8 73             	cmp    $0x73,%eax
    3990:	0f 84 84 00 00 00    	je     0x3a1a
    3996:	83 f8 63             	cmp    $0x63,%eax
    3999:	0f 84 b7 00 00 00    	je     0x3a56
    399f:	83 f8 25             	cmp    $0x25,%eax
    39a2:	0f 84 cc 00 00 00    	je     0x3a74
    39a8:	ba 25 00 00 00       	mov    $0x25,%edx
    39ad:	8b 45 08             	mov    0x8(%ebp),%eax
    39b0:	e8 cd fe ff ff       	call   0x3882
    39b5:	89 fa                	mov    %edi,%edx
    39b7:	8b 45 08             	mov    0x8(%ebp),%eax
    39ba:	e8 c3 fe ff ff       	call   0x3882
    39bf:	be 00 00 00 00       	mov    $0x0,%esi
    39c4:	eb 8d                	jmp    0x3953
    39c6:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    39c9:	8b 17                	mov    (%edi),%edx
    39cb:	83 ec 0c             	sub    $0xc,%esp
    39ce:	6a 01                	push   $0x1
    39d0:	b9 0a 00 00 00       	mov    $0xa,%ecx
    39d5:	8b 45 08             	mov    0x8(%ebp),%eax
    39d8:	e8 bf fe ff ff       	call   0x389c
    39dd:	83 c7 04             	add    $0x4,%edi
    39e0:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    39e3:	83 c4 10             	add    $0x10,%esp
    39e6:	be 00 00 00 00       	mov    $0x0,%esi
    39eb:	e9 63 ff ff ff       	jmp    0x3953
    39f0:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    39f3:	8b 17                	mov    (%edi),%edx
    39f5:	83 ec 0c             	sub    $0xc,%esp
    39f8:	6a 00                	push   $0x0
    39fa:	b9 10 00 00 00       	mov    $0x10,%ecx
    39ff:	8b 45 08             	mov    0x8(%ebp),%eax
    3a02:	e8 95 fe ff ff       	call   0x389c
    3a07:	83 c7 04             	add    $0x4,%edi
    3a0a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    3a0d:	83 c4 10             	add    $0x10,%esp
    3a10:	be 00 00 00 00       	mov    $0x0,%esi
    3a15:	e9 39 ff ff ff       	jmp    0x3953
    3a1a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    3a1d:	8b 30                	mov    (%eax),%esi
    3a1f:	83 c0 04             	add    $0x4,%eax
    3a22:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3a25:	85 f6                	test   %esi,%esi
    3a27:	75 28                	jne    0x3a51
    3a29:	be 76 53 00 00       	mov    $0x5376,%esi
    3a2e:	8b 7d 08             	mov    0x8(%ebp),%edi
    3a31:	eb 0d                	jmp    0x3a40
    3a33:	0f be d2             	movsbl %dl,%edx
    3a36:	89 f8                	mov    %edi,%eax
    3a38:	e8 45 fe ff ff       	call   0x3882
    3a3d:	83 c6 01             	add    $0x1,%esi
    3a40:	0f b6 16             	movzbl (%esi),%edx
    3a43:	84 d2                	test   %dl,%dl
    3a45:	75 ec                	jne    0x3a33
    3a47:	be 00 00 00 00       	mov    $0x0,%esi
    3a4c:	e9 02 ff ff ff       	jmp    0x3953
    3a51:	8b 7d 08             	mov    0x8(%ebp),%edi
    3a54:	eb ea                	jmp    0x3a40
    3a56:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    3a59:	0f be 17             	movsbl (%edi),%edx
    3a5c:	8b 45 08             	mov    0x8(%ebp),%eax
    3a5f:	e8 1e fe ff ff       	call   0x3882
    3a64:	83 c7 04             	add    $0x4,%edi
    3a67:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    3a6a:	be 00 00 00 00       	mov    $0x0,%esi
    3a6f:	e9 df fe ff ff       	jmp    0x3953
    3a74:	89 fa                	mov    %edi,%edx
    3a76:	8b 45 08             	mov    0x8(%ebp),%eax
    3a79:	e8 04 fe ff ff       	call   0x3882
    3a7e:	be 00 00 00 00       	mov    $0x0,%esi
    3a83:	e9 cb fe ff ff       	jmp    0x3953
    3a88:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a8b:	5b                   	pop    %ebx
    3a8c:	5e                   	pop    %esi
    3a8d:	5f                   	pop    %edi
    3a8e:	5d                   	pop    %ebp
    3a8f:	c3                   	ret    
    3a90:	f3 0f 1e fb          	endbr32 
    3a94:	55                   	push   %ebp
    3a95:	89 e5                	mov    %esp,%ebp
    3a97:	57                   	push   %edi
    3a98:	56                   	push   %esi
    3a99:	53                   	push   %ebx
    3a9a:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3a9d:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    3aa0:	a1 c0 5c 00 00       	mov    0x5cc0,%eax
    3aa5:	eb 02                	jmp    0x3aa9
    3aa7:	89 d0                	mov    %edx,%eax
    3aa9:	39 c8                	cmp    %ecx,%eax
    3aab:	73 04                	jae    0x3ab1
    3aad:	39 08                	cmp    %ecx,(%eax)
    3aaf:	77 12                	ja     0x3ac3
    3ab1:	8b 10                	mov    (%eax),%edx
    3ab3:	39 c2                	cmp    %eax,%edx
    3ab5:	77 f0                	ja     0x3aa7
    3ab7:	39 c8                	cmp    %ecx,%eax
    3ab9:	72 08                	jb     0x3ac3
    3abb:	39 ca                	cmp    %ecx,%edx
    3abd:	77 04                	ja     0x3ac3
    3abf:	89 d0                	mov    %edx,%eax
    3ac1:	eb e6                	jmp    0x3aa9
    3ac3:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3ac6:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3ac9:	8b 10                	mov    (%eax),%edx
    3acb:	39 d7                	cmp    %edx,%edi
    3acd:	74 19                	je     0x3ae8
    3acf:	89 53 f8             	mov    %edx,-0x8(%ebx)
    3ad2:	8b 50 04             	mov    0x4(%eax),%edx
    3ad5:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3ad8:	39 ce                	cmp    %ecx,%esi
    3ada:	74 1b                	je     0x3af7
    3adc:	89 08                	mov    %ecx,(%eax)
    3ade:	a3 c0 5c 00 00       	mov    %eax,0x5cc0
    3ae3:	5b                   	pop    %ebx
    3ae4:	5e                   	pop    %esi
    3ae5:	5f                   	pop    %edi
    3ae6:	5d                   	pop    %ebp
    3ae7:	c3                   	ret    
    3ae8:	03 72 04             	add    0x4(%edx),%esi
    3aeb:	89 73 fc             	mov    %esi,-0x4(%ebx)
    3aee:	8b 10                	mov    (%eax),%edx
    3af0:	8b 12                	mov    (%edx),%edx
    3af2:	89 53 f8             	mov    %edx,-0x8(%ebx)
    3af5:	eb db                	jmp    0x3ad2
    3af7:	03 53 fc             	add    -0x4(%ebx),%edx
    3afa:	89 50 04             	mov    %edx,0x4(%eax)
    3afd:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3b00:	89 10                	mov    %edx,(%eax)
    3b02:	eb da                	jmp    0x3ade
    3b04:	55                   	push   %ebp
    3b05:	89 e5                	mov    %esp,%ebp
    3b07:	53                   	push   %ebx
    3b08:	83 ec 04             	sub    $0x4,%esp
    3b0b:	89 c3                	mov    %eax,%ebx
    3b0d:	3d ff 0f 00 00       	cmp    $0xfff,%eax
    3b12:	77 05                	ja     0x3b19
    3b14:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3b19:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    3b20:	83 ec 0c             	sub    $0xc,%esp
    3b23:	50                   	push   %eax
    3b24:	e8 31 fd ff ff       	call   0x385a
    3b29:	83 c4 10             	add    $0x10,%esp
    3b2c:	83 f8 ff             	cmp    $0xffffffff,%eax
    3b2f:	74 1c                	je     0x3b4d
    3b31:	89 58 04             	mov    %ebx,0x4(%eax)
    3b34:	83 c0 08             	add    $0x8,%eax
    3b37:	83 ec 0c             	sub    $0xc,%esp
    3b3a:	50                   	push   %eax
    3b3b:	e8 50 ff ff ff       	call   0x3a90
    3b40:	a1 c0 5c 00 00       	mov    0x5cc0,%eax
    3b45:	83 c4 10             	add    $0x10,%esp
    3b48:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3b4b:	c9                   	leave  
    3b4c:	c3                   	ret    
    3b4d:	b8 00 00 00 00       	mov    $0x0,%eax
    3b52:	eb f4                	jmp    0x3b48
    3b54:	f3 0f 1e fb          	endbr32 
    3b58:	55                   	push   %ebp
    3b59:	89 e5                	mov    %esp,%ebp
    3b5b:	53                   	push   %ebx
    3b5c:	83 ec 04             	sub    $0x4,%esp
    3b5f:	8b 45 08             	mov    0x8(%ebp),%eax
    3b62:	8d 58 07             	lea    0x7(%eax),%ebx
    3b65:	c1 eb 03             	shr    $0x3,%ebx
    3b68:	83 c3 01             	add    $0x1,%ebx
    3b6b:	8b 0d c0 5c 00 00    	mov    0x5cc0,%ecx
    3b71:	85 c9                	test   %ecx,%ecx
    3b73:	74 04                	je     0x3b79
    3b75:	8b 01                	mov    (%ecx),%eax
    3b77:	eb 4b                	jmp    0x3bc4
    3b79:	c7 05 c0 5c 00 00 c4 	movl   $0x5cc4,0x5cc0
    3b80:	5c 00 00 
    3b83:	c7 05 c4 5c 00 00 c4 	movl   $0x5cc4,0x5cc4
    3b8a:	5c 00 00 
    3b8d:	c7 05 c8 5c 00 00 00 	movl   $0x0,0x5cc8
    3b94:	00 00 00 
    3b97:	b9 c4 5c 00 00       	mov    $0x5cc4,%ecx
    3b9c:	eb d7                	jmp    0x3b75
    3b9e:	74 1a                	je     0x3bba
    3ba0:	29 da                	sub    %ebx,%edx
    3ba2:	89 50 04             	mov    %edx,0x4(%eax)
    3ba5:	8d 04 d0             	lea    (%eax,%edx,8),%eax
    3ba8:	89 58 04             	mov    %ebx,0x4(%eax)
    3bab:	89 0d c0 5c 00 00    	mov    %ecx,0x5cc0
    3bb1:	83 c0 08             	add    $0x8,%eax
    3bb4:	83 c4 04             	add    $0x4,%esp
    3bb7:	5b                   	pop    %ebx
    3bb8:	5d                   	pop    %ebp
    3bb9:	c3                   	ret    
    3bba:	8b 10                	mov    (%eax),%edx
    3bbc:	89 11                	mov    %edx,(%ecx)
    3bbe:	eb eb                	jmp    0x3bab
    3bc0:	89 c1                	mov    %eax,%ecx
    3bc2:	8b 00                	mov    (%eax),%eax
    3bc4:	8b 50 04             	mov    0x4(%eax),%edx
    3bc7:	39 da                	cmp    %ebx,%edx
    3bc9:	73 d3                	jae    0x3b9e
    3bcb:	39 05 c0 5c 00 00    	cmp    %eax,0x5cc0
    3bd1:	75 ed                	jne    0x3bc0
    3bd3:	89 d8                	mov    %ebx,%eax
    3bd5:	e8 2a ff ff ff       	call   0x3b04
    3bda:	85 c0                	test   %eax,%eax
    3bdc:	75 e2                	jne    0x3bc0
    3bde:	eb d4                	jmp    0x3bb4
