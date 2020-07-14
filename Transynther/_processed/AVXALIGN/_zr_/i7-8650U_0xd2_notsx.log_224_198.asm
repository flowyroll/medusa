.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd51f, %rsi
lea addresses_D_ht+0xb73b, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $117, %rcx
rep movsq
nop
nop
nop
nop
add $8138, %rdi
lea addresses_normal_ht+0x14557, %rsi
lea addresses_normal_ht+0xa7ef, %rdi
clflush (%rdi)
nop
cmp %r10, %r10
mov $100, %rcx
rep movsq
cmp $53248, %rcx
lea addresses_WT_ht+0x15d27, %rsi
lea addresses_A_ht+0x328f, %rdi
nop
nop
nop
cmp $33128, %rdx
mov $10, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1660f, %rsi
lea addresses_D_ht+0x1cd4f, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $88, %rcx
rep movsb
nop
nop
nop
nop
and $34270, %r12
lea addresses_WT_ht+0x540f, %rbx
sub $1386, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rbx)
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_D+0x1fb4f, %r11
nop
xor $20342, %r10
movw $0x5152, (%r11)
nop
and $37817, %r13

// Store
lea addresses_D+0x1b06f, %rdi
xor $7204, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rdi)
nop
nop
sub $59982, %rdx

// Store
lea addresses_WT+0xc5cf, %rdx
nop
xor %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdx)
nop
sub $8355, %rdi

// Store
lea addresses_PSE+0xc08f, %rdi
xor $30299, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_PSE+0x5047, %r13
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_US+0x28f, %rdi
nop
nop
nop
cmp %rax, %rax
mov (%rdi), %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 224}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
