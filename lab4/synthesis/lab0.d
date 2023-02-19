
lab0:     file format elf64-x86-64


Disassembly of section .init:

0000000000400558 <_init>:
  400558:	48 83 ec 08          	sub    $0x8,%rsp
  40055c:	48 8b 05 95 1a 20 00 	mov    0x201a95(%rip),%rax        # 601ff8 <__gmon_start__>
  400563:	48 85 c0             	test   %rax,%rax
  400566:	74 05                	je     40056d <_init+0x15>
  400568:	e8 b3 00 00 00       	callq  400620 <.plt.got>
  40056d:	48 83 c4 08          	add    $0x8,%rsp
  400571:	c3                   	retq   

Disassembly of section .plt:

0000000000400580 <.plt>:
  400580:	ff 35 82 1a 20 00    	pushq  0x201a82(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400586:	ff 25 84 1a 20 00    	jmpq   *0x201a84(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <free@plt>:
  400590:	ff 25 82 1a 20 00    	jmpq   *0x201a82(%rip)        # 602018 <free@GLIBC_2.2.5>
  400596:	68 00 00 00 00       	pushq  $0x0
  40059b:	e9 e0 ff ff ff       	jmpq   400580 <.plt>

00000000004005a0 <puts@plt>:
  4005a0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4005a6:	68 01 00 00 00       	pushq  $0x1
  4005ab:	e9 d0 ff ff ff       	jmpq   400580 <.plt>

00000000004005b0 <clock@plt>:
  4005b0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602028 <clock@GLIBC_2.2.5>
  4005b6:	68 02 00 00 00       	pushq  $0x2
  4005bb:	e9 c0 ff ff ff       	jmpq   400580 <.plt>

00000000004005c0 <printf@plt>:
  4005c0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602030 <printf@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	pushq  $0x3
  4005cb:	e9 b0 ff ff ff       	jmpq   400580 <.plt>

00000000004005d0 <__assert_fail@plt>:
  4005d0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602038 <__assert_fail@GLIBC_2.2.5>
  4005d6:	68 04 00 00 00       	pushq  $0x4
  4005db:	e9 a0 ff ff ff       	jmpq   400580 <.plt>

00000000004005e0 <__libc_start_main@plt>:
  4005e0:	ff 25 5a 1a 20 00    	jmpq   *0x201a5a(%rip)        # 602040 <__libc_start_main@GLIBC_2.2.5>
  4005e6:	68 05 00 00 00       	pushq  $0x5
  4005eb:	e9 90 ff ff ff       	jmpq   400580 <.plt>

00000000004005f0 <malloc@plt>:
  4005f0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602048 <malloc@GLIBC_2.2.5>
  4005f6:	68 06 00 00 00       	pushq  $0x6
  4005fb:	e9 80 ff ff ff       	jmpq   400580 <.plt>

0000000000400600 <atoi@plt>:
  400600:	ff 25 4a 1a 20 00    	jmpq   *0x201a4a(%rip)        # 602050 <atoi@GLIBC_2.2.5>
  400606:	68 07 00 00 00       	pushq  $0x7
  40060b:	e9 70 ff ff ff       	jmpq   400580 <.plt>

0000000000400610 <exit@plt>:
  400610:	ff 25 42 1a 20 00    	jmpq   *0x201a42(%rip)        # 602058 <exit@GLIBC_2.2.5>
  400616:	68 08 00 00 00       	pushq  $0x8
  40061b:	e9 60 ff ff ff       	jmpq   400580 <.plt>

Disassembly of section .plt.got:

0000000000400620 <.plt.got>:
  400620:	ff 25 d2 19 20 00    	jmpq   *0x2019d2(%rip)        # 601ff8 <__gmon_start__>
  400626:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400630 <_start>:
  400630:	31 ed                	xor    %ebp,%ebp
  400632:	49 89 d1             	mov    %rdx,%r9
  400635:	5e                   	pop    %rsi
  400636:	48 89 e2             	mov    %rsp,%rdx
  400639:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40063d:	50                   	push   %rax
  40063e:	54                   	push   %rsp
  40063f:	49 c7 c0 c0 0b 40 00 	mov    $0x400bc0,%r8
  400646:	48 c7 c1 50 0b 40 00 	mov    $0x400b50,%rcx
  40064d:	48 c7 c7 68 0a 40 00 	mov    $0x400a68,%rdi
  400654:	e8 87 ff ff ff       	callq  4005e0 <__libc_start_main@plt>
  400659:	f4                   	hlt    
  40065a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400660 <deregister_tm_clones>:
  400660:	55                   	push   %rbp
  400661:	b8 68 20 60 00       	mov    $0x602068,%eax
  400666:	48 3d 68 20 60 00    	cmp    $0x602068,%rax
  40066c:	48 89 e5             	mov    %rsp,%rbp
  40066f:	74 17                	je     400688 <deregister_tm_clones+0x28>
  400671:	b8 00 00 00 00       	mov    $0x0,%eax
  400676:	48 85 c0             	test   %rax,%rax
  400679:	74 0d                	je     400688 <deregister_tm_clones+0x28>
  40067b:	5d                   	pop    %rbp
  40067c:	bf 68 20 60 00       	mov    $0x602068,%edi
  400681:	ff e0                	jmpq   *%rax
  400683:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400688:	5d                   	pop    %rbp
  400689:	c3                   	retq   
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400690 <register_tm_clones>:
  400690:	be 68 20 60 00       	mov    $0x602068,%esi
  400695:	55                   	push   %rbp
  400696:	48 81 ee 68 20 60 00 	sub    $0x602068,%rsi
  40069d:	48 89 e5             	mov    %rsp,%rbp
  4006a0:	48 c1 fe 03          	sar    $0x3,%rsi
  4006a4:	48 89 f0             	mov    %rsi,%rax
  4006a7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4006ab:	48 01 c6             	add    %rax,%rsi
  4006ae:	48 d1 fe             	sar    %rsi
  4006b1:	74 15                	je     4006c8 <register_tm_clones+0x38>
  4006b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4006b8:	48 85 c0             	test   %rax,%rax
  4006bb:	74 0b                	je     4006c8 <register_tm_clones+0x38>
  4006bd:	5d                   	pop    %rbp
  4006be:	bf 68 20 60 00       	mov    $0x602068,%edi
  4006c3:	ff e0                	jmpq   *%rax
  4006c5:	0f 1f 00             	nopl   (%rax)
  4006c8:	5d                   	pop    %rbp
  4006c9:	c3                   	retq   
  4006ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006d0 <__do_global_dtors_aux>:
  4006d0:	80 3d 8d 19 20 00 00 	cmpb   $0x0,0x20198d(%rip)        # 602064 <_edata>
  4006d7:	75 17                	jne    4006f0 <__do_global_dtors_aux+0x20>
  4006d9:	55                   	push   %rbp
  4006da:	48 89 e5             	mov    %rsp,%rbp
  4006dd:	e8 7e ff ff ff       	callq  400660 <deregister_tm_clones>
  4006e2:	c6 05 7b 19 20 00 01 	movb   $0x1,0x20197b(%rip)        # 602064 <_edata>
  4006e9:	5d                   	pop    %rbp
  4006ea:	c3                   	retq   
  4006eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006f0:	f3 c3                	repz retq 
  4006f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006fd:	00 00 00 

0000000000400700 <frame_dummy>:
  400700:	55                   	push   %rbp
  400701:	48 89 e5             	mov    %rsp,%rbp
  400704:	5d                   	pop    %rbp
  400705:	eb 89                	jmp    400690 <register_tm_clones>

0000000000400707 <part1>:
  400707:	55                   	push   %rbp
  400708:	48 89 e5             	mov    %rsp,%rbp
  40070b:	48 83 ec 20          	sub    $0x20,%rsp
  40070f:	bf e0 0b 40 00       	mov    $0x400be0,%edi
  400714:	e8 87 fe ff ff       	callq  4005a0 <puts@plt>
  400719:	c7 45 ec 5f 01 00 00 	movl   $0x15f,-0x14(%rbp)
  400720:	c7 45 e8 9a 01 00 00 	movl   $0x19a,-0x18(%rbp)
  400727:	8b 55 e8             	mov    -0x18(%rbp),%edx
  40072a:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40072d:	89 c6                	mov    %eax,%esi
  40072f:	bf f5 0b 40 00       	mov    $0x400bf5,%edi
  400734:	b8 00 00 00 00       	mov    $0x0,%eax
  400739:	e8 82 fe ff ff       	callq  4005c0 <printf@plt>
  40073e:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
  400742:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400746:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  40074a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40074e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400752:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400756:	48 89 c6             	mov    %rax,%rsi
  400759:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  40075e:	b8 00 00 00 00       	mov    $0x0,%eax
  400763:	e8 58 fe ff ff       	callq  4005c0 <printf@plt>
  400768:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40076b:	89 c6                	mov    %eax,%esi
  40076d:	bf 13 0c 40 00       	mov    $0x400c13,%edi
  400772:	b8 00 00 00 00       	mov    $0x0,%eax
  400777:	e8 44 fe ff ff       	callq  4005c0 <printf@plt>
  40077c:	90                   	nop
  40077d:	c9                   	leaveq 
  40077e:	c3                   	retq   

000000000040077f <fillArray>:
  40077f:	55                   	push   %rbp
  400780:	48 89 e5             	mov    %rsp,%rbp
  400783:	48 83 ec 20          	sub    $0x20,%rsp
  400787:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40078b:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  40078e:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  400791:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400795:	48 89 c6             	mov    %rax,%rsi
  400798:	bf 20 0c 40 00       	mov    $0x400c20,%edi
  40079d:	b8 00 00 00 00       	mov    $0x0,%eax
  4007a2:	e8 19 fe ff ff       	callq  4005c0 <printf@plt>
  4007a7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4007ae:	eb 65                	jmp    400815 <fillArray+0x96>
  4007b0:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4007b3:	89 d0                	mov    %edx,%eax
  4007b5:	01 c0                	add    %eax,%eax
  4007b7:	01 c2                	add    %eax,%edx
  4007b9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007bc:	48 98                	cltq   
  4007be:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
  4007c5:	00 
  4007c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4007ca:	48 01 c8             	add    %rcx,%rax
  4007cd:	83 c2 02             	add    $0x2,%edx
  4007d0:	89 10                	mov    %edx,(%rax)
  4007d2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007d5:	48 98                	cltq   
  4007d7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4007de:	00 
  4007df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4007e3:	48 01 d0             	add    %rdx,%rax
  4007e6:	8b 08                	mov    (%rax),%ecx
  4007e8:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4007eb:	89 d0                	mov    %edx,%eax
  4007ed:	01 c0                	add    %eax,%eax
  4007ef:	01 d0                	add    %edx,%eax
  4007f1:	83 c0 02             	add    $0x2,%eax
  4007f4:	39 c1                	cmp    %eax,%ecx
  4007f6:	74 19                	je     400811 <fillArray+0x92>
  4007f8:	b9 98 0d 40 00       	mov    $0x400d98,%ecx
  4007fd:	ba 5c 00 00 00       	mov    $0x5c,%edx
  400802:	be 4f 0c 40 00       	mov    $0x400c4f,%esi
  400807:	bf 56 0c 40 00       	mov    $0x400c56,%edi
  40080c:	e8 bf fd ff ff       	callq  4005d0 <__assert_fail@plt>
  400811:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400815:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400818:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  40081b:	7c 93                	jl     4007b0 <fillArray+0x31>
  40081d:	bf 6c 0c 40 00       	mov    $0x400c6c,%edi
  400822:	e8 79 fd ff ff       	callq  4005a0 <puts@plt>
  400827:	90                   	nop
  400828:	c9                   	leaveq 
  400829:	c3                   	retq   

000000000040082a <part2>:
  40082a:	55                   	push   %rbp
  40082b:	48 89 e5             	mov    %rsp,%rbp
  40082e:	48 83 ec 40          	sub    $0x40,%rsp
  400832:	bf 72 0c 40 00       	mov    $0x400c72,%edi
  400837:	e8 64 fd ff ff       	callq  4005a0 <puts@plt>
  40083c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400840:	be 0a 00 00 00       	mov    $0xa,%esi
  400845:	48 89 c7             	mov    %rax,%rdi
  400848:	e8 32 ff ff ff       	callq  40077f <fillArray>
  40084d:	c7 45 cc 5f 01 00 00 	movl   $0x15f,-0x34(%rbp)
  400854:	48 8d 45 cc          	lea    -0x34(%rbp),%rax
  400858:	be 01 00 00 00       	mov    $0x1,%esi
  40085d:	48 89 c7             	mov    %rax,%rdi
  400860:	e8 1a ff ff ff       	callq  40077f <fillArray>
  400865:	90                   	nop
  400866:	c9                   	leaveq 
  400867:	c3                   	retq   

0000000000400868 <part3>:
  400868:	55                   	push   %rbp
  400869:	48 89 e5             	mov    %rsp,%rbp
  40086c:	48 83 ec 10          	sub    $0x10,%rsp
  400870:	bf 87 0c 40 00       	mov    $0x400c87,%edi
  400875:	e8 26 fd ff ff       	callq  4005a0 <puts@plt>
  40087a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  400881:	8b 45 f0             	mov    -0x10(%rbp),%eax
  400884:	85 c0                	test   %eax,%eax
  400886:	74 19                	je     4008a1 <part3+0x39>
  400888:	b9 a2 0d 40 00       	mov    $0x400da2,%ecx
  40088d:	ba a5 00 00 00       	mov    $0xa5,%edx
  400892:	be 4f 0c 40 00       	mov    $0x400c4f,%esi
  400897:	bf 9c 0c 40 00       	mov    $0x400c9c,%edi
  40089c:	e8 2f fd ff ff       	callq  4005d0 <__assert_fail@plt>
  4008a1:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4008a5:	be 04 00 00 00       	mov    $0x4,%esi
  4008aa:	48 89 c7             	mov    %rax,%rdi
  4008ad:	e8 cd fe ff ff       	callq  40077f <fillArray>
  4008b2:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4008b5:	83 f8 02             	cmp    $0x2,%eax
  4008b8:	74 19                	je     4008d3 <part3+0x6b>
  4008ba:	b9 a2 0d 40 00       	mov    $0x400da2,%ecx
  4008bf:	ba b5 00 00 00       	mov    $0xb5,%edx
  4008c4:	be 4f 0c 40 00       	mov    $0x400c4f,%esi
  4008c9:	bf ac 0c 40 00       	mov    $0x400cac,%edi
  4008ce:	e8 fd fc ff ff       	callq  4005d0 <__assert_fail@plt>
  4008d3:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4008d6:	83 f8 05             	cmp    $0x5,%eax
  4008d9:	74 19                	je     4008f4 <part3+0x8c>
  4008db:	b9 a2 0d 40 00       	mov    $0x400da2,%ecx
  4008e0:	ba b6 00 00 00       	mov    $0xb6,%edx
  4008e5:	be 4f 0c 40 00       	mov    $0x400c4f,%esi
  4008ea:	bf bc 0c 40 00       	mov    $0x400cbc,%edi
  4008ef:	e8 dc fc ff ff       	callq  4005d0 <__assert_fail@plt>
  4008f4:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4008f7:	83 f8 08             	cmp    $0x8,%eax
  4008fa:	74 19                	je     400915 <part3+0xad>
  4008fc:	b9 a2 0d 40 00       	mov    $0x400da2,%ecx
  400901:	ba b7 00 00 00       	mov    $0xb7,%edx
  400906:	be 4f 0c 40 00       	mov    $0x400c4f,%esi
  40090b:	bf cd 0c 40 00       	mov    $0x400ccd,%edi
  400910:	e8 bb fc ff ff       	callq  4005d0 <__assert_fail@plt>
  400915:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400918:	83 f8 0b             	cmp    $0xb,%eax
  40091b:	74 19                	je     400936 <part3+0xce>
  40091d:	b9 a2 0d 40 00       	mov    $0x400da2,%ecx
  400922:	ba b8 00 00 00       	mov    $0xb8,%edx
  400927:	be 4f 0c 40 00       	mov    $0x400c4f,%esi
  40092c:	bf e2 0c 40 00       	mov    $0x400ce2,%edi
  400931:	e8 9a fc ff ff       	callq  4005d0 <__assert_fail@plt>
  400936:	90                   	nop
  400937:	c9                   	leaveq 
  400938:	c3                   	retq   

0000000000400939 <bigArrayIndex>:
  400939:	55                   	push   %rbp
  40093a:	48 89 e5             	mov    %rsp,%rbp
  40093d:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400940:	89 75 f8             	mov    %esi,-0x8(%rbp)
  400943:	89 55 f4             	mov    %edx,-0xc(%rbp)
  400946:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400949:	69 d0 90 d0 03 00    	imul   $0x3d090,%eax,%edx
  40094f:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400952:	69 c0 f4 01 00 00    	imul   $0x1f4,%eax,%eax
  400958:	01 c2                	add    %eax,%edx
  40095a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40095d:	01 d0                	add    %edx,%eax
  40095f:	5d                   	pop    %rbp
  400960:	c3                   	retq   

0000000000400961 <part4>:
  400961:	55                   	push   %rbp
  400962:	48 89 e5             	mov    %rsp,%rbp
  400965:	53                   	push   %rbx
  400966:	48 83 ec 28          	sub    $0x28,%rsp
  40096a:	bf f6 0c 40 00       	mov    $0x400cf6,%edi
  40096f:	e8 2c fc ff ff       	callq  4005a0 <puts@plt>
  400974:	bf 00 65 cd 1d       	mov    $0x1dcd6500,%edi
  400979:	e8 72 fc ff ff       	callq  4005f0 <malloc@plt>
  40097e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400982:	e8 29 fc ff ff       	callq  4005b0 <clock@plt>
  400987:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40098b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  400992:	eb 63                	jmp    4009f7 <part4+0x96>
  400994:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  40099b:	eb 4d                	jmp    4009ea <part4+0x89>
  40099d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4009a4:	eb 37                	jmp    4009dd <part4+0x7c>
  4009a6:	8b 55 ec             	mov    -0x14(%rbp),%edx
  4009a9:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4009ac:	8d 1c 02             	lea    (%rdx,%rax,1),%ebx
  4009af:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4009b2:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  4009b5:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4009b8:	89 ce                	mov    %ecx,%esi
  4009ba:	89 c7                	mov    %eax,%edi
  4009bc:	e8 78 ff ff ff       	callq  400939 <bigArrayIndex>
  4009c1:	48 98                	cltq   
  4009c3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4009ca:	00 
  4009cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009cf:	48 01 d0             	add    %rdx,%rax
  4009d2:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4009d5:	01 da                	add    %ebx,%edx
  4009d7:	89 10                	mov    %edx,(%rax)
  4009d9:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
  4009dd:	81 7d e4 f3 01 00 00 	cmpl   $0x1f3,-0x1c(%rbp)
  4009e4:	7e c0                	jle    4009a6 <part4+0x45>
  4009e6:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  4009ea:	81 7d e8 f3 01 00 00 	cmpl   $0x1f3,-0x18(%rbp)
  4009f1:	7e aa                	jle    40099d <part4+0x3c>
  4009f3:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  4009f7:	81 7d ec f3 01 00 00 	cmpl   $0x1f3,-0x14(%rbp)
  4009fe:	7e 94                	jle    400994 <part4+0x33>
  400a00:	e8 ab fb ff ff       	callq  4005b0 <clock@plt>
  400a05:	89 c2                	mov    %eax,%edx
  400a07:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400a0b:	29 c2                	sub    %eax,%edx
  400a0d:	89 d0                	mov    %edx,%eax
  400a0f:	89 c6                	mov    %eax,%esi
  400a11:	bf 0b 0d 40 00       	mov    $0x400d0b,%edi
  400a16:	b8 00 00 00 00       	mov    $0x0,%eax
  400a1b:	e8 a0 fb ff ff       	callq  4005c0 <printf@plt>
  400a20:	90                   	nop
  400a21:	48 83 c4 28          	add    $0x28,%rsp
  400a25:	5b                   	pop    %rbx
  400a26:	5d                   	pop    %rbp
  400a27:	c3                   	retq   

0000000000400a28 <part5>:
  400a28:	55                   	push   %rbp
  400a29:	48 89 e5             	mov    %rsp,%rbp
  400a2c:	48 83 ec 10          	sub    $0x10,%rsp
  400a30:	bf 25 0d 40 00       	mov    $0x400d25,%edi
  400a35:	e8 66 fb ff ff       	callq  4005a0 <puts@plt>
  400a3a:	bf 50 00 00 00       	mov    $0x50,%edi
  400a3f:	e8 ac fb ff ff       	callq  4005f0 <malloc@plt>
  400a44:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a4c:	be 14 00 00 00       	mov    $0x14,%esi
  400a51:	48 89 c7             	mov    %rax,%rdi
  400a54:	e8 26 fd ff ff       	callq  40077f <fillArray>
  400a59:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a5d:	48 89 c7             	mov    %rax,%rdi
  400a60:	e8 2b fb ff ff       	callq  400590 <free@plt>
  400a65:	90                   	nop
  400a66:	c9                   	leaveq 
  400a67:	c3                   	retq   

0000000000400a68 <main>:
  400a68:	55                   	push   %rbp
  400a69:	48 89 e5             	mov    %rsp,%rbp
  400a6c:	48 83 ec 10          	sub    $0x10,%rsp
  400a70:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400a73:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400a77:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  400a7b:	75 17                	jne    400a94 <main+0x2c>
  400a7d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a81:	48 83 c0 08          	add    $0x8,%rax
  400a85:	48 8b 00             	mov    (%rax),%rax
  400a88:	48 89 c7             	mov    %rax,%rdi
  400a8b:	e8 70 fb ff ff       	callq  400600 <atoi@plt>
  400a90:	85 c0                	test   %eax,%eax
  400a92:	75 23                	jne    400ab7 <main+0x4f>
  400a94:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a98:	48 8b 00             	mov    (%rax),%rax
  400a9b:	48 89 c6             	mov    %rax,%rsi
  400a9e:	bf 3a 0d 40 00       	mov    $0x400d3a,%edi
  400aa3:	b8 00 00 00 00       	mov    $0x0,%eax
  400aa8:	e8 13 fb ff ff       	callq  4005c0 <printf@plt>
  400aad:	bf 00 00 00 00       	mov    $0x0,%edi
  400ab2:	e8 59 fb ff ff       	callq  400610 <exit@plt>
  400ab7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400abb:	48 83 c0 08          	add    $0x8,%rax
  400abf:	48 8b 00             	mov    (%rax),%rax
  400ac2:	48 89 c7             	mov    %rax,%rdi
  400ac5:	e8 36 fb ff ff       	callq  400600 <atoi@plt>
  400aca:	83 f8 05             	cmp    $0x5,%eax
  400acd:	77 48                	ja     400b17 <main+0xaf>
  400acf:	89 c0                	mov    %eax,%eax
  400ad1:	48 8b 04 c5 68 0d 40 	mov    0x400d68(,%rax,8),%rax
  400ad8:	00 
  400ad9:	ff e0                	jmpq   *%rax
  400adb:	b8 00 00 00 00       	mov    $0x0,%eax
  400ae0:	e8 22 fc ff ff       	callq  400707 <part1>
  400ae5:	eb 57                	jmp    400b3e <main+0xd6>
  400ae7:	b8 00 00 00 00       	mov    $0x0,%eax
  400aec:	e8 39 fd ff ff       	callq  40082a <part2>
  400af1:	eb 4b                	jmp    400b3e <main+0xd6>
  400af3:	b8 00 00 00 00       	mov    $0x0,%eax
  400af8:	e8 6b fd ff ff       	callq  400868 <part3>
  400afd:	eb 3f                	jmp    400b3e <main+0xd6>
  400aff:	b8 00 00 00 00       	mov    $0x0,%eax
  400b04:	e8 58 fe ff ff       	callq  400961 <part4>
  400b09:	eb 33                	jmp    400b3e <main+0xd6>
  400b0b:	b8 00 00 00 00       	mov    $0x0,%eax
  400b10:	e8 13 ff ff ff       	callq  400a28 <part5>
  400b15:	eb 27                	jmp    400b3e <main+0xd6>
  400b17:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400b1b:	48 83 c0 08          	add    $0x8,%rax
  400b1f:	48 8b 00             	mov    (%rax),%rax
  400b22:	48 89 c6             	mov    %rax,%rsi
  400b25:	bf 4b 0d 40 00       	mov    $0x400d4b,%edi
  400b2a:	b8 00 00 00 00       	mov    $0x0,%eax
  400b2f:	e8 8c fa ff ff       	callq  4005c0 <printf@plt>
  400b34:	bf 00 00 00 00       	mov    $0x0,%edi
  400b39:	e8 d2 fa ff ff       	callq  400610 <exit@plt>
  400b3e:	b8 00 00 00 00       	mov    $0x0,%eax
  400b43:	c9                   	leaveq 
  400b44:	c3                   	retq   
  400b45:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b4c:	00 00 00 
  400b4f:	90                   	nop

0000000000400b50 <__libc_csu_init>:
  400b50:	41 57                	push   %r15
  400b52:	41 89 ff             	mov    %edi,%r15d
  400b55:	41 56                	push   %r14
  400b57:	49 89 f6             	mov    %rsi,%r14
  400b5a:	41 55                	push   %r13
  400b5c:	49 89 d5             	mov    %rdx,%r13
  400b5f:	41 54                	push   %r12
  400b61:	4c 8d 25 b0 12 20 00 	lea    0x2012b0(%rip),%r12        # 601e18 <__frame_dummy_init_array_entry>
  400b68:	55                   	push   %rbp
  400b69:	48 8d 2d b0 12 20 00 	lea    0x2012b0(%rip),%rbp        # 601e20 <__init_array_end>
  400b70:	53                   	push   %rbx
  400b71:	4c 29 e5             	sub    %r12,%rbp
  400b74:	31 db                	xor    %ebx,%ebx
  400b76:	48 c1 fd 03          	sar    $0x3,%rbp
  400b7a:	48 83 ec 08          	sub    $0x8,%rsp
  400b7e:	e8 d5 f9 ff ff       	callq  400558 <_init>
  400b83:	48 85 ed             	test   %rbp,%rbp
  400b86:	74 1e                	je     400ba6 <__libc_csu_init+0x56>
  400b88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b8f:	00 
  400b90:	4c 89 ea             	mov    %r13,%rdx
  400b93:	4c 89 f6             	mov    %r14,%rsi
  400b96:	44 89 ff             	mov    %r15d,%edi
  400b99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b9d:	48 83 c3 01          	add    $0x1,%rbx
  400ba1:	48 39 eb             	cmp    %rbp,%rbx
  400ba4:	75 ea                	jne    400b90 <__libc_csu_init+0x40>
  400ba6:	48 83 c4 08          	add    $0x8,%rsp
  400baa:	5b                   	pop    %rbx
  400bab:	5d                   	pop    %rbp
  400bac:	41 5c                	pop    %r12
  400bae:	41 5d                	pop    %r13
  400bb0:	41 5e                	pop    %r14
  400bb2:	41 5f                	pop    %r15
  400bb4:	c3                   	retq   
  400bb5:	90                   	nop
  400bb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bbd:	00 00 00 

0000000000400bc0 <__libc_csu_fini>:
  400bc0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400bc4 <_fini>:
  400bc4:	48 83 ec 08          	sub    $0x8,%rsp
  400bc8:	48 83 c4 08          	add    $0x8,%rsp
  400bcc:	c3                   	retq   
