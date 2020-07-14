.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1e660, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
sub $449, %r13
lea addresses_normal_ht+0x43ba, %rsi
nop
nop
nop
xor %r13, %r13
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
nop
and $31423, %r13
lea addresses_WT_ht+0x14eca, %rdi
clflush (%rdi)
nop
nop
nop
xor %r12, %r12
mov (%rdi), %ax
nop
nop
add $2013, %r11
lea addresses_WC_ht+0x1b84a, %rsi
lea addresses_normal_ht+0xaf4a, %rdi
nop
nop
nop
nop
nop
sub $3530, %rdx
mov $86, %rcx
rep movsl
nop
sub %rax, %rax
lea addresses_UC_ht+0xd5d0, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x35ca, %rsi
lea addresses_WT_ht+0x8838, %rdi
sub $7845, %r12
mov $109, %rcx
rep movsq
nop
nop
add $33135, %rsi
lea addresses_WC_ht+0x588a, %r11
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_normal+0x15ca, %r11
nop
sub %r8, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub $39974, %r11

// Store
lea addresses_US+0x5e82, %r14
nop
nop
nop
nop
cmp $41264, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
nop
and $16721, %r11

// Store
mov $0xf77f600000005ca, %rax
nop
nop
nop
add $55964, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
and $60271, %rdx

// Faulty Load
mov $0x1bebc20000000dca, %rdx
nop
and $27368, %r11
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': True, 'NT': False}}
{'48': 4360, '45': 12187, '44': 5, '00': 5277}
48 48 45 45 45 00 48 48 45 45 45 45 00 48 48 45 45 45 00 45 45 00 00 48 00 00 00 45 45 45 00 48 45 45 48 48 48 45 45 45 00 48 45 45 45 45 45 48 48 45 45 45 45 00 00 48 45 45 45 00 48 45 45 45 45 00 48 45 45 45 45 45 00 00 45 45 45 00 48 45 45 45 00 48 48 45 45 00 48 45 45 00 00 00 45 45 48 45 45 45 45 48 48 45 45 00 00 48 45 45 45 45 48 48 48 45 45 45 45 00 45 45 45 00 00 45 45 45 45 00 00 45 45 00 45 45 45 45 45 00 48 45 45 00 48 45 45 45 00 45 45 45 00 48 48 45 45 45 00 00 45 45 45 48 48 48 45 45 45 48 00 45 45 45 45 48 48 45 45 00 45 45 45 48 45 45 45 00 48 48 45 45 45 00 00 45 45 00 00 45 45 45 00 00 00 45 45 45 00 00 00 45 45 48 00 45 45 45 48 45 45 45 45 00 00 45 45 45 00 00 45 45 45 00 00 45 45 45 00 45 45 45 00 00 48 45 45 45 00 00 00 45 45 45 00 48 45 48 00 48 48 00 45 45 45 00 00 45 45 00 45 45 45 00 00 48 45 45 45 45 48 00 45 45 45 00 00 45 45 45 00 00 48 45 45 45 00 00 45 45 48 48 45 45 45 00 45 45 45 48 48 00 45 00 48 48 00 45 45 45 00 45 45 45 00 48 45 45 45 00 00 45 48 00 45 45 48 48 45 45 00 00 48 45 45 45 00 00 48 45 45 45 00 00 45 45 45 45 00 48 45 45 45 00 45 45 00 48 48 45 45 45 00 00 48 45 45 45 00 00 48 45 45 45 00 00 45 45 45 48 48 45 45 45 00 00 45 45 45 00 48 00 45 45 00 48 45 45 00 00 45 45 00 00 45 45 45 48 48 45 45 48 45 45 45 00 00 45 45 45 00 00 45 45 00 00 00 45 45 48 45 45 45 00 48 00 45 45 00 45 45 45 45 00 48 48 45 45 45 45 45 00 00 48 48 45 45 00 48 48 45 45 45 48 00 45 45 00 00 00 45 45 45 00 48 00 45 45 00 00 48 45 45 48 48 48 45 00 48 48 45 45 00 48 45 45 45 45 45 48 48 45 45 00 48 48 48 45 45 00 48 45 45 45 45 45 48 48 45 45 45 00 00 45 45 45 48 00 00 45 45 48 00 45 45 45 00 48 48 45 45 45 45 00 00 45 45 45 00 48 45 45 45 00 48 45 48 45 00 00 45 45 45 45 48 48 45 45 45 00 48 45 45 45 00 00 00 45 45 45 00 45 45 00 48 48 45 45 00 48 45 45 00 48 48 45 45 00 00 45 45 00 48 48 45 45 45 45 48 48 00 45 45 00 48 45 45 48 45 45 45 45 48 48 48 45 45 45 48 48 00 45 45 48 00 00 45 45 48 00 45 45 45 45 48 45 45 00 00 45 45 00 48 00 45 45 45 48 45 45 45 48 45 45 00 00 45 45 45 00 00 45 45 45 00 45 45 00 00 48 45 45 00 48 45 45 00 45 45 45 45 48 45 45 45 45 00 48 45 45 45 00 48 45 45 45 00 00 00 48 48 00 00 45 45 48 48 45 45 45 48 45 45 45 00 00 45 45 45 00 45 45 45 45 45 00 48 45 45 45 00 48 48 45 45 00 48 45 45 45 45 00 48 45 45 45 00 48 45 45 45 00 00 45 45 45 00 48 48 45 00 48 00 45 45 45 00 00 45 45 45 45 00 48 48 45 45 00 48 48 45 45 00 00 45 45 45 48 48 45 45 00 48 45 45 45 48 00 00 45 45 00 45 45 45 45 45 48 45 45 45 00 48 48 45 45 45 48 48 45 45 45 45 45 48 45 45 00 00 00 45 45 45 00 00 48 45 45 45 48 45 45 45 00 00 45 45 00 48 45 45 45 45 00 48 48 45 00 48 00 45 45 45 00 00 45 45 45 00 48 48 45 45 45 48 45 45 45 00 00 48 45 45 45 48 48 48 45 45 45 00 00 45 45 45 45 45 00 00 45 45 45 00 00 48 45 45 45 00 48 45 45 00 00 00 45 45 00 48 45 45 45 00 48 48 45 00 00 45 45 45 45 00 45 45 00 48 48 45 45 45 00 48 45 45 45 00 00 45 45 45 48 00 45 45 00 00 00 45 00 00 45 45 00 48 45 45 45 45 00 48 45 45 45 48 48 45 45 00 00
*/
