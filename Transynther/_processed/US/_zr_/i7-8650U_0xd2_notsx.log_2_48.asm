.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1983d, %r12
nop
nop
nop
xor %rdx, %rdx
mov (%r12), %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x301b, %rsi
lea addresses_UC_ht+0x15769, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $83, %rcx
rep movsl
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1e0bf, %rsi
lea addresses_A_ht+0x666f, %rdi
inc %rbx
mov $71, %rcx
rep movsq
nop
nop
nop
sub $10706, %rcx
lea addresses_A_ht+0xebef, %rsi
lea addresses_A_ht+0x13fef, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $70, %rcx
rep movsl
nop
nop
cmp $9091, %rbx
lea addresses_UC_ht+0x188ff, %rcx
nop
and $56915, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x1a783, %rdi
cmp $17111, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x3fef, %rsi
clflush (%rsi)
sub %r14, %r14
mov (%rsi), %dx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 2}
00 00
*/
