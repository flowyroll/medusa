.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1ad2a, %rsi
lea addresses_normal_ht+0xecca, %rdi
nop
xor $29705, %r12
mov $71, %rcx
rep movsb
nop
cmp %r10, %r10
lea addresses_WC_ht+0x1caaa, %r13
nop
nop
nop
and $55216, %r11
mov (%r13), %r10
nop
nop
nop
nop
nop
xor $22651, %r11
lea addresses_A_ht+0xeaca, %rsi
lea addresses_D_ht+0x174aa, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12
mov $115, %rcx
rep movsq
nop
nop
add $47507, %r13
lea addresses_UC_ht+0x4e90, %rsi
lea addresses_normal_ht+0x6cea, %rdi
clflush (%rsi)
nop
inc %r9
mov $44, %rcx
rep movsq
nop
nop
nop
xor $1683, %r10
lea addresses_WC_ht+0x1aa, %r13
nop
nop
nop
nop
nop
sub $28873, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
cmp $38554, %rcx
lea addresses_WC_ht+0x827b, %rdi
nop
nop
nop
nop
nop
add $28211, %r11
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
sub $33705, %r9
lea addresses_UC_ht+0x1a096, %rsi
lea addresses_D_ht+0x13144, %rdi
nop
nop
and $56381, %r12
mov $85, %rcx
rep movsb
nop
add $13437, %r11
lea addresses_normal_ht+0x181aa, %r10
clflush (%r10)
nop
nop
add $44604, %rcx
mov (%r10), %r11
nop
nop
nop
xor $10484, %rdi
lea addresses_A_ht+0x13b2a, %r13
nop
sub %r11, %r11
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x1b4aa, %r11
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r11), %r13w
nop
nop
nop
cmp $3235, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi

// Store
lea addresses_RW+0x1acaa, %rdi
nop
and %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdi)
inc %r12

// Store
lea addresses_normal+0x162aa, %r15
clflush (%r15)
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movaps %xmm3, (%r15)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_US+0x197f8, %rdi
nop
nop
nop
cmp $49786, %rax
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
and %r11, %r11

// Store
lea addresses_WT+0x1fa2a, %r15
nop
sub $9653, %r11
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
nop
nop
xor $62048, %r15

// Load
lea addresses_PSE+0x252c, %r11
nop
nop
nop
nop
sub $2062, %rdi
mov (%r11), %r15
nop
add %r14, %r14

// Store
lea addresses_UC+0x130aa, %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
add %r15, %r15

// Load
mov $0x82a, %rax
nop
nop
nop
nop
nop
xor $52840, %rcx
movntdqa (%rax), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
xor $55100, %r12

// Faulty Load
lea addresses_normal+0x104aa, %r15
sub $46110, %rcx
mov (%r15), %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'34': 108}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
