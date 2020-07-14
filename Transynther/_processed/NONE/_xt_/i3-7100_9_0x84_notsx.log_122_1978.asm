.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb994, %r13
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%r13)
nop
add %r13, %r13
lea addresses_D_ht+0x1b194, %rsi
lea addresses_normal_ht+0x3c54, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r9, %r9
mov $116, %rcx
rep movsl
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x15194, %rdi
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
nop
and $39238, %r10
lea addresses_A_ht+0x16b94, %r13
clflush (%r13)
nop
nop
nop
nop
cmp $409, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x4a94, %rsi
lea addresses_normal_ht+0xde74, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $47, %rcx
rep movsb
nop
nop
add $46822, %rbp
lea addresses_UC_ht+0xe092, %rsi
lea addresses_A_ht+0x6294, %rdi
cmp $21687, %rbp
mov $101, %rcx
rep movsl
sub %rbx, %rbx
lea addresses_WC_ht+0xc88c, %rsi
lea addresses_WC_ht+0x1214, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Load
lea addresses_normal+0x1c0b4, %rsi
nop
nop
nop
nop
xor %rbp, %rbp
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
add $26973, %rsi

// Store
lea addresses_WC+0x14b94, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp %rax, %rax
movw $0x5152, (%r9)
nop
nop
nop
cmp $15893, %rdx

// Store
mov $0x204b960000000b5c, %rdx
clflush (%rdx)
and $7020, %r9
movl $0x51525354, (%rdx)
cmp %r9, %r9

// Load
lea addresses_D+0x18e74, %rdx
nop
nop
nop
nop
add $13202, %rsi
mov (%rdx), %r13
nop
sub $5076, %rdx

// Store
lea addresses_US+0x13514, %rax
clflush (%rax)
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rax)
sub $59295, %rbp

// Store
mov $0xbf4, %r9
nop
and $6014, %rbp
movb $0x51, (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_D+0x3994, %r9
nop
nop
xor %r12, %r12
movups (%r9), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'36': 122}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
