.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x13b9b, %rax
nop
nop
nop
nop
add $7167, %r15
movl $0x61626364, (%rax)
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x1da1b, %rbx
clflush (%rbx)
nop
xor $46356, %rdi
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %r11
cmp $45546, %rbx
lea addresses_A_ht+0x891b, %rbx
nop
nop
and %rbp, %rbp
mov (%rbx), %edx
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1d31b, %rsi
lea addresses_normal_ht+0x3931, %rdi
nop
nop
nop
nop
and $7960, %r11
mov $117, %rcx
rep movsb
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x811b, %rsi
lea addresses_UC_ht+0x1199b, %rdi
nop
nop
nop
inc %rbx
mov $117, %rcx
rep movsl
nop
nop
nop
and $28640, %rsi
lea addresses_WT_ht+0x3d8b, %rdx
nop
nop
nop
add $19940, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdx)
sub $43846, %rbp
lea addresses_D_ht+0x11c5b, %rsi
lea addresses_UC_ht+0x1343, %rdi
nop
nop
dec %rbp
mov $55, %rcx
rep movsl
nop
nop
nop
nop
and $56692, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WT+0x12eb1, %rdx
clflush (%rdx)
nop
nop
xor $29805, %rbp
movl $0x51525354, (%rdx)
and %r9, %r9

// Store
lea addresses_US+0xbd7b, %r10
nop
nop
nop
nop
and $42546, %r15
movw $0x5152, (%r10)
nop
nop
add $37999, %r15

// Load
lea addresses_D+0x3a63, %rbp
nop
nop
nop
xor $64789, %rdx
movb (%rbp), %r10b
nop
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_RW+0x1f91b, %r8
nop
nop
xor $49821, %rbp
mov (%r8), %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'32': 180}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
