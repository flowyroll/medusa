.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa0cb, %r10
dec %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r10)
nop
nop
xor $46738, %r9
lea addresses_D_ht+0x9d4b, %rsi
lea addresses_normal_ht+0x1de0b, %rdi
clflush (%rdi)
nop
nop
cmp $56904, %rbx
mov $89, %rcx
rep movsw
nop
xor $37476, %rdi
lea addresses_A_ht+0x14c4b, %rsi
lea addresses_WC_ht+0xe64b, %rdi
nop
nop
nop
and $37140, %r15
mov $70, %rcx
rep movsw
nop
nop
nop
nop
and $26636, %r9
lea addresses_D_ht+0x15ecb, %rbx
nop
nop
nop
nop
nop
xor $25379, %r12
movb $0x61, (%rbx)
nop
nop
nop
nop
and $27954, %r10
lea addresses_normal_ht+0xf32b, %rdi
nop
nop
nop
xor %rcx, %rcx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %rsi
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x93cb, %r8
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r8)
nop
sub $12089, %r9

// REPMOV
lea addresses_WT+0x634b, %rsi
lea addresses_WC+0x1184b, %rdi
clflush (%rdi)
nop
nop
and $40636, %r10
mov $77, %rcx
rep movsw
nop
xor %r14, %r14

// Store
lea addresses_A+0x1ae73, %r14
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%r14)
nop
nop
nop
nop
inc %rdi

// REPMOV
lea addresses_normal+0x125e8, %rsi
lea addresses_PSE+0x909b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $31877, %r10
mov $33, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_US+0x47be, %rsi
xor $5957, %rdi
movb (%rsi), %r14b
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0x1314b, %rcx
nop
nop
nop
cmp %r13, %r13
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
add $34665, %r13

// Load
lea addresses_A+0x1944b, %r10
clflush (%r10)
sub %r9, %r9
mov (%r10), %di
sub %rcx, %rcx

// Store
lea addresses_PSE+0x1b26b, %r13
nop
nop
nop
cmp $41448, %rcx
movw $0x5152, (%r13)
nop
nop
nop
nop
dec %rsi

// Load
lea addresses_A+0x1944b, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add %r13, %r13
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_normal+0x15c4b, %r9
clflush (%r9)
nop
cmp %r8, %r8
movups (%r9), %xmm3
vpextrq $1, %xmm3, %rcx
nop
sub %r8, %r8

// Faulty Load
lea addresses_A+0x1944b, %r13
nop
xor %r14, %r14
movb (%r13), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 2, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'00': 1}
00
*/
