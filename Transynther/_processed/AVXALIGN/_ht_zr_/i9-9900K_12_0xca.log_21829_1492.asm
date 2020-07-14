.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc0b4, %rsi
nop
nop
nop
nop
nop
sub $11543, %rdi
mov (%rsi), %ebp
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x106b4, %r8
nop
nop
nop
nop
sub $29052, %r10
movl $0x61626364, (%r8)
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x112e0, %r8
nop
nop
inc %rbx
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x146b4, %rbp
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%rbp)
nop
nop
nop
and $27229, %rsi
lea addresses_WC_ht+0x13a04, %r10
clflush (%r10)
nop
dec %rsi
movb (%r10), %bl
nop
xor %rsi, %rsi
lea addresses_UC_ht+0xd2b4, %rdi
nop
nop
nop
sub %rbp, %rbp
movb (%rdi), %r10b
nop
nop
sub $23405, %rbp
lea addresses_UC_ht+0xfa34, %rsi
lea addresses_normal_ht+0x4724, %rdi
nop
nop
nop
nop
xor $65135, %r8
mov $64, %rcx
rep movsw
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x3c24, %rsi
lea addresses_UC_ht+0x4cb4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
sub $53936, %rbp
mov $105, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_A_ht+0xe174, %r10
nop
nop
nop
nop
and $37038, %rcx
movb $0x61, (%r10)
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x1d109, %r10
nop
nop
nop
nop
nop
dec %rdi
movl $0x61626364, (%r10)
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_A+0x1deb4, %r9
clflush (%r9)
nop
xor %r12, %r12
mov (%r9), %rdi
nop
sub %rdi, %rdi

// Store
mov $0xb0a, %rcx
nop
nop
sub $20797, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovaps %ymm4, (%rcx)
sub %r12, %r12

// Faulty Load
lea addresses_normal+0x1c2b4, %r9
nop
nop
sub $46037, %rdx
vmovntdqa (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'00': 7117, '46': 14712}
00 46 46 46 46 00 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 00 00 00 46 00 00 00 00 00 46 46 46 00 46 46 46 00 46 46 46 46 46 00 00 46 46 46 00 46 00 00 00 00 00 00 00 00 46 00 46 46 00 46 00 00 00 00 46 00 46 46 00 46 46 00 00 00 00 00 46 46 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 00 00 00 46 00 46 46 46 00 46 46 46 46 00 00 00 00 00 46 00 46 46 46 46 46 46 46 00 46 46 46 46 00 46 00 46 46 00 46 46 46 00 46 46 46 46 00 00 46 46 46 46 00 46 46 46 00 46 46 46 00 00 00 46 00 00 00 00 46 46 46 46 00 46 46 46 00 46 46 46 00 46 46 46 46 46 00 46 46 00 46 46 46 00 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 00 00 00 46 00 46 46 00 46 00 46 46 00 46 00 00 00 00 00 46 00 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 00 00 46 46 46 00 46 46 46 00 46 00 46 46 00 46 46 46 00 00 00 46 46 46 46 46 00 00 00 00 00 00 00 46 46 46 46 46 46 00 46 46 46 46 46 00 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 46 00 46 46 00 46 00 46 46 46 00 46 46 46 46 46 46 46 00 46 00 00 00 46 46 46 46 00 46 46 46 46 00 00 00 46 00 46 46 46 00 46 46 46 46 00 46 00 00 00 46 00 46 46 46 46 46 00 46 46 00 46 46 46 00 46 46 46 00 46 46 46 00 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 00 46 00 00 46 00 46 46 00 46 46 00 46 00 46 46 00 46 00 00 00 00 00 46 46 46 46 00 46 46 46 46 00 46 46 46 00 46 46 46 46 00 00 46 46 46 00 00 46 00 46 46 00 46 46 00 00 00 00 46 46 46 46 00 00 00 46 00 00 00 00 00 46 00 46 46 46 46 00 46 46 46 46 00 46 46 46 46 00 46 46 00 46 00 46 46 00 46 46 46 46 00 00 00 00 46 46 46 46 46 00 00 00 46 00 46 46 46 00 46 00 46 46 46 00 46 46 46 46 46 00 46 46 46 00 46 46 46 46 00 46 00 46 46 00 46 46 00 46 46 46 46 46 00 46 46 46 00 00 46 46 46 46 00 46 00 46 46 46 00 00 00 00 00 46 00 46 00 46 00 00 00 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 00 00 00 46 00 46 00 46 46 46 46 46 00 46 46 46 00 00 00 00 00 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 00 46 46 46 00 00 00 46 46 46 46 00 46 46 46 00 46 46 46 46 46 00 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 46 46 00 46 00 00 46 46 46 00 46 46 46 46 00 46 46 00 46 00 00 00 46 46 46 46 46 46 00 46 46 00 46 00 46 46 00 46 46 46 00 46 00 00 00 00 00 00 46 00 46 46 00 46 00 46 46 00 46 00 00 00 46 00 00 00 46 46 46 46 46 00 46 00 00 46 00 46 46 00 46 00 00 00 00 46 00 46 00 00 46 00 00 00 00 46 46 46 46 00 46 46 46 00 46 00 00 46 46 46 46 46 00 46 46 00 46 00 46 46 00 00 00 46 46 46 46 00 00 00 00 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 00 00 46 46 46 00 46 46 00 46 00 46 46 00 46 00 46 46 00 46 00 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 00 00 46 46 46 00 46 46 00 46 46 46 46 00 46 46 00 46 00 00 00 00 00 46 00 46 46 00 46 00 46 46 00 46 46 46 00 46 46 46 46 00 46 00 46
*/
