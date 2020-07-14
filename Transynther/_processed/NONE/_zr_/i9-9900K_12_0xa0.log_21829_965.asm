.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x148de, %rdi
nop
nop
nop
nop
nop
cmp $31187, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rdi)
add $42457, %r15
lea addresses_D_ht+0xb2fe, %r14
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, (%r14)
nop
nop
nop
nop
nop
cmp $25948, %r10
lea addresses_UC_ht+0x190be, %rsi
lea addresses_A_ht+0xe8fe, %rdi
nop
nop
dec %r10
mov $13, %rcx
rep movsq
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x1c206, %r15
xor %rcx, %rcx
mov (%r15), %si
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1101e, %rcx
nop
nop
nop
nop
nop
dec %rsi
movl $0x51525354, (%rcx)
nop
nop
nop
cmp $34139, %r13

// Store
mov $0xb1e, %rcx
clflush (%rcx)
cmp $4381, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0x127de, %r13
nop
nop
nop
nop
nop
add $6755, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
nop
nop
sub $13209, %rsi

// Store
lea addresses_A+0x81de, %r13
nop
nop
nop
nop
inc %r15
movb $0x51, (%r13)
xor %r13, %r13

// Load
lea addresses_D+0x8c7e, %r15
nop
nop
xor %rdx, %rdx
mov (%r15), %rdi
nop
nop
nop
nop
nop
xor $2959, %rcx

// Load
lea addresses_A+0xfba8, %rdi
nop
nop
sub %r11, %r11
movb (%rdi), %r13b
sub $16201, %rdx

// Faulty Load
lea addresses_UC+0x1e91e, %rdx
cmp $5258, %r11
movb (%rdx), %r15b
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
