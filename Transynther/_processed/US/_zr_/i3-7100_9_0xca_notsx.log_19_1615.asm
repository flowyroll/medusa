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
lea addresses_UC_ht+0xe9c4, %rsi
lea addresses_D_ht+0x1c559, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r13, %r13
mov $66, %rcx
rep movsq
add %rsi, %rsi
lea addresses_WT_ht+0x1ee91, %rsi
lea addresses_WT_ht+0x1c651, %rdi
sub %r9, %r9
mov $108, %rcx
rep movsw
nop
nop
sub $21681, %rsi
lea addresses_UC_ht+0x2051, %rsi
lea addresses_D_ht+0xdc31, %rdi
nop
xor %r12, %r12
mov $66, %rcx
rep movsw
nop
nop
nop
nop
nop
add $41103, %rsi
lea addresses_WT_ht+0x1ed89, %rsi
lea addresses_D_ht+0x18651, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $28, %rcx
rep movsl
sub $35945, %rcx
lea addresses_UC_ht+0x3751, %r12
nop
nop
add $56023, %rsi
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
nop
nop
add $64985, %r13
lea addresses_WT_ht+0xd451, %r12
add $47070, %rdi
mov (%r12), %esi
add %r13, %r13
lea addresses_UC_ht+0xa651, %r13
clflush (%r13)
cmp %r9, %r9
movb $0x61, (%r13)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x156ab, %r9
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%r9)
nop
nop
nop
and $50763, %rcx
lea addresses_D_ht+0x18539, %rsi
lea addresses_A_ht+0x17851, %rdi
nop
nop
nop
sub $48038, %rbp
mov $37, %rcx
rep movsb
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x135b1, %rsi
lea addresses_WT_ht+0x1ce51, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
add $39786, %r13
mov $84, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x6001, %r10
cmp %rdi, %rdi
movl $0x61626364, (%r10)
nop
nop
nop
nop
xor $32569, %rsi
lea addresses_A_ht+0x1a1e1, %rdi
nop
lfence
movb (%rdi), %r13b
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x9251, %rsi
lea addresses_WC_ht+0x1c5cd, %rdi
clflush (%rsi)
xor $38617, %r9
mov $16, %rcx
rep movsw
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0xbe51, %rsi
lea addresses_UC_ht+0x18911, %rdi
nop
nop
nop
xor $56076, %r12
mov $37, %rcx
rep movsl
sub %rbp, %rbp
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
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x25c3, %r10
clflush (%r10)
nop
nop
inc %rcx
movl $0x51525354, (%r10)
nop
xor $37838, %r14

// Store
lea addresses_D+0x13a51, %rdi
nop
nop
nop
nop
add $53732, %r12
movb $0x51, (%rdi)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_PSE+0x1860f, %rcx
nop
nop
nop
nop
xor $18764, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0xf7f1, %rcx
nop
nop
nop
xor $14283, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rcx)
nop
and $28594, %r10

// REPMOV
lea addresses_normal+0x1d9d, %rsi
lea addresses_WC+0x12e9b, %rdi
nop
nop
and $51959, %r14
mov $116, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $18335, %rsi

// Faulty Load
lea addresses_US+0x2e51, %r12
cmp $31213, %r13
movb (%r12), %cl
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
