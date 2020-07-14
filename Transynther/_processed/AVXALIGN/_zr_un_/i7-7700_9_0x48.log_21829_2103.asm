.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xae56, %r11
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
nop
nop
nop
cmp $5271, %rbp
lea addresses_A_ht+0x19556, %rdx
nop
nop
nop
cmp %r14, %r14
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x168da, %rsi
lea addresses_D_ht+0xae56, %rdi
clflush (%rsi)
nop
nop
nop
and %rax, %rax
mov $43, %rcx
rep movsb
nop
nop
lfence
lea addresses_WT_ht+0x16756, %rsi
lea addresses_UC_ht+0x2a53, %rdi
nop
nop
cmp $60051, %rax
mov $116, %rcx
rep movsw
nop
nop
nop
xor $31487, %rcx
lea addresses_UC_ht+0x7cd8, %rsi
lea addresses_D_ht+0x17056, %rdi
nop
nop
nop
dec %r11
mov $87, %rcx
rep movsb
and %rdx, %rdx
lea addresses_WC_ht+0xffee, %rsi
nop
nop
and %rax, %rax
mov (%rsi), %r11w
nop
nop
nop
and $7793, %rcx
lea addresses_D_ht+0x1cb56, %r14
sub $28474, %r11
mov (%r14), %di
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x12e56, %r14
sub %rdi, %rdi
mov (%r14), %ax
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x1c556, %rsi
lea addresses_WT_ht+0xed06, %rdi
add %r14, %r14
mov $103, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $7782, %rdi
lea addresses_normal_ht+0x1cb1a, %rsi
lea addresses_normal_ht+0xcc96, %rdi
nop
nop
nop
and %rax, %rax
mov $66, %rcx
rep movsw
nop
nop
nop
nop
sub $18454, %rcx
lea addresses_UC_ht+0x5c1e, %rsi
lea addresses_WT_ht+0x3ad6, %rdi
nop
cmp %r11, %r11
mov $125, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x10a86, %rsi
lea addresses_A_ht+0x3e56, %rdi
nop
nop
nop
and $31406, %rbp
mov $50, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1ca66, %rbp
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
sub $989, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0xf0d6, %rsi
lea addresses_US+0x2656, %rdi
nop
sub %r9, %r9
mov $56, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_UC+0x1a656, %rsi
cmp $48894, %rcx
movb (%rsi), %r9b
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'5f': 4523, '00': 17306}
00 00 00 00 00 00 00 5f 00 5f 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 5f 00 5f 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 5f 00 00 00 00 00 5f 00 5f 5f 00 00 00 5f 00 5f 5f 5f 00 5f 00 00 00 5f 00 00 00 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00 5f 00 00 00 5f 5f 00 00 00 00 00 00 00 5f 00 00 00 00 5f 00 00 5f 00 00 00 00 5f 5f 00 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 00 00 5f 5f 00 5f 00 00 00 00 00 00 00 00 5f 00 5f 00 5f 00 00 00 00 00 5f 00 00 5f 00 5f 00 00 5f 00 5f 00 00 00 00 00 00 00 5f 00 5f 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 5f 00 00 00 5f 00 5f 00 00 5f 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 5f 00 00 5f 00 00 5f 00 00 00 5f 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 5f 00 5f 00 00 00 5f 00 00 5f 00 00 00 5f 00 5f 00 5f 00 00 5f 5f 00 00 00 5f 00 00 5f 00 5f 5f 00 00 00 00 00 00 5f 00 00 5f 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 5f 00 00 00 00 00 5f 00 00 5f 00 5f 5f 00 00 00 00 00 5f 00 00 00 00 5f 00 5f 00 00 00 00 00 00 00 00 5f 00 5f 00 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00 5f 00 00 00 5f 00 00 00 00 00 00 00 5f 00 00 5f 5f 00 00 5f 00 5f 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 5f 00 5f 5f 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 5f 00 00 00 00 5f 00 00 00 00 5f 00 00 00 00 00 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00 00 00 5f 00 00 00 5f 00 00 5f 00 00 00 00 5f 00 5f 00 00 00 00 00 00 5f 00 00 00 00 5f 00 5f 00 00 00 00 5f 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00 5f 00 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 5f 00 00 5f 00 00 5f 00 00 00 5f 00 00 00 00 00 5f 00 00 00 00 5f 00 00 5f 00 00 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 5f 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 5f 00 00 00 00 5f 00 5f 00 5f 00 00 00 00 00 00 5f 00 00 5f 5f 00 00 00 5f 00 00 5f 00 5f 00 00 00 00 00 00 00 00 00 00 5f 00 00 5f 00 00 00 5f 00 00 00 00 5f 00 5f 5f 00 00 00 00 00 5f 5f 00 00 00 00 00 5f 00 5f 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 5f 00 00 00 00 00 00 5f 5f 5f 00 5f 00 00 00 00 00 5f 00 5f 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 5f 5f 5f 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 5f 5f 00 00 00 00 00 5f 00 00 5f 00 00 00 00 00 00 00 00 5f 5f 00 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 5f 00 5f 00 00 00 00 00 00 00 00 00 5f 00 00 00 5f 5f 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 5f 00 00 5f 5f 00 00 5f 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00 00 00 5f 00 5f 00 00 00 00 5f 00 5f 00 00 00 5f 00 5f 00 00 00 5f 00 5f 00 00 5f 00 5f 00 00 00 5f 00 00 00 00 00
*/
