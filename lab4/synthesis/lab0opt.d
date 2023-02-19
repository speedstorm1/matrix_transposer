
lab0opt:     file format elf64-x86-64


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

00000000004005f0 <strtol@plt>:
  4005f0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602048 <strtol@GLIBC_2.2.5>
  4005f6:	68 06 00 00 00       	pushq  $0x6
  4005fb:	e9 80 ff ff ff       	jmpq   400580 <.plt>

0000000000400600 <malloc@plt>:
  400600:	ff 25 4a 1a 20 00    	jmpq   *0x201a4a(%rip)        # 602050 <malloc@GLIBC_2.2.5>
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

0000000000400630 <main>:
  400630:	83 ff 02             	cmp    $0x2,%edi
  400633:	53                   	push   %rbx
  400634:	48 89 f3             	mov    %rsi,%rbx
  400637:	74 16                	je     40064f <main+0x1f>
  400639:	48 8b 33             	mov    (%rbx),%rsi
  40063c:	bf d4 0b 40 00       	mov    $0x400bd4,%edi
  400641:	31 c0                	xor    %eax,%eax
  400643:	e8 78 ff ff ff       	callq  4005c0 <printf@plt>
  400648:	31 ff                	xor    %edi,%edi
  40064a:	e8 c1 ff ff ff       	callq  400610 <exit@plt>
  40064f:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400653:	ba 0a 00 00 00       	mov    $0xa,%edx
  400658:	31 f6                	xor    %esi,%esi
  40065a:	e8 91 ff ff ff       	callq  4005f0 <strtol@plt>
  40065f:	85 c0                	test   %eax,%eax
  400661:	74 d6                	je     400639 <main+0x9>
  400663:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  400667:	31 f6                	xor    %esi,%esi
  400669:	ba 0a 00 00 00       	mov    $0xa,%edx
  40066e:	e8 7d ff ff ff       	callq  4005f0 <strtol@plt>
  400673:	83 e8 01             	sub    $0x1,%eax
  400676:	83 f8 04             	cmp    $0x4,%eax
  400679:	77 36                	ja     4006b1 <main+0x81>
  40067b:	ff 24 c5 30 0c 40 00 	jmpq   *0x400c30(,%rax,8)
  400682:	31 c0                	xor    %eax,%eax
  400684:	e8 e7 02 00 00       	callq  400970 <part4>
  400689:	31 c0                	xor    %eax,%eax
  40068b:	5b                   	pop    %rbx
  40068c:	c3                   	retq   
  40068d:	31 c0                	xor    %eax,%eax
  40068f:	e8 0c 02 00 00       	callq  4008a0 <part3>
  400694:	eb f3                	jmp    400689 <main+0x59>
  400696:	31 c0                	xor    %eax,%eax
  400698:	e8 c3 01 00 00       	callq  400860 <part2>
  40069d:	eb ea                	jmp    400689 <main+0x59>
  40069f:	31 c0                	xor    %eax,%eax
  4006a1:	e8 0a 01 00 00       	callq  4007b0 <part1>
  4006a6:	eb e1                	jmp    400689 <main+0x59>
  4006a8:	31 c0                	xor    %eax,%eax
  4006aa:	e8 61 03 00 00       	callq  400a10 <part5>
  4006af:	eb d8                	jmp    400689 <main+0x59>
  4006b1:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4006b5:	bf e5 0b 40 00       	mov    $0x400be5,%edi
  4006ba:	31 c0                	xor    %eax,%eax
  4006bc:	e8 ff fe ff ff       	callq  4005c0 <printf@plt>
  4006c1:	31 ff                	xor    %edi,%edi
  4006c3:	e8 48 ff ff ff       	callq  400610 <exit@plt>

00000000004006c8 <_start>:
  4006c8:	31 ed                	xor    %ebp,%ebp
  4006ca:	49 89 d1             	mov    %rdx,%r9
  4006cd:	5e                   	pop    %rsi
  4006ce:	48 89 e2             	mov    %rsp,%rdx
  4006d1:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4006d5:	50                   	push   %rax
  4006d6:	54                   	push   %rsp
  4006d7:	49 c7 c0 b0 0a 40 00 	mov    $0x400ab0,%r8
  4006de:	48 c7 c1 40 0a 40 00 	mov    $0x400a40,%rcx
  4006e5:	48 c7 c7 30 06 40 00 	mov    $0x400630,%rdi
  4006ec:	e8 ef fe ff ff       	callq  4005e0 <__libc_start_main@plt>
  4006f1:	f4                   	hlt    
  4006f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006f9:	00 00 00 
  4006fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400700 <deregister_tm_clones>:
  400700:	55                   	push   %rbp
  400701:	b8 68 20 60 00       	mov    $0x602068,%eax
  400706:	48 3d 68 20 60 00    	cmp    $0x602068,%rax
  40070c:	48 89 e5             	mov    %rsp,%rbp
  40070f:	74 17                	je     400728 <deregister_tm_clones+0x28>
  400711:	b8 00 00 00 00       	mov    $0x0,%eax
  400716:	48 85 c0             	test   %rax,%rax
  400719:	74 0d                	je     400728 <deregister_tm_clones+0x28>
  40071b:	5d                   	pop    %rbp
  40071c:	bf 68 20 60 00       	mov    $0x602068,%edi
  400721:	ff e0                	jmpq   *%rax
  400723:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400728:	5d                   	pop    %rbp
  400729:	c3                   	retq   
  40072a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400730 <register_tm_clones>:
  400730:	be 68 20 60 00       	mov    $0x602068,%esi
  400735:	55                   	push   %rbp
  400736:	48 81 ee 68 20 60 00 	sub    $0x602068,%rsi
  40073d:	48 89 e5             	mov    %rsp,%rbp
  400740:	48 c1 fe 03          	sar    $0x3,%rsi
  400744:	48 89 f0             	mov    %rsi,%rax
  400747:	48 c1 e8 3f          	shr    $0x3f,%rax
  40074b:	48 01 c6             	add    %rax,%rsi
  40074e:	48 d1 fe             	sar    %rsi
  400751:	74 15                	je     400768 <register_tm_clones+0x38>
  400753:	b8 00 00 00 00       	mov    $0x0,%eax
  400758:	48 85 c0             	test   %rax,%rax
  40075b:	74 0b                	je     400768 <register_tm_clones+0x38>
  40075d:	5d                   	pop    %rbp
  40075e:	bf 68 20 60 00       	mov    $0x602068,%edi
  400763:	ff e0                	jmpq   *%rax
  400765:	0f 1f 00             	nopl   (%rax)
  400768:	5d                   	pop    %rbp
  400769:	c3                   	retq   
  40076a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400770 <__do_global_dtors_aux>:
  400770:	80 3d ed 18 20 00 00 	cmpb   $0x0,0x2018ed(%rip)        # 602064 <_edata>
  400777:	75 17                	jne    400790 <__do_global_dtors_aux+0x20>
  400779:	55                   	push   %rbp
  40077a:	48 89 e5             	mov    %rsp,%rbp
  40077d:	e8 7e ff ff ff       	callq  400700 <deregister_tm_clones>
  400782:	c6 05 db 18 20 00 01 	movb   $0x1,0x2018db(%rip)        # 602064 <_edata>
  400789:	5d                   	pop    %rbp
  40078a:	c3                   	retq   
  40078b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400790:	f3 c3                	repz retq 
  400792:	0f 1f 40 00          	nopl   0x0(%rax)
  400796:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40079d:	00 00 00 

00000000004007a0 <frame_dummy>:
  4007a0:	55                   	push   %rbp
  4007a1:	48 89 e5             	mov    %rsp,%rbp
  4007a4:	5d                   	pop    %rbp
  4007a5:	eb 89                	jmp    400730 <register_tm_clones>
  4007a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ae:	00 00 

00000000004007b0 <part1>:
  4007b0:	48 83 ec 18          	sub    $0x18,%rsp
  4007b4:	bf d0 0a 40 00       	mov    $0x400ad0,%edi
  4007b9:	e8 e2 fd ff ff       	callq  4005a0 <puts@plt>
  4007be:	ba 9a 01 00 00       	mov    $0x19a,%edx
  4007c3:	be 5f 01 00 00       	mov    $0x15f,%esi
  4007c8:	bf e5 0a 40 00       	mov    $0x400ae5,%edi
  4007cd:	31 c0                	xor    %eax,%eax
  4007cf:	c7 44 24 08 5f 01 00 	movl   $0x15f,0x8(%rsp)
  4007d6:	00 
  4007d7:	c7 44 24 0c 9a 01 00 	movl   $0x19a,0xc(%rsp)
  4007de:	00 
  4007df:	e8 dc fd ff ff       	callq  4005c0 <printf@plt>
  4007e4:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  4007e9:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  4007ee:	bf f4 0a 40 00       	mov    $0x400af4,%edi
  4007f3:	31 c0                	xor    %eax,%eax
  4007f5:	e8 c6 fd ff ff       	callq  4005c0 <printf@plt>
  4007fa:	8b 74 24 08          	mov    0x8(%rsp),%esi
  4007fe:	bf 03 0b 40 00       	mov    $0x400b03,%edi
  400803:	31 c0                	xor    %eax,%eax
  400805:	e8 b6 fd ff ff       	callq  4005c0 <printf@plt>
  40080a:	48 83 c4 18          	add    $0x18,%rsp
  40080e:	c3                   	retq   
  40080f:	90                   	nop

0000000000400810 <fillArray>:
  400810:	55                   	push   %rbp
  400811:	53                   	push   %rbx
  400812:	89 f5                	mov    %esi,%ebp
  400814:	89 f2                	mov    %esi,%edx
  400816:	31 c0                	xor    %eax,%eax
  400818:	48 89 fe             	mov    %rdi,%rsi
  40081b:	48 83 ec 08          	sub    $0x8,%rsp
  40081f:	48 89 fb             	mov    %rdi,%rbx
  400822:	bf 00 0c 40 00       	mov    $0x400c00,%edi
  400827:	e8 94 fd ff ff       	callq  4005c0 <printf@plt>
  40082c:	85 ed                	test   %ebp,%ebp
  40082e:	7e 1d                	jle    40084d <fillArray+0x3d>
  400830:	8d 54 6d 02          	lea    0x2(%rbp,%rbp,2),%edx
  400834:	48 89 df             	mov    %rbx,%rdi
  400837:	b8 02 00 00 00       	mov    $0x2,%eax
  40083c:	0f 1f 40 00          	nopl   0x0(%rax)
  400840:	89 07                	mov    %eax,(%rdi)
  400842:	83 c0 03             	add    $0x3,%eax
  400845:	48 83 c7 04          	add    $0x4,%rdi
  400849:	39 d0                	cmp    %edx,%eax
  40084b:	75 f3                	jne    400840 <fillArray+0x30>
  40084d:	48 83 c4 08          	add    $0x8,%rsp
  400851:	bf 0f 0b 40 00       	mov    $0x400b0f,%edi
  400856:	5b                   	pop    %rbx
  400857:	5d                   	pop    %rbp
  400858:	e9 43 fd ff ff       	jmpq   4005a0 <puts@plt>
  40085d:	0f 1f 00             	nopl   (%rax)

0000000000400860 <part2>:
  400860:	48 83 ec 48          	sub    $0x48,%rsp
  400864:	bf 15 0b 40 00       	mov    $0x400b15,%edi
  400869:	e8 32 fd ff ff       	callq  4005a0 <puts@plt>
  40086e:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  400873:	be 0a 00 00 00       	mov    $0xa,%esi
  400878:	e8 93 ff ff ff       	callq  400810 <fillArray>
  40087d:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  400882:	be 01 00 00 00       	mov    $0x1,%esi
  400887:	c7 44 24 0c 5f 01 00 	movl   $0x15f,0xc(%rsp)
  40088e:	00 
  40088f:	e8 7c ff ff ff       	callq  400810 <fillArray>
  400894:	48 83 c4 48          	add    $0x48,%rsp
  400898:	c3                   	retq   
  400899:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008a0 <part3>:
  4008a0:	48 83 ec 18          	sub    $0x18,%rsp
  4008a4:	bf 2a 0b 40 00       	mov    $0x400b2a,%edi
  4008a9:	e8 f2 fc ff ff       	callq  4005a0 <puts@plt>
  4008ae:	be 04 00 00 00       	mov    $0x4,%esi
  4008b3:	48 89 e7             	mov    %rsp,%rdi
  4008b6:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  4008bd:	e8 4e ff ff ff       	callq  400810 <fillArray>
  4008c2:	83 3c 24 02          	cmpl   $0x2,(%rsp)
  4008c6:	75 1a                	jne    4008e2 <part3+0x42>
  4008c8:	83 7c 24 04 05       	cmpl   $0x5,0x4(%rsp)
  4008cd:	75 5e                	jne    40092d <part3+0x8d>
  4008cf:	83 7c 24 08 08       	cmpl   $0x8,0x8(%rsp)
  4008d4:	75 3e                	jne    400914 <part3+0x74>
  4008d6:	83 7c 24 0c 0b       	cmpl   $0xb,0xc(%rsp)
  4008db:	75 1e                	jne    4008fb <part3+0x5b>
  4008dd:	48 83 c4 18          	add    $0x18,%rsp
  4008e1:	c3                   	retq   
  4008e2:	b9 58 0c 40 00       	mov    $0x400c58,%ecx
  4008e7:	ba b5 00 00 00       	mov    $0xb5,%edx
  4008ec:	be 3f 0b 40 00       	mov    $0x400b3f,%esi
  4008f1:	bf 46 0b 40 00       	mov    $0x400b46,%edi
  4008f6:	e8 d5 fc ff ff       	callq  4005d0 <__assert_fail@plt>
  4008fb:	b9 58 0c 40 00       	mov    $0x400c58,%ecx
  400900:	ba b8 00 00 00       	mov    $0xb8,%edx
  400905:	be 3f 0b 40 00       	mov    $0x400b3f,%esi
  40090a:	bf 7c 0b 40 00       	mov    $0x400b7c,%edi
  40090f:	e8 bc fc ff ff       	callq  4005d0 <__assert_fail@plt>
  400914:	b9 58 0c 40 00       	mov    $0x400c58,%ecx
  400919:	ba b7 00 00 00       	mov    $0xb7,%edx
  40091e:	be 3f 0b 40 00       	mov    $0x400b3f,%esi
  400923:	bf 67 0b 40 00       	mov    $0x400b67,%edi
  400928:	e8 a3 fc ff ff       	callq  4005d0 <__assert_fail@plt>
  40092d:	b9 58 0c 40 00       	mov    $0x400c58,%ecx
  400932:	ba b6 00 00 00       	mov    $0xb6,%edx
  400937:	be 3f 0b 40 00       	mov    $0x400b3f,%esi
  40093c:	bf 56 0b 40 00       	mov    $0x400b56,%edi
  400941:	e8 8a fc ff ff       	callq  4005d0 <__assert_fail@plt>
  400946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40094d:	00 00 00 

0000000000400950 <bigArrayIndex>:
  400950:	69 ff 90 d0 03 00    	imul   $0x3d090,%edi,%edi
  400956:	69 c6 f4 01 00 00    	imul   $0x1f4,%esi,%eax
  40095c:	01 f8                	add    %edi,%eax
  40095e:	01 d0                	add    %edx,%eax
  400960:	c3                   	retq   
  400961:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40096d:	00 00 00 

0000000000400970 <part4>:
  400970:	55                   	push   %rbp
  400971:	53                   	push   %rbx
  400972:	bf 90 0b 40 00       	mov    $0x400b90,%edi
  400977:	48 83 ec 08          	sub    $0x8,%rsp
  40097b:	e8 20 fc ff ff       	callq  4005a0 <puts@plt>
  400980:	bf 00 65 cd 1d       	mov    $0x1dcd6500,%edi
  400985:	e8 76 fc ff ff       	callq  400600 <malloc@plt>
  40098a:	48 89 c5             	mov    %rax,%rbp
  40098d:	e8 1e fc ff ff       	callq  4005b0 <clock@plt>
  400992:	48 89 c3             	mov    %rax,%rbx
  400995:	48 8d 85 40 42 0f 00 	lea    0xf4240(%rbp),%rax
  40099c:	45 31 c0             	xor    %r8d,%r8d
  40099f:	48 8d b0 c0 bd f0 ff 	lea    -0xf4240(%rax),%rsi
  4009a6:	44 89 c7             	mov    %r8d,%edi
  4009a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4009b0:	31 d2                	xor    %edx,%edx
  4009b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4009b8:	8d 0c 17             	lea    (%rdi,%rdx,1),%ecx
  4009bb:	89 0c 96             	mov    %ecx,(%rsi,%rdx,4)
  4009be:	48 83 c2 01          	add    $0x1,%rdx
  4009c2:	48 81 fa f4 01 00 00 	cmp    $0x1f4,%rdx
  4009c9:	75 ed                	jne    4009b8 <part4+0x48>
  4009cb:	48 81 c6 d0 07 00 00 	add    $0x7d0,%rsi
  4009d2:	83 c7 01             	add    $0x1,%edi
  4009d5:	48 39 c6             	cmp    %rax,%rsi
  4009d8:	75 d6                	jne    4009b0 <part4+0x40>
  4009da:	41 83 c0 01          	add    $0x1,%r8d
  4009de:	48 8d 86 40 42 0f 00 	lea    0xf4240(%rsi),%rax
  4009e5:	41 81 f8 f4 01 00 00 	cmp    $0x1f4,%r8d
  4009ec:	75 b1                	jne    40099f <part4+0x2f>
  4009ee:	e8 bd fb ff ff       	callq  4005b0 <clock@plt>
  4009f3:	48 83 c4 08          	add    $0x8,%rsp
  4009f7:	89 c6                	mov    %eax,%esi
  4009f9:	bf a5 0b 40 00       	mov    $0x400ba5,%edi
  4009fe:	29 de                	sub    %ebx,%esi
  400a00:	31 c0                	xor    %eax,%eax
  400a02:	5b                   	pop    %rbx
  400a03:	5d                   	pop    %rbp
  400a04:	e9 b7 fb ff ff       	jmpq   4005c0 <printf@plt>
  400a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400a10 <part5>:
  400a10:	53                   	push   %rbx
  400a11:	bf bf 0b 40 00       	mov    $0x400bbf,%edi
  400a16:	e8 85 fb ff ff       	callq  4005a0 <puts@plt>
  400a1b:	bf 50 00 00 00       	mov    $0x50,%edi
  400a20:	e8 db fb ff ff       	callq  400600 <malloc@plt>
  400a25:	be 14 00 00 00       	mov    $0x14,%esi
  400a2a:	48 89 c3             	mov    %rax,%rbx
  400a2d:	48 89 c7             	mov    %rax,%rdi
  400a30:	e8 db fd ff ff       	callq  400810 <fillArray>
  400a35:	48 89 df             	mov    %rbx,%rdi
  400a38:	5b                   	pop    %rbx
  400a39:	e9 52 fb ff ff       	jmpq   400590 <free@plt>
  400a3e:	66 90                	xchg   %ax,%ax

0000000000400a40 <__libc_csu_init>:
  400a40:	41 57                	push   %r15
  400a42:	41 89 ff             	mov    %edi,%r15d
  400a45:	41 56                	push   %r14
  400a47:	49 89 f6             	mov    %rsi,%r14
  400a4a:	41 55                	push   %r13
  400a4c:	49 89 d5             	mov    %rdx,%r13
  400a4f:	41 54                	push   %r12
  400a51:	4c 8d 25 c0 13 20 00 	lea    0x2013c0(%rip),%r12        # 601e18 <__frame_dummy_init_array_entry>
  400a58:	55                   	push   %rbp
  400a59:	48 8d 2d c0 13 20 00 	lea    0x2013c0(%rip),%rbp        # 601e20 <__init_array_end>
  400a60:	53                   	push   %rbx
  400a61:	4c 29 e5             	sub    %r12,%rbp
  400a64:	31 db                	xor    %ebx,%ebx
  400a66:	48 c1 fd 03          	sar    $0x3,%rbp
  400a6a:	48 83 ec 08          	sub    $0x8,%rsp
  400a6e:	e8 e5 fa ff ff       	callq  400558 <_init>
  400a73:	48 85 ed             	test   %rbp,%rbp
  400a76:	74 1e                	je     400a96 <__libc_csu_init+0x56>
  400a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a7f:	00 
  400a80:	4c 89 ea             	mov    %r13,%rdx
  400a83:	4c 89 f6             	mov    %r14,%rsi
  400a86:	44 89 ff             	mov    %r15d,%edi
  400a89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a8d:	48 83 c3 01          	add    $0x1,%rbx
  400a91:	48 39 eb             	cmp    %rbp,%rbx
  400a94:	75 ea                	jne    400a80 <__libc_csu_init+0x40>
  400a96:	48 83 c4 08          	add    $0x8,%rsp
  400a9a:	5b                   	pop    %rbx
  400a9b:	5d                   	pop    %rbp
  400a9c:	41 5c                	pop    %r12
  400a9e:	41 5d                	pop    %r13
  400aa0:	41 5e                	pop    %r14
  400aa2:	41 5f                	pop    %r15
  400aa4:	c3                   	retq   
  400aa5:	90                   	nop
  400aa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400aad:	00 00 00 

0000000000400ab0 <__libc_csu_fini>:
  400ab0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400ab4 <_fini>:
  400ab4:	48 83 ec 08          	sub    $0x8,%rsp
  400ab8:	48 83 c4 08          	add    $0x8,%rsp
  400abc:	c3                   	retq   
