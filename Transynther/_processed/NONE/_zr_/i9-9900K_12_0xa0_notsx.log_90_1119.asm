.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19bc2, %rsi
lea addresses_normal_ht+0x11dc2, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $21, %rcx
rep movsl
inc %r9
lea addresses_UC_ht+0x19d16, %rcx
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%rcx), %r9
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x121c2, %rsi
lea addresses_A_ht+0x93c2, %rdi
nop
nop
nop
nop
nop
cmp $34490, %r11
mov $17, %rcx
rep movsb
nop
and $34948, %r13
lea addresses_WC_ht+0x1dbf2, %r11
nop
sub $17316, %rbp
mov $0x6162636465666768, %r9
movq %r9, (%r11)
nop
xor $16436, %r9
lea addresses_UC_ht+0x782, %rcx
nop
sub %rdi, %rdi
mov (%rcx), %r11
nop
nop
cmp $40755, %r13
lea addresses_UC_ht+0x19382, %rsi
lea addresses_WC_ht+0x1eb16, %rdi
nop
nop
nop
cmp $35512, %rax
mov $72, %rcx
rep movsq
nop
xor $33134, %rcx
lea addresses_A_ht+0xacb6, %rsi
lea addresses_D_ht+0x12d82, %rdi
nop
nop
nop
nop
xor $56784, %r9
mov $0, %rcx
rep movsb
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_WT+0x92c2, %rcx
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movaps %xmm1, (%rcx)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_RW+0xfc2, %rbx
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_A+0x99c2, %rcx
nop
nop
nop
and $36591, %rax
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}}
{'00': 90}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
