.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x14bc4, %r15
nop
nop
nop
xor %rcx, %rcx
mov (%r15), %eax
nop
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1894, %rsi
nop
sub %rcx, %rcx
mov (%rsi), %di
and %r15, %r15
lea addresses_WC_ht+0x1b7c4, %rax
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x7cf8, %r15
cmp %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x196c4, %rcx
nop
nop
nop
nop
and %rsi, %rsi
mov (%rcx), %r14w
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xf650, %rsi
lea addresses_normal_ht+0x3c4, %rdi
sub $49297, %rbp
mov $35, %rcx
rep movsl
nop
nop
and $28190, %rdi
lea addresses_D_ht+0x5de4, %rcx
nop
nop
xor $41737, %r11
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
dec %rbp
lea addresses_WC_ht+0x1dbc4, %r15
clflush (%r15)
nop
nop
cmp $21820, %rdi
mov (%r15), %ax
nop
nop
nop
lfence
lea addresses_UC_ht+0x136a4, %rsi
lea addresses_D_ht+0x1c354, %rdi
clflush (%rdi)
dec %r11
mov $103, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xeb90, %rbp
nop
cmp %r15, %r15
movw $0x6162, (%rbp)
cmp %r11, %r11
lea addresses_WT_ht+0x1c5c4, %rcx
nop
xor $26774, %rsi
movl $0x61626364, (%rcx)
nop
nop
dec %rsi
lea addresses_WT_ht+0x5bc4, %rsi
lea addresses_UC_ht+0x16384, %rdi
nop
and $29632, %rax
mov $76, %rcx
rep movsq
and $7411, %rax
lea addresses_WC_ht+0x8cac, %rsi
lea addresses_UC_ht+0x10ec4, %rdi
nop
nop
add %r14, %r14
mov $26, %rcx
rep movsq
nop
nop
and $49188, %rbp
lea addresses_D_ht+0x5bc4, %rcx
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x17f8a, %rsi
nop
nop
nop
nop
nop
dec %r14
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rsi

// Load
lea addresses_PSE+0x1dcc4, %r11
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%r11), %r12d
nop
nop
nop
add $5183, %rbx

// Store
lea addresses_normal+0xbd2d, %r10
nop
nop
xor $56210, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
dec %r14

// Store
mov $0x14ef2700000003c4, %rsi
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_US+0x1f3c4, %rbx
cmp %rsi, %rsi
mov (%rbx), %r14d
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'58': 14}
58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
