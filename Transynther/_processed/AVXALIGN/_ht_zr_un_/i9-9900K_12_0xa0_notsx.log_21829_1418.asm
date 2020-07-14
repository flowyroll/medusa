.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x13be5, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdi), %r11d
add $52584, %r8
lea addresses_D_ht+0x190e5, %r12
nop
nop
nop
nop
and %rsi, %rsi
mov (%r12), %rcx
nop
nop
nop
nop
add $7206, %r8
lea addresses_D_ht+0x1b865, %rsi
lea addresses_A_ht+0x16ef1, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $39, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_WT_ht+0x1ede5, %rbx
nop
nop
nop
nop
nop
and $36056, %rdi
mov (%rbx), %r11w
nop
nop
inc %rdi
lea addresses_WC_ht+0x197e5, %r11
nop
nop
nop
nop
nop
inc %rdi
movw $0x6162, (%r11)
nop
nop
nop
sub $11006, %r11
lea addresses_A_ht+0xd965, %r8
cmp $17469, %rsi
mov (%r8), %r12w
xor %r11, %r11
lea addresses_normal_ht+0x7d25, %rsi
lea addresses_A_ht+0xa9eb, %rdi
nop
nop
nop
nop
dec %r10
mov $13, %rcx
rep movsq
add %rsi, %rsi
lea addresses_WC_ht+0x115e5, %rdi
nop
nop
xor $48086, %r11
mov (%rdi), %ecx
nop
nop
nop
and $57544, %r10
lea addresses_D_ht+0xb3c3, %rsi
lea addresses_D_ht+0x133e5, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $23, %rcx
rep movsq
nop
inc %r8
lea addresses_normal_ht+0xd7e5, %r11
nop
add %rbx, %rbx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
add $51725, %r12
lea addresses_UC_ht+0x4d85, %r12
clflush (%r12)
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %r12
vmovaps %ymm5, (%r12)
nop
nop
nop
nop
add $48498, %r12
lea addresses_WT_ht+0x95ad, %r12
nop
xor $21320, %rsi
movb (%r12), %r10b
nop
sub %rsi, %rsi
lea addresses_A_ht+0x167e5, %r10
nop
nop
nop
nop
nop
add %r12, %r12
movl $0x61626364, (%r10)
cmp %r10, %r10
lea addresses_UC_ht+0x1cbe5, %rsi
lea addresses_UC_ht+0x1d7e5, %rdi
nop
nop
nop
nop
sub $5470, %r8
mov $25, %rcx
rep movsw
nop
xor $63734, %rcx
lea addresses_A_ht+0x11d99, %r12
nop
nop
nop
nop
xor %r11, %r11
movb $0x61, (%r12)
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rdi

// Store
lea addresses_RW+0x18c25, %r12
clflush (%r12)
nop
nop
nop
nop
add $65131, %rdi
movw $0x5152, (%r12)
nop
nop
inc %r14

// Store
lea addresses_D+0x11b13, %r8
nop
nop
nop
nop
add $57574, %r13
movb $0x51, (%r8)
nop
nop
and $18783, %r8

// Faulty Load
lea addresses_D+0x107e5, %r8
dec %r13
vmovntdqa (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'08': 25, '44': 7, '07': 4010, 'c0': 3072, '72': 32, '46': 14682, '00': 1}
46 46 46 46 46 c0 46 46 c0 c0 46 46 46 c0 c0 07 46 c0 46 07 c0 46 07 46 c0 46 c0 46 c0 46 46 07 46 46 c0 46 46 46 46 46 07 46 46 07 46 46 c0 46 07 46 46 07 46 07 46 46 46 46 46 c0 46 07 46 c0 46 46 c0 46 07 46 46 46 46 46 46 46 07 46 46 46 c0 46 46 46 46 46 46 46 46 46 46 46 46 c0 46 46 07 c0 c0 07 c0 46 46 c0 46 46 46 46 46 46 46 46 46 46 46 07 46 46 46 46 46 c0 46 46 46 46 07 46 46 46 46 46 46 c0 46 46 c0 c0 07 46 46 07 46 07 46 46 c0 07 46 46 46 c0 46 c0 46 46 07 46 46 07 07 46 c0 07 46 07 46 07 07 46 46 46 46 46 46 07 46 46 07 46 46 46 46 c0 46 46 46 46 46 46 46 07 46 46 07 46 46 46 46 46 c0 46 46 46 46 46 07 46 46 c0 46 c0 46 c0 c0 46 c0 46 07 46 46 46 c0 46 07 46 46 46 07 46 c0 46 07 46 46 07 46 46 c0 46 46 46 46 46 07 46 46 46 07 46 c0 46 46 46 07 46 c0 46 46 c0 46 46 07 46 07 c0 07 07 46 07 c0 07 46 46 46 c0 07 07 c0 46 46 07 c0 07 46 07 07 46 46 46 c0 07 c0 46 c0 46 46 46 46 46 46 46 46 c0 46 07 46 07 46 46 46 46 46 46 46 46 46 07 46 46 07 07 46 46 46 07 c0 46 46 46 07 46 c0 c0 46 46 07 46 07 46 46 07 46 c0 46 07 46 07 46 46 07 46 46 46 46 46 07 46 46 46 46 46 07 07 46 c0 46 46 c0 46 46 c0 46 46 c0 07 46 46 46 07 46 46 46 46 07 07 46 46 46 46 46 46 07 46 46 46 46 46 46 46 c0 46 46 46 46 46 46 46 46 c0 46 46 07 46 46 46 46 46 46 46 07 46 46 46 46 46 46 46 46 07 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 07 46 07 46 46 46 46 46 46 07 46 46 46 07 46 c0 46 07 46 07 c0 46 46 46 46 46 46 46 46 46 46 46 46 07 46 46 46 46 46 46 46 46 46 46 c0 46 46 46 46 46 46 07 46 46 46 46 46 46 46 07 46 46 46 46 46 46 46 46 46 46 46 46 c0 07 46 07 46 46 46 46 07 46 46 c0 46 46 46 c0 46 46 07 46 46 07 46 07 c0 46 07 46 c0 46 c0 46 46 46 46 46 07 07 c0 c0 46 46 07 c0 46 46 07 07 c0 c0 46 c0 46 c0 46 46 46 46 46 c0 46 07 46 07 46 46 46 46 46 07 46 46 46 46 46 46 46 07 46 07 46 46 46 46 46 46 46 46 46 46 46 07 46 46 c0 07 46 46 46 07 c0 46 46 46 46 46 46 c0 c0 07 07 c0 46 07 46 46 46 07 46 07 07 c0 07 46 c0 c0 46 07 46 46 46 07 46 46 46 46 46 46 46 46 46 c0 46 46 46 46 46 46 46 07 46 c0 46 46 46 c0 c0 46 46 07 46 07 46 46 46 07 46 07 46 46 07 46 07 07 46 c0 07 46 46 46 c0 46 46 07 c0 07 c0 c0 46 07 46 07 07 46 46 46 46 46 07 c0 07 46 46 c0 07 07 07 46 c0 46 c0 46 46 46 46 07 46 46 46 46 c0 46 c0 46 46 46 46 46 c0 46 46 46 46 46 46 46 46 46 46 46 07 46 46 46 46 c0 46 c0 46 07 46 c0 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 07 46 46 46 46 46 46 c0 46 c0 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 c0 46 46 46 46 46 c0 46 46 46 46 46 46 46 07 07 46 07 c0 07 07 46 07 46 46 07 46 46 46 07 46 46 07 07 46 07 46 c0 46 46 46 46 46 c0 07 46 07 46 46 46 46 46 46 46 07 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 07 46 07 46 46 46 46 c0 c0 07 46 46 07 46 46 46 46 46 07 c0 46 46 46 46 46 46 46 46 07 46 46 46 46 46 46 46 46 46 46 07 46 07 46 c0 46 46 46 07 46 c0 46 c0 46 46 46 46 07 46 46 46 46 46 46 46 46 46 46 c0 46 07 46 c0 46 46 c0 07 c0 c0 c0 46 46 07 46 46 07 c0 46 46 46 07 46 46
*/
