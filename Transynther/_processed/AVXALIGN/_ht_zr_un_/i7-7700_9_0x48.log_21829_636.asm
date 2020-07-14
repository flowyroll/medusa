.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1409a, %rsi
lea addresses_D_ht+0xe5fa, %rdi
nop
and %r13, %r13
mov $102, %rcx
rep movsq
nop
nop
nop
cmp $43195, %r8
lea addresses_WC_ht+0x1ee26, %rsi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x6162, (%rsi)
cmp $35216, %r13
lea addresses_A_ht+0xcffa, %rdi
nop
nop
nop
nop
add %r15, %r15
mov (%rdi), %r13w
nop
xor $17364, %rdi
lea addresses_WT_ht+0x67a, %rsi
lea addresses_normal_ht+0x131fa, %rdi
nop
nop
add $42553, %rbx
mov $121, %rcx
rep movsb
sub %r8, %r8
lea addresses_A_ht+0x18bfa, %rcx
nop
nop
nop
sub $42508, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
add $15953, %rdi
lea addresses_WT_ht+0x16bfa, %rsi
lea addresses_WC_ht+0x1b7fa, %rdi
nop
nop
nop
inc %r14
mov $20, %rcx
rep movsl
nop
nop
nop
nop
cmp $56132, %r13
lea addresses_normal_ht+0x385a, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rsi), %rbx
nop
nop
nop
cmp $18842, %rsi
lea addresses_WT_ht+0x53fa, %r8
clflush (%r8)
xor %rbx, %rbx
mov (%r8), %esi
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xeaba, %rsi
lea addresses_D_ht+0x50da, %rdi
nop
nop
inc %rbx
mov $54, %rcx
rep movsq
nop
sub $61213, %rsi
lea addresses_A_ht+0x6042, %rsi
lea addresses_D_ht+0x11680, %rdi
cmp %r15, %r15
mov $2, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rdx
push %rsi

// Load
lea addresses_WC+0x13432, %r15
nop
nop
cmp %r10, %r10
mov (%r15), %rbx
nop
nop
nop
and $27401, %r10

// Store
lea addresses_A+0x3fa, %r13
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
cmp $41386, %r15

// Store
lea addresses_PSE+0x98ba, %r11
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r11)
nop
nop
inc %r15

// Faulty Load
lea addresses_WC+0x14bfa, %rdx
nop
nop
nop
add %rsi, %rsi
mov (%rdx), %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'47': 17416, 'a7': 1674, '67': 3, '00': 925, '49': 203, 'a6': 1603, '44': 4, 'aa': 1}
47 47 47 00 00 a6 00 47 47 47 47 47 47 47 a6 47 a6 47 47 47 47 47 a6 47 47 47 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 00 47 47 47 a6 47 47 00 47 a6 47 47 47 00 47 47 47 47 47 49 47 a6 47 47 47 47 47 a6 47 47 47 47 a6 47 47 47 47 47 47 a6 47 00 a6 a6 47 47 47 47 47 a6 47 a6 47 47 47 47 a6 47 47 47 a6 a6 47 00 47 a6 47 47 a6 47 00 47 47 47 a6 47 47 47 47 47 47 47 a6 49 47 00 47 a6 47 47 47 47 47 47 47 a6 47 49 47 47 47 47 00 47 47 47 00 47 a6 00 47 47 a6 47 47 47 47 47 47 a6 47 a6 47 47 47 47 a6 47 a6 47 47 47 47 47 47 47 47 a6 47 47 a6 47 47 47 47 a6 47 47 a6 a6 47 a6 a6 47 47 47 47 47 47 47 a6 47 00 47 47 47 47 a6 47 47 47 a6 47 47 a6 47 00 47 47 47 47 47 47 47 a6 47 a6 00 47 47 a6 00 a6 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 a6 47 47 47 a6 47 47 47 47 47 47 49 47 47 47 47 47 a6 47 47 47 47 a6 a6 47 a6 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 a6 47 47 47 47 47 47 47 a6 47 47 47 47 47 a6 47 47 a6 47 a6 47 47 47 47 47 00 47 47 47 00 47 47 47 47 47 47 47 47 a6 47 47 47 47 49 47 47 47 47 47 47 47 47 47 47 a6 47 a6 47 00 a6 47 47 a6 47 47 a6 a6 47 47 a6 47 47 47 a6 47 47 a6 47 a6 a6 47 47 a6 47 00 a6 47 47 a6 47 47 47 47 47 00 00 47 a6 47 a6 47 47 47 47 a6 47 47 47 47 47 47 a6 47 47 47 47 47 47 47 00 a6 47 47 47 a6 47 47 a6 47 47 47 47 47 47 00 47 47 47 47 47 47 00 47 47 47 47 47 47 a6 47 47 47 a6 47 47 47 47 47 47 47 47 a6 47 47 47 47 47 47 47 a6 47 47 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 00 47 a6 47 00 47 47 47 a6 47 47 47 47 47 a6 47 47 47 47 47 47 a6 47 47 a6 a6 47 47 47 47 47 47 a6 47 47 47 47 49 47 a6 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 a6 47 47 47 47 47 47 a6 47 47 47 47 47 a6 47 47 47 47 a6 47 a6 47 47 47 47 47 a6 47 47 a6 47 47 47 a6 47 47 47 a6 47 47 47 47 a6 47 47 00 47 47 a6 00 00 47 47 47 47 47 47 a6 47 47 47 47 47 00 47 47 47 00 47 a6 47 47 47 a6 47 47 47 47 47 47 47 a6 47 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 00 47 47 00 47 a6 a6 47 a6 47 47 47 a6 47 47 47 47 47 49 47 47 47 44 47 47 47 47 47 47 47 47 47 a6 47 00 47 47 47 47 47 00 47 47 47 a6 47 47 47 47 47 00 47 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 a6 47 47 47 47 47 47 a6 47 47 47 47 a6 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 a6 47 47 47 47 47 47 a6 a6 47 47 47 47 a6 47 47 a6 00 47 a6 a6 47 47 47 47 47 47 47 a6 47 47 47 a6 a6 47 47 47 47 47 47 47 47 47 a6 47 47 00 47 47 47 a6 47 47 47 a6 47 47 a6 47 47 47 47 a6 47 47 a6 47 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 a6 47 47 47 47 00 47 47 47 47 47 47 47 47 47 49 47 a6 47 47 47 47 a6 47 47 47 47 47 a6 47 00 a6 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 a6 47 47 47 47 47 47 47 47 49 47 47 47 47 47 a6 00 47 47 47 47 47 47 47 47 a6 47 a6 47 a6 47 a6 47 47 47 a6 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 a6 47 47 47 47 a6 47 47 47 47 a6 47 a6 47 47 47 47 00 47 47 47 47 a6 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 00 a6 47 47 47 47 47 47 47 47 00 00 47 47 47 47 47 47 47 a6
*/
