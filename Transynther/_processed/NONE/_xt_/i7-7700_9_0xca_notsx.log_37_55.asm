.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf0cb, %rdi
cmp %rax, %rax
movb $0x61, (%rdi)
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x250b, %rsi
lea addresses_WC_ht+0x1180b, %rdi
nop
nop
nop
inc %r13
mov $118, %rcx
rep movsw
nop
nop
nop
and $10888, %r9
lea addresses_UC_ht+0x4c0b, %rbp
clflush (%rbp)
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x714b, %rsi
lea addresses_A_ht+0x1da23, %rdi
nop
nop
nop
add $11595, %r9
mov $39, %rcx
rep movsb
nop
nop
nop
xor $34063, %rbp
lea addresses_normal_ht+0xac53, %rcx
nop
nop
and %r9, %r9
mov (%rcx), %bp
nop
nop
nop
add $26130, %rbp
lea addresses_A_ht+0x808b, %rdi
nop
nop
xor %rax, %rax
mov (%rdi), %esi
nop
nop
nop
nop
add $44639, %rbp
lea addresses_UC_ht+0x186fb, %rsi
lea addresses_UC_ht+0x16eeb, %rdi
nop
sub %r14, %r14
mov $77, %rcx
rep movsw
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xc2c1, %rbx
nop
and $37335, %rdi
movb $0x51, (%rbx)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_D+0x280b, %r14
nop
nop
nop
nop
and $774, %rax
movw $0x5152, (%r14)
dec %r14

// Store
lea addresses_RW+0x1b45b, %rbx
nop
nop
nop
add %r8, %r8
movb $0x51, (%rbx)
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_UC+0x1f20b, %r8
nop
sub $38097, %rdi
movw $0x5152, (%r8)
nop
nop
nop
xor $26621, %r14

// Store
lea addresses_RW+0xaa13, %rdi
nop
sub $3650, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
add %r8, %r8

// Load
mov $0x4eec5b0000000c83, %rsi
nop
nop
nop
nop
nop
add %r14, %r14
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
nop
nop
xor $34637, %rdi

// Faulty Load
lea addresses_D+0x280b, %r8
nop
nop
nop
nop
nop
xor $286, %rsi
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'36': 37}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
