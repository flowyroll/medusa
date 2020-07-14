.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c189, %rsi
lea addresses_A_ht+0xf6e5, %rdi
nop
nop
nop
xor %r12, %r12
mov $39, %rcx
rep movsq
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x19ee5, %r15
clflush (%r15)
nop
nop
inc %r9
movl $0x61626364, (%r15)
nop
sub $12561, %r9
lea addresses_WT_ht+0xa3f1, %rdi
nop
xor $56758, %r11
mov (%rdi), %r9d
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0xc789, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
sub $48697, %rsi
lea addresses_A_ht+0x12589, %r12
xor $47035, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%r12)
sub %rcx, %rcx
lea addresses_normal_ht+0x4739, %rsi
lea addresses_A_ht+0x16989, %rdi
nop
nop
nop
cmp $45423, %r9
mov $9, %rcx
rep movsw
nop
nop
nop
sub $54323, %rcx
lea addresses_WC_ht+0x173c9, %rsi
nop
xor %r12, %r12
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x51e1, %r8
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r8)
nop
nop
sub %r8, %r8

// REPMOV
mov $0x509, %rsi
lea addresses_WT+0x7b2f, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $59, %rcx
rep movsb
nop
nop
xor %r13, %r13

// Store
lea addresses_PSE+0x1aa09, %r10
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r10)
nop
nop
sub $27866, %r10

// Store
lea addresses_A+0xe8cb, %rcx
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rcx)
nop
nop
nop
and $48380, %r13

// Store
lea addresses_WT+0x18f1, %rsi
inc %r15
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
add $49078, %rcx

// Store
lea addresses_WC+0xe989, %rcx
add %rsi, %rsi
movl $0x51525354, (%rcx)
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_WT+0x8189, %rbx
nop
nop
cmp %rsi, %rsi
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
