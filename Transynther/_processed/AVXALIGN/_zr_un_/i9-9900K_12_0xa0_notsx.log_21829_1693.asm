.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7d7, %r11
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
sub $50539, %r12
lea addresses_normal_ht+0x7375, %rax
cmp %r10, %r10
mov (%rax), %r13
sub $11390, %rax
lea addresses_WC_ht+0x18687, %rsi
lea addresses_WT_ht+0x17d7, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r11, %r11
mov $107, %rcx
rep movsq
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x128e3, %r11
nop
nop
nop
nop
nop
xor $13256, %rax
movups (%r11), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
add $23672, %rdi
lea addresses_D_ht+0x11dd7, %r12
add %r13, %r13
movups (%r12), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
nop
and $54053, %r10
lea addresses_D_ht+0x17fd7, %rdx
nop
cmp %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm0, (%rdx)
nop
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x1a7d7, %r11
nop
and %r10, %r10
mov (%r11), %ax
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Load
lea addresses_normal+0x1f6df, %rax
nop
nop
nop
nop
cmp %r15, %r15
mov (%rax), %r10
nop
add %r8, %r8

// Store
lea addresses_US+0x1fd7, %rdx
clflush (%rdx)
nop
nop
nop
xor $6011, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
add $62356, %r10

// Store
mov $0xdd7, %r10
nop
and %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
add $63697, %rdi

// Faulty Load
lea addresses_US+0x1a7d7, %rdx
nop
nop
nop
add %rax, %rax
vmovntdqa (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'04': 1, '08': 10, '72': 6, '05': 2479, '00': 19333}
04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 05 05 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 05 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 05 00 00 00 05 00 00 00 00 00 00 05 00 00 00 05 00 00 00 00 00 00 00 00 05 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 05 00 00 05 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 05 00 00 00 00 05 00 00 05 00 05 00 00 00 00 05 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 05 00 00 00 00 00 00 00 05 05 00 00 00 00 00 00 00 00 00 00 00 00 00 05 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 05 05 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 05 00 05 00 00 00 05 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 05 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 05 00 05 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 05 00 00 05 00 00 00 00 00 00 00 00 00 00 05 00 00 00 05 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 05 00 00 05 00 00 05 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 05 00 00 00 00 00 05 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 05 00 00 00 05 00 00 05 00 00 00 00 05 00 05 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 05 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 05 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 05 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 05 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 05 00 00 05 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 05 00 00 00 05 00 05 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 05 00 00 00 00 00 05 00 00 00 05 00 00 00 05 00 00 00 05 00 00 00 00 05 00 05 00 00 00 05 00 05 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 05 05 00 05 00 00 00 00 00 00 00 05 00 00 05 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 05 00 00 05 00 05 00 00 05 00 00 00 05 00 00 00 00 00 00 00 00 00 00
*/
