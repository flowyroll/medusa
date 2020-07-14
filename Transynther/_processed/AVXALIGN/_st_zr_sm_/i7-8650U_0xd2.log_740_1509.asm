.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16cd, %r9
nop
nop
nop
sub $65266, %rbp
movb $0x61, (%r9)
nop
nop
nop
nop
xor $13672, %r15
lea addresses_WC_ht+0x1a95f, %r10
nop
nop
nop
nop
nop
sub $49966, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x145f, %rsi
lea addresses_A_ht+0x1583f, %rdi
and %r11, %r11
mov $44, %rcx
rep movsq
nop
sub %r11, %r11
lea addresses_WC_ht+0xfa9f, %rsi
lea addresses_A_ht+0x1aebf, %rdi
nop
nop
nop
nop
sub $49656, %r15
mov $110, %rcx
rep movsq
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1dd5f, %rdi
xor $33805, %rbp
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rcx
nop
cmp $19695, %rsi
lea addresses_WC_ht+0x1de5f, %rcx
nop
nop
nop
inc %r13
movw $0x6162, (%rcx)
dec %rbp
lea addresses_WC_ht+0x1e857, %rsi
nop
nop
nop
inc %r15
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x1319f, %rdi
nop
nop
nop
nop
nop
inc %rcx
mov (%rdi), %si
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x365f, %rsi
nop
nop
nop
nop
cmp %r10, %r10
movb (%rsi), %r9b
nop
nop
nop
sub $27123, %rcx
lea addresses_normal_ht+0x98cf, %rdi
nop
sub $18337, %r15
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0xe95f, %r13
nop
xor %r11, %r11
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
xor %r15, %r15
lea addresses_D_ht+0x1215f, %rsi
nop
xor $7604, %rcx
movw $0x6162, (%rsi)
nop
nop
inc %r13
lea addresses_WC_ht+0x1935f, %rsi
xor %r11, %r11
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
xor $51649, %rdi
lea addresses_A_ht+0x797f, %rcx
clflush (%rcx)
inc %r15
movb (%rcx), %r11b
add $23875, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi

// Load
lea addresses_PSE+0x295f, %rbp
nop
add $20071, %r11
mov (%rbp), %r10
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_US+0x15d5f, %r10
nop
nop
nop
nop
add $21681, %rdi
movw $0x5152, (%r10)
nop
cmp %rdi, %rdi

// Load
lea addresses_WT+0x1f45f, %r11
nop
sub %r10, %r10
mov (%r11), %rdi
cmp $21477, %rcx

// Store
lea addresses_PSE+0x295f, %r10
nop
inc %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_RW+0x1bc1, %rcx
add $19618, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rcx)

// Exception!!!
nop
mov (0), %r12
nop
nop
dec %rbp

// Store
lea addresses_D+0xae73, %r12
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
nop
and $59704, %r10

// Store
lea addresses_WC+0x1fd93, %r14
nop
add $33627, %r12
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_PSE+0x295f, %rdi
cmp %rbp, %rbp
movaps (%rdi), %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 666, '58': 74}
00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 58 00 00 58 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 58 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 58 00 00 00 00 00 58 00 58 00 00 00 00 58 58 00 00 00 00
*/
