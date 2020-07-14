.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1e2be, %rsi
lea addresses_WT_ht+0x1e4c8, %rdi
xor $57638, %r13
mov $52, %rcx
rep movsl
dec %rsi
lea addresses_WC_ht+0x104c8, %rbp
nop
xor %rcx, %rcx
mov (%rbp), %rdi
cmp %rsi, %rsi
lea addresses_UC_ht+0x14bee, %rsi
lea addresses_WT_ht+0x8208, %rdi
clflush (%rdi)
cmp $17098, %r8
mov $34, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x15c06, %rbp
nop
and %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rbp)
nop
nop
lfence
lea addresses_normal_ht+0xd030, %rbp
clflush (%rbp)
nop
nop
nop
sub $25021, %rcx
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
nop
xor $11828, %rdi
lea addresses_WT_ht+0x39a2, %rbp
nop
nop
sub $23966, %r8
movl $0x61626364, (%rbp)
nop
nop
nop
and $35991, %rcx
lea addresses_A_ht+0x6a3c, %rbx
nop
nop
nop
nop
nop
sub $6902, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
and $27021, %rsi
lea addresses_A_ht+0x16218, %rsi
lea addresses_A_ht+0x45c8, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x101c8, %r8
inc %r13
mov (%r8), %si
nop
nop
nop
cmp $59898, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rsi

// Store
mov $0x968, %r13
nop
cmp $26733, %r11
mov $0x5152535455565758, %r8
movq %r8, (%r13)
nop
nop
nop
and $61641, %r14

// Store
lea addresses_RW+0x1fcc8, %rax
nop
nop
nop
sub $39710, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rax)
xor $54487, %r13

// Store
lea addresses_A+0x1b748, %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x51, (%r14)
nop
nop
nop
dec %rbx

// Load
lea addresses_normal+0x1cc8, %r14
inc %rbx
mov (%r14), %r8d
nop
nop
cmp $19670, %rbx

// Faulty Load
lea addresses_RW+0x178c8, %r13
inc %rax
vmovntdqa (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'08': 11, 'a6': 4, '45': 19400, 'e2': 7, 'ff': 2, '00': 2404, 'cf': 1}
00 45 45 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 08 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 00 00 45 45 45 00 45 00 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45
*/
