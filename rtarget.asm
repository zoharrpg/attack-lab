
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 29 4f 00 00 	mov    0x4f29(%rip),%rax        # 406f38 <__gmon_start__@Base>
  40200f:	48 85 c0             	test   %rax,%rax
  402012:	74 02                	je     402016 <_init+0x16>
  402014:	ff d0                	call   *%rax
  402016:	48 83 c4 08          	add    $0x8,%rsp
  40201a:	c3                   	ret    

Disassembly of section .text:

0000000000402020 <_start>:
  402020:	f3 0f 1e fa          	endbr64 
  402024:	31 ed                	xor    %ebp,%ebp
  402026:	49 89 d1             	mov    %rdx,%r9
  402029:	5e                   	pop    %rsi
  40202a:	48 89 e2             	mov    %rsp,%rdx
  40202d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402031:	50                   	push   %rax
  402032:	54                   	push   %rsp
  402033:	45 31 c0             	xor    %r8d,%r8d
  402036:	31 c9                	xor    %ecx,%ecx
  402038:	48 c7 c7 4d 21 40 00 	mov    $0x40214d,%rdi
  40203f:	ff 15 7b 4e 00 00    	call   *0x4e7b(%rip)        # 406ec0 <__libc_start_main@GLIBC_2.34>
  402045:	f4                   	hlt    
  402046:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40204d:	00 00 00 

0000000000402050 <_dl_relocate_static_pie>:
  402050:	f3 0f 1e fa          	endbr64 
  402054:	c3                   	ret    
  402055:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40205c:	00 00 00 
  40205f:	90                   	nop

0000000000402060 <deregister_tm_clones>:
  402060:	b8 18 70 40 00       	mov    $0x407018,%eax
  402065:	48 3d 18 70 40 00    	cmp    $0x407018,%rax
  40206b:	74 13                	je     402080 <deregister_tm_clones+0x20>
  40206d:	b8 00 00 00 00       	mov    $0x0,%eax
  402072:	48 85 c0             	test   %rax,%rax
  402075:	74 09                	je     402080 <deregister_tm_clones+0x20>
  402077:	bf 18 70 40 00       	mov    $0x407018,%edi
  40207c:	ff e0                	jmp    *%rax
  40207e:	66 90                	xchg   %ax,%ax
  402080:	c3                   	ret    
  402081:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402088:	00 00 00 00 
  40208c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402090 <register_tm_clones>:
  402090:	be 18 70 40 00       	mov    $0x407018,%esi
  402095:	48 81 ee 18 70 40 00 	sub    $0x407018,%rsi
  40209c:	48 89 f0             	mov    %rsi,%rax
  40209f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4020a3:	48 c1 f8 03          	sar    $0x3,%rax
  4020a7:	48 01 c6             	add    %rax,%rsi
  4020aa:	48 d1 fe             	sar    %rsi
  4020ad:	74 11                	je     4020c0 <register_tm_clones+0x30>
  4020af:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b4:	48 85 c0             	test   %rax,%rax
  4020b7:	74 07                	je     4020c0 <register_tm_clones+0x30>
  4020b9:	bf 18 70 40 00       	mov    $0x407018,%edi
  4020be:	ff e0                	jmp    *%rax
  4020c0:	c3                   	ret    
  4020c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4020c8:	00 00 00 00 
  4020cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004020d0 <__do_global_dtors_aux>:
  4020d0:	f3 0f 1e fa          	endbr64 
  4020d4:	80 3d ad 4f 00 00 00 	cmpb   $0x0,0x4fad(%rip)        # 407088 <completed.0>
  4020db:	75 13                	jne    4020f0 <__do_global_dtors_aux+0x20>
  4020dd:	55                   	push   %rbp
  4020de:	48 89 e5             	mov    %rsp,%rbp
  4020e1:	e8 7a ff ff ff       	call   402060 <deregister_tm_clones>
  4020e6:	c6 05 9b 4f 00 00 01 	movb   $0x1,0x4f9b(%rip)        # 407088 <completed.0>
  4020ed:	5d                   	pop    %rbp
  4020ee:	c3                   	ret    
  4020ef:	90                   	nop
  4020f0:	c3                   	ret    
  4020f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4020f8:	00 00 00 00 
  4020fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402100 <frame_dummy>:
  402100:	f3 0f 1e fa          	endbr64 
  402104:	eb 8a                	jmp    402090 <register_tm_clones>

0000000000402106 <usage>:
  402106:	53                   	push   %rbx
  402107:	48 89 fa             	mov    %rdi,%rdx
  40210a:	89 f3                	mov    %esi,%ebx
  40210c:	80 3d 01 21 00 00 00 	cmpb   $0x0,0x2101(%rip)        # 404214 <is_checker>
  402113:	74 1f                	je     402134 <usage+0x2e>
  402115:	48 8d 35 ec 1e 00 00 	lea    0x1eec(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40211c:	bf 01 00 00 00       	mov    $0x1,%edi
  402121:	b8 00 00 00 00       	mov    $0x0,%eax
  402126:	ff 15 5c 4e 00 00    	call   *0x4e5c(%rip)        # 406f88 <__printf_chk@GLIBC_2.3.4>
  40212c:	89 df                	mov    %ebx,%edi
  40212e:	ff 15 84 4e 00 00    	call   *0x4e84(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402134:	48 8d 35 95 1f 00 00 	lea    0x1f95(%rip),%rsi        # 4040d0 <_IO_stdin_used+0xd0>
  40213b:	bf 01 00 00 00       	mov    $0x1,%edi
  402140:	b8 00 00 00 00       	mov    $0x0,%eax
  402145:	ff 15 3d 4e 00 00    	call   *0x4e3d(%rip)        # 406f88 <__printf_chk@GLIBC_2.3.4>
  40214b:	eb df                	jmp    40212c <usage+0x26>

000000000040214d <main>:
  40214d:	41 57                	push   %r15
  40214f:	41 56                	push   %r14
  402151:	41 55                	push   %r13
  402153:	41 54                	push   %r12
  402155:	55                   	push   %rbp
  402156:	53                   	push   %rbx
  402157:	48 83 ec 18          	sub    $0x18,%rsp
  40215b:	89 fd                	mov    %edi,%ebp
  40215d:	48 89 f3             	mov    %rsi,%rbx
  402160:	44 0f b6 35 ac 20 00 	movzbl 0x20ac(%rip),%r14d        # 404214 <is_checker>
  402167:	00 
  402168:	45 84 f6             	test   %r14b,%r14b
  40216b:	74 3d                	je     4021aa <main+0x5d>
  40216d:	4c 8d 2d c8 1f 00 00 	lea    0x1fc8(%rip),%r13        # 40413c <_IO_stdin_used+0x13c>
  402174:	4c 8b 25 b5 4e 00 00 	mov    0x4eb5(%rip),%r12        # 407030 <stdin@GLIBC_2.2.5>
  40217b:	c7 44 24 0c 05 00 00 	movl   $0x5,0xc(%rsp)
  402182:	00 
  402183:	4c 89 ea             	mov    %r13,%rdx
  402186:	48 89 de             	mov    %rbx,%rsi
  402189:	89 ef                	mov    %ebp,%edi
  40218b:	ff 15 17 4e 00 00    	call   *0x4e17(%rip)        # 406fa8 <getopt@GLIBC_2.2.5>
  402191:	3c ff                	cmp    $0xff,%al
  402193:	74 48                	je     4021dd <main+0x90>
  402195:	3c 68                	cmp    $0x68,%al
  402197:	74 1a                	je     4021b3 <main+0x66>
  402199:	3c 74                	cmp    $0x74,%al
  40219b:	74 23                	je     4021c0 <main+0x73>
  40219d:	be 01 00 00 00       	mov    $0x1,%esi
  4021a2:	48 8b 3b             	mov    (%rbx),%rdi
  4021a5:	e8 5c ff ff ff       	call   402106 <usage>
  4021aa:	4c 8d 2d 8f 1f 00 00 	lea    0x1f8f(%rip),%r13        # 404140 <_IO_stdin_used+0x140>
  4021b1:	eb c1                	jmp    402174 <main+0x27>
  4021b3:	be 00 00 00 00       	mov    $0x0,%esi
  4021b8:	48 8b 3b             	mov    (%rbx),%rdi
  4021bb:	e8 46 ff ff ff       	call   402106 <usage>
  4021c0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4021c5:	be 00 00 00 00       	mov    $0x0,%esi
  4021ca:	48 8b 3d 8f 4e 00 00 	mov    0x4e8f(%rip),%rdi        # 407060 <optarg@GLIBC_2.2.5>
  4021d1:	ff 15 d9 4d 00 00    	call   *0x4dd9(%rip)        # 406fb0 <strtoul@GLIBC_2.2.5>
  4021d7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4021db:	eb a6                	jmp    402183 <main+0x36>
  4021dd:	44 8b 2d 54 4e 00 00 	mov    0x4e54(%rip),%r13d        # 407038 <optind@GLIBC_2.2.5>
  4021e4:	41 bf 00 00 00 00    	mov    $0x0,%r15d
  4021ea:	eb 29                	jmp    402215 <main+0xc8>
  4021ec:	4c 39 25 3d 4e 00 00 	cmp    %r12,0x4e3d(%rip)        # 407030 <stdin@GLIBC_2.2.5>
  4021f3:	75 63                	jne    402258 <main+0x10b>
  4021f5:	49 63 c5             	movslq %r13d,%rax
  4021f8:	48 8d 35 61 20 00 00 	lea    0x2061(%rip),%rsi        # 404260 <is_checker+0x4c>
  4021ff:	48 8b 3c c3          	mov    (%rbx,%rax,8),%rdi
  402203:	ff 15 8f 4d 00 00    	call   *0x4d8f(%rip)        # 406f98 <fopen@GLIBC_2.2.5>
  402209:	49 89 c4             	mov    %rax,%r12
  40220c:	48 85 c0             	test   %rax,%rax
  40220f:	74 2f                	je     402240 <main+0xf3>
  402211:	41 83 c5 01          	add    $0x1,%r13d
  402215:	41 39 ed             	cmp    %ebp,%r13d
  402218:	7d 6c                	jge    402286 <main+0x139>
  40221a:	45 84 f6             	test   %r14b,%r14b
  40221d:	74 cd                	je     4021ec <main+0x9f>
  40221f:	45 85 ff             	test   %r15d,%r15d
  402222:	75 c8                	jne    4021ec <main+0x9f>
  402224:	49 63 c5             	movslq %r13d,%rax
  402227:	48 8b 3c c3          	mov    (%rbx,%rax,8),%rdi
  40222b:	ba 0a 00 00 00       	mov    $0xa,%edx
  402230:	be 00 00 00 00       	mov    $0x0,%esi
  402235:	ff 15 05 4d 00 00    	call   *0x4d05(%rip)        # 406f40 <strtol@GLIBC_2.2.5>
  40223b:	41 89 c7             	mov    %eax,%r15d
  40223e:	eb d1                	jmp    402211 <main+0xc4>
  402240:	48 8b 3d 19 4e 00 00 	mov    0x4e19(%rip),%rdi        # 407060 <optarg@GLIBC_2.2.5>
  402247:	ff 15 53 4d 00 00    	call   *0x4d53(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  40224d:	bf 01 00 00 00       	mov    $0x1,%edi
  402252:	ff 15 60 4d 00 00    	call   *0x4d60(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402258:	48 8b 0b             	mov    (%rbx),%rcx
  40225b:	48 8d 15 e0 1e 00 00 	lea    0x1ee0(%rip),%rdx        # 404142 <_IO_stdin_used+0x142>
  402262:	be 01 00 00 00       	mov    $0x1,%esi
  402267:	48 8b 3d 12 4e 00 00 	mov    0x4e12(%rip),%rdi        # 407080 <stderr@GLIBC_2.2.5>
  40226e:	b8 00 00 00 00       	mov    $0x0,%eax
  402273:	ff 15 4f 4d 00 00    	call   *0x4d4f(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  402279:	be 01 00 00 00       	mov    $0x1,%esi
  40227e:	48 8b 3b             	mov    (%rbx),%rdi
  402281:	e8 80 fe ff ff       	call   402106 <usage>
  402286:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  40228a:	44 89 ff             	mov    %r15d,%edi
  40228d:	67 e8 4b 0d 00 00    	addr32 call 402fde <initialize_target>
  402293:	48 89 c6             	mov    %rax,%rsi
  402296:	80 3d c3 1e 00 00 63 	cmpb   $0x63,0x1ec3(%rip)        # 404160 <target_prefix>
  40229d:	40 0f 94 c7          	sete   %dil
  4022a1:	40 0f b6 ff          	movzbl %dil,%edi
  4022a5:	4c 89 e2             	mov    %r12,%rdx
  4022a8:	67 e8 19 11 00 00    	addr32 call 4033c7 <launch>

00000000004022ae <scramble>:
  4022ae:	48 83 ec 38          	sub    $0x38,%rsp
  4022b2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022b9:	00 00 
  4022bb:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4022c0:	31 c0                	xor    %eax,%eax
  4022c2:	eb 10                	jmp    4022d4 <scramble+0x26>
  4022c4:	69 d0 b1 7c 00 00    	imul   $0x7cb1,%eax,%edx
  4022ca:	01 fa                	add    %edi,%edx
  4022cc:	89 c1                	mov    %eax,%ecx
  4022ce:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4022d1:	83 c0 01             	add    $0x1,%eax
  4022d4:	83 f8 09             	cmp    $0x9,%eax
  4022d7:	76 eb                	jbe    4022c4 <scramble+0x16>
  4022d9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4022dd:	69 c0 f4 42 00 00    	imul   $0x42f4,%eax,%eax
  4022e3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4022e7:	8b 04 24             	mov    (%rsp),%eax
  4022ea:	69 c0 2a 54 00 00    	imul   $0x542a,%eax,%eax
  4022f0:	89 04 24             	mov    %eax,(%rsp)
  4022f3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4022f7:	69 c0 40 77 00 00    	imul   $0x7740,%eax,%eax
  4022fd:	89 44 24 20          	mov    %eax,0x20(%rsp)
  402301:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402305:	69 c0 50 63 00 00    	imul   $0x6350,%eax,%eax
  40230b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40230f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402313:	69 c0 2e bb 00 00    	imul   $0xbb2e,%eax,%eax
  402319:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40231d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402321:	69 c0 ba 5a 00 00    	imul   $0x5aba,%eax,%eax
  402327:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40232b:	8b 04 24             	mov    (%rsp),%eax
  40232e:	69 c0 bc 45 00 00    	imul   $0x45bc,%eax,%eax
  402334:	89 04 24             	mov    %eax,(%rsp)
  402337:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40233b:	69 c0 0f 5c 00 00    	imul   $0x5c0f,%eax,%eax
  402341:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402345:	8b 04 24             	mov    (%rsp),%eax
  402348:	69 c0 c1 b2 00 00    	imul   $0xb2c1,%eax,%eax
  40234e:	89 04 24             	mov    %eax,(%rsp)
  402351:	8b 04 24             	mov    (%rsp),%eax
  402354:	69 c0 3e bd 00 00    	imul   $0xbd3e,%eax,%eax
  40235a:	89 04 24             	mov    %eax,(%rsp)
  40235d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402361:	69 c0 27 76 00 00    	imul   $0x7627,%eax,%eax
  402367:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40236b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40236f:	69 c0 6c c9 00 00    	imul   $0xc96c,%eax,%eax
  402375:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402379:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40237d:	69 c0 b7 ec 00 00    	imul   $0xecb7,%eax,%eax
  402383:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402387:	8b 04 24             	mov    (%rsp),%eax
  40238a:	69 c0 46 89 00 00    	imul   $0x8946,%eax,%eax
  402390:	89 04 24             	mov    %eax,(%rsp)
  402393:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402397:	69 c0 46 bb 00 00    	imul   $0xbb46,%eax,%eax
  40239d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4023a1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4023a5:	69 c0 8d 52 00 00    	imul   $0x528d,%eax,%eax
  4023ab:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4023af:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4023b3:	69 c0 68 4a 00 00    	imul   $0x4a68,%eax,%eax
  4023b9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4023bd:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4023c1:	69 c0 f7 57 00 00    	imul   $0x57f7,%eax,%eax
  4023c7:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4023cb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4023cf:	69 c0 42 92 00 00    	imul   $0x9242,%eax,%eax
  4023d5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4023d9:	8b 04 24             	mov    (%rsp),%eax
  4023dc:	69 c0 8a b2 00 00    	imul   $0xb28a,%eax,%eax
  4023e2:	89 04 24             	mov    %eax,(%rsp)
  4023e5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4023e9:	69 c0 39 28 00 00    	imul   $0x2839,%eax,%eax
  4023ef:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4023f3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4023f7:	69 c0 3b 6d 00 00    	imul   $0x6d3b,%eax,%eax
  4023fd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402401:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402405:	69 c0 5f 04 00 00    	imul   $0x45f,%eax,%eax
  40240b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40240f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402413:	69 c0 6a 17 00 00    	imul   $0x176a,%eax,%eax
  402419:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40241d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402421:	69 c0 27 8e 00 00    	imul   $0x8e27,%eax,%eax
  402427:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40242b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40242f:	69 c0 7f 7d 00 00    	imul   $0x7d7f,%eax,%eax
  402435:	89 44 24 20          	mov    %eax,0x20(%rsp)
  402439:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40243d:	69 c0 e3 80 00 00    	imul   $0x80e3,%eax,%eax
  402443:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402447:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40244b:	69 c0 6d e6 00 00    	imul   $0xe66d,%eax,%eax
  402451:	89 44 24 10          	mov    %eax,0x10(%rsp)
  402455:	8b 44 24 14          	mov    0x14(%rsp),%eax
  402459:	69 c0 29 35 00 00    	imul   $0x3529,%eax,%eax
  40245f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402463:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402467:	69 c0 76 43 00 00    	imul   $0x4376,%eax,%eax
  40246d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402471:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402475:	69 c0 29 4e 00 00    	imul   $0x4e29,%eax,%eax
  40247b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40247f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  402483:	69 c0 a9 ee 00 00    	imul   $0xeea9,%eax,%eax
  402489:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40248d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402491:	69 c0 bb 3c 00 00    	imul   $0x3cbb,%eax,%eax
  402497:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40249b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40249f:	69 c0 3a 5a 00 00    	imul   $0x5a3a,%eax,%eax
  4024a5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4024a9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4024ad:	69 c0 e7 01 00 00    	imul   $0x1e7,%eax,%eax
  4024b3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4024b7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4024bb:	69 c0 6d 1c 00 00    	imul   $0x1c6d,%eax,%eax
  4024c1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4024c5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4024c9:	69 c0 09 1a 00 00    	imul   $0x1a09,%eax,%eax
  4024cf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4024d3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4024d7:	69 c0 15 98 00 00    	imul   $0x9815,%eax,%eax
  4024dd:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4024e1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4024e5:	69 c0 f3 52 00 00    	imul   $0x52f3,%eax,%eax
  4024eb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4024ef:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4024f3:	69 c0 89 d5 00 00    	imul   $0xd589,%eax,%eax
  4024f9:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4024fd:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402501:	69 c0 27 84 00 00    	imul   $0x8427,%eax,%eax
  402507:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40250b:	8b 04 24             	mov    (%rsp),%eax
  40250e:	69 c0 69 e5 00 00    	imul   $0xe569,%eax,%eax
  402514:	89 04 24             	mov    %eax,(%rsp)
  402517:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40251b:	69 c0 f3 99 00 00    	imul   $0x99f3,%eax,%eax
  402521:	89 44 24 20          	mov    %eax,0x20(%rsp)
  402525:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402529:	69 c0 a4 72 00 00    	imul   $0x72a4,%eax,%eax
  40252f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402533:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402537:	69 c0 8a 3b 00 00    	imul   $0x3b8a,%eax,%eax
  40253d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402541:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402545:	69 c0 8b bf 00 00    	imul   $0xbf8b,%eax,%eax
  40254b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40254f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402553:	69 c0 1f 4c 00 00    	imul   $0x4c1f,%eax,%eax
  402559:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40255d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402561:	69 c0 45 22 00 00    	imul   $0x2245,%eax,%eax
  402567:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40256b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40256f:	69 c0 d5 f4 00 00    	imul   $0xf4d5,%eax,%eax
  402575:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402579:	8b 04 24             	mov    (%rsp),%eax
  40257c:	69 c0 d8 57 00 00    	imul   $0x57d8,%eax,%eax
  402582:	89 04 24             	mov    %eax,(%rsp)
  402585:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  402589:	69 c0 43 89 00 00    	imul   $0x8943,%eax,%eax
  40258f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402593:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402597:	69 c0 dd 20 00 00    	imul   $0x20dd,%eax,%eax
  40259d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4025a1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4025a5:	69 c0 ee fd 00 00    	imul   $0xfdee,%eax,%eax
  4025ab:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4025af:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4025b3:	69 c0 b5 c1 00 00    	imul   $0xc1b5,%eax,%eax
  4025b9:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4025bd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4025c1:	69 c0 72 68 00 00    	imul   $0x6872,%eax,%eax
  4025c7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4025cb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4025cf:	69 c0 fc 31 00 00    	imul   $0x31fc,%eax,%eax
  4025d5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4025d9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4025dd:	69 c0 46 ea 00 00    	imul   $0xea46,%eax,%eax
  4025e3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4025e7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4025eb:	69 c0 a4 f1 00 00    	imul   $0xf1a4,%eax,%eax
  4025f1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4025f5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4025f9:	69 c0 3c e3 00 00    	imul   $0xe33c,%eax,%eax
  4025ff:	89 44 24 10          	mov    %eax,0x10(%rsp)
  402603:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402607:	69 c0 55 53 00 00    	imul   $0x5355,%eax,%eax
  40260d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  402611:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402615:	69 c0 63 1a 00 00    	imul   $0x1a63,%eax,%eax
  40261b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40261f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402623:	69 c0 79 a8 00 00    	imul   $0xa879,%eax,%eax
  402629:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40262d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402631:	69 c0 15 c1 00 00    	imul   $0xc115,%eax,%eax
  402637:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40263b:	8b 04 24             	mov    (%rsp),%eax
  40263e:	69 c0 5d ef 00 00    	imul   $0xef5d,%eax,%eax
  402644:	89 04 24             	mov    %eax,(%rsp)
  402647:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40264b:	69 c0 3d 47 00 00    	imul   $0x473d,%eax,%eax
  402651:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402655:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402659:	69 c0 a6 ac 00 00    	imul   $0xaca6,%eax,%eax
  40265f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402663:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402667:	69 c0 7a bb 00 00    	imul   $0xbb7a,%eax,%eax
  40266d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402671:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402675:	69 c0 ce 73 00 00    	imul   $0x73ce,%eax,%eax
  40267b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40267f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  402683:	69 c0 76 86 00 00    	imul   $0x8676,%eax,%eax
  402689:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40268d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402691:	69 c0 4b 0a 00 00    	imul   $0xa4b,%eax,%eax
  402697:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40269b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40269f:	69 c0 c2 cc 00 00    	imul   $0xccc2,%eax,%eax
  4026a5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4026a9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4026ad:	69 c0 81 db 00 00    	imul   $0xdb81,%eax,%eax
  4026b3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4026b7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4026bb:	69 c0 ad 53 00 00    	imul   $0x53ad,%eax,%eax
  4026c1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4026c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ca:	ba 00 00 00 00       	mov    $0x0,%edx
  4026cf:	eb 0a                	jmp    4026db <scramble+0x42d>
  4026d1:	89 c1                	mov    %eax,%ecx
  4026d3:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  4026d6:	01 ca                	add    %ecx,%edx
  4026d8:	83 c0 01             	add    $0x1,%eax
  4026db:	83 f8 09             	cmp    $0x9,%eax
  4026de:	76 f1                	jbe    4026d1 <scramble+0x423>
  4026e0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4026e5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4026ec:	00 00 
  4026ee:	75 07                	jne    4026f7 <scramble+0x449>
  4026f0:	89 d0                	mov    %edx,%eax
  4026f2:	48 83 c4 38          	add    $0x38,%rsp
  4026f6:	c3                   	ret    
  4026f7:	ff 15 03 48 00 00    	call   *0x4803(%rip)        # 406f00 <__stack_chk_fail@GLIBC_2.4>

00000000004026fd <decode_line>:
  4026fd:	55                   	push   %rbp
  4026fe:	53                   	push   %rbx
  4026ff:	48 83 ec 18          	sub    $0x18,%rsp
  402703:	48 89 fd             	mov    %rdi,%rbp
  402706:	48 89 e3             	mov    %rsp,%rbx
  402709:	eb 06                	jmp    402711 <decode_line+0x14>
  40270b:	88 03                	mov    %al,(%rbx)
  40270d:	48 8d 5b 01          	lea    0x1(%rbx),%rbx
  402711:	48 89 ef             	mov    %rbp,%rdi
  402714:	67 e8 67 0c 00 00    	addr32 call 403381 <get_hex_byte>
  40271a:	83 f8 ff             	cmp    $0xffffffff,%eax
  40271d:	74 05                	je     402724 <decode_line+0x27>
  40271f:	83 f8 0a             	cmp    $0xa,%eax
  402722:	75 e7                	jne    40270b <decode_line+0xe>
  402724:	c6 03 00             	movb   $0x0,(%rbx)
  402727:	48 89 e7             	mov    %rsp,%rdi
  40272a:	67 e8 c4 0b 00 00    	addr32 call 4032f4 <print_line>
  402730:	48 83 c4 18          	add    $0x18,%rsp
  402734:	5b                   	pop    %rbx
  402735:	5d                   	pop    %rbp
  402736:	c3                   	ret    

0000000000402737 <hexmatch>:
  402737:	55                   	push   %rbp
  402738:	53                   	push   %rbx
  402739:	48 83 ec 18          	sub    $0x18,%rsp
  40273d:	89 fb                	mov    %edi,%ebx
  40273f:	48 89 f5             	mov    %rsi,%rbp
  402742:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402749:	00 00 
  40274b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402750:	31 c0                	xor    %eax,%eax
  402752:	48 89 e6             	mov    %rsp,%rsi
  402755:	ba 10 00 00 00       	mov    $0x10,%edx
  40275a:	48 89 ef             	mov    %rbp,%rdi
  40275d:	ff 15 4d 48 00 00    	call   *0x484d(%rip)        # 406fb0 <strtoul@GLIBC_2.2.5>
  402763:	89 db                	mov    %ebx,%ebx
  402765:	48 39 c3             	cmp    %rax,%rbx
  402768:	74 1c                	je     402786 <hexmatch+0x4f>
  40276a:	b8 00 00 00 00       	mov    $0x0,%eax
  40276f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402774:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40277b:	00 00 
  40277d:	75 2a                	jne    4027a9 <hexmatch+0x72>
  40277f:	48 83 c4 18          	add    $0x18,%rsp
  402783:	5b                   	pop    %rbx
  402784:	5d                   	pop    %rbp
  402785:	c3                   	ret    
  402786:	48 8b 04 24          	mov    (%rsp),%rax
  40278a:	48 39 e8             	cmp    %rbp,%rax
  40278d:	74 0c                	je     40279b <hexmatch+0x64>
  40278f:	80 38 00             	cmpb   $0x0,(%rax)
  402792:	74 0e                	je     4027a2 <hexmatch+0x6b>
  402794:	b8 00 00 00 00       	mov    $0x0,%eax
  402799:	eb d4                	jmp    40276f <hexmatch+0x38>
  40279b:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a0:	eb cd                	jmp    40276f <hexmatch+0x38>
  4027a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4027a7:	eb c6                	jmp    40276f <hexmatch+0x38>
  4027a9:	ff 15 51 47 00 00    	call   *0x4751(%rip)        # 406f00 <__stack_chk_fail@GLIBC_2.4>

00000000004027af <report_touch3>:
  4027af:	53                   	push   %rbx
  4027b0:	48 89 fa             	mov    %rdi,%rdx
  4027b3:	48 89 f3             	mov    %rsi,%rbx
  4027b6:	48 8d 35 b8 19 00 00 	lea    0x19b8(%rip),%rsi        # 404175 <target_prefix+0x15>
  4027bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4027c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c7:	ff 15 bb 47 00 00    	call   *0x47bb(%rip)        # 406f88 <__printf_chk@GLIBC_2.3.4>
  4027cd:	eb 1f                	jmp    4027ee <report_touch3+0x3f>
  4027cf:	40 0f b6 d7          	movzbl %dil,%edx
  4027d3:	48 8d 35 b3 19 00 00 	lea    0x19b3(%rip),%rsi        # 40418d <target_prefix+0x2d>
  4027da:	bf 01 00 00 00       	mov    $0x1,%edi
  4027df:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e4:	ff 15 9e 47 00 00    	call   *0x479e(%rip)        # 406f88 <__printf_chk@GLIBC_2.3.4>
  4027ea:	48 83 c3 01          	add    $0x1,%rbx
  4027ee:	0f b6 3b             	movzbl (%rbx),%edi
  4027f1:	40 84 ff             	test   %dil,%dil
  4027f4:	74 72                	je     402868 <report_touch3+0xb9>
  4027f6:	8d 47 e0             	lea    -0x20(%rdi),%eax
  4027f9:	3c 5e                	cmp    $0x5e,%al
  4027fb:	77 d2                	ja     4027cf <report_touch3+0x20>
  4027fd:	40 80 ff 5c          	cmp    $0x5c,%dil
  402801:	74 19                	je     40281c <report_touch3+0x6d>
  402803:	40 80 ff 22          	cmp    $0x22,%dil
  402807:	74 39                	je     402842 <report_touch3+0x93>
  402809:	40 0f b6 ff          	movzbl %dil,%edi
  40280d:	48 8b 35 0c 48 00 00 	mov    0x480c(%rip),%rsi        # 407020 <stdout@GLIBC_2.2.5>
  402814:	ff 15 0e 47 00 00    	call   *0x470e(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  40281a:	eb ce                	jmp    4027ea <report_touch3+0x3b>
  40281c:	48 8b 35 fd 47 00 00 	mov    0x47fd(%rip),%rsi        # 407020 <stdout@GLIBC_2.2.5>
  402823:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402828:	ff 15 fa 46 00 00    	call   *0x46fa(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  40282e:	48 8b 35 eb 47 00 00 	mov    0x47eb(%rip),%rsi        # 407020 <stdout@GLIBC_2.2.5>
  402835:	bf 5c 00 00 00       	mov    $0x5c,%edi
  40283a:	ff 15 e8 46 00 00    	call   *0x46e8(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  402840:	eb a8                	jmp    4027ea <report_touch3+0x3b>
  402842:	48 8b 35 d7 47 00 00 	mov    0x47d7(%rip),%rsi        # 407020 <stdout@GLIBC_2.2.5>
  402849:	bf 5c 00 00 00       	mov    $0x5c,%edi
  40284e:	ff 15 d4 46 00 00    	call   *0x46d4(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  402854:	48 8b 35 c5 47 00 00 	mov    0x47c5(%rip),%rsi        # 407020 <stdout@GLIBC_2.2.5>
  40285b:	bf 22 00 00 00       	mov    $0x22,%edi
  402860:	ff 15 c2 46 00 00    	call   *0x46c2(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  402866:	eb 82                	jmp    4027ea <report_touch3+0x3b>
  402868:	48 8d 3d 25 19 00 00 	lea    0x1925(%rip),%rdi        # 404194 <target_prefix+0x34>
  40286f:	ff 15 6b 46 00 00    	call   *0x466b(%rip)        # 406ee0 <puts@GLIBC_2.2.5>
  402875:	5b                   	pop    %rbx
  402876:	c3                   	ret    

0000000000402877 <touch1>:
  402877:	55                   	push   %rbp
  402878:	48 89 e5             	mov    %rsp,%rbp
  40287b:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40287f:	c7 05 13 48 00 00 01 	movl   $0x1,0x4813(%rip)        # 40709c <vlevel>
  402886:	00 00 00 
  402889:	48 8d 3d 07 19 00 00 	lea    0x1907(%rip),%rdi        # 404197 <target_prefix+0x37>
  402890:	ff 15 4a 46 00 00    	call   *0x464a(%rip)        # 406ee0 <puts@GLIBC_2.2.5>
  402896:	be 01 00 00 00       	mov    $0x1,%esi
  40289b:	bf 01 00 00 00       	mov    $0x1,%edi
  4028a0:	67 e8 06 02 00 00    	addr32 call 402aac <validate>

00000000004028a6 <touch2>:
  4028a6:	55                   	push   %rbp
  4028a7:	48 89 e5             	mov    %rsp,%rbp
  4028aa:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4028ae:	89 fa                	mov    %edi,%edx
  4028b0:	c7 05 e2 47 00 00 02 	movl   $0x2,0x47e2(%rip)        # 40709c <vlevel>
  4028b7:	00 00 00 
  4028ba:	39 3d d8 47 00 00    	cmp    %edi,0x47d8(%rip)        # 407098 <cookie>
  4028c0:	74 27                	je     4028e9 <touch2+0x43>
  4028c2:	48 8d 35 27 19 00 00 	lea    0x1927(%rip),%rsi        # 4041f0 <target_prefix+0x90>
  4028c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4028ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4028d3:	ff 15 af 46 00 00    	call   *0x46af(%rip)        # 406f88 <__printf_chk@GLIBC_2.3.4>
  4028d9:	be 00 00 00 00       	mov    $0x0,%esi
  4028de:	bf 02 00 00 00       	mov    $0x2,%edi
  4028e3:	67 e8 c3 01 00 00    	addr32 call 402aac <validate>
  4028e9:	48 8d 35 d8 18 00 00 	lea    0x18d8(%rip),%rsi        # 4041c8 <target_prefix+0x68>
  4028f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4028f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4028fa:	ff 15 88 46 00 00    	call   *0x4688(%rip)        # 406f88 <__printf_chk@GLIBC_2.3.4>
  402900:	be 01 00 00 00       	mov    $0x1,%esi
  402905:	bf 02 00 00 00       	mov    $0x2,%edi
  40290a:	67 e8 9c 01 00 00    	addr32 call 402aac <validate>

0000000000402910 <touch3>:
  402910:	55                   	push   %rbp
  402911:	48 89 e5             	mov    %rsp,%rbp
  402914:	53                   	push   %rbx
  402915:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402919:	48 89 fb             	mov    %rdi,%rbx
  40291c:	c7 05 76 47 00 00 03 	movl   $0x3,0x4776(%rip)        # 40709c <vlevel>
  402923:	00 00 00 
  402926:	48 89 fe             	mov    %rdi,%rsi
  402929:	8b 3d 69 47 00 00    	mov    0x4769(%rip),%edi        # 407098 <cookie>
  40292f:	e8 03 fe ff ff       	call   402737 <hexmatch>
  402934:	85 c0                	test   %eax,%eax
  402936:	74 1f                	je     402957 <touch3+0x47>
  402938:	48 89 de             	mov    %rbx,%rsi
  40293b:	48 8d 3d 72 18 00 00 	lea    0x1872(%rip),%rdi        # 4041b4 <target_prefix+0x54>
  402942:	e8 68 fe ff ff       	call   4027af <report_touch3>
  402947:	be 01 00 00 00       	mov    $0x1,%esi
  40294c:	bf 03 00 00 00       	mov    $0x3,%edi
  402951:	67 e8 55 01 00 00    	addr32 call 402aac <validate>
  402957:	48 89 de             	mov    %rbx,%rsi
  40295a:	48 8d 3d 5b 18 00 00 	lea    0x185b(%rip),%rdi        # 4041bc <target_prefix+0x5c>
  402961:	e8 49 fe ff ff       	call   4027af <report_touch3>
  402966:	be 00 00 00 00       	mov    $0x0,%esi
  40296b:	bf 03 00 00 00       	mov    $0x3,%edi
  402970:	67 e8 36 01 00 00    	addr32 call 402aac <validate>

0000000000402976 <test>:
  402976:	50                   	push   %rax
  402977:	58                   	pop    %rax
  402978:	48 83 ec 08          	sub    $0x8,%rsp
  40297c:	67 e8 7b fd ff ff    	addr32 call 4026fd <decode_line>
  402982:	0f b6 3d 8b 18 00 00 	movzbl 0x188b(%rip),%edi        # 404214 <is_checker>
  402989:	ff 15 29 46 00 00    	call   *0x4629(%rip)        # 406fb8 <exit@GLIBC_2.2.5>

000000000040298f <start_farm>:
  40298f:	b8 01 00 00 00       	mov    $0x1,%eax
  402994:	c3                   	ret    

0000000000402995 <getval_181>:
  402995:	b8 58 94 90 90       	mov    $0x90909458,%eax
  40299a:	c3                   	ret    

000000000040299b <addval_292>:
  40299b:	8d 87 48 89 c7 c7    	lea    -0x383876b8(%rdi),%eax
  4029a1:	c3                   	ret    

00000000004029a2 <getval_155>:
  4029a2:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  4029a7:	c3                   	ret    

00000000004029a8 <getval_413>:
  4029a8:	b8 48 89 c7 c7       	mov    $0xc7c78948,%eax
  4029ad:	c3                   	ret    

00000000004029ae <setval_359>:
  4029ae:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  4029b4:	c3                   	ret    

00000000004029b5 <getval_373>:
  4029b5:	b8 58 90 90 90       	mov    $0x90909058,%eax
  4029ba:	c3                   	ret    

00000000004029bb <addval_109>:
  4029bb:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  4029c1:	c3                   	ret    

00000000004029c2 <getval_204>:
  4029c2:	b8 b9 e2 58 c1       	mov    $0xc158e2b9,%eax
  4029c7:	c3                   	ret    

00000000004029c8 <mid_farm>:
  4029c8:	b8 01 00 00 00       	mov    $0x1,%eax
  4029cd:	c3                   	ret    

00000000004029ce <add_xy>:
  4029ce:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  4029d2:	c3                   	ret    

00000000004029d3 <setval_345>:
  4029d3:	c7 07 ea c9 ca 90    	movl   $0x90cac9ea,(%rdi)
  4029d9:	c3                   	ret    

00000000004029da <addval_416>:
  4029da:	8d 87 8b d6 08 c9    	lea    -0x36f72975(%rdi),%eax
  4029e0:	c3                   	ret    

00000000004029e1 <setval_315>:
  4029e1:	c7 07 89 d6 a4 db    	movl   $0xdba4d689,(%rdi)
  4029e7:	c3                   	ret    

00000000004029e8 <getval_264>:
  4029e8:	b8 2f 68 89 e0       	mov    $0xe089682f,%eax
  4029ed:	c3                   	ret    

00000000004029ee <getval_395>:
  4029ee:	b8 89 ca 90 c1       	mov    $0xc190ca89,%eax
  4029f3:	c3                   	ret    

00000000004029f4 <getval_405>:
  4029f4:	b8 89 d6 08 db       	mov    $0xdb08d689,%eax
  4029f9:	c3                   	ret    

00000000004029fa <getval_297>:
  4029fa:	b8 48 8b e0 c3       	mov    $0xc3e08b48,%eax
  4029ff:	c3                   	ret    

0000000000402a00 <setval_485>:
  402a00:	c7 07 89 c1 18 c0    	movl   $0xc018c189,(%rdi)
  402a06:	c3                   	ret    

0000000000402a07 <setval_312>:
  402a07:	c7 07 89 ca 90 c3    	movl   $0xc390ca89,(%rdi)
  402a0d:	c3                   	ret    

0000000000402a0e <setval_247>:
  402a0e:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  402a14:	c3                   	ret    

0000000000402a15 <setval_362>:
  402a15:	c7 07 88 ca 08 c9    	movl   $0xc908ca88,(%rdi)
  402a1b:	c3                   	ret    

0000000000402a1c <setval_269>:
  402a1c:	c7 07 49 89 e0 90    	movl   $0x90e08949,(%rdi)
  402a22:	c3                   	ret    

0000000000402a23 <getval_225>:
  402a23:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  402a28:	c3                   	ret    

0000000000402a29 <setval_111>:
  402a29:	c7 07 e3 a9 c1 90    	movl   $0x90c1a9e3,(%rdi)
  402a2f:	c3                   	ret    

0000000000402a30 <addval_425>:
  402a30:	8d 87 a9 ca 20 db    	lea    -0x24df3557(%rdi),%eax
  402a36:	c3                   	ret    

0000000000402a37 <getval_196>:
  402a37:	b8 09 d6 84 db       	mov    $0xdb84d609,%eax
  402a3c:	c3                   	ret    

0000000000402a3d <getval_368>:
  402a3d:	b8 89 d6 94 c3       	mov    $0xc394d689,%eax
  402a42:	c3                   	ret    

0000000000402a43 <setval_427>:
  402a43:	c7 07 89 d6 48 db    	movl   $0xdb48d689,(%rdi)
  402a49:	c3                   	ret    

0000000000402a4a <getval_452>:
  402a4a:	b8 89 d6 28 db       	mov    $0xdb28d689,%eax
  402a4f:	c3                   	ret    

0000000000402a50 <setval_222>:
  402a50:	c7 07 b5 3c 89 c1    	movl   $0xc1893cb5,(%rdi)
  402a56:	c3                   	ret    

0000000000402a57 <setval_127>:
  402a57:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  402a5d:	c3                   	ret    

0000000000402a5e <getval_378>:
  402a5e:	b8 89 d6 20 db       	mov    $0xdb20d689,%eax
  402a63:	c3                   	ret    

0000000000402a64 <setval_179>:
  402a64:	c7 07 48 89 e0 c2    	movl   $0xc2e08948,(%rdi)
  402a6a:	c3                   	ret    

0000000000402a6b <getval_468>:
  402a6b:	b8 a9 c1 c3 b2       	mov    $0xb2c3c1a9,%eax
  402a70:	c3                   	ret    

0000000000402a71 <addval_168>:
  402a71:	8d 87 89 c1 60 c0    	lea    -0x3f9f3e77(%rdi),%eax
  402a77:	c3                   	ret    

0000000000402a78 <setval_173>:
  402a78:	c7 07 41 48 8d e0    	movl   $0xe08d4841,(%rdi)
  402a7e:	c3                   	ret    

0000000000402a7f <addval_244>:
  402a7f:	8d 87 88 c1 08 d2    	lea    -0x2df73e78(%rdi),%eax
  402a85:	c3                   	ret    

0000000000402a86 <getval_202>:
  402a86:	b8 89 c1 90 90       	mov    $0x9090c189,%eax
  402a8b:	c3                   	ret    

0000000000402a8c <getval_255>:
  402a8c:	b8 4f 89 ca c1       	mov    $0xc1ca894f,%eax
  402a91:	c3                   	ret    

0000000000402a92 <getval_407>:
  402a92:	b8 09 ca 08 c0       	mov    $0xc008ca09,%eax
  402a97:	c3                   	ret    

0000000000402a98 <setval_352>:
  402a98:	c7 07 89 c1 28 d2    	movl   $0xd228c189,(%rdi)
  402a9e:	c3                   	ret    

0000000000402a9f <setval_256>:
  402a9f:	c7 07 ab 18 89 ca    	movl   $0xca8918ab,(%rdi)
  402aa5:	c3                   	ret    

0000000000402aa6 <end_farm>:
  402aa6:	b8 01 00 00 00       	mov    $0x1,%eax
  402aab:	c3                   	ret    

0000000000402aac <validate>:
  402aac:	8b 15 ea 45 00 00    	mov    0x45ea(%rip),%edx        # 40709c <vlevel>
  402ab2:	8b 0d e8 45 00 00    	mov    0x45e8(%rip),%ecx        # 4070a0 <check_level>
  402ab8:	e9 b6 04 00 00       	jmp    402f73 <validate_inner>

0000000000402abd <save_and_submit>:
  402abd:	41 57                	push   %r15
  402abf:	41 56                	push   %r14
  402ac1:	41 55                	push   %r13
  402ac3:	41 54                	push   %r12
  402ac5:	55                   	push   %rbp
  402ac6:	53                   	push   %rbx
  402ac7:	48 83 ec 28          	sub    $0x28,%rsp
  402acb:	89 fd                	mov    %edi,%ebp
  402acd:	41 89 f6             	mov    %esi,%r14d
  402ad0:	49 89 d4             	mov    %rdx,%r12
  402ad3:	49 89 cd             	mov    %rcx,%r13
  402ad6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402add:	00 00 
  402adf:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ae4:	31 c0                	xor    %eax,%eax
  402ae6:	48 8b 3d a3 45 00 00 	mov    0x45a3(%rip),%rdi        # 407090 <input_buf>
  402aed:	ff 15 75 44 00 00    	call   *0x4475(%rip)        # 406f68 <fflush@GLIBC_2.2.5>
  402af3:	85 c0                	test   %eax,%eax
  402af5:	0f 85 87 01 00 00    	jne    402c82 <save_and_submit+0x1c5>
  402afb:	44 0f be 3d 5d 16 00 	movsbl 0x165d(%rip),%r15d        # 404160 <target_prefix>
  402b02:	00 
  402b03:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  402b08:	41 89 e8             	mov    %ebp,%r8d
  402b0b:	44 89 f9             	mov    %r15d,%ecx
  402b0e:	48 8d 15 1f 17 00 00 	lea    0x171f(%rip),%rdx        # 404234 <is_checker+0x20>
  402b15:	be 01 00 00 00       	mov    $0x1,%esi
  402b1a:	b8 00 00 00 00       	mov    $0x0,%eax
  402b1f:	ff 15 fb 43 00 00    	call   *0x43fb(%rip)        # 406f20 <__asprintf_chk@GLIBC_2.8>
  402b25:	83 f8 ff             	cmp    $0xffffffff,%eax
  402b28:	0f 84 6c 01 00 00    	je     402c9a <save_and_submit+0x1dd>
  402b2e:	48 8d 35 1c 17 00 00 	lea    0x171c(%rip),%rsi        # 404251 <is_checker+0x3d>
  402b35:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402b3a:	ff 15 58 44 00 00    	call   *0x4458(%rip)        # 406f98 <fopen@GLIBC_2.2.5>
  402b40:	48 89 c3             	mov    %rax,%rbx
  402b43:	48 85 c0             	test   %rax,%rax
  402b46:	0f 84 66 01 00 00    	je     402cb2 <save_and_submit+0x1f5>
  402b4c:	45 84 f6             	test   %r14b,%r14b
  402b4f:	0f 84 73 01 00 00    	je     402cc8 <save_and_submit+0x20b>
  402b55:	48 8d 0d bc 16 00 00 	lea    0x16bc(%rip),%rcx        # 404218 <is_checker+0x4>
  402b5c:	45 89 f9             	mov    %r15d,%r9d
  402b5f:	41 89 e8             	mov    %ebp,%r8d
  402b62:	48 8d 15 77 17 00 00 	lea    0x1777(%rip),%rdx        # 4042e0 <is_checker+0xcc>
  402b69:	be 01 00 00 00       	mov    $0x1,%esi
  402b6e:	48 89 df             	mov    %rbx,%rdi
  402b71:	b8 00 00 00 00       	mov    $0x0,%eax
  402b76:	ff 15 4c 44 00 00    	call   *0x444c(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  402b7c:	4d 85 e4             	test   %r12,%r12
  402b7f:	0f 95 c0             	setne  %al
  402b82:	4d 85 ed             	test   %r13,%r13
  402b85:	0f 95 c2             	setne  %dl
  402b88:	84 c2                	test   %al,%dl
  402b8a:	0f 85 44 01 00 00    	jne    402cd4 <save_and_submit+0x217>
  402b90:	48 89 de             	mov    %rbx,%rsi
  402b93:	bf 0a 00 00 00       	mov    $0xa,%edi
  402b98:	ff 15 7a 43 00 00    	call   *0x437a(%rip)        # 406f18 <fputc@GLIBC_2.2.5>
  402b9e:	48 89 d9             	mov    %rbx,%rcx
  402ba1:	48 8b 15 00 45 00 00 	mov    0x4500(%rip),%rdx        # 4070a8 <raw_exploit_len>
  402ba8:	be 01 00 00 00       	mov    $0x1,%esi
  402bad:	48 8b 3d fc 44 00 00 	mov    0x44fc(%rip),%rdi        # 4070b0 <raw_exploit>
  402bb4:	ff 15 06 44 00 00    	call   *0x4406(%rip)        # 406fc0 <fwrite@GLIBC_2.2.5>
  402bba:	48 8b 15 ef 44 00 00 	mov    0x44ef(%rip),%rdx        # 4070b0 <raw_exploit>
  402bc1:	48 8b 05 e0 44 00 00 	mov    0x44e0(%rip),%rax        # 4070a8 <raw_exploit_len>
  402bc8:	80 7c 02 ff 0a       	cmpb   $0xa,-0x1(%rdx,%rax,1)
  402bcd:	0f 85 42 01 00 00    	jne    402d15 <save_and_submit+0x258>
  402bd3:	48 89 df             	mov    %rbx,%rdi
  402bd6:	ff 15 0c 43 00 00    	call   *0x430c(%rip)        # 406ee8 <ferror@GLIBC_2.2.5>
  402bdc:	85 c0                	test   %eax,%eax
  402bde:	0f 85 44 01 00 00    	jne    402d28 <save_and_submit+0x26b>
  402be4:	48 89 df             	mov    %rbx,%rdi
  402be7:	ff 15 0b 43 00 00    	call   *0x430b(%rip)        # 406ef8 <fclose@GLIBC_2.2.5>
  402bed:	85 c0                	test   %eax,%eax
  402bef:	0f 85 33 01 00 00    	jne    402d28 <save_and_submit+0x26b>
  402bf5:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402bfa:	4c 8b 0d 3f 44 00 00 	mov    0x443f(%rip),%r9        # 407040 <__environ@GLIBC_2.2.5>
  402c01:	4c 8d 05 b8 40 00 00 	lea    0x40b8(%rip),%r8        # 406cc0 <make_argv.0>
  402c08:	b9 00 00 00 00       	mov    $0x0,%ecx
  402c0d:	ba 00 00 00 00       	mov    $0x0,%edx
  402c12:	48 8d 35 49 16 00 00 	lea    0x1649(%rip),%rsi        # 404262 <is_checker+0x4e>
  402c19:	ff 15 59 43 00 00    	call   *0x4359(%rip)        # 406f78 <posix_spawnp@GLIBC_2.15>
  402c1f:	85 c0                	test   %eax,%eax
  402c21:	0f 85 19 01 00 00    	jne    402d40 <save_and_submit+0x283>
  402c27:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  402c2c:	ba 00 00 00 00       	mov    $0x0,%edx
  402c31:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  402c35:	ff 15 55 43 00 00    	call   *0x4355(%rip)        # 406f90 <waitpid@GLIBC_2.2.5>
  402c3b:	83 f8 ff             	cmp    $0xffffffff,%eax
  402c3e:	0f 84 30 01 00 00    	je     402d74 <save_and_submit+0x2b7>
  402c44:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  402c48:	89 cf                	mov    %ecx,%edi
  402c4a:	83 e7 7f             	and    $0x7f,%edi
  402c4d:	0f 85 64 01 00 00    	jne    402db7 <save_and_submit+0x2fa>
  402c53:	0f b6 c5             	movzbl %ch,%eax
  402c56:	f6 c5 ff             	test   $0xff,%ch
  402c59:	0f 85 2d 01 00 00    	jne    402d8c <save_and_submit+0x2cf>
  402c5f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402c64:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402c6b:	00 00 
  402c6d:	0f 85 ab 01 00 00    	jne    402e1e <save_and_submit+0x361>
  402c73:	48 83 c4 28          	add    $0x28,%rsp
  402c77:	5b                   	pop    %rbx
  402c78:	5d                   	pop    %rbp
  402c79:	41 5c                	pop    %r12
  402c7b:	41 5d                	pop    %r13
  402c7d:	41 5e                	pop    %r14
  402c7f:	41 5f                	pop    %r15
  402c81:	c3                   	ret    
  402c82:	48 8d 3d a1 15 00 00 	lea    0x15a1(%rip),%rdi        # 40422a <is_checker+0x16>
  402c89:	ff 15 11 43 00 00    	call   *0x4311(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  402c8f:	bf 01 00 00 00       	mov    $0x1,%edi
  402c94:	ff 15 1e 43 00 00    	call   *0x431e(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402c9a:	48 8d 3d a7 15 00 00 	lea    0x15a7(%rip),%rdi        # 404248 <is_checker+0x34>
  402ca1:	ff 15 f9 42 00 00    	call   *0x42f9(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  402ca7:	bf 01 00 00 00       	mov    $0x1,%edi
  402cac:	ff 15 06 43 00 00    	call   *0x4306(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402cb2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402cb7:	ff 15 e3 42 00 00    	call   *0x42e3(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  402cbd:	bf 01 00 00 00       	mov    $0x1,%edi
  402cc2:	ff 15 f0 42 00 00    	call   *0x42f0(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402cc8:	48 8d 0d 54 15 00 00 	lea    0x1554(%rip),%rcx        # 404223 <is_checker+0xf>
  402ccf:	e9 88 fe ff ff       	jmp    402b5c <save_and_submit+0x9f>
  402cd4:	48 89 d9             	mov    %rbx,%rcx
  402cd7:	ba 02 00 00 00       	mov    $0x2,%edx
  402cdc:	be 01 00 00 00       	mov    $0x1,%esi
  402ce1:	48 8d 3d 6b 15 00 00 	lea    0x156b(%rip),%rdi        # 404253 <is_checker+0x3f>
  402ce8:	ff 15 d2 42 00 00    	call   *0x42d2(%rip)        # 406fc0 <fwrite@GLIBC_2.2.5>
  402cee:	4c 89 e9             	mov    %r13,%rcx
  402cf1:	4c 89 e2             	mov    %r12,%rdx
  402cf4:	be 01 00 00 00       	mov    $0x1,%esi
  402cf9:	48 89 df             	mov    %rbx,%rdi
  402cfc:	ff 15 b6 41 00 00    	call   *0x41b6(%rip)        # 406eb8 <__vfprintf_chk@GLIBC_2.3.4>
  402d02:	48 89 de             	mov    %rbx,%rsi
  402d05:	bf 0a 00 00 00       	mov    $0xa,%edi
  402d0a:	ff 15 08 42 00 00    	call   *0x4208(%rip)        # 406f18 <fputc@GLIBC_2.2.5>
  402d10:	e9 7b fe ff ff       	jmp    402b90 <save_and_submit+0xd3>
  402d15:	48 89 de             	mov    %rbx,%rsi
  402d18:	bf 0a 00 00 00       	mov    $0xa,%edi
  402d1d:	ff 15 f5 41 00 00    	call   *0x41f5(%rip)        # 406f18 <fputc@GLIBC_2.2.5>
  402d23:	e9 ab fe ff ff       	jmp    402bd3 <save_and_submit+0x116>
  402d28:	48 8d 3d 27 15 00 00 	lea    0x1527(%rip),%rdi        # 404256 <is_checker+0x42>
  402d2f:	ff 15 6b 42 00 00    	call   *0x426b(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  402d35:	bf 01 00 00 00       	mov    $0x1,%edi
  402d3a:	ff 15 78 42 00 00    	call   *0x4278(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402d40:	89 c7                	mov    %eax,%edi
  402d42:	ff 15 88 42 00 00    	call   *0x4288(%rip)        # 406fd0 <strerror@GLIBC_2.2.5>
  402d48:	48 89 c1             	mov    %rax,%rcx
  402d4b:	48 8d 15 be 15 00 00 	lea    0x15be(%rip),%rdx        # 404310 <is_checker+0xfc>
  402d52:	be 01 00 00 00       	mov    $0x1,%esi
  402d57:	48 8b 3d 22 43 00 00 	mov    0x4322(%rip),%rdi        # 407080 <stderr@GLIBC_2.2.5>
  402d5e:	b8 00 00 00 00       	mov    $0x0,%eax
  402d63:	ff 15 5f 42 00 00    	call   *0x425f(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  402d69:	bf 01 00 00 00       	mov    $0x1,%edi
  402d6e:	ff 15 44 42 00 00    	call   *0x4244(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402d74:	48 8d 3d bd 15 00 00 	lea    0x15bd(%rip),%rdi        # 404338 <is_checker+0x124>
  402d7b:	ff 15 1f 42 00 00    	call   *0x421f(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  402d81:	bf 01 00 00 00       	mov    $0x1,%edi
  402d86:	ff 15 2c 42 00 00    	call   *0x422c(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402d8c:	89 c1                	mov    %eax,%ecx
  402d8e:	48 8d 15 d2 14 00 00 	lea    0x14d2(%rip),%rdx        # 404267 <is_checker+0x53>
  402d95:	be 01 00 00 00       	mov    $0x1,%esi
  402d9a:	48 8b 3d df 42 00 00 	mov    0x42df(%rip),%rdi        # 407080 <stderr@GLIBC_2.2.5>
  402da1:	b8 00 00 00 00       	mov    $0x0,%eax
  402da6:	ff 15 1c 42 00 00    	call   *0x421c(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  402dac:	bf 01 00 00 00       	mov    $0x1,%edi
  402db1:	ff 15 01 42 00 00    	call   *0x4201(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402db7:	89 c8                	mov    %ecx,%eax
  402db9:	83 e0 7f             	and    $0x7f,%eax
  402dbc:	83 c0 01             	add    $0x1,%eax
  402dbf:	3c 01                	cmp    $0x1,%al
  402dc1:	7e 32                	jle    402df5 <save_and_submit+0x338>
  402dc3:	ff 15 b7 41 00 00    	call   *0x41b7(%rip)        # 406f80 <strsignal@GLIBC_2.2.5>
  402dc9:	48 89 c1             	mov    %rax,%rcx
  402dcc:	48 8d 15 aa 14 00 00 	lea    0x14aa(%rip),%rdx        # 40427d <is_checker+0x69>
  402dd3:	be 01 00 00 00       	mov    $0x1,%esi
  402dd8:	48 8b 3d a1 42 00 00 	mov    0x42a1(%rip),%rdi        # 407080 <stderr@GLIBC_2.2.5>
  402ddf:	b8 00 00 00 00       	mov    $0x0,%eax
  402de4:	ff 15 de 41 00 00    	call   *0x41de(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  402dea:	bf 01 00 00 00       	mov    $0x1,%edi
  402def:	ff 15 c3 41 00 00    	call   *0x41c3(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402df5:	48 8d 15 92 14 00 00 	lea    0x1492(%rip),%rdx        # 40428e <is_checker+0x7a>
  402dfc:	be 01 00 00 00       	mov    $0x1,%esi
  402e01:	48 8b 3d 78 42 00 00 	mov    0x4278(%rip),%rdi        # 407080 <stderr@GLIBC_2.2.5>
  402e08:	b8 00 00 00 00       	mov    $0x0,%eax
  402e0d:	ff 15 b5 41 00 00    	call   *0x41b5(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  402e13:	bf 01 00 00 00       	mov    $0x1,%edi
  402e18:	ff 15 9a 41 00 00    	call   *0x419a(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  402e1e:	ff 15 dc 40 00 00    	call   *0x40dc(%rip)        # 406f00 <__stack_chk_fail@GLIBC_2.4>

0000000000402e24 <notify_pass>:
  402e24:	53                   	push   %rbx
  402e25:	89 fb                	mov    %edi,%ebx
  402e27:	48 8d 3d 3a 15 00 00 	lea    0x153a(%rip),%rdi        # 404368 <is_checker+0x154>
  402e2e:	ff 15 ac 40 00 00    	call   *0x40ac(%rip)        # 406ee0 <puts@GLIBC_2.2.5>
  402e34:	b9 00 00 00 00       	mov    $0x0,%ecx
  402e39:	ba 00 00 00 00       	mov    $0x0,%edx
  402e3e:	be 01 00 00 00       	mov    $0x1,%esi
  402e43:	89 df                	mov    %ebx,%edi
  402e45:	e8 73 fc ff ff       	call   402abd <save_and_submit>
  402e4a:	bf 00 00 00 00       	mov    $0x0,%edi
  402e4f:	ff 15 63 41 00 00    	call   *0x4163(%rip)        # 406fb8 <exit@GLIBC_2.2.5>

0000000000402e55 <notify_fail>:
  402e55:	41 54                	push   %r12
  402e57:	55                   	push   %rbp
  402e58:	53                   	push   %rbx
  402e59:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  402e60:	89 fd                	mov    %edi,%ebp
  402e62:	48 89 f3             	mov    %rsi,%rbx
  402e65:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  402e6a:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  402e6f:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  402e74:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  402e79:	84 c0                	test   %al,%al
  402e7b:	74 37                	je     402eb4 <notify_fail+0x5f>
  402e7d:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
  402e82:	0f 29 4c 24 60       	movaps %xmm1,0x60(%rsp)
  402e87:	0f 29 54 24 70       	movaps %xmm2,0x70(%rsp)
  402e8c:	0f 29 9c 24 80 00 00 	movaps %xmm3,0x80(%rsp)
  402e93:	00 
  402e94:	0f 29 a4 24 90 00 00 	movaps %xmm4,0x90(%rsp)
  402e9b:	00 
  402e9c:	0f 29 ac 24 a0 00 00 	movaps %xmm5,0xa0(%rsp)
  402ea3:	00 
  402ea4:	0f 29 b4 24 b0 00 00 	movaps %xmm6,0xb0(%rsp)
  402eab:	00 
  402eac:	0f 29 bc 24 c0 00 00 	movaps %xmm7,0xc0(%rsp)
  402eb3:	00 
  402eb4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ebb:	00 00 
  402ebd:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ec2:	31 c0                	xor    %eax,%eax
  402ec4:	48 8b 0d 55 41 00 00 	mov    0x4155(%rip),%rcx        # 407020 <stdout@GLIBC_2.2.5>
  402ecb:	ba 06 00 00 00       	mov    $0x6,%edx
  402ed0:	be 01 00 00 00       	mov    $0x1,%esi
  402ed5:	48 8d 3d cb 13 00 00 	lea    0x13cb(%rip),%rdi        # 4042a7 <is_checker+0x93>
  402edc:	ff 15 de 40 00 00    	call   *0x40de(%rip)        # 406fc0 <fwrite@GLIBC_2.2.5>
  402ee2:	c7 04 24 10 00 00 00 	movl   $0x10,(%rsp)
  402ee9:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  402ef0:	00 
  402ef1:	48 8d 84 24 f0 00 00 	lea    0xf0(%rsp),%rax
  402ef8:	00 
  402ef9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402efe:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  402f03:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  402f08:	49 89 e4             	mov    %rsp,%r12
  402f0b:	4c 89 e1             	mov    %r12,%rcx
  402f0e:	48 89 da             	mov    %rbx,%rdx
  402f11:	be 01 00 00 00       	mov    $0x1,%esi
  402f16:	48 8b 3d 03 41 00 00 	mov    0x4103(%rip),%rdi        # 407020 <stdout@GLIBC_2.2.5>
  402f1d:	ff 15 95 3f 00 00    	call   *0x3f95(%rip)        # 406eb8 <__vfprintf_chk@GLIBC_2.3.4>
  402f23:	48 8d 3d 7e 14 00 00 	lea    0x147e(%rip),%rdi        # 4043a8 <is_checker+0x194>
  402f2a:	ff 15 b0 3f 00 00    	call   *0x3fb0(%rip)        # 406ee0 <puts@GLIBC_2.2.5>
  402f30:	c7 04 24 10 00 00 00 	movl   $0x10,(%rsp)
  402f37:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  402f3e:	00 
  402f3f:	48 8d 84 24 f0 00 00 	lea    0xf0(%rsp),%rax
  402f46:	00 
  402f47:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402f4c:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  402f51:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  402f56:	4c 89 e1             	mov    %r12,%rcx
  402f59:	48 89 da             	mov    %rbx,%rdx
  402f5c:	be 00 00 00 00       	mov    $0x0,%esi
  402f61:	89 ef                	mov    %ebp,%edi
  402f63:	e8 55 fb ff ff       	call   402abd <save_and_submit>
  402f68:	bf 01 00 00 00       	mov    $0x1,%edi
  402f6d:	ff 15 45 40 00 00    	call   *0x4045(%rip)        # 406fb8 <exit@GLIBC_2.2.5>

0000000000402f73 <validate_inner>:
  402f73:	50                   	push   %rax
  402f74:	58                   	pop    %rax
  402f75:	48 83 ec 08          	sub    $0x8,%rsp
  402f79:	85 c9                	test   %ecx,%ecx
  402f7b:	75 15                	jne    402f92 <validate_inner+0x1f>
  402f7d:	41 89 d0             	mov    %edx,%r8d
  402f80:	85 d2                	test   %edx,%edx
  402f82:	7e 21                	jle    402fa5 <validate_inner+0x32>
  402f84:	39 fa                	cmp    %edi,%edx
  402f86:	75 2e                	jne    402fb6 <validate_inner+0x43>
  402f88:	40 84 f6             	test   %sil,%sil
  402f8b:	74 3e                	je     402fcb <validate_inner+0x58>
  402f8d:	e8 92 fe ff ff       	call   402e24 <notify_pass>
  402f92:	89 ca                	mov    %ecx,%edx
  402f94:	48 8d 35 3d 14 00 00 	lea    0x143d(%rip),%rsi        # 4043d8 <is_checker+0x1c4>
  402f9b:	b8 00 00 00 00       	mov    $0x0,%eax
  402fa0:	e8 b0 fe ff ff       	call   402e55 <notify_fail>
  402fa5:	48 8d 35 02 13 00 00 	lea    0x1302(%rip),%rsi        # 4042ae <is_checker+0x9a>
  402fac:	b8 00 00 00 00       	mov    $0x0,%eax
  402fb1:	e8 9f fe ff ff       	call   402e55 <notify_fail>
  402fb6:	89 d1                	mov    %edx,%ecx
  402fb8:	89 fa                	mov    %edi,%edx
  402fba:	48 8d 35 3f 14 00 00 	lea    0x143f(%rip),%rsi        # 404400 <is_checker+0x1ec>
  402fc1:	b8 00 00 00 00       	mov    $0x0,%eax
  402fc6:	e8 8a fe ff ff       	call   402e55 <notify_fail>
  402fcb:	89 fa                	mov    %edi,%edx
  402fcd:	48 8d 35 5c 14 00 00 	lea    0x145c(%rip),%rsi        # 404430 <is_checker+0x21c>
  402fd4:	b8 00 00 00 00       	mov    $0x0,%eax
  402fd9:	e8 77 fe ff ff       	call   402e55 <notify_fail>

0000000000402fde <initialize_target>:
  402fde:	53                   	push   %rbx
  402fdf:	89 3d bb 40 00 00    	mov    %edi,0x40bb(%rip)        # 4070a0 <check_level>
  402fe5:	8b 1d 71 11 00 00    	mov    0x1171(%rip),%ebx        # 40415c <target_id>
  402feb:	89 df                	mov    %ebx,%edi
  402fed:	67 e8 ad 05 00 00    	addr32 call 4035a0 <gencookie>
  402ff3:	89 05 9f 40 00 00    	mov    %eax,0x409f(%rip)        # 407098 <cookie>
  402ff9:	8d 7b 01             	lea    0x1(%rbx),%edi
  402ffc:	ff 15 ce 3e 00 00    	call   *0x3ece(%rip)        # 406ed0 <srandom@GLIBC_2.2.5>
  403002:	ff 15 58 3f 00 00    	call   *0x3f58(%rip)        # 406f60 <random@GLIBC_2.2.5>
  403008:	89 c7                	mov    %eax,%edi
  40300a:	67 e8 9e f2 ff ff    	addr32 call 4022ae <scramble>
  403010:	89 c3                	mov    %eax,%ebx
  403012:	bf 00 00 00 00       	mov    $0x0,%edi
  403017:	ff 15 33 3f 00 00    	call   *0x3f33(%rip)        # 406f50 <time@GLIBC_2.2.5>
  40301d:	89 c7                	mov    %eax,%edi
  40301f:	ff 15 ab 3e 00 00    	call   *0x3eab(%rip)        # 406ed0 <srandom@GLIBC_2.2.5>
  403025:	80 3d 34 11 00 00 63 	cmpb   $0x63,0x1134(%rip)        # 404160 <target_prefix>
  40302c:	75 33                	jne    403061 <initialize_target+0x83>
  40302e:	b8 00 00 00 00       	mov    $0x0,%eax
  403033:	01 d8                	add    %ebx,%eax
  403035:	0f b7 c0             	movzwl %ax,%eax
  403038:	8d 1c c5 00 01 00 00 	lea    0x100(,%rax,8),%ebx
  40303f:	89 db                	mov    %ebx,%ebx
  403041:	48 8d 35 60 40 00 00 	lea    0x4060(%rip),%rsi        # 4070a8 <raw_exploit_len>
  403048:	48 8d 3d 61 40 00 00 	lea    0x4061(%rip),%rdi        # 4070b0 <raw_exploit>
  40304f:	ff 15 83 3e 00 00    	call   *0x3e83(%rip)        # 406ed8 <open_memstream@GLIBC_2.2.5>
  403055:	48 89 05 34 40 00 00 	mov    %rax,0x4034(%rip)        # 407090 <input_buf>
  40305c:	48 89 d8             	mov    %rbx,%rax
  40305f:	5b                   	pop    %rbx
  403060:	c3                   	ret    
  403061:	ff 15 f9 3e 00 00    	call   *0x3ef9(%rip)        # 406f60 <random@GLIBC_2.2.5>
  403067:	eb ca                	jmp    403033 <initialize_target+0x55>

0000000000403069 <get_hex_digit>:
  403069:	41 54                	push   %r12
  40306b:	55                   	push   %rbp
  40306c:	53                   	push   %rbx
  40306d:	48 89 fd             	mov    %rdi,%rbp
  403070:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  403076:	eb 43                	jmp    4030bb <get_hex_digit+0x52>
  403078:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40307e:	eb 3b                	jmp    4030bb <get_hex_digit+0x52>
  403080:	48 8b 35 09 40 00 00 	mov    0x4009(%rip),%rsi        # 407090 <input_buf>
  403087:	48 85 f6             	test   %rsi,%rsi
  40308a:	74 0b                	je     403097 <get_hex_digit+0x2e>
  40308c:	bf 0a 00 00 00       	mov    $0xa,%edi
  403091:	ff 15 91 3e 00 00    	call   *0x3e91(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  403097:	48 89 ef             	mov    %rbp,%rdi
  40309a:	ff 15 40 3f 00 00    	call   *0x3f40(%rip)        # 406fe0 <getc@GLIBC_2.2.5>
  4030a0:	89 c3                	mov    %eax,%ebx
  4030a2:	83 f8 ff             	cmp    $0xffffffff,%eax
  4030a5:	74 75                	je     40311c <get_hex_digit+0xb3>
  4030a7:	83 f8 0a             	cmp    $0xa,%eax
  4030aa:	75 77                	jne    403123 <get_hex_digit+0xba>
  4030ac:	80 3d 15 40 00 00 00 	cmpb   $0x0,0x4015(%rip)        # 4070c8 <infile_is_tty>
  4030b3:	75 7e                	jne    403133 <get_hex_digit+0xca>
  4030b5:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  4030bb:	48 89 ef             	mov    %rbp,%rdi
  4030be:	ff 15 1c 3f 00 00    	call   *0x3f1c(%rip)        # 406fe0 <getc@GLIBC_2.2.5>
  4030c4:	89 c3                	mov    %eax,%ebx
  4030c6:	83 f8 ff             	cmp    $0xffffffff,%eax
  4030c9:	74 51                	je     40311c <get_hex_digit+0xb3>
  4030cb:	83 f8 0d             	cmp    $0xd,%eax
  4030ce:	74 b0                	je     403080 <get_hex_digit+0x17>
  4030d0:	48 8b 35 b9 3f 00 00 	mov    0x3fb9(%rip),%rsi        # 407090 <input_buf>
  4030d7:	48 85 f6             	test   %rsi,%rsi
  4030da:	74 08                	je     4030e4 <get_hex_digit+0x7b>
  4030dc:	89 c7                	mov    %eax,%edi
  4030de:	ff 15 44 3e 00 00    	call   *0x3e44(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  4030e4:	83 fb 0a             	cmp    $0xa,%ebx
  4030e7:	74 7a                	je     403163 <get_hex_digit+0xfa>
  4030e9:	45 84 e4             	test   %r12b,%r12b
  4030ec:	75 cd                	jne    4030bb <get_hex_digit+0x52>
  4030ee:	83 fb 23             	cmp    $0x23,%ebx
  4030f1:	74 85                	je     403078 <get_hex_digit+0xf>
  4030f3:	83 fb 09             	cmp    $0x9,%ebx
  4030f6:	0f 94 c0             	sete   %al
  4030f9:	83 fb 20             	cmp    $0x20,%ebx
  4030fc:	0f 94 c2             	sete   %dl
  4030ff:	08 d0                	or     %dl,%al
  403101:	75 b8                	jne    4030bb <get_hex_digit+0x52>
  403103:	ff 15 df 3e 00 00    	call   *0x3edf(%rip)        # 406fe8 <__ctype_b_loc@GLIBC_2.3>
  403109:	48 8b 00             	mov    (%rax),%rax
  40310c:	48 63 d3             	movslq %ebx,%rdx
  40310f:	0f b7 04 50          	movzwl (%rax,%rdx,2),%eax
  403113:	f6 c4 10             	test   $0x10,%ah
  403116:	0f 84 88 00 00 00    	je     4031a4 <get_hex_digit+0x13b>
  40311c:	89 d8                	mov    %ebx,%eax
  40311e:	5b                   	pop    %rbx
  40311f:	5d                   	pop    %rbp
  403120:	41 5c                	pop    %r12
  403122:	c3                   	ret    
  403123:	48 89 ee             	mov    %rbp,%rsi
  403126:	89 c7                	mov    %eax,%edi
  403128:	ff 15 42 3e 00 00    	call   *0x3e42(%rip)        # 406f70 <ungetc@GLIBC_2.2.5>
  40312e:	e9 79 ff ff ff       	jmp    4030ac <get_hex_digit+0x43>
  403133:	48 8b 0d e6 3e 00 00 	mov    0x3ee6(%rip),%rcx        # 407020 <stdout@GLIBC_2.2.5>
  40313a:	ba 0c 00 00 00       	mov    $0xc,%edx
  40313f:	be 01 00 00 00       	mov    $0x1,%esi
  403144:	48 8d 3d 0d 13 00 00 	lea    0x130d(%rip),%rdi        # 404458 <is_checker+0x244>
  40314b:	ff 15 6f 3e 00 00    	call   *0x3e6f(%rip)        # 406fc0 <fwrite@GLIBC_2.2.5>
  403151:	48 8b 3d c8 3e 00 00 	mov    0x3ec8(%rip),%rdi        # 407020 <stdout@GLIBC_2.2.5>
  403158:	ff 15 0a 3e 00 00    	call   *0x3e0a(%rip)        # 406f68 <fflush@GLIBC_2.2.5>
  40315e:	e9 52 ff ff ff       	jmp    4030b5 <get_hex_digit+0x4c>
  403163:	80 3d 5e 3f 00 00 00 	cmpb   $0x0,0x3f5e(%rip)        # 4070c8 <infile_is_tty>
  40316a:	75 0b                	jne    403177 <get_hex_digit+0x10e>
  40316c:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  403172:	e9 44 ff ff ff       	jmp    4030bb <get_hex_digit+0x52>
  403177:	48 8b 0d a2 3e 00 00 	mov    0x3ea2(%rip),%rcx        # 407020 <stdout@GLIBC_2.2.5>
  40317e:	ba 0c 00 00 00       	mov    $0xc,%edx
  403183:	be 01 00 00 00       	mov    $0x1,%esi
  403188:	48 8d 3d c9 12 00 00 	lea    0x12c9(%rip),%rdi        # 404458 <is_checker+0x244>
  40318f:	ff 15 2b 3e 00 00    	call   *0x3e2b(%rip)        # 406fc0 <fwrite@GLIBC_2.2.5>
  403195:	48 8b 3d 84 3e 00 00 	mov    0x3e84(%rip),%rdi        # 407020 <stdout@GLIBC_2.2.5>
  40319c:	ff 15 c6 3d 00 00    	call   *0x3dc6(%rip)        # 406f68 <fflush@GLIBC_2.2.5>
  4031a2:	eb c8                	jmp    40316c <get_hex_digit+0x103>
  4031a4:	66 85 c0             	test   %ax,%ax
  4031a7:	78 2b                	js     4031d4 <get_hex_digit+0x16b>
  4031a9:	89 d9                	mov    %ebx,%ecx
  4031ab:	48 8d 15 16 13 00 00 	lea    0x1316(%rip),%rdx        # 4044c8 <is_checker+0x2b4>
  4031b2:	be 01 00 00 00       	mov    $0x1,%esi
  4031b7:	48 8b 3d c2 3e 00 00 	mov    0x3ec2(%rip),%rdi        # 407080 <stderr@GLIBC_2.2.5>
  4031be:	b8 00 00 00 00       	mov    $0x0,%eax
  4031c3:	ff 15 ff 3d 00 00    	call   *0x3dff(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  4031c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4031ce:	ff 15 e4 3d 00 00    	call   *0x3de4(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  4031d4:	89 d9                	mov    %ebx,%ecx
  4031d6:	48 8d 15 c3 12 00 00 	lea    0x12c3(%rip),%rdx        # 4044a0 <is_checker+0x28c>
  4031dd:	be 01 00 00 00       	mov    $0x1,%esi
  4031e2:	48 8b 3d 97 3e 00 00 	mov    0x3e97(%rip),%rdi        # 407080 <stderr@GLIBC_2.2.5>
  4031e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4031ee:	ff 15 d4 3d 00 00    	call   *0x3dd4(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  4031f4:	eb d3                	jmp    4031c9 <get_hex_digit+0x160>

00000000004031f6 <decode_hex_digit>:
  4031f6:	8d 47 d0             	lea    -0x30(%rdi),%eax
  4031f9:	83 f8 09             	cmp    $0x9,%eax
  4031fc:	76 22                	jbe    403220 <decode_hex_digit+0x2a>
  4031fe:	8d 47 bf             	lea    -0x41(%rdi),%eax
  403201:	83 f8 05             	cmp    $0x5,%eax
  403204:	77 04                	ja     40320a <decode_hex_digit+0x14>
  403206:	8d 47 c9             	lea    -0x37(%rdi),%eax
  403209:	c3                   	ret    
  40320a:	8d 47 9f             	lea    -0x61(%rdi),%eax
  40320d:	83 f8 05             	cmp    $0x5,%eax
  403210:	77 04                	ja     403216 <decode_hex_digit+0x20>
  403212:	8d 47 a9             	lea    -0x57(%rdi),%eax
  403215:	c3                   	ret    
  403216:	48 83 ec 08          	sub    $0x8,%rsp
  40321a:	ff 15 a8 3c 00 00    	call   *0x3ca8(%rip)        # 406ec8 <abort@GLIBC_2.2.5>
  403220:	c3                   	ret    

0000000000403221 <launch_in_altstack>:
  403221:	55                   	push   %rbp
  403222:	48 89 e5             	mov    %rsp,%rbp
  403225:	48 83 ec 10          	sub    $0x10,%rsp
  403229:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403230:	00 00 
  403232:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  403236:	31 c0                	xor    %eax,%eax
  403238:	48 8b 05 81 3e 00 00 	mov    0x3e81(%rip),%rax        # 4070c0 <launch_stack_offset>
  40323f:	48 83 c0 17          	add    $0x17,%rax
  403243:	48 89 c1             	mov    %rax,%rcx
  403246:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40324a:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  403250:	48 89 e2             	mov    %rsp,%rdx
  403253:	48 29 c2             	sub    %rax,%rdx
  403256:	48 39 d4             	cmp    %rdx,%rsp
  403259:	74 12                	je     40326d <launch_in_altstack+0x4c>
  40325b:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  403262:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  403269:	00 00 
  40326b:	eb e9                	jmp    403256 <launch_in_altstack+0x35>
  40326d:	48 89 c8             	mov    %rcx,%rax
  403270:	25 ff 0f 00 00       	and    $0xfff,%eax
  403275:	48 29 c4             	sub    %rax,%rsp
  403278:	48 85 c0             	test   %rax,%rax
  40327b:	74 06                	je     403283 <launch_in_altstack+0x62>
  40327d:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  403283:	48 8d 44 24 0f       	lea    0xf(%rsp),%rax
  403288:	48 a9 f0 ff ff ff    	test   $0xfffffffffffffff0,%rax
  40328e:	74 20                	je     4032b0 <launch_in_altstack+0x8f>
  403290:	80 3d 31 3e 00 00 00 	cmpb   $0x0,0x3e31(%rip)        # 4070c8 <infile_is_tty>
  403297:	75 2f                	jne    4032c8 <launch_in_altstack+0xa7>
  403299:	c7 05 f9 3d 00 00 00 	movl   $0x0,0x3df9(%rip)        # 40709c <vlevel>
  4032a0:	00 00 00 
  4032a3:	48 8b 3d 0e 3e 00 00 	mov    0x3e0e(%rip),%rdi        # 4070b8 <launch_infile>
  4032aa:	67 e8 c6 f6 ff ff    	addr32 call 402976 <test>
  4032b0:	48 8d 3d ae 11 00 00 	lea    0x11ae(%rip),%rdi        # 404465 <is_checker+0x251>
  4032b7:	ff 15 e3 3c 00 00    	call   *0x3ce3(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  4032bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4032c2:	ff 15 f0 3c 00 00    	call   *0x3cf0(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  4032c8:	8b 15 ca 3d 00 00    	mov    0x3dca(%rip),%edx        # 407098 <cookie>
  4032ce:	48 8d 35 97 11 00 00 	lea    0x1197(%rip),%rsi        # 40446c <is_checker+0x258>
  4032d5:	bf 01 00 00 00       	mov    $0x1,%edi
  4032da:	b8 00 00 00 00       	mov    $0x0,%eax
  4032df:	ff 15 a3 3c 00 00    	call   *0x3ca3(%rip)        # 406f88 <__printf_chk@GLIBC_2.3.4>
  4032e5:	48 8b 3d 34 3d 00 00 	mov    0x3d34(%rip),%rdi        # 407020 <stdout@GLIBC_2.2.5>
  4032ec:	ff 15 76 3c 00 00    	call   *0x3c76(%rip)        # 406f68 <fflush@GLIBC_2.2.5>
  4032f2:	eb a5                	jmp    403299 <launch_in_altstack+0x78>

00000000004032f4 <print_line>:
  4032f4:	41 54                	push   %r12
  4032f6:	55                   	push   %rbp
  4032f7:	53                   	push   %rbx
  4032f8:	48 89 fb             	mov    %rdi,%rbx
  4032fb:	bd 00 00 00 00       	mov    $0x0,%ebp
  403300:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  403306:	eb 22                	jmp    40332a <print_line+0x36>
  403308:	40 0f b6 ff          	movzbl %dil,%edi
  40330c:	48 8b 35 0d 3d 00 00 	mov    0x3d0d(%rip),%rsi        # 407020 <stdout@GLIBC_2.2.5>
  403313:	ff 15 0f 3c 00 00    	call   *0x3c0f(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  403319:	80 3b 0a             	cmpb   $0xa,(%rbx)
  40331c:	40 0f 94 c5          	sete   %bpl
  403320:	48 83 c3 01          	add    $0x1,%rbx
  403324:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40332a:	ff 15 b8 3c 00 00    	call   *0x3cb8(%rip)        # 406fe8 <__ctype_b_loc@GLIBC_2.3>
  403330:	48 8b 00             	mov    (%rax),%rax
  403333:	0f b6 3b             	movzbl (%rbx),%edi
  403336:	40 0f b6 d7          	movzbl %dil,%edx
  40333a:	66 83 3c 50 00       	cmpw   $0x0,(%rax,%rdx,2)
  40333f:	78 c7                	js     403308 <print_line+0x14>
  403341:	40 80 ff 20          	cmp    $0x20,%dil
  403345:	74 c1                	je     403308 <print_line+0x14>
  403347:	40 80 ff 09          	cmp    $0x9,%dil
  40334b:	74 bb                	je     403308 <print_line+0x14>
  40334d:	40 80 ff 0a          	cmp    $0xa,%dil
  403351:	74 b5                	je     403308 <print_line+0x14>
  403353:	83 f5 01             	xor    $0x1,%ebp
  403356:	44 84 e5             	test   %r12b,%bpl
  403359:	75 12                	jne    40336d <print_line+0x79>
  40335b:	48 8b 3d be 3c 00 00 	mov    0x3cbe(%rip),%rdi        # 407020 <stdout@GLIBC_2.2.5>
  403362:	ff 15 00 3c 00 00    	call   *0x3c00(%rip)        # 406f68 <fflush@GLIBC_2.2.5>
  403368:	5b                   	pop    %rbx
  403369:	5d                   	pop    %rbp
  40336a:	41 5c                	pop    %r12
  40336c:	c3                   	ret    
  40336d:	48 8b 35 ac 3c 00 00 	mov    0x3cac(%rip),%rsi        # 407020 <stdout@GLIBC_2.2.5>
  403374:	bf 0a 00 00 00       	mov    $0xa,%edi
  403379:	ff 15 a9 3b 00 00    	call   *0x3ba9(%rip)        # 406f28 <putc@GLIBC_2.2.5>
  40337f:	eb da                	jmp    40335b <print_line+0x67>

0000000000403381 <get_hex_byte>:
  403381:	55                   	push   %rbp
  403382:	53                   	push   %rbx
  403383:	48 83 ec 08          	sub    $0x8,%rsp
  403387:	48 89 fd             	mov    %rdi,%rbp
  40338a:	e8 da fc ff ff       	call   403069 <get_hex_digit>
  40338f:	89 c3                	mov    %eax,%ebx
  403391:	83 f8 ff             	cmp    $0xffffffff,%eax
  403394:	74 24                	je     4033ba <get_hex_byte+0x39>
  403396:	48 89 ef             	mov    %rbp,%rdi
  403399:	e8 cb fc ff ff       	call   403069 <get_hex_digit>
  40339e:	89 c5                	mov    %eax,%ebp
  4033a0:	83 f8 ff             	cmp    $0xffffffff,%eax
  4033a3:	74 1e                	je     4033c3 <get_hex_byte+0x42>
  4033a5:	89 df                	mov    %ebx,%edi
  4033a7:	e8 4a fe ff ff       	call   4031f6 <decode_hex_digit>
  4033ac:	c1 e0 04             	shl    $0x4,%eax
  4033af:	89 c3                	mov    %eax,%ebx
  4033b1:	89 ef                	mov    %ebp,%edi
  4033b3:	e8 3e fe ff ff       	call   4031f6 <decode_hex_digit>
  4033b8:	01 c3                	add    %eax,%ebx
  4033ba:	89 d8                	mov    %ebx,%eax
  4033bc:	48 83 c4 08          	add    $0x8,%rsp
  4033c0:	5b                   	pop    %rbx
  4033c1:	5d                   	pop    %rbp
  4033c2:	c3                   	ret    
  4033c3:	89 c3                	mov    %eax,%ebx
  4033c5:	eb f3                	jmp    4033ba <get_hex_byte+0x39>

00000000004033c7 <launch>:
  4033c7:	55                   	push   %rbp
  4033c8:	53                   	push   %rbx
  4033c9:	48 81 ec f8 03 00 00 	sub    $0x3f8,%rsp
  4033d0:	89 fb                	mov    %edi,%ebx
  4033d2:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  4033d7:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  4033dc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4033e3:	00 00 
  4033e5:	48 89 84 24 e8 03 00 	mov    %rax,0x3e8(%rsp)
  4033ec:	00 
  4033ed:	31 c0                	xor    %eax,%eax
  4033ef:	40 84 ff             	test   %dil,%dil
  4033f2:	74 7d                	je     403471 <launch+0xaa>
  4033f4:	bd 00 60 58 55       	mov    $0x55586000,%ebp
  4033f9:	84 db                	test   %bl,%bl
  4033fb:	74 7b                	je     403478 <launch+0xb1>
  4033fd:	b9 22 00 10 00       	mov    $0x100022,%ecx
  403402:	84 db                	test   %bl,%bl
  403404:	74 79                	je     40347f <launch+0xb8>
  403406:	ba 07 00 00 00       	mov    $0x7,%edx
  40340b:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  403411:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  403417:	be 00 00 10 00       	mov    $0x100000,%esi
  40341c:	48 89 ef             	mov    %rbp,%rdi
  40341f:	ff 15 e3 3a 00 00    	call   *0x3ae3(%rip)        # 406f08 <mmap@GLIBC_2.2.5>
  403425:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40342a:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40342e:	74 56                	je     403486 <launch+0xbf>
  403430:	48 81 fd 00 60 58 55 	cmp    $0x55586000,%rbp
  403437:	0f 95 c0             	setne  %al
  40343a:	84 d8                	test   %bl,%al
  40343c:	74 60                	je     40349e <launch+0xd7>
  40343e:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
  403443:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  403448:	48 8d 15 c9 10 00 00 	lea    0x10c9(%rip),%rdx        # 404518 <is_checker+0x304>
  40344f:	be 01 00 00 00       	mov    $0x1,%esi
  403454:	48 8b 3d 25 3c 00 00 	mov    0x3c25(%rip),%rdi        # 407080 <stderr@GLIBC_2.2.5>
  40345b:	b8 00 00 00 00       	mov    $0x0,%eax
  403460:	ff 15 62 3b 00 00    	call   *0x3b62(%rip)        # 406fc8 <__fprintf_chk@GLIBC_2.3.4>
  403466:	bf 01 00 00 00       	mov    $0x1,%edi
  40346b:	ff 15 47 3b 00 00    	call   *0x3b47(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  403471:	bd 00 00 00 00       	mov    $0x0,%ebp
  403476:	eb 81                	jmp    4033f9 <launch+0x32>
  403478:	b9 22 00 00 00       	mov    $0x22,%ecx
  40347d:	eb 83                	jmp    403402 <launch+0x3b>
  40347f:	ba 03 00 00 00       	mov    $0x3,%edx
  403484:	eb 85                	jmp    40340b <launch+0x44>
  403486:	48 8d 3d 6b 10 00 00 	lea    0x106b(%rip),%rdi        # 4044f8 <is_checker+0x2e4>
  40348d:	ff 15 0d 3b 00 00    	call   *0x3b0d(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  403493:	bf 01 00 00 00       	mov    $0x1,%edi
  403498:	ff 15 1a 3b 00 00    	call   *0x3b1a(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  40349e:	ba 00 00 10 00       	mov    $0x100000,%edx
  4034a3:	be f4 00 00 00       	mov    $0xf4,%esi
  4034a8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4034ad:	ff 15 5d 3a 00 00    	call   *0x3a5d(%rip)        # 406f10 <memset@GLIBC_2.2.5>
  4034b3:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  4034b8:	ff 15 1a 3b 00 00    	call   *0x3b1a(%rip)        # 406fd8 <getcontext@GLIBC_2.2.5>
  4034be:	85 c0                	test   %eax,%eax
  4034c0:	74 18                	je     4034da <launch+0x113>
  4034c2:	48 8d 3d be 0f 00 00 	lea    0xfbe(%rip),%rdi        # 404487 <is_checker+0x273>
  4034c9:	ff 15 d1 3a 00 00    	call   *0x3ad1(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  4034cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4034d4:	ff 15 de 3a 00 00    	call   *0x3ade(%rip)        # 406fb8 <exit@GLIBC_2.2.5>
  4034da:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4034df:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4034e4:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%rsp)
  4034eb:	00 
  4034ec:	48 c7 44 24 40 00 00 	movq   $0x100000,0x40(%rsp)
  4034f3:	10 00 
  4034f5:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  4034fc:	00 00 
  4034fe:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  403503:	ba 00 00 00 00       	mov    $0x0,%edx
  403508:	48 8d 35 12 fd ff ff 	lea    -0x2ee(%rip),%rsi        # 403221 <launch_in_altstack>
  40350f:	48 89 df             	mov    %rbx,%rdi
  403512:	b8 00 00 00 00       	mov    $0x0,%eax
  403517:	ff 15 2b 3a 00 00    	call   *0x3a2b(%rip)        # 406f48 <makecontext@GLIBC_2.2.5>
  40351d:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  403522:	48 89 05 97 3b 00 00 	mov    %rax,0x3b97(%rip)        # 4070c0 <launch_stack_offset>
  403529:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40352e:	48 89 05 83 3b 00 00 	mov    %rax,0x3b83(%rip)        # 4070b8 <launch_infile>
  403535:	48 89 c7             	mov    %rax,%rdi
  403538:	ff 15 1a 3a 00 00    	call   *0x3a1a(%rip)        # 406f58 <fileno@GLIBC_2.2.5>
  40353e:	89 c7                	mov    %eax,%edi
  403540:	ff 15 aa 39 00 00    	call   *0x39aa(%rip)        # 406ef0 <isatty@GLIBC_2.2.5>
  403546:	85 c0                	test   %eax,%eax
  403548:	0f 95 05 79 3b 00 00 	setne  0x3b79(%rip)        # 4070c8 <infile_is_tty>
  40354f:	48 89 df             	mov    %rbx,%rdi
  403552:	ff 15 d8 39 00 00    	call   *0x39d8(%rip)        # 406f30 <setcontext@GLIBC_2.2.5>
  403558:	48 8d 3d 33 0f 00 00 	lea    0xf33(%rip),%rdi        # 404492 <is_checker+0x27e>
  40355f:	ff 15 3b 3a 00 00    	call   *0x3a3b(%rip)        # 406fa0 <perror@GLIBC_2.2.5>
  403565:	bf 01 00 00 00       	mov    $0x1,%edi
  40356a:	ff 15 48 3a 00 00    	call   *0x3a48(%rip)        # 406fb8 <exit@GLIBC_2.2.5>

0000000000403570 <check>:
  403570:	89 f8                	mov    %edi,%eax
  403572:	c1 e8 1c             	shr    $0x1c,%eax
  403575:	74 1d                	je     403594 <check+0x24>
  403577:	b9 00 00 00 00       	mov    $0x0,%ecx
  40357c:	83 f9 1f             	cmp    $0x1f,%ecx
  40357f:	7f 0d                	jg     40358e <check+0x1e>
  403581:	89 f8                	mov    %edi,%eax
  403583:	d3 e8                	shr    %cl,%eax
  403585:	3c 0a                	cmp    $0xa,%al
  403587:	74 11                	je     40359a <check+0x2a>
  403589:	83 c1 08             	add    $0x8,%ecx
  40358c:	eb ee                	jmp    40357c <check+0xc>
  40358e:	b8 01 00 00 00       	mov    $0x1,%eax
  403593:	c3                   	ret    
  403594:	b8 00 00 00 00       	mov    $0x0,%eax
  403599:	c3                   	ret    
  40359a:	b8 00 00 00 00       	mov    $0x0,%eax
  40359f:	c3                   	ret    

00000000004035a0 <gencookie>:
  4035a0:	53                   	push   %rbx
  4035a1:	83 c7 01             	add    $0x1,%edi
  4035a4:	ff 15 26 39 00 00    	call   *0x3926(%rip)        # 406ed0 <srandom@GLIBC_2.2.5>
  4035aa:	ff 15 b0 39 00 00    	call   *0x39b0(%rip)        # 406f60 <random@GLIBC_2.2.5>
  4035b0:	89 c3                	mov    %eax,%ebx
  4035b2:	89 c7                	mov    %eax,%edi
  4035b4:	e8 b7 ff ff ff       	call   403570 <check>
  4035b9:	85 c0                	test   %eax,%eax
  4035bb:	74 ed                	je     4035aa <gencookie+0xa>
  4035bd:	89 d8                	mov    %ebx,%eax
  4035bf:	5b                   	pop    %rbx
  4035c0:	c3                   	ret    

Disassembly of section .fini:

00000000004035c4 <_fini>:
  4035c4:	f3 0f 1e fa          	endbr64 
  4035c8:	48 83 ec 08          	sub    $0x8,%rsp
  4035cc:	48 83 c4 08          	add    $0x8,%rsp
  4035d0:	c3                   	ret    
