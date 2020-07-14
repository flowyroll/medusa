.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16f80, %rdx
dec %r8
mov (%rdx), %di
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x7770, %r8
cmp %rax, %rax
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
add $14634, %r8
lea addresses_normal_ht+0x1270, %r11
nop
nop
nop
and $36879, %r12
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x16898, %r14
nop
nop
nop
add %r8, %r8
movw $0x6162, (%r14)
nop
sub $56102, %r14
lea addresses_normal_ht+0x14b38, %rsi
lea addresses_WT_ht+0xf878, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0xb0b8, %r8
sub %r12, %r12
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0xc138, %r12
nop
nop
nop
nop
cmp $4598, %r14
mov (%r12), %r8
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1c138, %rcx
nop
nop
nop
and %r12, %r12
movb $0x61, (%rcx)
nop
add $2158, %r8
lea addresses_D_ht+0x1ef38, %r12
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r12), %r8w
nop
nop
nop
xor $52334, %r12
lea addresses_A_ht+0x2ea8, %rdi
nop
nop
cmp %r11, %r11
movb $0x61, (%rdi)
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x2138, %rdi
nop
nop
nop
sub %rax, %rax
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
cmp $58697, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx

// Faulty Load
lea addresses_WC+0x1b138, %r14
nop
inc %r13
movups (%r14), %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'47': 102, '46': 30, '44': 9321, '00': 12376}
44 44 00 00 44 00 44 44 00 44 00 00 44 00 44 00 00 44 00 00 44 44 44 00 44 00 00 44 44 44 00 00 00 00 44 00 44 44 44 00 00 00 44 00 44 00 00 00 00 00 44 00 44 00 00 44 00 00 44 00 44 00 00 44 00 44 00 44 44 00 00 00 00 44 00 44 00 00 44 00 00 44 00 00 00 00 44 00 00 00 44 44 44 00 00 00 44 00 00 00 44 44 44 44 00 44 44 44 00 00 44 00 44 00 00 44 00 44 00 44 44 00 44 44 00 00 00 00 44 00 00 00 00 47 00 44 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 46 00 44 00 44 44 00 44 44 44 44 44 00 44 00 00 44 00 00 44 00 44 44 00 44 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 44 44 00 44 00 44 44 44 44 00 00 00 44 44 00 00 00 00 44 44 00 44 00 00 00 00 44 00 44 00 00 44 00 44 00 00 44 00 00 00 00 44 44 44 44 44 44 00 00 44 00 44 00 00 44 00 44 00 00 44 00 00 44 00 00 44 00 44 00 00 44 00 44 00 00 44 00 44 00 00 44 00 00 44 00 44 00 44 00 00 44 00 00 00 00 44 44 44 00 44 00 00 44 00 00 00 00 44 00 44 44 00 00 00 44 00 00 44 00 44 00 44 44 00 00 44 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 44 00 46 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 44 00 00 44 44 00 00 00 44 44 44 44 00 44 00 44 00 00 44 44 00 44 44 44 00 00 00 00 00 44 44 44 44 00 00 00 44 44 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 44 00 44 44 44 44 00 44 00 00 44 44 44 00 47 00 00 44 00 00 00 00 44 00 44 00 00 44 44 44 00 00 00 00 44 00 00 44 00 00 46 44 44 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 44 44 44 44 00 44 00 44 00 00 00 44 00 44 00 00 44 00 00 44 00 44 00 00 44 00 44 00 44 00 00 44 00 44 44 00 00 44 44 00 44 00 00 44 00 00 44 44 00 44 00 44 47 44 44 00 44 44 44 00 00 00 00 44 44 44 44 00 00 00 00 44 00 00 47 44 00 00 44 00 00 00 00 44 00 00 44 00 44 00 00 44 00 44 44 00 44 00 44 00 00 00 00 44 44 44 44 44 00 44 00 00 00 00 44 00 00 44 00 44 44 44 00 00 00 00 44 44 00 00 00 44 44 00 44 00 00 00 00 44 00 44 44 00 44 00 44 44 44 44 44 44 00 00 44 00 44 00 44 44 44 44 00 44 00 00 00 00 00 00 44 44 00 44 44 00 44 00 44 00 44 44 00 00 00 44 44 44 00 44 00 00 44 00 00 44 00 44 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 44 00 44 00 47 00 00 44 00 44 00 00 44 00 00 44 00 00 44 00 00 44 44 44 00 00 00 44 00 44 00 00 00 44 00 44 00 00 44 44 44 00 00 44 00 44 44 00 44 00 44 00 44 00 00 00 00 00 44 00 44 44 44 00 00 00 00 00 44 00 44 44 00 44 44 44 44 00 00 44 44 44 00 00 44 00 00 00 00 44 00 44 00 00 44 00 44 00 00 44 00 00 44 00 44 00 00 44 00 44 00 00 00 00 44 00 44 00 44 44 00 44 00 00 44 00 00 44 00 44 00 00 44 44 00 44 00 00 00 00 44 00 00 44 00 44 00 00 44 44 44 00 44 00 00 00 44 00 00 00 00 44 00 44 00 44 44 00 44 00 00 44 00 44 44 00 44 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 44 44 00 00 00 44 00 44 44 00 00 44 44 00 00 44 00 44 44 00 44 00 00 00 00 44 44 00 44 00 00 44 00 44 00 44 00 00 44 00 00 44 00 44 44 44 00 00 00 44 00 44 44 00 00 00 00 44 00 00 44 00 44 00 00 44 46 44 00 00 00 00 44 44 44 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 44 44 44 00 44 44 00 44 00 00
*/
