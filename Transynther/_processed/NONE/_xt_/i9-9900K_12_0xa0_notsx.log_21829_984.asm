.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xb309, %r15
nop
add %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
add %rdx, %rdx
lea addresses_D_ht+0x195d5, %rsi
lea addresses_D_ht+0x1d461, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $54, %rcx
rep movsw
dec %rsi
lea addresses_WC_ht+0xda49, %rsi
lea addresses_WC_ht+0x15d1, %rdi
clflush (%rsi)
nop
nop
sub $9469, %r15
mov $83, %rcx
rep movsb
nop
and %r15, %r15
lea addresses_WT_ht+0xc579, %rsi
lea addresses_UC_ht+0x18179, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $54, %rcx
rep movsw
nop
nop
nop
nop
sub $13322, %rdi
lea addresses_A_ht+0x76a9, %rcx
nop
nop
nop
nop
nop
xor $19769, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x1bebe, %r13
nop
nop
nop
nop
and $1882, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x14179, %rdx
nop
nop
nop
cmp $46919, %r13
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x1e069, %rbx
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, (%rbx)
sub %rsi, %rsi
lea addresses_WT_ht+0x18184, %rdi
nop
nop
nop
sub $25037, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rdi
movaps %xmm4, (%rdi)
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0xab79, %r15
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%r15)
and %rsi, %rsi
lea addresses_normal_ht+0x1dc11, %r15
nop
xor $62340, %rcx
movups (%r15), %xmm2
vpextrq $1, %xmm2, %r13
sub %rbp, %rbp
lea addresses_D_ht+0x18179, %rsi
lea addresses_D_ht+0x13445, %rdi
nop
xor %rbp, %rbp
mov $67, %rcx
rep movsl
nop
xor $64349, %rdi
lea addresses_UC_ht+0x1bd79, %rdi
nop
nop
nop
nop
nop
xor $36762, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %rdi
movntdq %xmm0, (%rdi)
nop
cmp $57559, %rcx
lea addresses_A_ht+0x19b01, %rsi
lea addresses_WT_ht+0x7179, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $50147, %r13
mov $1, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $37556, %r15
lea addresses_WC_ht+0x1af29, %rsi
lea addresses_UC_ht+0x1c185, %rdi
nop
xor $9684, %rdx
mov $92, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x137e9, %rcx
nop
nop
nop
add $25442, %rbp
movl $0x51525354, (%rcx)
nop
cmp %rdi, %rdi

// Load
lea addresses_A+0xfc1, %r12
nop
nop
nop
nop
nop
and %r9, %r9
mov (%r12), %rbp
nop
sub $13258, %rcx

// Faulty Load
lea addresses_D+0x1a979, %r9
sub $47303, %r12
movb (%r9), %r13b
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
