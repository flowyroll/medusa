.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x8fcf, %rbp
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r11
movq %r11, (%rbp)
nop
nop
nop
nop
cmp $32242, %r13
lea addresses_normal_ht+0x1afef, %r15
clflush (%r15)
nop
sub $32430, %r8
mov (%r15), %r11
nop
sub %r13, %r13
lea addresses_D_ht+0x40b, %r13
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r13)
nop
sub %r8, %r8
lea addresses_WT_ht+0x1d33b, %r9
and %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r9)
nop
nop
cmp $53129, %rbp
lea addresses_UC_ht+0x18885, %r8
nop
nop
nop
inc %r15
movw $0x6162, (%r8)
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x1a58b, %r9
nop
and $33110, %rdx
mov (%r9), %r13d
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x758b, %rsi
lea addresses_UC_ht+0x172c3, %rdi
nop
nop
nop
nop
add $36796, %r11
mov $58, %rcx
rep movsl
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdi

// Load
lea addresses_normal+0xd98b, %r11
cmp %rax, %rax
mov (%r11), %r9w
nop
nop
nop
nop
cmp %rax, %rax

// Load
mov $0x6d872500000003b9, %rdi
nop
nop
nop
nop
nop
xor $27710, %r11
mov (%rdi), %rbp
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_WC+0x298b, %rax
and $50793, %r12
movl $0x51525354, (%rax)
and $36405, %r8

// Faulty Load
lea addresses_normal+0xd98b, %r12
nop
cmp %rbp, %rbp
mov (%r12), %r11d
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'34': 142}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
