.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xcd79, %rbp
nop
nop
xor $54177, %rsi
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x1d0c9, %r8
nop
nop
nop
nop
nop
dec %rdx
movl $0x61626364, (%r8)
and %rbp, %rbp
lea addresses_WC_ht+0x20c9, %rsi
lea addresses_UC_ht+0xa7c9, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $90, %rcx
rep movsw
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0xf4c9, %rsi
lea addresses_UC_ht+0x1c4c9, %rdi
and %r8, %r8
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $61572, %rdi
lea addresses_D_ht+0x229, %r10
dec %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x18cc9, %rdi
clflush (%rdi)
nop
cmp %rcx, %rcx
movl $0x61626364, (%rdi)
nop
inc %rcx
lea addresses_D_ht+0x17ca5, %rsi
lea addresses_A_ht+0x70c9, %rdi
nop
nop
nop
add %rdx, %rdx
mov $112, %rcx
rep movsw
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x1aed5, %rdx
nop
sub %r8, %r8
movb (%rdx), %r13b
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x1af3d, %r10
nop
nop
nop
nop
add $52186, %rsi
movb (%r10), %r8b
xor $45767, %r8
lea addresses_D_ht+0x9359, %rsi
lea addresses_D_ht+0x1acc9, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $108, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x18b99, %rsi
lea addresses_WT_ht+0x18109, %rdi
clflush (%rsi)
nop
nop
nop
xor %rbp, %rbp
mov $72, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rdx

// Load
lea addresses_A+0x7701, %r11
nop
add $60784, %r8
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
cmp %r11, %r11

// Store
mov $0x4872c200000008c9, %r12
nop
add $20736, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_UC+0x19589, %r12
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
nop
dec %r12

// Load
lea addresses_normal+0x50f1, %r12
nop
nop
nop
nop
and %rdx, %rdx
mov (%r12), %r8w
cmp $30988, %rdx

// Store
lea addresses_WC+0x3c5d, %r13
clflush (%r13)
nop
nop
nop
nop
sub %r8, %r8
movb $0x51, (%r13)
nop
nop
nop
nop
inc %r9

// Faulty Load
lea addresses_UC+0xecc9, %r13
nop
nop
nop
nop
nop
cmp $7207, %r12
movaps (%r13), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'00': 496}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
