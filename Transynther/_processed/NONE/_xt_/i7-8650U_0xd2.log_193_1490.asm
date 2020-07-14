.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1302a, %rbx
nop
nop
nop
nop
nop
and $11114, %r8
movb (%rbx), %r11b
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x1196, %rax
nop
nop
nop
xor $22647, %rsi
mov (%rax), %r8d
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x36e, %r11
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r11)
nop
nop
add $56457, %rdx
lea addresses_normal_ht+0x1dd54, %r8
nop
nop
nop
nop
add $17104, %r11
mov $0x6162636465666768, %r9
movq %r9, (%r8)
nop
nop
add $12967, %r9
lea addresses_A_ht+0x8aca, %r9
sub %rbx, %rbx
mov (%r9), %rsi
nop
cmp %r8, %r8
lea addresses_normal_ht+0x1981a, %r11
clflush (%r11)
add %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x4f26, %rsi
lea addresses_A_ht+0x1794a, %rdi
cmp %rbx, %rbx
mov $70, %rcx
rep movsw
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xe14a, %rax
nop
nop
nop
nop
sub $5122, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rax)
nop
add $45395, %r11
lea addresses_A_ht+0xa54a, %rsi
lea addresses_D_ht+0x8d4a, %rdi
nop
nop
and %rdx, %rdx
mov $84, %rcx
rep movsw
nop
inc %rcx
lea addresses_normal_ht+0x1e74a, %rsi
lea addresses_normal_ht+0x69fb, %rdi
nop
nop
nop
nop
xor $16370, %r8
mov $10, %rcx
rep movsw
nop
and %r9, %r9
lea addresses_normal_ht+0x1b14a, %r8
clflush (%r8)
add %rdi, %rdi
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
add %rax, %rax
lea addresses_WC_ht+0xc54a, %rsi
lea addresses_WC_ht+0x14732, %rdi
nop
inc %r11
mov $24, %rcx
rep movsb
nop
inc %rdi
lea addresses_WT_ht+0x16aa, %r9
nop
sub %rax, %rax
mov (%r9), %bx
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0xb54a, %rsi
lea addresses_WC_ht+0x1dfde, %rdi
nop
nop
nop
inc %r11
mov $41, %rcx
rep movsq
nop
xor $11555, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx

// Store
lea addresses_UC+0x847a, %r13
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
nop
and %r10, %r10

// Load
lea addresses_US+0x1394a, %r14
clflush (%r14)
nop
nop
add %r15, %r15
mov (%r14), %r10d
nop
nop
add $15850, %r10

// Store
lea addresses_normal+0x954a, %r10
nop
nop
add $18800, %r13
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
xor %r15, %r15

// Store
lea addresses_RW+0xfb4a, %r10
clflush (%r10)
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
nop
nop
and $43810, %r13

// Faulty Load
lea addresses_D+0x1654a, %r9
clflush (%r9)
nop
nop
nop
and $30111, %r14
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'36': 193}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
