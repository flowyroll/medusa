.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19285, %rsi
lea addresses_UC_ht+0xca85, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $56, %rcx
rep movsw
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x6709, %rsi
lea addresses_normal_ht+0x3fb5, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r14, %r14
mov $99, %rcx
rep movsb
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xa685, %r14
nop
nop
nop
nop
cmp $10816, %rdi
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
nop
xor $27036, %rdi
lea addresses_A_ht+0x1d9c5, %rsi
lea addresses_UC_ht+0x1e585, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $44, %rcx
rep movsw
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x3885, %rdi
sub %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
cmp $16839, %rdi
lea addresses_WT_ht+0xd6c5, %r12
clflush (%r12)
sub %r10, %r10
movl $0x61626364, (%r12)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1aa85, %r12
nop
nop
nop
nop
nop
xor %r10, %r10
movl $0x61626364, (%r12)
nop
nop
nop
and $30629, %rdi
lea addresses_normal_ht+0x1be85, %rsi
lea addresses_normal_ht+0xcb85, %rdi
nop
and $12147, %r11
mov $64, %rcx
rep movsq
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x19e02, %r8
nop
nop
nop
nop
nop
and $17195, %rdi
mov (%r8), %r12d
nop
inc %rdi
lea addresses_A_ht+0x285, %r10
nop
nop
nop
and $19832, %rcx
movups (%r10), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x19285, %rsi
lea addresses_normal_ht+0x1d285, %rdi
clflush (%rdi)
nop
and %r8, %r8
mov $2, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $62366, %r8
lea addresses_normal_ht+0x62c5, %r12
clflush (%r12)
nop
nop
nop
nop
add %r11, %r11
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x22f9, %rdi
nop
cmp %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
sub $453, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx

// Store
lea addresses_UC+0xf285, %r12
nop
nop
nop
add $48089, %rax
movl $0x51525354, (%r12)
nop
nop
sub %r12, %r12

// Load
mov $0x385, %r12
nop
sub $8839, %rcx
mov (%r12), %rax
sub %rbp, %rbp

// Load
lea addresses_UC+0xc27d, %r14
nop
nop
nop
nop
inc %r13
movntdqa (%r14), %xmm6
vpextrq $0, %xmm6, %r12
nop
sub %rcx, %rcx

// Load
lea addresses_WC+0x285, %r13
nop
nop
cmp %rcx, %rcx
mov (%r13), %r10
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_A+0xb1ad, %rbp
nop
nop
nop
nop
nop
sub $59082, %r13
movl $0x51525354, (%rbp)
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_A+0xea85, %r13
nop
nop
nop
nop
nop
inc %r12
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
