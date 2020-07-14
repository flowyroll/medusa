.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x182d, %r9
nop
inc %r14
movb $0x61, (%r9)
nop
nop
nop
nop
nop
cmp $54974, %rbx
lea addresses_A_ht+0x10d, %rax
nop
nop
nop
nop
nop
sub $28219, %rdx
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x1616d, %rbx
nop
nop
nop
nop
xor %r12, %r12
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
sub $12060, %rbx
lea addresses_A_ht+0x135ad, %rbp
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %rbp
movaps %xmm7, (%rbp)
nop
nop
sub $29512, %rdx
lea addresses_WC_ht+0xd1bd, %r14
nop
nop
nop
add %r12, %r12
mov (%r14), %dx
nop
nop
dec %r14
lea addresses_WC_ht+0x1782f, %rsi
lea addresses_A_ht+0x1ebf7, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
inc %rdx
mov $109, %rcx
rep movsl
and %rsi, %rsi
lea addresses_normal_ht+0x3aeb, %rsi
lea addresses_WC_ht+0x12021, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $101, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x6bad, %rsi
nop
nop
dec %r14
mov (%rsi), %eax
nop
inc %rcx
lea addresses_WT_ht+0xbe6d, %rsi
lea addresses_WC_ht+0x1abd, %rdi
nop
nop
dec %rax
mov $82, %rcx
rep movsl
nop
nop
nop
nop
and $62818, %rsi
lea addresses_normal_ht+0xf4ad, %rsi
lea addresses_WC_ht+0x521c, %rdi
sub %r14, %r14
mov $74, %rcx
rep movsl
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x35cd, %rdi
nop
nop
nop
nop
sub $8916, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
nop
sub $57995, %rdi
lea addresses_A_ht+0x14fad, %r9
nop
nop
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm7
vpextrq $1, %xmm7, %r14
sub %rsi, %rsi
lea addresses_WC_ht+0x1b9ed, %rax
clflush (%rax)
nop
nop
nop
xor $51025, %rcx
mov (%rax), %rbp
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1c6a8, %rsi
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0xacb1, %rsi
lea addresses_A_ht+0x48ad, %rdi
nop
add %r12, %r12
mov $124, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx

// Load
lea addresses_RW+0x1d82d, %r15
nop
nop
cmp %r11, %r11
mov (%r15), %r13d
cmp $55928, %rcx

// Store
lea addresses_PSE+0x6fad, %rbp
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%rbp)
sub $46566, %r13

// Faulty Load
lea addresses_US+0x27ad, %r13
nop
nop
nop
nop
and %r14, %r14
mov (%r13), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16, 'NT': True, 'same': True, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
