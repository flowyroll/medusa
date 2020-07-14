.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7a3e, %rsi
lea addresses_A_ht+0xd48e, %rdi
nop
nop
and %rax, %rax
mov $107, %rcx
rep movsb
nop
nop
sub $49001, %r10
lea addresses_UC_ht+0x7076, %r8
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
nop
add $6968, %r10
lea addresses_UC_ht+0xa78a, %rcx
clflush (%rcx)
nop
nop
add $63131, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rcx)
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x8146, %rsi
lea addresses_WC+0x98a4, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $36636, %r14
mov $63, %rcx
rep movsl
nop
nop
add %r13, %r13

// Store
lea addresses_WT+0x8a2e, %rbx
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
xor $39357, %rbx

// Store
lea addresses_RW+0x1495a, %rcx
clflush (%rcx)
nop
nop
nop
and $63218, %rsi
movb $0x51, (%rcx)
nop
nop
xor %r11, %r11

// Store
lea addresses_UC+0x1e080, %rsi
and %r14, %r14
movb $0x51, (%rsi)
xor %rcx, %rcx

// Store
lea addresses_WC+0x1bf76, %r13
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_RW+0x7b76, %rbx
nop
and $6615, %rcx
mov (%rbx), %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'32': 28}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
