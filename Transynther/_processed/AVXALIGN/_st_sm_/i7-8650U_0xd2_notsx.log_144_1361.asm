.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1cf3d, %rsi
nop
xor $2304, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%rsi)
nop
cmp %r11, %r11
lea addresses_WC_ht+0x1df3d, %r14
nop
add $23807, %r11
movb $0x61, (%r14)
nop
sub $47324, %rbx
lea addresses_D_ht+0x17b3d, %rsi
lea addresses_WC_ht+0x1c83d, %rdi
nop
nop
nop
inc %r10
mov $67, %rcx
rep movsw
sub %rcx, %rcx
lea addresses_normal_ht+0x243d, %rsi
lea addresses_WT_ht+0x1d73d, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $91, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1877d, %rsi
lea addresses_D_ht+0x1633d, %rdi
clflush (%rsi)
nop
cmp %r15, %r15
mov $20, %rcx
rep movsw
sub $12183, %r15
lea addresses_A_ht+0x1223d, %r10
nop
nop
nop
nop
add %rsi, %rsi
movb (%r10), %r15b
nop
nop
nop
and $38472, %r11
lea addresses_A_ht+0x1d73d, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x1673d, %rcx
clflush (%rcx)
nop
nop
xor $15488, %rbx
movb $0x61, (%rcx)
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rsi

// Store
lea addresses_PSE+0xf73d, %rsi
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_PSE+0xf73d, %r15
nop
nop
nop
nop
nop
xor $30605, %r9
mov (%r15), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 144}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
