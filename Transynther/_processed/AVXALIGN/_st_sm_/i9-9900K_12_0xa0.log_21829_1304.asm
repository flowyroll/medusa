.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x443d, %rax
nop
nop
nop
cmp $57670, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rax)
dec %r15
lea addresses_WT_ht+0x1c5aa, %rbx
nop
add $28935, %r15
mov (%rbx), %r10
nop
nop
cmp $19421, %rsi
lea addresses_A_ht+0x10870, %rsi
lea addresses_WT_ht+0x256e, %rdi
nop
nop
inc %r10
mov $85, %rcx
rep movsw
nop
nop
nop
and $47416, %rbx
lea addresses_normal_ht+0x92cd, %rsi
lea addresses_WC_ht+0x1188d, %rdi
clflush (%rsi)
nop
add $22298, %r15
mov $51, %rcx
rep movsb
nop
nop
nop
nop
and $25764, %rdi
lea addresses_normal_ht+0x12d0d, %rcx
nop
nop
nop
and %rbx, %rbx
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
nop
sub $3097, %r10
lea addresses_UC_ht+0x1c40d, %r13
nop
nop
nop
nop
nop
and $53373, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r13)
nop
xor %rbx, %rbx
lea addresses_A_ht+0x15a8d, %r13
nop
nop
dec %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r13)
add $52177, %rsi
lea addresses_A_ht+0x1608d, %rcx
clflush (%rcx)
nop
sub %r15, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
and $39935, %rbx
lea addresses_UC_ht+0x12068, %rsi
lea addresses_WT_ht+0x1032d, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $15, %rcx
rep movsw
nop
nop
nop
sub $62474, %rsi
lea addresses_A_ht+0x8ad, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add %r15, %r15
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x13e8d, %rbx
nop
nop
nop
nop
nop
sub $62988, %rax
movw $0x6162, (%rbx)
nop
nop
cmp $53069, %r13
lea addresses_WC_ht+0x18e8d, %rcx
nop
nop
nop
nop
cmp $46619, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x68d, %rsi
lea addresses_RW+0x124ad, %rdi
nop
nop
nop
inc %r10
mov $8, %rcx
rep movsb
nop
add $55196, %rsi

// Load
lea addresses_US+0x3d0d, %rbp
nop
nop
nop
nop
nop
inc %r13
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
nop
nop
xor $15451, %rdi

// Store
lea addresses_A+0x18707, %r13
sub %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
cmp %r13, %r13

// Store
mov $0x72a7b000000000cd, %r11
nop
nop
nop
nop
nop
sub $11588, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_UC+0x198ab, %rcx
nop
sub $20069, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rcx)
nop
and %rdi, %rdi

// Store
lea addresses_RW+0x8c8d, %rcx
nop
nop
nop
nop
add $27208, %r10
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_RW+0x8c8d, %rdi
clflush (%rdi)
xor %r11, %r11
mov (%rdi), %r13w
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_RW'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
