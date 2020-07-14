.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12e9b, %rsi
lea addresses_A_ht+0x17523, %rdi
cmp %r12, %r12
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
add $49892, %r13
lea addresses_normal_ht+0xdd9b, %r13
nop
and %rsi, %rsi
movw $0x6162, (%r13)
and %rdi, %rdi
lea addresses_A_ht+0x1291b, %r11
nop
nop
cmp $29527, %rcx
movb $0x61, (%r11)
xor %rdi, %rdi
lea addresses_WT_ht+0x6a9b, %r12
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%r12), %rsi
nop
nop
nop
cmp $48022, %rcx
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
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x8e5b, %r12
nop
nop
nop
cmp $48494, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
nop
and $150, %rbx

// Store
lea addresses_WC+0x1219b, %rbx
nop
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
add $19573, %rbx

// Store
lea addresses_WT+0x19a9b, %rbx
nop
nop
cmp $52046, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
nop
xor $40866, %rbx

// Faulty Load
lea addresses_WT+0x1ca9b, %rcx
nop
nop
nop
nop
xor %rbx, %rbx
mov (%rcx), %edx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'58': 218}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
