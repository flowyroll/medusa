.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x183a2, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x14e2e, %r9
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r9)
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x1a276, %rax
nop
nop
nop
nop
nop
add $47379, %r12
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xb82e, %rdx
nop
nop
and %rax, %rax
mov (%rdx), %si
nop
add %rdx, %rdx
lea addresses_D_ht+0x109d6, %rdx
nop
nop
nop
xor %r9, %r9
mov (%rdx), %cx
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x67f6, %rcx
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x1deae, %rsi
lea addresses_UC_ht+0x1b056, %rdi
nop
nop
nop
nop
xor $30306, %rax
mov $62, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xec7e, %rsi
lea addresses_UC_ht+0x1c5a8, %rdi
nop
add %rax, %rax
mov $36, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $17129, %r12
lea addresses_normal_ht+0x16ad4, %rsi
lea addresses_WC_ht+0x126ce, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $9082, %rbx
mov $90, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1662e, %rsi
lea addresses_UC_ht+0x13e2e, %rdi
clflush (%rdi)
cmp $31849, %r12
mov $116, %rcx
rep movsw
nop
nop
add $13326, %rsi
lea addresses_A_ht+0x156e, %rsi
lea addresses_normal_ht+0x18b2e, %rdi
nop
add %rbx, %rbx
mov $16, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi

// Store
lea addresses_normal+0x18a26, %r10
clflush (%r10)
sub %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_WT+0x8e2e, %r11
nop
nop
nop
inc %rcx
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'44': 5707, '45': 16118, '08': 2, '72': 1, '47': 1}
45 44 45 45 44 45 45 44 45 44 45 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 44 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 44 44 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 44 45 45 44 45 45 44 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 44 45 45 44 45 44 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 44 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 44 45 45 44 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 44 45 45 44
*/
