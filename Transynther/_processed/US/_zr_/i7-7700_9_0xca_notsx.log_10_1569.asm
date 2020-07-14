.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18231, %rsi
lea addresses_WT_ht+0x19cd1, %rdi
nop
dec %rdx
mov $123, %rcx
rep movsq
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x1ac71, %r10
dec %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r10)
cmp $26821, %r11
lea addresses_WT_ht+0x12631, %rsi
lea addresses_WT_ht+0x36f9, %rdi
nop
nop
nop
dec %r11
mov $16, %rcx
rep movsl
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1b031, %rsi
lea addresses_WC_ht+0x17e11, %rdi
nop
nop
nop
add %rbp, %rbp
mov $55, %rcx
rep movsw
nop
inc %r11
lea addresses_normal_ht+0xbd1a, %r14
nop
nop
dec %rbp
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
inc %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x1f881, %rdi
nop
and $11332, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
sub $44093, %r9

// Load
lea addresses_PSE+0x1fd19, %r13
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r13), %rdi
nop
nop
inc %rdi

// Store
lea addresses_WT+0x10431, %rcx
add $65222, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
cmp %rdx, %rdx

// Faulty Load
lea addresses_US+0x7631, %r13
nop
nop
nop
nop
nop
cmp %r9, %r9
mov (%r13), %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
