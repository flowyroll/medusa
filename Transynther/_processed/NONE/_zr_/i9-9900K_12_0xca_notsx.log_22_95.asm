.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18205, %rcx
nop
cmp %r10, %r10
movb (%rcx), %al
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1b2d5, %rsi
lea addresses_WT_ht+0xd155, %rdi
nop
nop
nop
nop
add $59511, %r9
mov $59, %rcx
rep movsq
nop
nop
nop
nop
and $49845, %r10
lea addresses_D_ht+0x12d55, %r9
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xd285, %rcx
nop
nop
nop
and $31757, %r9
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1eaf5, %rsi
lea addresses_WC_ht+0x14dd5, %rdi
nop
nop
nop
inc %rbp
mov $42, %rcx
rep movsq
nop
nop
nop
xor $35516, %r10
lea addresses_normal_ht+0x3375, %rsi
lea addresses_A_ht+0xe789, %rdi
nop
nop
nop
nop
dec %r11
mov $126, %rcx
rep movsq
nop
add $16287, %r11
lea addresses_UC_ht+0xff55, %r10
add %rcx, %rcx
movb (%r10), %r9b
nop
nop
nop
nop
nop
xor $16392, %rcx
lea addresses_normal_ht+0x1755, %rsi
lea addresses_normal_ht+0x17d05, %rdi
xor $65403, %r11
mov $82, %rcx
rep movsw
inc %rbp
lea addresses_WT_ht+0x1a3d5, %rsi
lea addresses_A_ht+0x1ed55, %rdi
nop
nop
nop
add %r9, %r9
mov $54, %rcx
rep movsb
nop
nop
nop
xor $64519, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rsi

// Store
mov $0x4fa3290000000355, %r14
dec %r9
mov $0x5152535455565758, %rax
movq %rax, (%r14)
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_A+0x1c555, %rsi
nop
nop
nop
nop
nop
inc %r10
mov (%rsi), %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'00': 22}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
