.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd547, %rsi
lea addresses_WT_ht+0x1cdd7, %rdi
nop
nop
nop
nop
xor $3391, %r14
mov $100, %rcx
rep movsq
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x1a2d7, %r13
nop
sub $13614, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
add $27425, %r10
lea addresses_WC_ht+0xb263, %rcx
xor %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
nop
lfence
lea addresses_WT_ht+0x1367, %r14
nop
nop
nop
nop
sub $8283, %rsi
mov (%r14), %di
nop
and $22830, %rsi
lea addresses_WC_ht+0x1b971, %rsi
lea addresses_A_ht+0x7377, %rdi
nop
nop
xor %r8, %r8
mov $11, %rcx
rep movsb
nop
nop
nop
nop
xor $59524, %r10
lea addresses_D_ht+0x17897, %rsi
lea addresses_WC_ht+0x4eb7, %rdi
and %r14, %r14
mov $111, %rcx
rep movsl
nop
nop
nop
cmp $16500, %rdi
lea addresses_UC_ht+0x1d0af, %rsi
lea addresses_D_ht+0x128af, %rdi
and %r13, %r13
mov $113, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x17bd7, %r12
mfence
mov (%r12), %rsi
sub $46683, %r8
lea addresses_WC_ht+0x10587, %rdi
nop
cmp %r10, %r10
mov (%rdi), %r8
nop
nop
and $1277, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_normal+0x17ee2, %r15
nop
nop
add $32502, %r11
movl $0x51525354, (%r15)
nop
xor %rcx, %rcx

// Store
mov $0xbd7, %r8
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movaps %xmm7, (%r8)
nop
and %r15, %r15

// Store
lea addresses_UC+0x1c9b7, %rcx
nop
nop
nop
nop
add %r11, %r11
movb $0x51, (%rcx)
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_A+0x18fd7, %r12
xor $43978, %rbx
mov (%r12), %r11d
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 335}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
