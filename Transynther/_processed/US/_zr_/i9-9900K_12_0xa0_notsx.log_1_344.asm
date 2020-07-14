.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc658, %rsi
lea addresses_UC_ht+0x11a58, %rdi
nop
nop
nop
nop
nop
cmp $16144, %r12
mov $39, %rcx
rep movsw
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0xa170, %rsi
lea addresses_UC_ht+0xe858, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $11, %rcx
rep movsb
xor $20581, %r15
lea addresses_WT_ht+0x1dd58, %r14
dec %rsi
mov (%r14), %r12
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x12448, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%rcx), %r12
nop
cmp $30270, %rcx
lea addresses_UC_ht+0x1f38, %r15
nop
nop
nop
nop
and $6867, %rdx
mov $0x6162636465666768, %r12
movq %r12, (%r15)
nop
nop
nop
nop
xor $4551, %r15
lea addresses_A_ht+0x1a958, %rcx
nop
nop
cmp %rdx, %rdx
mov (%rcx), %r14w
nop
nop
nop
nop
nop
and $40450, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rdi
push %rsi

// Store
lea addresses_A+0xfc58, %rsi
nop
nop
nop
add %r14, %r14
movb $0x51, (%rsi)
nop
nop
nop
cmp $27493, %r12

// Store
lea addresses_D+0x1d3e8, %r8
nop
xor %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_US+0xc458, %rdi
and $35503, %rsi
mov (%rdi), %r9d
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'00': 1}
00
*/
