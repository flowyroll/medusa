.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1bc40, %rsi
lea addresses_UC_ht+0x2418, %rdi
nop
nop
nop
dec %r11
mov $96, %rcx
rep movsq
and $24585, %rdi
lea addresses_D_ht+0xb200, %rsi
lea addresses_normal_ht+0x12400, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $78, %rcx
rep movsl
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x13400, %rsi
lea addresses_normal_ht+0x11b00, %rdi
add $44608, %r15
mov $119, %rcx
rep movsq
nop
nop
and $24236, %r15
lea addresses_WC_ht+0x2a00, %r11
xor %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x4900, %rcx
nop
and %r14, %r14
movb (%rcx), %r10b
nop
nop
nop
nop
nop
and $43398, %r10
lea addresses_normal_ht+0x16000, %rsi
lea addresses_UC_ht+0xc8d0, %rdi
nop
nop
nop
sub $53591, %rdx
mov $74, %rcx
rep movsq
nop
nop
add $30388, %r14
lea addresses_WC_ht+0x6c00, %rdi
nop
cmp $41243, %r10
mov (%rdi), %rsi
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xe2ec, %r14
nop
and %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %r14
movaps %xmm1, (%r14)
nop
nop
nop
nop
nop
and $61764, %r11
lea addresses_UC_ht+0xc00, %rdx
clflush (%rdx)
nop
and $55737, %rcx
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
xor $26209, %r10
lea addresses_WT_ht+0x1e500, %rsi
nop
nop
nop
sub %r10, %r10
mov (%rsi), %di
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x1b500, %rsi
lea addresses_D_ht+0x1c900, %rdi
nop
nop
nop
and $14041, %r11
mov $8, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $28082, %r10
lea addresses_D_ht+0x496, %r11
nop
nop
nop
nop
nop
sub $26957, %r15
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rcx
cmp $17598, %rsi
lea addresses_WT_ht+0x1b647, %rsi
lea addresses_WC_ht+0xa000, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $15, %rcx
rep movsb
xor $44632, %r10
lea addresses_WT_ht+0x16e80, %rsi
lea addresses_normal_ht+0x9260, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r10, %r10
mov $116, %rcx
rep movsb
nop
add $36278, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rdx
push %rsi

// Store
lea addresses_A+0x9140, %r8
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
add $43110, %rsi

// Store
lea addresses_US+0xa, %rbp
nop
nop
nop
and $13453, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rbp)
nop
add %rsi, %rsi

// Store
mov $0x3c0, %r15
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0x105fc, %r8
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
cmp %r8, %r8

// Load
lea addresses_normal+0x9050, %r8
clflush (%r8)
nop
nop
nop
sub $49392, %rbp
mov (%r8), %esi
nop
nop
nop
nop
nop
xor $53906, %r14

// Store
lea addresses_WT+0x1fc00, %r8
cmp $45856, %r15
mov $0x5152535455565758, %r12
movq %r12, (%r8)
xor $23218, %rsi

// Store
lea addresses_WC+0x1d800, %rsi
nop
nop
xor $45580, %r12
movw $0x5152, (%rsi)
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0x8c00, %rdx
nop
nop
nop
nop
sub $61982, %r15
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_A+0xdef8, %rdx
nop
nop
nop
nop
cmp $64425, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
inc %r15

// Faulty Load
lea addresses_UC+0x8c00, %rsi
nop
nop
nop
sub %r8, %r8
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'52': 10}
52 52 52 52 52 52 52 52 52 52
*/
