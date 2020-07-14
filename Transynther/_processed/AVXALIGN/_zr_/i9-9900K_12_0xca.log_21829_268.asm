.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x441a, %rsi
lea addresses_WT_ht+0x15bd6, %rdi
nop
nop
add $37746, %rdx
mov $28, %rcx
rep movsq
nop
nop
nop
nop
xor $9640, %rbx
lea addresses_A_ht+0x2c3a, %r15
add $19244, %r14
movl $0x61626364, (%r15)
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x179fa, %rsi
lea addresses_D_ht+0x12f1a, %rdi
nop
nop
xor %rax, %rax
mov $56, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x1a79a, %r14
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
and $0xffffffffffffffc0, %r14
movntdq %xmm4, (%r14)
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1163e, %r15
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r14
movq %r14, (%r15)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1aafa, %rbx
nop
nop
nop
cmp %rax, %rax
mov (%rbx), %rcx
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x1371a, %r14
nop
nop
nop
nop
sub $51217, %rsi
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
and %r15, %r15
lea addresses_normal_ht+0x13a5f, %rdx
xor %rax, %rax
mov (%rdx), %r14d
nop
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Load
lea addresses_RW+0xf24a, %r14
nop
nop
nop
xor %rbx, %rbx
mov (%r14), %eax
nop
nop
nop
nop
and $31486, %r14

// Faulty Load
lea addresses_PSE+0x1aa9a, %r12
and $54493, %r13
movntdqa (%r12), %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
