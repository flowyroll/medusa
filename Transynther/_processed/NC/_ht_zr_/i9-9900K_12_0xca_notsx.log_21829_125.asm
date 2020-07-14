.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1adcc, %rsi
lea addresses_normal_ht+0x1a938, %rdi
nop
nop
and $885, %r12
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
and $64229, %rbx
lea addresses_WC_ht+0x1562c, %r9
nop
sub %rbx, %rbx
mov (%r9), %rcx
nop
nop
xor $48462, %rdi
lea addresses_UC_ht+0xf154, %r9
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r9), %bx
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x16162, %rcx
nop
nop
and %rdi, %rdi
movb (%rcx), %r12b
xor %r9, %r9
lea addresses_D_ht+0x1e44c, %rcx
nop
and %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
cmp $14489, %r9
lea addresses_UC_ht+0x1de52, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
nop
and $16583, %r9
lea addresses_A_ht+0x2b80, %rsi
lea addresses_normal_ht+0x492c, %rdi
xor $52146, %r9
mov $59, %rcx
rep movsb
nop
nop
nop
inc %r9
lea addresses_A_ht+0x10b63, %rcx
nop
nop
xor %rdi, %rdi
mov (%rcx), %r9
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1416c, %r12
nop
nop
and %rdi, %rdi
mov (%r12), %rbx
nop
nop
nop
add $48934, %rcx
lea addresses_UC_ht+0xc499, %r9
nop
sub $9677, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
and $0xffffffffffffffc0, %r9
movntdq %xmm3, (%r9)
nop
add $1109, %rax
lea addresses_D_ht+0x1d18c, %rsi
lea addresses_normal_ht+0x91e4, %rdi
sub %r9, %r9
mov $99, %rcx
rep movsb
nop
nop
cmp $19334, %rdi
lea addresses_WT_ht+0x1ee4c, %rsi
lea addresses_WT_ht+0x1b82c, %rdi
nop
cmp %rbp, %rbp
mov $53, %rcx
rep movsb
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1a82c, %rbp
nop
nop
nop
nop
cmp $40607, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x12bac, %rsi
lea addresses_WT+0x980c, %rdi
nop
cmp %r14, %r14
mov $114, %rcx
rep movsw
nop
nop
cmp $52337, %r12

// REPMOV
lea addresses_US+0xe23e, %rsi
lea addresses_normal+0x3e3c, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $123, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r14, %r14

// Faulty Load
mov $0x1f5841000000002c, %rcx
nop
nop
nop
cmp $28419, %r11
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_US'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'46': 1547, '00': 19998, '45': 284}
00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 00 00 00
*/
