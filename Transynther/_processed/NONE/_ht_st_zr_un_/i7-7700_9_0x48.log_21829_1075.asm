.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11e3f, %r8
sub %r9, %r9
movl $0x61626364, (%r8)
nop
and $20063, %r8
lea addresses_WT_ht+0x561f, %r15
nop
xor %r9, %r9
movb $0x61, (%r15)
nop
nop
nop
nop
and $30108, %r8
lea addresses_UC_ht+0x1c43f, %rsi
nop
nop
nop
and $26367, %r8
movl $0x61626364, (%rsi)
nop
xor %r13, %r13
lea addresses_D_ht+0x1bf, %r9
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
and $0xffffffffffffffc0, %r9
movaps %xmm5, (%r9)
xor $2278, %r14
lea addresses_D_ht+0x13c7f, %rsi
lea addresses_WT_ht+0x1eb97, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $103, %rcx
rep movsb
nop
nop
xor $12750, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x14a3f, %rdi
cmp $9079, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movaps %xmm6, (%rdi)
nop
nop
cmp $21743, %r13

// Faulty Load
lea addresses_UC+0x93bf, %rcx
nop
nop
xor $50722, %r11
mov (%rcx), %ebp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'53': 270, 'ae': 1, '79': 20, 'ff': 11139, 'f0': 242, '00': 134, '3c': 1, '01': 6415, '10': 169, '5f': 5, '46': 3433}
00 ff 46 ff ff 10 ff 01 ff 01 46 ff ff 01 ff 01 46 ff ff 46 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 46 ff 53 ff ff 01 ff 01 ff 01 46 ff ff 01 46 ff ff ff 01 ff 01 ff 01 ff 46 ff 01 46 ff ff 01 ff 46 ff 46 ff 01 ff 01 ff 01 ff 01 ff 01 46 ff ff 46 ff ff 01 ff 01 46 ff ff ff f0 46 53 ff ff 01 ff 46 ff 01 46 ff 46 46 ff ff ff 01 ff ff 01 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 46 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 46 ff ff 01 ff 01 ff ff 01 46 ff ff 01 ff 01 ff 01 ff 01 46 ff 46 ff ff 01 46 ff ff ff 01 ff 01 ff 01 46 ff ff ff 01 46 46 ff ff 53 ff 46 46 ff ff 46 ff 46 ff ff 46 ff 01 ff ff 46 ff f0 ff 01 46 ff ff 01 ff 01 ff 01 46 ff ff 01 ff 01 ff 46 ff ff ff 01 ff 01 ff 01 46 ff ff 01 ff 46 ff ff 46 ff 01 ff 01 ff 01 ff 01 46 ff 46 ff ff 01 ff 01 ff 46 ff ff 01 ff 46 ff 01 46 46 46 ff ff ff ff 46 ff 01 ff 01 ff 01 ff ff 01 ff 01 ff 01 46 ff ff ff ff 01 ff 01 ff 01 46 46 ff ff 46 ff ff 01 ff 01 ff 10 46 46 ff ff ff 01 ff 46 46 ff 46 ff 46 ff ff 01 ff 46 46 46 46 ff 46 ff ff ff 46 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 46 ff ff 01 53 ff 00 ff 01 46 ff ff ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 46 46 ff 46 ff 46 ff ff ff 01 ff 01 ff 46 46 46 46 ff 46 46 46 ff ff 53 ff ff ff 46 ff ff 01 ff 01 ff 01 ff 01 ff 01 46 ff ff 46 ff ff 46 46 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff f0 ff 01 46 ff ff 01 ff 01 ff 01 46 46 46 ff ff 46 ff ff 46 ff ff 01 ff 01 ff 01 ff 01 46 ff ff 01 ff ff 01 ff 01 ff 01 ff 01 46 ff ff 01 ff 01 46 ff 46 ff 53 ff 46 ff ff 01 ff ff 01 46 ff ff f0 53 46 ff ff ff 01 ff 01 ff ff 01 ff 01 ff 01 46 ff 01 ff 01 46 ff ff 01 ff 01 ff 01 46 ff ff 01 46 ff ff 46 ff 01 ff 01 46 ff ff ff 01 ff f0 ff 01 ff 01 46 ff ff 01 ff 01 46 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 46 ff ff 01 46 ff ff 01 ff 01 ff 01 ff 01 46 ff ff 01 ff 01 ff 01 ff 46 ff 01 ff ff 01 ff ff 01 46 ff 01 46 46 00 46 ff ff ff 01 46 46 ff ff ff 01 ff 01 ff 01 ff 01 53 46 ff ff ff ff 01 ff ff 01 ff 01 46 46 ff ff 01 46 ff 46 ff ff 01 ff 01 ff 01 ff 01 46 46 ff ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff ff 01 ff 10 ff 01 ff 01 ff f0 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 10 ff ff 01 ff 01 ff 01 ff 01 ff ff 01 ff 01 46 53 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff f0 ff 01 ff 01 ff 01 46 ff ff 01 ff 01 ff 46 ff 01 46 ff ff 01 ff ff 01 ff 01 ff 01 ff ff 01 ff 01 ff 01 ff 01 46 46 ff ff ff 01 ff 01 ff 01 ff 01 ff 01 46 ff 53 ff ff 01 ff 01 ff 01 ff 01 ff 46 ff 01 ff 01 46 46 ff ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 46 ff 01 ff 01 ff ff 01 ff 01 46 ff ff 01 ff 01 ff 01 ff ff ff 53 ff 01 46 ff 46 ff 01 ff 01 ff 46 ff 01 ff 01 ff 01 46 ff ff 46 ff 01 ff f0 ff 01 ff 01 ff f0 46 ff 01 ff 01 ff 01 ff 46 46 46 ff ff ff 01 ff 01 46 46 46 ff 01 ff ff 46 ff 46 ff ff ff 01 46 ff ff 01 ff ff 01 46 ff ff 01 46 ff ff 01 ff 46 ff 01 ff 01 ff 01 ff 01 46 ff 46 ff 53 ff ff f0 46 ff 46 53 46 ff 46 46 ff ff ff 46 ff ff 01 46 46 ff ff ff 46 46 ff ff ff 46 ff 01 46 ff ff ff 01 46 ff 46 ff ff 01 ff 01 ff ff 01 ff 01 ff 01 46 ff 01 ff 01
*/
