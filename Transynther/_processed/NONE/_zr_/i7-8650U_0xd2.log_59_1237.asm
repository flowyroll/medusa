.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11b45, %rsi
xor %r14, %r14
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x12645, %rsi
lea addresses_WC_ht+0x18c45, %rdi
nop
add %r10, %r10
mov $18, %rcx
rep movsb
nop
nop
nop
cmp $30600, %rbx
lea addresses_normal_ht+0xe46d, %rsi
lea addresses_A_ht+0x374a, %rdi
nop
nop
sub $2580, %r9
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0xf745, %r14
nop
dec %rcx
mov $0x6162636465666768, %r9
movq %r9, (%r14)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x7f65, %rcx
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x2845, %rbx
nop
nop
cmp %r13, %r13
mov (%rbx), %esi
nop
nop
nop
add $53689, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_D+0x4d6, %r12
cmp $47511, %r15
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
sub %r12, %r12

// Load
lea addresses_A+0x18e45, %r11
nop
nop
nop
nop
nop
and $38281, %rax
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
add $2719, %r11

// Load
lea addresses_UC+0x1a50f, %rcx
nop
add $57655, %rdi
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0x11055, %rax
nop
nop
nop
add %r8, %r8
movb $0x51, (%rax)
nop
nop
nop
nop
nop
cmp $101, %r12

// Faulty Load
lea addresses_A+0x18e45, %r12
nop
nop
sub %rax, %rax
mov (%r12), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'00': 59}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
