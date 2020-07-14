.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x4d20, %rbp
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rbp), %r13w
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0xf0d7, %rdx
nop
nop
nop
cmp $60671, %r10
movb (%rdx), %bl
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x6cd7, %rbx
nop
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%rbx)
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x9c17, %rsi
lea addresses_WT_ht+0x114d7, %rdi
nop
nop
sub $31916, %r13
mov $3, %rcx
rep movsq
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x5607, %rsi
lea addresses_D_ht+0x3087, %rdi
nop
nop
sub %rbp, %rbp
mov $23, %rcx
rep movsq
nop
add $56914, %rbp
lea addresses_WT_ht+0xd4d7, %rsi
lea addresses_WC_ht+0x17a77, %rdi
clflush (%rdi)
nop
nop
add $50684, %r10
mov $53, %rcx
rep movsq
nop
inc %rsi
lea addresses_WC_ht+0xbcd7, %rsi
lea addresses_A_ht+0x1ddcf, %rdi
sub $47839, %r13
mov $112, %rcx
rep movsb
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x190d7, %r10
nop
nop
xor $17656, %rdx
mov (%r10), %bp
cmp $43877, %rdi
lea addresses_D_ht+0x128d7, %rbx
nop
nop
nop
nop
and $43317, %r13
movb (%rbx), %r10b
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rdx

// Store
lea addresses_UC+0x1b210, %r14
mfence
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movaps %xmm7, (%r14)
add $59608, %r14

// Faulty Load
lea addresses_A+0x8cd7, %rbp
nop
cmp %rdx, %rdx
mov (%rbp), %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
