.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1927b, %rsi
lea addresses_A_ht+0x93bb, %rdi
nop
nop
add %r11, %r11
mov $42, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x16aab, %rsi
lea addresses_WT_ht+0x1c42b, %rdi
nop
dec %r11
mov $126, %rcx
rep movsb
inc %r11
lea addresses_UC_ht+0x118ab, %rsi
lea addresses_normal_ht+0x142ab, %rdi
clflush (%rsi)
nop
cmp %r9, %r9
mov $2, %rcx
rep movsb
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x16c6b, %rcx
nop
nop
cmp $5586, %rbp
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
nop
xor $38643, %r15
lea addresses_UC_ht+0x72fb, %rsi
lea addresses_normal_ht+0x1ccab, %rdi
and %rbp, %rbp
mov $54, %rcx
rep movsq
nop
cmp $9789, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x1d0ab, %r12
clflush (%r12)
nop
nop
add %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
xor $34319, %rsi

// Store
lea addresses_UC+0x15e0b, %rbx
nop
nop
cmp %r9, %r9
movw $0x5152, (%rbx)
cmp $31545, %r9

// Store
mov $0xab, %r12
nop
xor $16117, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
nop
nop
nop
nop
xor $30777, %rsi

// Load
lea addresses_RW+0xe8ab, %r9
nop
nop
nop
nop
nop
sub $32776, %rsi
mov (%r9), %edi
nop
dec %r9

// Store
lea addresses_WT+0xbda5, %rsi
nop
nop
nop
nop
cmp $13162, %rdi
movw $0x5152, (%rsi)
nop
nop
add $57016, %rsi

// Store
lea addresses_normal+0x5f2b, %rbx
nop
nop
nop
nop
nop
and $8352, %r12
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_UC+0x1960b, %rsi
nop
nop
nop
add $19503, %r12
movb $0x51, (%rsi)
cmp %rsi, %rsi

// Store
mov $0x32aaba00000004ab, %r12
clflush (%r12)
nop
nop
nop
sub $44487, %r8
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
add %r8, %r8

// Faulty Load
mov $0xab, %r12
nop
nop
nop
nop
nop
cmp %rbx, %rbx
vmovaps (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'8a': 1, '45': 4414, '00': 17289, '49': 51, 'fb': 1, 'af': 1, '44': 70, 'c8': 1, '60': 1}
00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 45 45 00 45 00 45 00 00 00 00 00 00 45 00 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 45 00 00 45 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 45 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 45 00 45 00 45 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 45 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 44 00 00 45 00 00 00 00 00 00 00 00 45 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 45 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 45 00 00 00 45 45 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 45 45 45 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 45 00 00 00 45 00 45 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 45 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
