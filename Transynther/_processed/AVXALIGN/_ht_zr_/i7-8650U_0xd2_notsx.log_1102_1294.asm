.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1d95e, %r15
nop
nop
sub %rbp, %rbp
movb $0x61, (%r15)
nop
nop
nop
nop
nop
cmp $62326, %rsi
lea addresses_A_ht+0x662e, %r12
nop
nop
nop
nop
nop
sub %r10, %r10
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r15
nop
add $55875, %r12
lea addresses_A_ht+0xd85e, %rsi
lea addresses_WC_ht+0x12224, %rdi
nop
nop
and $916, %r8
mov $8, %rcx
rep movsq
cmp %rsi, %rsi
lea addresses_UC_ht+0x934e, %rbp
clflush (%rbp)
nop
nop
cmp $39397, %r8
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
sub $28833, %r12
lea addresses_D_ht+0x6107, %rsi
and $61329, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rsi)
nop
and %r8, %r8
lea addresses_normal_ht+0x14f5e, %rsi
lea addresses_A_ht+0x7b5e, %rdi
and %r10, %r10
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x1edae, %rbp
inc %r8
movb (%rbp), %r15b
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0xdb5e, %r10
nop
nop
inc %rcx
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1499e, %rsi
lea addresses_UC_ht+0x13b5e, %rdi
nop
nop
nop
nop
sub $64212, %r8
mov $53, %rcx
rep movsq
nop
nop
nop
nop
cmp $64070, %rdi
lea addresses_UC_ht+0xd300, %rsi
lea addresses_UC_ht+0x58ee, %rdi
nop
nop
nop
cmp $16909, %r8
mov $67, %rcx
rep movsw
and $47024, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rdx

// Store
lea addresses_PSE+0x29be, %r11
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r11)
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_WC+0xaf5e, %r9
nop
nop
nop
cmp %rdx, %rdx
vmovntdqa (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'46': 990, '44': 95, '00': 17}
46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 00 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 00 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 00 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 00 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 00 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 44 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 00 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 44 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 44 46 00 46 46 44 46 46 46 46 46 46 46 46 46 46
*/
