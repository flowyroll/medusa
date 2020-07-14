.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19446, %rsi
lea addresses_UC_ht+0x178e6, %rdi
add $50918, %r11
mov $66, %rcx
rep movsb
nop
nop
xor $46216, %rcx
lea addresses_WT_ht+0x15aae, %rsi
nop
nop
nop
inc %rdx
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
add $7381, %rdx
lea addresses_A_ht+0xb656, %rsi
lea addresses_WT_ht+0x9da6, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $15, %rcx
rep movsq
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x13666, %rsi
lea addresses_D_ht+0x19866, %rdi
clflush (%rdi)
nop
add %rbx, %rbx
mov $13, %rcx
rep movsw
nop
nop
sub $464, %rdx
lea addresses_UC_ht+0x18066, %rsi
lea addresses_D_ht+0x18caa, %rdi
clflush (%rsi)
dec %r15
mov $74, %rcx
rep movsq
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x104e6, %r12
nop
add $21318, %rdi
movl $0x51525354, (%r12)
and %rdi, %rdi

// Store
lea addresses_RW+0x1a066, %rbx
nop
nop
nop
xor %r10, %r10
movb $0x51, (%rbx)
nop
cmp %r12, %r12

// Store
lea addresses_PSE+0x12f76, %rbx
nop
nop
sub $13443, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rbx)
nop
and %rbx, %rbx

// Store
lea addresses_RW+0x184f6, %rbx
add %rbp, %rbp
movl $0x51525354, (%rbx)
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_D+0x5666, %r12
nop
nop
nop
nop
and %rax, %rax
mov (%r12), %esi
nop
nop
nop
xor $65045, %r12

// Store
lea addresses_US+0x1ae66, %r12
nop
nop
nop
nop
nop
xor %rax, %rax
movl $0x51525354, (%r12)
nop
nop
xor %rbx, %rbx

// Store
lea addresses_US+0x13e66, %rdi
nop
nop
nop
nop
nop
sub $62776, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
and %rsi, %rsi

// Load
mov $0x1e6, %rbx
nop
cmp %r10, %r10
mov (%rbx), %r12
nop
nop
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_US+0x1ae66, %rsi
nop
nop
nop
nop
nop
xor $1381, %rax
mov (%rsi), %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'58': 410}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
