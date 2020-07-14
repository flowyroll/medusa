.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14115, %rsi
lea addresses_normal_ht+0x1c315, %rdi
clflush (%rdi)
nop
nop
sub $8682, %r15
mov $43, %rcx
rep movsq
add %rax, %rax
lea addresses_UC_ht+0x15e95, %r10
nop
nop
nop
xor $28743, %rbp
movb (%r10), %al
nop
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0xfd15, %rsi
lea addresses_WT_ht+0x1c515, %rdi
nop
nop
sub $61482, %r9
mov $108, %rcx
rep movsl
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x10855, %rax
nop
nop
nop
and $4869, %rbp
movb (%rax), %r10b
sub $36179, %rsi
lea addresses_A_ht+0x14d5, %r15
add $21926, %r9
movl $0x61626364, (%r15)
nop
inc %rax
lea addresses_WT_ht+0x3ca5, %rsi
lea addresses_normal_ht+0x585, %rdi
inc %rax
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0xf4c5, %r15
nop
nop
dec %rcx
mov (%r15), %r9d
inc %rcx
lea addresses_A_ht+0x1db15, %rbp
nop
nop
nop
nop
nop
dec %r9
mov (%rbp), %si
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1308d, %rsi
inc %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
cmp $35612, %rsi
lea addresses_A_ht+0x19915, %r9
nop
nop
add %rdi, %rdi
mov (%r9), %ax
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_US+0x1ae15, %rbp
nop
nop
nop
nop
and $46891, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rbp)
nop
inc %rcx

// Load
lea addresses_RW+0x7715, %r12
nop
nop
nop
nop
nop
add $44266, %rax
mov (%r12), %rcx
nop
nop
nop
nop
nop
and $10372, %rax

// Store
lea addresses_WT+0x1e095, %rcx
nop
nop
nop
and $32874, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
add $59031, %r12

// Store
lea addresses_PSE+0x1db15, %rcx
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovntdq %ymm3, (%rcx)
cmp %r13, %r13

// Load
lea addresses_D+0x3ac6, %r12
clflush (%r12)
nop
nop
nop
nop
and $15576, %r13
mov (%r12), %edi

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbp
inc %rcx

// Store
lea addresses_A+0x10235, %rdi
clflush (%rdi)
nop
nop
xor $21156, %rax
movb $0x51, (%rdi)
nop
nop
nop
dec %r12

// Load
mov $0x7df0120000000a61, %rax
inc %rcx
mov (%rax), %rdi
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_normal+0x7b15, %r13
nop
xor $49398, %r12
vmovntdqa (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'00': 62}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
