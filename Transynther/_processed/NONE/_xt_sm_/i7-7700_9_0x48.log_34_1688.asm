.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1ba61, %r13
nop
nop
nop
cmp %r9, %r9
mov (%r13), %ebp
add $5699, %r14
lea addresses_WT_ht+0x15c61, %rsi
lea addresses_WT_ht+0x14a21, %rdi
clflush (%rsi)
nop
nop
sub %rbp, %rbp
mov $83, %rcx
rep movsw
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x14f91, %rbp
nop
and $24313, %r9
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm6
vpextrq $0, %xmm6, %rcx
dec %r14
lea addresses_UC_ht+0x861, %rcx
nop
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%rcx)
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx

// Store
lea addresses_WC+0x3861, %r9
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r9)
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_WC+0x3861, %rcx
clflush (%rcx)
nop
nop
nop
add %r8, %r8
mov (%rcx), %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'58': 34}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
