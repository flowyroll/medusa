.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xbd24, %r10
mfence
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
nop
xor $12251, %rbx
lea addresses_D_ht+0x157b0, %r15
nop
nop
nop
nop
dec %r8
movw $0x6162, (%r15)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x18d50, %r8
nop
nop
nop
add %r10, %r10
movb $0x61, (%r8)
dec %r14
lea addresses_WC_ht+0x12730, %rsi
lea addresses_normal_ht+0x10db0, %rdi
nop
nop
nop
and $63937, %r10
mov $66, %rcx
rep movsb
nop
nop
sub $23409, %rcx
lea addresses_D_ht+0x3b84, %rdi
nop
cmp $49448, %rbx
mov (%rdi), %r8
nop
nop
dec %rdi
lea addresses_UC_ht+0x142b0, %rsi
lea addresses_normal_ht+0xa91, %rdi
nop
add %r10, %r10
mov $108, %rcx
rep movsw
nop
nop
nop
nop
sub $2887, %rdi
lea addresses_A_ht+0xdbc0, %rsi
lea addresses_D_ht+0x22b0, %rdi
nop
xor $48991, %rbx
mov $80, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_D_ht+0x1cb0, %r10
xor %rbx, %rbx
movb (%r10), %r8b
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x19870, %rsi
lea addresses_D_ht+0x174f0, %rdi
and $11323, %r15
mov $102, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_normal+0x166b0, %r10
nop
nop
inc %r9
movw $0x5152, (%r10)
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_WC+0x1d17c, %r14
nop
nop
nop
nop
nop
cmp $7539, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovntdq %ymm0, (%r14)
nop
nop
nop
cmp $23850, %rbp

// Load
lea addresses_UC+0x1b230, %r10
sub $54606, %rsi
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
sub $22687, %r9

// Store
lea addresses_US+0x1a5b0, %r8
nop
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
sub $6488, %r10

// Store
lea addresses_WC+0xe0b0, %r14
nop
xor %rsi, %rsi
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
inc %r8

// Faulty Load
lea addresses_A+0x184b0, %r9
nop
nop
nop
dec %r10
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'45': 5, '00': 12, '48': 4}
00 48 00 00 00 48 00 00 48 45 00 45 00 45 00 45 00 45 00 48 00
*/
