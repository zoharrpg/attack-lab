
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 29 3f 00 00 	mov    0x3f29(%rip),%rax        # 405f38 <__gmon_start__@Base>
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
  40203f:	ff 15 7b 3e 00 00    	call   *0x3e7b(%rip)        # 405ec0 <__libc_start_main@GLIBC_2.34>
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
  402060:	b8 18 60 40 00       	mov    $0x406018,%eax
  402065:	48 3d 18 60 40 00    	cmp    $0x406018,%rax
  40206b:	74 13                	je     402080 <deregister_tm_clones+0x20>
  40206d:	b8 00 00 00 00       	mov    $0x0,%eax
  402072:	48 85 c0             	test   %rax,%rax
  402075:	74 09                	je     402080 <deregister_tm_clones+0x20>
  402077:	bf 18 60 40 00       	mov    $0x406018,%edi
  40207c:	ff e0                	jmp    *%rax
  40207e:	66 90                	xchg   %ax,%ax
  402080:	c3                   	ret    
  402081:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402088:	00 00 00 00 
  40208c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402090 <register_tm_clones>:
  402090:	be 18 60 40 00       	mov    $0x406018,%esi
  402095:	48 81 ee 18 60 40 00 	sub    $0x406018,%rsi
  40209c:	48 89 f0             	mov    %rsi,%rax
  40209f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4020a3:	48 c1 f8 03          	sar    $0x3,%rax
  4020a7:	48 01 c6             	add    %rax,%rsi
  4020aa:	48 d1 fe             	sar    %rsi
  4020ad:	74 11                	je     4020c0 <register_tm_clones+0x30>
  4020af:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b4:	48 85 c0             	test   %rax,%rax
  4020b7:	74 07                	je     4020c0 <register_tm_clones+0x30>
  4020b9:	bf 18 60 40 00       	mov    $0x406018,%edi
  4020be:	ff e0                	jmp    *%rax
  4020c0:	c3                   	ret    
  4020c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4020c8:	00 00 00 00 
  4020cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004020d0 <__do_global_dtors_aux>:
  4020d0:	f3 0f 1e fa          	endbr64 
  4020d4:	80 3d ad 3f 00 00 00 	cmpb   $0x0,0x3fad(%rip)        # 406088 <completed.0>
  4020db:	75 13                	jne    4020f0 <__do_global_dtors_aux+0x20>
  4020dd:	55                   	push   %rbp
  4020de:	48 89 e5             	mov    %rsp,%rbp
  4020e1:	e8 7a ff ff ff       	call   402060 <deregister_tm_clones>
  4020e6:	c6 05 9b 3f 00 00 01 	movb   $0x1,0x3f9b(%rip)        # 406088 <completed.0>
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
  402126:	ff 15 5c 3e 00 00    	call   *0x3e5c(%rip)        # 405f88 <__printf_chk@GLIBC_2.3.4>
  40212c:	89 df                	mov    %ebx,%edi
  40212e:	ff 15 84 3e 00 00    	call   *0x3e84(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402134:	48 8d 35 95 1f 00 00 	lea    0x1f95(%rip),%rsi        # 4040d0 <_IO_stdin_used+0xd0>
  40213b:	bf 01 00 00 00       	mov    $0x1,%edi
  402140:	b8 00 00 00 00       	mov    $0x0,%eax
  402145:	ff 15 3d 3e 00 00    	call   *0x3e3d(%rip)        # 405f88 <__printf_chk@GLIBC_2.3.4>
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
  402174:	4c 8b 25 b5 3e 00 00 	mov    0x3eb5(%rip),%r12        # 406030 <stdin@GLIBC_2.2.5>
  40217b:	c7 44 24 0c 05 00 00 	movl   $0x5,0xc(%rsp)
  402182:	00 
  402183:	4c 89 ea             	mov    %r13,%rdx
  402186:	48 89 de             	mov    %rbx,%rsi
  402189:	89 ef                	mov    %ebp,%edi
  40218b:	ff 15 17 3e 00 00    	call   *0x3e17(%rip)        # 405fa8 <getopt@GLIBC_2.2.5>
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
  4021ca:	48 8b 3d 8f 3e 00 00 	mov    0x3e8f(%rip),%rdi        # 406060 <optarg@GLIBC_2.2.5>
  4021d1:	ff 15 d9 3d 00 00    	call   *0x3dd9(%rip)        # 405fb0 <strtoul@GLIBC_2.2.5>
  4021d7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4021db:	eb a6                	jmp    402183 <main+0x36>
  4021dd:	44 8b 2d 54 3e 00 00 	mov    0x3e54(%rip),%r13d        # 406038 <optind@GLIBC_2.2.5>
  4021e4:	41 bf 00 00 00 00    	mov    $0x0,%r15d
  4021ea:	eb 29                	jmp    402215 <main+0xc8>
  4021ec:	4c 39 25 3d 3e 00 00 	cmp    %r12,0x3e3d(%rip)        # 406030 <stdin@GLIBC_2.2.5>
  4021f3:	75 63                	jne    402258 <main+0x10b>
  4021f5:	49 63 c5             	movslq %r13d,%rax
  4021f8:	48 8d 35 61 20 00 00 	lea    0x2061(%rip),%rsi        # 404260 <is_checker+0x4c>
  4021ff:	48 8b 3c c3          	mov    (%rbx,%rax,8),%rdi
  402203:	ff 15 8f 3d 00 00    	call   *0x3d8f(%rip)        # 405f98 <fopen@GLIBC_2.2.5>
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
  402235:	ff 15 05 3d 00 00    	call   *0x3d05(%rip)        # 405f40 <strtol@GLIBC_2.2.5>
  40223b:	41 89 c7             	mov    %eax,%r15d
  40223e:	eb d1                	jmp    402211 <main+0xc4>
  402240:	48 8b 3d 19 3e 00 00 	mov    0x3e19(%rip),%rdi        # 406060 <optarg@GLIBC_2.2.5>
  402247:	ff 15 53 3d 00 00    	call   *0x3d53(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  40224d:	bf 01 00 00 00       	mov    $0x1,%edi
  402252:	ff 15 60 3d 00 00    	call   *0x3d60(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402258:	48 8b 0b             	mov    (%rbx),%rcx
  40225b:	48 8d 15 e0 1e 00 00 	lea    0x1ee0(%rip),%rdx        # 404142 <_IO_stdin_used+0x142>
  402262:	be 01 00 00 00       	mov    $0x1,%esi
  402267:	48 8b 3d 12 3e 00 00 	mov    0x3e12(%rip),%rdi        # 406080 <stderr@GLIBC_2.2.5>
  40226e:	b8 00 00 00 00       	mov    $0x0,%eax
  402273:	ff 15 4f 3d 00 00    	call   *0x3d4f(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  402279:	be 01 00 00 00       	mov    $0x1,%esi
  40227e:	48 8b 3b             	mov    (%rbx),%rdi
  402281:	e8 80 fe ff ff       	call   402106 <usage>
  402286:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  40228a:	44 89 ff             	mov    %r15d,%edi
  40228d:	67 e8 2f 0c 00 00    	addr32 call 402ec2 <initialize_target>
  402293:	48 89 c6             	mov    %rax,%rsi
  402296:	80 3d c3 1e 00 00 63 	cmpb   $0x63,0x1ec3(%rip)        # 404160 <target_prefix>
  40229d:	40 0f 94 c7          	sete   %dil
  4022a1:	40 0f b6 ff          	movzbl %dil,%edi
  4022a5:	4c 89 e2             	mov    %r12,%rdx
  4022a8:	67 e8 fd 0f 00 00    	addr32 call 4032ab <launch>

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
  4026f7:	ff 15 03 38 00 00    	call   *0x3803(%rip)        # 405f00 <__stack_chk_fail@GLIBC_2.4>

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
  402714:	67 e8 4b 0b 00 00    	addr32 call 403265 <get_hex_byte>
  40271a:	83 f8 ff             	cmp    $0xffffffff,%eax
  40271d:	74 05                	je     402724 <decode_line+0x27>
  40271f:	83 f8 0a             	cmp    $0xa,%eax
  402722:	75 e7                	jne    40270b <decode_line+0xe>
  402724:	c6 03 00             	movb   $0x0,(%rbx)
  402727:	48 89 e7             	mov    %rsp,%rdi
  40272a:	67 e8 a8 0a 00 00    	addr32 call 4031d8 <print_line>
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
  40275d:	ff 15 4d 38 00 00    	call   *0x384d(%rip)        # 405fb0 <strtoul@GLIBC_2.2.5>
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
  4027a9:	ff 15 51 37 00 00    	call   *0x3751(%rip)        # 405f00 <__stack_chk_fail@GLIBC_2.4>

00000000004027af <report_touch3>:
  4027af:	53                   	push   %rbx
  4027b0:	48 89 fa             	mov    %rdi,%rdx
  4027b3:	48 89 f3             	mov    %rsi,%rbx
  4027b6:	48 8d 35 b8 19 00 00 	lea    0x19b8(%rip),%rsi        # 404175 <target_prefix+0x15>
  4027bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4027c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c7:	ff 15 bb 37 00 00    	call   *0x37bb(%rip)        # 405f88 <__printf_chk@GLIBC_2.3.4>
  4027cd:	eb 1f                	jmp    4027ee <report_touch3+0x3f>
  4027cf:	40 0f b6 d7          	movzbl %dil,%edx
  4027d3:	48 8d 35 b3 19 00 00 	lea    0x19b3(%rip),%rsi        # 40418d <target_prefix+0x2d>
  4027da:	bf 01 00 00 00       	mov    $0x1,%edi
  4027df:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e4:	ff 15 9e 37 00 00    	call   *0x379e(%rip)        # 405f88 <__printf_chk@GLIBC_2.3.4>
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
  40280d:	48 8b 35 0c 38 00 00 	mov    0x380c(%rip),%rsi        # 406020 <stdout@GLIBC_2.2.5>
  402814:	ff 15 0e 37 00 00    	call   *0x370e(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  40281a:	eb ce                	jmp    4027ea <report_touch3+0x3b>
  40281c:	48 8b 35 fd 37 00 00 	mov    0x37fd(%rip),%rsi        # 406020 <stdout@GLIBC_2.2.5>
  402823:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402828:	ff 15 fa 36 00 00    	call   *0x36fa(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  40282e:	48 8b 35 eb 37 00 00 	mov    0x37eb(%rip),%rsi        # 406020 <stdout@GLIBC_2.2.5>
  402835:	bf 5c 00 00 00       	mov    $0x5c,%edi
  40283a:	ff 15 e8 36 00 00    	call   *0x36e8(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  402840:	eb a8                	jmp    4027ea <report_touch3+0x3b>
  402842:	48 8b 35 d7 37 00 00 	mov    0x37d7(%rip),%rsi        # 406020 <stdout@GLIBC_2.2.5>
  402849:	bf 5c 00 00 00       	mov    $0x5c,%edi
  40284e:	ff 15 d4 36 00 00    	call   *0x36d4(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  402854:	48 8b 35 c5 37 00 00 	mov    0x37c5(%rip),%rsi        # 406020 <stdout@GLIBC_2.2.5>
  40285b:	bf 22 00 00 00       	mov    $0x22,%edi
  402860:	ff 15 c2 36 00 00    	call   *0x36c2(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  402866:	eb 82                	jmp    4027ea <report_touch3+0x3b>
  402868:	48 8d 3d 25 19 00 00 	lea    0x1925(%rip),%rdi        # 404194 <target_prefix+0x34>
  40286f:	ff 15 6b 36 00 00    	call   *0x366b(%rip)        # 405ee0 <puts@GLIBC_2.2.5>
  402875:	5b                   	pop    %rbx
  402876:	c3                   	ret    

0000000000402877 <touch1>:
  402877:	55                   	push   %rbp
  402878:	48 89 e5             	mov    %rsp,%rbp
  40287b:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40287f:	c7 05 13 38 00 00 01 	movl   $0x1,0x3813(%rip)        # 40609c <vlevel>
  402886:	00 00 00 
  402889:	48 8d 3d 07 19 00 00 	lea    0x1907(%rip),%rdi        # 404197 <target_prefix+0x37>
  402890:	ff 15 4a 36 00 00    	call   *0x364a(%rip)        # 405ee0 <puts@GLIBC_2.2.5>
  402896:	be 01 00 00 00       	mov    $0x1,%esi
  40289b:	bf 01 00 00 00       	mov    $0x1,%edi
  4028a0:	67 e8 ea 00 00 00    	addr32 call 402990 <validate>

00000000004028a6 <touch2>:
  4028a6:	55                   	push   %rbp
  4028a7:	48 89 e5             	mov    %rsp,%rbp
  4028aa:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4028ae:	89 fa                	mov    %edi,%edx
  4028b0:	c7 05 e2 37 00 00 02 	movl   $0x2,0x37e2(%rip)        # 40609c <vlevel>
  4028b7:	00 00 00 
  4028ba:	39 3d d8 37 00 00    	cmp    %edi,0x37d8(%rip)        # 406098 <cookie>
  4028c0:	74 27                	je     4028e9 <touch2+0x43>
  4028c2:	48 8d 35 27 19 00 00 	lea    0x1927(%rip),%rsi        # 4041f0 <target_prefix+0x90>
  4028c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4028ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4028d3:	ff 15 af 36 00 00    	call   *0x36af(%rip)        # 405f88 <__printf_chk@GLIBC_2.3.4>
  4028d9:	be 00 00 00 00       	mov    $0x0,%esi
  4028de:	bf 02 00 00 00       	mov    $0x2,%edi
  4028e3:	67 e8 a7 00 00 00    	addr32 call 402990 <validate>
  4028e9:	48 8d 35 d8 18 00 00 	lea    0x18d8(%rip),%rsi        # 4041c8 <target_prefix+0x68>
  4028f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4028f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4028fa:	ff 15 88 36 00 00    	call   *0x3688(%rip)        # 405f88 <__printf_chk@GLIBC_2.3.4>
  402900:	be 01 00 00 00       	mov    $0x1,%esi
  402905:	bf 02 00 00 00       	mov    $0x2,%edi
  40290a:	67 e8 80 00 00 00    	addr32 call 402990 <validate>

0000000000402910 <touch3>:
  402910:	55                   	push   %rbp
  402911:	48 89 e5             	mov    %rsp,%rbp
  402914:	53                   	push   %rbx
  402915:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402919:	48 89 fb             	mov    %rdi,%rbx
  40291c:	c7 05 76 37 00 00 03 	movl   $0x3,0x3776(%rip)        # 40609c <vlevel>
  402923:	00 00 00 
  402926:	48 89 fe             	mov    %rdi,%rsi
  402929:	8b 3d 69 37 00 00    	mov    0x3769(%rip),%edi        # 406098 <cookie>
  40292f:	e8 03 fe ff ff       	call   402737 <hexmatch>
  402934:	85 c0                	test   %eax,%eax
  402936:	74 1f                	je     402957 <touch3+0x47>
  402938:	48 89 de             	mov    %rbx,%rsi
  40293b:	48 8d 3d 72 18 00 00 	lea    0x1872(%rip),%rdi        # 4041b4 <target_prefix+0x54>
  402942:	e8 68 fe ff ff       	call   4027af <report_touch3>
  402947:	be 01 00 00 00       	mov    $0x1,%esi
  40294c:	bf 03 00 00 00       	mov    $0x3,%edi
  402951:	67 e8 39 00 00 00    	addr32 call 402990 <validate>
  402957:	48 89 de             	mov    %rbx,%rsi
  40295a:	48 8d 3d 5b 18 00 00 	lea    0x185b(%rip),%rdi        # 4041bc <target_prefix+0x5c>
  402961:	e8 49 fe ff ff       	call   4027af <report_touch3>
  402966:	be 00 00 00 00       	mov    $0x0,%esi
  40296b:	bf 03 00 00 00       	mov    $0x3,%edi
  402970:	67 e8 1a 00 00 00    	addr32 call 402990 <validate>

0000000000402976 <test>:
  402976:	50                   	push   %rax
  402977:	58                   	pop    %rax
  402978:	48 83 ec 08          	sub    $0x8,%rsp
  40297c:	67 e8 7b fd ff ff    	addr32 call 4026fd <decode_line>
  402982:	0f b6 3d 8b 18 00 00 	movzbl 0x188b(%rip),%edi        # 404214 <is_checker>
  402989:	ff 15 29 36 00 00    	call   *0x3629(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  40298f:	90                   	nop

0000000000402990 <validate>:
  402990:	8b 15 06 37 00 00    	mov    0x3706(%rip),%edx        # 40609c <vlevel>
  402996:	8b 0d 04 37 00 00    	mov    0x3704(%rip),%ecx        # 4060a0 <check_level>
  40299c:	e9 b6 04 00 00       	jmp    402e57 <validate_inner>

00000000004029a1 <save_and_submit>:
  4029a1:	41 57                	push   %r15
  4029a3:	41 56                	push   %r14
  4029a5:	41 55                	push   %r13
  4029a7:	41 54                	push   %r12
  4029a9:	55                   	push   %rbp
  4029aa:	53                   	push   %rbx
  4029ab:	48 83 ec 28          	sub    $0x28,%rsp
  4029af:	89 fd                	mov    %edi,%ebp
  4029b1:	41 89 f6             	mov    %esi,%r14d
  4029b4:	49 89 d4             	mov    %rdx,%r12
  4029b7:	49 89 cd             	mov    %rcx,%r13
  4029ba:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029c1:	00 00 
  4029c3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4029c8:	31 c0                	xor    %eax,%eax
  4029ca:	48 8b 3d bf 36 00 00 	mov    0x36bf(%rip),%rdi        # 406090 <input_buf>
  4029d1:	ff 15 91 35 00 00    	call   *0x3591(%rip)        # 405f68 <fflush@GLIBC_2.2.5>
  4029d7:	85 c0                	test   %eax,%eax
  4029d9:	0f 85 87 01 00 00    	jne    402b66 <save_and_submit+0x1c5>
  4029df:	44 0f be 3d 79 17 00 	movsbl 0x1779(%rip),%r15d        # 404160 <target_prefix>
  4029e6:	00 
  4029e7:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4029ec:	41 89 e8             	mov    %ebp,%r8d
  4029ef:	44 89 f9             	mov    %r15d,%ecx
  4029f2:	48 8d 15 3b 18 00 00 	lea    0x183b(%rip),%rdx        # 404234 <is_checker+0x20>
  4029f9:	be 01 00 00 00       	mov    $0x1,%esi
  4029fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402a03:	ff 15 17 35 00 00    	call   *0x3517(%rip)        # 405f20 <__asprintf_chk@GLIBC_2.8>
  402a09:	83 f8 ff             	cmp    $0xffffffff,%eax
  402a0c:	0f 84 6c 01 00 00    	je     402b7e <save_and_submit+0x1dd>
  402a12:	48 8d 35 38 18 00 00 	lea    0x1838(%rip),%rsi        # 404251 <is_checker+0x3d>
  402a19:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402a1e:	ff 15 74 35 00 00    	call   *0x3574(%rip)        # 405f98 <fopen@GLIBC_2.2.5>
  402a24:	48 89 c3             	mov    %rax,%rbx
  402a27:	48 85 c0             	test   %rax,%rax
  402a2a:	0f 84 66 01 00 00    	je     402b96 <save_and_submit+0x1f5>
  402a30:	45 84 f6             	test   %r14b,%r14b
  402a33:	0f 84 73 01 00 00    	je     402bac <save_and_submit+0x20b>
  402a39:	48 8d 0d d8 17 00 00 	lea    0x17d8(%rip),%rcx        # 404218 <is_checker+0x4>
  402a40:	45 89 f9             	mov    %r15d,%r9d
  402a43:	41 89 e8             	mov    %ebp,%r8d
  402a46:	48 8d 15 93 18 00 00 	lea    0x1893(%rip),%rdx        # 4042e0 <is_checker+0xcc>
  402a4d:	be 01 00 00 00       	mov    $0x1,%esi
  402a52:	48 89 df             	mov    %rbx,%rdi
  402a55:	b8 00 00 00 00       	mov    $0x0,%eax
  402a5a:	ff 15 68 35 00 00    	call   *0x3568(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  402a60:	4d 85 e4             	test   %r12,%r12
  402a63:	0f 95 c0             	setne  %al
  402a66:	4d 85 ed             	test   %r13,%r13
  402a69:	0f 95 c2             	setne  %dl
  402a6c:	84 c2                	test   %al,%dl
  402a6e:	0f 85 44 01 00 00    	jne    402bb8 <save_and_submit+0x217>
  402a74:	48 89 de             	mov    %rbx,%rsi
  402a77:	bf 0a 00 00 00       	mov    $0xa,%edi
  402a7c:	ff 15 96 34 00 00    	call   *0x3496(%rip)        # 405f18 <fputc@GLIBC_2.2.5>
  402a82:	48 89 d9             	mov    %rbx,%rcx
  402a85:	48 8b 15 1c 36 00 00 	mov    0x361c(%rip),%rdx        # 4060a8 <raw_exploit_len>
  402a8c:	be 01 00 00 00       	mov    $0x1,%esi
  402a91:	48 8b 3d 18 36 00 00 	mov    0x3618(%rip),%rdi        # 4060b0 <raw_exploit>
  402a98:	ff 15 22 35 00 00    	call   *0x3522(%rip)        # 405fc0 <fwrite@GLIBC_2.2.5>
  402a9e:	48 8b 15 0b 36 00 00 	mov    0x360b(%rip),%rdx        # 4060b0 <raw_exploit>
  402aa5:	48 8b 05 fc 35 00 00 	mov    0x35fc(%rip),%rax        # 4060a8 <raw_exploit_len>
  402aac:	80 7c 02 ff 0a       	cmpb   $0xa,-0x1(%rdx,%rax,1)
  402ab1:	0f 85 42 01 00 00    	jne    402bf9 <save_and_submit+0x258>
  402ab7:	48 89 df             	mov    %rbx,%rdi
  402aba:	ff 15 28 34 00 00    	call   *0x3428(%rip)        # 405ee8 <ferror@GLIBC_2.2.5>
  402ac0:	85 c0                	test   %eax,%eax
  402ac2:	0f 85 44 01 00 00    	jne    402c0c <save_and_submit+0x26b>
  402ac8:	48 89 df             	mov    %rbx,%rdi
  402acb:	ff 15 27 34 00 00    	call   *0x3427(%rip)        # 405ef8 <fclose@GLIBC_2.2.5>
  402ad1:	85 c0                	test   %eax,%eax
  402ad3:	0f 85 33 01 00 00    	jne    402c0c <save_and_submit+0x26b>
  402ad9:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402ade:	4c 8b 0d 5b 35 00 00 	mov    0x355b(%rip),%r9        # 406040 <__environ@GLIBC_2.2.5>
  402ae5:	4c 8d 05 d4 31 00 00 	lea    0x31d4(%rip),%r8        # 405cc0 <make_argv.0>
  402aec:	b9 00 00 00 00       	mov    $0x0,%ecx
  402af1:	ba 00 00 00 00       	mov    $0x0,%edx
  402af6:	48 8d 35 65 17 00 00 	lea    0x1765(%rip),%rsi        # 404262 <is_checker+0x4e>
  402afd:	ff 15 75 34 00 00    	call   *0x3475(%rip)        # 405f78 <posix_spawnp@GLIBC_2.15>
  402b03:	85 c0                	test   %eax,%eax
  402b05:	0f 85 19 01 00 00    	jne    402c24 <save_and_submit+0x283>
  402b0b:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  402b10:	ba 00 00 00 00       	mov    $0x0,%edx
  402b15:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  402b19:	ff 15 71 34 00 00    	call   *0x3471(%rip)        # 405f90 <waitpid@GLIBC_2.2.5>
  402b1f:	83 f8 ff             	cmp    $0xffffffff,%eax
  402b22:	0f 84 30 01 00 00    	je     402c58 <save_and_submit+0x2b7>
  402b28:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  402b2c:	89 cf                	mov    %ecx,%edi
  402b2e:	83 e7 7f             	and    $0x7f,%edi
  402b31:	0f 85 64 01 00 00    	jne    402c9b <save_and_submit+0x2fa>
  402b37:	0f b6 c5             	movzbl %ch,%eax
  402b3a:	f6 c5 ff             	test   $0xff,%ch
  402b3d:	0f 85 2d 01 00 00    	jne    402c70 <save_and_submit+0x2cf>
  402b43:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402b48:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402b4f:	00 00 
  402b51:	0f 85 ab 01 00 00    	jne    402d02 <save_and_submit+0x361>
  402b57:	48 83 c4 28          	add    $0x28,%rsp
  402b5b:	5b                   	pop    %rbx
  402b5c:	5d                   	pop    %rbp
  402b5d:	41 5c                	pop    %r12
  402b5f:	41 5d                	pop    %r13
  402b61:	41 5e                	pop    %r14
  402b63:	41 5f                	pop    %r15
  402b65:	c3                   	ret    
  402b66:	48 8d 3d bd 16 00 00 	lea    0x16bd(%rip),%rdi        # 40422a <is_checker+0x16>
  402b6d:	ff 15 2d 34 00 00    	call   *0x342d(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  402b73:	bf 01 00 00 00       	mov    $0x1,%edi
  402b78:	ff 15 3a 34 00 00    	call   *0x343a(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402b7e:	48 8d 3d c3 16 00 00 	lea    0x16c3(%rip),%rdi        # 404248 <is_checker+0x34>
  402b85:	ff 15 15 34 00 00    	call   *0x3415(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  402b8b:	bf 01 00 00 00       	mov    $0x1,%edi
  402b90:	ff 15 22 34 00 00    	call   *0x3422(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402b96:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402b9b:	ff 15 ff 33 00 00    	call   *0x33ff(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  402ba1:	bf 01 00 00 00       	mov    $0x1,%edi
  402ba6:	ff 15 0c 34 00 00    	call   *0x340c(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402bac:	48 8d 0d 70 16 00 00 	lea    0x1670(%rip),%rcx        # 404223 <is_checker+0xf>
  402bb3:	e9 88 fe ff ff       	jmp    402a40 <save_and_submit+0x9f>
  402bb8:	48 89 d9             	mov    %rbx,%rcx
  402bbb:	ba 02 00 00 00       	mov    $0x2,%edx
  402bc0:	be 01 00 00 00       	mov    $0x1,%esi
  402bc5:	48 8d 3d 87 16 00 00 	lea    0x1687(%rip),%rdi        # 404253 <is_checker+0x3f>
  402bcc:	ff 15 ee 33 00 00    	call   *0x33ee(%rip)        # 405fc0 <fwrite@GLIBC_2.2.5>
  402bd2:	4c 89 e9             	mov    %r13,%rcx
  402bd5:	4c 89 e2             	mov    %r12,%rdx
  402bd8:	be 01 00 00 00       	mov    $0x1,%esi
  402bdd:	48 89 df             	mov    %rbx,%rdi
  402be0:	ff 15 d2 32 00 00    	call   *0x32d2(%rip)        # 405eb8 <__vfprintf_chk@GLIBC_2.3.4>
  402be6:	48 89 de             	mov    %rbx,%rsi
  402be9:	bf 0a 00 00 00       	mov    $0xa,%edi
  402bee:	ff 15 24 33 00 00    	call   *0x3324(%rip)        # 405f18 <fputc@GLIBC_2.2.5>
  402bf4:	e9 7b fe ff ff       	jmp    402a74 <save_and_submit+0xd3>
  402bf9:	48 89 de             	mov    %rbx,%rsi
  402bfc:	bf 0a 00 00 00       	mov    $0xa,%edi
  402c01:	ff 15 11 33 00 00    	call   *0x3311(%rip)        # 405f18 <fputc@GLIBC_2.2.5>
  402c07:	e9 ab fe ff ff       	jmp    402ab7 <save_and_submit+0x116>
  402c0c:	48 8d 3d 43 16 00 00 	lea    0x1643(%rip),%rdi        # 404256 <is_checker+0x42>
  402c13:	ff 15 87 33 00 00    	call   *0x3387(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  402c19:	bf 01 00 00 00       	mov    $0x1,%edi
  402c1e:	ff 15 94 33 00 00    	call   *0x3394(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402c24:	89 c7                	mov    %eax,%edi
  402c26:	ff 15 a4 33 00 00    	call   *0x33a4(%rip)        # 405fd0 <strerror@GLIBC_2.2.5>
  402c2c:	48 89 c1             	mov    %rax,%rcx
  402c2f:	48 8d 15 da 16 00 00 	lea    0x16da(%rip),%rdx        # 404310 <is_checker+0xfc>
  402c36:	be 01 00 00 00       	mov    $0x1,%esi
  402c3b:	48 8b 3d 3e 34 00 00 	mov    0x343e(%rip),%rdi        # 406080 <stderr@GLIBC_2.2.5>
  402c42:	b8 00 00 00 00       	mov    $0x0,%eax
  402c47:	ff 15 7b 33 00 00    	call   *0x337b(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  402c4d:	bf 01 00 00 00       	mov    $0x1,%edi
  402c52:	ff 15 60 33 00 00    	call   *0x3360(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402c58:	48 8d 3d d9 16 00 00 	lea    0x16d9(%rip),%rdi        # 404338 <is_checker+0x124>
  402c5f:	ff 15 3b 33 00 00    	call   *0x333b(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  402c65:	bf 01 00 00 00       	mov    $0x1,%edi
  402c6a:	ff 15 48 33 00 00    	call   *0x3348(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402c70:	89 c1                	mov    %eax,%ecx
  402c72:	48 8d 15 ee 15 00 00 	lea    0x15ee(%rip),%rdx        # 404267 <is_checker+0x53>
  402c79:	be 01 00 00 00       	mov    $0x1,%esi
  402c7e:	48 8b 3d fb 33 00 00 	mov    0x33fb(%rip),%rdi        # 406080 <stderr@GLIBC_2.2.5>
  402c85:	b8 00 00 00 00       	mov    $0x0,%eax
  402c8a:	ff 15 38 33 00 00    	call   *0x3338(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  402c90:	bf 01 00 00 00       	mov    $0x1,%edi
  402c95:	ff 15 1d 33 00 00    	call   *0x331d(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402c9b:	89 c8                	mov    %ecx,%eax
  402c9d:	83 e0 7f             	and    $0x7f,%eax
  402ca0:	83 c0 01             	add    $0x1,%eax
  402ca3:	3c 01                	cmp    $0x1,%al
  402ca5:	7e 32                	jle    402cd9 <save_and_submit+0x338>
  402ca7:	ff 15 d3 32 00 00    	call   *0x32d3(%rip)        # 405f80 <strsignal@GLIBC_2.2.5>
  402cad:	48 89 c1             	mov    %rax,%rcx
  402cb0:	48 8d 15 c6 15 00 00 	lea    0x15c6(%rip),%rdx        # 40427d <is_checker+0x69>
  402cb7:	be 01 00 00 00       	mov    $0x1,%esi
  402cbc:	48 8b 3d bd 33 00 00 	mov    0x33bd(%rip),%rdi        # 406080 <stderr@GLIBC_2.2.5>
  402cc3:	b8 00 00 00 00       	mov    $0x0,%eax
  402cc8:	ff 15 fa 32 00 00    	call   *0x32fa(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  402cce:	bf 01 00 00 00       	mov    $0x1,%edi
  402cd3:	ff 15 df 32 00 00    	call   *0x32df(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402cd9:	48 8d 15 ae 15 00 00 	lea    0x15ae(%rip),%rdx        # 40428e <is_checker+0x7a>
  402ce0:	be 01 00 00 00       	mov    $0x1,%esi
  402ce5:	48 8b 3d 94 33 00 00 	mov    0x3394(%rip),%rdi        # 406080 <stderr@GLIBC_2.2.5>
  402cec:	b8 00 00 00 00       	mov    $0x0,%eax
  402cf1:	ff 15 d1 32 00 00    	call   *0x32d1(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  402cf7:	bf 01 00 00 00       	mov    $0x1,%edi
  402cfc:	ff 15 b6 32 00 00    	call   *0x32b6(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  402d02:	ff 15 f8 31 00 00    	call   *0x31f8(%rip)        # 405f00 <__stack_chk_fail@GLIBC_2.4>

0000000000402d08 <notify_pass>:
  402d08:	53                   	push   %rbx
  402d09:	89 fb                	mov    %edi,%ebx
  402d0b:	48 8d 3d 56 16 00 00 	lea    0x1656(%rip),%rdi        # 404368 <is_checker+0x154>
  402d12:	ff 15 c8 31 00 00    	call   *0x31c8(%rip)        # 405ee0 <puts@GLIBC_2.2.5>
  402d18:	b9 00 00 00 00       	mov    $0x0,%ecx
  402d1d:	ba 00 00 00 00       	mov    $0x0,%edx
  402d22:	be 01 00 00 00       	mov    $0x1,%esi
  402d27:	89 df                	mov    %ebx,%edi
  402d29:	e8 73 fc ff ff       	call   4029a1 <save_and_submit>
  402d2e:	bf 00 00 00 00       	mov    $0x0,%edi
  402d33:	ff 15 7f 32 00 00    	call   *0x327f(%rip)        # 405fb8 <exit@GLIBC_2.2.5>

0000000000402d39 <notify_fail>:
  402d39:	41 54                	push   %r12
  402d3b:	55                   	push   %rbp
  402d3c:	53                   	push   %rbx
  402d3d:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  402d44:	89 fd                	mov    %edi,%ebp
  402d46:	48 89 f3             	mov    %rsi,%rbx
  402d49:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  402d4e:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  402d53:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  402d58:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  402d5d:	84 c0                	test   %al,%al
  402d5f:	74 37                	je     402d98 <notify_fail+0x5f>
  402d61:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
  402d66:	0f 29 4c 24 60       	movaps %xmm1,0x60(%rsp)
  402d6b:	0f 29 54 24 70       	movaps %xmm2,0x70(%rsp)
  402d70:	0f 29 9c 24 80 00 00 	movaps %xmm3,0x80(%rsp)
  402d77:	00 
  402d78:	0f 29 a4 24 90 00 00 	movaps %xmm4,0x90(%rsp)
  402d7f:	00 
  402d80:	0f 29 ac 24 a0 00 00 	movaps %xmm5,0xa0(%rsp)
  402d87:	00 
  402d88:	0f 29 b4 24 b0 00 00 	movaps %xmm6,0xb0(%rsp)
  402d8f:	00 
  402d90:	0f 29 bc 24 c0 00 00 	movaps %xmm7,0xc0(%rsp)
  402d97:	00 
  402d98:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d9f:	00 00 
  402da1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402da6:	31 c0                	xor    %eax,%eax
  402da8:	48 8b 0d 71 32 00 00 	mov    0x3271(%rip),%rcx        # 406020 <stdout@GLIBC_2.2.5>
  402daf:	ba 06 00 00 00       	mov    $0x6,%edx
  402db4:	be 01 00 00 00       	mov    $0x1,%esi
  402db9:	48 8d 3d e7 14 00 00 	lea    0x14e7(%rip),%rdi        # 4042a7 <is_checker+0x93>
  402dc0:	ff 15 fa 31 00 00    	call   *0x31fa(%rip)        # 405fc0 <fwrite@GLIBC_2.2.5>
  402dc6:	c7 04 24 10 00 00 00 	movl   $0x10,(%rsp)
  402dcd:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  402dd4:	00 
  402dd5:	48 8d 84 24 f0 00 00 	lea    0xf0(%rsp),%rax
  402ddc:	00 
  402ddd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402de2:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  402de7:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  402dec:	49 89 e4             	mov    %rsp,%r12
  402def:	4c 89 e1             	mov    %r12,%rcx
  402df2:	48 89 da             	mov    %rbx,%rdx
  402df5:	be 01 00 00 00       	mov    $0x1,%esi
  402dfa:	48 8b 3d 1f 32 00 00 	mov    0x321f(%rip),%rdi        # 406020 <stdout@GLIBC_2.2.5>
  402e01:	ff 15 b1 30 00 00    	call   *0x30b1(%rip)        # 405eb8 <__vfprintf_chk@GLIBC_2.3.4>
  402e07:	48 8d 3d 9a 15 00 00 	lea    0x159a(%rip),%rdi        # 4043a8 <is_checker+0x194>
  402e0e:	ff 15 cc 30 00 00    	call   *0x30cc(%rip)        # 405ee0 <puts@GLIBC_2.2.5>
  402e14:	c7 04 24 10 00 00 00 	movl   $0x10,(%rsp)
  402e1b:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  402e22:	00 
  402e23:	48 8d 84 24 f0 00 00 	lea    0xf0(%rsp),%rax
  402e2a:	00 
  402e2b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402e30:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  402e35:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  402e3a:	4c 89 e1             	mov    %r12,%rcx
  402e3d:	48 89 da             	mov    %rbx,%rdx
  402e40:	be 00 00 00 00       	mov    $0x0,%esi
  402e45:	89 ef                	mov    %ebp,%edi
  402e47:	e8 55 fb ff ff       	call   4029a1 <save_and_submit>
  402e4c:	bf 01 00 00 00       	mov    $0x1,%edi
  402e51:	ff 15 61 31 00 00    	call   *0x3161(%rip)        # 405fb8 <exit@GLIBC_2.2.5>

0000000000402e57 <validate_inner>:
  402e57:	50                   	push   %rax
  402e58:	58                   	pop    %rax
  402e59:	48 83 ec 08          	sub    $0x8,%rsp
  402e5d:	85 c9                	test   %ecx,%ecx
  402e5f:	75 15                	jne    402e76 <validate_inner+0x1f>
  402e61:	41 89 d0             	mov    %edx,%r8d
  402e64:	85 d2                	test   %edx,%edx
  402e66:	7e 21                	jle    402e89 <validate_inner+0x32>
  402e68:	39 fa                	cmp    %edi,%edx
  402e6a:	75 2e                	jne    402e9a <validate_inner+0x43>
  402e6c:	40 84 f6             	test   %sil,%sil
  402e6f:	74 3e                	je     402eaf <validate_inner+0x58>
  402e71:	e8 92 fe ff ff       	call   402d08 <notify_pass>
  402e76:	89 ca                	mov    %ecx,%edx
  402e78:	48 8d 35 59 15 00 00 	lea    0x1559(%rip),%rsi        # 4043d8 <is_checker+0x1c4>
  402e7f:	b8 00 00 00 00       	mov    $0x0,%eax
  402e84:	e8 b0 fe ff ff       	call   402d39 <notify_fail>
  402e89:	48 8d 35 1e 14 00 00 	lea    0x141e(%rip),%rsi        # 4042ae <is_checker+0x9a>
  402e90:	b8 00 00 00 00       	mov    $0x0,%eax
  402e95:	e8 9f fe ff ff       	call   402d39 <notify_fail>
  402e9a:	89 d1                	mov    %edx,%ecx
  402e9c:	89 fa                	mov    %edi,%edx
  402e9e:	48 8d 35 5b 15 00 00 	lea    0x155b(%rip),%rsi        # 404400 <is_checker+0x1ec>
  402ea5:	b8 00 00 00 00       	mov    $0x0,%eax
  402eaa:	e8 8a fe ff ff       	call   402d39 <notify_fail>
  402eaf:	89 fa                	mov    %edi,%edx
  402eb1:	48 8d 35 78 15 00 00 	lea    0x1578(%rip),%rsi        # 404430 <is_checker+0x21c>
  402eb8:	b8 00 00 00 00       	mov    $0x0,%eax
  402ebd:	e8 77 fe ff ff       	call   402d39 <notify_fail>

0000000000402ec2 <initialize_target>:
  402ec2:	53                   	push   %rbx
  402ec3:	89 3d d7 31 00 00    	mov    %edi,0x31d7(%rip)        # 4060a0 <check_level>
  402ec9:	8b 1d 8d 12 00 00    	mov    0x128d(%rip),%ebx        # 40415c <target_id>
  402ecf:	89 df                	mov    %ebx,%edi
  402ed1:	67 e8 ad 05 00 00    	addr32 call 403484 <gencookie>
  402ed7:	89 05 bb 31 00 00    	mov    %eax,0x31bb(%rip)        # 406098 <cookie>
  402edd:	8d 7b 01             	lea    0x1(%rbx),%edi
  402ee0:	ff 15 ea 2f 00 00    	call   *0x2fea(%rip)        # 405ed0 <srandom@GLIBC_2.2.5>
  402ee6:	ff 15 74 30 00 00    	call   *0x3074(%rip)        # 405f60 <random@GLIBC_2.2.5>
  402eec:	89 c7                	mov    %eax,%edi
  402eee:	67 e8 ba f3 ff ff    	addr32 call 4022ae <scramble>
  402ef4:	89 c3                	mov    %eax,%ebx
  402ef6:	bf 00 00 00 00       	mov    $0x0,%edi
  402efb:	ff 15 4f 30 00 00    	call   *0x304f(%rip)        # 405f50 <time@GLIBC_2.2.5>
  402f01:	89 c7                	mov    %eax,%edi
  402f03:	ff 15 c7 2f 00 00    	call   *0x2fc7(%rip)        # 405ed0 <srandom@GLIBC_2.2.5>
  402f09:	80 3d 50 12 00 00 63 	cmpb   $0x63,0x1250(%rip)        # 404160 <target_prefix>
  402f10:	75 33                	jne    402f45 <initialize_target+0x83>
  402f12:	b8 00 00 00 00       	mov    $0x0,%eax
  402f17:	01 d8                	add    %ebx,%eax
  402f19:	0f b7 c0             	movzwl %ax,%eax
  402f1c:	8d 1c c5 00 01 00 00 	lea    0x100(,%rax,8),%ebx
  402f23:	89 db                	mov    %ebx,%ebx
  402f25:	48 8d 35 7c 31 00 00 	lea    0x317c(%rip),%rsi        # 4060a8 <raw_exploit_len>
  402f2c:	48 8d 3d 7d 31 00 00 	lea    0x317d(%rip),%rdi        # 4060b0 <raw_exploit>
  402f33:	ff 15 9f 2f 00 00    	call   *0x2f9f(%rip)        # 405ed8 <open_memstream@GLIBC_2.2.5>
  402f39:	48 89 05 50 31 00 00 	mov    %rax,0x3150(%rip)        # 406090 <input_buf>
  402f40:	48 89 d8             	mov    %rbx,%rax
  402f43:	5b                   	pop    %rbx
  402f44:	c3                   	ret    
  402f45:	ff 15 15 30 00 00    	call   *0x3015(%rip)        # 405f60 <random@GLIBC_2.2.5>
  402f4b:	eb ca                	jmp    402f17 <initialize_target+0x55>

0000000000402f4d <get_hex_digit>:
  402f4d:	41 54                	push   %r12
  402f4f:	55                   	push   %rbp
  402f50:	53                   	push   %rbx
  402f51:	48 89 fd             	mov    %rdi,%rbp
  402f54:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  402f5a:	eb 43                	jmp    402f9f <get_hex_digit+0x52>
  402f5c:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  402f62:	eb 3b                	jmp    402f9f <get_hex_digit+0x52>
  402f64:	48 8b 35 25 31 00 00 	mov    0x3125(%rip),%rsi        # 406090 <input_buf>
  402f6b:	48 85 f6             	test   %rsi,%rsi
  402f6e:	74 0b                	je     402f7b <get_hex_digit+0x2e>
  402f70:	bf 0a 00 00 00       	mov    $0xa,%edi
  402f75:	ff 15 ad 2f 00 00    	call   *0x2fad(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  402f7b:	48 89 ef             	mov    %rbp,%rdi
  402f7e:	ff 15 5c 30 00 00    	call   *0x305c(%rip)        # 405fe0 <getc@GLIBC_2.2.5>
  402f84:	89 c3                	mov    %eax,%ebx
  402f86:	83 f8 ff             	cmp    $0xffffffff,%eax
  402f89:	74 75                	je     403000 <get_hex_digit+0xb3>
  402f8b:	83 f8 0a             	cmp    $0xa,%eax
  402f8e:	75 77                	jne    403007 <get_hex_digit+0xba>
  402f90:	80 3d 31 31 00 00 00 	cmpb   $0x0,0x3131(%rip)        # 4060c8 <infile_is_tty>
  402f97:	75 7e                	jne    403017 <get_hex_digit+0xca>
  402f99:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  402f9f:	48 89 ef             	mov    %rbp,%rdi
  402fa2:	ff 15 38 30 00 00    	call   *0x3038(%rip)        # 405fe0 <getc@GLIBC_2.2.5>
  402fa8:	89 c3                	mov    %eax,%ebx
  402faa:	83 f8 ff             	cmp    $0xffffffff,%eax
  402fad:	74 51                	je     403000 <get_hex_digit+0xb3>
  402faf:	83 f8 0d             	cmp    $0xd,%eax
  402fb2:	74 b0                	je     402f64 <get_hex_digit+0x17>
  402fb4:	48 8b 35 d5 30 00 00 	mov    0x30d5(%rip),%rsi        # 406090 <input_buf>
  402fbb:	48 85 f6             	test   %rsi,%rsi
  402fbe:	74 08                	je     402fc8 <get_hex_digit+0x7b>
  402fc0:	89 c7                	mov    %eax,%edi
  402fc2:	ff 15 60 2f 00 00    	call   *0x2f60(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  402fc8:	83 fb 0a             	cmp    $0xa,%ebx
  402fcb:	74 7a                	je     403047 <get_hex_digit+0xfa>
  402fcd:	45 84 e4             	test   %r12b,%r12b
  402fd0:	75 cd                	jne    402f9f <get_hex_digit+0x52>
  402fd2:	83 fb 23             	cmp    $0x23,%ebx
  402fd5:	74 85                	je     402f5c <get_hex_digit+0xf>
  402fd7:	83 fb 09             	cmp    $0x9,%ebx
  402fda:	0f 94 c0             	sete   %al
  402fdd:	83 fb 20             	cmp    $0x20,%ebx
  402fe0:	0f 94 c2             	sete   %dl
  402fe3:	08 d0                	or     %dl,%al
  402fe5:	75 b8                	jne    402f9f <get_hex_digit+0x52>
  402fe7:	ff 15 fb 2f 00 00    	call   *0x2ffb(%rip)        # 405fe8 <__ctype_b_loc@GLIBC_2.3>
  402fed:	48 8b 00             	mov    (%rax),%rax
  402ff0:	48 63 d3             	movslq %ebx,%rdx
  402ff3:	0f b7 04 50          	movzwl (%rax,%rdx,2),%eax
  402ff7:	f6 c4 10             	test   $0x10,%ah
  402ffa:	0f 84 88 00 00 00    	je     403088 <get_hex_digit+0x13b>
  403000:	89 d8                	mov    %ebx,%eax
  403002:	5b                   	pop    %rbx
  403003:	5d                   	pop    %rbp
  403004:	41 5c                	pop    %r12
  403006:	c3                   	ret    
  403007:	48 89 ee             	mov    %rbp,%rsi
  40300a:	89 c7                	mov    %eax,%edi
  40300c:	ff 15 5e 2f 00 00    	call   *0x2f5e(%rip)        # 405f70 <ungetc@GLIBC_2.2.5>
  403012:	e9 79 ff ff ff       	jmp    402f90 <get_hex_digit+0x43>
  403017:	48 8b 0d 02 30 00 00 	mov    0x3002(%rip),%rcx        # 406020 <stdout@GLIBC_2.2.5>
  40301e:	ba 0c 00 00 00       	mov    $0xc,%edx
  403023:	be 01 00 00 00       	mov    $0x1,%esi
  403028:	48 8d 3d 29 14 00 00 	lea    0x1429(%rip),%rdi        # 404458 <is_checker+0x244>
  40302f:	ff 15 8b 2f 00 00    	call   *0x2f8b(%rip)        # 405fc0 <fwrite@GLIBC_2.2.5>
  403035:	48 8b 3d e4 2f 00 00 	mov    0x2fe4(%rip),%rdi        # 406020 <stdout@GLIBC_2.2.5>
  40303c:	ff 15 26 2f 00 00    	call   *0x2f26(%rip)        # 405f68 <fflush@GLIBC_2.2.5>
  403042:	e9 52 ff ff ff       	jmp    402f99 <get_hex_digit+0x4c>
  403047:	80 3d 7a 30 00 00 00 	cmpb   $0x0,0x307a(%rip)        # 4060c8 <infile_is_tty>
  40304e:	75 0b                	jne    40305b <get_hex_digit+0x10e>
  403050:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  403056:	e9 44 ff ff ff       	jmp    402f9f <get_hex_digit+0x52>
  40305b:	48 8b 0d be 2f 00 00 	mov    0x2fbe(%rip),%rcx        # 406020 <stdout@GLIBC_2.2.5>
  403062:	ba 0c 00 00 00       	mov    $0xc,%edx
  403067:	be 01 00 00 00       	mov    $0x1,%esi
  40306c:	48 8d 3d e5 13 00 00 	lea    0x13e5(%rip),%rdi        # 404458 <is_checker+0x244>
  403073:	ff 15 47 2f 00 00    	call   *0x2f47(%rip)        # 405fc0 <fwrite@GLIBC_2.2.5>
  403079:	48 8b 3d a0 2f 00 00 	mov    0x2fa0(%rip),%rdi        # 406020 <stdout@GLIBC_2.2.5>
  403080:	ff 15 e2 2e 00 00    	call   *0x2ee2(%rip)        # 405f68 <fflush@GLIBC_2.2.5>
  403086:	eb c8                	jmp    403050 <get_hex_digit+0x103>
  403088:	66 85 c0             	test   %ax,%ax
  40308b:	78 2b                	js     4030b8 <get_hex_digit+0x16b>
  40308d:	89 d9                	mov    %ebx,%ecx
  40308f:	48 8d 15 32 14 00 00 	lea    0x1432(%rip),%rdx        # 4044c8 <is_checker+0x2b4>
  403096:	be 01 00 00 00       	mov    $0x1,%esi
  40309b:	48 8b 3d de 2f 00 00 	mov    0x2fde(%rip),%rdi        # 406080 <stderr@GLIBC_2.2.5>
  4030a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4030a7:	ff 15 1b 2f 00 00    	call   *0x2f1b(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  4030ad:	bf 01 00 00 00       	mov    $0x1,%edi
  4030b2:	ff 15 00 2f 00 00    	call   *0x2f00(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  4030b8:	89 d9                	mov    %ebx,%ecx
  4030ba:	48 8d 15 df 13 00 00 	lea    0x13df(%rip),%rdx        # 4044a0 <is_checker+0x28c>
  4030c1:	be 01 00 00 00       	mov    $0x1,%esi
  4030c6:	48 8b 3d b3 2f 00 00 	mov    0x2fb3(%rip),%rdi        # 406080 <stderr@GLIBC_2.2.5>
  4030cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4030d2:	ff 15 f0 2e 00 00    	call   *0x2ef0(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  4030d8:	eb d3                	jmp    4030ad <get_hex_digit+0x160>

00000000004030da <decode_hex_digit>:
  4030da:	8d 47 d0             	lea    -0x30(%rdi),%eax
  4030dd:	83 f8 09             	cmp    $0x9,%eax
  4030e0:	76 22                	jbe    403104 <decode_hex_digit+0x2a>
  4030e2:	8d 47 bf             	lea    -0x41(%rdi),%eax
  4030e5:	83 f8 05             	cmp    $0x5,%eax
  4030e8:	77 04                	ja     4030ee <decode_hex_digit+0x14>
  4030ea:	8d 47 c9             	lea    -0x37(%rdi),%eax
  4030ed:	c3                   	ret    
  4030ee:	8d 47 9f             	lea    -0x61(%rdi),%eax
  4030f1:	83 f8 05             	cmp    $0x5,%eax
  4030f4:	77 04                	ja     4030fa <decode_hex_digit+0x20>
  4030f6:	8d 47 a9             	lea    -0x57(%rdi),%eax
  4030f9:	c3                   	ret    
  4030fa:	48 83 ec 08          	sub    $0x8,%rsp
  4030fe:	ff 15 c4 2d 00 00    	call   *0x2dc4(%rip)        # 405ec8 <abort@GLIBC_2.2.5>
  403104:	c3                   	ret    

0000000000403105 <launch_in_altstack>:
  403105:	55                   	push   %rbp
  403106:	48 89 e5             	mov    %rsp,%rbp
  403109:	48 83 ec 10          	sub    $0x10,%rsp
  40310d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403114:	00 00 
  403116:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40311a:	31 c0                	xor    %eax,%eax
  40311c:	48 8b 05 9d 2f 00 00 	mov    0x2f9d(%rip),%rax        # 4060c0 <launch_stack_offset>
  403123:	48 83 c0 17          	add    $0x17,%rax
  403127:	48 89 c1             	mov    %rax,%rcx
  40312a:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40312e:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  403134:	48 89 e2             	mov    %rsp,%rdx
  403137:	48 29 c2             	sub    %rax,%rdx
  40313a:	48 39 d4             	cmp    %rdx,%rsp
  40313d:	74 12                	je     403151 <launch_in_altstack+0x4c>
  40313f:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  403146:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  40314d:	00 00 
  40314f:	eb e9                	jmp    40313a <launch_in_altstack+0x35>
  403151:	48 89 c8             	mov    %rcx,%rax
  403154:	25 ff 0f 00 00       	and    $0xfff,%eax
  403159:	48 29 c4             	sub    %rax,%rsp
  40315c:	48 85 c0             	test   %rax,%rax
  40315f:	74 06                	je     403167 <launch_in_altstack+0x62>
  403161:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  403167:	48 8d 44 24 0f       	lea    0xf(%rsp),%rax
  40316c:	48 a9 f0 ff ff ff    	test   $0xfffffffffffffff0,%rax
  403172:	74 20                	je     403194 <launch_in_altstack+0x8f>
  403174:	80 3d 4d 2f 00 00 00 	cmpb   $0x0,0x2f4d(%rip)        # 4060c8 <infile_is_tty>
  40317b:	75 2f                	jne    4031ac <launch_in_altstack+0xa7>
  40317d:	c7 05 15 2f 00 00 00 	movl   $0x0,0x2f15(%rip)        # 40609c <vlevel>
  403184:	00 00 00 
  403187:	48 8b 3d 2a 2f 00 00 	mov    0x2f2a(%rip),%rdi        # 4060b8 <launch_infile>
  40318e:	67 e8 e2 f7 ff ff    	addr32 call 402976 <test>
  403194:	48 8d 3d ca 12 00 00 	lea    0x12ca(%rip),%rdi        # 404465 <is_checker+0x251>
  40319b:	ff 15 ff 2d 00 00    	call   *0x2dff(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  4031a1:	bf 01 00 00 00       	mov    $0x1,%edi
  4031a6:	ff 15 0c 2e 00 00    	call   *0x2e0c(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  4031ac:	8b 15 e6 2e 00 00    	mov    0x2ee6(%rip),%edx        # 406098 <cookie>
  4031b2:	48 8d 35 b3 12 00 00 	lea    0x12b3(%rip),%rsi        # 40446c <is_checker+0x258>
  4031b9:	bf 01 00 00 00       	mov    $0x1,%edi
  4031be:	b8 00 00 00 00       	mov    $0x0,%eax
  4031c3:	ff 15 bf 2d 00 00    	call   *0x2dbf(%rip)        # 405f88 <__printf_chk@GLIBC_2.3.4>
  4031c9:	48 8b 3d 50 2e 00 00 	mov    0x2e50(%rip),%rdi        # 406020 <stdout@GLIBC_2.2.5>
  4031d0:	ff 15 92 2d 00 00    	call   *0x2d92(%rip)        # 405f68 <fflush@GLIBC_2.2.5>
  4031d6:	eb a5                	jmp    40317d <launch_in_altstack+0x78>

00000000004031d8 <print_line>:
  4031d8:	41 54                	push   %r12
  4031da:	55                   	push   %rbp
  4031db:	53                   	push   %rbx
  4031dc:	48 89 fb             	mov    %rdi,%rbx
  4031df:	bd 00 00 00 00       	mov    $0x0,%ebp
  4031e4:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  4031ea:	eb 22                	jmp    40320e <print_line+0x36>
  4031ec:	40 0f b6 ff          	movzbl %dil,%edi
  4031f0:	48 8b 35 29 2e 00 00 	mov    0x2e29(%rip),%rsi        # 406020 <stdout@GLIBC_2.2.5>
  4031f7:	ff 15 2b 2d 00 00    	call   *0x2d2b(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  4031fd:	80 3b 0a             	cmpb   $0xa,(%rbx)
  403200:	40 0f 94 c5          	sete   %bpl
  403204:	48 83 c3 01          	add    $0x1,%rbx
  403208:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40320e:	ff 15 d4 2d 00 00    	call   *0x2dd4(%rip)        # 405fe8 <__ctype_b_loc@GLIBC_2.3>
  403214:	48 8b 00             	mov    (%rax),%rax
  403217:	0f b6 3b             	movzbl (%rbx),%edi
  40321a:	40 0f b6 d7          	movzbl %dil,%edx
  40321e:	66 83 3c 50 00       	cmpw   $0x0,(%rax,%rdx,2)
  403223:	78 c7                	js     4031ec <print_line+0x14>
  403225:	40 80 ff 20          	cmp    $0x20,%dil
  403229:	74 c1                	je     4031ec <print_line+0x14>
  40322b:	40 80 ff 09          	cmp    $0x9,%dil
  40322f:	74 bb                	je     4031ec <print_line+0x14>
  403231:	40 80 ff 0a          	cmp    $0xa,%dil
  403235:	74 b5                	je     4031ec <print_line+0x14>
  403237:	83 f5 01             	xor    $0x1,%ebp
  40323a:	44 84 e5             	test   %r12b,%bpl
  40323d:	75 12                	jne    403251 <print_line+0x79>
  40323f:	48 8b 3d da 2d 00 00 	mov    0x2dda(%rip),%rdi        # 406020 <stdout@GLIBC_2.2.5>
  403246:	ff 15 1c 2d 00 00    	call   *0x2d1c(%rip)        # 405f68 <fflush@GLIBC_2.2.5>
  40324c:	5b                   	pop    %rbx
  40324d:	5d                   	pop    %rbp
  40324e:	41 5c                	pop    %r12
  403250:	c3                   	ret    
  403251:	48 8b 35 c8 2d 00 00 	mov    0x2dc8(%rip),%rsi        # 406020 <stdout@GLIBC_2.2.5>
  403258:	bf 0a 00 00 00       	mov    $0xa,%edi
  40325d:	ff 15 c5 2c 00 00    	call   *0x2cc5(%rip)        # 405f28 <putc@GLIBC_2.2.5>
  403263:	eb da                	jmp    40323f <print_line+0x67>

0000000000403265 <get_hex_byte>:
  403265:	55                   	push   %rbp
  403266:	53                   	push   %rbx
  403267:	48 83 ec 08          	sub    $0x8,%rsp
  40326b:	48 89 fd             	mov    %rdi,%rbp
  40326e:	e8 da fc ff ff       	call   402f4d <get_hex_digit>
  403273:	89 c3                	mov    %eax,%ebx
  403275:	83 f8 ff             	cmp    $0xffffffff,%eax
  403278:	74 24                	je     40329e <get_hex_byte+0x39>
  40327a:	48 89 ef             	mov    %rbp,%rdi
  40327d:	e8 cb fc ff ff       	call   402f4d <get_hex_digit>
  403282:	89 c5                	mov    %eax,%ebp
  403284:	83 f8 ff             	cmp    $0xffffffff,%eax
  403287:	74 1e                	je     4032a7 <get_hex_byte+0x42>
  403289:	89 df                	mov    %ebx,%edi
  40328b:	e8 4a fe ff ff       	call   4030da <decode_hex_digit>
  403290:	c1 e0 04             	shl    $0x4,%eax
  403293:	89 c3                	mov    %eax,%ebx
  403295:	89 ef                	mov    %ebp,%edi
  403297:	e8 3e fe ff ff       	call   4030da <decode_hex_digit>
  40329c:	01 c3                	add    %eax,%ebx
  40329e:	89 d8                	mov    %ebx,%eax
  4032a0:	48 83 c4 08          	add    $0x8,%rsp
  4032a4:	5b                   	pop    %rbx
  4032a5:	5d                   	pop    %rbp
  4032a6:	c3                   	ret    
  4032a7:	89 c3                	mov    %eax,%ebx
  4032a9:	eb f3                	jmp    40329e <get_hex_byte+0x39>

00000000004032ab <launch>:
  4032ab:	55                   	push   %rbp
  4032ac:	53                   	push   %rbx
  4032ad:	48 81 ec f8 03 00 00 	sub    $0x3f8,%rsp
  4032b4:	89 fb                	mov    %edi,%ebx
  4032b6:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  4032bb:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  4032c0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4032c7:	00 00 
  4032c9:	48 89 84 24 e8 03 00 	mov    %rax,0x3e8(%rsp)
  4032d0:	00 
  4032d1:	31 c0                	xor    %eax,%eax
  4032d3:	40 84 ff             	test   %dil,%dil
  4032d6:	74 7d                	je     403355 <launch+0xaa>
  4032d8:	bd 00 60 58 55       	mov    $0x55586000,%ebp
  4032dd:	84 db                	test   %bl,%bl
  4032df:	74 7b                	je     40335c <launch+0xb1>
  4032e1:	b9 22 00 10 00       	mov    $0x100022,%ecx
  4032e6:	84 db                	test   %bl,%bl
  4032e8:	74 79                	je     403363 <launch+0xb8>
  4032ea:	ba 07 00 00 00       	mov    $0x7,%edx
  4032ef:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4032f5:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  4032fb:	be 00 00 10 00       	mov    $0x100000,%esi
  403300:	48 89 ef             	mov    %rbp,%rdi
  403303:	ff 15 ff 2b 00 00    	call   *0x2bff(%rip)        # 405f08 <mmap@GLIBC_2.2.5>
  403309:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40330e:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  403312:	74 56                	je     40336a <launch+0xbf>
  403314:	48 81 fd 00 60 58 55 	cmp    $0x55586000,%rbp
  40331b:	0f 95 c0             	setne  %al
  40331e:	84 d8                	test   %bl,%al
  403320:	74 60                	je     403382 <launch+0xd7>
  403322:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
  403327:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40332c:	48 8d 15 e5 11 00 00 	lea    0x11e5(%rip),%rdx        # 404518 <is_checker+0x304>
  403333:	be 01 00 00 00       	mov    $0x1,%esi
  403338:	48 8b 3d 41 2d 00 00 	mov    0x2d41(%rip),%rdi        # 406080 <stderr@GLIBC_2.2.5>
  40333f:	b8 00 00 00 00       	mov    $0x0,%eax
  403344:	ff 15 7e 2c 00 00    	call   *0x2c7e(%rip)        # 405fc8 <__fprintf_chk@GLIBC_2.3.4>
  40334a:	bf 01 00 00 00       	mov    $0x1,%edi
  40334f:	ff 15 63 2c 00 00    	call   *0x2c63(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  403355:	bd 00 00 00 00       	mov    $0x0,%ebp
  40335a:	eb 81                	jmp    4032dd <launch+0x32>
  40335c:	b9 22 00 00 00       	mov    $0x22,%ecx
  403361:	eb 83                	jmp    4032e6 <launch+0x3b>
  403363:	ba 03 00 00 00       	mov    $0x3,%edx
  403368:	eb 85                	jmp    4032ef <launch+0x44>
  40336a:	48 8d 3d 87 11 00 00 	lea    0x1187(%rip),%rdi        # 4044f8 <is_checker+0x2e4>
  403371:	ff 15 29 2c 00 00    	call   *0x2c29(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  403377:	bf 01 00 00 00       	mov    $0x1,%edi
  40337c:	ff 15 36 2c 00 00    	call   *0x2c36(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  403382:	ba 00 00 10 00       	mov    $0x100000,%edx
  403387:	be f4 00 00 00       	mov    $0xf4,%esi
  40338c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  403391:	ff 15 79 2b 00 00    	call   *0x2b79(%rip)        # 405f10 <memset@GLIBC_2.2.5>
  403397:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40339c:	ff 15 36 2c 00 00    	call   *0x2c36(%rip)        # 405fd8 <getcontext@GLIBC_2.2.5>
  4033a2:	85 c0                	test   %eax,%eax
  4033a4:	74 18                	je     4033be <launch+0x113>
  4033a6:	48 8d 3d da 10 00 00 	lea    0x10da(%rip),%rdi        # 404487 <is_checker+0x273>
  4033ad:	ff 15 ed 2b 00 00    	call   *0x2bed(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  4033b3:	bf 01 00 00 00       	mov    $0x1,%edi
  4033b8:	ff 15 fa 2b 00 00    	call   *0x2bfa(%rip)        # 405fb8 <exit@GLIBC_2.2.5>
  4033be:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4033c3:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4033c8:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%rsp)
  4033cf:	00 
  4033d0:	48 c7 44 24 40 00 00 	movq   $0x100000,0x40(%rsp)
  4033d7:	10 00 
  4033d9:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  4033e0:	00 00 
  4033e2:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4033e7:	ba 00 00 00 00       	mov    $0x0,%edx
  4033ec:	48 8d 35 12 fd ff ff 	lea    -0x2ee(%rip),%rsi        # 403105 <launch_in_altstack>
  4033f3:	48 89 df             	mov    %rbx,%rdi
  4033f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4033fb:	ff 15 47 2b 00 00    	call   *0x2b47(%rip)        # 405f48 <makecontext@GLIBC_2.2.5>
  403401:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  403406:	48 89 05 b3 2c 00 00 	mov    %rax,0x2cb3(%rip)        # 4060c0 <launch_stack_offset>
  40340d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  403412:	48 89 05 9f 2c 00 00 	mov    %rax,0x2c9f(%rip)        # 4060b8 <launch_infile>
  403419:	48 89 c7             	mov    %rax,%rdi
  40341c:	ff 15 36 2b 00 00    	call   *0x2b36(%rip)        # 405f58 <fileno@GLIBC_2.2.5>
  403422:	89 c7                	mov    %eax,%edi
  403424:	ff 15 c6 2a 00 00    	call   *0x2ac6(%rip)        # 405ef0 <isatty@GLIBC_2.2.5>
  40342a:	85 c0                	test   %eax,%eax
  40342c:	0f 95 05 95 2c 00 00 	setne  0x2c95(%rip)        # 4060c8 <infile_is_tty>
  403433:	48 89 df             	mov    %rbx,%rdi
  403436:	ff 15 f4 2a 00 00    	call   *0x2af4(%rip)        # 405f30 <setcontext@GLIBC_2.2.5>
  40343c:	48 8d 3d 4f 10 00 00 	lea    0x104f(%rip),%rdi        # 404492 <is_checker+0x27e>
  403443:	ff 15 57 2b 00 00    	call   *0x2b57(%rip)        # 405fa0 <perror@GLIBC_2.2.5>
  403449:	bf 01 00 00 00       	mov    $0x1,%edi
  40344e:	ff 15 64 2b 00 00    	call   *0x2b64(%rip)        # 405fb8 <exit@GLIBC_2.2.5>

0000000000403454 <check>:
  403454:	89 f8                	mov    %edi,%eax
  403456:	c1 e8 1c             	shr    $0x1c,%eax
  403459:	74 1d                	je     403478 <check+0x24>
  40345b:	b9 00 00 00 00       	mov    $0x0,%ecx
  403460:	83 f9 1f             	cmp    $0x1f,%ecx
  403463:	7f 0d                	jg     403472 <check+0x1e>
  403465:	89 f8                	mov    %edi,%eax
  403467:	d3 e8                	shr    %cl,%eax
  403469:	3c 0a                	cmp    $0xa,%al
  40346b:	74 11                	je     40347e <check+0x2a>
  40346d:	83 c1 08             	add    $0x8,%ecx
  403470:	eb ee                	jmp    403460 <check+0xc>
  403472:	b8 01 00 00 00       	mov    $0x1,%eax
  403477:	c3                   	ret    
  403478:	b8 00 00 00 00       	mov    $0x0,%eax
  40347d:	c3                   	ret    
  40347e:	b8 00 00 00 00       	mov    $0x0,%eax
  403483:	c3                   	ret    

0000000000403484 <gencookie>:
  403484:	53                   	push   %rbx
  403485:	83 c7 01             	add    $0x1,%edi
  403488:	ff 15 42 2a 00 00    	call   *0x2a42(%rip)        # 405ed0 <srandom@GLIBC_2.2.5>
  40348e:	ff 15 cc 2a 00 00    	call   *0x2acc(%rip)        # 405f60 <random@GLIBC_2.2.5>
  403494:	89 c3                	mov    %eax,%ebx
  403496:	89 c7                	mov    %eax,%edi
  403498:	e8 b7 ff ff ff       	call   403454 <check>
  40349d:	85 c0                	test   %eax,%eax
  40349f:	74 ed                	je     40348e <gencookie+0xa>
  4034a1:	89 d8                	mov    %ebx,%eax
  4034a3:	5b                   	pop    %rbx
  4034a4:	c3                   	ret    

Disassembly of section .fini:

00000000004034a8 <_fini>:
  4034a8:	f3 0f 1e fa          	endbr64 
  4034ac:	48 83 ec 08          	sub    $0x8,%rsp
  4034b0:	48 83 c4 08          	add    $0x8,%rsp
  4034b4:	c3                   	ret    
