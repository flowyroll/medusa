.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1a38a, %r15
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r15)
nop
sub $31781, %rdx
lea addresses_UC_ht+0x8b69, %r11
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
add $55345, %rbp
lea addresses_normal_ht+0x18b69, %rdx
nop
nop
and $30346, %rsi
mov (%rdx), %r8d
and $59904, %rdx
lea addresses_WT_ht+0x17b69, %rsi
lea addresses_UC_ht+0xec29, %rdi
nop
nop
nop
nop
xor $44408, %r11
mov $37, %rcx
rep movsl
nop
add $16237, %rbp
lea addresses_A_ht+0x7de9, %rcx
nop
nop
add $11300, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x11b69, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdi)
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1b569, %r8
nop
sub %r15, %r15
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
and $41544, %rdx
lea addresses_A_ht+0xc969, %rsi
lea addresses_normal_ht+0x5401, %rdi
nop
nop
dec %r11
mov $16, %rcx
rep movsq
nop
nop
nop
and $18620, %rbp
lea addresses_UC_ht+0xf329, %rcx
add $5919, %rsi
movb (%rcx), %r8b
nop
inc %rdx
lea addresses_WT_ht+0xd369, %rcx
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rcx), %rdx
nop
sub $22838, %r11
lea addresses_WC_ht+0x1b489, %rdx
nop
nop
xor $10421, %rdi
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x14d69, %rsi
lea addresses_normal_ht+0x5ba9, %rdi
clflush (%rsi)
nop
nop
nop
add %r8, %r8
mov $37, %rcx
rep movsq
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xfd69, %rsi
lea addresses_A_ht+0x81fe, %rdi
nop
nop
nop
nop
nop
sub $34320, %r11
mov $37, %rcx
rep movsq
nop
nop
nop
nop
xor $30449, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x9846, %rdx
clflush (%rdx)
nop
nop
nop
xor $44226, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
add %r15, %r15

// REPMOV
lea addresses_UC+0x16b69, %rsi
lea addresses_WC+0x448d, %rdi
nop
nop
cmp %r12, %r12
mov $85, %rcx
rep movsb
inc %rdi

// Store
lea addresses_UC+0x55c5, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
sub $15268, %rsi

// Store
lea addresses_D+0xbde9, %rcx
add $9451, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
add $15792, %rsi

// Store
lea addresses_D+0xd269, %r15
nop
nop
nop
cmp $23032, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r15)
nop
inc %rdi

// REPMOV
lea addresses_WT+0x11b69, %rsi
lea addresses_UC+0x5c79, %rdi
nop
add $11817, %r10
mov $4, %rcx
rep movsw
nop
sub %rcx, %rcx

// Load
lea addresses_PSE+0x9e29, %r9
nop
nop
dec %rdx
mov (%r9), %cx
nop
nop
and %rdx, %rdx

// Store
mov $0xf51, %rsi
add $14107, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor %rsi, %rsi

// Load
mov $0x509b590000000f69, %r10
nop
nop
nop
nop
nop
add $4707, %rdx
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
add %r10, %r10

// Store
lea addresses_normal+0x4769, %rdx
clflush (%rdx)
sub %r15, %r15
movb $0x51, (%rdx)
sub $21511, %rcx

// Store
mov $0x6e9, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovaps %ymm3, (%rdi)
nop
nop
add %rdx, %rdx

// Store
mov $0x16d40700000005bf, %r15
nop
nop
nop
nop
add $31099, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r15)
nop
xor %r15, %r15

// Store
lea addresses_PSE+0x1c6e9, %r12
nop
nop
nop
sub $41344, %rdi
movl $0x51525354, (%r12)
nop
nop
nop
and $24859, %r10

// Faulty Load
lea addresses_RW+0x5b69, %r12
nop
nop
nop
nop
nop
sub %rdi, %rdi
movups (%r12), %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
