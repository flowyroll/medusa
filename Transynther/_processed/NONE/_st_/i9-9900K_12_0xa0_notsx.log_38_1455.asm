.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bf27, %rsi
lea addresses_WT_ht+0x1117c, %rdi
clflush (%rsi)
nop
nop
nop
dec %rbp
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x1b1de, %r10
nop
sub %r14, %r14
movb (%r10), %r15b
nop
nop
add $50859, %rcx
lea addresses_D_ht+0x1342e, %r10
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%r10), %xmm3
vpextrq $0, %xmm3, %r15
and $28280, %r15
lea addresses_normal_ht+0x391e, %r14
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r15
movq %r15, (%r14)
nop
nop
nop
nop
xor $12064, %r10
lea addresses_D_ht+0x75de, %rbp
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rbp
movntdq %xmm6, (%rbp)
nop
nop
nop
nop
nop
and $59293, %r15
lea addresses_A_ht+0x1201e, %rsi
lea addresses_WT_ht+0x9d3e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r14, %r14
mov $56, %rcx
rep movsl
nop
cmp %r15, %r15
lea addresses_WT_ht+0x15efe, %rsi
lea addresses_WT_ht+0x11986, %rdi
xor $36678, %r11
mov $68, %rcx
rep movsq
nop
nop
nop
nop
add $14638, %r11
lea addresses_WC_ht+0x1d1de, %r10
nop
add $31815, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
nop
xor $26069, %r11
lea addresses_D_ht+0xedde, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
nop
sub $6274, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x12bde, %rsi
lea addresses_WT+0x5de, %rdi
nop
nop
lfence
mov $59, %rcx
rep movsb
inc %r15

// Load
lea addresses_WT+0xd4e6, %r13
clflush (%r13)
nop
lfence
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
add %r10, %r10

// Store
lea addresses_A+0x1194e, %r12
nop
nop
nop
nop
nop
xor $39868, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r12)
nop
nop
cmp %r15, %r15

// Store
lea addresses_PSE+0x57f4, %rcx
dec %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
sub %r13, %r13

// Store
mov $0x5a4a1700000009de, %rsi
nop
nop
nop
nop
xor %r10, %r10
movl $0x51525354, (%rsi)
and $30733, %rsi

// Store
lea addresses_PSE+0x11236, %rsi
clflush (%rsi)
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
and %r12, %r12

// Load
lea addresses_D+0x14efe, %r13
nop
nop
nop
nop
sub $30407, %r10
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
cmp $46714, %rsi

// Store
lea addresses_US+0x103de, %rcx
nop
nop
nop
nop
inc %r15
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
add $57128, %rdi

// Store
lea addresses_WT+0x111de, %rcx
nop
nop
nop
nop
nop
sub $31803, %rsi
movb $0x51, (%rcx)
nop
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_WT+0x5de, %rsi
nop
nop
nop
nop
and %r10, %r10
movb (%rsi), %r15b
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'32': 38}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
