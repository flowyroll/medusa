.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x189df, %rsi
lea addresses_WT_ht+0x1d17f, %rdi
cmp $29176, %r14
mov $111, %rcx
rep movsq
nop
nop
nop
nop
add $33446, %rax
lea addresses_normal_ht+0xee3f, %r13
add %rax, %rax
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
and $56139, %rdi
lea addresses_WT_ht+0x885f, %rdi
nop
cmp %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xbd7f, %rsi
nop
nop
nop
and %rax, %rax
mov (%rsi), %r14d
nop
dec %rsi
lea addresses_normal_ht+0xda37, %rcx
dec %rbx
movl $0x61626364, (%rcx)
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x16b23, %rsi
lea addresses_A_ht+0x1c97f, %rdi
nop
nop
and %r11, %r11
mov $80, %rcx
rep movsl
inc %r14
lea addresses_normal_ht+0x9d7f, %r13
nop
nop
nop
nop
nop
xor $21924, %rsi
movb $0x61, (%r13)
sub $38605, %rax
lea addresses_WC_ht+0x12b7f, %rsi
lea addresses_D_ht+0x17843, %rdi
nop
nop
nop
add $65523, %r13
mov $68, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x17b8b, %rbx
nop
cmp %rcx, %rcx
movb $0x61, (%rbx)
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1d57f, %rsi
lea addresses_D_ht+0x1e0bf, %rdi
nop
nop
nop
nop
dec %r11
mov $49, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rdi

// Store
lea addresses_WC+0x1e67f, %r12
nop
nop
dec %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
nop
add $29949, %rdi

// Faulty Load
lea addresses_WC+0x217f, %r14
and %r8, %r8
mov (%r14), %r12d
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'2a': 1, 'b8': 1, '3c': 21, 'd0': 1, 'f0': 5674, '8c': 1, '80': 8, '44': 62, 'b0': 3, '3f': 3, '1a': 1, '14': 1, '72': 1, '46': 2900, 'f2': 1, '00': 1624, 'dc': 1, '38': 1, 'a6': 1, '18': 1, 'fa': 1, '53': 689, '56': 2, '26': 1, '02': 1, '01': 277, '48': 1052, 'ff': 9485, '68': 1, '29': 6, '1e': 1, '16': 1, '1c': 1, 'e6': 1, 'e0': 2, '50': 1}
ff ff 01 ff f0 48 ff 53 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 00 ff f0 ff ff 46 ff f0 ff f0 ff f0 00 46 ff 01 ff f0 48 ff f0 ff f0 53 00 53 ff 46 ff f0 ff f0 48 46 ff f0 48 ff f0 ff ff ff ff f0 48 53 ff f0 00 53 ff ff f0 46 53 ff f0 ff f0 ff ff 46 46 46 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 48 00 00 ff ff 46 48 46 48 46 ff f0 00 ff f0 46 46 00 ff ff f0 ff f0 ff ff f0 ff f0 ff f0 00 ff 46 ff f0 ff f0 00 ff f0 ff f0 ff ff ff ff f0 48 ff f0 ff f0 ff f0 ff 48 ff ff f0 00 ff f0 53 ff f0 ff ff 46 46 ff 53 48 ff ff ff ff 01 ff 46 00 46 46 00 ff ff ff ff f0 ff f0 ff f0 46 ff 46 ff f0 ff ff ff 00 ff 00 46 48 ff ff 46 48 46 00 53 ff f0 00 46 00 46 ff f0 00 46 ff ff f0 ff ff ff 46 ff f0 46 ff ff ff f0 ff ff 01 ff 01 46 ff f0 48 ff ff 00 ff f0 ff 46 48 ff 46 ff f0 ff f0 ff f0 ff f0 ff ff f0 ff f0 ff f0 ff f0 ff f0 ff 53 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 48 ff ff 01 46 48 ff 46 00 ff f0 46 00 46 ff f0 ff f0 00 ff 46 ff f0 48 ff f0 46 53 ff ff f0 46 00 46 00 ff 46 ff f0 48 ff f0 ff f0 ff f0 ff f0 ff f0 48 ff 46 ff f0 ff f0 ff 46 46 ff f0 ff f0 46 ff 46 ff f0 ff f0 44 ff 46 46 00 ff f0 ff 00 46 ff f0 00 ff 00 ff ff f0 53 00 ff f0 ff f0 ff f0 ff f0 ff f0 46 46 ff f0 00 ff f0 ff ff f0 3c 46 ff 46 46 00 ff f0 ff f0 ff f0 ff f0 ff f0 48 ff ff f0 ff ff ff f0 ff 46 53 ff ff f0 ff f0 ff f0 ff ff 01 46 ff 01 00 ff ff ff ff 01 ff 48 ff 00 ff 00 53 48 ff 53 ff f0 ff f0 46 48 ff f0 ff f0 ff f0 00 46 ff ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff ff f0 48 ff 53 00 ff 53 ff f0 ff ff 46 ff f0 ff f0 00 46 ff 46 00 ff ff f0 ff f0 ff f0 48 ff ff 46 ff f0 ff f0 ff f0 00 46 46 ff ff f0 53 ff f0 ff f0 46 46 46 ff f0 46 ff 46 ff f0 53 46 ff 46 ff f0 ff 00 ff ff f0 46 00 ff f0 00 ff 46 00 ff ff f0 ff 46 ff 46 ff 01 46 00 ff 46 ff 48 46 46 ff f0 ff ff 53 00 ff 53 ff f0 ff ff f0 ff f0 ff f0 ff f0 ff f0 46 46 46 46 53 ff f0 ff ff ff ff f0 ff 46 ff f0 00 ff 46 48 ff f0 ff 00 53 00 ff f0 00 ff f0 48 53 00 00 ff f0 ff f0 ff ff ff ff f0 ff ff 01 ff 01 ff 00 ff f0 46 46 ff f0 ff f0 ff f0 ff f0 00 ff ff ff f0 ff f0 ff f0 ff f0 00 ff ff f0 ff f0 ff 46 ff 46 ff 46 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff ff f0 ff f0 00 46 ff f0 48 ff ff 46 ff f0 ff 46 ff f0 48 46 ff f0 ff f0 ff 46 ff f0 ff f0 ff f0 ff f0 00 46 00 46 ff f0 ff f0 00 ff 00 46 00 46 48 53 ff f0 ff f0 00 ff ff 46 48 53 48 53 ff f0 48 46 48 46 48 ff f0 ff ff 01 ff 53 ff f0 ff f0 ff f0 ff f0 48 ff ff f0 ff ff ff f0 ff ff 46 ff 01 ff 01 ff 01 00 ff 46 00 46 00 ff 46 00 ff 46 ff f0 46 ff ff ff ff 46 ff f0 ff f0 ff ff 01 ff 01 46 ff f0 ff f0 48 46 48 46 48 46 00 ff f0 ff f0 ff f0 ff f0 ff f0 ff ff f0 00 ff ff ff 53 ff f0 ff f0 48 ff ff 53 ff f0 ff f0 ff f0 00 ff ff f0 ff f0 f0 00 ff f0 ff ff f0 46 ff ff 46 53 00 46 46 ff f0 48 ff ff ff 46 00 46 ff ff 46 00 53 00 46 48 ff ff ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff ff f0 46 ff 46 48 ff f0 ff f0 46 ff 46 ff 46 46 ff f0 ff ff ff ff f0 ff f0 ff f0 00 ff f0 ff f0 ff 00 ff ff 46 00 ff f0 ff 53 ff f0 46 53 00 ff e0 53 ff f0 48
*/
