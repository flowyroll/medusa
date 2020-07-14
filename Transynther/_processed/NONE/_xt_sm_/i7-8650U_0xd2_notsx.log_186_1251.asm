.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1300f, %rax
sub %r14, %r14
movb (%rax), %r8b
nop
nop
nop
xor $18254, %rdi
lea addresses_WC_ht+0x14da3, %rsi
lea addresses_normal_ht+0xdc8f, %rdi
nop
nop
nop
nop
xor $10062, %rax
mov $71, %rcx
rep movsb
nop
nop
cmp $6908, %r14
lea addresses_UC_ht+0x700f, %rsi
lea addresses_WT_ht+0xcb9f, %rdi
nop
and $10021, %r8
mov $41, %rcx
rep movsw
nop
nop
nop
xor $58676, %rax
lea addresses_normal_ht+0x13e8f, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
xor $47413, %r8
lea addresses_WC_ht+0x13a4f, %rsi
lea addresses_D_ht+0x4af, %rdi
nop
nop
nop
inc %rax
mov $54, %rcx
rep movsb
nop
inc %rbp
lea addresses_WT_ht+0x1a109, %rdi
nop
nop
nop
nop
and $42544, %rbp
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
xor $14616, %rcx
lea addresses_UC_ht+0x1788f, %rsi
lea addresses_UC_ht+0xc60f, %rdi
nop
and %rbp, %rbp
mov $110, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_UC+0x1c68f, %rdi
nop
nop
nop
nop
nop
and $15634, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_UC+0xee8f, %rbx
nop
nop
nop
xor $13978, %r13
movl $0x51525354, (%rbx)
nop
nop
and $41242, %rbp

// Faulty Load
lea addresses_UC+0x1c68f, %r11
nop
nop
nop
nop
nop
inc %rdi
movb (%r11), %r13b
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'58': 186}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
