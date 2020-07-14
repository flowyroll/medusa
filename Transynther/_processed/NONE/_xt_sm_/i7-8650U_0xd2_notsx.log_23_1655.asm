.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14ce2, %rsi
lea addresses_normal_ht+0x19fa2, %rdi
and $41619, %r11
mov $4, %rcx
rep movsl
nop
nop
and %r10, %r10
lea addresses_A_ht+0xf0e2, %r8
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%r8)
and %rdi, %rdi
lea addresses_UC_ht+0x11fc2, %r14
xor $4, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x12ee2, %r10
nop
nop
mfence
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x196e2, %rcx
clflush (%rcx)
sub $17814, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x3ee2, %rsi
lea addresses_D_ht+0x193e2, %rdi
nop
and $49649, %r11
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
add $65360, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x11ce2, %rsi
lea addresses_D+0x1c926, %rdi
dec %r9
mov $74, %rcx
rep movsw
xor %r9, %r9

// Store
lea addresses_A+0xee2, %r12
nop
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x11b62, %rsi
sub $60751, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
xor $58628, %r12

// Store
lea addresses_A+0x161a, %r9
clflush (%r9)
nop
nop
and %rsi, %rsi
movw $0x5152, (%r9)
nop
nop
nop
nop
cmp $63460, %rcx

// Store
lea addresses_normal+0x186e2, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r12
movq %r12, (%rdi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
nop
add %rcx, %rcx

// REPMOV
lea addresses_UC+0x1b0e2, %rsi
lea addresses_D+0xb222, %rdi
nop
nop
cmp %r8, %r8
mov $29, %rcx
rep movsb
nop
nop
nop
nop
nop
and $16849, %rbp

// Faulty Load
lea addresses_normal+0x186e2, %r12
clflush (%r12)
nop
nop
add $43704, %rbp
mov (%r12), %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'58': 23}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
