.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10c2, %r8
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %r8
movaps %xmm2, (%r8)
nop
nop
inc %rax
lea addresses_UC_ht+0x133aa, %rcx
nop
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x1226a, %rax
nop
and %rsi, %rsi
mov (%rax), %r8
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x16faa, %rsi
lea addresses_WT_ht+0x165aa, %rdi
nop
nop
and %rdx, %rdx
mov $96, %rcx
rep movsl
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x9802, %rcx
sub $36756, %rdx
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
sub $30314, %rcx
lea addresses_D_ht+0xb5aa, %rdx
nop
inc %r14
movb $0x61, (%rdx)
cmp %r8, %r8
lea addresses_WC_ht+0x17900, %rax
clflush (%rax)
nop
and $37802, %rsi
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
cmp $40706, %rcx
lea addresses_A_ht+0x5ae8, %rsi
lea addresses_A_ht+0x9faa, %rdi
nop
cmp $7783, %rax
mov $80, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x1ac3a, %rax
nop
nop
nop
nop
cmp %rsi, %rsi
and $0xffffffffffffffc0, %rax
vmovntdqa (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
and $28740, %rax
lea addresses_WC_ht+0x1914a, %rax
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1e06a, %rsi
lea addresses_WT_ht+0x508a, %rdi
nop
nop
dec %r14
mov $68, %rcx
rep movsq
sub %rax, %rax
lea addresses_normal_ht+0xe406, %rax
nop
nop
and $19489, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x1b6aa, %r13
and $3291, %rax
mov (%r13), %rcx
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x2dc3, %rax
nop
nop
nop
nop
xor %rdi, %rdi
movb (%rax), %r8b
nop
nop
nop
cmp $46767, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_A+0x20d8, %rsi
nop
add $24420, %r12
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
mov $0x412ed900000007aa, %rbx
nop
nop
nop
sub %rdi, %rdi
mov (%rbx), %ax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
