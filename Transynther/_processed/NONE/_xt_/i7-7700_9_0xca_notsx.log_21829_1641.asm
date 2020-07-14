.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5228, %rsi
lea addresses_A_ht+0x1ed70, %rdi
clflush (%rsi)
nop
nop
cmp %r8, %r8
mov $5, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x16828, %r15
nop
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
and $10714, %r13
lea addresses_WC_ht+0x3628, %rsi
lea addresses_A_ht+0x15927, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $33, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x13c28, %rsi
lea addresses_UC_ht+0x13fa8, %rdi
nop
nop
nop
nop
nop
xor $44690, %r15
mov $42, %rcx
rep movsl
add $15410, %rcx
lea addresses_D_ht+0x15e78, %rsi
lea addresses_UC_ht+0x14556, %rdi
cmp $45313, %rdx
mov $88, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x5628, %r8
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
and $45059, %r15
lea addresses_WT_ht+0x19628, %rdi
nop
nop
inc %r8
movl $0x61626364, (%rdi)
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0xcfd0, %rsi
lea addresses_WC_ht+0x6e88, %rdi
nop
nop
nop
nop
nop
and $65151, %r15
mov $11, %rcx
rep movsb
nop
dec %r13
lea addresses_WT_ht+0xfea8, %rsi
lea addresses_normal_ht+0x13e28, %rdi
nop
nop
nop
nop
dec %rdx
mov $119, %rcx
rep movsq
cmp $8586, %r13
lea addresses_A_ht+0x228, %rsi
lea addresses_A_ht+0x2f44, %rdi
cmp $31706, %rdx
mov $66, %rcx
rep movsw
nop
inc %rcx
lea addresses_D_ht+0x2eba, %rdi
nop
mfence
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
and %r15, %r15
lea addresses_D_ht+0xd6b8, %rcx
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%rcx), %edi
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1b5c8, %r12
nop
nop
nop
nop
nop
sub %r15, %r15
movb $0x51, (%r12)
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_normal+0x15628, %r13
nop
sub $44726, %r8
movl $0x51525354, (%r13)
nop
nop
sub $16366, %r11

// Store
lea addresses_PSE+0xe28, %r8
nop
cmp $29971, %rdx
movw $0x5152, (%r8)
nop
nop
xor $36421, %rdx

// Store
lea addresses_PSE+0x55bc, %r11
clflush (%r11)
add %r8, %r8
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Load
lea addresses_A+0xf288, %r12
nop
nop
xor $54135, %r11
mov (%r12), %r13w
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_PSE+0x18628, %r15
xor $14210, %r11
movw $0x5152, (%r15)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_normal+0x8d70, %r8
nop
nop
cmp %r12, %r12
movb $0x51, (%r8)
and $44630, %r8

// Load
lea addresses_normal+0x4328, %r13
nop
nop
sub $55543, %r12
mov (%r13), %r11
nop
nop
nop
nop
cmp $16508, %r11

// Store
lea addresses_PSE+0x10f28, %rdi
nop
nop
xor $28881, %r12
movb $0x51, (%rdi)
nop
nop
nop
nop
cmp $20554, %rdi

// REPMOV
lea addresses_WT+0x8ca8, %rsi
lea addresses_A+0xd028, %rdi
nop
nop
nop
nop
nop
add $31299, %r13
mov $51, %rcx
rep movsl
nop
add $33839, %r15

// Store
lea addresses_WC+0x12f48, %r13
nop
nop
nop
nop
nop
add $30702, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
nop
add $32309, %r11

// Store
lea addresses_A+0x2a28, %rcx
nop
nop
sub %r15, %r15
movw $0x5152, (%rcx)
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_PSE+0xe628, %rdx
nop
nop
nop
nop
nop
inc %r11
mov (%rdx), %r15w
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
