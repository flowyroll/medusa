.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14d3, %rbx
nop
nop
add %r12, %r12
mov (%rbx), %r9d
nop
cmp $13782, %r13
lea addresses_UC_ht+0x724b, %rsi
lea addresses_normal_ht+0x64a3, %rdi
clflush (%rsi)
nop
and %rax, %rax
mov $34, %rcx
rep movsl
lfence
lea addresses_WC_ht+0x8e59, %rdi
nop
nop
add $28683, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
and $0xffffffffffffffc0, %rdi
movntdq %xmm0, (%rdi)
nop
add $41737, %rdi
lea addresses_A_ht+0x93d3, %rsi
lea addresses_D_ht+0x44d3, %rdi
nop
sub $57855, %rax
mov $112, %rcx
rep movsl
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x627d, %rsi
nop
add %r12, %r12
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
sub $65395, %r12
lea addresses_normal_ht+0xdcd3, %rcx
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x2abe, %r9
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r9), %rax
sub %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0xa0d3, %rdx
nop
nop
nop
cmp $52416, %r15
movb (%rdx), %r9b
nop
nop
inc %r11

// Store
mov $0xcf, %r11
nop
nop
nop
cmp $14649, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
xor $13227, %r9

// Faulty Load
lea addresses_RW+0x5cd3, %r11
cmp $57153, %r13
mov (%r11), %r9d
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'32': 4}
32 32 32 32
*/
