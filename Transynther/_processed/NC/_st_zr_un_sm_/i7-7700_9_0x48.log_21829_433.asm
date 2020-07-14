.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x100b6, %rsi
lea addresses_D_ht+0xeef6, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $65218, %r8
mov $88, %rcx
rep movsq
dec %rbx
lea addresses_UC_ht+0x1df76, %rsi
lea addresses_normal_ht+0x193c6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r11
mov $113, %rcx
rep movsb
nop
nop
nop
cmp $20477, %rdi
lea addresses_D_ht+0xc616, %rcx
nop
xor %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $44396, %rdi
lea addresses_WT_ht+0x1b7a6, %rsi
lea addresses_A_ht+0x569e, %rdi
clflush (%rsi)
nop
add $34482, %r8
mov $20, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $39128, %r11
lea addresses_A_ht+0x1036, %rdi
nop
nop
nop
sub %rcx, %rcx
mov (%rdi), %r11w
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x12eb6, %rbx
clflush (%rbx)
nop
inc %r9
mov (%rbx), %cx
xor $38768, %r11
lea addresses_D_ht+0x17816, %r8
nop
nop
nop
nop
nop
add $19508, %r9
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x71b6, %rsi
nop
nop
nop
nop
nop
dec %rbx
mov (%rsi), %r11w
nop
nop
sub $14852, %r9
lea addresses_UC_ht+0xc3b6, %rsi
lea addresses_normal_ht+0x1d9b6, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $27861, %r11
mov $27, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $16862, %r8
lea addresses_WT_ht+0x145e6, %rsi
nop
nop
nop
nop
add $64558, %rbx
mov (%rsi), %r8d
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbp

// Store
mov $0x5b6e8500000009b6, %rbp
cmp %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, (%rbp)

// Exception!!!
nop
nop
nop
nop
mov (0), %r13
nop
nop
nop
nop
inc %r9

// Faulty Load
mov $0x5b6e8500000009b6, %r12
nop
nop
nop
nop
nop
xor $35759, %rax
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'58': 20008, '5f': 1666, '00': 155}
58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 5f 58 58 58 58 58 5f 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 58 58 5f 5f 5f 5f 58 58 58 58 58 58 58 58 5f 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 5f 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 5f 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 5f 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 5f 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 5f 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 5f 58 58 58 5f 5f 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 5f 00 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 58 58 58 58 5f 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58
*/
