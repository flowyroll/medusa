.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rdx
lea addresses_A_ht+0x16d4, %rdx
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rdx)
nop
xor %r14, %r14
lea addresses_WC_ht+0x123b8, %rbx
nop
nop
nop
nop
xor %rbp, %rbp
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
add %rdx, %rdx
lea addresses_A_ht+0x4d59, %r8
nop
cmp $30872, %r12
movw $0x6162, (%r8)
nop
nop
lfence
lea addresses_D_ht+0x1e554, %rbx
and $3770, %rbp
movw $0x6162, (%rbx)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x9f54, %rdx
xor $13050, %r10
movl $0x61626364, (%rdx)
dec %rbx
lea addresses_UC_ht+0x18408, %rdx
nop
nop
inc %r10
movb (%rdx), %r8b
nop
nop
nop
nop
nop
cmp $34543, %rdx
lea addresses_UC_ht+0x14754, %r10
nop
nop
sub $15183, %rdx
mov (%r10), %r8w
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x15554, %rbp
nop
nop
nop
nop
nop
cmp $20087, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
inc %r12
lea addresses_WC_ht+0x1df54, %rdx
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rdx), %ebp
nop
nop
nop
nop
nop
cmp $30174, %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x16f54, %r13
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r13)
nop
and $48930, %rbx

// Load
lea addresses_D+0xe888, %r8
nop
nop
nop
nop
nop
sub $2766, %r11
mov (%r8), %ebp
nop
xor %r11, %r11

// Store
lea addresses_UC+0x18754, %rsi
nop
nop
nop
nop
dec %r11
movw $0x5152, (%rsi)
nop
nop
nop
inc %rdx

// Store
lea addresses_WT+0x14354, %rbp
nop
nop
nop
nop
nop
xor $14051, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%rbp)
nop
cmp $26748, %rbp

// Store
lea addresses_D+0x14b00, %rdx
clflush (%rdx)
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
nop
inc %rbx

// Store
lea addresses_normal+0x8154, %r11
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
and $16847, %r11

// Load
lea addresses_normal+0xdf5c, %r8
clflush (%r8)
nop
sub $36483, %rbp
movaps (%r8), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
xor $40857, %rsi

// Faulty Load
lea addresses_D+0x1754, %r8
nop
nop
nop
cmp $32855, %r13
movups (%r8), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'36': 6}
36 36 36 36 36 36
*/
