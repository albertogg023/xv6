
_usertests:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
       0:	f3 0f 1e fb          	endbr32 
       4:	55                   	push   %ebp
       5:	89 e5                	mov    %esp,%ebp
       7:	83 ec 10             	sub    $0x10,%esp
       a:	68 1c 42 00 00       	push   $0x421c
       f:	ff 35 b8 61 00 00    	pushl  0x61b8
      15:	e8 b1 3e 00 00       	call   0x3ecb
      1a:	c7 04 24 af 41 00 00 	movl   $0x41af,(%esp)
      21:	e8 bc 3d 00 00       	call   0x3de2
      26:	83 c4 10             	add    $0x10,%esp
      29:	85 c0                	test   %eax,%eax
      2b:	78 54                	js     0x81
      2d:	83 ec 0c             	sub    $0xc,%esp
      30:	68 af 41 00 00       	push   $0x41af
      35:	e8 b0 3d 00 00       	call   0x3dea
      3a:	83 c4 10             	add    $0x10,%esp
      3d:	85 c0                	test   %eax,%eax
      3f:	78 5f                	js     0xa0
      41:	83 ec 0c             	sub    $0xc,%esp
      44:	68 ac 41 00 00       	push   $0x41ac
      49:	e8 7c 3d 00 00       	call   0x3dca
      4e:	83 c4 10             	add    $0x10,%esp
      51:	85 c0                	test   %eax,%eax
      53:	78 6a                	js     0xbf
      55:	83 ec 0c             	sub    $0xc,%esp
      58:	68 d1 41 00 00       	push   $0x41d1
      5d:	e8 88 3d 00 00       	call   0x3dea
      62:	83 c4 10             	add    $0x10,%esp
      65:	85 c0                	test   %eax,%eax
      67:	78 75                	js     0xde
      69:	83 ec 08             	sub    $0x8,%esp
      6c:	68 54 42 00 00       	push   $0x4254
      71:	ff 35 b8 61 00 00    	pushl  0x61b8
      77:	e8 4f 3e 00 00       	call   0x3ecb
      7c:	83 c4 10             	add    $0x10,%esp
      7f:	c9                   	leave  
      80:	c3                   	ret    
      81:	83 ec 08             	sub    $0x8,%esp
      84:	68 88 41 00 00       	push   $0x4188
      89:	ff 35 b8 61 00 00    	pushl  0x61b8
      8f:	e8 37 3e 00 00       	call   0x3ecb
      94:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      9b:	e8 da 3c 00 00       	call   0x3d7a
      a0:	83 ec 08             	sub    $0x8,%esp
      a3:	68 96 41 00 00       	push   $0x4196
      a8:	ff 35 b8 61 00 00    	pushl  0x61b8
      ae:	e8 18 3e 00 00       	call   0x3ecb
      b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      ba:	e8 bb 3c 00 00       	call   0x3d7a
      bf:	83 ec 08             	sub    $0x8,%esp
      c2:	68 b7 41 00 00       	push   $0x41b7
      c7:	ff 35 b8 61 00 00    	pushl  0x61b8
      cd:	e8 f9 3d 00 00       	call   0x3ecb
      d2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      d9:	e8 9c 3c 00 00       	call   0x3d7a
      de:	83 ec 08             	sub    $0x8,%esp
      e1:	68 d3 41 00 00       	push   $0x41d3
      e6:	ff 35 b8 61 00 00    	pushl  0x61b8
      ec:	e8 da 3d 00 00       	call   0x3ecb
      f1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      f8:	e8 7d 3c 00 00       	call   0x3d7a
      fd:	f3 0f 1e fb          	endbr32 
     101:	55                   	push   %ebp
     102:	89 e5                	mov    %esp,%ebp
     104:	83 ec 10             	sub    $0x10,%esp
     107:	68 e3 41 00 00       	push   $0x41e3
     10c:	ff 35 b8 61 00 00    	pushl  0x61b8
     112:	e8 b4 3d 00 00       	call   0x3ecb
     117:	e8 56 3c 00 00       	call   0x3d72
     11c:	83 c4 10             	add    $0x10,%esp
     11f:	85 c0                	test   %eax,%eax
     121:	78 4c                	js     0x16f
     123:	0f 85 c2 00 00 00    	jne    0x1eb
     129:	83 ec 0c             	sub    $0xc,%esp
     12c:	68 af 41 00 00       	push   $0x41af
     131:	e8 ac 3c 00 00       	call   0x3de2
     136:	83 c4 10             	add    $0x10,%esp
     139:	85 c0                	test   %eax,%eax
     13b:	78 51                	js     0x18e
     13d:	83 ec 0c             	sub    $0xc,%esp
     140:	68 af 41 00 00       	push   $0x41af
     145:	e8 a0 3c 00 00       	call   0x3dea
     14a:	83 c4 10             	add    $0x10,%esp
     14d:	85 c0                	test   %eax,%eax
     14f:	78 5c                	js     0x1ad
     151:	83 ec 0c             	sub    $0xc,%esp
     154:	68 ac 41 00 00       	push   $0x41ac
     159:	e8 6c 3c 00 00       	call   0x3dca
     15e:	83 c4 10             	add    $0x10,%esp
     161:	85 c0                	test   %eax,%eax
     163:	78 67                	js     0x1cc
     165:	83 ec 0c             	sub    $0xc,%esp
     168:	6a 00                	push   $0x0
     16a:	e8 0b 3c 00 00       	call   0x3d7a
     16f:	83 ec 08             	sub    $0x8,%esp
     172:	68 c9 50 00 00       	push   $0x50c9
     177:	ff 35 b8 61 00 00    	pushl  0x61b8
     17d:	e8 49 3d 00 00       	call   0x3ecb
     182:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     189:	e8 ec 3b 00 00       	call   0x3d7a
     18e:	83 ec 08             	sub    $0x8,%esp
     191:	68 88 41 00 00       	push   $0x4188
     196:	ff 35 b8 61 00 00    	pushl  0x61b8
     19c:	e8 2a 3d 00 00       	call   0x3ecb
     1a1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1a8:	e8 cd 3b 00 00       	call   0x3d7a
     1ad:	83 ec 08             	sub    $0x8,%esp
     1b0:	68 f2 41 00 00       	push   $0x41f2
     1b5:	ff 35 b8 61 00 00    	pushl  0x61b8
     1bb:	e8 0b 3d 00 00       	call   0x3ecb
     1c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1c7:	e8 ae 3b 00 00       	call   0x3d7a
     1cc:	83 ec 08             	sub    $0x8,%esp
     1cf:	68 b7 41 00 00       	push   $0x41b7
     1d4:	ff 35 b8 61 00 00    	pushl  0x61b8
     1da:	e8 ec 3c 00 00       	call   0x3ecb
     1df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1e6:	e8 8f 3b 00 00       	call   0x3d7a
     1eb:	83 ec 0c             	sub    $0xc,%esp
     1ee:	6a 00                	push   $0x0
     1f0:	e8 8d 3b 00 00       	call   0x3d82
     1f5:	83 c4 08             	add    $0x8,%esp
     1f8:	68 06 42 00 00       	push   $0x4206
     1fd:	ff 35 b8 61 00 00    	pushl  0x61b8
     203:	e8 c3 3c 00 00       	call   0x3ecb
     208:	83 c4 10             	add    $0x10,%esp
     20b:	c9                   	leave  
     20c:	c3                   	ret    
     20d:	f3 0f 1e fb          	endbr32 
     211:	55                   	push   %ebp
     212:	89 e5                	mov    %esp,%ebp
     214:	83 ec 10             	sub    $0x10,%esp
     217:	68 18 42 00 00       	push   $0x4218
     21c:	ff 35 b8 61 00 00    	pushl  0x61b8
     222:	e8 a4 3c 00 00       	call   0x3ecb
     227:	c7 04 24 27 42 00 00 	movl   $0x4227,(%esp)
     22e:	e8 af 3b 00 00       	call   0x3de2
     233:	83 c4 10             	add    $0x10,%esp
     236:	85 c0                	test   %eax,%eax
     238:	78 40                	js     0x27a
     23a:	e8 33 3b 00 00       	call   0x3d72
     23f:	85 c0                	test   %eax,%eax
     241:	78 56                	js     0x299
     243:	75 7d                	jne    0x2c2
     245:	83 ec 08             	sub    $0x8,%esp
     248:	6a 02                	push   $0x2
     24a:	68 27 42 00 00       	push   $0x4227
     24f:	e8 66 3b 00 00       	call   0x3dba
     254:	83 c4 10             	add    $0x10,%esp
     257:	85 c0                	test   %eax,%eax
     259:	78 5d                	js     0x2b8
     25b:	83 ec 08             	sub    $0x8,%esp
     25e:	68 ac 51 00 00       	push   $0x51ac
     263:	ff 35 b8 61 00 00    	pushl  0x61b8
     269:	e8 5d 3c 00 00       	call   0x3ecb
     26e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     275:	e8 00 3b 00 00       	call   0x3d7a
     27a:	83 ec 08             	sub    $0x8,%esp
     27d:	68 2d 42 00 00       	push   $0x422d
     282:	ff 35 b8 61 00 00    	pushl  0x61b8
     288:	e8 3e 3c 00 00       	call   0x3ecb
     28d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     294:	e8 e1 3a 00 00       	call   0x3d7a
     299:	83 ec 08             	sub    $0x8,%esp
     29c:	68 c9 50 00 00       	push   $0x50c9
     2a1:	ff 35 b8 61 00 00    	pushl  0x61b8
     2a7:	e8 1f 3c 00 00       	call   0x3ecb
     2ac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     2b3:	e8 c2 3a 00 00       	call   0x3d7a
     2b8:	83 ec 0c             	sub    $0xc,%esp
     2bb:	6a 00                	push   $0x0
     2bd:	e8 b8 3a 00 00       	call   0x3d7a
     2c2:	83 ec 0c             	sub    $0xc,%esp
     2c5:	6a 01                	push   $0x1
     2c7:	e8 3e 3b 00 00       	call   0x3e0a
     2cc:	c7 04 24 27 42 00 00 	movl   $0x4227,(%esp)
     2d3:	e8 f2 3a 00 00       	call   0x3dca
     2d8:	83 c4 10             	add    $0x10,%esp
     2db:	85 c0                	test   %eax,%eax
     2dd:	75 22                	jne    0x301
     2df:	83 ec 0c             	sub    $0xc,%esp
     2e2:	6a 00                	push   $0x0
     2e4:	e8 99 3a 00 00       	call   0x3d82
     2e9:	83 c4 08             	add    $0x8,%esp
     2ec:	68 50 42 00 00       	push   $0x4250
     2f1:	ff 35 b8 61 00 00    	pushl  0x61b8
     2f7:	e8 cf 3b 00 00       	call   0x3ecb
     2fc:	83 c4 10             	add    $0x10,%esp
     2ff:	c9                   	leave  
     300:	c3                   	ret    
     301:	83 ec 08             	sub    $0x8,%esp
     304:	68 41 42 00 00       	push   $0x4241
     309:	ff 35 b8 61 00 00    	pushl  0x61b8
     30f:	e8 b7 3b 00 00       	call   0x3ecb
     314:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     31b:	e8 5a 3a 00 00       	call   0x3d7a
     320:	f3 0f 1e fb          	endbr32 
     324:	55                   	push   %ebp
     325:	89 e5                	mov    %esp,%ebp
     327:	83 ec 10             	sub    $0x10,%esp
     32a:	68 62 42 00 00       	push   $0x4262
     32f:	ff 35 b8 61 00 00    	pushl  0x61b8
     335:	e8 91 3b 00 00       	call   0x3ecb
     33a:	83 c4 08             	add    $0x8,%esp
     33d:	6a 00                	push   $0x0
     33f:	68 6d 42 00 00       	push   $0x426d
     344:	e8 71 3a 00 00       	call   0x3dba
     349:	83 c4 10             	add    $0x10,%esp
     34c:	85 c0                	test   %eax,%eax
     34e:	78 37                	js     0x387
     350:	83 ec 0c             	sub    $0xc,%esp
     353:	50                   	push   %eax
     354:	e8 49 3a 00 00       	call   0x3da2
     359:	83 c4 08             	add    $0x8,%esp
     35c:	6a 00                	push   $0x0
     35e:	68 85 42 00 00       	push   $0x4285
     363:	e8 52 3a 00 00       	call   0x3dba
     368:	83 c4 10             	add    $0x10,%esp
     36b:	85 c0                	test   %eax,%eax
     36d:	79 37                	jns    0x3a6
     36f:	83 ec 08             	sub    $0x8,%esp
     372:	68 b0 42 00 00       	push   $0x42b0
     377:	ff 35 b8 61 00 00    	pushl  0x61b8
     37d:	e8 49 3b 00 00       	call   0x3ecb
     382:	83 c4 10             	add    $0x10,%esp
     385:	c9                   	leave  
     386:	c3                   	ret    
     387:	83 ec 08             	sub    $0x8,%esp
     38a:	68 72 42 00 00       	push   $0x4272
     38f:	ff 35 b8 61 00 00    	pushl  0x61b8
     395:	e8 31 3b 00 00       	call   0x3ecb
     39a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3a1:	e8 d4 39 00 00       	call   0x3d7a
     3a6:	83 ec 08             	sub    $0x8,%esp
     3a9:	68 92 42 00 00       	push   $0x4292
     3ae:	ff 35 b8 61 00 00    	pushl  0x61b8
     3b4:	e8 12 3b 00 00       	call   0x3ecb
     3b9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3c0:	e8 b5 39 00 00       	call   0x3d7a
     3c5:	f3 0f 1e fb          	endbr32 
     3c9:	55                   	push   %ebp
     3ca:	89 e5                	mov    %esp,%ebp
     3cc:	56                   	push   %esi
     3cd:	53                   	push   %ebx
     3ce:	83 ec 08             	sub    $0x8,%esp
     3d1:	68 be 42 00 00       	push   $0x42be
     3d6:	ff 35 b8 61 00 00    	pushl  0x61b8
     3dc:	e8 ea 3a 00 00       	call   0x3ecb
     3e1:	83 c4 08             	add    $0x8,%esp
     3e4:	68 02 02 00 00       	push   $0x202
     3e9:	68 cf 42 00 00       	push   $0x42cf
     3ee:	e8 c7 39 00 00       	call   0x3dba
     3f3:	83 c4 10             	add    $0x10,%esp
     3f6:	85 c0                	test   %eax,%eax
     3f8:	78 5b                	js     0x455
     3fa:	89 c6                	mov    %eax,%esi
     3fc:	83 ec 08             	sub    $0x8,%esp
     3ff:	68 d5 42 00 00       	push   $0x42d5
     404:	ff 35 b8 61 00 00    	pushl  0x61b8
     40a:	e8 bc 3a 00 00       	call   0x3ecb
     40f:	83 c4 10             	add    $0x10,%esp
     412:	bb 00 00 00 00       	mov    $0x0,%ebx
     417:	83 fb 63             	cmp    $0x63,%ebx
     41a:	0f 8f 94 00 00 00    	jg     0x4b4
     420:	83 ec 04             	sub    $0x4,%esp
     423:	6a 0a                	push   $0xa
     425:	68 0c 43 00 00       	push   $0x430c
     42a:	56                   	push   %esi
     42b:	e8 6a 39 00 00       	call   0x3d9a
     430:	83 c4 10             	add    $0x10,%esp
     433:	83 f8 0a             	cmp    $0xa,%eax
     436:	75 3c                	jne    0x474
     438:	83 ec 04             	sub    $0x4,%esp
     43b:	6a 0a                	push   $0xa
     43d:	68 17 43 00 00       	push   $0x4317
     442:	56                   	push   %esi
     443:	e8 52 39 00 00       	call   0x3d9a
     448:	83 c4 10             	add    $0x10,%esp
     44b:	83 f8 0a             	cmp    $0xa,%eax
     44e:	75 44                	jne    0x494
     450:	83 c3 01             	add    $0x1,%ebx
     453:	eb c2                	jmp    0x417
     455:	83 ec 08             	sub    $0x8,%esp
     458:	68 f0 42 00 00       	push   $0x42f0
     45d:	ff 35 b8 61 00 00    	pushl  0x61b8
     463:	e8 63 3a 00 00       	call   0x3ecb
     468:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     46f:	e8 06 39 00 00       	call   0x3d7a
     474:	83 ec 04             	sub    $0x4,%esp
     477:	53                   	push   %ebx
     478:	68 d0 51 00 00       	push   $0x51d0
     47d:	ff 35 b8 61 00 00    	pushl  0x61b8
     483:	e8 43 3a 00 00       	call   0x3ecb
     488:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     48f:	e8 e6 38 00 00       	call   0x3d7a
     494:	83 ec 04             	sub    $0x4,%esp
     497:	53                   	push   %ebx
     498:	68 f4 51 00 00       	push   $0x51f4
     49d:	ff 35 b8 61 00 00    	pushl  0x61b8
     4a3:	e8 23 3a 00 00       	call   0x3ecb
     4a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4af:	e8 c6 38 00 00       	call   0x3d7a
     4b4:	83 ec 08             	sub    $0x8,%esp
     4b7:	68 22 43 00 00       	push   $0x4322
     4bc:	ff 35 b8 61 00 00    	pushl  0x61b8
     4c2:	e8 04 3a 00 00       	call   0x3ecb
     4c7:	89 34 24             	mov    %esi,(%esp)
     4ca:	e8 d3 38 00 00       	call   0x3da2
     4cf:	83 c4 08             	add    $0x8,%esp
     4d2:	6a 00                	push   $0x0
     4d4:	68 cf 42 00 00       	push   $0x42cf
     4d9:	e8 dc 38 00 00       	call   0x3dba
     4de:	89 c3                	mov    %eax,%ebx
     4e0:	83 c4 10             	add    $0x10,%esp
     4e3:	85 c0                	test   %eax,%eax
     4e5:	78 7b                	js     0x562
     4e7:	83 ec 08             	sub    $0x8,%esp
     4ea:	68 2d 43 00 00       	push   $0x432d
     4ef:	ff 35 b8 61 00 00    	pushl  0x61b8
     4f5:	e8 d1 39 00 00       	call   0x3ecb
     4fa:	83 c4 0c             	add    $0xc,%esp
     4fd:	68 d0 07 00 00       	push   $0x7d0
     502:	68 a0 89 00 00       	push   $0x89a0
     507:	53                   	push   %ebx
     508:	e8 85 38 00 00       	call   0x3d92
     50d:	83 c4 10             	add    $0x10,%esp
     510:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     515:	75 6a                	jne    0x581
     517:	83 ec 08             	sub    $0x8,%esp
     51a:	68 61 43 00 00       	push   $0x4361
     51f:	ff 35 b8 61 00 00    	pushl  0x61b8
     525:	e8 a1 39 00 00       	call   0x3ecb
     52a:	89 1c 24             	mov    %ebx,(%esp)
     52d:	e8 70 38 00 00       	call   0x3da2
     532:	c7 04 24 cf 42 00 00 	movl   $0x42cf,(%esp)
     539:	e8 8c 38 00 00       	call   0x3dca
     53e:	83 c4 10             	add    $0x10,%esp
     541:	85 c0                	test   %eax,%eax
     543:	78 5b                	js     0x5a0
     545:	83 ec 08             	sub    $0x8,%esp
     548:	68 89 43 00 00       	push   $0x4389
     54d:	ff 35 b8 61 00 00    	pushl  0x61b8
     553:	e8 73 39 00 00       	call   0x3ecb
     558:	83 c4 10             	add    $0x10,%esp
     55b:	8d 65 f8             	lea    -0x8(%ebp),%esp
     55e:	5b                   	pop    %ebx
     55f:	5e                   	pop    %esi
     560:	5d                   	pop    %ebp
     561:	c3                   	ret    
     562:	83 ec 08             	sub    $0x8,%esp
     565:	68 46 43 00 00       	push   $0x4346
     56a:	ff 35 b8 61 00 00    	pushl  0x61b8
     570:	e8 56 39 00 00       	call   0x3ecb
     575:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     57c:	e8 f9 37 00 00       	call   0x3d7a
     581:	83 ec 08             	sub    $0x8,%esp
     584:	68 8d 46 00 00       	push   $0x468d
     589:	ff 35 b8 61 00 00    	pushl  0x61b8
     58f:	e8 37 39 00 00       	call   0x3ecb
     594:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     59b:	e8 da 37 00 00       	call   0x3d7a
     5a0:	83 ec 08             	sub    $0x8,%esp
     5a3:	68 74 43 00 00       	push   $0x4374
     5a8:	ff 35 b8 61 00 00    	pushl  0x61b8
     5ae:	e8 18 39 00 00       	call   0x3ecb
     5b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     5ba:	e8 bb 37 00 00       	call   0x3d7a
     5bf:	f3 0f 1e fb          	endbr32 
     5c3:	55                   	push   %ebp
     5c4:	89 e5                	mov    %esp,%ebp
     5c6:	56                   	push   %esi
     5c7:	53                   	push   %ebx
     5c8:	83 ec 08             	sub    $0x8,%esp
     5cb:	68 9d 43 00 00       	push   $0x439d
     5d0:	ff 35 b8 61 00 00    	pushl  0x61b8
     5d6:	e8 f0 38 00 00       	call   0x3ecb
     5db:	83 c4 08             	add    $0x8,%esp
     5de:	68 02 02 00 00       	push   $0x202
     5e3:	68 17 44 00 00       	push   $0x4417
     5e8:	e8 cd 37 00 00       	call   0x3dba
     5ed:	83 c4 10             	add    $0x10,%esp
     5f0:	85 c0                	test   %eax,%eax
     5f2:	78 37                	js     0x62b
     5f4:	89 c6                	mov    %eax,%esi
     5f6:	bb 00 00 00 00       	mov    $0x0,%ebx
     5fb:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     601:	77 67                	ja     0x66a
     603:	89 1d a0 89 00 00    	mov    %ebx,0x89a0
     609:	83 ec 04             	sub    $0x4,%esp
     60c:	68 00 02 00 00       	push   $0x200
     611:	68 a0 89 00 00       	push   $0x89a0
     616:	56                   	push   %esi
     617:	e8 7e 37 00 00       	call   0x3d9a
     61c:	83 c4 10             	add    $0x10,%esp
     61f:	3d 00 02 00 00       	cmp    $0x200,%eax
     624:	75 24                	jne    0x64a
     626:	83 c3 01             	add    $0x1,%ebx
     629:	eb d0                	jmp    0x5fb
     62b:	83 ec 08             	sub    $0x8,%esp
     62e:	68 ad 43 00 00       	push   $0x43ad
     633:	ff 35 b8 61 00 00    	pushl  0x61b8
     639:	e8 8d 38 00 00       	call   0x3ecb
     63e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     645:	e8 30 37 00 00       	call   0x3d7a
     64a:	83 ec 04             	sub    $0x4,%esp
     64d:	53                   	push   %ebx
     64e:	68 c7 43 00 00       	push   $0x43c7
     653:	ff 35 b8 61 00 00    	pushl  0x61b8
     659:	e8 6d 38 00 00       	call   0x3ecb
     65e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     665:	e8 10 37 00 00       	call   0x3d7a
     66a:	83 ec 0c             	sub    $0xc,%esp
     66d:	56                   	push   %esi
     66e:	e8 2f 37 00 00       	call   0x3da2
     673:	83 c4 08             	add    $0x8,%esp
     676:	6a 00                	push   $0x0
     678:	68 17 44 00 00       	push   $0x4417
     67d:	e8 38 37 00 00       	call   0x3dba
     682:	89 c6                	mov    %eax,%esi
     684:	83 c4 10             	add    $0x10,%esp
     687:	85 c0                	test   %eax,%eax
     689:	78 3c                	js     0x6c7
     68b:	bb 00 00 00 00       	mov    $0x0,%ebx
     690:	83 ec 04             	sub    $0x4,%esp
     693:	68 00 02 00 00       	push   $0x200
     698:	68 a0 89 00 00       	push   $0x89a0
     69d:	56                   	push   %esi
     69e:	e8 ef 36 00 00       	call   0x3d92
     6a3:	83 c4 10             	add    $0x10,%esp
     6a6:	85 c0                	test   %eax,%eax
     6a8:	74 3c                	je     0x6e6
     6aa:	3d 00 02 00 00       	cmp    $0x200,%eax
     6af:	0f 85 92 00 00 00    	jne    0x747
     6b5:	a1 a0 89 00 00       	mov    0x89a0,%eax
     6ba:	39 d8                	cmp    %ebx,%eax
     6bc:	0f 85 a5 00 00 00    	jne    0x767
     6c2:	83 c3 01             	add    $0x1,%ebx
     6c5:	eb c9                	jmp    0x690
     6c7:	83 ec 08             	sub    $0x8,%esp
     6ca:	68 e5 43 00 00       	push   $0x43e5
     6cf:	ff 35 b8 61 00 00    	pushl  0x61b8
     6d5:	e8 f1 37 00 00       	call   0x3ecb
     6da:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     6e1:	e8 94 36 00 00       	call   0x3d7a
     6e6:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     6ec:	74 39                	je     0x727
     6ee:	83 ec 0c             	sub    $0xc,%esp
     6f1:	56                   	push   %esi
     6f2:	e8 ab 36 00 00       	call   0x3da2
     6f7:	c7 04 24 17 44 00 00 	movl   $0x4417,(%esp)
     6fe:	e8 c7 36 00 00       	call   0x3dca
     703:	83 c4 10             	add    $0x10,%esp
     706:	85 c0                	test   %eax,%eax
     708:	78 7b                	js     0x785
     70a:	83 ec 08             	sub    $0x8,%esp
     70d:	68 3e 44 00 00       	push   $0x443e
     712:	ff 35 b8 61 00 00    	pushl  0x61b8
     718:	e8 ae 37 00 00       	call   0x3ecb
     71d:	83 c4 10             	add    $0x10,%esp
     720:	8d 65 f8             	lea    -0x8(%ebp),%esp
     723:	5b                   	pop    %ebx
     724:	5e                   	pop    %esi
     725:	5d                   	pop    %ebp
     726:	c3                   	ret    
     727:	83 ec 04             	sub    $0x4,%esp
     72a:	53                   	push   %ebx
     72b:	68 fe 43 00 00       	push   $0x43fe
     730:	ff 35 b8 61 00 00    	pushl  0x61b8
     736:	e8 90 37 00 00       	call   0x3ecb
     73b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     742:	e8 33 36 00 00       	call   0x3d7a
     747:	83 ec 04             	sub    $0x4,%esp
     74a:	50                   	push   %eax
     74b:	68 1b 44 00 00       	push   $0x441b
     750:	ff 35 b8 61 00 00    	pushl  0x61b8
     756:	e8 70 37 00 00       	call   0x3ecb
     75b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     762:	e8 13 36 00 00       	call   0x3d7a
     767:	50                   	push   %eax
     768:	53                   	push   %ebx
     769:	68 18 52 00 00       	push   $0x5218
     76e:	ff 35 b8 61 00 00    	pushl  0x61b8
     774:	e8 52 37 00 00       	call   0x3ecb
     779:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     780:	e8 f5 35 00 00       	call   0x3d7a
     785:	83 ec 08             	sub    $0x8,%esp
     788:	68 2b 44 00 00       	push   $0x442b
     78d:	ff 35 b8 61 00 00    	pushl  0x61b8
     793:	e8 33 37 00 00       	call   0x3ecb
     798:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     79f:	e8 d6 35 00 00       	call   0x3d7a
     7a4:	f3 0f 1e fb          	endbr32 
     7a8:	55                   	push   %ebp
     7a9:	89 e5                	mov    %esp,%ebp
     7ab:	53                   	push   %ebx
     7ac:	83 ec 0c             	sub    $0xc,%esp
     7af:	68 38 52 00 00       	push   $0x5238
     7b4:	ff 35 b8 61 00 00    	pushl  0x61b8
     7ba:	e8 0c 37 00 00       	call   0x3ecb
     7bf:	c6 05 a0 a9 00 00 61 	movb   $0x61,0xa9a0
     7c6:	c6 05 a2 a9 00 00 00 	movb   $0x0,0xa9a2
     7cd:	83 c4 10             	add    $0x10,%esp
     7d0:	bb 00 00 00 00       	mov    $0x0,%ebx
     7d5:	eb 28                	jmp    0x7ff
     7d7:	8d 43 30             	lea    0x30(%ebx),%eax
     7da:	a2 a1 a9 00 00       	mov    %al,0xa9a1
     7df:	83 ec 08             	sub    $0x8,%esp
     7e2:	68 02 02 00 00       	push   $0x202
     7e7:	68 a0 a9 00 00       	push   $0xa9a0
     7ec:	e8 c9 35 00 00       	call   0x3dba
     7f1:	89 04 24             	mov    %eax,(%esp)
     7f4:	e8 a9 35 00 00       	call   0x3da2
     7f9:	83 c3 01             	add    $0x1,%ebx
     7fc:	83 c4 10             	add    $0x10,%esp
     7ff:	83 fb 33             	cmp    $0x33,%ebx
     802:	7e d3                	jle    0x7d7
     804:	c6 05 a0 a9 00 00 61 	movb   $0x61,0xa9a0
     80b:	c6 05 a2 a9 00 00 00 	movb   $0x0,0xa9a2
     812:	bb 00 00 00 00       	mov    $0x0,%ebx
     817:	eb 1b                	jmp    0x834
     819:	8d 43 30             	lea    0x30(%ebx),%eax
     81c:	a2 a1 a9 00 00       	mov    %al,0xa9a1
     821:	83 ec 0c             	sub    $0xc,%esp
     824:	68 a0 a9 00 00       	push   $0xa9a0
     829:	e8 9c 35 00 00       	call   0x3dca
     82e:	83 c3 01             	add    $0x1,%ebx
     831:	83 c4 10             	add    $0x10,%esp
     834:	83 fb 33             	cmp    $0x33,%ebx
     837:	7e e0                	jle    0x819
     839:	83 ec 08             	sub    $0x8,%esp
     83c:	68 60 52 00 00       	push   $0x5260
     841:	ff 35 b8 61 00 00    	pushl  0x61b8
     847:	e8 7f 36 00 00       	call   0x3ecb
     84c:	83 c4 10             	add    $0x10,%esp
     84f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     852:	c9                   	leave  
     853:	c3                   	ret    
     854:	f3 0f 1e fb          	endbr32 
     858:	55                   	push   %ebp
     859:	89 e5                	mov    %esp,%ebp
     85b:	83 ec 10             	sub    $0x10,%esp
     85e:	68 4c 44 00 00       	push   $0x444c
     863:	ff 35 b8 61 00 00    	pushl  0x61b8
     869:	e8 5d 36 00 00       	call   0x3ecb
     86e:	c7 04 24 58 44 00 00 	movl   $0x4458,(%esp)
     875:	e8 68 35 00 00       	call   0x3de2
     87a:	83 c4 10             	add    $0x10,%esp
     87d:	85 c0                	test   %eax,%eax
     87f:	78 54                	js     0x8d5
     881:	83 ec 0c             	sub    $0xc,%esp
     884:	68 58 44 00 00       	push   $0x4458
     889:	e8 5c 35 00 00       	call   0x3dea
     88e:	83 c4 10             	add    $0x10,%esp
     891:	85 c0                	test   %eax,%eax
     893:	78 5f                	js     0x8f4
     895:	83 ec 0c             	sub    $0xc,%esp
     898:	68 fd 49 00 00       	push   $0x49fd
     89d:	e8 48 35 00 00       	call   0x3dea
     8a2:	83 c4 10             	add    $0x10,%esp
     8a5:	85 c0                	test   %eax,%eax
     8a7:	78 6a                	js     0x913
     8a9:	83 ec 0c             	sub    $0xc,%esp
     8ac:	68 58 44 00 00       	push   $0x4458
     8b1:	e8 14 35 00 00       	call   0x3dca
     8b6:	83 c4 10             	add    $0x10,%esp
     8b9:	85 c0                	test   %eax,%eax
     8bb:	78 75                	js     0x932
     8bd:	83 ec 08             	sub    $0x8,%esp
     8c0:	68 95 44 00 00       	push   $0x4495
     8c5:	ff 35 b8 61 00 00    	pushl  0x61b8
     8cb:	e8 fb 35 00 00       	call   0x3ecb
     8d0:	83 c4 10             	add    $0x10,%esp
     8d3:	c9                   	leave  
     8d4:	c3                   	ret    
     8d5:	83 ec 08             	sub    $0x8,%esp
     8d8:	68 88 41 00 00       	push   $0x4188
     8dd:	ff 35 b8 61 00 00    	pushl  0x61b8
     8e3:	e8 e3 35 00 00       	call   0x3ecb
     8e8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8ef:	e8 86 34 00 00       	call   0x3d7a
     8f4:	83 ec 08             	sub    $0x8,%esp
     8f7:	68 5d 44 00 00       	push   $0x445d
     8fc:	ff 35 b8 61 00 00    	pushl  0x61b8
     902:	e8 c4 35 00 00       	call   0x3ecb
     907:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     90e:	e8 67 34 00 00       	call   0x3d7a
     913:	83 ec 08             	sub    $0x8,%esp
     916:	68 70 44 00 00       	push   $0x4470
     91b:	ff 35 b8 61 00 00    	pushl  0x61b8
     921:	e8 a5 35 00 00       	call   0x3ecb
     926:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     92d:	e8 48 34 00 00       	call   0x3d7a
     932:	83 ec 08             	sub    $0x8,%esp
     935:	68 81 44 00 00       	push   $0x4481
     93a:	ff 35 b8 61 00 00    	pushl  0x61b8
     940:	e8 86 35 00 00       	call   0x3ecb
     945:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     94c:	e8 29 34 00 00       	call   0x3d7a
     951:	f3 0f 1e fb          	endbr32 
     955:	55                   	push   %ebp
     956:	89 e5                	mov    %esp,%ebp
     958:	83 ec 10             	sub    $0x10,%esp
     95b:	68 a4 44 00 00       	push   $0x44a4
     960:	ff 35 b8 61 00 00    	pushl  0x61b8
     966:	e8 60 35 00 00       	call   0x3ecb
     96b:	83 c4 08             	add    $0x8,%esp
     96e:	68 bc 61 00 00       	push   $0x61bc
     973:	68 6d 42 00 00       	push   $0x426d
     978:	e8 35 34 00 00       	call   0x3db2
     97d:	83 c4 10             	add    $0x10,%esp
     980:	85 c0                	test   %eax,%eax
     982:	78 02                	js     0x986
     984:	c9                   	leave  
     985:	c3                   	ret    
     986:	83 ec 08             	sub    $0x8,%esp
     989:	68 af 44 00 00       	push   $0x44af
     98e:	ff 35 b8 61 00 00    	pushl  0x61b8
     994:	e8 32 35 00 00       	call   0x3ecb
     999:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9a0:	e8 d5 33 00 00       	call   0x3d7a
     9a5:	f3 0f 1e fb          	endbr32 
     9a9:	55                   	push   %ebp
     9aa:	89 e5                	mov    %esp,%ebp
     9ac:	57                   	push   %edi
     9ad:	56                   	push   %esi
     9ae:	53                   	push   %ebx
     9af:	83 ec 38             	sub    $0x38,%esp
     9b2:	8d 45 e0             	lea    -0x20(%ebp),%eax
     9b5:	50                   	push   %eax
     9b6:	e8 cf 33 00 00       	call   0x3d8a
     9bb:	83 c4 10             	add    $0x10,%esp
     9be:	85 c0                	test   %eax,%eax
     9c0:	75 78                	jne    0xa3a
     9c2:	89 c6                	mov    %eax,%esi
     9c4:	e8 a9 33 00 00       	call   0x3d72
     9c9:	89 c7                	mov    %eax,%edi
     9cb:	85 c0                	test   %eax,%eax
     9cd:	0f 84 82 00 00 00    	je     0xa55
     9d3:	0f 8e 81 01 00 00    	jle    0xb5a
     9d9:	83 ec 0c             	sub    $0xc,%esp
     9dc:	ff 75 e4             	pushl  -0x1c(%ebp)
     9df:	e8 be 33 00 00       	call   0x3da2
     9e4:	83 c4 10             	add    $0x10,%esp
     9e7:	89 75 d0             	mov    %esi,-0x30(%ebp)
     9ea:	89 f3                	mov    %esi,%ebx
     9ec:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
     9f3:	83 ec 04             	sub    $0x4,%esp
     9f6:	ff 75 d4             	pushl  -0x2c(%ebp)
     9f9:	68 a0 89 00 00       	push   $0x89a0
     9fe:	ff 75 e0             	pushl  -0x20(%ebp)
     a01:	e8 8c 33 00 00       	call   0x3d92
     a06:	89 c7                	mov    %eax,%edi
     a08:	83 c4 10             	add    $0x10,%esp
     a0b:	85 c0                	test   %eax,%eax
     a0d:	0f 8e f5 00 00 00    	jle    0xb08
     a13:	89 f0                	mov    %esi,%eax
     a15:	89 d9                	mov    %ebx,%ecx
     a17:	39 f8                	cmp    %edi,%eax
     a19:	0f 8d c7 00 00 00    	jge    0xae6
     a1f:	0f be 98 a0 89 00 00 	movsbl 0x89a0(%eax),%ebx
     a26:	8d 51 01             	lea    0x1(%ecx),%edx
     a29:	31 cb                	xor    %ecx,%ebx
     a2b:	84 db                	test   %bl,%bl
     a2d:	0f 85 99 00 00 00    	jne    0xacc
     a33:	83 c0 01             	add    $0x1,%eax
     a36:	89 d1                	mov    %edx,%ecx
     a38:	eb dd                	jmp    0xa17
     a3a:	83 ec 08             	sub    $0x8,%esp
     a3d:	68 c1 44 00 00       	push   $0x44c1
     a42:	6a 01                	push   $0x1
     a44:	e8 82 34 00 00       	call   0x3ecb
     a49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a50:	e8 25 33 00 00       	call   0x3d7a
     a55:	83 ec 0c             	sub    $0xc,%esp
     a58:	ff 75 e0             	pushl  -0x20(%ebp)
     a5b:	e8 42 33 00 00       	call   0x3da2
     a60:	83 c4 10             	add    $0x10,%esp
     a63:	89 fe                	mov    %edi,%esi
     a65:	89 fb                	mov    %edi,%ebx
     a67:	eb 22                	jmp    0xa8b
     a69:	83 ec 04             	sub    $0x4,%esp
     a6c:	68 09 04 00 00       	push   $0x409
     a71:	68 a0 89 00 00       	push   $0x89a0
     a76:	ff 75 e4             	pushl  -0x1c(%ebp)
     a79:	e8 1c 33 00 00       	call   0x3d9a
     a7e:	83 c4 10             	add    $0x10,%esp
     a81:	3d 09 04 00 00       	cmp    $0x409,%eax
     a86:	75 1f                	jne    0xaa7
     a88:	83 c6 01             	add    $0x1,%esi
     a8b:	83 fe 04             	cmp    $0x4,%esi
     a8e:	7f 32                	jg     0xac2
     a90:	89 f8                	mov    %edi,%eax
     a92:	3d 08 04 00 00       	cmp    $0x408,%eax
     a97:	7f d0                	jg     0xa69
     a99:	88 98 a0 89 00 00    	mov    %bl,0x89a0(%eax)
     a9f:	83 c0 01             	add    $0x1,%eax
     aa2:	8d 5b 01             	lea    0x1(%ebx),%ebx
     aa5:	eb eb                	jmp    0xa92
     aa7:	83 ec 08             	sub    $0x8,%esp
     aaa:	68 d0 44 00 00       	push   $0x44d0
     aaf:	6a 01                	push   $0x1
     ab1:	e8 15 34 00 00       	call   0x3ecb
     ab6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     abd:	e8 b8 32 00 00       	call   0x3d7a
     ac2:	83 ec 0c             	sub    $0xc,%esp
     ac5:	6a 00                	push   $0x0
     ac7:	e8 ae 32 00 00       	call   0x3d7a
     acc:	83 ec 08             	sub    $0x8,%esp
     acf:	68 de 44 00 00       	push   $0x44de
     ad4:	6a 01                	push   $0x1
     ad6:	e8 f0 33 00 00       	call   0x3ecb
     adb:	83 c4 10             	add    $0x10,%esp
     ade:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ae1:	5b                   	pop    %ebx
     ae2:	5e                   	pop    %esi
     ae3:	5f                   	pop    %edi
     ae4:	5d                   	pop    %ebp
     ae5:	c3                   	ret    
     ae6:	89 cb                	mov    %ecx,%ebx
     ae8:	01 7d d0             	add    %edi,-0x30(%ebp)
     aeb:	d1 65 d4             	shll   -0x2c(%ebp)
     aee:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     af1:	3d 00 20 00 00       	cmp    $0x2000,%eax
     af6:	0f 86 f7 fe ff ff    	jbe    0x9f3
     afc:	c7 45 d4 00 20 00 00 	movl   $0x2000,-0x2c(%ebp)
     b03:	e9 eb fe ff ff       	jmp    0x9f3
     b08:	81 7d d0 2d 14 00 00 	cmpl   $0x142d,-0x30(%ebp)
     b0f:	75 2b                	jne    0xb3c
     b11:	83 ec 0c             	sub    $0xc,%esp
     b14:	ff 75 e0             	pushl  -0x20(%ebp)
     b17:	e8 86 32 00 00       	call   0x3da2
     b1c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b23:	e8 5a 32 00 00       	call   0x3d82
     b28:	83 c4 08             	add    $0x8,%esp
     b2b:	68 03 45 00 00       	push   $0x4503
     b30:	6a 01                	push   $0x1
     b32:	e8 94 33 00 00       	call   0x3ecb
     b37:	83 c4 10             	add    $0x10,%esp
     b3a:	eb a2                	jmp    0xade
     b3c:	83 ec 04             	sub    $0x4,%esp
     b3f:	ff 75 d0             	pushl  -0x30(%ebp)
     b42:	68 ec 44 00 00       	push   $0x44ec
     b47:	6a 01                	push   $0x1
     b49:	e8 7d 33 00 00       	call   0x3ecb
     b4e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b55:	e8 20 32 00 00       	call   0x3d7a
     b5a:	83 ec 08             	sub    $0x8,%esp
     b5d:	68 0d 45 00 00       	push   $0x450d
     b62:	6a 01                	push   $0x1
     b64:	e8 62 33 00 00       	call   0x3ecb
     b69:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b70:	e8 05 32 00 00       	call   0x3d7a
     b75:	f3 0f 1e fb          	endbr32 
     b79:	55                   	push   %ebp
     b7a:	89 e5                	mov    %esp,%ebp
     b7c:	57                   	push   %edi
     b7d:	56                   	push   %esi
     b7e:	53                   	push   %ebx
     b7f:	83 ec 24             	sub    $0x24,%esp
     b82:	68 1c 45 00 00       	push   $0x451c
     b87:	6a 01                	push   $0x1
     b89:	e8 3d 33 00 00       	call   0x3ecb
     b8e:	e8 df 31 00 00       	call   0x3d72
     b93:	83 c4 10             	add    $0x10,%esp
     b96:	85 c0                	test   %eax,%eax
     b98:	75 02                	jne    0xb9c
     b9a:	eb fe                	jmp    0xb9a
     b9c:	89 c7                	mov    %eax,%edi
     b9e:	e8 cf 31 00 00       	call   0x3d72
     ba3:	89 c6                	mov    %eax,%esi
     ba5:	85 c0                	test   %eax,%eax
     ba7:	75 02                	jne    0xbab
     ba9:	eb fe                	jmp    0xba9
     bab:	83 ec 0c             	sub    $0xc,%esp
     bae:	8d 45 e0             	lea    -0x20(%ebp),%eax
     bb1:	50                   	push   %eax
     bb2:	e8 d3 31 00 00       	call   0x3d8a
     bb7:	e8 b6 31 00 00       	call   0x3d72
     bbc:	89 c3                	mov    %eax,%ebx
     bbe:	83 c4 10             	add    $0x10,%esp
     bc1:	85 c0                	test   %eax,%eax
     bc3:	75 49                	jne    0xc0e
     bc5:	83 ec 0c             	sub    $0xc,%esp
     bc8:	ff 75 e0             	pushl  -0x20(%ebp)
     bcb:	e8 d2 31 00 00       	call   0x3da2
     bd0:	83 c4 0c             	add    $0xc,%esp
     bd3:	6a 01                	push   $0x1
     bd5:	68 e1 4a 00 00       	push   $0x4ae1
     bda:	ff 75 e4             	pushl  -0x1c(%ebp)
     bdd:	e8 b8 31 00 00       	call   0x3d9a
     be2:	83 c4 10             	add    $0x10,%esp
     be5:	83 f8 01             	cmp    $0x1,%eax
     be8:	75 10                	jne    0xbfa
     bea:	83 ec 0c             	sub    $0xc,%esp
     bed:	ff 75 e4             	pushl  -0x1c(%ebp)
     bf0:	e8 ad 31 00 00       	call   0x3da2
     bf5:	83 c4 10             	add    $0x10,%esp
     bf8:	eb fe                	jmp    0xbf8
     bfa:	83 ec 08             	sub    $0x8,%esp
     bfd:	68 26 45 00 00       	push   $0x4526
     c02:	6a 01                	push   $0x1
     c04:	e8 c2 32 00 00       	call   0x3ecb
     c09:	83 c4 10             	add    $0x10,%esp
     c0c:	eb dc                	jmp    0xbea
     c0e:	83 ec 0c             	sub    $0xc,%esp
     c11:	ff 75 e4             	pushl  -0x1c(%ebp)
     c14:	e8 89 31 00 00       	call   0x3da2
     c19:	83 c4 0c             	add    $0xc,%esp
     c1c:	68 00 20 00 00       	push   $0x2000
     c21:	68 a0 89 00 00       	push   $0x89a0
     c26:	ff 75 e0             	pushl  -0x20(%ebp)
     c29:	e8 64 31 00 00       	call   0x3d92
     c2e:	83 c4 10             	add    $0x10,%esp
     c31:	83 f8 01             	cmp    $0x1,%eax
     c34:	74 1a                	je     0xc50
     c36:	83 ec 08             	sub    $0x8,%esp
     c39:	68 3a 45 00 00       	push   $0x453a
     c3e:	6a 01                	push   $0x1
     c40:	e8 86 32 00 00       	call   0x3ecb
     c45:	83 c4 10             	add    $0x10,%esp
     c48:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c4b:	5b                   	pop    %ebx
     c4c:	5e                   	pop    %esi
     c4d:	5f                   	pop    %edi
     c4e:	5d                   	pop    %ebp
     c4f:	c3                   	ret    
     c50:	83 ec 0c             	sub    $0xc,%esp
     c53:	ff 75 e0             	pushl  -0x20(%ebp)
     c56:	e8 47 31 00 00       	call   0x3da2
     c5b:	83 c4 08             	add    $0x8,%esp
     c5e:	68 4d 45 00 00       	push   $0x454d
     c63:	6a 01                	push   $0x1
     c65:	e8 61 32 00 00       	call   0x3ecb
     c6a:	89 3c 24             	mov    %edi,(%esp)
     c6d:	e8 38 31 00 00       	call   0x3daa
     c72:	89 34 24             	mov    %esi,(%esp)
     c75:	e8 30 31 00 00       	call   0x3daa
     c7a:	89 1c 24             	mov    %ebx,(%esp)
     c7d:	e8 28 31 00 00       	call   0x3daa
     c82:	83 c4 08             	add    $0x8,%esp
     c85:	68 56 45 00 00       	push   $0x4556
     c8a:	6a 01                	push   $0x1
     c8c:	e8 3a 32 00 00       	call   0x3ecb
     c91:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c98:	e8 e5 30 00 00       	call   0x3d82
     c9d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ca4:	e8 d9 30 00 00       	call   0x3d82
     ca9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cb0:	e8 cd 30 00 00       	call   0x3d82
     cb5:	83 c4 08             	add    $0x8,%esp
     cb8:	68 5f 45 00 00       	push   $0x455f
     cbd:	6a 01                	push   $0x1
     cbf:	e8 07 32 00 00       	call   0x3ecb
     cc4:	83 c4 10             	add    $0x10,%esp
     cc7:	e9 7c ff ff ff       	jmp    0xc48
     ccc:	f3 0f 1e fb          	endbr32 
     cd0:	55                   	push   %ebp
     cd1:	89 e5                	mov    %esp,%ebp
     cd3:	56                   	push   %esi
     cd4:	53                   	push   %ebx
     cd5:	be 00 00 00 00       	mov    $0x0,%esi
     cda:	eb 26                	jmp    0xd02
     cdc:	83 ec 08             	sub    $0x8,%esp
     cdf:	68 c9 50 00 00       	push   $0x50c9
     ce4:	6a 01                	push   $0x1
     ce6:	e8 e0 31 00 00       	call   0x3ecb
     ceb:	83 c4 10             	add    $0x10,%esp
     cee:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cf1:	5b                   	pop    %ebx
     cf2:	5e                   	pop    %esi
     cf3:	5d                   	pop    %ebp
     cf4:	c3                   	ret    
     cf5:	83 ec 0c             	sub    $0xc,%esp
     cf8:	6a 00                	push   $0x0
     cfa:	e8 7b 30 00 00       	call   0x3d7a
     cff:	83 c6 01             	add    $0x1,%esi
     d02:	83 fe 63             	cmp    $0x63,%esi
     d05:	7f 32                	jg     0xd39
     d07:	e8 66 30 00 00       	call   0x3d72
     d0c:	89 c3                	mov    %eax,%ebx
     d0e:	85 c0                	test   %eax,%eax
     d10:	78 ca                	js     0xcdc
     d12:	74 e1                	je     0xcf5
     d14:	83 ec 0c             	sub    $0xc,%esp
     d17:	6a 00                	push   $0x0
     d19:	e8 64 30 00 00       	call   0x3d82
     d1e:	83 c4 10             	add    $0x10,%esp
     d21:	39 d8                	cmp    %ebx,%eax
     d23:	74 da                	je     0xcff
     d25:	83 ec 08             	sub    $0x8,%esp
     d28:	68 6b 45 00 00       	push   $0x456b
     d2d:	6a 01                	push   $0x1
     d2f:	e8 97 31 00 00       	call   0x3ecb
     d34:	83 c4 10             	add    $0x10,%esp
     d37:	eb b5                	jmp    0xcee
     d39:	83 ec 08             	sub    $0x8,%esp
     d3c:	68 7b 45 00 00       	push   $0x457b
     d41:	6a 01                	push   $0x1
     d43:	e8 83 31 00 00       	call   0x3ecb
     d48:	83 c4 10             	add    $0x10,%esp
     d4b:	eb a1                	jmp    0xcee
     d4d:	f3 0f 1e fb          	endbr32 
     d51:	55                   	push   %ebp
     d52:	89 e5                	mov    %esp,%ebp
     d54:	57                   	push   %edi
     d55:	56                   	push   %esi
     d56:	53                   	push   %ebx
     d57:	83 ec 14             	sub    $0x14,%esp
     d5a:	68 88 45 00 00       	push   $0x4588
     d5f:	6a 01                	push   $0x1
     d61:	e8 65 31 00 00       	call   0x3ecb
     d66:	e8 8f 30 00 00       	call   0x3dfa
     d6b:	89 c6                	mov    %eax,%esi
     d6d:	e8 00 30 00 00       	call   0x3d72
     d72:	83 c4 10             	add    $0x10,%esp
     d75:	85 c0                	test   %eax,%eax
     d77:	0f 85 8e 00 00 00    	jne    0xe0b
     d7d:	bb 00 00 00 00       	mov    $0x0,%ebx
     d82:	83 ec 0c             	sub    $0xc,%esp
     d85:	68 11 27 00 00       	push   $0x2711
     d8a:	e8 6d 33 00 00       	call   0x40fc
     d8f:	83 c4 10             	add    $0x10,%esp
     d92:	85 c0                	test   %eax,%eax
     d94:	74 16                	je     0xdac
     d96:	89 18                	mov    %ebx,(%eax)
     d98:	89 c3                	mov    %eax,%ebx
     d9a:	eb e6                	jmp    0xd82
     d9c:	8b 3b                	mov    (%ebx),%edi
     d9e:	83 ec 0c             	sub    $0xc,%esp
     da1:	53                   	push   %ebx
     da2:	e8 91 32 00 00       	call   0x4038
     da7:	83 c4 10             	add    $0x10,%esp
     daa:	89 fb                	mov    %edi,%ebx
     dac:	85 db                	test   %ebx,%ebx
     dae:	75 ec                	jne    0xd9c
     db0:	83 ec 0c             	sub    $0xc,%esp
     db3:	68 00 50 00 00       	push   $0x5000
     db8:	e8 3f 33 00 00       	call   0x40fc
     dbd:	83 c4 10             	add    $0x10,%esp
     dc0:	85 c0                	test   %eax,%eax
     dc2:	74 24                	je     0xde8
     dc4:	83 ec 0c             	sub    $0xc,%esp
     dc7:	50                   	push   %eax
     dc8:	e8 6b 32 00 00       	call   0x4038
     dcd:	83 c4 08             	add    $0x8,%esp
     dd0:	68 ac 45 00 00       	push   $0x45ac
     dd5:	6a 01                	push   $0x1
     dd7:	e8 ef 30 00 00       	call   0x3ecb
     ddc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     de3:	e8 92 2f 00 00       	call   0x3d7a
     de8:	83 ec 08             	sub    $0x8,%esp
     deb:	68 92 45 00 00       	push   $0x4592
     df0:	6a 01                	push   $0x1
     df2:	e8 d4 30 00 00       	call   0x3ecb
     df7:	89 34 24             	mov    %esi,(%esp)
     dfa:	e8 ab 2f 00 00       	call   0x3daa
     dff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e06:	e8 6f 2f 00 00       	call   0x3d7a
     e0b:	83 ec 0c             	sub    $0xc,%esp
     e0e:	6a 00                	push   $0x0
     e10:	e8 6d 2f 00 00       	call   0x3d82
     e15:	83 c4 10             	add    $0x10,%esp
     e18:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e1b:	5b                   	pop    %ebx
     e1c:	5e                   	pop    %esi
     e1d:	5f                   	pop    %edi
     e1e:	5d                   	pop    %ebp
     e1f:	c3                   	ret    
     e20:	f3 0f 1e fb          	endbr32 
     e24:	55                   	push   %ebp
     e25:	89 e5                	mov    %esp,%ebp
     e27:	57                   	push   %edi
     e28:	56                   	push   %esi
     e29:	53                   	push   %ebx
     e2a:	83 ec 24             	sub    $0x24,%esp
     e2d:	68 b4 45 00 00       	push   $0x45b4
     e32:	6a 01                	push   $0x1
     e34:	e8 92 30 00 00       	call   0x3ecb
     e39:	c7 04 24 c3 45 00 00 	movl   $0x45c3,(%esp)
     e40:	e8 85 2f 00 00       	call   0x3dca
     e45:	83 c4 08             	add    $0x8,%esp
     e48:	68 02 02 00 00       	push   $0x202
     e4d:	68 c3 45 00 00       	push   $0x45c3
     e52:	e8 63 2f 00 00       	call   0x3dba
     e57:	83 c4 10             	add    $0x10,%esp
     e5a:	85 c0                	test   %eax,%eax
     e5c:	78 4d                	js     0xeab
     e5e:	89 c6                	mov    %eax,%esi
     e60:	e8 0d 2f 00 00       	call   0x3d72
     e65:	89 c7                	mov    %eax,%edi
     e67:	85 c0                	test   %eax,%eax
     e69:	75 57                	jne    0xec2
     e6b:	b8 63 00 00 00       	mov    $0x63,%eax
     e70:	83 ec 04             	sub    $0x4,%esp
     e73:	6a 0a                	push   $0xa
     e75:	50                   	push   %eax
     e76:	8d 45 de             	lea    -0x22(%ebp),%eax
     e79:	50                   	push   %eax
     e7a:	e8 ae 2d 00 00       	call   0x3c2d
     e7f:	83 c4 10             	add    $0x10,%esp
     e82:	bb 00 00 00 00       	mov    $0x0,%ebx
     e87:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
     e8d:	7f 4c                	jg     0xedb
     e8f:	83 ec 04             	sub    $0x4,%esp
     e92:	6a 0a                	push   $0xa
     e94:	8d 45 de             	lea    -0x22(%ebp),%eax
     e97:	50                   	push   %eax
     e98:	56                   	push   %esi
     e99:	e8 fc 2e 00 00       	call   0x3d9a
     e9e:	83 c4 10             	add    $0x10,%esp
     ea1:	83 f8 0a             	cmp    $0xa,%eax
     ea4:	75 23                	jne    0xec9
     ea6:	83 c3 01             	add    $0x1,%ebx
     ea9:	eb dc                	jmp    0xe87
     eab:	83 ec 08             	sub    $0x8,%esp
     eae:	68 88 52 00 00       	push   $0x5288
     eb3:	6a 01                	push   $0x1
     eb5:	e8 11 30 00 00       	call   0x3ecb
     eba:	83 c4 10             	add    $0x10,%esp
     ebd:	e9 ed 00 00 00       	jmp    0xfaf
     ec2:	b8 70 00 00 00       	mov    $0x70,%eax
     ec7:	eb a7                	jmp    0xe70
     ec9:	83 ec 08             	sub    $0x8,%esp
     ecc:	68 b4 52 00 00       	push   $0x52b4
     ed1:	6a 01                	push   $0x1
     ed3:	e8 f3 2f 00 00       	call   0x3ecb
     ed8:	83 c4 10             	add    $0x10,%esp
     edb:	85 ff                	test   %edi,%edi
     edd:	74 51                	je     0xf30
     edf:	83 ec 0c             	sub    $0xc,%esp
     ee2:	6a 00                	push   $0x0
     ee4:	e8 99 2e 00 00       	call   0x3d82
     ee9:	89 34 24             	mov    %esi,(%esp)
     eec:	e8 b1 2e 00 00       	call   0x3da2
     ef1:	83 c4 08             	add    $0x8,%esp
     ef4:	6a 00                	push   $0x0
     ef6:	68 c3 45 00 00       	push   $0x45c3
     efb:	e8 ba 2e 00 00       	call   0x3dba
     f00:	89 c7                	mov    %eax,%edi
     f02:	83 c4 10             	add    $0x10,%esp
     f05:	85 c0                	test   %eax,%eax
     f07:	78 31                	js     0xf3a
     f09:	be 00 00 00 00       	mov    $0x0,%esi
     f0e:	bb 00 00 00 00       	mov    $0x0,%ebx
     f13:	83 ec 04             	sub    $0x4,%esp
     f16:	6a 0a                	push   $0xa
     f18:	8d 45 de             	lea    -0x22(%ebp),%eax
     f1b:	50                   	push   %eax
     f1c:	57                   	push   %edi
     f1d:	e8 70 2e 00 00       	call   0x3d92
     f22:	83 c4 10             	add    $0x10,%esp
     f25:	85 c0                	test   %eax,%eax
     f27:	7e 46                	jle    0xf6f
     f29:	b8 00 00 00 00       	mov    $0x0,%eax
     f2e:	eb 26                	jmp    0xf56
     f30:	83 ec 0c             	sub    $0xc,%esp
     f33:	6a 00                	push   $0x0
     f35:	e8 40 2e 00 00       	call   0x3d7a
     f3a:	83 ec 08             	sub    $0x8,%esp
     f3d:	68 d4 52 00 00       	push   $0x52d4
     f42:	6a 01                	push   $0x1
     f44:	e8 82 2f 00 00       	call   0x3ecb
     f49:	83 c4 10             	add    $0x10,%esp
     f4c:	eb 61                	jmp    0xfaf
     f4e:	83 c3 01             	add    $0x1,%ebx
     f51:	eb 12                	jmp    0xf65
     f53:	83 c0 01             	add    $0x1,%eax
     f56:	83 f8 09             	cmp    $0x9,%eax
     f59:	77 b8                	ja     0xf13
     f5b:	0f b6 54 05 de       	movzbl -0x22(%ebp,%eax,1),%edx
     f60:	80 fa 63             	cmp    $0x63,%dl
     f63:	74 e9                	je     0xf4e
     f65:	80 fa 70             	cmp    $0x70,%dl
     f68:	75 e9                	jne    0xf53
     f6a:	83 c6 01             	add    $0x1,%esi
     f6d:	eb e4                	jmp    0xf53
     f6f:	83 ec 0c             	sub    $0xc,%esp
     f72:	57                   	push   %edi
     f73:	e8 2a 2e 00 00       	call   0x3da2
     f78:	c7 04 24 c3 45 00 00 	movl   $0x45c3,(%esp)
     f7f:	e8 46 2e 00 00       	call   0x3dca
     f84:	83 c4 10             	add    $0x10,%esp
     f87:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     f8d:	0f 94 c2             	sete   %dl
     f90:	81 fe 10 27 00 00    	cmp    $0x2710,%esi
     f96:	0f 94 c0             	sete   %al
     f99:	84 c2                	test   %al,%dl
     f9b:	74 1a                	je     0xfb7
     f9d:	83 ec 08             	sub    $0x8,%esp
     fa0:	68 cc 45 00 00       	push   $0x45cc
     fa5:	6a 01                	push   $0x1
     fa7:	e8 1f 2f 00 00       	call   0x3ecb
     fac:	83 c4 10             	add    $0x10,%esp
     faf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fb2:	5b                   	pop    %ebx
     fb3:	5e                   	pop    %esi
     fb4:	5f                   	pop    %edi
     fb5:	5d                   	pop    %ebp
     fb6:	c3                   	ret    
     fb7:	56                   	push   %esi
     fb8:	53                   	push   %ebx
     fb9:	68 d9 45 00 00       	push   $0x45d9
     fbe:	6a 01                	push   $0x1
     fc0:	e8 06 2f 00 00       	call   0x3ecb
     fc5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     fcc:	e8 a9 2d 00 00       	call   0x3d7a
     fd1:	f3 0f 1e fb          	endbr32 
     fd5:	55                   	push   %ebp
     fd6:	89 e5                	mov    %esp,%ebp
     fd8:	57                   	push   %edi
     fd9:	56                   	push   %esi
     fda:	53                   	push   %ebx
     fdb:	83 ec 34             	sub    $0x34,%esp
     fde:	c7 45 d8 ee 45 00 00 	movl   $0x45ee,-0x28(%ebp)
     fe5:	c7 45 dc 37 47 00 00 	movl   $0x4737,-0x24(%ebp)
     fec:	c7 45 e0 3b 47 00 00 	movl   $0x473b,-0x20(%ebp)
     ff3:	c7 45 e4 f1 45 00 00 	movl   $0x45f1,-0x1c(%ebp)
     ffa:	68 f4 45 00 00       	push   $0x45f4
     fff:	6a 01                	push   $0x1
    1001:	e8 c5 2e 00 00       	call   0x3ecb
    1006:	83 c4 10             	add    $0x10,%esp
    1009:	be 00 00 00 00       	mov    $0x0,%esi
    100e:	83 fe 03             	cmp    $0x3,%esi
    1011:	0f 8f d5 00 00 00    	jg     0x10ec
    1017:	8b 7c b5 d8          	mov    -0x28(%ebp,%esi,4),%edi
    101b:	83 ec 0c             	sub    $0xc,%esp
    101e:	57                   	push   %edi
    101f:	e8 a6 2d 00 00       	call   0x3dca
    1024:	e8 49 2d 00 00       	call   0x3d72
    1029:	83 c4 10             	add    $0x10,%esp
    102c:	85 c0                	test   %eax,%eax
    102e:	78 07                	js     0x1037
    1030:	74 20                	je     0x1052
    1032:	83 c6 01             	add    $0x1,%esi
    1035:	eb d7                	jmp    0x100e
    1037:	83 ec 08             	sub    $0x8,%esp
    103a:	68 c9 50 00 00       	push   $0x50c9
    103f:	6a 01                	push   $0x1
    1041:	e8 85 2e 00 00       	call   0x3ecb
    1046:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    104d:	e8 28 2d 00 00       	call   0x3d7a
    1052:	89 c3                	mov    %eax,%ebx
    1054:	83 ec 08             	sub    $0x8,%esp
    1057:	68 02 02 00 00       	push   $0x202
    105c:	57                   	push   %edi
    105d:	e8 58 2d 00 00       	call   0x3dba
    1062:	89 c7                	mov    %eax,%edi
    1064:	83 c4 10             	add    $0x10,%esp
    1067:	85 c0                	test   %eax,%eax
    1069:	78 40                	js     0x10ab
    106b:	83 ec 04             	sub    $0x4,%esp
    106e:	68 00 02 00 00       	push   $0x200
    1073:	83 c6 30             	add    $0x30,%esi
    1076:	56                   	push   %esi
    1077:	68 a0 89 00 00       	push   $0x89a0
    107c:	e8 ac 2b 00 00       	call   0x3c2d
    1081:	83 c4 10             	add    $0x10,%esp
    1084:	83 fb 0b             	cmp    $0xb,%ebx
    1087:	7f 59                	jg     0x10e2
    1089:	83 ec 04             	sub    $0x4,%esp
    108c:	68 f4 01 00 00       	push   $0x1f4
    1091:	68 a0 89 00 00       	push   $0x89a0
    1096:	57                   	push   %edi
    1097:	e8 fe 2c 00 00       	call   0x3d9a
    109c:	83 c4 10             	add    $0x10,%esp
    109f:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    10a4:	75 20                	jne    0x10c6
    10a6:	83 c3 01             	add    $0x1,%ebx
    10a9:	eb d9                	jmp    0x1084
    10ab:	83 ec 08             	sub    $0x8,%esp
    10ae:	68 8f 48 00 00       	push   $0x488f
    10b3:	6a 01                	push   $0x1
    10b5:	e8 11 2e 00 00       	call   0x3ecb
    10ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10c1:	e8 b4 2c 00 00       	call   0x3d7a
    10c6:	83 ec 04             	sub    $0x4,%esp
    10c9:	50                   	push   %eax
    10ca:	68 04 46 00 00       	push   $0x4604
    10cf:	6a 01                	push   $0x1
    10d1:	e8 f5 2d 00 00       	call   0x3ecb
    10d6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10dd:	e8 98 2c 00 00       	call   0x3d7a
    10e2:	83 ec 0c             	sub    $0xc,%esp
    10e5:	6a 00                	push   $0x0
    10e7:	e8 8e 2c 00 00       	call   0x3d7a
    10ec:	bb 00 00 00 00       	mov    $0x0,%ebx
    10f1:	eb 10                	jmp    0x1103
    10f3:	83 ec 0c             	sub    $0xc,%esp
    10f6:	6a 00                	push   $0x0
    10f8:	e8 85 2c 00 00       	call   0x3d82
    10fd:	83 c3 01             	add    $0x1,%ebx
    1100:	83 c4 10             	add    $0x10,%esp
    1103:	83 fb 03             	cmp    $0x3,%ebx
    1106:	7e eb                	jle    0x10f3
    1108:	bb 00 00 00 00       	mov    $0x0,%ebx
    110d:	eb 7c                	jmp    0x118b
    110f:	83 ec 08             	sub    $0x8,%esp
    1112:	68 15 46 00 00       	push   $0x4615
    1117:	6a 01                	push   $0x1
    1119:	e8 ad 2d 00 00       	call   0x3ecb
    111e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1125:	e8 50 2c 00 00       	call   0x3d7a
    112a:	01 c6                	add    %eax,%esi
    112c:	83 ec 04             	sub    $0x4,%esp
    112f:	68 00 20 00 00       	push   $0x2000
    1134:	68 a0 89 00 00       	push   $0x89a0
    1139:	ff 75 d4             	pushl  -0x2c(%ebp)
    113c:	e8 51 2c 00 00       	call   0x3d92
    1141:	83 c4 10             	add    $0x10,%esp
    1144:	85 c0                	test   %eax,%eax
    1146:	7e 1c                	jle    0x1164
    1148:	ba 00 00 00 00       	mov    $0x0,%edx
    114d:	39 c2                	cmp    %eax,%edx
    114f:	7d d9                	jge    0x112a
    1151:	0f be ba a0 89 00 00 	movsbl 0x89a0(%edx),%edi
    1158:	8d 4b 30             	lea    0x30(%ebx),%ecx
    115b:	39 cf                	cmp    %ecx,%edi
    115d:	75 b0                	jne    0x110f
    115f:	83 c2 01             	add    $0x1,%edx
    1162:	eb e9                	jmp    0x114d
    1164:	83 ec 0c             	sub    $0xc,%esp
    1167:	ff 75 d4             	pushl  -0x2c(%ebp)
    116a:	e8 33 2c 00 00       	call   0x3da2
    116f:	83 c4 10             	add    $0x10,%esp
    1172:	81 fe 70 17 00 00    	cmp    $0x1770,%esi
    1178:	75 38                	jne    0x11b2
    117a:	83 ec 0c             	sub    $0xc,%esp
    117d:	ff 75 d0             	pushl  -0x30(%ebp)
    1180:	e8 45 2c 00 00       	call   0x3dca
    1185:	83 c3 01             	add    $0x1,%ebx
    1188:	83 c4 10             	add    $0x10,%esp
    118b:	83 fb 01             	cmp    $0x1,%ebx
    118e:	7f 3e                	jg     0x11ce
    1190:	8b 44 9d d8          	mov    -0x28(%ebp,%ebx,4),%eax
    1194:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1197:	83 ec 08             	sub    $0x8,%esp
    119a:	6a 00                	push   $0x0
    119c:	50                   	push   %eax
    119d:	e8 18 2c 00 00       	call   0x3dba
    11a2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    11a5:	83 c4 10             	add    $0x10,%esp
    11a8:	be 00 00 00 00       	mov    $0x0,%esi
    11ad:	e9 7a ff ff ff       	jmp    0x112c
    11b2:	83 ec 04             	sub    $0x4,%esp
    11b5:	56                   	push   %esi
    11b6:	68 21 46 00 00       	push   $0x4621
    11bb:	6a 01                	push   $0x1
    11bd:	e8 09 2d 00 00       	call   0x3ecb
    11c2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    11c9:	e8 ac 2b 00 00       	call   0x3d7a
    11ce:	83 ec 08             	sub    $0x8,%esp
    11d1:	68 32 46 00 00       	push   $0x4632
    11d6:	6a 01                	push   $0x1
    11d8:	e8 ee 2c 00 00       	call   0x3ecb
    11dd:	83 c4 10             	add    $0x10,%esp
    11e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11e3:	5b                   	pop    %ebx
    11e4:	5e                   	pop    %esi
    11e5:	5f                   	pop    %edi
    11e6:	5d                   	pop    %ebp
    11e7:	c3                   	ret    
    11e8:	f3 0f 1e fb          	endbr32 
    11ec:	55                   	push   %ebp
    11ed:	89 e5                	mov    %esp,%ebp
    11ef:	56                   	push   %esi
    11f0:	53                   	push   %ebx
    11f1:	83 ec 28             	sub    $0x28,%esp
    11f4:	68 40 46 00 00       	push   $0x4640
    11f9:	6a 01                	push   $0x1
    11fb:	e8 cb 2c 00 00       	call   0x3ecb
    1200:	83 c4 10             	add    $0x10,%esp
    1203:	be 00 00 00 00       	mov    $0x0,%esi
    1208:	83 fe 03             	cmp    $0x3,%esi
    120b:	0f 8f d6 00 00 00    	jg     0x12e7
    1211:	e8 5c 2b 00 00       	call   0x3d72
    1216:	89 c3                	mov    %eax,%ebx
    1218:	85 c0                	test   %eax,%eax
    121a:	78 07                	js     0x1223
    121c:	74 20                	je     0x123e
    121e:	83 c6 01             	add    $0x1,%esi
    1221:	eb e5                	jmp    0x1208
    1223:	83 ec 08             	sub    $0x8,%esp
    1226:	68 c9 50 00 00       	push   $0x50c9
    122b:	6a 01                	push   $0x1
    122d:	e8 99 2c 00 00       	call   0x3ecb
    1232:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1239:	e8 3c 2b 00 00       	call   0x3d7a
    123e:	8d 46 70             	lea    0x70(%esi),%eax
    1241:	88 45 d8             	mov    %al,-0x28(%ebp)
    1244:	c6 45 da 00          	movb   $0x0,-0x26(%ebp)
    1248:	eb 1e                	jmp    0x1268
    124a:	83 ec 08             	sub    $0x8,%esp
    124d:	68 8f 48 00 00       	push   $0x488f
    1252:	6a 01                	push   $0x1
    1254:	e8 72 2c 00 00       	call   0x3ecb
    1259:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1260:	e8 15 2b 00 00       	call   0x3d7a
    1265:	83 c3 01             	add    $0x1,%ebx
    1268:	83 fb 13             	cmp    $0x13,%ebx
    126b:	7f 70                	jg     0x12dd
    126d:	8d 43 30             	lea    0x30(%ebx),%eax
    1270:	88 45 d9             	mov    %al,-0x27(%ebp)
    1273:	83 ec 08             	sub    $0x8,%esp
    1276:	68 02 02 00 00       	push   $0x202
    127b:	8d 45 d8             	lea    -0x28(%ebp),%eax
    127e:	50                   	push   %eax
    127f:	e8 36 2b 00 00       	call   0x3dba
    1284:	83 c4 10             	add    $0x10,%esp
    1287:	85 c0                	test   %eax,%eax
    1289:	78 bf                	js     0x124a
    128b:	83 ec 0c             	sub    $0xc,%esp
    128e:	50                   	push   %eax
    128f:	e8 0e 2b 00 00       	call   0x3da2
    1294:	83 c4 10             	add    $0x10,%esp
    1297:	85 db                	test   %ebx,%ebx
    1299:	7e ca                	jle    0x1265
    129b:	f6 c3 01             	test   $0x1,%bl
    129e:	75 c5                	jne    0x1265
    12a0:	89 d8                	mov    %ebx,%eax
    12a2:	c1 e8 1f             	shr    $0x1f,%eax
    12a5:	01 d8                	add    %ebx,%eax
    12a7:	d1 f8                	sar    %eax
    12a9:	83 c0 30             	add    $0x30,%eax
    12ac:	88 45 d9             	mov    %al,-0x27(%ebp)
    12af:	83 ec 0c             	sub    $0xc,%esp
    12b2:	8d 45 d8             	lea    -0x28(%ebp),%eax
    12b5:	50                   	push   %eax
    12b6:	e8 0f 2b 00 00       	call   0x3dca
    12bb:	83 c4 10             	add    $0x10,%esp
    12be:	85 c0                	test   %eax,%eax
    12c0:	79 a3                	jns    0x1265
    12c2:	83 ec 08             	sub    $0x8,%esp
    12c5:	68 41 42 00 00       	push   $0x4241
    12ca:	6a 01                	push   $0x1
    12cc:	e8 fa 2b 00 00       	call   0x3ecb
    12d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12d8:	e8 9d 2a 00 00       	call   0x3d7a
    12dd:	83 ec 0c             	sub    $0xc,%esp
    12e0:	6a 00                	push   $0x0
    12e2:	e8 93 2a 00 00       	call   0x3d7a
    12e7:	bb 00 00 00 00       	mov    $0x0,%ebx
    12ec:	eb 10                	jmp    0x12fe
    12ee:	83 ec 0c             	sub    $0xc,%esp
    12f1:	6a 00                	push   $0x0
    12f3:	e8 8a 2a 00 00       	call   0x3d82
    12f8:	83 c3 01             	add    $0x1,%ebx
    12fb:	83 c4 10             	add    $0x10,%esp
    12fe:	83 fb 03             	cmp    $0x3,%ebx
    1301:	7e eb                	jle    0x12ee
    1303:	c6 45 da 00          	movb   $0x0,-0x26(%ebp)
    1307:	c6 45 d9 00          	movb   $0x0,-0x27(%ebp)
    130b:	c6 45 d8 00          	movb   $0x0,-0x28(%ebp)
    130f:	bb 00 00 00 00       	mov    $0x0,%ebx
    1314:	e9 9e 00 00 00       	jmp    0x13b7
    1319:	8d 53 ff             	lea    -0x1(%ebx),%edx
    131c:	83 fa 08             	cmp    $0x8,%edx
    131f:	76 5f                	jbe    0x1380
    1321:	85 c0                	test   %eax,%eax
    1323:	79 7e                	jns    0x13a3
    1325:	83 c6 01             	add    $0x1,%esi
    1328:	83 fe 03             	cmp    $0x3,%esi
    132b:	0f 8f 83 00 00 00    	jg     0x13b4
    1331:	8d 46 70             	lea    0x70(%esi),%eax
    1334:	88 45 d8             	mov    %al,-0x28(%ebp)
    1337:	8d 43 30             	lea    0x30(%ebx),%eax
    133a:	88 45 d9             	mov    %al,-0x27(%ebp)
    133d:	83 ec 08             	sub    $0x8,%esp
    1340:	6a 00                	push   $0x0
    1342:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1345:	50                   	push   %eax
    1346:	e8 6f 2a 00 00       	call   0x3dba
    134b:	83 c4 10             	add    $0x10,%esp
    134e:	85 db                	test   %ebx,%ebx
    1350:	0f 94 c1             	sete   %cl
    1353:	83 fb 09             	cmp    $0x9,%ebx
    1356:	0f 9f c2             	setg   %dl
    1359:	08 d1                	or     %dl,%cl
    135b:	74 bc                	je     0x1319
    135d:	85 c0                	test   %eax,%eax
    135f:	79 b8                	jns    0x1319
    1361:	83 ec 04             	sub    $0x4,%esp
    1364:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1367:	50                   	push   %eax
    1368:	68 00 53 00 00       	push   $0x5300
    136d:	6a 01                	push   $0x1
    136f:	e8 57 2b 00 00       	call   0x3ecb
    1374:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    137b:	e8 fa 29 00 00       	call   0x3d7a
    1380:	85 c0                	test   %eax,%eax
    1382:	78 9d                	js     0x1321
    1384:	83 ec 04             	sub    $0x4,%esp
    1387:	8d 45 d8             	lea    -0x28(%ebp),%eax
    138a:	50                   	push   %eax
    138b:	68 24 53 00 00       	push   $0x5324
    1390:	6a 01                	push   $0x1
    1392:	e8 34 2b 00 00       	call   0x3ecb
    1397:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    139e:	e8 d7 29 00 00       	call   0x3d7a
    13a3:	83 ec 0c             	sub    $0xc,%esp
    13a6:	50                   	push   %eax
    13a7:	e8 f6 29 00 00       	call   0x3da2
    13ac:	83 c4 10             	add    $0x10,%esp
    13af:	e9 71 ff ff ff       	jmp    0x1325
    13b4:	83 c3 01             	add    $0x1,%ebx
    13b7:	83 fb 13             	cmp    $0x13,%ebx
    13ba:	7f 0a                	jg     0x13c6
    13bc:	be 00 00 00 00       	mov    $0x0,%esi
    13c1:	e9 62 ff ff ff       	jmp    0x1328
    13c6:	be 00 00 00 00       	mov    $0x0,%esi
    13cb:	eb 26                	jmp    0x13f3
    13cd:	8d 46 70             	lea    0x70(%esi),%eax
    13d0:	88 45 d8             	mov    %al,-0x28(%ebp)
    13d3:	8d 46 30             	lea    0x30(%esi),%eax
    13d6:	88 45 d9             	mov    %al,-0x27(%ebp)
    13d9:	83 ec 0c             	sub    $0xc,%esp
    13dc:	8d 45 d8             	lea    -0x28(%ebp),%eax
    13df:	50                   	push   %eax
    13e0:	e8 e5 29 00 00       	call   0x3dca
    13e5:	83 c3 01             	add    $0x1,%ebx
    13e8:	83 c4 10             	add    $0x10,%esp
    13eb:	83 fb 03             	cmp    $0x3,%ebx
    13ee:	7e dd                	jle    0x13cd
    13f0:	83 c6 01             	add    $0x1,%esi
    13f3:	83 fe 13             	cmp    $0x13,%esi
    13f6:	7f 07                	jg     0x13ff
    13f8:	bb 00 00 00 00       	mov    $0x0,%ebx
    13fd:	eb ec                	jmp    0x13eb
    13ff:	83 ec 08             	sub    $0x8,%esp
    1402:	68 53 46 00 00       	push   $0x4653
    1407:	6a 01                	push   $0x1
    1409:	e8 bd 2a 00 00       	call   0x3ecb
    140e:	83 c4 10             	add    $0x10,%esp
    1411:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1414:	5b                   	pop    %ebx
    1415:	5e                   	pop    %esi
    1416:	5d                   	pop    %ebp
    1417:	c3                   	ret    
    1418:	f3 0f 1e fb          	endbr32 
    141c:	55                   	push   %ebp
    141d:	89 e5                	mov    %esp,%ebp
    141f:	56                   	push   %esi
    1420:	53                   	push   %ebx
    1421:	83 ec 08             	sub    $0x8,%esp
    1424:	68 64 46 00 00       	push   $0x4664
    1429:	6a 01                	push   $0x1
    142b:	e8 9b 2a 00 00       	call   0x3ecb
    1430:	83 c4 08             	add    $0x8,%esp
    1433:	68 02 02 00 00       	push   $0x202
    1438:	68 75 46 00 00       	push   $0x4675
    143d:	e8 78 29 00 00       	call   0x3dba
    1442:	83 c4 10             	add    $0x10,%esp
    1445:	85 c0                	test   %eax,%eax
    1447:	0f 88 f0 00 00 00    	js     0x153d
    144d:	89 c3                	mov    %eax,%ebx
    144f:	83 ec 04             	sub    $0x4,%esp
    1452:	6a 05                	push   $0x5
    1454:	68 9a 46 00 00       	push   $0x469a
    1459:	50                   	push   %eax
    145a:	e8 3b 29 00 00       	call   0x3d9a
    145f:	89 1c 24             	mov    %ebx,(%esp)
    1462:	e8 3b 29 00 00       	call   0x3da2
    1467:	83 c4 08             	add    $0x8,%esp
    146a:	6a 02                	push   $0x2
    146c:	68 75 46 00 00       	push   $0x4675
    1471:	e8 44 29 00 00       	call   0x3dba
    1476:	89 c3                	mov    %eax,%ebx
    1478:	83 c4 10             	add    $0x10,%esp
    147b:	85 c0                	test   %eax,%eax
    147d:	0f 88 d5 00 00 00    	js     0x1558
    1483:	83 ec 0c             	sub    $0xc,%esp
    1486:	68 75 46 00 00       	push   $0x4675
    148b:	e8 3a 29 00 00       	call   0x3dca
    1490:	83 c4 10             	add    $0x10,%esp
    1493:	85 c0                	test   %eax,%eax
    1495:	0f 85 d8 00 00 00    	jne    0x1573
    149b:	83 ec 08             	sub    $0x8,%esp
    149e:	68 02 02 00 00       	push   $0x202
    14a3:	68 75 46 00 00       	push   $0x4675
    14a8:	e8 0d 29 00 00       	call   0x3dba
    14ad:	89 c6                	mov    %eax,%esi
    14af:	83 c4 0c             	add    $0xc,%esp
    14b2:	6a 03                	push   $0x3
    14b4:	68 d2 46 00 00       	push   $0x46d2
    14b9:	50                   	push   %eax
    14ba:	e8 db 28 00 00       	call   0x3d9a
    14bf:	89 34 24             	mov    %esi,(%esp)
    14c2:	e8 db 28 00 00       	call   0x3da2
    14c7:	83 c4 0c             	add    $0xc,%esp
    14ca:	68 00 20 00 00       	push   $0x2000
    14cf:	68 a0 89 00 00       	push   $0x89a0
    14d4:	53                   	push   %ebx
    14d5:	e8 b8 28 00 00       	call   0x3d92
    14da:	83 c4 10             	add    $0x10,%esp
    14dd:	83 f8 05             	cmp    $0x5,%eax
    14e0:	0f 85 a8 00 00 00    	jne    0x158e
    14e6:	80 3d a0 89 00 00 68 	cmpb   $0x68,0x89a0
    14ed:	0f 85 b6 00 00 00    	jne    0x15a9
    14f3:	83 ec 04             	sub    $0x4,%esp
    14f6:	6a 0a                	push   $0xa
    14f8:	68 a0 89 00 00       	push   $0x89a0
    14fd:	53                   	push   %ebx
    14fe:	e8 97 28 00 00       	call   0x3d9a
    1503:	83 c4 10             	add    $0x10,%esp
    1506:	83 f8 0a             	cmp    $0xa,%eax
    1509:	0f 85 b5 00 00 00    	jne    0x15c4
    150f:	83 ec 0c             	sub    $0xc,%esp
    1512:	53                   	push   %ebx
    1513:	e8 8a 28 00 00       	call   0x3da2
    1518:	c7 04 24 75 46 00 00 	movl   $0x4675,(%esp)
    151f:	e8 a6 28 00 00       	call   0x3dca
    1524:	83 c4 08             	add    $0x8,%esp
    1527:	68 1d 47 00 00       	push   $0x471d
    152c:	6a 01                	push   $0x1
    152e:	e8 98 29 00 00       	call   0x3ecb
    1533:	83 c4 10             	add    $0x10,%esp
    1536:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1539:	5b                   	pop    %ebx
    153a:	5e                   	pop    %esi
    153b:	5d                   	pop    %ebp
    153c:	c3                   	ret    
    153d:	83 ec 08             	sub    $0x8,%esp
    1540:	68 80 46 00 00       	push   $0x4680
    1545:	6a 01                	push   $0x1
    1547:	e8 7f 29 00 00       	call   0x3ecb
    154c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1553:	e8 22 28 00 00       	call   0x3d7a
    1558:	83 ec 08             	sub    $0x8,%esp
    155b:	68 a0 46 00 00       	push   $0x46a0
    1560:	6a 01                	push   $0x1
    1562:	e8 64 29 00 00       	call   0x3ecb
    1567:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    156e:	e8 07 28 00 00       	call   0x3d7a
    1573:	83 ec 08             	sub    $0x8,%esp
    1576:	68 b8 46 00 00       	push   $0x46b8
    157b:	6a 01                	push   $0x1
    157d:	e8 49 29 00 00       	call   0x3ecb
    1582:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1589:	e8 ec 27 00 00       	call   0x3d7a
    158e:	83 ec 08             	sub    $0x8,%esp
    1591:	68 d6 46 00 00       	push   $0x46d6
    1596:	6a 01                	push   $0x1
    1598:	e8 2e 29 00 00       	call   0x3ecb
    159d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15a4:	e8 d1 27 00 00       	call   0x3d7a
    15a9:	83 ec 08             	sub    $0x8,%esp
    15ac:	68 ed 46 00 00       	push   $0x46ed
    15b1:	6a 01                	push   $0x1
    15b3:	e8 13 29 00 00       	call   0x3ecb
    15b8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15bf:	e8 b6 27 00 00       	call   0x3d7a
    15c4:	83 ec 08             	sub    $0x8,%esp
    15c7:	68 04 47 00 00       	push   $0x4704
    15cc:	6a 01                	push   $0x1
    15ce:	e8 f8 28 00 00       	call   0x3ecb
    15d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15da:	e8 9b 27 00 00       	call   0x3d7a
    15df:	f3 0f 1e fb          	endbr32 
    15e3:	55                   	push   %ebp
    15e4:	89 e5                	mov    %esp,%ebp
    15e6:	53                   	push   %ebx
    15e7:	83 ec 0c             	sub    $0xc,%esp
    15ea:	68 2c 47 00 00       	push   $0x472c
    15ef:	6a 01                	push   $0x1
    15f1:	e8 d5 28 00 00       	call   0x3ecb
    15f6:	c7 04 24 36 47 00 00 	movl   $0x4736,(%esp)
    15fd:	e8 c8 27 00 00       	call   0x3dca
    1602:	c7 04 24 3a 47 00 00 	movl   $0x473a,(%esp)
    1609:	e8 bc 27 00 00       	call   0x3dca
    160e:	83 c4 08             	add    $0x8,%esp
    1611:	68 02 02 00 00       	push   $0x202
    1616:	68 36 47 00 00       	push   $0x4736
    161b:	e8 9a 27 00 00       	call   0x3dba
    1620:	83 c4 10             	add    $0x10,%esp
    1623:	85 c0                	test   %eax,%eax
    1625:	0f 88 2a 01 00 00    	js     0x1755
    162b:	89 c3                	mov    %eax,%ebx
    162d:	83 ec 04             	sub    $0x4,%esp
    1630:	6a 05                	push   $0x5
    1632:	68 9a 46 00 00       	push   $0x469a
    1637:	50                   	push   %eax
    1638:	e8 5d 27 00 00       	call   0x3d9a
    163d:	83 c4 10             	add    $0x10,%esp
    1640:	83 f8 05             	cmp    $0x5,%eax
    1643:	0f 85 27 01 00 00    	jne    0x1770
    1649:	83 ec 0c             	sub    $0xc,%esp
    164c:	53                   	push   %ebx
    164d:	e8 50 27 00 00       	call   0x3da2
    1652:	83 c4 08             	add    $0x8,%esp
    1655:	68 3a 47 00 00       	push   $0x473a
    165a:	68 36 47 00 00       	push   $0x4736
    165f:	e8 76 27 00 00       	call   0x3dda
    1664:	83 c4 10             	add    $0x10,%esp
    1667:	85 c0                	test   %eax,%eax
    1669:	0f 88 1c 01 00 00    	js     0x178b
    166f:	83 ec 0c             	sub    $0xc,%esp
    1672:	68 36 47 00 00       	push   $0x4736
    1677:	e8 4e 27 00 00       	call   0x3dca
    167c:	83 c4 08             	add    $0x8,%esp
    167f:	6a 00                	push   $0x0
    1681:	68 36 47 00 00       	push   $0x4736
    1686:	e8 2f 27 00 00       	call   0x3dba
    168b:	83 c4 10             	add    $0x10,%esp
    168e:	85 c0                	test   %eax,%eax
    1690:	0f 89 10 01 00 00    	jns    0x17a6
    1696:	83 ec 08             	sub    $0x8,%esp
    1699:	6a 00                	push   $0x0
    169b:	68 3a 47 00 00       	push   $0x473a
    16a0:	e8 15 27 00 00       	call   0x3dba
    16a5:	89 c3                	mov    %eax,%ebx
    16a7:	83 c4 10             	add    $0x10,%esp
    16aa:	85 c0                	test   %eax,%eax
    16ac:	0f 88 0f 01 00 00    	js     0x17c1
    16b2:	83 ec 04             	sub    $0x4,%esp
    16b5:	68 00 20 00 00       	push   $0x2000
    16ba:	68 a0 89 00 00       	push   $0x89a0
    16bf:	50                   	push   %eax
    16c0:	e8 cd 26 00 00       	call   0x3d92
    16c5:	83 c4 10             	add    $0x10,%esp
    16c8:	83 f8 05             	cmp    $0x5,%eax
    16cb:	0f 85 0b 01 00 00    	jne    0x17dc
    16d1:	83 ec 0c             	sub    $0xc,%esp
    16d4:	53                   	push   %ebx
    16d5:	e8 c8 26 00 00       	call   0x3da2
    16da:	83 c4 08             	add    $0x8,%esp
    16dd:	68 3a 47 00 00       	push   $0x473a
    16e2:	68 3a 47 00 00       	push   $0x473a
    16e7:	e8 ee 26 00 00       	call   0x3dda
    16ec:	83 c4 10             	add    $0x10,%esp
    16ef:	85 c0                	test   %eax,%eax
    16f1:	0f 89 00 01 00 00    	jns    0x17f7
    16f7:	83 ec 0c             	sub    $0xc,%esp
    16fa:	68 3a 47 00 00       	push   $0x473a
    16ff:	e8 c6 26 00 00       	call   0x3dca
    1704:	83 c4 08             	add    $0x8,%esp
    1707:	68 36 47 00 00       	push   $0x4736
    170c:	68 3a 47 00 00       	push   $0x473a
    1711:	e8 c4 26 00 00       	call   0x3dda
    1716:	83 c4 10             	add    $0x10,%esp
    1719:	85 c0                	test   %eax,%eax
    171b:	0f 89 f1 00 00 00    	jns    0x1812
    1721:	83 ec 08             	sub    $0x8,%esp
    1724:	68 36 47 00 00       	push   $0x4736
    1729:	68 fe 49 00 00       	push   $0x49fe
    172e:	e8 a7 26 00 00       	call   0x3dda
    1733:	83 c4 10             	add    $0x10,%esp
    1736:	85 c0                	test   %eax,%eax
    1738:	0f 89 ef 00 00 00    	jns    0x182d
    173e:	83 ec 08             	sub    $0x8,%esp
    1741:	68 d4 47 00 00       	push   $0x47d4
    1746:	6a 01                	push   $0x1
    1748:	e8 7e 27 00 00       	call   0x3ecb
    174d:	83 c4 10             	add    $0x10,%esp
    1750:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1753:	c9                   	leave  
    1754:	c3                   	ret    
    1755:	83 ec 08             	sub    $0x8,%esp
    1758:	68 3e 47 00 00       	push   $0x473e
    175d:	6a 01                	push   $0x1
    175f:	e8 67 27 00 00       	call   0x3ecb
    1764:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    176b:	e8 0a 26 00 00       	call   0x3d7a
    1770:	83 ec 08             	sub    $0x8,%esp
    1773:	68 51 47 00 00       	push   $0x4751
    1778:	6a 01                	push   $0x1
    177a:	e8 4c 27 00 00       	call   0x3ecb
    177f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1786:	e8 ef 25 00 00       	call   0x3d7a
    178b:	83 ec 08             	sub    $0x8,%esp
    178e:	68 63 47 00 00       	push   $0x4763
    1793:	6a 01                	push   $0x1
    1795:	e8 31 27 00 00       	call   0x3ecb
    179a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17a1:	e8 d4 25 00 00       	call   0x3d7a
    17a6:	83 ec 08             	sub    $0x8,%esp
    17a9:	68 44 53 00 00       	push   $0x5344
    17ae:	6a 01                	push   $0x1
    17b0:	e8 16 27 00 00       	call   0x3ecb
    17b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17bc:	e8 b9 25 00 00       	call   0x3d7a
    17c1:	83 ec 08             	sub    $0x8,%esp
    17c4:	68 78 47 00 00       	push   $0x4778
    17c9:	6a 01                	push   $0x1
    17cb:	e8 fb 26 00 00       	call   0x3ecb
    17d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17d7:	e8 9e 25 00 00       	call   0x3d7a
    17dc:	83 ec 08             	sub    $0x8,%esp
    17df:	68 89 47 00 00       	push   $0x4789
    17e4:	6a 01                	push   $0x1
    17e6:	e8 e0 26 00 00       	call   0x3ecb
    17eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17f2:	e8 83 25 00 00       	call   0x3d7a
    17f7:	83 ec 08             	sub    $0x8,%esp
    17fa:	68 9a 47 00 00       	push   $0x479a
    17ff:	6a 01                	push   $0x1
    1801:	e8 c5 26 00 00       	call   0x3ecb
    1806:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    180d:	e8 68 25 00 00       	call   0x3d7a
    1812:	83 ec 08             	sub    $0x8,%esp
    1815:	68 6c 53 00 00       	push   $0x536c
    181a:	6a 01                	push   $0x1
    181c:	e8 aa 26 00 00       	call   0x3ecb
    1821:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1828:	e8 4d 25 00 00       	call   0x3d7a
    182d:	83 ec 08             	sub    $0x8,%esp
    1830:	68 b8 47 00 00       	push   $0x47b8
    1835:	6a 01                	push   $0x1
    1837:	e8 8f 26 00 00       	call   0x3ecb
    183c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1843:	e8 32 25 00 00       	call   0x3d7a
    1848:	f3 0f 1e fb          	endbr32 
    184c:	55                   	push   %ebp
    184d:	89 e5                	mov    %esp,%ebp
    184f:	57                   	push   %edi
    1850:	56                   	push   %esi
    1851:	53                   	push   %ebx
    1852:	83 ec 54             	sub    $0x54,%esp
    1855:	68 e1 47 00 00       	push   $0x47e1
    185a:	6a 01                	push   $0x1
    185c:	e8 6a 26 00 00       	call   0x3ecb
    1861:	c6 45 e5 43          	movb   $0x43,-0x1b(%ebp)
    1865:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
    1869:	83 c4 10             	add    $0x10,%esp
    186c:	bb 00 00 00 00       	mov    $0x0,%ebx
    1871:	eb 66                	jmp    0x18d9
    1873:	85 f6                	test   %esi,%esi
    1875:	75 22                	jne    0x1899
    1877:	ba 67 66 66 66       	mov    $0x66666667,%edx
    187c:	89 d8                	mov    %ebx,%eax
    187e:	f7 ea                	imul   %edx
    1880:	d1 fa                	sar    %edx
    1882:	89 d8                	mov    %ebx,%eax
    1884:	c1 f8 1f             	sar    $0x1f,%eax
    1887:	29 c2                	sub    %eax,%edx
    1889:	8d 04 92             	lea    (%edx,%edx,4),%eax
    188c:	89 da                	mov    %ebx,%edx
    188e:	29 c2                	sub    %eax,%edx
    1890:	83 fa 01             	cmp    $0x1,%edx
    1893:	0f 84 a3 00 00 00    	je     0x193c
    1899:	83 ec 08             	sub    $0x8,%esp
    189c:	68 02 02 00 00       	push   $0x202
    18a1:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    18a4:	50                   	push   %eax
    18a5:	e8 10 25 00 00       	call   0x3dba
    18aa:	83 c4 10             	add    $0x10,%esp
    18ad:	85 c0                	test   %eax,%eax
    18af:	0f 88 a0 00 00 00    	js     0x1955
    18b5:	83 ec 0c             	sub    $0xc,%esp
    18b8:	50                   	push   %eax
    18b9:	e8 e4 24 00 00       	call   0x3da2
    18be:	83 c4 10             	add    $0x10,%esp
    18c1:	85 f6                	test   %esi,%esi
    18c3:	0f 84 ab 00 00 00    	je     0x1974
    18c9:	83 ec 0c             	sub    $0xc,%esp
    18cc:	6a 00                	push   $0x0
    18ce:	e8 af 24 00 00       	call   0x3d82
    18d3:	83 c3 01             	add    $0x1,%ebx
    18d6:	83 c4 10             	add    $0x10,%esp
    18d9:	83 fb 27             	cmp    $0x27,%ebx
    18dc:	0f 8f 9c 00 00 00    	jg     0x197e
    18e2:	8d 43 30             	lea    0x30(%ebx),%eax
    18e5:	88 45 e6             	mov    %al,-0x1a(%ebp)
    18e8:	83 ec 0c             	sub    $0xc,%esp
    18eb:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    18ee:	50                   	push   %eax
    18ef:	e8 d6 24 00 00       	call   0x3dca
    18f4:	e8 79 24 00 00       	call   0x3d72
    18f9:	89 c6                	mov    %eax,%esi
    18fb:	83 c4 10             	add    $0x10,%esp
    18fe:	85 c0                	test   %eax,%eax
    1900:	0f 84 6d ff ff ff    	je     0x1873
    1906:	ba 56 55 55 55       	mov    $0x55555556,%edx
    190b:	89 d8                	mov    %ebx,%eax
    190d:	f7 ea                	imul   %edx
    190f:	89 d8                	mov    %ebx,%eax
    1911:	c1 f8 1f             	sar    $0x1f,%eax
    1914:	29 c2                	sub    %eax,%edx
    1916:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1919:	89 da                	mov    %ebx,%edx
    191b:	29 c2                	sub    %eax,%edx
    191d:	83 fa 01             	cmp    $0x1,%edx
    1920:	0f 85 4d ff ff ff    	jne    0x1873
    1926:	83 ec 08             	sub    $0x8,%esp
    1929:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    192c:	50                   	push   %eax
    192d:	68 f1 47 00 00       	push   $0x47f1
    1932:	e8 a3 24 00 00       	call   0x3dda
    1937:	83 c4 10             	add    $0x10,%esp
    193a:	eb 85                	jmp    0x18c1
    193c:	83 ec 08             	sub    $0x8,%esp
    193f:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1942:	50                   	push   %eax
    1943:	68 f1 47 00 00       	push   $0x47f1
    1948:	e8 8d 24 00 00       	call   0x3dda
    194d:	83 c4 10             	add    $0x10,%esp
    1950:	e9 6c ff ff ff       	jmp    0x18c1
    1955:	83 ec 04             	sub    $0x4,%esp
    1958:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    195b:	50                   	push   %eax
    195c:	68 f4 47 00 00       	push   $0x47f4
    1961:	6a 01                	push   $0x1
    1963:	e8 63 25 00 00       	call   0x3ecb
    1968:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    196f:	e8 06 24 00 00       	call   0x3d7a
    1974:	83 ec 0c             	sub    $0xc,%esp
    1977:	6a 00                	push   $0x0
    1979:	e8 fc 23 00 00       	call   0x3d7a
    197e:	83 ec 04             	sub    $0x4,%esp
    1981:	6a 28                	push   $0x28
    1983:	6a 00                	push   $0x0
    1985:	8d 45 bd             	lea    -0x43(%ebp),%eax
    1988:	50                   	push   %eax
    1989:	e8 9f 22 00 00       	call   0x3c2d
    198e:	83 c4 08             	add    $0x8,%esp
    1991:	6a 00                	push   $0x0
    1993:	68 fe 49 00 00       	push   $0x49fe
    1998:	e8 1d 24 00 00       	call   0x3dba
    199d:	89 c3                	mov    %eax,%ebx
    199f:	83 c4 10             	add    $0x10,%esp
    19a2:	be 00 00 00 00       	mov    $0x0,%esi
    19a7:	83 ec 04             	sub    $0x4,%esp
    19aa:	6a 10                	push   $0x10
    19ac:	8d 45 ac             	lea    -0x54(%ebp),%eax
    19af:	50                   	push   %eax
    19b0:	53                   	push   %ebx
    19b1:	e8 dc 23 00 00       	call   0x3d92
    19b6:	83 c4 10             	add    $0x10,%esp
    19b9:	85 c0                	test   %eax,%eax
    19bb:	7e 6e                	jle    0x1a2b
    19bd:	66 83 7d ac 00       	cmpw   $0x0,-0x54(%ebp)
    19c2:	74 e3                	je     0x19a7
    19c4:	80 7d ae 43          	cmpb   $0x43,-0x52(%ebp)
    19c8:	75 dd                	jne    0x19a7
    19ca:	80 7d b0 00          	cmpb   $0x0,-0x50(%ebp)
    19ce:	75 d7                	jne    0x19a7
    19d0:	0f be 45 af          	movsbl -0x51(%ebp),%eax
    19d4:	83 e8 30             	sub    $0x30,%eax
    19d7:	83 f8 27             	cmp    $0x27,%eax
    19da:	77 11                	ja     0x19ed
    19dc:	80 7c 05 bd 00       	cmpb   $0x0,-0x43(%ebp,%eax,1)
    19e1:	75 29                	jne    0x1a0c
    19e3:	c6 44 05 bd 01       	movb   $0x1,-0x43(%ebp,%eax,1)
    19e8:	83 c6 01             	add    $0x1,%esi
    19eb:	eb ba                	jmp    0x19a7
    19ed:	83 ec 04             	sub    $0x4,%esp
    19f0:	8d 45 ae             	lea    -0x52(%ebp),%eax
    19f3:	50                   	push   %eax
    19f4:	68 10 48 00 00       	push   $0x4810
    19f9:	6a 01                	push   $0x1
    19fb:	e8 cb 24 00 00       	call   0x3ecb
    1a00:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a07:	e8 6e 23 00 00       	call   0x3d7a
    1a0c:	83 ec 04             	sub    $0x4,%esp
    1a0f:	8d 45 ae             	lea    -0x52(%ebp),%eax
    1a12:	50                   	push   %eax
    1a13:	68 29 48 00 00       	push   $0x4829
    1a18:	6a 01                	push   $0x1
    1a1a:	e8 ac 24 00 00       	call   0x3ecb
    1a1f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a26:	e8 4f 23 00 00       	call   0x3d7a
    1a2b:	83 ec 0c             	sub    $0xc,%esp
    1a2e:	53                   	push   %ebx
    1a2f:	e8 6e 23 00 00       	call   0x3da2
    1a34:	83 c4 10             	add    $0x10,%esp
    1a37:	83 fe 28             	cmp    $0x28,%esi
    1a3a:	75 0a                	jne    0x1a46
    1a3c:	bb 00 00 00 00       	mov    $0x0,%ebx
    1a41:	e9 a0 00 00 00       	jmp    0x1ae6
    1a46:	83 ec 08             	sub    $0x8,%esp
    1a49:	68 90 53 00 00       	push   $0x5390
    1a4e:	6a 01                	push   $0x1
    1a50:	e8 76 24 00 00       	call   0x3ecb
    1a55:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a5c:	e8 19 23 00 00       	call   0x3d7a
    1a61:	83 ec 08             	sub    $0x8,%esp
    1a64:	68 c9 50 00 00       	push   $0x50c9
    1a69:	6a 01                	push   $0x1
    1a6b:	e8 5b 24 00 00       	call   0x3ecb
    1a70:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a77:	e8 fe 22 00 00       	call   0x3d7a
    1a7c:	83 ec 08             	sub    $0x8,%esp
    1a7f:	6a 00                	push   $0x0
    1a81:	8d 7d e5             	lea    -0x1b(%ebp),%edi
    1a84:	57                   	push   %edi
    1a85:	e8 30 23 00 00       	call   0x3dba
    1a8a:	89 04 24             	mov    %eax,(%esp)
    1a8d:	e8 10 23 00 00       	call   0x3da2
    1a92:	83 c4 08             	add    $0x8,%esp
    1a95:	6a 00                	push   $0x0
    1a97:	57                   	push   %edi
    1a98:	e8 1d 23 00 00       	call   0x3dba
    1a9d:	89 04 24             	mov    %eax,(%esp)
    1aa0:	e8 fd 22 00 00       	call   0x3da2
    1aa5:	83 c4 08             	add    $0x8,%esp
    1aa8:	6a 00                	push   $0x0
    1aaa:	57                   	push   %edi
    1aab:	e8 0a 23 00 00       	call   0x3dba
    1ab0:	89 04 24             	mov    %eax,(%esp)
    1ab3:	e8 ea 22 00 00       	call   0x3da2
    1ab8:	83 c4 08             	add    $0x8,%esp
    1abb:	6a 00                	push   $0x0
    1abd:	57                   	push   %edi
    1abe:	e8 f7 22 00 00       	call   0x3dba
    1ac3:	89 04 24             	mov    %eax,(%esp)
    1ac6:	e8 d7 22 00 00       	call   0x3da2
    1acb:	83 c4 10             	add    $0x10,%esp
    1ace:	85 f6                	test   %esi,%esi
    1ad0:	0f 84 84 00 00 00    	je     0x1b5a
    1ad6:	83 ec 0c             	sub    $0xc,%esp
    1ad9:	6a 00                	push   $0x0
    1adb:	e8 a2 22 00 00       	call   0x3d82
    1ae0:	83 c3 01             	add    $0x1,%ebx
    1ae3:	83 c4 10             	add    $0x10,%esp
    1ae6:	83 fb 27             	cmp    $0x27,%ebx
    1ae9:	7f 79                	jg     0x1b64
    1aeb:	8d 43 30             	lea    0x30(%ebx),%eax
    1aee:	88 45 e6             	mov    %al,-0x1a(%ebp)
    1af1:	e8 7c 22 00 00       	call   0x3d72
    1af6:	89 c6                	mov    %eax,%esi
    1af8:	85 c0                	test   %eax,%eax
    1afa:	0f 88 61 ff ff ff    	js     0x1a61
    1b00:	ba 56 55 55 55       	mov    $0x55555556,%edx
    1b05:	89 d8                	mov    %ebx,%eax
    1b07:	f7 ea                	imul   %edx
    1b09:	89 d8                	mov    %ebx,%eax
    1b0b:	c1 f8 1f             	sar    $0x1f,%eax
    1b0e:	29 c2                	sub    %eax,%edx
    1b10:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1b13:	89 da                	mov    %ebx,%edx
    1b15:	29 c2                	sub    %eax,%edx
    1b17:	89 d0                	mov    %edx,%eax
    1b19:	09 f0                	or     %esi,%eax
    1b1b:	0f 84 5b ff ff ff    	je     0x1a7c
    1b21:	83 fa 01             	cmp    $0x1,%edx
    1b24:	75 08                	jne    0x1b2e
    1b26:	85 f6                	test   %esi,%esi
    1b28:	0f 85 4e ff ff ff    	jne    0x1a7c
    1b2e:	83 ec 0c             	sub    $0xc,%esp
    1b31:	8d 7d e5             	lea    -0x1b(%ebp),%edi
    1b34:	57                   	push   %edi
    1b35:	e8 90 22 00 00       	call   0x3dca
    1b3a:	89 3c 24             	mov    %edi,(%esp)
    1b3d:	e8 88 22 00 00       	call   0x3dca
    1b42:	89 3c 24             	mov    %edi,(%esp)
    1b45:	e8 80 22 00 00       	call   0x3dca
    1b4a:	89 3c 24             	mov    %edi,(%esp)
    1b4d:	e8 78 22 00 00       	call   0x3dca
    1b52:	83 c4 10             	add    $0x10,%esp
    1b55:	e9 74 ff ff ff       	jmp    0x1ace
    1b5a:	83 ec 0c             	sub    $0xc,%esp
    1b5d:	6a 00                	push   $0x0
    1b5f:	e8 16 22 00 00       	call   0x3d7a
    1b64:	83 ec 08             	sub    $0x8,%esp
    1b67:	68 46 48 00 00       	push   $0x4846
    1b6c:	6a 01                	push   $0x1
    1b6e:	e8 58 23 00 00       	call   0x3ecb
    1b73:	83 c4 10             	add    $0x10,%esp
    1b76:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1b79:	5b                   	pop    %ebx
    1b7a:	5e                   	pop    %esi
    1b7b:	5f                   	pop    %edi
    1b7c:	5d                   	pop    %ebp
    1b7d:	c3                   	ret    
    1b7e:	f3 0f 1e fb          	endbr32 
    1b82:	55                   	push   %ebp
    1b83:	89 e5                	mov    %esp,%ebp
    1b85:	57                   	push   %edi
    1b86:	56                   	push   %esi
    1b87:	53                   	push   %ebx
    1b88:	83 ec 14             	sub    $0x14,%esp
    1b8b:	68 54 48 00 00       	push   $0x4854
    1b90:	6a 01                	push   $0x1
    1b92:	e8 34 23 00 00       	call   0x3ecb
    1b97:	c7 04 24 e1 4a 00 00 	movl   $0x4ae1,(%esp)
    1b9e:	e8 27 22 00 00       	call   0x3dca
    1ba3:	e8 ca 21 00 00       	call   0x3d72
    1ba8:	83 c4 10             	add    $0x10,%esp
    1bab:	85 c0                	test   %eax,%eax
    1bad:	78 10                	js     0x1bbf
    1baf:	89 c7                	mov    %eax,%edi
    1bb1:	74 27                	je     0x1bda
    1bb3:	bb 01 00 00 00       	mov    $0x1,%ebx
    1bb8:	be 00 00 00 00       	mov    $0x0,%esi
    1bbd:	eb 54                	jmp    0x1c13
    1bbf:	83 ec 08             	sub    $0x8,%esp
    1bc2:	68 c9 50 00 00       	push   $0x50c9
    1bc7:	6a 01                	push   $0x1
    1bc9:	e8 fd 22 00 00       	call   0x3ecb
    1bce:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bd5:	e8 a0 21 00 00       	call   0x3d7a
    1bda:	bb 61 00 00 00       	mov    $0x61,%ebx
    1bdf:	eb d7                	jmp    0x1bb8
    1be1:	83 ec 08             	sub    $0x8,%esp
    1be4:	68 02 02 00 00       	push   $0x202
    1be9:	68 e1 4a 00 00       	push   $0x4ae1
    1bee:	e8 c7 21 00 00       	call   0x3dba
    1bf3:	89 04 24             	mov    %eax,(%esp)
    1bf6:	e8 a7 21 00 00       	call   0x3da2
    1bfb:	83 c4 10             	add    $0x10,%esp
    1bfe:	eb 10                	jmp    0x1c10
    1c00:	83 ec 0c             	sub    $0xc,%esp
    1c03:	68 e1 4a 00 00       	push   $0x4ae1
    1c08:	e8 bd 21 00 00       	call   0x3dca
    1c0d:	83 c4 10             	add    $0x10,%esp
    1c10:	83 c6 01             	add    $0x1,%esi
    1c13:	83 fe 63             	cmp    $0x63,%esi
    1c16:	7f 40                	jg     0x1c58
    1c18:	69 db 6d 4e c6 41    	imul   $0x41c64e6d,%ebx,%ebx
    1c1e:	81 c3 39 30 00 00    	add    $0x3039,%ebx
    1c24:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
    1c29:	89 d8                	mov    %ebx,%eax
    1c2b:	f7 e2                	mul    %edx
    1c2d:	89 d0                	mov    %edx,%eax
    1c2f:	d1 e8                	shr    %eax
    1c31:	83 e2 fe             	and    $0xfffffffe,%edx
    1c34:	01 c2                	add    %eax,%edx
    1c36:	89 d8                	mov    %ebx,%eax
    1c38:	29 d0                	sub    %edx,%eax
    1c3a:	74 a5                	je     0x1be1
    1c3c:	83 f8 01             	cmp    $0x1,%eax
    1c3f:	75 bf                	jne    0x1c00
    1c41:	83 ec 08             	sub    $0x8,%esp
    1c44:	68 e1 4a 00 00       	push   $0x4ae1
    1c49:	68 65 48 00 00       	push   $0x4865
    1c4e:	e8 87 21 00 00       	call   0x3dda
    1c53:	83 c4 10             	add    $0x10,%esp
    1c56:	eb b8                	jmp    0x1c10
    1c58:	85 ff                	test   %edi,%edi
    1c5a:	74 21                	je     0x1c7d
    1c5c:	83 ec 0c             	sub    $0xc,%esp
    1c5f:	6a 00                	push   $0x0
    1c61:	e8 1c 21 00 00       	call   0x3d82
    1c66:	83 c4 08             	add    $0x8,%esp
    1c69:	68 69 48 00 00       	push   $0x4869
    1c6e:	6a 01                	push   $0x1
    1c70:	e8 56 22 00 00       	call   0x3ecb
    1c75:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1c78:	5b                   	pop    %ebx
    1c79:	5e                   	pop    %esi
    1c7a:	5f                   	pop    %edi
    1c7b:	5d                   	pop    %ebp
    1c7c:	c3                   	ret    
    1c7d:	83 ec 0c             	sub    $0xc,%esp
    1c80:	6a 00                	push   $0x0
    1c82:	e8 f3 20 00 00       	call   0x3d7a
    1c87:	f3 0f 1e fb          	endbr32 
    1c8b:	55                   	push   %ebp
    1c8c:	89 e5                	mov    %esp,%ebp
    1c8e:	53                   	push   %ebx
    1c8f:	83 ec 1c             	sub    $0x1c,%esp
    1c92:	68 78 48 00 00       	push   $0x4878
    1c97:	6a 01                	push   $0x1
    1c99:	e8 2d 22 00 00       	call   0x3ecb
    1c9e:	c7 04 24 85 48 00 00 	movl   $0x4885,(%esp)
    1ca5:	e8 20 21 00 00       	call   0x3dca
    1caa:	83 c4 08             	add    $0x8,%esp
    1cad:	68 00 02 00 00       	push   $0x200
    1cb2:	68 85 48 00 00       	push   $0x4885
    1cb7:	e8 fe 20 00 00       	call   0x3dba
    1cbc:	83 c4 10             	add    $0x10,%esp
    1cbf:	85 c0                	test   %eax,%eax
    1cc1:	78 69                	js     0x1d2c
    1cc3:	83 ec 0c             	sub    $0xc,%esp
    1cc6:	50                   	push   %eax
    1cc7:	e8 d6 20 00 00       	call   0x3da2
    1ccc:	83 c4 10             	add    $0x10,%esp
    1ccf:	bb 00 00 00 00       	mov    $0x0,%ebx
    1cd4:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    1cda:	0f 8f 82 00 00 00    	jg     0x1d62
    1ce0:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    1ce4:	8d 43 3f             	lea    0x3f(%ebx),%eax
    1ce7:	85 db                	test   %ebx,%ebx
    1ce9:	0f 49 c3             	cmovns %ebx,%eax
    1cec:	c1 f8 06             	sar    $0x6,%eax
    1cef:	83 c0 30             	add    $0x30,%eax
    1cf2:	88 45 ef             	mov    %al,-0x11(%ebp)
    1cf5:	89 da                	mov    %ebx,%edx
    1cf7:	c1 fa 1f             	sar    $0x1f,%edx
    1cfa:	c1 ea 1a             	shr    $0x1a,%edx
    1cfd:	8d 04 13             	lea    (%ebx,%edx,1),%eax
    1d00:	83 e0 3f             	and    $0x3f,%eax
    1d03:	29 d0                	sub    %edx,%eax
    1d05:	83 c0 30             	add    $0x30,%eax
    1d08:	88 45 f0             	mov    %al,-0x10(%ebp)
    1d0b:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    1d0f:	83 ec 08             	sub    $0x8,%esp
    1d12:	8d 45 ee             	lea    -0x12(%ebp),%eax
    1d15:	50                   	push   %eax
    1d16:	68 85 48 00 00       	push   $0x4885
    1d1b:	e8 ba 20 00 00       	call   0x3dda
    1d20:	83 c4 10             	add    $0x10,%esp
    1d23:	85 c0                	test   %eax,%eax
    1d25:	75 20                	jne    0x1d47
    1d27:	83 c3 01             	add    $0x1,%ebx
    1d2a:	eb a8                	jmp    0x1cd4
    1d2c:	83 ec 08             	sub    $0x8,%esp
    1d2f:	68 88 48 00 00       	push   $0x4888
    1d34:	6a 01                	push   $0x1
    1d36:	e8 90 21 00 00       	call   0x3ecb
    1d3b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d42:	e8 33 20 00 00       	call   0x3d7a
    1d47:	83 ec 08             	sub    $0x8,%esp
    1d4a:	68 9e 48 00 00       	push   $0x489e
    1d4f:	6a 01                	push   $0x1
    1d51:	e8 75 21 00 00       	call   0x3ecb
    1d56:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d5d:	e8 18 20 00 00       	call   0x3d7a
    1d62:	83 ec 0c             	sub    $0xc,%esp
    1d65:	68 85 48 00 00       	push   $0x4885
    1d6a:	e8 5b 20 00 00       	call   0x3dca
    1d6f:	83 c4 10             	add    $0x10,%esp
    1d72:	bb 00 00 00 00       	mov    $0x0,%ebx
    1d77:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    1d7d:	7f 62                	jg     0x1de1
    1d7f:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    1d83:	8d 43 3f             	lea    0x3f(%ebx),%eax
    1d86:	85 db                	test   %ebx,%ebx
    1d88:	0f 49 c3             	cmovns %ebx,%eax
    1d8b:	c1 f8 06             	sar    $0x6,%eax
    1d8e:	83 c0 30             	add    $0x30,%eax
    1d91:	88 45 ef             	mov    %al,-0x11(%ebp)
    1d94:	89 da                	mov    %ebx,%edx
    1d96:	c1 fa 1f             	sar    $0x1f,%edx
    1d99:	c1 ea 1a             	shr    $0x1a,%edx
    1d9c:	8d 04 13             	lea    (%ebx,%edx,1),%eax
    1d9f:	83 e0 3f             	and    $0x3f,%eax
    1da2:	29 d0                	sub    %edx,%eax
    1da4:	83 c0 30             	add    $0x30,%eax
    1da7:	88 45 f0             	mov    %al,-0x10(%ebp)
    1daa:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    1dae:	83 ec 0c             	sub    $0xc,%esp
    1db1:	8d 45 ee             	lea    -0x12(%ebp),%eax
    1db4:	50                   	push   %eax
    1db5:	e8 10 20 00 00       	call   0x3dca
    1dba:	83 c4 10             	add    $0x10,%esp
    1dbd:	85 c0                	test   %eax,%eax
    1dbf:	75 05                	jne    0x1dc6
    1dc1:	83 c3 01             	add    $0x1,%ebx
    1dc4:	eb b1                	jmp    0x1d77
    1dc6:	83 ec 08             	sub    $0x8,%esp
    1dc9:	68 b2 48 00 00       	push   $0x48b2
    1dce:	6a 01                	push   $0x1
    1dd0:	e8 f6 20 00 00       	call   0x3ecb
    1dd5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1ddc:	e8 99 1f 00 00       	call   0x3d7a
    1de1:	83 ec 08             	sub    $0x8,%esp
    1de4:	68 c7 48 00 00       	push   $0x48c7
    1de9:	6a 01                	push   $0x1
    1deb:	e8 db 20 00 00       	call   0x3ecb
    1df0:	83 c4 10             	add    $0x10,%esp
    1df3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1df6:	c9                   	leave  
    1df7:	c3                   	ret    
    1df8:	f3 0f 1e fb          	endbr32 
    1dfc:	55                   	push   %ebp
    1dfd:	89 e5                	mov    %esp,%ebp
    1dff:	53                   	push   %ebx
    1e00:	83 ec 0c             	sub    $0xc,%esp
    1e03:	68 d2 48 00 00       	push   $0x48d2
    1e08:	6a 01                	push   $0x1
    1e0a:	e8 bc 20 00 00       	call   0x3ecb
    1e0f:	c7 04 24 5b 49 00 00 	movl   $0x495b,(%esp)
    1e16:	e8 af 1f 00 00       	call   0x3dca
    1e1b:	c7 04 24 f8 49 00 00 	movl   $0x49f8,(%esp)
    1e22:	e8 bb 1f 00 00       	call   0x3de2
    1e27:	83 c4 10             	add    $0x10,%esp
    1e2a:	85 c0                	test   %eax,%eax
    1e2c:	0f 85 14 04 00 00    	jne    0x2246
    1e32:	83 ec 08             	sub    $0x8,%esp
    1e35:	68 02 02 00 00       	push   $0x202
    1e3a:	68 31 49 00 00       	push   $0x4931
    1e3f:	e8 76 1f 00 00       	call   0x3dba
    1e44:	89 c3                	mov    %eax,%ebx
    1e46:	83 c4 10             	add    $0x10,%esp
    1e49:	85 c0                	test   %eax,%eax
    1e4b:	0f 88 10 04 00 00    	js     0x2261
    1e51:	83 ec 04             	sub    $0x4,%esp
    1e54:	6a 02                	push   $0x2
    1e56:	68 5b 49 00 00       	push   $0x495b
    1e5b:	50                   	push   %eax
    1e5c:	e8 39 1f 00 00       	call   0x3d9a
    1e61:	89 1c 24             	mov    %ebx,(%esp)
    1e64:	e8 39 1f 00 00       	call   0x3da2
    1e69:	c7 04 24 f8 49 00 00 	movl   $0x49f8,(%esp)
    1e70:	e8 55 1f 00 00       	call   0x3dca
    1e75:	83 c4 10             	add    $0x10,%esp
    1e78:	85 c0                	test   %eax,%eax
    1e7a:	0f 89 fc 03 00 00    	jns    0x227c
    1e80:	83 ec 0c             	sub    $0xc,%esp
    1e83:	68 0c 49 00 00       	push   $0x490c
    1e88:	e8 55 1f 00 00       	call   0x3de2
    1e8d:	83 c4 10             	add    $0x10,%esp
    1e90:	85 c0                	test   %eax,%eax
    1e92:	0f 85 ff 03 00 00    	jne    0x2297
    1e98:	83 ec 08             	sub    $0x8,%esp
    1e9b:	68 02 02 00 00       	push   $0x202
    1ea0:	68 2e 49 00 00       	push   $0x492e
    1ea5:	e8 10 1f 00 00       	call   0x3dba
    1eaa:	89 c3                	mov    %eax,%ebx
    1eac:	83 c4 10             	add    $0x10,%esp
    1eaf:	85 c0                	test   %eax,%eax
    1eb1:	0f 88 fb 03 00 00    	js     0x22b2
    1eb7:	83 ec 04             	sub    $0x4,%esp
    1eba:	6a 02                	push   $0x2
    1ebc:	68 4f 49 00 00       	push   $0x494f
    1ec1:	50                   	push   %eax
    1ec2:	e8 d3 1e 00 00       	call   0x3d9a
    1ec7:	89 1c 24             	mov    %ebx,(%esp)
    1eca:	e8 d3 1e 00 00       	call   0x3da2
    1ecf:	83 c4 08             	add    $0x8,%esp
    1ed2:	6a 00                	push   $0x0
    1ed4:	68 52 49 00 00       	push   $0x4952
    1ed9:	e8 dc 1e 00 00       	call   0x3dba
    1ede:	89 c3                	mov    %eax,%ebx
    1ee0:	83 c4 10             	add    $0x10,%esp
    1ee3:	85 c0                	test   %eax,%eax
    1ee5:	0f 88 e2 03 00 00    	js     0x22cd
    1eeb:	83 ec 04             	sub    $0x4,%esp
    1eee:	68 00 20 00 00       	push   $0x2000
    1ef3:	68 a0 89 00 00       	push   $0x89a0
    1ef8:	50                   	push   %eax
    1ef9:	e8 94 1e 00 00       	call   0x3d92
    1efe:	83 c4 10             	add    $0x10,%esp
    1f01:	83 f8 02             	cmp    $0x2,%eax
    1f04:	0f 85 de 03 00 00    	jne    0x22e8
    1f0a:	80 3d a0 89 00 00 66 	cmpb   $0x66,0x89a0
    1f11:	0f 85 d1 03 00 00    	jne    0x22e8
    1f17:	83 ec 0c             	sub    $0xc,%esp
    1f1a:	53                   	push   %ebx
    1f1b:	e8 82 1e 00 00       	call   0x3da2
    1f20:	83 c4 08             	add    $0x8,%esp
    1f23:	68 92 49 00 00       	push   $0x4992
    1f28:	68 2e 49 00 00       	push   $0x492e
    1f2d:	e8 a8 1e 00 00       	call   0x3dda
    1f32:	83 c4 10             	add    $0x10,%esp
    1f35:	85 c0                	test   %eax,%eax
    1f37:	0f 85 c6 03 00 00    	jne    0x2303
    1f3d:	83 ec 0c             	sub    $0xc,%esp
    1f40:	68 2e 49 00 00       	push   $0x492e
    1f45:	e8 80 1e 00 00       	call   0x3dca
    1f4a:	83 c4 10             	add    $0x10,%esp
    1f4d:	85 c0                	test   %eax,%eax
    1f4f:	0f 85 c9 03 00 00    	jne    0x231e
    1f55:	83 ec 08             	sub    $0x8,%esp
    1f58:	6a 00                	push   $0x0
    1f5a:	68 2e 49 00 00       	push   $0x492e
    1f5f:	e8 56 1e 00 00       	call   0x3dba
    1f64:	83 c4 10             	add    $0x10,%esp
    1f67:	85 c0                	test   %eax,%eax
    1f69:	0f 89 ca 03 00 00    	jns    0x2339
    1f6f:	83 ec 0c             	sub    $0xc,%esp
    1f72:	68 f8 49 00 00       	push   $0x49f8
    1f77:	e8 6e 1e 00 00       	call   0x3dea
    1f7c:	83 c4 10             	add    $0x10,%esp
    1f7f:	85 c0                	test   %eax,%eax
    1f81:	0f 85 cd 03 00 00    	jne    0x2354
    1f87:	83 ec 0c             	sub    $0xc,%esp
    1f8a:	68 c6 49 00 00       	push   $0x49c6
    1f8f:	e8 56 1e 00 00       	call   0x3dea
    1f94:	83 c4 10             	add    $0x10,%esp
    1f97:	85 c0                	test   %eax,%eax
    1f99:	0f 85 d0 03 00 00    	jne    0x236f
    1f9f:	83 ec 0c             	sub    $0xc,%esp
    1fa2:	68 ec 49 00 00       	push   $0x49ec
    1fa7:	e8 3e 1e 00 00       	call   0x3dea
    1fac:	83 c4 10             	add    $0x10,%esp
    1faf:	85 c0                	test   %eax,%eax
    1fb1:	0f 85 d3 03 00 00    	jne    0x238a
    1fb7:	83 ec 0c             	sub    $0xc,%esp
    1fba:	68 fb 49 00 00       	push   $0x49fb
    1fbf:	e8 26 1e 00 00       	call   0x3dea
    1fc4:	83 c4 10             	add    $0x10,%esp
    1fc7:	85 c0                	test   %eax,%eax
    1fc9:	0f 85 d6 03 00 00    	jne    0x23a5
    1fcf:	83 ec 08             	sub    $0x8,%esp
    1fd2:	6a 00                	push   $0x0
    1fd4:	68 92 49 00 00       	push   $0x4992
    1fd9:	e8 dc 1d 00 00       	call   0x3dba
    1fde:	89 c3                	mov    %eax,%ebx
    1fe0:	83 c4 10             	add    $0x10,%esp
    1fe3:	85 c0                	test   %eax,%eax
    1fe5:	0f 88 d5 03 00 00    	js     0x23c0
    1feb:	83 ec 04             	sub    $0x4,%esp
    1fee:	68 00 20 00 00       	push   $0x2000
    1ff3:	68 a0 89 00 00       	push   $0x89a0
    1ff8:	50                   	push   %eax
    1ff9:	e8 94 1d 00 00       	call   0x3d92
    1ffe:	83 c4 10             	add    $0x10,%esp
    2001:	83 f8 02             	cmp    $0x2,%eax
    2004:	0f 85 d1 03 00 00    	jne    0x23db
    200a:	83 ec 0c             	sub    $0xc,%esp
    200d:	53                   	push   %ebx
    200e:	e8 8f 1d 00 00       	call   0x3da2
    2013:	83 c4 08             	add    $0x8,%esp
    2016:	6a 00                	push   $0x0
    2018:	68 2e 49 00 00       	push   $0x492e
    201d:	e8 98 1d 00 00       	call   0x3dba
    2022:	83 c4 10             	add    $0x10,%esp
    2025:	85 c0                	test   %eax,%eax
    2027:	0f 89 c9 03 00 00    	jns    0x23f6
    202d:	83 ec 08             	sub    $0x8,%esp
    2030:	68 02 02 00 00       	push   $0x202
    2035:	68 46 4a 00 00       	push   $0x4a46
    203a:	e8 7b 1d 00 00       	call   0x3dba
    203f:	83 c4 10             	add    $0x10,%esp
    2042:	85 c0                	test   %eax,%eax
    2044:	0f 89 c7 03 00 00    	jns    0x2411
    204a:	83 ec 08             	sub    $0x8,%esp
    204d:	68 02 02 00 00       	push   $0x202
    2052:	68 6b 4a 00 00       	push   $0x4a6b
    2057:	e8 5e 1d 00 00       	call   0x3dba
    205c:	83 c4 10             	add    $0x10,%esp
    205f:	85 c0                	test   %eax,%eax
    2061:	0f 89 c5 03 00 00    	jns    0x242c
    2067:	83 ec 08             	sub    $0x8,%esp
    206a:	68 00 02 00 00       	push   $0x200
    206f:	68 f8 49 00 00       	push   $0x49f8
    2074:	e8 41 1d 00 00       	call   0x3dba
    2079:	83 c4 10             	add    $0x10,%esp
    207c:	85 c0                	test   %eax,%eax
    207e:	0f 89 c3 03 00 00    	jns    0x2447
    2084:	83 ec 08             	sub    $0x8,%esp
    2087:	6a 02                	push   $0x2
    2089:	68 f8 49 00 00       	push   $0x49f8
    208e:	e8 27 1d 00 00       	call   0x3dba
    2093:	83 c4 10             	add    $0x10,%esp
    2096:	85 c0                	test   %eax,%eax
    2098:	0f 89 c4 03 00 00    	jns    0x2462
    209e:	83 ec 08             	sub    $0x8,%esp
    20a1:	6a 01                	push   $0x1
    20a3:	68 f8 49 00 00       	push   $0x49f8
    20a8:	e8 0d 1d 00 00       	call   0x3dba
    20ad:	83 c4 10             	add    $0x10,%esp
    20b0:	85 c0                	test   %eax,%eax
    20b2:	0f 89 c5 03 00 00    	jns    0x247d
    20b8:	83 ec 08             	sub    $0x8,%esp
    20bb:	68 da 4a 00 00       	push   $0x4ada
    20c0:	68 46 4a 00 00       	push   $0x4a46
    20c5:	e8 10 1d 00 00       	call   0x3dda
    20ca:	83 c4 10             	add    $0x10,%esp
    20cd:	85 c0                	test   %eax,%eax
    20cf:	0f 84 c3 03 00 00    	je     0x2498
    20d5:	83 ec 08             	sub    $0x8,%esp
    20d8:	68 da 4a 00 00       	push   $0x4ada
    20dd:	68 6b 4a 00 00       	push   $0x4a6b
    20e2:	e8 f3 1c 00 00       	call   0x3dda
    20e7:	83 c4 10             	add    $0x10,%esp
    20ea:	85 c0                	test   %eax,%eax
    20ec:	0f 84 c1 03 00 00    	je     0x24b3
    20f2:	83 ec 08             	sub    $0x8,%esp
    20f5:	68 92 49 00 00       	push   $0x4992
    20fa:	68 31 49 00 00       	push   $0x4931
    20ff:	e8 d6 1c 00 00       	call   0x3dda
    2104:	83 c4 10             	add    $0x10,%esp
    2107:	85 c0                	test   %eax,%eax
    2109:	0f 84 bf 03 00 00    	je     0x24ce
    210f:	83 ec 0c             	sub    $0xc,%esp
    2112:	68 46 4a 00 00       	push   $0x4a46
    2117:	e8 c6 1c 00 00       	call   0x3de2
    211c:	83 c4 10             	add    $0x10,%esp
    211f:	85 c0                	test   %eax,%eax
    2121:	0f 84 c2 03 00 00    	je     0x24e9
    2127:	83 ec 0c             	sub    $0xc,%esp
    212a:	68 6b 4a 00 00       	push   $0x4a6b
    212f:	e8 ae 1c 00 00       	call   0x3de2
    2134:	83 c4 10             	add    $0x10,%esp
    2137:	85 c0                	test   %eax,%eax
    2139:	0f 84 c5 03 00 00    	je     0x2504
    213f:	83 ec 0c             	sub    $0xc,%esp
    2142:	68 92 49 00 00       	push   $0x4992
    2147:	e8 96 1c 00 00       	call   0x3de2
    214c:	83 c4 10             	add    $0x10,%esp
    214f:	85 c0                	test   %eax,%eax
    2151:	0f 84 c8 03 00 00    	je     0x251f
    2157:	83 ec 0c             	sub    $0xc,%esp
    215a:	68 6b 4a 00 00       	push   $0x4a6b
    215f:	e8 66 1c 00 00       	call   0x3dca
    2164:	83 c4 10             	add    $0x10,%esp
    2167:	85 c0                	test   %eax,%eax
    2169:	0f 84 cb 03 00 00    	je     0x253a
    216f:	83 ec 0c             	sub    $0xc,%esp
    2172:	68 46 4a 00 00       	push   $0x4a46
    2177:	e8 4e 1c 00 00       	call   0x3dca
    217c:	83 c4 10             	add    $0x10,%esp
    217f:	85 c0                	test   %eax,%eax
    2181:	0f 84 ce 03 00 00    	je     0x2555
    2187:	83 ec 0c             	sub    $0xc,%esp
    218a:	68 31 49 00 00       	push   $0x4931
    218f:	e8 56 1c 00 00       	call   0x3dea
    2194:	83 c4 10             	add    $0x10,%esp
    2197:	85 c0                	test   %eax,%eax
    2199:	0f 84 d1 03 00 00    	je     0x2570
    219f:	83 ec 0c             	sub    $0xc,%esp
    21a2:	68 dd 4a 00 00       	push   $0x4add
    21a7:	e8 3e 1c 00 00       	call   0x3dea
    21ac:	83 c4 10             	add    $0x10,%esp
    21af:	85 c0                	test   %eax,%eax
    21b1:	0f 84 d4 03 00 00    	je     0x258b
    21b7:	83 ec 0c             	sub    $0xc,%esp
    21ba:	68 92 49 00 00       	push   $0x4992
    21bf:	e8 06 1c 00 00       	call   0x3dca
    21c4:	83 c4 10             	add    $0x10,%esp
    21c7:	85 c0                	test   %eax,%eax
    21c9:	0f 85 d7 03 00 00    	jne    0x25a6
    21cf:	83 ec 0c             	sub    $0xc,%esp
    21d2:	68 31 49 00 00       	push   $0x4931
    21d7:	e8 ee 1b 00 00       	call   0x3dca
    21dc:	83 c4 10             	add    $0x10,%esp
    21df:	85 c0                	test   %eax,%eax
    21e1:	0f 85 da 03 00 00    	jne    0x25c1
    21e7:	83 ec 0c             	sub    $0xc,%esp
    21ea:	68 f8 49 00 00       	push   $0x49f8
    21ef:	e8 d6 1b 00 00       	call   0x3dca
    21f4:	83 c4 10             	add    $0x10,%esp
    21f7:	85 c0                	test   %eax,%eax
    21f9:	0f 84 dd 03 00 00    	je     0x25dc
    21ff:	83 ec 0c             	sub    $0xc,%esp
    2202:	68 0d 49 00 00       	push   $0x490d
    2207:	e8 be 1b 00 00       	call   0x3dca
    220c:	83 c4 10             	add    $0x10,%esp
    220f:	85 c0                	test   %eax,%eax
    2211:	0f 88 e0 03 00 00    	js     0x25f7
    2217:	83 ec 0c             	sub    $0xc,%esp
    221a:	68 f8 49 00 00       	push   $0x49f8
    221f:	e8 a6 1b 00 00       	call   0x3dca
    2224:	83 c4 10             	add    $0x10,%esp
    2227:	85 c0                	test   %eax,%eax
    2229:	0f 88 e3 03 00 00    	js     0x2612
    222f:	83 ec 08             	sub    $0x8,%esp
    2232:	68 da 4b 00 00       	push   $0x4bda
    2237:	6a 01                	push   $0x1
    2239:	e8 8d 1c 00 00       	call   0x3ecb
    223e:	83 c4 10             	add    $0x10,%esp
    2241:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2244:	c9                   	leave  
    2245:	c3                   	ret    
    2246:	83 ec 08             	sub    $0x8,%esp
    2249:	68 df 48 00 00       	push   $0x48df
    224e:	6a 01                	push   $0x1
    2250:	e8 76 1c 00 00       	call   0x3ecb
    2255:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    225c:	e8 19 1b 00 00       	call   0x3d7a
    2261:	83 ec 08             	sub    $0x8,%esp
    2264:	68 f7 48 00 00       	push   $0x48f7
    2269:	6a 01                	push   $0x1
    226b:	e8 5b 1c 00 00       	call   0x3ecb
    2270:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2277:	e8 fe 1a 00 00       	call   0x3d7a
    227c:	83 ec 08             	sub    $0x8,%esp
    227f:	68 c4 53 00 00       	push   $0x53c4
    2284:	6a 01                	push   $0x1
    2286:	e8 40 1c 00 00       	call   0x3ecb
    228b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2292:	e8 e3 1a 00 00       	call   0x3d7a
    2297:	83 ec 08             	sub    $0x8,%esp
    229a:	68 13 49 00 00       	push   $0x4913
    229f:	6a 01                	push   $0x1
    22a1:	e8 25 1c 00 00       	call   0x3ecb
    22a6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    22ad:	e8 c8 1a 00 00       	call   0x3d7a
    22b2:	83 ec 08             	sub    $0x8,%esp
    22b5:	68 37 49 00 00       	push   $0x4937
    22ba:	6a 01                	push   $0x1
    22bc:	e8 0a 1c 00 00       	call   0x3ecb
    22c1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    22c8:	e8 ad 1a 00 00       	call   0x3d7a
    22cd:	83 ec 08             	sub    $0x8,%esp
    22d0:	68 5e 49 00 00       	push   $0x495e
    22d5:	6a 01                	push   $0x1
    22d7:	e8 ef 1b 00 00       	call   0x3ecb
    22dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    22e3:	e8 92 1a 00 00       	call   0x3d7a
    22e8:	83 ec 08             	sub    $0x8,%esp
    22eb:	68 77 49 00 00       	push   $0x4977
    22f0:	6a 01                	push   $0x1
    22f2:	e8 d4 1b 00 00       	call   0x3ecb
    22f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    22fe:	e8 77 1a 00 00       	call   0x3d7a
    2303:	83 ec 08             	sub    $0x8,%esp
    2306:	68 ec 53 00 00       	push   $0x53ec
    230b:	6a 01                	push   $0x1
    230d:	e8 b9 1b 00 00       	call   0x3ecb
    2312:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2319:	e8 5c 1a 00 00       	call   0x3d7a
    231e:	83 ec 08             	sub    $0x8,%esp
    2321:	68 9d 49 00 00       	push   $0x499d
    2326:	6a 01                	push   $0x1
    2328:	e8 9e 1b 00 00       	call   0x3ecb
    232d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2334:	e8 41 1a 00 00       	call   0x3d7a
    2339:	83 ec 08             	sub    $0x8,%esp
    233c:	68 10 54 00 00       	push   $0x5410
    2341:	6a 01                	push   $0x1
    2343:	e8 83 1b 00 00       	call   0x3ecb
    2348:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    234f:	e8 26 1a 00 00       	call   0x3d7a
    2354:	83 ec 08             	sub    $0x8,%esp
    2357:	68 b5 49 00 00       	push   $0x49b5
    235c:	6a 01                	push   $0x1
    235e:	e8 68 1b 00 00       	call   0x3ecb
    2363:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    236a:	e8 0b 1a 00 00       	call   0x3d7a
    236f:	83 ec 08             	sub    $0x8,%esp
    2372:	68 d2 49 00 00       	push   $0x49d2
    2377:	6a 01                	push   $0x1
    2379:	e8 4d 1b 00 00       	call   0x3ecb
    237e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2385:	e8 f0 19 00 00       	call   0x3d7a
    238a:	83 ec 08             	sub    $0x8,%esp
    238d:	68 d2 49 00 00       	push   $0x49d2
    2392:	6a 01                	push   $0x1
    2394:	e8 32 1b 00 00       	call   0x3ecb
    2399:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23a0:	e8 d5 19 00 00       	call   0x3d7a
    23a5:	83 ec 08             	sub    $0x8,%esp
    23a8:	68 00 4a 00 00       	push   $0x4a00
    23ad:	6a 01                	push   $0x1
    23af:	e8 17 1b 00 00       	call   0x3ecb
    23b4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23bb:	e8 ba 19 00 00       	call   0x3d7a
    23c0:	83 ec 08             	sub    $0x8,%esp
    23c3:	68 13 4a 00 00       	push   $0x4a13
    23c8:	6a 01                	push   $0x1
    23ca:	e8 fc 1a 00 00       	call   0x3ecb
    23cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23d6:	e8 9f 19 00 00       	call   0x3d7a
    23db:	83 ec 08             	sub    $0x8,%esp
    23de:	68 2b 4a 00 00       	push   $0x4a2b
    23e3:	6a 01                	push   $0x1
    23e5:	e8 e1 1a 00 00       	call   0x3ecb
    23ea:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23f1:	e8 84 19 00 00       	call   0x3d7a
    23f6:	83 ec 08             	sub    $0x8,%esp
    23f9:	68 34 54 00 00       	push   $0x5434
    23fe:	6a 01                	push   $0x1
    2400:	e8 c6 1a 00 00       	call   0x3ecb
    2405:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    240c:	e8 69 19 00 00       	call   0x3d7a
    2411:	83 ec 08             	sub    $0x8,%esp
    2414:	68 4f 4a 00 00       	push   $0x4a4f
    2419:	6a 01                	push   $0x1
    241b:	e8 ab 1a 00 00       	call   0x3ecb
    2420:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2427:	e8 4e 19 00 00       	call   0x3d7a
    242c:	83 ec 08             	sub    $0x8,%esp
    242f:	68 74 4a 00 00       	push   $0x4a74
    2434:	6a 01                	push   $0x1
    2436:	e8 90 1a 00 00       	call   0x3ecb
    243b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2442:	e8 33 19 00 00       	call   0x3d7a
    2447:	83 ec 08             	sub    $0x8,%esp
    244a:	68 90 4a 00 00       	push   $0x4a90
    244f:	6a 01                	push   $0x1
    2451:	e8 75 1a 00 00       	call   0x3ecb
    2456:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    245d:	e8 18 19 00 00       	call   0x3d7a
    2462:	83 ec 08             	sub    $0x8,%esp
    2465:	68 a6 4a 00 00       	push   $0x4aa6
    246a:	6a 01                	push   $0x1
    246c:	e8 5a 1a 00 00       	call   0x3ecb
    2471:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2478:	e8 fd 18 00 00       	call   0x3d7a
    247d:	83 ec 08             	sub    $0x8,%esp
    2480:	68 bf 4a 00 00       	push   $0x4abf
    2485:	6a 01                	push   $0x1
    2487:	e8 3f 1a 00 00       	call   0x3ecb
    248c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2493:	e8 e2 18 00 00       	call   0x3d7a
    2498:	83 ec 08             	sub    $0x8,%esp
    249b:	68 5c 54 00 00       	push   $0x545c
    24a0:	6a 01                	push   $0x1
    24a2:	e8 24 1a 00 00       	call   0x3ecb
    24a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24ae:	e8 c7 18 00 00       	call   0x3d7a
    24b3:	83 ec 08             	sub    $0x8,%esp
    24b6:	68 80 54 00 00       	push   $0x5480
    24bb:	6a 01                	push   $0x1
    24bd:	e8 09 1a 00 00       	call   0x3ecb
    24c2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24c9:	e8 ac 18 00 00       	call   0x3d7a
    24ce:	83 ec 08             	sub    $0x8,%esp
    24d1:	68 a4 54 00 00       	push   $0x54a4
    24d6:	6a 01                	push   $0x1
    24d8:	e8 ee 19 00 00       	call   0x3ecb
    24dd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24e4:	e8 91 18 00 00       	call   0x3d7a
    24e9:	83 ec 08             	sub    $0x8,%esp
    24ec:	68 e3 4a 00 00       	push   $0x4ae3
    24f1:	6a 01                	push   $0x1
    24f3:	e8 d3 19 00 00       	call   0x3ecb
    24f8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24ff:	e8 76 18 00 00       	call   0x3d7a
    2504:	83 ec 08             	sub    $0x8,%esp
    2507:	68 fe 4a 00 00       	push   $0x4afe
    250c:	6a 01                	push   $0x1
    250e:	e8 b8 19 00 00       	call   0x3ecb
    2513:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    251a:	e8 5b 18 00 00       	call   0x3d7a
    251f:	83 ec 08             	sub    $0x8,%esp
    2522:	68 19 4b 00 00       	push   $0x4b19
    2527:	6a 01                	push   $0x1
    2529:	e8 9d 19 00 00       	call   0x3ecb
    252e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2535:	e8 40 18 00 00       	call   0x3d7a
    253a:	83 ec 08             	sub    $0x8,%esp
    253d:	68 36 4b 00 00       	push   $0x4b36
    2542:	6a 01                	push   $0x1
    2544:	e8 82 19 00 00       	call   0x3ecb
    2549:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2550:	e8 25 18 00 00       	call   0x3d7a
    2555:	83 ec 08             	sub    $0x8,%esp
    2558:	68 52 4b 00 00       	push   $0x4b52
    255d:	6a 01                	push   $0x1
    255f:	e8 67 19 00 00       	call   0x3ecb
    2564:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    256b:	e8 0a 18 00 00       	call   0x3d7a
    2570:	83 ec 08             	sub    $0x8,%esp
    2573:	68 6e 4b 00 00       	push   $0x4b6e
    2578:	6a 01                	push   $0x1
    257a:	e8 4c 19 00 00       	call   0x3ecb
    257f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2586:	e8 ef 17 00 00       	call   0x3d7a
    258b:	83 ec 08             	sub    $0x8,%esp
    258e:	68 86 4b 00 00       	push   $0x4b86
    2593:	6a 01                	push   $0x1
    2595:	e8 31 19 00 00       	call   0x3ecb
    259a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25a1:	e8 d4 17 00 00       	call   0x3d7a
    25a6:	83 ec 08             	sub    $0x8,%esp
    25a9:	68 9d 49 00 00       	push   $0x499d
    25ae:	6a 01                	push   $0x1
    25b0:	e8 16 19 00 00       	call   0x3ecb
    25b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25bc:	e8 b9 17 00 00       	call   0x3d7a
    25c1:	83 ec 08             	sub    $0x8,%esp
    25c4:	68 9e 4b 00 00       	push   $0x4b9e
    25c9:	6a 01                	push   $0x1
    25cb:	e8 fb 18 00 00       	call   0x3ecb
    25d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25d7:	e8 9e 17 00 00       	call   0x3d7a
    25dc:	83 ec 08             	sub    $0x8,%esp
    25df:	68 c8 54 00 00       	push   $0x54c8
    25e4:	6a 01                	push   $0x1
    25e6:	e8 e0 18 00 00       	call   0x3ecb
    25eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25f2:	e8 83 17 00 00       	call   0x3d7a
    25f7:	83 ec 08             	sub    $0x8,%esp
    25fa:	68 b3 4b 00 00       	push   $0x4bb3
    25ff:	6a 01                	push   $0x1
    2601:	e8 c5 18 00 00       	call   0x3ecb
    2606:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    260d:	e8 68 17 00 00       	call   0x3d7a
    2612:	83 ec 08             	sub    $0x8,%esp
    2615:	68 c8 4b 00 00       	push   $0x4bc8
    261a:	6a 01                	push   $0x1
    261c:	e8 aa 18 00 00       	call   0x3ecb
    2621:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2628:	e8 4d 17 00 00       	call   0x3d7a
    262d:	f3 0f 1e fb          	endbr32 
    2631:	55                   	push   %ebp
    2632:	89 e5                	mov    %esp,%ebp
    2634:	57                   	push   %edi
    2635:	56                   	push   %esi
    2636:	53                   	push   %ebx
    2637:	83 ec 14             	sub    $0x14,%esp
    263a:	68 e5 4b 00 00       	push   $0x4be5
    263f:	6a 01                	push   $0x1
    2641:	e8 85 18 00 00       	call   0x3ecb
    2646:	c7 04 24 f4 4b 00 00 	movl   $0x4bf4,(%esp)
    264d:	e8 78 17 00 00       	call   0x3dca
    2652:	83 c4 10             	add    $0x10,%esp
    2655:	be f3 01 00 00       	mov    $0x1f3,%esi
    265a:	eb 53                	jmp    0x26af
    265c:	83 ec 08             	sub    $0x8,%esp
    265f:	68 fd 4b 00 00       	push   $0x4bfd
    2664:	6a 01                	push   $0x1
    2666:	e8 60 18 00 00       	call   0x3ecb
    266b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2672:	e8 03 17 00 00       	call   0x3d7a
    2677:	50                   	push   %eax
    2678:	56                   	push   %esi
    2679:	68 15 4c 00 00       	push   $0x4c15
    267e:	6a 01                	push   $0x1
    2680:	e8 46 18 00 00       	call   0x3ecb
    2685:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    268c:	e8 e9 16 00 00       	call   0x3d7a
    2691:	83 ec 0c             	sub    $0xc,%esp
    2694:	57                   	push   %edi
    2695:	e8 08 17 00 00       	call   0x3da2
    269a:	c7 04 24 f4 4b 00 00 	movl   $0x4bf4,(%esp)
    26a1:	e8 24 17 00 00       	call   0x3dca
    26a6:	81 c6 d7 01 00 00    	add    $0x1d7,%esi
    26ac:	83 c4 10             	add    $0x10,%esp
    26af:	81 fe ff 17 00 00    	cmp    $0x17ff,%esi
    26b5:	7f 40                	jg     0x26f7
    26b7:	83 ec 08             	sub    $0x8,%esp
    26ba:	68 02 02 00 00       	push   $0x202
    26bf:	68 f4 4b 00 00       	push   $0x4bf4
    26c4:	e8 f1 16 00 00       	call   0x3dba
    26c9:	89 c7                	mov    %eax,%edi
    26cb:	83 c4 10             	add    $0x10,%esp
    26ce:	85 c0                	test   %eax,%eax
    26d0:	78 8a                	js     0x265c
    26d2:	bb 00 00 00 00       	mov    $0x0,%ebx
    26d7:	83 fb 01             	cmp    $0x1,%ebx
    26da:	7f b5                	jg     0x2691
    26dc:	83 ec 04             	sub    $0x4,%esp
    26df:	56                   	push   %esi
    26e0:	68 a0 89 00 00       	push   $0x89a0
    26e5:	57                   	push   %edi
    26e6:	e8 af 16 00 00       	call   0x3d9a
    26eb:	83 c4 10             	add    $0x10,%esp
    26ee:	39 c6                	cmp    %eax,%esi
    26f0:	75 85                	jne    0x2677
    26f2:	83 c3 01             	add    $0x1,%ebx
    26f5:	eb e0                	jmp    0x26d7
    26f7:	83 ec 08             	sub    $0x8,%esp
    26fa:	68 27 4c 00 00       	push   $0x4c27
    26ff:	6a 01                	push   $0x1
    2701:	e8 c5 17 00 00       	call   0x3ecb
    2706:	83 c4 10             	add    $0x10,%esp
    2709:	8d 65 f4             	lea    -0xc(%ebp),%esp
    270c:	5b                   	pop    %ebx
    270d:	5e                   	pop    %esi
    270e:	5f                   	pop    %edi
    270f:	5d                   	pop    %ebp
    2710:	c3                   	ret    
    2711:	f3 0f 1e fb          	endbr32 
    2715:	55                   	push   %ebp
    2716:	89 e5                	mov    %esp,%ebp
    2718:	57                   	push   %edi
    2719:	56                   	push   %esi
    271a:	53                   	push   %ebx
    271b:	83 ec 14             	sub    $0x14,%esp
    271e:	68 34 4c 00 00       	push   $0x4c34
    2723:	6a 01                	push   $0x1
    2725:	e8 a1 17 00 00       	call   0x3ecb
    272a:	c7 04 24 50 4c 00 00 	movl   $0x4c50,(%esp)
    2731:	e8 94 16 00 00       	call   0x3dca
    2736:	83 c4 08             	add    $0x8,%esp
    2739:	68 02 02 00 00       	push   $0x202
    273e:	68 50 4c 00 00       	push   $0x4c50
    2743:	e8 72 16 00 00       	call   0x3dba
    2748:	83 c4 10             	add    $0x10,%esp
    274b:	85 c0                	test   %eax,%eax
    274d:	78 41                	js     0x2790
    274f:	89 c6                	mov    %eax,%esi
    2751:	bb 00 00 00 00       	mov    $0x0,%ebx
    2756:	83 fb 13             	cmp    $0x13,%ebx
    2759:	7f 6b                	jg     0x27c6
    275b:	83 ec 04             	sub    $0x4,%esp
    275e:	68 58 02 00 00       	push   $0x258
    2763:	53                   	push   %ebx
    2764:	68 a0 89 00 00       	push   $0x89a0
    2769:	e8 bf 14 00 00       	call   0x3c2d
    276e:	83 c4 0c             	add    $0xc,%esp
    2771:	68 58 02 00 00       	push   $0x258
    2776:	68 a0 89 00 00       	push   $0x89a0
    277b:	56                   	push   %esi
    277c:	e8 19 16 00 00       	call   0x3d9a
    2781:	83 c4 10             	add    $0x10,%esp
    2784:	3d 58 02 00 00       	cmp    $0x258,%eax
    2789:	75 20                	jne    0x27ab
    278b:	83 c3 01             	add    $0x1,%ebx
    278e:	eb c6                	jmp    0x2756
    2790:	83 ec 08             	sub    $0x8,%esp
    2793:	68 42 4c 00 00       	push   $0x4c42
    2798:	6a 01                	push   $0x1
    279a:	e8 2c 17 00 00       	call   0x3ecb
    279f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27a6:	e8 cf 15 00 00       	call   0x3d7a
    27ab:	83 ec 08             	sub    $0x8,%esp
    27ae:	68 58 4c 00 00       	push   $0x4c58
    27b3:	6a 01                	push   $0x1
    27b5:	e8 11 17 00 00       	call   0x3ecb
    27ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27c1:	e8 b4 15 00 00       	call   0x3d7a
    27c6:	83 ec 0c             	sub    $0xc,%esp
    27c9:	56                   	push   %esi
    27ca:	e8 d3 15 00 00       	call   0x3da2
    27cf:	83 c4 08             	add    $0x8,%esp
    27d2:	6a 00                	push   $0x0
    27d4:	68 50 4c 00 00       	push   $0x4c50
    27d9:	e8 dc 15 00 00       	call   0x3dba
    27de:	89 c7                	mov    %eax,%edi
    27e0:	83 c4 10             	add    $0x10,%esp
    27e3:	85 c0                	test   %eax,%eax
    27e5:	78 57                	js     0x283e
    27e7:	be 00 00 00 00       	mov    $0x0,%esi
    27ec:	bb 00 00 00 00       	mov    $0x0,%ebx
    27f1:	83 ec 04             	sub    $0x4,%esp
    27f4:	68 2c 01 00 00       	push   $0x12c
    27f9:	68 a0 89 00 00       	push   $0x89a0
    27fe:	57                   	push   %edi
    27ff:	e8 8e 15 00 00       	call   0x3d92
    2804:	83 c4 10             	add    $0x10,%esp
    2807:	85 c0                	test   %eax,%eax
    2809:	78 4e                	js     0x2859
    280b:	0f 84 99 00 00 00    	je     0x28aa
    2811:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2816:	75 5c                	jne    0x2874
    2818:	0f be 0d a0 89 00 00 	movsbl 0x89a0,%ecx
    281f:	89 da                	mov    %ebx,%edx
    2821:	c1 ea 1f             	shr    $0x1f,%edx
    2824:	01 da                	add    %ebx,%edx
    2826:	d1 fa                	sar    %edx
    2828:	39 d1                	cmp    %edx,%ecx
    282a:	75 63                	jne    0x288f
    282c:	0f be 0d cb 8a 00 00 	movsbl 0x8acb,%ecx
    2833:	39 ca                	cmp    %ecx,%edx
    2835:	75 58                	jne    0x288f
    2837:	01 c6                	add    %eax,%esi
    2839:	83 c3 01             	add    $0x1,%ebx
    283c:	eb b3                	jmp    0x27f1
    283e:	83 ec 08             	sub    $0x8,%esp
    2841:	68 6e 4c 00 00       	push   $0x4c6e
    2846:	6a 01                	push   $0x1
    2848:	e8 7e 16 00 00       	call   0x3ecb
    284d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2854:	e8 21 15 00 00       	call   0x3d7a
    2859:	83 ec 08             	sub    $0x8,%esp
    285c:	68 83 4c 00 00       	push   $0x4c83
    2861:	6a 01                	push   $0x1
    2863:	e8 63 16 00 00       	call   0x3ecb
    2868:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    286f:	e8 06 15 00 00       	call   0x3d7a
    2874:	83 ec 08             	sub    $0x8,%esp
    2877:	68 98 4c 00 00       	push   $0x4c98
    287c:	6a 01                	push   $0x1
    287e:	e8 48 16 00 00       	call   0x3ecb
    2883:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    288a:	e8 eb 14 00 00       	call   0x3d7a
    288f:	83 ec 08             	sub    $0x8,%esp
    2892:	68 ac 4c 00 00       	push   $0x4cac
    2897:	6a 01                	push   $0x1
    2899:	e8 2d 16 00 00       	call   0x3ecb
    289e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28a5:	e8 d0 14 00 00       	call   0x3d7a
    28aa:	83 ec 0c             	sub    $0xc,%esp
    28ad:	57                   	push   %edi
    28ae:	e8 ef 14 00 00       	call   0x3da2
    28b3:	83 c4 10             	add    $0x10,%esp
    28b6:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    28bc:	75 27                	jne    0x28e5
    28be:	83 ec 0c             	sub    $0xc,%esp
    28c1:	68 50 4c 00 00       	push   $0x4c50
    28c6:	e8 ff 14 00 00       	call   0x3dca
    28cb:	83 c4 08             	add    $0x8,%esp
    28ce:	68 df 4c 00 00       	push   $0x4cdf
    28d3:	6a 01                	push   $0x1
    28d5:	e8 f1 15 00 00       	call   0x3ecb
    28da:	83 c4 10             	add    $0x10,%esp
    28dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    28e0:	5b                   	pop    %ebx
    28e1:	5e                   	pop    %esi
    28e2:	5f                   	pop    %edi
    28e3:	5d                   	pop    %ebp
    28e4:	c3                   	ret    
    28e5:	83 ec 08             	sub    $0x8,%esp
    28e8:	68 c5 4c 00 00       	push   $0x4cc5
    28ed:	6a 01                	push   $0x1
    28ef:	e8 d7 15 00 00       	call   0x3ecb
    28f4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28fb:	e8 7a 14 00 00       	call   0x3d7a
    2900:	f3 0f 1e fb          	endbr32 
    2904:	55                   	push   %ebp
    2905:	89 e5                	mov    %esp,%ebp
    2907:	83 ec 10             	sub    $0x10,%esp
    290a:	68 f0 4c 00 00       	push   $0x4cf0
    290f:	6a 01                	push   $0x1
    2911:	e8 b5 15 00 00       	call   0x3ecb
    2916:	c7 04 24 2b 4d 00 00 	movl   $0x4d2b,(%esp)
    291d:	e8 c0 14 00 00       	call   0x3de2
    2922:	83 c4 10             	add    $0x10,%esp
    2925:	85 c0                	test   %eax,%eax
    2927:	0f 85 a4 00 00 00    	jne    0x29d1
    292d:	83 ec 0c             	sub    $0xc,%esp
    2930:	68 e8 54 00 00       	push   $0x54e8
    2935:	e8 a8 14 00 00       	call   0x3de2
    293a:	83 c4 10             	add    $0x10,%esp
    293d:	85 c0                	test   %eax,%eax
    293f:	0f 85 a7 00 00 00    	jne    0x29ec
    2945:	83 ec 08             	sub    $0x8,%esp
    2948:	68 00 02 00 00       	push   $0x200
    294d:	68 38 55 00 00       	push   $0x5538
    2952:	e8 63 14 00 00       	call   0x3dba
    2957:	83 c4 10             	add    $0x10,%esp
    295a:	85 c0                	test   %eax,%eax
    295c:	0f 88 a5 00 00 00    	js     0x2a07
    2962:	83 ec 0c             	sub    $0xc,%esp
    2965:	50                   	push   %eax
    2966:	e8 37 14 00 00       	call   0x3da2
    296b:	83 c4 08             	add    $0x8,%esp
    296e:	6a 00                	push   $0x0
    2970:	68 a8 55 00 00       	push   $0x55a8
    2975:	e8 40 14 00 00       	call   0x3dba
    297a:	83 c4 10             	add    $0x10,%esp
    297d:	85 c0                	test   %eax,%eax
    297f:	0f 88 9d 00 00 00    	js     0x2a22
    2985:	83 ec 0c             	sub    $0xc,%esp
    2988:	50                   	push   %eax
    2989:	e8 14 14 00 00       	call   0x3da2
    298e:	c7 04 24 1c 4d 00 00 	movl   $0x4d1c,(%esp)
    2995:	e8 48 14 00 00       	call   0x3de2
    299a:	83 c4 10             	add    $0x10,%esp
    299d:	85 c0                	test   %eax,%eax
    299f:	0f 84 98 00 00 00    	je     0x2a3d
    29a5:	83 ec 0c             	sub    $0xc,%esp
    29a8:	68 44 56 00 00       	push   $0x5644
    29ad:	e8 30 14 00 00       	call   0x3de2
    29b2:	83 c4 10             	add    $0x10,%esp
    29b5:	85 c0                	test   %eax,%eax
    29b7:	0f 84 9b 00 00 00    	je     0x2a58
    29bd:	83 ec 08             	sub    $0x8,%esp
    29c0:	68 3a 4d 00 00       	push   $0x4d3a
    29c5:	6a 01                	push   $0x1
    29c7:	e8 ff 14 00 00       	call   0x3ecb
    29cc:	83 c4 10             	add    $0x10,%esp
    29cf:	c9                   	leave  
    29d0:	c3                   	ret    
    29d1:	83 ec 08             	sub    $0x8,%esp
    29d4:	68 ff 4c 00 00       	push   $0x4cff
    29d9:	6a 01                	push   $0x1
    29db:	e8 eb 14 00 00       	call   0x3ecb
    29e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29e7:	e8 8e 13 00 00       	call   0x3d7a
    29ec:	83 ec 08             	sub    $0x8,%esp
    29ef:	68 08 55 00 00       	push   $0x5508
    29f4:	6a 01                	push   $0x1
    29f6:	e8 d0 14 00 00       	call   0x3ecb
    29fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a02:	e8 73 13 00 00       	call   0x3d7a
    2a07:	83 ec 08             	sub    $0x8,%esp
    2a0a:	68 68 55 00 00       	push   $0x5568
    2a0f:	6a 01                	push   $0x1
    2a11:	e8 b5 14 00 00       	call   0x3ecb
    2a16:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a1d:	e8 58 13 00 00       	call   0x3d7a
    2a22:	83 ec 08             	sub    $0x8,%esp
    2a25:	68 d8 55 00 00       	push   $0x55d8
    2a2a:	6a 01                	push   $0x1
    2a2c:	e8 9a 14 00 00       	call   0x3ecb
    2a31:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a38:	e8 3d 13 00 00       	call   0x3d7a
    2a3d:	83 ec 08             	sub    $0x8,%esp
    2a40:	68 14 56 00 00       	push   $0x5614
    2a45:	6a 01                	push   $0x1
    2a47:	e8 7f 14 00 00       	call   0x3ecb
    2a4c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a53:	e8 22 13 00 00       	call   0x3d7a
    2a58:	83 ec 08             	sub    $0x8,%esp
    2a5b:	68 64 56 00 00       	push   $0x5664
    2a60:	6a 01                	push   $0x1
    2a62:	e8 64 14 00 00       	call   0x3ecb
    2a67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a6e:	e8 07 13 00 00       	call   0x3d7a
    2a73:	f3 0f 1e fb          	endbr32 
    2a77:	55                   	push   %ebp
    2a78:	89 e5                	mov    %esp,%ebp
    2a7a:	83 ec 10             	sub    $0x10,%esp
    2a7d:	68 47 4d 00 00       	push   $0x4d47
    2a82:	6a 01                	push   $0x1
    2a84:	e8 42 14 00 00       	call   0x3ecb
    2a89:	c7 04 24 53 4d 00 00 	movl   $0x4d53,(%esp)
    2a90:	e8 4d 13 00 00       	call   0x3de2
    2a95:	83 c4 10             	add    $0x10,%esp
    2a98:	85 c0                	test   %eax,%eax
    2a9a:	0f 85 bc 00 00 00    	jne    0x2b5c
    2aa0:	83 ec 0c             	sub    $0xc,%esp
    2aa3:	68 53 4d 00 00       	push   $0x4d53
    2aa8:	e8 3d 13 00 00       	call   0x3dea
    2aad:	83 c4 10             	add    $0x10,%esp
    2ab0:	85 c0                	test   %eax,%eax
    2ab2:	0f 85 bf 00 00 00    	jne    0x2b77
    2ab8:	83 ec 0c             	sub    $0xc,%esp
    2abb:	68 fe 49 00 00       	push   $0x49fe
    2ac0:	e8 05 13 00 00       	call   0x3dca
    2ac5:	83 c4 10             	add    $0x10,%esp
    2ac8:	85 c0                	test   %eax,%eax
    2aca:	0f 84 c2 00 00 00    	je     0x2b92
    2ad0:	83 ec 0c             	sub    $0xc,%esp
    2ad3:	68 fd 49 00 00       	push   $0x49fd
    2ad8:	e8 ed 12 00 00       	call   0x3dca
    2add:	83 c4 10             	add    $0x10,%esp
    2ae0:	85 c0                	test   %eax,%eax
    2ae2:	0f 84 c5 00 00 00    	je     0x2bad
    2ae8:	83 ec 0c             	sub    $0xc,%esp
    2aeb:	68 d1 41 00 00       	push   $0x41d1
    2af0:	e8 f5 12 00 00       	call   0x3dea
    2af5:	83 c4 10             	add    $0x10,%esp
    2af8:	85 c0                	test   %eax,%eax
    2afa:	0f 85 c8 00 00 00    	jne    0x2bc8
    2b00:	83 ec 0c             	sub    $0xc,%esp
    2b03:	68 9b 4d 00 00       	push   $0x4d9b
    2b08:	e8 bd 12 00 00       	call   0x3dca
    2b0d:	83 c4 10             	add    $0x10,%esp
    2b10:	85 c0                	test   %eax,%eax
    2b12:	0f 84 cb 00 00 00    	je     0x2be3
    2b18:	83 ec 0c             	sub    $0xc,%esp
    2b1b:	68 b9 4d 00 00       	push   $0x4db9
    2b20:	e8 a5 12 00 00       	call   0x3dca
    2b25:	83 c4 10             	add    $0x10,%esp
    2b28:	85 c0                	test   %eax,%eax
    2b2a:	0f 84 ce 00 00 00    	je     0x2bfe
    2b30:	83 ec 0c             	sub    $0xc,%esp
    2b33:	68 53 4d 00 00       	push   $0x4d53
    2b38:	e8 8d 12 00 00       	call   0x3dca
    2b3d:	83 c4 10             	add    $0x10,%esp
    2b40:	85 c0                	test   %eax,%eax
    2b42:	0f 85 d1 00 00 00    	jne    0x2c19
    2b48:	83 ec 08             	sub    $0x8,%esp
    2b4b:	68 ee 4d 00 00       	push   $0x4dee
    2b50:	6a 01                	push   $0x1
    2b52:	e8 74 13 00 00       	call   0x3ecb
    2b57:	83 c4 10             	add    $0x10,%esp
    2b5a:	c9                   	leave  
    2b5b:	c3                   	ret    
    2b5c:	83 ec 08             	sub    $0x8,%esp
    2b5f:	68 58 4d 00 00       	push   $0x4d58
    2b64:	6a 01                	push   $0x1
    2b66:	e8 60 13 00 00       	call   0x3ecb
    2b6b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b72:	e8 03 12 00 00       	call   0x3d7a
    2b77:	83 ec 08             	sub    $0x8,%esp
    2b7a:	68 6b 4d 00 00       	push   $0x4d6b
    2b7f:	6a 01                	push   $0x1
    2b81:	e8 45 13 00 00       	call   0x3ecb
    2b86:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b8d:	e8 e8 11 00 00       	call   0x3d7a
    2b92:	83 ec 08             	sub    $0x8,%esp
    2b95:	68 7e 4d 00 00       	push   $0x4d7e
    2b9a:	6a 01                	push   $0x1
    2b9c:	e8 2a 13 00 00       	call   0x3ecb
    2ba1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ba8:	e8 cd 11 00 00       	call   0x3d7a
    2bad:	83 ec 08             	sub    $0x8,%esp
    2bb0:	68 8c 4d 00 00       	push   $0x4d8c
    2bb5:	6a 01                	push   $0x1
    2bb7:	e8 0f 13 00 00       	call   0x3ecb
    2bbc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bc3:	e8 b2 11 00 00       	call   0x3d7a
    2bc8:	83 ec 08             	sub    $0x8,%esp
    2bcb:	68 d3 41 00 00       	push   $0x41d3
    2bd0:	6a 01                	push   $0x1
    2bd2:	e8 f4 12 00 00       	call   0x3ecb
    2bd7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bde:	e8 97 11 00 00       	call   0x3d7a
    2be3:	83 ec 08             	sub    $0x8,%esp
    2be6:	68 a2 4d 00 00       	push   $0x4da2
    2beb:	6a 01                	push   $0x1
    2bed:	e8 d9 12 00 00       	call   0x3ecb
    2bf2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bf9:	e8 7c 11 00 00       	call   0x3d7a
    2bfe:	83 ec 08             	sub    $0x8,%esp
    2c01:	68 c1 4d 00 00       	push   $0x4dc1
    2c06:	6a 01                	push   $0x1
    2c08:	e8 be 12 00 00       	call   0x3ecb
    2c0d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c14:	e8 61 11 00 00       	call   0x3d7a
    2c19:	83 ec 08             	sub    $0x8,%esp
    2c1c:	68 d9 4d 00 00       	push   $0x4dd9
    2c21:	6a 01                	push   $0x1
    2c23:	e8 a3 12 00 00       	call   0x3ecb
    2c28:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c2f:	e8 46 11 00 00       	call   0x3d7a
    2c34:	f3 0f 1e fb          	endbr32 
    2c38:	55                   	push   %ebp
    2c39:	89 e5                	mov    %esp,%ebp
    2c3b:	53                   	push   %ebx
    2c3c:	83 ec 0c             	sub    $0xc,%esp
    2c3f:	68 f8 4d 00 00       	push   $0x4df8
    2c44:	6a 01                	push   $0x1
    2c46:	e8 80 12 00 00       	call   0x3ecb
    2c4b:	83 c4 08             	add    $0x8,%esp
    2c4e:	68 00 02 00 00       	push   $0x200
    2c53:	68 05 4e 00 00       	push   $0x4e05
    2c58:	e8 5d 11 00 00       	call   0x3dba
    2c5d:	83 c4 10             	add    $0x10,%esp
    2c60:	85 c0                	test   %eax,%eax
    2c62:	0f 88 22 01 00 00    	js     0x2d8a
    2c68:	83 ec 0c             	sub    $0xc,%esp
    2c6b:	50                   	push   %eax
    2c6c:	e8 31 11 00 00       	call   0x3da2
    2c71:	c7 04 24 05 4e 00 00 	movl   $0x4e05,(%esp)
    2c78:	e8 6d 11 00 00       	call   0x3dea
    2c7d:	83 c4 10             	add    $0x10,%esp
    2c80:	85 c0                	test   %eax,%eax
    2c82:	0f 84 1d 01 00 00    	je     0x2da5
    2c88:	83 ec 08             	sub    $0x8,%esp
    2c8b:	6a 00                	push   $0x0
    2c8d:	68 3e 4e 00 00       	push   $0x4e3e
    2c92:	e8 23 11 00 00       	call   0x3dba
    2c97:	83 c4 10             	add    $0x10,%esp
    2c9a:	85 c0                	test   %eax,%eax
    2c9c:	0f 89 1e 01 00 00    	jns    0x2dc0
    2ca2:	83 ec 08             	sub    $0x8,%esp
    2ca5:	68 00 02 00 00       	push   $0x200
    2caa:	68 3e 4e 00 00       	push   $0x4e3e
    2caf:	e8 06 11 00 00       	call   0x3dba
    2cb4:	83 c4 10             	add    $0x10,%esp
    2cb7:	85 c0                	test   %eax,%eax
    2cb9:	0f 89 1c 01 00 00    	jns    0x2ddb
    2cbf:	83 ec 0c             	sub    $0xc,%esp
    2cc2:	68 3e 4e 00 00       	push   $0x4e3e
    2cc7:	e8 16 11 00 00       	call   0x3de2
    2ccc:	83 c4 10             	add    $0x10,%esp
    2ccf:	85 c0                	test   %eax,%eax
    2cd1:	0f 84 1f 01 00 00    	je     0x2df6
    2cd7:	83 ec 0c             	sub    $0xc,%esp
    2cda:	68 3e 4e 00 00       	push   $0x4e3e
    2cdf:	e8 e6 10 00 00       	call   0x3dca
    2ce4:	83 c4 10             	add    $0x10,%esp
    2ce7:	85 c0                	test   %eax,%eax
    2ce9:	0f 84 22 01 00 00    	je     0x2e11
    2cef:	83 ec 08             	sub    $0x8,%esp
    2cf2:	68 3e 4e 00 00       	push   $0x4e3e
    2cf7:	68 a2 4e 00 00       	push   $0x4ea2
    2cfc:	e8 d9 10 00 00       	call   0x3dda
    2d01:	83 c4 10             	add    $0x10,%esp
    2d04:	85 c0                	test   %eax,%eax
    2d06:	0f 84 20 01 00 00    	je     0x2e2c
    2d0c:	83 ec 0c             	sub    $0xc,%esp
    2d0f:	68 05 4e 00 00       	push   $0x4e05
    2d14:	e8 b1 10 00 00       	call   0x3dca
    2d19:	83 c4 10             	add    $0x10,%esp
    2d1c:	85 c0                	test   %eax,%eax
    2d1e:	0f 85 23 01 00 00    	jne    0x2e47
    2d24:	83 ec 08             	sub    $0x8,%esp
    2d27:	6a 02                	push   $0x2
    2d29:	68 fe 49 00 00       	push   $0x49fe
    2d2e:	e8 87 10 00 00       	call   0x3dba
    2d33:	83 c4 10             	add    $0x10,%esp
    2d36:	85 c0                	test   %eax,%eax
    2d38:	0f 89 24 01 00 00    	jns    0x2e62
    2d3e:	83 ec 08             	sub    $0x8,%esp
    2d41:	6a 00                	push   $0x0
    2d43:	68 fe 49 00 00       	push   $0x49fe
    2d48:	e8 6d 10 00 00       	call   0x3dba
    2d4d:	89 c3                	mov    %eax,%ebx
    2d4f:	83 c4 0c             	add    $0xc,%esp
    2d52:	6a 01                	push   $0x1
    2d54:	68 e1 4a 00 00       	push   $0x4ae1
    2d59:	50                   	push   %eax
    2d5a:	e8 3b 10 00 00       	call   0x3d9a
    2d5f:	83 c4 10             	add    $0x10,%esp
    2d62:	85 c0                	test   %eax,%eax
    2d64:	0f 8f 13 01 00 00    	jg     0x2e7d
    2d6a:	83 ec 0c             	sub    $0xc,%esp
    2d6d:	53                   	push   %ebx
    2d6e:	e8 2f 10 00 00       	call   0x3da2
    2d73:	83 c4 08             	add    $0x8,%esp
    2d76:	68 d5 4e 00 00       	push   $0x4ed5
    2d7b:	6a 01                	push   $0x1
    2d7d:	e8 49 11 00 00       	call   0x3ecb
    2d82:	83 c4 10             	add    $0x10,%esp
    2d85:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2d88:	c9                   	leave  
    2d89:	c3                   	ret    
    2d8a:	83 ec 08             	sub    $0x8,%esp
    2d8d:	68 0d 4e 00 00       	push   $0x4e0d
    2d92:	6a 01                	push   $0x1
    2d94:	e8 32 11 00 00       	call   0x3ecb
    2d99:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2da0:	e8 d5 0f 00 00       	call   0x3d7a
    2da5:	83 ec 08             	sub    $0x8,%esp
    2da8:	68 24 4e 00 00       	push   $0x4e24
    2dad:	6a 01                	push   $0x1
    2daf:	e8 17 11 00 00       	call   0x3ecb
    2db4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dbb:	e8 ba 0f 00 00       	call   0x3d7a
    2dc0:	83 ec 08             	sub    $0x8,%esp
    2dc3:	68 49 4e 00 00       	push   $0x4e49
    2dc8:	6a 01                	push   $0x1
    2dca:	e8 fc 10 00 00       	call   0x3ecb
    2dcf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dd6:	e8 9f 0f 00 00       	call   0x3d7a
    2ddb:	83 ec 08             	sub    $0x8,%esp
    2dde:	68 49 4e 00 00       	push   $0x4e49
    2de3:	6a 01                	push   $0x1
    2de5:	e8 e1 10 00 00       	call   0x3ecb
    2dea:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2df1:	e8 84 0f 00 00       	call   0x3d7a
    2df6:	83 ec 08             	sub    $0x8,%esp
    2df9:	68 67 4e 00 00       	push   $0x4e67
    2dfe:	6a 01                	push   $0x1
    2e00:	e8 c6 10 00 00       	call   0x3ecb
    2e05:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e0c:	e8 69 0f 00 00       	call   0x3d7a
    2e11:	83 ec 08             	sub    $0x8,%esp
    2e14:	68 84 4e 00 00       	push   $0x4e84
    2e19:	6a 01                	push   $0x1
    2e1b:	e8 ab 10 00 00       	call   0x3ecb
    2e20:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e27:	e8 4e 0f 00 00       	call   0x3d7a
    2e2c:	83 ec 08             	sub    $0x8,%esp
    2e2f:	68 98 56 00 00       	push   $0x5698
    2e34:	6a 01                	push   $0x1
    2e36:	e8 90 10 00 00       	call   0x3ecb
    2e3b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e42:	e8 33 0f 00 00       	call   0x3d7a
    2e47:	83 ec 08             	sub    $0x8,%esp
    2e4a:	68 a9 4e 00 00       	push   $0x4ea9
    2e4f:	6a 01                	push   $0x1
    2e51:	e8 75 10 00 00       	call   0x3ecb
    2e56:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e5d:	e8 18 0f 00 00       	call   0x3d7a
    2e62:	83 ec 08             	sub    $0x8,%esp
    2e65:	68 b8 56 00 00       	push   $0x56b8
    2e6a:	6a 01                	push   $0x1
    2e6c:	e8 5a 10 00 00       	call   0x3ecb
    2e71:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e78:	e8 fd 0e 00 00       	call   0x3d7a
    2e7d:	83 ec 08             	sub    $0x8,%esp
    2e80:	68 c1 4e 00 00       	push   $0x4ec1
    2e85:	6a 01                	push   $0x1
    2e87:	e8 3f 10 00 00       	call   0x3ecb
    2e8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e93:	e8 e2 0e 00 00       	call   0x3d7a
    2e98:	f3 0f 1e fb          	endbr32 
    2e9c:	55                   	push   %ebp
    2e9d:	89 e5                	mov    %esp,%ebp
    2e9f:	53                   	push   %ebx
    2ea0:	83 ec 0c             	sub    $0xc,%esp
    2ea3:	68 e5 4e 00 00       	push   $0x4ee5
    2ea8:	6a 01                	push   $0x1
    2eaa:	e8 1c 10 00 00       	call   0x3ecb
    2eaf:	83 c4 10             	add    $0x10,%esp
    2eb2:	bb 00 00 00 00       	mov    $0x0,%ebx
    2eb7:	eb 5a                	jmp    0x2f13
    2eb9:	83 ec 08             	sub    $0x8,%esp
    2ebc:	68 fc 4e 00 00       	push   $0x4efc
    2ec1:	6a 01                	push   $0x1
    2ec3:	e8 03 10 00 00       	call   0x3ecb
    2ec8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ecf:	e8 a6 0e 00 00       	call   0x3d7a
    2ed4:	83 ec 08             	sub    $0x8,%esp
    2ed7:	68 10 4f 00 00       	push   $0x4f10
    2edc:	6a 01                	push   $0x1
    2ede:	e8 e8 0f 00 00       	call   0x3ecb
    2ee3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2eea:	e8 8b 0e 00 00       	call   0x3d7a
    2eef:	83 ec 0c             	sub    $0xc,%esp
    2ef2:	50                   	push   %eax
    2ef3:	e8 aa 0e 00 00       	call   0x3da2
    2ef8:	83 c4 10             	add    $0x10,%esp
    2efb:	e9 80 00 00 00       	jmp    0x2f80
    2f00:	83 ec 0c             	sub    $0xc,%esp
    2f03:	68 e0 4a 00 00       	push   $0x4ae0
    2f08:	e8 bd 0e 00 00       	call   0x3dca
    2f0d:	83 c3 01             	add    $0x1,%ebx
    2f10:	83 c4 10             	add    $0x10,%esp
    2f13:	83 fb 32             	cmp    $0x32,%ebx
    2f16:	0f 8f 92 00 00 00    	jg     0x2fae
    2f1c:	83 ec 0c             	sub    $0xc,%esp
    2f1f:	68 f6 4e 00 00       	push   $0x4ef6
    2f24:	e8 b9 0e 00 00       	call   0x3de2
    2f29:	83 c4 10             	add    $0x10,%esp
    2f2c:	85 c0                	test   %eax,%eax
    2f2e:	75 89                	jne    0x2eb9
    2f30:	83 ec 0c             	sub    $0xc,%esp
    2f33:	68 f6 4e 00 00       	push   $0x4ef6
    2f38:	e8 ad 0e 00 00       	call   0x3dea
    2f3d:	83 c4 10             	add    $0x10,%esp
    2f40:	85 c0                	test   %eax,%eax
    2f42:	75 90                	jne    0x2ed4
    2f44:	83 ec 0c             	sub    $0xc,%esp
    2f47:	68 ab 45 00 00       	push   $0x45ab
    2f4c:	e8 91 0e 00 00       	call   0x3de2
    2f51:	83 c4 08             	add    $0x8,%esp
    2f54:	68 ab 45 00 00       	push   $0x45ab
    2f59:	68 a2 4e 00 00       	push   $0x4ea2
    2f5e:	e8 77 0e 00 00       	call   0x3dda
    2f63:	83 c4 08             	add    $0x8,%esp
    2f66:	68 00 02 00 00       	push   $0x200
    2f6b:	68 ab 45 00 00       	push   $0x45ab
    2f70:	e8 45 0e 00 00       	call   0x3dba
    2f75:	83 c4 10             	add    $0x10,%esp
    2f78:	85 c0                	test   %eax,%eax
    2f7a:	0f 89 6f ff ff ff    	jns    0x2eef
    2f80:	83 ec 08             	sub    $0x8,%esp
    2f83:	68 00 02 00 00       	push   $0x200
    2f88:	68 e0 4a 00 00       	push   $0x4ae0
    2f8d:	e8 28 0e 00 00       	call   0x3dba
    2f92:	83 c4 10             	add    $0x10,%esp
    2f95:	85 c0                	test   %eax,%eax
    2f97:	0f 88 63 ff ff ff    	js     0x2f00
    2f9d:	83 ec 0c             	sub    $0xc,%esp
    2fa0:	50                   	push   %eax
    2fa1:	e8 fc 0d 00 00       	call   0x3da2
    2fa6:	83 c4 10             	add    $0x10,%esp
    2fa9:	e9 52 ff ff ff       	jmp    0x2f00
    2fae:	83 ec 0c             	sub    $0xc,%esp
    2fb1:	68 d1 41 00 00       	push   $0x41d1
    2fb6:	e8 2f 0e 00 00       	call   0x3dea
    2fbb:	83 c4 08             	add    $0x8,%esp
    2fbe:	68 24 4f 00 00       	push   $0x4f24
    2fc3:	6a 01                	push   $0x1
    2fc5:	e8 01 0f 00 00       	call   0x3ecb
    2fca:	83 c4 10             	add    $0x10,%esp
    2fcd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2fd0:	c9                   	leave  
    2fd1:	c3                   	ret    
    2fd2:	f3 0f 1e fb          	endbr32 
    2fd6:	55                   	push   %ebp
    2fd7:	89 e5                	mov    %esp,%ebp
    2fd9:	53                   	push   %ebx
    2fda:	83 ec 0c             	sub    $0xc,%esp
    2fdd:	68 38 4f 00 00       	push   $0x4f38
    2fe2:	6a 01                	push   $0x1
    2fe4:	e8 e2 0e 00 00       	call   0x3ecb
    2fe9:	83 c4 10             	add    $0x10,%esp
    2fec:	bb 00 00 00 00       	mov    $0x0,%ebx
    2ff1:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
    2ff7:	7f 1a                	jg     0x3013
    2ff9:	e8 74 0d 00 00       	call   0x3d72
    2ffe:	85 c0                	test   %eax,%eax
    3000:	78 11                	js     0x3013
    3002:	74 05                	je     0x3009
    3004:	83 c3 01             	add    $0x1,%ebx
    3007:	eb e8                	jmp    0x2ff1
    3009:	83 ec 0c             	sub    $0xc,%esp
    300c:	6a 00                	push   $0x0
    300e:	e8 67 0d 00 00       	call   0x3d7a
    3013:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    3019:	74 1a                	je     0x3035
    301b:	85 db                	test   %ebx,%ebx
    301d:	7e 4c                	jle    0x306b
    301f:	83 ec 0c             	sub    $0xc,%esp
    3022:	6a 00                	push   $0x0
    3024:	e8 59 0d 00 00       	call   0x3d82
    3029:	83 c4 10             	add    $0x10,%esp
    302c:	85 c0                	test   %eax,%eax
    302e:	78 20                	js     0x3050
    3030:	83 eb 01             	sub    $0x1,%ebx
    3033:	eb e6                	jmp    0x301b
    3035:	83 ec 08             	sub    $0x8,%esp
    3038:	68 d8 56 00 00       	push   $0x56d8
    303d:	6a 01                	push   $0x1
    303f:	e8 87 0e 00 00       	call   0x3ecb
    3044:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    304b:	e8 2a 0d 00 00       	call   0x3d7a
    3050:	83 ec 08             	sub    $0x8,%esp
    3053:	68 43 4f 00 00       	push   $0x4f43
    3058:	6a 01                	push   $0x1
    305a:	e8 6c 0e 00 00       	call   0x3ecb
    305f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3066:	e8 0f 0d 00 00       	call   0x3d7a
    306b:	83 ec 0c             	sub    $0xc,%esp
    306e:	6a 00                	push   $0x0
    3070:	e8 0d 0d 00 00       	call   0x3d82
    3075:	83 c4 10             	add    $0x10,%esp
    3078:	83 f8 ff             	cmp    $0xffffffff,%eax
    307b:	75 17                	jne    0x3094
    307d:	83 ec 08             	sub    $0x8,%esp
    3080:	68 6a 4f 00 00       	push   $0x4f6a
    3085:	6a 01                	push   $0x1
    3087:	e8 3f 0e 00 00       	call   0x3ecb
    308c:	83 c4 10             	add    $0x10,%esp
    308f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3092:	c9                   	leave  
    3093:	c3                   	ret    
    3094:	83 ec 08             	sub    $0x8,%esp
    3097:	68 57 4f 00 00       	push   $0x4f57
    309c:	6a 01                	push   $0x1
    309e:	e8 28 0e 00 00       	call   0x3ecb
    30a3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30aa:	e8 cb 0c 00 00       	call   0x3d7a
    30af:	f3 0f 1e fb          	endbr32 
    30b3:	55                   	push   %ebp
    30b4:	89 e5                	mov    %esp,%ebp
    30b6:	57                   	push   %edi
    30b7:	56                   	push   %esi
    30b8:	53                   	push   %ebx
    30b9:	83 ec 54             	sub    $0x54,%esp
    30bc:	68 78 4f 00 00       	push   $0x4f78
    30c1:	ff 35 b8 61 00 00    	pushl  0x61b8
    30c7:	e8 ff 0d 00 00       	call   0x3ecb
    30cc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30d3:	e8 2a 0d 00 00       	call   0x3e02
    30d8:	89 c7                	mov    %eax,%edi
    30da:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30e1:	e8 1c 0d 00 00       	call   0x3e02
    30e6:	89 c6                	mov    %eax,%esi
    30e8:	83 c4 10             	add    $0x10,%esp
    30eb:	bb 00 00 00 00       	mov    $0x0,%ebx
    30f0:	81 fb 87 13 00 00    	cmp    $0x1387,%ebx
    30f6:	7f 3c                	jg     0x3134
    30f8:	83 ec 0c             	sub    $0xc,%esp
    30fb:	6a 01                	push   $0x1
    30fd:	e8 00 0d 00 00       	call   0x3e02
    3102:	83 c4 10             	add    $0x10,%esp
    3105:	39 c6                	cmp    %eax,%esi
    3107:	75 0b                	jne    0x3114
    3109:	c6 00 01             	movb   $0x1,(%eax)
    310c:	8d 70 01             	lea    0x1(%eax),%esi
    310f:	83 c3 01             	add    $0x1,%ebx
    3112:	eb dc                	jmp    0x30f0
    3114:	83 ec 0c             	sub    $0xc,%esp
    3117:	50                   	push   %eax
    3118:	56                   	push   %esi
    3119:	53                   	push   %ebx
    311a:	68 83 4f 00 00       	push   $0x4f83
    311f:	ff 35 b8 61 00 00    	pushl  0x61b8
    3125:	e8 a1 0d 00 00       	call   0x3ecb
    312a:	83 c4 14             	add    $0x14,%esp
    312d:	6a 00                	push   $0x0
    312f:	e8 46 0c 00 00       	call   0x3d7a
    3134:	e8 39 0c 00 00       	call   0x3d72
    3139:	89 c3                	mov    %eax,%ebx
    313b:	85 c0                	test   %eax,%eax
    313d:	0f 88 60 01 00 00    	js     0x32a3
    3143:	83 ec 0c             	sub    $0xc,%esp
    3146:	6a 01                	push   $0x1
    3148:	e8 b5 0c 00 00       	call   0x3e02
    314d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3154:	e8 a9 0c 00 00       	call   0x3e02
    3159:	83 c6 01             	add    $0x1,%esi
    315c:	83 c4 10             	add    $0x10,%esp
    315f:	39 c6                	cmp    %eax,%esi
    3161:	0f 85 5b 01 00 00    	jne    0x32c2
    3167:	85 db                	test   %ebx,%ebx
    3169:	0f 84 72 01 00 00    	je     0x32e1
    316f:	83 ec 0c             	sub    $0xc,%esp
    3172:	6a 00                	push   $0x0
    3174:	e8 09 0c 00 00       	call   0x3d82
    3179:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3180:	e8 7d 0c 00 00       	call   0x3e02
    3185:	89 c3                	mov    %eax,%ebx
    3187:	b8 00 00 40 06       	mov    $0x6400000,%eax
    318c:	29 d8                	sub    %ebx,%eax
    318e:	89 04 24             	mov    %eax,(%esp)
    3191:	e8 6c 0c 00 00       	call   0x3e02
    3196:	83 c4 10             	add    $0x10,%esp
    3199:	39 c3                	cmp    %eax,%ebx
    319b:	0f 85 4a 01 00 00    	jne    0x32eb
    31a1:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
    31a8:	83 ec 0c             	sub    $0xc,%esp
    31ab:	6a 00                	push   $0x0
    31ad:	e8 50 0c 00 00       	call   0x3e02
    31b2:	89 c3                	mov    %eax,%ebx
    31b4:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
    31bb:	e8 42 0c 00 00       	call   0x3e02
    31c0:	83 c4 10             	add    $0x10,%esp
    31c3:	83 f8 ff             	cmp    $0xffffffff,%eax
    31c6:	0f 84 3e 01 00 00    	je     0x330a
    31cc:	83 ec 0c             	sub    $0xc,%esp
    31cf:	6a 00                	push   $0x0
    31d1:	e8 2c 0c 00 00       	call   0x3e02
    31d6:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    31dc:	83 c4 10             	add    $0x10,%esp
    31df:	39 c2                	cmp    %eax,%edx
    31e1:	0f 85 42 01 00 00    	jne    0x3329
    31e7:	83 ec 0c             	sub    $0xc,%esp
    31ea:	6a 00                	push   $0x0
    31ec:	e8 11 0c 00 00       	call   0x3e02
    31f1:	89 c3                	mov    %eax,%ebx
    31f3:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    31fa:	e8 03 0c 00 00       	call   0x3e02
    31ff:	89 c6                	mov    %eax,%esi
    3201:	83 c4 10             	add    $0x10,%esp
    3204:	39 c3                	cmp    %eax,%ebx
    3206:	0f 85 3b 01 00 00    	jne    0x3347
    320c:	83 ec 0c             	sub    $0xc,%esp
    320f:	6a 00                	push   $0x0
    3211:	e8 ec 0b 00 00       	call   0x3e02
    3216:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    321c:	83 c4 10             	add    $0x10,%esp
    321f:	39 c2                	cmp    %eax,%edx
    3221:	0f 85 20 01 00 00    	jne    0x3347
    3227:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    322e:	0f 84 31 01 00 00    	je     0x3365
    3234:	83 ec 0c             	sub    $0xc,%esp
    3237:	6a 00                	push   $0x0
    3239:	e8 c4 0b 00 00       	call   0x3e02
    323e:	89 c3                	mov    %eax,%ebx
    3240:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3247:	e8 b6 0b 00 00       	call   0x3e02
    324c:	89 f9                	mov    %edi,%ecx
    324e:	29 c1                	sub    %eax,%ecx
    3250:	89 0c 24             	mov    %ecx,(%esp)
    3253:	e8 aa 0b 00 00       	call   0x3e02
    3258:	83 c4 10             	add    $0x10,%esp
    325b:	39 c3                	cmp    %eax,%ebx
    325d:	0f 85 21 01 00 00    	jne    0x3384
    3263:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    3268:	81 fb 7f 84 1e 80    	cmp    $0x801e847f,%ebx
    326e:	0f 87 76 01 00 00    	ja     0x33ea
    3274:	e8 81 0b 00 00       	call   0x3dfa
    3279:	89 c6                	mov    %eax,%esi
    327b:	e8 f2 0a 00 00       	call   0x3d72
    3280:	85 c0                	test   %eax,%eax
    3282:	0f 88 1a 01 00 00    	js     0x33a2
    3288:	0f 84 33 01 00 00    	je     0x33c1
    328e:	83 ec 0c             	sub    $0xc,%esp
    3291:	6a 00                	push   $0x0
    3293:	e8 ea 0a 00 00       	call   0x3d82
    3298:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    329e:	83 c4 10             	add    $0x10,%esp
    32a1:	eb c5                	jmp    0x3268
    32a3:	83 ec 08             	sub    $0x8,%esp
    32a6:	68 9e 4f 00 00       	push   $0x4f9e
    32ab:	ff 35 b8 61 00 00    	pushl  0x61b8
    32b1:	e8 15 0c 00 00       	call   0x3ecb
    32b6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32bd:	e8 b8 0a 00 00       	call   0x3d7a
    32c2:	83 ec 08             	sub    $0x8,%esp
    32c5:	68 b5 4f 00 00       	push   $0x4fb5
    32ca:	ff 35 b8 61 00 00    	pushl  0x61b8
    32d0:	e8 f6 0b 00 00       	call   0x3ecb
    32d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32dc:	e8 99 0a 00 00       	call   0x3d7a
    32e1:	83 ec 0c             	sub    $0xc,%esp
    32e4:	6a 00                	push   $0x0
    32e6:	e8 8f 0a 00 00       	call   0x3d7a
    32eb:	83 ec 08             	sub    $0x8,%esp
    32ee:	68 fc 56 00 00       	push   $0x56fc
    32f3:	ff 35 b8 61 00 00    	pushl  0x61b8
    32f9:	e8 cd 0b 00 00       	call   0x3ecb
    32fe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3305:	e8 70 0a 00 00       	call   0x3d7a
    330a:	83 ec 08             	sub    $0x8,%esp
    330d:	68 d1 4f 00 00       	push   $0x4fd1
    3312:	ff 35 b8 61 00 00    	pushl  0x61b8
    3318:	e8 ae 0b 00 00       	call   0x3ecb
    331d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3324:	e8 51 0a 00 00       	call   0x3d7a
    3329:	50                   	push   %eax
    332a:	53                   	push   %ebx
    332b:	68 3c 57 00 00       	push   $0x573c
    3330:	ff 35 b8 61 00 00    	pushl  0x61b8
    3336:	e8 90 0b 00 00       	call   0x3ecb
    333b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3342:	e8 33 0a 00 00       	call   0x3d7a
    3347:	56                   	push   %esi
    3348:	53                   	push   %ebx
    3349:	68 74 57 00 00       	push   $0x5774
    334e:	ff 35 b8 61 00 00    	pushl  0x61b8
    3354:	e8 72 0b 00 00       	call   0x3ecb
    3359:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3360:	e8 15 0a 00 00       	call   0x3d7a
    3365:	83 ec 08             	sub    $0x8,%esp
    3368:	68 9c 57 00 00       	push   $0x579c
    336d:	ff 35 b8 61 00 00    	pushl  0x61b8
    3373:	e8 53 0b 00 00       	call   0x3ecb
    3378:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    337f:	e8 f6 09 00 00       	call   0x3d7a
    3384:	50                   	push   %eax
    3385:	53                   	push   %ebx
    3386:	68 cc 57 00 00       	push   $0x57cc
    338b:	ff 35 b8 61 00 00    	pushl  0x61b8
    3391:	e8 35 0b 00 00       	call   0x3ecb
    3396:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    339d:	e8 d8 09 00 00       	call   0x3d7a
    33a2:	83 ec 08             	sub    $0x8,%esp
    33a5:	68 c9 50 00 00       	push   $0x50c9
    33aa:	ff 35 b8 61 00 00    	pushl  0x61b8
    33b0:	e8 16 0b 00 00       	call   0x3ecb
    33b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33bc:	e8 b9 09 00 00       	call   0x3d7a
    33c1:	0f be 03             	movsbl (%ebx),%eax
    33c4:	50                   	push   %eax
    33c5:	53                   	push   %ebx
    33c6:	68 ec 4f 00 00       	push   $0x4fec
    33cb:	ff 35 b8 61 00 00    	pushl  0x61b8
    33d1:	e8 f5 0a 00 00       	call   0x3ecb
    33d6:	89 34 24             	mov    %esi,(%esp)
    33d9:	e8 cc 09 00 00       	call   0x3daa
    33de:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33e5:	e8 90 09 00 00       	call   0x3d7a
    33ea:	83 ec 0c             	sub    $0xc,%esp
    33ed:	8d 45 e0             	lea    -0x20(%ebp),%eax
    33f0:	50                   	push   %eax
    33f1:	e8 94 09 00 00       	call   0x3d8a
    33f6:	89 c3                	mov    %eax,%ebx
    33f8:	83 c4 10             	add    $0x10,%esp
    33fb:	85 c0                	test   %eax,%eax
    33fd:	75 04                	jne    0x3403
    33ff:	89 c6                	mov    %eax,%esi
    3401:	eb 60                	jmp    0x3463
    3403:	83 ec 08             	sub    $0x8,%esp
    3406:	68 c1 44 00 00       	push   $0x44c1
    340b:	6a 01                	push   $0x1
    340d:	e8 b9 0a 00 00       	call   0x3ecb
    3412:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3419:	e8 5c 09 00 00       	call   0x3d7a
    341e:	83 ec 0c             	sub    $0xc,%esp
    3421:	6a 00                	push   $0x0
    3423:	e8 da 09 00 00       	call   0x3e02
    3428:	89 c2                	mov    %eax,%edx
    342a:	b8 00 00 40 06       	mov    $0x6400000,%eax
    342f:	29 d0                	sub    %edx,%eax
    3431:	89 04 24             	mov    %eax,(%esp)
    3434:	e8 c9 09 00 00       	call   0x3e02
    3439:	83 c4 0c             	add    $0xc,%esp
    343c:	6a 01                	push   $0x1
    343e:	68 e1 4a 00 00       	push   $0x4ae1
    3443:	ff 75 e4             	pushl  -0x1c(%ebp)
    3446:	e8 4f 09 00 00       	call   0x3d9a
    344b:	83 c4 10             	add    $0x10,%esp
    344e:	83 ec 0c             	sub    $0xc,%esp
    3451:	68 e8 03 00 00       	push   $0x3e8
    3456:	e8 af 09 00 00       	call   0x3e0a
    345b:	83 c4 10             	add    $0x10,%esp
    345e:	eb ee                	jmp    0x344e
    3460:	83 c6 01             	add    $0x1,%esi
    3463:	83 fe 09             	cmp    $0x9,%esi
    3466:	77 28                	ja     0x3490
    3468:	e8 05 09 00 00       	call   0x3d72
    346d:	89 44 b5 b8          	mov    %eax,-0x48(%ebp,%esi,4)
    3471:	85 c0                	test   %eax,%eax
    3473:	74 a9                	je     0x341e
    3475:	83 f8 ff             	cmp    $0xffffffff,%eax
    3478:	74 e6                	je     0x3460
    347a:	83 ec 04             	sub    $0x4,%esp
    347d:	6a 01                	push   $0x1
    347f:	8d 45 b7             	lea    -0x49(%ebp),%eax
    3482:	50                   	push   %eax
    3483:	ff 75 e0             	pushl  -0x20(%ebp)
    3486:	e8 07 09 00 00       	call   0x3d92
    348b:	83 c4 10             	add    $0x10,%esp
    348e:	eb d0                	jmp    0x3460
    3490:	83 ec 0c             	sub    $0xc,%esp
    3493:	68 00 10 00 00       	push   $0x1000
    3498:	e8 65 09 00 00       	call   0x3e02
    349d:	89 c6                	mov    %eax,%esi
    349f:	83 c4 10             	add    $0x10,%esp
    34a2:	eb 03                	jmp    0x34a7
    34a4:	83 c3 01             	add    $0x1,%ebx
    34a7:	83 fb 09             	cmp    $0x9,%ebx
    34aa:	77 23                	ja     0x34cf
    34ac:	8b 44 9d b8          	mov    -0x48(%ebp,%ebx,4),%eax
    34b0:	83 f8 ff             	cmp    $0xffffffff,%eax
    34b3:	74 ef                	je     0x34a4
    34b5:	83 ec 0c             	sub    $0xc,%esp
    34b8:	50                   	push   %eax
    34b9:	e8 ec 08 00 00       	call   0x3daa
    34be:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34c5:	e8 b8 08 00 00       	call   0x3d82
    34ca:	83 c4 10             	add    $0x10,%esp
    34cd:	eb d5                	jmp    0x34a4
    34cf:	83 fe ff             	cmp    $0xffffffff,%esi
    34d2:	74 2f                	je     0x3503
    34d4:	83 ec 0c             	sub    $0xc,%esp
    34d7:	6a 00                	push   $0x0
    34d9:	e8 24 09 00 00       	call   0x3e02
    34de:	83 c4 10             	add    $0x10,%esp
    34e1:	39 c7                	cmp    %eax,%edi
    34e3:	72 3d                	jb     0x3522
    34e5:	83 ec 08             	sub    $0x8,%esp
    34e8:	68 20 50 00 00       	push   $0x5020
    34ed:	ff 35 b8 61 00 00    	pushl  0x61b8
    34f3:	e8 d3 09 00 00       	call   0x3ecb
    34f8:	83 c4 10             	add    $0x10,%esp
    34fb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34fe:	5b                   	pop    %ebx
    34ff:	5e                   	pop    %esi
    3500:	5f                   	pop    %edi
    3501:	5d                   	pop    %ebp
    3502:	c3                   	ret    
    3503:	83 ec 08             	sub    $0x8,%esp
    3506:	68 05 50 00 00       	push   $0x5005
    350b:	ff 35 b8 61 00 00    	pushl  0x61b8
    3511:	e8 b5 09 00 00       	call   0x3ecb
    3516:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    351d:	e8 58 08 00 00       	call   0x3d7a
    3522:	83 ec 0c             	sub    $0xc,%esp
    3525:	6a 00                	push   $0x0
    3527:	e8 d6 08 00 00       	call   0x3e02
    352c:	29 c7                	sub    %eax,%edi
    352e:	89 3c 24             	mov    %edi,(%esp)
    3531:	e8 cc 08 00 00       	call   0x3e02
    3536:	83 c4 10             	add    $0x10,%esp
    3539:	eb aa                	jmp    0x34e5
    353b:	f3 0f 1e fb          	endbr32 
    353f:	c3                   	ret    
    3540:	f3 0f 1e fb          	endbr32 
    3544:	55                   	push   %ebp
    3545:	89 e5                	mov    %esp,%ebp
    3547:	56                   	push   %esi
    3548:	53                   	push   %ebx
    3549:	83 ec 08             	sub    $0x8,%esp
    354c:	68 2e 50 00 00       	push   $0x502e
    3551:	ff 35 b8 61 00 00    	pushl  0x61b8
    3557:	e8 6f 09 00 00       	call   0x3ecb
    355c:	83 c4 10             	add    $0x10,%esp
    355f:	be 00 00 00 00       	mov    $0x0,%esi
    3564:	eb 10                	jmp    0x3576
    3566:	83 ec 0c             	sub    $0xc,%esp
    3569:	6a 00                	push   $0x0
    356b:	e8 0a 08 00 00       	call   0x3d7a
    3570:	81 c6 00 10 00 00    	add    $0x1000,%esi
    3576:	81 fe 00 30 11 00    	cmp    $0x113000,%esi
    357c:	77 6a                	ja     0x35e8
    357e:	e8 ef 07 00 00       	call   0x3d72
    3583:	89 c3                	mov    %eax,%ebx
    3585:	85 c0                	test   %eax,%eax
    3587:	74 dd                	je     0x3566
    3589:	83 ec 0c             	sub    $0xc,%esp
    358c:	6a 00                	push   $0x0
    358e:	e8 77 08 00 00       	call   0x3e0a
    3593:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    359a:	e8 6b 08 00 00       	call   0x3e0a
    359f:	89 1c 24             	mov    %ebx,(%esp)
    35a2:	e8 03 08 00 00       	call   0x3daa
    35a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35ae:	e8 cf 07 00 00       	call   0x3d82
    35b3:	83 c4 08             	add    $0x8,%esp
    35b6:	56                   	push   %esi
    35b7:	68 3d 50 00 00       	push   $0x503d
    35bc:	e8 19 08 00 00       	call   0x3dda
    35c1:	83 c4 10             	add    $0x10,%esp
    35c4:	83 f8 ff             	cmp    $0xffffffff,%eax
    35c7:	74 a7                	je     0x3570
    35c9:	83 ec 08             	sub    $0x8,%esp
    35cc:	68 48 50 00 00       	push   $0x5048
    35d1:	ff 35 b8 61 00 00    	pushl  0x61b8
    35d7:	e8 ef 08 00 00       	call   0x3ecb
    35dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35e3:	e8 92 07 00 00       	call   0x3d7a
    35e8:	83 ec 08             	sub    $0x8,%esp
    35eb:	68 61 50 00 00       	push   $0x5061
    35f0:	ff 35 b8 61 00 00    	pushl  0x61b8
    35f6:	e8 d0 08 00 00       	call   0x3ecb
    35fb:	83 c4 10             	add    $0x10,%esp
    35fe:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3601:	5b                   	pop    %ebx
    3602:	5e                   	pop    %esi
    3603:	5d                   	pop    %ebp
    3604:	c3                   	ret    
    3605:	f3 0f 1e fb          	endbr32 
    3609:	55                   	push   %ebp
    360a:	89 e5                	mov    %esp,%ebp
    360c:	83 ec 10             	sub    $0x10,%esp
    360f:	68 6e 50 00 00       	push   $0x506e
    3614:	ff 35 b8 61 00 00    	pushl  0x61b8
    361a:	e8 ac 08 00 00       	call   0x3ecb
    361f:	83 c4 10             	add    $0x10,%esp
    3622:	b8 00 00 00 00       	mov    $0x0,%eax
    3627:	3d 0f 27 00 00       	cmp    $0x270f,%eax
    362c:	77 2d                	ja     0x365b
    362e:	80 b8 80 62 00 00 00 	cmpb   $0x0,0x6280(%eax)
    3635:	75 05                	jne    0x363c
    3637:	83 c0 01             	add    $0x1,%eax
    363a:	eb eb                	jmp    0x3627
    363c:	83 ec 08             	sub    $0x8,%esp
    363f:	68 78 50 00 00       	push   $0x5078
    3644:	ff 35 b8 61 00 00    	pushl  0x61b8
    364a:	e8 7c 08 00 00       	call   0x3ecb
    364f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3656:	e8 1f 07 00 00       	call   0x3d7a
    365b:	83 ec 08             	sub    $0x8,%esp
    365e:	68 89 50 00 00       	push   $0x5089
    3663:	ff 35 b8 61 00 00    	pushl  0x61b8
    3669:	e8 5d 08 00 00       	call   0x3ecb
    366e:	83 c4 10             	add    $0x10,%esp
    3671:	c9                   	leave  
    3672:	c3                   	ret    
    3673:	f3 0f 1e fb          	endbr32 
    3677:	55                   	push   %ebp
    3678:	89 e5                	mov    %esp,%ebp
    367a:	83 ec 14             	sub    $0x14,%esp
    367d:	68 96 50 00 00       	push   $0x5096
    3682:	e8 43 07 00 00       	call   0x3dca
    3687:	e8 e6 06 00 00       	call   0x3d72
    368c:	83 c4 10             	add    $0x10,%esp
    368f:	85 c0                	test   %eax,%eax
    3691:	74 52                	je     0x36e5
    3693:	0f 88 b9 00 00 00    	js     0x3752
    3699:	83 ec 0c             	sub    $0xc,%esp
    369c:	6a 00                	push   $0x0
    369e:	e8 df 06 00 00       	call   0x3d82
    36a3:	83 c4 08             	add    $0x8,%esp
    36a6:	6a 00                	push   $0x0
    36a8:	68 96 50 00 00       	push   $0x5096
    36ad:	e8 08 07 00 00       	call   0x3dba
    36b2:	83 c4 10             	add    $0x10,%esp
    36b5:	85 c0                	test   %eax,%eax
    36b7:	0f 88 b4 00 00 00    	js     0x3771
    36bd:	83 ec 0c             	sub    $0xc,%esp
    36c0:	50                   	push   %eax
    36c1:	e8 dc 06 00 00       	call   0x3da2
    36c6:	c7 04 24 96 50 00 00 	movl   $0x5096,(%esp)
    36cd:	e8 f8 06 00 00       	call   0x3dca
    36d2:	83 c4 10             	add    $0x10,%esp
    36d5:	c9                   	leave  
    36d6:	c3                   	ret    
    36d7:	c7 04 85 e0 61 00 00 	movl   $0x57f0,0x61e0(,%eax,4)
    36de:	f0 57 00 00 
    36e2:	83 c0 01             	add    $0x1,%eax
    36e5:	83 f8 1e             	cmp    $0x1e,%eax
    36e8:	7e ed                	jle    0x36d7
    36ea:	c7 05 5c 62 00 00 00 	movl   $0x0,0x625c
    36f1:	00 00 00 
    36f4:	83 ec 08             	sub    $0x8,%esp
    36f7:	68 a0 50 00 00       	push   $0x50a0
    36fc:	ff 35 b8 61 00 00    	pushl  0x61b8
    3702:	e8 c4 07 00 00       	call   0x3ecb
    3707:	83 c4 08             	add    $0x8,%esp
    370a:	68 e0 61 00 00       	push   $0x61e0
    370f:	68 6d 42 00 00       	push   $0x426d
    3714:	e8 99 06 00 00       	call   0x3db2
    3719:	83 c4 08             	add    $0x8,%esp
    371c:	68 ad 50 00 00       	push   $0x50ad
    3721:	ff 35 b8 61 00 00    	pushl  0x61b8
    3727:	e8 9f 07 00 00       	call   0x3ecb
    372c:	83 c4 08             	add    $0x8,%esp
    372f:	68 00 02 00 00       	push   $0x200
    3734:	68 96 50 00 00       	push   $0x5096
    3739:	e8 7c 06 00 00       	call   0x3dba
    373e:	89 04 24             	mov    %eax,(%esp)
    3741:	e8 5c 06 00 00       	call   0x3da2
    3746:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    374d:	e8 28 06 00 00       	call   0x3d7a
    3752:	83 ec 08             	sub    $0x8,%esp
    3755:	68 bd 50 00 00       	push   $0x50bd
    375a:	ff 35 b8 61 00 00    	pushl  0x61b8
    3760:	e8 66 07 00 00       	call   0x3ecb
    3765:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    376c:	e8 09 06 00 00       	call   0x3d7a
    3771:	83 ec 08             	sub    $0x8,%esp
    3774:	68 d6 50 00 00       	push   $0x50d6
    3779:	ff 35 b8 61 00 00    	pushl  0x61b8
    377f:	e8 47 07 00 00       	call   0x3ecb
    3784:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    378b:	e8 ea 05 00 00       	call   0x3d7a
    3790:	f3 0f 1e fb          	endbr32 
    3794:	55                   	push   %ebp
    3795:	89 e5                	mov    %esp,%ebp
    3797:	57                   	push   %edi
    3798:	56                   	push   %esi
    3799:	53                   	push   %ebx
    379a:	83 ec 54             	sub    $0x54,%esp
    379d:	68 eb 50 00 00       	push   $0x50eb
    37a2:	6a 01                	push   $0x1
    37a4:	e8 22 07 00 00       	call   0x3ecb
    37a9:	83 c4 10             	add    $0x10,%esp
    37ac:	bb 00 00 00 00       	mov    $0x0,%ebx
    37b1:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    37b5:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
    37ba:	89 d8                	mov    %ebx,%eax
    37bc:	f7 ea                	imul   %edx
    37be:	c1 fa 06             	sar    $0x6,%edx
    37c1:	89 df                	mov    %ebx,%edi
    37c3:	c1 ff 1f             	sar    $0x1f,%edi
    37c6:	29 fa                	sub    %edi,%edx
    37c8:	8d 42 30             	lea    0x30(%edx),%eax
    37cb:	88 45 a9             	mov    %al,-0x57(%ebp)
    37ce:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    37d4:	89 de                	mov    %ebx,%esi
    37d6:	29 d6                	sub    %edx,%esi
    37d8:	b9 1f 85 eb 51       	mov    $0x51eb851f,%ecx
    37dd:	89 f0                	mov    %esi,%eax
    37df:	f7 e9                	imul   %ecx
    37e1:	c1 fa 05             	sar    $0x5,%edx
    37e4:	c1 fe 1f             	sar    $0x1f,%esi
    37e7:	29 f2                	sub    %esi,%edx
    37e9:	83 c2 30             	add    $0x30,%edx
    37ec:	88 55 aa             	mov    %dl,-0x56(%ebp)
    37ef:	89 d8                	mov    %ebx,%eax
    37f1:	f7 e9                	imul   %ecx
    37f3:	89 d1                	mov    %edx,%ecx
    37f5:	c1 f9 05             	sar    $0x5,%ecx
    37f8:	29 f9                	sub    %edi,%ecx
    37fa:	6b c9 64             	imul   $0x64,%ecx,%ecx
    37fd:	89 d8                	mov    %ebx,%eax
    37ff:	29 c8                	sub    %ecx,%eax
    3801:	89 c1                	mov    %eax,%ecx
    3803:	be 67 66 66 66       	mov    $0x66666667,%esi
    3808:	f7 ee                	imul   %esi
    380a:	c1 fa 02             	sar    $0x2,%edx
    380d:	c1 f9 1f             	sar    $0x1f,%ecx
    3810:	29 ca                	sub    %ecx,%edx
    3812:	83 c2 30             	add    $0x30,%edx
    3815:	88 55 ab             	mov    %dl,-0x55(%ebp)
    3818:	89 d8                	mov    %ebx,%eax
    381a:	f7 ee                	imul   %esi
    381c:	c1 fa 02             	sar    $0x2,%edx
    381f:	29 fa                	sub    %edi,%edx
    3821:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3824:	01 c0                	add    %eax,%eax
    3826:	89 da                	mov    %ebx,%edx
    3828:	29 c2                	sub    %eax,%edx
    382a:	83 c2 30             	add    $0x30,%edx
    382d:	88 55 ac             	mov    %dl,-0x54(%ebp)
    3830:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    3834:	83 ec 04             	sub    $0x4,%esp
    3837:	8d 75 a8             	lea    -0x58(%ebp),%esi
    383a:	56                   	push   %esi
    383b:	68 f8 50 00 00       	push   $0x50f8
    3840:	6a 01                	push   $0x1
    3842:	e8 84 06 00 00       	call   0x3ecb
    3847:	83 c4 08             	add    $0x8,%esp
    384a:	68 02 02 00 00       	push   $0x202
    384f:	56                   	push   %esi
    3850:	e8 65 05 00 00       	call   0x3dba
    3855:	89 c6                	mov    %eax,%esi
    3857:	83 c4 10             	add    $0x10,%esp
    385a:	85 c0                	test   %eax,%eax
    385c:	79 1b                	jns    0x3879
    385e:	83 ec 04             	sub    $0x4,%esp
    3861:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3864:	50                   	push   %eax
    3865:	68 04 51 00 00       	push   $0x5104
    386a:	6a 01                	push   $0x1
    386c:	e8 5a 06 00 00       	call   0x3ecb
    3871:	83 c4 10             	add    $0x10,%esp
    3874:	e9 e6 00 00 00       	jmp    0x395f
    3879:	bf 00 00 00 00       	mov    $0x0,%edi
    387e:	83 ec 04             	sub    $0x4,%esp
    3881:	68 00 02 00 00       	push   $0x200
    3886:	68 a0 89 00 00       	push   $0x89a0
    388b:	56                   	push   %esi
    388c:	e8 09 05 00 00       	call   0x3d9a
    3891:	83 c4 10             	add    $0x10,%esp
    3894:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3899:	7e 04                	jle    0x389f
    389b:	01 c7                	add    %eax,%edi
    389d:	eb df                	jmp    0x387e
    389f:	83 ec 04             	sub    $0x4,%esp
    38a2:	57                   	push   %edi
    38a3:	68 14 51 00 00       	push   $0x5114
    38a8:	6a 01                	push   $0x1
    38aa:	e8 1c 06 00 00       	call   0x3ecb
    38af:	89 34 24             	mov    %esi,(%esp)
    38b2:	e8 eb 04 00 00       	call   0x3da2
    38b7:	83 c4 10             	add    $0x10,%esp
    38ba:	85 ff                	test   %edi,%edi
    38bc:	0f 84 9d 00 00 00    	je     0x395f
    38c2:	83 c3 01             	add    $0x1,%ebx
    38c5:	e9 e7 fe ff ff       	jmp    0x37b1
    38ca:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    38ce:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
    38d3:	89 d8                	mov    %ebx,%eax
    38d5:	f7 ea                	imul   %edx
    38d7:	c1 fa 06             	sar    $0x6,%edx
    38da:	89 df                	mov    %ebx,%edi
    38dc:	c1 ff 1f             	sar    $0x1f,%edi
    38df:	29 fa                	sub    %edi,%edx
    38e1:	8d 42 30             	lea    0x30(%edx),%eax
    38e4:	88 45 a9             	mov    %al,-0x57(%ebp)
    38e7:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    38ed:	89 de                	mov    %ebx,%esi
    38ef:	29 d6                	sub    %edx,%esi
    38f1:	b9 1f 85 eb 51       	mov    $0x51eb851f,%ecx
    38f6:	89 f0                	mov    %esi,%eax
    38f8:	f7 e9                	imul   %ecx
    38fa:	c1 fa 05             	sar    $0x5,%edx
    38fd:	c1 fe 1f             	sar    $0x1f,%esi
    3900:	29 f2                	sub    %esi,%edx
    3902:	83 c2 30             	add    $0x30,%edx
    3905:	88 55 aa             	mov    %dl,-0x56(%ebp)
    3908:	89 d8                	mov    %ebx,%eax
    390a:	f7 e9                	imul   %ecx
    390c:	89 d1                	mov    %edx,%ecx
    390e:	c1 f9 05             	sar    $0x5,%ecx
    3911:	29 f9                	sub    %edi,%ecx
    3913:	6b c9 64             	imul   $0x64,%ecx,%ecx
    3916:	89 d8                	mov    %ebx,%eax
    3918:	29 c8                	sub    %ecx,%eax
    391a:	89 c1                	mov    %eax,%ecx
    391c:	be 67 66 66 66       	mov    $0x66666667,%esi
    3921:	f7 ee                	imul   %esi
    3923:	c1 fa 02             	sar    $0x2,%edx
    3926:	c1 f9 1f             	sar    $0x1f,%ecx
    3929:	29 ca                	sub    %ecx,%edx
    392b:	83 c2 30             	add    $0x30,%edx
    392e:	88 55 ab             	mov    %dl,-0x55(%ebp)
    3931:	89 d8                	mov    %ebx,%eax
    3933:	f7 ee                	imul   %esi
    3935:	c1 fa 02             	sar    $0x2,%edx
    3938:	29 fa                	sub    %edi,%edx
    393a:	8d 04 92             	lea    (%edx,%edx,4),%eax
    393d:	01 c0                	add    %eax,%eax
    393f:	89 da                	mov    %ebx,%edx
    3941:	29 c2                	sub    %eax,%edx
    3943:	83 c2 30             	add    $0x30,%edx
    3946:	88 55 ac             	mov    %dl,-0x54(%ebp)
    3949:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    394d:	83 ec 0c             	sub    $0xc,%esp
    3950:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3953:	50                   	push   %eax
    3954:	e8 71 04 00 00       	call   0x3dca
    3959:	83 eb 01             	sub    $0x1,%ebx
    395c:	83 c4 10             	add    $0x10,%esp
    395f:	85 db                	test   %ebx,%ebx
    3961:	0f 89 63 ff ff ff    	jns    0x38ca
    3967:	83 ec 08             	sub    $0x8,%esp
    396a:	68 24 51 00 00       	push   $0x5124
    396f:	6a 01                	push   $0x1
    3971:	e8 55 05 00 00       	call   0x3ecb
    3976:	83 c4 10             	add    $0x10,%esp
    3979:	8d 65 f4             	lea    -0xc(%ebp),%esp
    397c:	5b                   	pop    %ebx
    397d:	5e                   	pop    %esi
    397e:	5f                   	pop    %edi
    397f:	5d                   	pop    %ebp
    3980:	c3                   	ret    
    3981:	f3 0f 1e fb          	endbr32 
    3985:	55                   	push   %ebp
    3986:	89 e5                	mov    %esp,%ebp
    3988:	83 ec 10             	sub    $0x10,%esp
    398b:	68 3a 51 00 00       	push   $0x513a
    3990:	6a 01                	push   $0x1
    3992:	e8 34 05 00 00       	call   0x3ecb
    3997:	e8 d6 03 00 00       	call   0x3d72
    399c:	83 c4 10             	add    $0x10,%esp
    399f:	85 c0                	test   %eax,%eax
    39a1:	74 20                	je     0x39c3
    39a3:	78 4a                	js     0x39ef
    39a5:	83 ec 0c             	sub    $0xc,%esp
    39a8:	6a 00                	push   $0x0
    39aa:	e8 d3 03 00 00       	call   0x3d82
    39af:	83 c4 08             	add    $0x8,%esp
    39b2:	68 44 51 00 00       	push   $0x5144
    39b7:	6a 01                	push   $0x1
    39b9:	e8 0d 05 00 00       	call   0x3ecb
    39be:	83 c4 10             	add    $0x10,%esp
    39c1:	c9                   	leave  
    39c2:	c3                   	ret    
    39c3:	b8 09 00 00 00       	mov    $0x9,%eax
    39c8:	ba 70 00 00 00       	mov    $0x70,%edx
    39cd:	ee                   	out    %al,(%dx)
    39ce:	ba 71 00 00 00       	mov    $0x71,%edx
    39d3:	ec                   	in     (%dx),%al
    39d4:	83 ec 08             	sub    $0x8,%esp
    39d7:	68 d0 58 00 00       	push   $0x58d0
    39dc:	6a 01                	push   $0x1
    39de:	e8 e8 04 00 00       	call   0x3ecb
    39e3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39ea:	e8 8b 03 00 00       	call   0x3d7a
    39ef:	83 ec 08             	sub    $0x8,%esp
    39f2:	68 c9 50 00 00       	push   $0x50c9
    39f7:	6a 01                	push   $0x1
    39f9:	e8 cd 04 00 00       	call   0x3ecb
    39fe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a05:	e8 70 03 00 00       	call   0x3d7a
    3a0a:	f3 0f 1e fb          	endbr32 
    3a0e:	55                   	push   %ebp
    3a0f:	89 e5                	mov    %esp,%ebp
    3a11:	53                   	push   %ebx
    3a12:	83 ec 0c             	sub    $0xc,%esp
    3a15:	6a 00                	push   $0x0
    3a17:	68 53 51 00 00       	push   $0x5153
    3a1c:	e8 99 03 00 00       	call   0x3dba
    3a21:	83 c4 10             	add    $0x10,%esp
    3a24:	85 c0                	test   %eax,%eax
    3a26:	78 3a                	js     0x3a62
    3a28:	89 c3                	mov    %eax,%ebx
    3a2a:	83 ec 0c             	sub    $0xc,%esp
    3a2d:	6a 00                	push   $0x0
    3a2f:	e8 ce 03 00 00       	call   0x3e02
    3a34:	83 e8 01             	sub    $0x1,%eax
    3a37:	83 c4 0c             	add    $0xc,%esp
    3a3a:	6a ff                	push   $0xffffffff
    3a3c:	50                   	push   %eax
    3a3d:	53                   	push   %ebx
    3a3e:	e8 4f 03 00 00       	call   0x3d92
    3a43:	89 1c 24             	mov    %ebx,(%esp)
    3a46:	e8 57 03 00 00       	call   0x3da2
    3a4b:	83 c4 08             	add    $0x8,%esp
    3a4e:	68 65 51 00 00       	push   $0x5165
    3a53:	6a 01                	push   $0x1
    3a55:	e8 71 04 00 00       	call   0x3ecb
    3a5a:	83 c4 10             	add    $0x10,%esp
    3a5d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3a60:	c9                   	leave  
    3a61:	c3                   	ret    
    3a62:	83 ec 08             	sub    $0x8,%esp
    3a65:	68 58 51 00 00       	push   $0x5158
    3a6a:	6a 02                	push   $0x2
    3a6c:	e8 5a 04 00 00       	call   0x3ecb
    3a71:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a78:	e8 fd 02 00 00       	call   0x3d7a
    3a7d:	f3 0f 1e fb          	endbr32 
    3a81:	69 05 b4 61 00 00 0d 	imul   $0x19660d,0x61b4,%eax
    3a88:	66 19 00 
    3a8b:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3a90:	a3 b4 61 00 00       	mov    %eax,0x61b4
    3a95:	c3                   	ret    
    3a96:	f3 0f 1e fb          	endbr32 
    3a9a:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    3a9e:	83 e4 f0             	and    $0xfffffff0,%esp
    3aa1:	ff 71 fc             	pushl  -0x4(%ecx)
    3aa4:	55                   	push   %ebp
    3aa5:	89 e5                	mov    %esp,%ebp
    3aa7:	51                   	push   %ecx
    3aa8:	83 ec 0c             	sub    $0xc,%esp
    3aab:	68 76 51 00 00       	push   $0x5176
    3ab0:	6a 01                	push   $0x1
    3ab2:	e8 14 04 00 00       	call   0x3ecb
    3ab7:	83 c4 08             	add    $0x8,%esp
    3aba:	6a 00                	push   $0x0
    3abc:	68 8a 51 00 00       	push   $0x518a
    3ac1:	e8 f4 02 00 00       	call   0x3dba
    3ac6:	83 c4 10             	add    $0x10,%esp
    3ac9:	85 c0                	test   %eax,%eax
    3acb:	78 1b                	js     0x3ae8
    3acd:	83 ec 08             	sub    $0x8,%esp
    3ad0:	68 f4 58 00 00       	push   $0x58f4
    3ad5:	6a 01                	push   $0x1
    3ad7:	e8 ef 03 00 00       	call   0x3ecb
    3adc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ae3:	e8 92 02 00 00       	call   0x3d7a
    3ae8:	83 ec 08             	sub    $0x8,%esp
    3aeb:	68 00 02 00 00       	push   $0x200
    3af0:	68 8a 51 00 00       	push   $0x518a
    3af5:	e8 c0 02 00 00       	call   0x3dba
    3afa:	89 04 24             	mov    %eax,(%esp)
    3afd:	e8 a0 02 00 00       	call   0x3da2
    3b02:	e8 03 ff ff ff       	call   0x3a0a
    3b07:	e8 dc d6 ff ff       	call   0x11e8
    3b0c:	e8 6d e0 ff ff       	call   0x1b7e
    3b11:	e8 32 dd ff ff       	call   0x1848
    3b16:	e8 b6 d4 ff ff       	call   0xfd1
    3b1b:	e8 00 d3 ff ff       	call   0xe20
    3b20:	e8 4e fb ff ff       	call   0x3673
    3b25:	e8 03 eb ff ff       	call   0x262d
    3b2a:	e8 44 fb ff ff       	call   0x3673
    3b2f:	e8 d1 fa ff ff       	call   0x3605
    3b34:	e8 76 f5 ff ff       	call   0x30af
    3b39:	e8 02 fa ff ff       	call   0x3540
    3b3e:	e8 dd c7 ff ff       	call   0x320
    3b43:	e8 7d c8 ff ff       	call   0x3c5
    3b48:	e8 72 ca ff ff       	call   0x5bf
    3b4d:	e8 52 cc ff ff       	call   0x7a4
    3b52:	e8 b6 c6 ff ff       	call   0x20d
    3b57:	e8 a1 c5 ff ff       	call   0xfd
    3b5c:	e8 9f c4 ff ff       	call   0x0
    3b61:	e8 e7 d1 ff ff       	call   0xd4d
    3b66:	e8 3a ce ff ff       	call   0x9a5
    3b6b:	e8 05 d0 ff ff       	call   0xb75
    3b70:	e8 57 d1 ff ff       	call   0xccc
    3b75:	e8 f9 ee ff ff       	call   0x2a73
    3b7a:	e8 81 ed ff ff       	call   0x2900
    3b7f:	e8 8d eb ff ff       	call   0x2711
    3b84:	e8 6f e2 ff ff       	call   0x1df8
    3b89:	e8 51 da ff ff       	call   0x15df
    3b8e:	e8 85 d8 ff ff       	call   0x1418
    3b93:	e8 9c f0 ff ff       	call   0x2c34
    3b98:	e8 fb f2 ff ff       	call   0x2e98
    3b9d:	e8 30 f4 ff ff       	call   0x2fd2
    3ba2:	e8 e0 e0 ff ff       	call   0x1c87
    3ba7:	e8 d5 fd ff ff       	call   0x3981
    3bac:	e8 a0 cd ff ff       	call   0x951
    3bb1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bb8:	e8 bd 01 00 00       	call   0x3d7a
    3bbd:	f3 0f 1e fb          	endbr32 
    3bc1:	55                   	push   %ebp
    3bc2:	89 e5                	mov    %esp,%ebp
    3bc4:	56                   	push   %esi
    3bc5:	53                   	push   %ebx
    3bc6:	8b 75 08             	mov    0x8(%ebp),%esi
    3bc9:	8b 55 0c             	mov    0xc(%ebp),%edx
    3bcc:	89 f0                	mov    %esi,%eax
    3bce:	89 d1                	mov    %edx,%ecx
    3bd0:	83 c2 01             	add    $0x1,%edx
    3bd3:	89 c3                	mov    %eax,%ebx
    3bd5:	83 c0 01             	add    $0x1,%eax
    3bd8:	0f b6 09             	movzbl (%ecx),%ecx
    3bdb:	88 0b                	mov    %cl,(%ebx)
    3bdd:	84 c9                	test   %cl,%cl
    3bdf:	75 ed                	jne    0x3bce
    3be1:	89 f0                	mov    %esi,%eax
    3be3:	5b                   	pop    %ebx
    3be4:	5e                   	pop    %esi
    3be5:	5d                   	pop    %ebp
    3be6:	c3                   	ret    
    3be7:	f3 0f 1e fb          	endbr32 
    3beb:	55                   	push   %ebp
    3bec:	89 e5                	mov    %esp,%ebp
    3bee:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3bf1:	8b 55 0c             	mov    0xc(%ebp),%edx
    3bf4:	0f b6 01             	movzbl (%ecx),%eax
    3bf7:	84 c0                	test   %al,%al
    3bf9:	74 0c                	je     0x3c07
    3bfb:	3a 02                	cmp    (%edx),%al
    3bfd:	75 08                	jne    0x3c07
    3bff:	83 c1 01             	add    $0x1,%ecx
    3c02:	83 c2 01             	add    $0x1,%edx
    3c05:	eb ed                	jmp    0x3bf4
    3c07:	0f b6 c0             	movzbl %al,%eax
    3c0a:	0f b6 12             	movzbl (%edx),%edx
    3c0d:	29 d0                	sub    %edx,%eax
    3c0f:	5d                   	pop    %ebp
    3c10:	c3                   	ret    
    3c11:	f3 0f 1e fb          	endbr32 
    3c15:	55                   	push   %ebp
    3c16:	89 e5                	mov    %esp,%ebp
    3c18:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3c1b:	b8 00 00 00 00       	mov    $0x0,%eax
    3c20:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
    3c24:	74 05                	je     0x3c2b
    3c26:	83 c0 01             	add    $0x1,%eax
    3c29:	eb f5                	jmp    0x3c20
    3c2b:	5d                   	pop    %ebp
    3c2c:	c3                   	ret    
    3c2d:	f3 0f 1e fb          	endbr32 
    3c31:	55                   	push   %ebp
    3c32:	89 e5                	mov    %esp,%ebp
    3c34:	57                   	push   %edi
    3c35:	8b 55 08             	mov    0x8(%ebp),%edx
    3c38:	89 d7                	mov    %edx,%edi
    3c3a:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3c3d:	8b 45 0c             	mov    0xc(%ebp),%eax
    3c40:	fc                   	cld    
    3c41:	f3 aa                	rep stos %al,%es:(%edi)
    3c43:	89 d0                	mov    %edx,%eax
    3c45:	5f                   	pop    %edi
    3c46:	5d                   	pop    %ebp
    3c47:	c3                   	ret    
    3c48:	f3 0f 1e fb          	endbr32 
    3c4c:	55                   	push   %ebp
    3c4d:	89 e5                	mov    %esp,%ebp
    3c4f:	8b 45 08             	mov    0x8(%ebp),%eax
    3c52:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
    3c56:	0f b6 10             	movzbl (%eax),%edx
    3c59:	84 d2                	test   %dl,%dl
    3c5b:	74 09                	je     0x3c66
    3c5d:	38 ca                	cmp    %cl,%dl
    3c5f:	74 0a                	je     0x3c6b
    3c61:	83 c0 01             	add    $0x1,%eax
    3c64:	eb f0                	jmp    0x3c56
    3c66:	b8 00 00 00 00       	mov    $0x0,%eax
    3c6b:	5d                   	pop    %ebp
    3c6c:	c3                   	ret    
    3c6d:	f3 0f 1e fb          	endbr32 
    3c71:	55                   	push   %ebp
    3c72:	89 e5                	mov    %esp,%ebp
    3c74:	57                   	push   %edi
    3c75:	56                   	push   %esi
    3c76:	53                   	push   %ebx
    3c77:	83 ec 1c             	sub    $0x1c,%esp
    3c7a:	8b 7d 08             	mov    0x8(%ebp),%edi
    3c7d:	bb 00 00 00 00       	mov    $0x0,%ebx
    3c82:	89 de                	mov    %ebx,%esi
    3c84:	83 c3 01             	add    $0x1,%ebx
    3c87:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3c8a:	7d 2e                	jge    0x3cba
    3c8c:	83 ec 04             	sub    $0x4,%esp
    3c8f:	6a 01                	push   $0x1
    3c91:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3c94:	50                   	push   %eax
    3c95:	6a 00                	push   $0x0
    3c97:	e8 f6 00 00 00       	call   0x3d92
    3c9c:	83 c4 10             	add    $0x10,%esp
    3c9f:	85 c0                	test   %eax,%eax
    3ca1:	7e 17                	jle    0x3cba
    3ca3:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3ca7:	88 04 37             	mov    %al,(%edi,%esi,1)
    3caa:	3c 0a                	cmp    $0xa,%al
    3cac:	0f 94 c2             	sete   %dl
    3caf:	3c 0d                	cmp    $0xd,%al
    3cb1:	0f 94 c0             	sete   %al
    3cb4:	08 c2                	or     %al,%dl
    3cb6:	74 ca                	je     0x3c82
    3cb8:	89 de                	mov    %ebx,%esi
    3cba:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
    3cbe:	89 f8                	mov    %edi,%eax
    3cc0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3cc3:	5b                   	pop    %ebx
    3cc4:	5e                   	pop    %esi
    3cc5:	5f                   	pop    %edi
    3cc6:	5d                   	pop    %ebp
    3cc7:	c3                   	ret    
    3cc8:	f3 0f 1e fb          	endbr32 
    3ccc:	55                   	push   %ebp
    3ccd:	89 e5                	mov    %esp,%ebp
    3ccf:	56                   	push   %esi
    3cd0:	53                   	push   %ebx
    3cd1:	83 ec 08             	sub    $0x8,%esp
    3cd4:	6a 00                	push   $0x0
    3cd6:	ff 75 08             	pushl  0x8(%ebp)
    3cd9:	e8 dc 00 00 00       	call   0x3dba
    3cde:	83 c4 10             	add    $0x10,%esp
    3ce1:	85 c0                	test   %eax,%eax
    3ce3:	78 24                	js     0x3d09
    3ce5:	89 c3                	mov    %eax,%ebx
    3ce7:	83 ec 08             	sub    $0x8,%esp
    3cea:	ff 75 0c             	pushl  0xc(%ebp)
    3ced:	50                   	push   %eax
    3cee:	e8 df 00 00 00       	call   0x3dd2
    3cf3:	89 c6                	mov    %eax,%esi
    3cf5:	89 1c 24             	mov    %ebx,(%esp)
    3cf8:	e8 a5 00 00 00       	call   0x3da2
    3cfd:	83 c4 10             	add    $0x10,%esp
    3d00:	89 f0                	mov    %esi,%eax
    3d02:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3d05:	5b                   	pop    %ebx
    3d06:	5e                   	pop    %esi
    3d07:	5d                   	pop    %ebp
    3d08:	c3                   	ret    
    3d09:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3d0e:	eb f0                	jmp    0x3d00
    3d10:	f3 0f 1e fb          	endbr32 
    3d14:	55                   	push   %ebp
    3d15:	89 e5                	mov    %esp,%ebp
    3d17:	53                   	push   %ebx
    3d18:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3d1b:	ba 00 00 00 00       	mov    $0x0,%edx
    3d20:	0f b6 01             	movzbl (%ecx),%eax
    3d23:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3d26:	80 fb 09             	cmp    $0x9,%bl
    3d29:	77 12                	ja     0x3d3d
    3d2b:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
    3d2e:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
    3d31:	83 c1 01             	add    $0x1,%ecx
    3d34:	0f be c0             	movsbl %al,%eax
    3d37:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
    3d3b:	eb e3                	jmp    0x3d20
    3d3d:	89 d0                	mov    %edx,%eax
    3d3f:	5b                   	pop    %ebx
    3d40:	5d                   	pop    %ebp
    3d41:	c3                   	ret    
    3d42:	f3 0f 1e fb          	endbr32 
    3d46:	55                   	push   %ebp
    3d47:	89 e5                	mov    %esp,%ebp
    3d49:	56                   	push   %esi
    3d4a:	53                   	push   %ebx
    3d4b:	8b 75 08             	mov    0x8(%ebp),%esi
    3d4e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3d51:	8b 45 10             	mov    0x10(%ebp),%eax
    3d54:	89 f2                	mov    %esi,%edx
    3d56:	8d 58 ff             	lea    -0x1(%eax),%ebx
    3d59:	85 c0                	test   %eax,%eax
    3d5b:	7e 0f                	jle    0x3d6c
    3d5d:	0f b6 01             	movzbl (%ecx),%eax
    3d60:	88 02                	mov    %al,(%edx)
    3d62:	8d 49 01             	lea    0x1(%ecx),%ecx
    3d65:	8d 52 01             	lea    0x1(%edx),%edx
    3d68:	89 d8                	mov    %ebx,%eax
    3d6a:	eb ea                	jmp    0x3d56
    3d6c:	89 f0                	mov    %esi,%eax
    3d6e:	5b                   	pop    %ebx
    3d6f:	5e                   	pop    %esi
    3d70:	5d                   	pop    %ebp
    3d71:	c3                   	ret    
    3d72:	b8 01 00 00 00       	mov    $0x1,%eax
    3d77:	cd 40                	int    $0x40
    3d79:	c3                   	ret    
    3d7a:	b8 02 00 00 00       	mov    $0x2,%eax
    3d7f:	cd 40                	int    $0x40
    3d81:	c3                   	ret    
    3d82:	b8 03 00 00 00       	mov    $0x3,%eax
    3d87:	cd 40                	int    $0x40
    3d89:	c3                   	ret    
    3d8a:	b8 04 00 00 00       	mov    $0x4,%eax
    3d8f:	cd 40                	int    $0x40
    3d91:	c3                   	ret    
    3d92:	b8 05 00 00 00       	mov    $0x5,%eax
    3d97:	cd 40                	int    $0x40
    3d99:	c3                   	ret    
    3d9a:	b8 10 00 00 00       	mov    $0x10,%eax
    3d9f:	cd 40                	int    $0x40
    3da1:	c3                   	ret    
    3da2:	b8 15 00 00 00       	mov    $0x15,%eax
    3da7:	cd 40                	int    $0x40
    3da9:	c3                   	ret    
    3daa:	b8 06 00 00 00       	mov    $0x6,%eax
    3daf:	cd 40                	int    $0x40
    3db1:	c3                   	ret    
    3db2:	b8 07 00 00 00       	mov    $0x7,%eax
    3db7:	cd 40                	int    $0x40
    3db9:	c3                   	ret    
    3dba:	b8 0f 00 00 00       	mov    $0xf,%eax
    3dbf:	cd 40                	int    $0x40
    3dc1:	c3                   	ret    
    3dc2:	b8 11 00 00 00       	mov    $0x11,%eax
    3dc7:	cd 40                	int    $0x40
    3dc9:	c3                   	ret    
    3dca:	b8 12 00 00 00       	mov    $0x12,%eax
    3dcf:	cd 40                	int    $0x40
    3dd1:	c3                   	ret    
    3dd2:	b8 08 00 00 00       	mov    $0x8,%eax
    3dd7:	cd 40                	int    $0x40
    3dd9:	c3                   	ret    
    3dda:	b8 13 00 00 00       	mov    $0x13,%eax
    3ddf:	cd 40                	int    $0x40
    3de1:	c3                   	ret    
    3de2:	b8 14 00 00 00       	mov    $0x14,%eax
    3de7:	cd 40                	int    $0x40
    3de9:	c3                   	ret    
    3dea:	b8 09 00 00 00       	mov    $0x9,%eax
    3def:	cd 40                	int    $0x40
    3df1:	c3                   	ret    
    3df2:	b8 0a 00 00 00       	mov    $0xa,%eax
    3df7:	cd 40                	int    $0x40
    3df9:	c3                   	ret    
    3dfa:	b8 0b 00 00 00       	mov    $0xb,%eax
    3dff:	cd 40                	int    $0x40
    3e01:	c3                   	ret    
    3e02:	b8 0c 00 00 00       	mov    $0xc,%eax
    3e07:	cd 40                	int    $0x40
    3e09:	c3                   	ret    
    3e0a:	b8 0d 00 00 00       	mov    $0xd,%eax
    3e0f:	cd 40                	int    $0x40
    3e11:	c3                   	ret    
    3e12:	b8 0e 00 00 00       	mov    $0xe,%eax
    3e17:	cd 40                	int    $0x40
    3e19:	c3                   	ret    
    3e1a:	b8 16 00 00 00       	mov    $0x16,%eax
    3e1f:	cd 40                	int    $0x40
    3e21:	c3                   	ret    
    3e22:	b8 17 00 00 00       	mov    $0x17,%eax
    3e27:	cd 40                	int    $0x40
    3e29:	c3                   	ret    
    3e2a:	55                   	push   %ebp
    3e2b:	89 e5                	mov    %esp,%ebp
    3e2d:	83 ec 1c             	sub    $0x1c,%esp
    3e30:	88 55 f4             	mov    %dl,-0xc(%ebp)
    3e33:	6a 01                	push   $0x1
    3e35:	8d 55 f4             	lea    -0xc(%ebp),%edx
    3e38:	52                   	push   %edx
    3e39:	50                   	push   %eax
    3e3a:	e8 5b ff ff ff       	call   0x3d9a
    3e3f:	83 c4 10             	add    $0x10,%esp
    3e42:	c9                   	leave  
    3e43:	c3                   	ret    
    3e44:	55                   	push   %ebp
    3e45:	89 e5                	mov    %esp,%ebp
    3e47:	57                   	push   %edi
    3e48:	56                   	push   %esi
    3e49:	53                   	push   %ebx
    3e4a:	83 ec 2c             	sub    $0x2c,%esp
    3e4d:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3e50:	89 d6                	mov    %edx,%esi
    3e52:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    3e56:	0f 95 c2             	setne  %dl
    3e59:	89 f0                	mov    %esi,%eax
    3e5b:	c1 e8 1f             	shr    $0x1f,%eax
    3e5e:	84 c2                	test   %al,%dl
    3e60:	74 42                	je     0x3ea4
    3e62:	f7 de                	neg    %esi
    3e64:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
    3e6b:	bb 00 00 00 00       	mov    $0x0,%ebx
    3e70:	89 f0                	mov    %esi,%eax
    3e72:	ba 00 00 00 00       	mov    $0x0,%edx
    3e77:	f7 f1                	div    %ecx
    3e79:	89 df                	mov    %ebx,%edi
    3e7b:	83 c3 01             	add    $0x1,%ebx
    3e7e:	0f b6 92 28 59 00 00 	movzbl 0x5928(%edx),%edx
    3e85:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
    3e89:	89 f2                	mov    %esi,%edx
    3e8b:	89 c6                	mov    %eax,%esi
    3e8d:	39 d1                	cmp    %edx,%ecx
    3e8f:	76 df                	jbe    0x3e70
    3e91:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    3e95:	74 2f                	je     0x3ec6
    3e97:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    3e9c:	8d 5f 02             	lea    0x2(%edi),%ebx
    3e9f:	8b 75 d0             	mov    -0x30(%ebp),%esi
    3ea2:	eb 15                	jmp    0x3eb9
    3ea4:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    3eab:	eb be                	jmp    0x3e6b
    3ead:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
    3eb2:	89 f0                	mov    %esi,%eax
    3eb4:	e8 71 ff ff ff       	call   0x3e2a
    3eb9:	83 eb 01             	sub    $0x1,%ebx
    3ebc:	79 ef                	jns    0x3ead
    3ebe:	83 c4 2c             	add    $0x2c,%esp
    3ec1:	5b                   	pop    %ebx
    3ec2:	5e                   	pop    %esi
    3ec3:	5f                   	pop    %edi
    3ec4:	5d                   	pop    %ebp
    3ec5:	c3                   	ret    
    3ec6:	8b 75 d0             	mov    -0x30(%ebp),%esi
    3ec9:	eb ee                	jmp    0x3eb9
    3ecb:	f3 0f 1e fb          	endbr32 
    3ecf:	55                   	push   %ebp
    3ed0:	89 e5                	mov    %esp,%ebp
    3ed2:	57                   	push   %edi
    3ed3:	56                   	push   %esi
    3ed4:	53                   	push   %ebx
    3ed5:	83 ec 1c             	sub    $0x1c,%esp
    3ed8:	8d 45 10             	lea    0x10(%ebp),%eax
    3edb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3ede:	be 00 00 00 00       	mov    $0x0,%esi
    3ee3:	bb 00 00 00 00       	mov    $0x0,%ebx
    3ee8:	eb 14                	jmp    0x3efe
    3eea:	89 fa                	mov    %edi,%edx
    3eec:	8b 45 08             	mov    0x8(%ebp),%eax
    3eef:	e8 36 ff ff ff       	call   0x3e2a
    3ef4:	eb 05                	jmp    0x3efb
    3ef6:	83 fe 25             	cmp    $0x25,%esi
    3ef9:	74 25                	je     0x3f20
    3efb:	83 c3 01             	add    $0x1,%ebx
    3efe:	8b 45 0c             	mov    0xc(%ebp),%eax
    3f01:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
    3f05:	84 c0                	test   %al,%al
    3f07:	0f 84 23 01 00 00    	je     0x4030
    3f0d:	0f be f8             	movsbl %al,%edi
    3f10:	0f b6 c0             	movzbl %al,%eax
    3f13:	85 f6                	test   %esi,%esi
    3f15:	75 df                	jne    0x3ef6
    3f17:	83 f8 25             	cmp    $0x25,%eax
    3f1a:	75 ce                	jne    0x3eea
    3f1c:	89 c6                	mov    %eax,%esi
    3f1e:	eb db                	jmp    0x3efb
    3f20:	83 f8 64             	cmp    $0x64,%eax
    3f23:	74 49                	je     0x3f6e
    3f25:	83 f8 78             	cmp    $0x78,%eax
    3f28:	0f 94 c1             	sete   %cl
    3f2b:	83 f8 70             	cmp    $0x70,%eax
    3f2e:	0f 94 c2             	sete   %dl
    3f31:	08 d1                	or     %dl,%cl
    3f33:	75 63                	jne    0x3f98
    3f35:	83 f8 73             	cmp    $0x73,%eax
    3f38:	0f 84 84 00 00 00    	je     0x3fc2
    3f3e:	83 f8 63             	cmp    $0x63,%eax
    3f41:	0f 84 b7 00 00 00    	je     0x3ffe
    3f47:	83 f8 25             	cmp    $0x25,%eax
    3f4a:	0f 84 cc 00 00 00    	je     0x401c
    3f50:	ba 25 00 00 00       	mov    $0x25,%edx
    3f55:	8b 45 08             	mov    0x8(%ebp),%eax
    3f58:	e8 cd fe ff ff       	call   0x3e2a
    3f5d:	89 fa                	mov    %edi,%edx
    3f5f:	8b 45 08             	mov    0x8(%ebp),%eax
    3f62:	e8 c3 fe ff ff       	call   0x3e2a
    3f67:	be 00 00 00 00       	mov    $0x0,%esi
    3f6c:	eb 8d                	jmp    0x3efb
    3f6e:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    3f71:	8b 17                	mov    (%edi),%edx
    3f73:	83 ec 0c             	sub    $0xc,%esp
    3f76:	6a 01                	push   $0x1
    3f78:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3f7d:	8b 45 08             	mov    0x8(%ebp),%eax
    3f80:	e8 bf fe ff ff       	call   0x3e44
    3f85:	83 c7 04             	add    $0x4,%edi
    3f88:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    3f8b:	83 c4 10             	add    $0x10,%esp
    3f8e:	be 00 00 00 00       	mov    $0x0,%esi
    3f93:	e9 63 ff ff ff       	jmp    0x3efb
    3f98:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    3f9b:	8b 17                	mov    (%edi),%edx
    3f9d:	83 ec 0c             	sub    $0xc,%esp
    3fa0:	6a 00                	push   $0x0
    3fa2:	b9 10 00 00 00       	mov    $0x10,%ecx
    3fa7:	8b 45 08             	mov    0x8(%ebp),%eax
    3faa:	e8 95 fe ff ff       	call   0x3e44
    3faf:	83 c7 04             	add    $0x4,%edi
    3fb2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    3fb5:	83 c4 10             	add    $0x10,%esp
    3fb8:	be 00 00 00 00       	mov    $0x0,%esi
    3fbd:	e9 39 ff ff ff       	jmp    0x3efb
    3fc2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    3fc5:	8b 30                	mov    (%eax),%esi
    3fc7:	83 c0 04             	add    $0x4,%eax
    3fca:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3fcd:	85 f6                	test   %esi,%esi
    3fcf:	75 28                	jne    0x3ff9
    3fd1:	be 1e 59 00 00       	mov    $0x591e,%esi
    3fd6:	8b 7d 08             	mov    0x8(%ebp),%edi
    3fd9:	eb 0d                	jmp    0x3fe8
    3fdb:	0f be d2             	movsbl %dl,%edx
    3fde:	89 f8                	mov    %edi,%eax
    3fe0:	e8 45 fe ff ff       	call   0x3e2a
    3fe5:	83 c6 01             	add    $0x1,%esi
    3fe8:	0f b6 16             	movzbl (%esi),%edx
    3feb:	84 d2                	test   %dl,%dl
    3fed:	75 ec                	jne    0x3fdb
    3fef:	be 00 00 00 00       	mov    $0x0,%esi
    3ff4:	e9 02 ff ff ff       	jmp    0x3efb
    3ff9:	8b 7d 08             	mov    0x8(%ebp),%edi
    3ffc:	eb ea                	jmp    0x3fe8
    3ffe:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    4001:	0f be 17             	movsbl (%edi),%edx
    4004:	8b 45 08             	mov    0x8(%ebp),%eax
    4007:	e8 1e fe ff ff       	call   0x3e2a
    400c:	83 c7 04             	add    $0x4,%edi
    400f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    4012:	be 00 00 00 00       	mov    $0x0,%esi
    4017:	e9 df fe ff ff       	jmp    0x3efb
    401c:	89 fa                	mov    %edi,%edx
    401e:	8b 45 08             	mov    0x8(%ebp),%eax
    4021:	e8 04 fe ff ff       	call   0x3e2a
    4026:	be 00 00 00 00       	mov    $0x0,%esi
    402b:	e9 cb fe ff ff       	jmp    0x3efb
    4030:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4033:	5b                   	pop    %ebx
    4034:	5e                   	pop    %esi
    4035:	5f                   	pop    %edi
    4036:	5d                   	pop    %ebp
    4037:	c3                   	ret    
    4038:	f3 0f 1e fb          	endbr32 
    403c:	55                   	push   %ebp
    403d:	89 e5                	mov    %esp,%ebp
    403f:	57                   	push   %edi
    4040:	56                   	push   %esi
    4041:	53                   	push   %ebx
    4042:	8b 5d 08             	mov    0x8(%ebp),%ebx
    4045:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    4048:	a1 60 62 00 00       	mov    0x6260,%eax
    404d:	eb 02                	jmp    0x4051
    404f:	89 d0                	mov    %edx,%eax
    4051:	39 c8                	cmp    %ecx,%eax
    4053:	73 04                	jae    0x4059
    4055:	39 08                	cmp    %ecx,(%eax)
    4057:	77 12                	ja     0x406b
    4059:	8b 10                	mov    (%eax),%edx
    405b:	39 c2                	cmp    %eax,%edx
    405d:	77 f0                	ja     0x404f
    405f:	39 c8                	cmp    %ecx,%eax
    4061:	72 08                	jb     0x406b
    4063:	39 ca                	cmp    %ecx,%edx
    4065:	77 04                	ja     0x406b
    4067:	89 d0                	mov    %edx,%eax
    4069:	eb e6                	jmp    0x4051
    406b:	8b 73 fc             	mov    -0x4(%ebx),%esi
    406e:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    4071:	8b 10                	mov    (%eax),%edx
    4073:	39 d7                	cmp    %edx,%edi
    4075:	74 19                	je     0x4090
    4077:	89 53 f8             	mov    %edx,-0x8(%ebx)
    407a:	8b 50 04             	mov    0x4(%eax),%edx
    407d:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4080:	39 ce                	cmp    %ecx,%esi
    4082:	74 1b                	je     0x409f
    4084:	89 08                	mov    %ecx,(%eax)
    4086:	a3 60 62 00 00       	mov    %eax,0x6260
    408b:	5b                   	pop    %ebx
    408c:	5e                   	pop    %esi
    408d:	5f                   	pop    %edi
    408e:	5d                   	pop    %ebp
    408f:	c3                   	ret    
    4090:	03 72 04             	add    0x4(%edx),%esi
    4093:	89 73 fc             	mov    %esi,-0x4(%ebx)
    4096:	8b 10                	mov    (%eax),%edx
    4098:	8b 12                	mov    (%edx),%edx
    409a:	89 53 f8             	mov    %edx,-0x8(%ebx)
    409d:	eb db                	jmp    0x407a
    409f:	03 53 fc             	add    -0x4(%ebx),%edx
    40a2:	89 50 04             	mov    %edx,0x4(%eax)
    40a5:	8b 53 f8             	mov    -0x8(%ebx),%edx
    40a8:	89 10                	mov    %edx,(%eax)
    40aa:	eb da                	jmp    0x4086
    40ac:	55                   	push   %ebp
    40ad:	89 e5                	mov    %esp,%ebp
    40af:	53                   	push   %ebx
    40b0:	83 ec 04             	sub    $0x4,%esp
    40b3:	89 c3                	mov    %eax,%ebx
    40b5:	3d ff 0f 00 00       	cmp    $0xfff,%eax
    40ba:	77 05                	ja     0x40c1
    40bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
    40c1:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    40c8:	83 ec 0c             	sub    $0xc,%esp
    40cb:	50                   	push   %eax
    40cc:	e8 31 fd ff ff       	call   0x3e02
    40d1:	83 c4 10             	add    $0x10,%esp
    40d4:	83 f8 ff             	cmp    $0xffffffff,%eax
    40d7:	74 1c                	je     0x40f5
    40d9:	89 58 04             	mov    %ebx,0x4(%eax)
    40dc:	83 c0 08             	add    $0x8,%eax
    40df:	83 ec 0c             	sub    $0xc,%esp
    40e2:	50                   	push   %eax
    40e3:	e8 50 ff ff ff       	call   0x4038
    40e8:	a1 60 62 00 00       	mov    0x6260,%eax
    40ed:	83 c4 10             	add    $0x10,%esp
    40f0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    40f3:	c9                   	leave  
    40f4:	c3                   	ret    
    40f5:	b8 00 00 00 00       	mov    $0x0,%eax
    40fa:	eb f4                	jmp    0x40f0
    40fc:	f3 0f 1e fb          	endbr32 
    4100:	55                   	push   %ebp
    4101:	89 e5                	mov    %esp,%ebp
    4103:	53                   	push   %ebx
    4104:	83 ec 04             	sub    $0x4,%esp
    4107:	8b 45 08             	mov    0x8(%ebp),%eax
    410a:	8d 58 07             	lea    0x7(%eax),%ebx
    410d:	c1 eb 03             	shr    $0x3,%ebx
    4110:	83 c3 01             	add    $0x1,%ebx
    4113:	8b 0d 60 62 00 00    	mov    0x6260,%ecx
    4119:	85 c9                	test   %ecx,%ecx
    411b:	74 04                	je     0x4121
    411d:	8b 01                	mov    (%ecx),%eax
    411f:	eb 4b                	jmp    0x416c
    4121:	c7 05 60 62 00 00 64 	movl   $0x6264,0x6260
    4128:	62 00 00 
    412b:	c7 05 64 62 00 00 64 	movl   $0x6264,0x6264
    4132:	62 00 00 
    4135:	c7 05 68 62 00 00 00 	movl   $0x0,0x6268
    413c:	00 00 00 
    413f:	b9 64 62 00 00       	mov    $0x6264,%ecx
    4144:	eb d7                	jmp    0x411d
    4146:	74 1a                	je     0x4162
    4148:	29 da                	sub    %ebx,%edx
    414a:	89 50 04             	mov    %edx,0x4(%eax)
    414d:	8d 04 d0             	lea    (%eax,%edx,8),%eax
    4150:	89 58 04             	mov    %ebx,0x4(%eax)
    4153:	89 0d 60 62 00 00    	mov    %ecx,0x6260
    4159:	83 c0 08             	add    $0x8,%eax
    415c:	83 c4 04             	add    $0x4,%esp
    415f:	5b                   	pop    %ebx
    4160:	5d                   	pop    %ebp
    4161:	c3                   	ret    
    4162:	8b 10                	mov    (%eax),%edx
    4164:	89 11                	mov    %edx,(%ecx)
    4166:	eb eb                	jmp    0x4153
    4168:	89 c1                	mov    %eax,%ecx
    416a:	8b 00                	mov    (%eax),%eax
    416c:	8b 50 04             	mov    0x4(%eax),%edx
    416f:	39 da                	cmp    %ebx,%edx
    4171:	73 d3                	jae    0x4146
    4173:	39 05 60 62 00 00    	cmp    %eax,0x6260
    4179:	75 ed                	jne    0x4168
    417b:	89 d8                	mov    %ebx,%eax
    417d:	e8 2a ff ff ff       	call   0x40ac
    4182:	85 c0                	test   %eax,%eax
    4184:	75 e2                	jne    0x4168
    4186:	eb d4                	jmp    0x415c
