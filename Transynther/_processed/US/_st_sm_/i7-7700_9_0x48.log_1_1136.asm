.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa805, %rcx
nop
nop
dec %rbx
mov (%rcx), %rdx
add $1187, %r10
lea addresses_WT_ht+0x13e45, %rsi
lea addresses_D_ht+0x9a05, %rdi
nop
inc %r11
mov $54, %rcx
rep movsl
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x1e85, %rsi
lea addresses_WT_ht+0x6405, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $42887, %r11
mov $19, %rcx
rep movsb
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1d505, %rdi
nop
nop
nop
nop
add $42669, %rsi
movl $0x61626364, (%rdi)
nop
sub %r10, %r10
lea addresses_WC_ht+0x2f29, %rbx
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
sub $34337, %r10
lea addresses_normal_ht+0x74b7, %rdx
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%rdx)
xor $56211, %rcx
lea addresses_WC_ht+0x3005, %r10
nop
nop
nop
nop
and $57763, %rdi
movw $0x6162, (%r10)
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1e485, %r11
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x61626364, (%r11)
nop
nop
nop
nop
sub $65188, %r10
lea addresses_WC_ht+0x1b605, %rsi
nop
nop
nop
nop
and %rbx, %rbx
mov (%rsi), %di
nop
nop
nop
and $53403, %r11
lea addresses_normal_ht+0x3b95, %rdi
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%rdi)
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x18805, %rsi
lea addresses_normal+0x5205, %rdi
nop
nop
dec %r10
mov $20, %rcx
rep movsl
nop
xor $58182, %r9

// Store
lea addresses_US+0x9805, %r9
nop
and %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r9)
nop
nop
and $1596, %r10

// Store
lea addresses_US+0x9805, %rbx
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_US+0x9805, %rdi
nop
nop
nop
xor %rsi, %rsi
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'58': 1}
58
*/
