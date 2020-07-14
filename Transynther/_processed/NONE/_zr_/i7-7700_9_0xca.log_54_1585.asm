.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1abf6, %r10
clflush (%r10)
nop
nop
nop
nop
nop
inc %r13
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
cmp $36242, %rbp
lea addresses_UC_ht+0x1a92b, %rsi
lea addresses_normal_ht+0x1768b, %rdi
nop
nop
nop
inc %r13
mov $126, %rcx
rep movsw
nop
mfence
lea addresses_WT_ht+0xa8cb, %rdi
nop
nop
and %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x1b2bd, %rcx
dec %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
add $47118, %rsi
lea addresses_A_ht+0x1e69e, %rsi
lea addresses_normal_ht+0x1694b, %rdi
nop
nop
nop
nop
sub $33206, %r10
mov $19, %rcx
rep movsl
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x139bf, %rsi
lea addresses_A_ht+0x2e8b, %rdi
nop
nop
nop
and $63711, %r12
mov $64, %rcx
rep movsq
and %r12, %r12
lea addresses_WT_ht+0x1104b, %rsi
lea addresses_WT_ht+0x1738b, %rdi
sub %r12, %r12
mov $28, %rcx
rep movsl
nop
nop
nop
nop
cmp $8582, %rdi
lea addresses_WT_ht+0x964b, %rsi
lea addresses_D_ht+0xd0b, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $59, %rcx
rep movsl
nop
add $20366, %rbp
lea addresses_WC_ht+0xea0b, %rsi
lea addresses_WC_ht+0x478b, %rdi
xor $17206, %r12
mov $98, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x14feb, %r10
clflush (%r10)
xor %rbp, %rbp
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
nop
xor $303, %r12
lea addresses_normal_ht+0x1aedc, %rsi
lea addresses_A_ht+0xf181, %rdi
nop
xor %r10, %r10
mov $84, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $18783, %rcx
lea addresses_WC_ht+0x17f8b, %rsi
lea addresses_A_ht+0xb98b, %rdi
clflush (%rdi)
nop
nop
add $14097, %r9
mov $74, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx

// Load
lea addresses_PSE+0x1be8b, %r8
nop
lfence
mov (%r8), %r9
add %r10, %r10

// Store
lea addresses_A+0xea43, %r15
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r15)
inc %r15

// Load
lea addresses_normal+0x1e7b3, %r10
nop
nop
xor %rbx, %rbx
mov (%r10), %r15
nop
and %rbx, %rbx

// Store
lea addresses_normal+0x15f8b, %r10
nop
nop
nop
sub $42787, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_PSE+0x12a2b, %r8
nop
sub $27434, %r14
movb $0x51, (%r8)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_UC+0x1ccab, %rcx
nop
cmp %r14, %r14
movw $0x5152, (%rcx)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_D+0x1d43, %rcx
nop
nop
nop
nop
and $56959, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
nop
dec %rbx

// Store
mov $0x544dd00000000b43, %r9
nop
add $5288, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
nop
nop
nop
xor $39285, %r9

// Faulty Load
lea addresses_WT+0x578b, %r8
nop
nop
nop
nop
nop
add $2159, %rcx
mov (%r8), %r10d
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'00': 54}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
