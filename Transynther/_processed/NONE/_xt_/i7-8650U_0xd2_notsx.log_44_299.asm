.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1be45, %rsi
lea addresses_WT_ht+0x1b705, %rdi
nop
xor %r10, %r10
mov $75, %rcx
rep movsl
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0xb205, %rdi
nop
nop
nop
inc %r12
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r10
xor %r11, %r11
lea addresses_D_ht+0x1ae05, %rsi
lea addresses_D_ht+0x1a505, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $89, %rcx
rep movsw
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x15e0b, %r13
nop
nop
nop
sub %r12, %r12
mov (%r13), %esi
nop
nop
add $36928, %r11
lea addresses_D_ht+0x4e05, %r13
nop
add %rsi, %rsi
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rcx
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x1ea7d, %r8
nop
nop
nop
cmp $17843, %r11
movw $0x5152, (%r8)
nop
nop
nop
add $23663, %rax

// REPMOV
mov $0x205, %rsi
lea addresses_RW+0x8fa1, %rdi
nop
nop
nop
nop
cmp $7918, %rax
mov $5, %rcx
rep movsq
and %rbx, %rbx

// Store
lea addresses_WC+0x15e05, %rsi
nop
nop
nop
nop
xor $1953, %r12
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor $41668, %rdx

// Faulty Load
lea addresses_RW+0x19605, %rdi
nop
nop
cmp %r8, %r8
mov (%rdi), %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'32': 44}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
