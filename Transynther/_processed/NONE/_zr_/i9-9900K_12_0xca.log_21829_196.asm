.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x13a48, %rdi
nop
add %rdx, %rdx
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm5
vpextrq $1, %xmm5, %r10
nop
xor %r8, %r8
lea addresses_UC_ht+0x3f8f, %r9
nop
nop
nop
nop
nop
dec %r11
mov (%r9), %bx
nop
nop
nop
inc %r11
lea addresses_A_ht+0xfd4a, %rdx
xor $62669, %r9
mov (%rdx), %bx
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x1c7f7, %rdx
nop
nop
dec %r10
movl $0x61626364, (%rdx)
nop
nop
cmp $55148, %r9
lea addresses_WT_ht+0x16e8f, %rdi
nop
and %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x187af, %rsi
lea addresses_A_ht+0x17c7b, %rdi
nop
nop
nop
add $61352, %r10
mov $30, %rcx
rep movsl
nop
nop
nop
add $46311, %rcx
lea addresses_WT_ht+0x3917, %rdi
nop
dec %rbx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
and $44688, %rbx
lea addresses_WC_ht+0x1408f, %rdx
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x4fd3, %rsi
lea addresses_WT_ht+0xd0f, %rdi
xor %rbx, %rbx
mov $103, %rcx
rep movsl
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x16c8f, %rsi
nop
nop
add %rbx, %rbx
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x1ca8f, %rbx
nop
nop
nop
nop
add $50326, %r8
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
nop
dec %r10
lea addresses_D_ht+0x368f, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x5e8f, %rdx
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rdx)
sub %rdi, %rdi
lea addresses_WT_ht+0x1328f, %r8
xor $8368, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r8)
add $5541, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdx

// Faulty Load
lea addresses_UC+0xb28f, %r14
nop
nop
nop
nop
nop
and %rax, %rax
movups (%r14), %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
