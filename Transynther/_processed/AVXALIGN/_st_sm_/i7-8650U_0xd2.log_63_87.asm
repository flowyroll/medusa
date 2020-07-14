.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb06b, %r14
nop
cmp $43286, %r12
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x14901, %rsi
lea addresses_D_ht+0x886b, %rdi
clflush (%rsi)
nop
nop
nop
add $18551, %r15
mov $121, %rcx
rep movsq
cmp %r12, %r12
lea addresses_UC_ht+0x14673, %rsi
lea addresses_normal_ht+0x6efb, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $86, %rcx
rep movsb
inc %r12
lea addresses_WT_ht+0x81c3, %rcx
nop
inc %r15
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rsi
nop
dec %rcx
lea addresses_D_ht+0x6db9, %r14
nop
nop
nop
nop
nop
dec %rdx
mov (%r14), %r8
cmp $63839, %r12
lea addresses_UC_ht+0x1146b, %r8
nop
inc %rcx
mov (%r8), %edx
nop
inc %rdi
lea addresses_D_ht+0x191eb, %r15
clflush (%r15)
nop
nop
nop
nop
add %rdi, %rdi
movb (%r15), %dl
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x12d6b, %rcx
nop
nop
add $51046, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
add $27330, %rcx
lea addresses_A_ht+0x1bf1c, %rsi
lea addresses_WT_ht+0x1c2fb, %rdi
clflush (%rdi)
nop
nop
nop
add $3692, %rdx
mov $88, %rcx
rep movsl
and %rcx, %rcx
lea addresses_WC_ht+0x9c6b, %rsi
lea addresses_WC_ht+0xfc93, %rdi
nop
nop
add %r12, %r12
mov $30, %rcx
rep movsb
nop
cmp $38365, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Store
lea addresses_PSE+0x2301, %r15
clflush (%r15)
nop
cmp %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
add $17117, %r8

// Load
lea addresses_PSE+0x19ccb, %rdx
nop
nop
nop
xor $42313, %r11
mov (%rdx), %r8d
cmp $51427, %r11

// Store
lea addresses_normal+0xd86b, %rdx
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rdx)
nop
nop
dec %r11

// Faulty Load
lea addresses_normal+0xd86b, %r11
nop
nop
nop
xor %rax, %rax
movb (%r11), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'58': 63}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
