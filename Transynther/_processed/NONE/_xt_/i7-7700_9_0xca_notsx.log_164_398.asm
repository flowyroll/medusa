.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xaab1, %rsi
lea addresses_D_ht+0xa11, %rdi
nop
nop
dec %r15
mov $92, %rcx
rep movsw
cmp %r8, %r8
lea addresses_A_ht+0x9811, %r10
nop
nop
nop
nop
inc %r9
movl $0x61626364, (%r10)
nop
and %rcx, %rcx
lea addresses_A_ht+0x6991, %r10
nop
nop
nop
nop
dec %rcx
movw $0x6162, (%r10)
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x897e, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %r8, %r8
movl $0x61626364, (%rcx)
nop
and %r9, %r9
lea addresses_D_ht+0x2c35, %rsi
lea addresses_WT_ht+0x16c11, %rdi
nop
nop
nop
mfence
mov $58, %rcx
rep movsl
nop
nop
cmp $56008, %r15
lea addresses_D_ht+0x1cf91, %rsi
lea addresses_WT_ht+0x16969, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $88, %rcx
rep movsl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1c845, %rsi
nop
nop
nop
nop
nop
add $30876, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rcx

// Load
lea addresses_PSE+0x3c19, %r11
nop
nop
nop
nop
xor %r10, %r10
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0x4790f50000000871, %r14
cmp $57006, %r10
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_PSE+0xd2f9, %r11
cmp $38772, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r11)
nop
and $3892, %r14

// Faulty Load
lea addresses_PSE+0xe011, %r8
add $47164, %r11
mov (%r8), %bp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'33': 164}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
