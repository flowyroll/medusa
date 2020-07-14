.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xcc3e, %rsi
lea addresses_A_ht+0x16c6e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r13, %r13
mov $95, %rcx
rep movsw
nop
nop
nop
add $40496, %r9
lea addresses_UC_ht+0x1df2e, %rbx
clflush (%rbx)
nop
add %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm0
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm0, (%rbx)
nop
nop
nop
nop
nop
and $6696, %rdi
lea addresses_D_ht+0x1856e, %rsi
nop
nop
add %rbx, %rbx
mov (%rsi), %rcx
nop
nop
nop
nop
add $49750, %r9
lea addresses_WT_ht+0x1a572, %r13
nop
inc %rcx
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
cmp $17668, %rcx
lea addresses_D_ht+0xdcfe, %r9
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r9), %ecx
nop
nop
nop
nop
xor $10588, %r9
lea addresses_WC_ht+0x1517e, %r9
clflush (%r9)
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r9)
nop
cmp $55295, %r13
lea addresses_normal_ht+0x5e6e, %r9
nop
sub $31139, %r12
movb (%r9), %cl
nop
nop
nop
and $52118, %rcx
lea addresses_WT_ht+0x1aebe, %r13
nop
nop
nop
nop
xor $52468, %rsi
movb (%r13), %r12b
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x796e, %rsi
lea addresses_A_ht+0x128ee, %rdi
nop
xor $60214, %r13
mov $86, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0xa52e, %r9
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
and $64803, %rdi
lea addresses_WC_ht+0x664e, %r9
nop
add %r13, %r13
mov (%r9), %r12
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rbx

// Faulty Load
lea addresses_UC+0x10d6e, %r13
nop
cmp %r11, %r11
movntdqa (%r13), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'46': 9575, '45': 12254}
45 45 46 45 45 45 45 45 46 46 45 45 46 46 45 45 46 45 46 45 45 45 45 46 46 45 46 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 46 45 46 46 45 45 46 46 46 46 45 46 46 46 45 45 45 46 45 46 45 46 45 45 45 46 45 45 45 45 45 46 46 45 45 46 46 46 45 45 46 46 45 46 46 45 46 46 45 46 45 46 46 45 46 45 45 45 46 46 46 46 46 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 46 46 45 46 46 46 45 45 46 46 45 45 46 46 45 46 46 46 46 46 46 46 46 46 46 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 46 46 46 46 46 45 46 45 46 45 46 45 46 45 46 46 46 45 46 46 46 45 45 45 46 46 46 46 46 46 45 45 45 46 45 45 45 45 45 46 46 45 46 46 45 45 45 45 46 46 46 45 46 46 45 45 45 45 45 45 46 45 46 45 45 45 46 46 45 46 46 45 46 45 45 46 45 45 45 46 45 46 45 46 46 45 46 45 46 46 45 45 45 45 46 46 46 45 46 45 45 46 46 46 46 46 45 46 46 46 46 46 46 45 46 45 45 45 45 45 46 46 46 45 46 46 46 45 45 45 45 46 45 46 45 46 46 46 46 45 45 46 45 46 46 45 46 46 45 45 46 46 46 45 46 46 46 46 45 46 46 46 45 45 45 46 45 45 46 46 46 45 46 46 45 45 45 45 46 45 45 46 46 46 45 46 45 45 45 46 45 45 46 45 46 46 45 46 45 46 46 45 46 45 45 45 45 45 45 45 45 45 46 45 46 46 45 46 45 45 45 46 45 45 46 46 45 45 46 45 45 46 46 46 45 45 45 46 45 45 46 45 46 45 46 45 46 45 45 46 45 46 46 45 45 46 45 45 45 46 45 45 46 45 45 46 45 45 45 46 45 45 46 45 45 46 46 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 46 45 46 45 45 45 45 45 46 45 45 46 45 46 45 45 45 45 46 45 46 45 46 45 45 45 45 45 45 46 46 46 46 46 46 46 45 46 45 45 45 45 46 46 46 46 46 45 45 46 46 45 46 46 46 45 45 45 45 46 46 46 45 45 46 45 46 46 46 45 45 45 45 45 45 45 46 45 45 45 46 45 46 45 45 46 45 46 45 45 46 46 45 45 46 45 46 46 45 46 45 45 46 45 46 45 45 45 45 46 46 45 46 45 45 46 45 45 45 45 45 45 45 45 46 45 45 46 46 45 45 46 45 45 45 45 45 45 45 46 46 46 46 45 46 45 45 45 45 45 45 46 45 45 46 45 45 46 46 45 45 45 46 45 46 45 45 45 45 45 46 46 46 45 46 46 45 45 46 45 45 46 46 45 46 45 46 45 46 45 45 46 45 45 46 45 46 45 46 45 46 46 45 45 45 46 46 45 45 45 45 45 46 45 45 45 45 46 46 45 45 46 46 45 45 46 45 46 45 46 46 46 45 45 46 45 46 46 46 46 45 46 45 46 45 45 45 46 46 46 45 46 45 46 46 46 46 46 45 46 46 46 45 46 46 45 45 46 45 46 45 46 45 46 45 45 46 45 46 45 46 46 46 46 45 45 45 46 45 46 46 46 45 46 46 45 45 45 45 46 45 46 46 45 45 45 45 45 45 45 45 45 45 46 46 45 46 45 45 46 46 45 45 46 45 46 46 46 45 46 45 45 46 46 45 46 45 45 46 45 45 45 46 45 45 45 46 46 46 45 45 45 46 46 45 46 46 45 46 45 45 45 45 46 46 46 46 45 46 45 46 45 46 45 45 46 45 45 45 45 45 45 45 45 46 46 45 45 45 46 46 46 46 45 45 45 45 45 46 45 45 46 46 45 46 46 45 45 45 45 45 46 45 45 45 45 46 46 45 46 45 46 45 45 45 46 45 45 45 45 46 45 46 45 45 45 46 45 45 46 45 45 46 46 45 46 46 46 46 45 46 46 45 45 45 45 45 46 46 45 45 45 46 45 45 46 45 45 46 45 45 45 45 46 45 46 46 45 45 46 45 46 45 45 45 46 45 45 46 46 46 45 45 46 46 45 45 45 46 45 46 46 45 46 46 46 46 46 46 45 45 45 45 46 45 46 46 45 45 46 45 45 45 45 45 46
*/
