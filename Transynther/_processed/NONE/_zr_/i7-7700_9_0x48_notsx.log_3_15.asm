.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a1f2, %r9
nop
inc %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
and $52467, %rsi
lea addresses_normal_ht+0x1b0b2, %rsi
nop
and $26216, %r12
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
sub $43723, %rax
lea addresses_UC_ht+0x156d0, %r9
inc %rcx
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and $35305, %rcx
lea addresses_UC_ht+0x8892, %r12
nop
nop
and $854, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
nop
nop
add $42097, %rcx
lea addresses_D_ht+0x7bf2, %rsi
nop
nop
nop
nop
and $65364, %r8
movb (%rsi), %al
nop
nop
nop
nop
add $51382, %rbp
lea addresses_normal_ht+0x13cf2, %rcx
nop
nop
nop
nop
nop
xor %rax, %rax
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
and $48758, %rax
lea addresses_UC_ht+0xde52, %rbp
nop
inc %r9
movb $0x61, (%rbp)
nop
cmp %r9, %r9
lea addresses_UC_ht+0x1204a, %rsi
lea addresses_A_ht+0xe7c7, %rdi
nop
nop
nop
nop
nop
cmp $25348, %rax
mov $53, %rcx
rep movsw
nop
nop
nop
and $43226, %rdi
lea addresses_UC_ht+0x54db, %rsi
lea addresses_D_ht+0x99f2, %rdi
nop
nop
nop
nop
nop
xor $31348, %r8
mov $75, %rcx
rep movsl
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0xd7ec, %rdi
nop
nop
nop
and %r9, %r9
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x7ff2, %rcx
nop
nop
nop
nop
nop
cmp $15866, %rbp
mov (%rcx), %ax
nop
nop
nop
nop
nop
cmp $5878, %rbp
lea addresses_UC_ht+0x83e6, %rsi
clflush (%rsi)
nop
nop
sub $37098, %rbp
mov (%rsi), %r8
xor $42373, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx

// Store
lea addresses_A+0x1f242, %r14
clflush (%r14)
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movaps %xmm4, (%r14)
add %rcx, %rcx

// Store
lea addresses_US+0x6382, %rcx
cmp $3269, %r9
movw $0x5152, (%rcx)
nop
nop
nop
add %r14, %r14

// Load
lea addresses_PSE+0x17aea, %rbp
nop
nop
nop
cmp %r14, %r14
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_A+0x1cdf2, %rbp
nop
nop
sub $8112, %r9
mov (%rbp), %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'00': 3}
00 00 00
*/
