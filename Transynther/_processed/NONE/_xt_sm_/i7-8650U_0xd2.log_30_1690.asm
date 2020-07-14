.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15684, %rcx
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%rcx), %edi
nop
cmp $36651, %rdx
lea addresses_UC_ht+0x1a285, %rsi
nop
nop
nop
nop
and $30916, %rax
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1b47f, %rsi
lea addresses_UC_ht+0x7985, %rdi
and %r8, %r8
mov $125, %rcx
rep movsw
nop
cmp %rax, %rax
lea addresses_A_ht+0x13385, %rsi
lea addresses_normal_ht+0x1bd05, %rdi
clflush (%rdi)
nop
xor $28082, %r15
mov $49, %rcx
rep movsq
dec %rbx
lea addresses_UC_ht+0x1eef9, %rsi
lea addresses_WC_ht+0x2f05, %rdi
nop
nop
nop
add $16795, %rdx
mov $42, %rcx
rep movsq
nop
nop
sub $56198, %rsi
lea addresses_normal_ht+0xe535, %rsi
lea addresses_A_ht+0x14281, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $96, %rcx
rep movsb
nop
and %rbx, %rbx
lea addresses_UC_ht+0x14585, %rdx
nop
nop
nop
sub %rcx, %rcx
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm6
vpextrq $1, %xmm6, %rax
sub $60752, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_UC+0x195a5, %r15
nop
sub %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
cmp $15615, %r14

// Store
lea addresses_UC+0x18785, %r14
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%r14)
nop
nop
xor $47238, %r15

// Store
lea addresses_US+0xbe85, %rbx
inc %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_UC+0x18785, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%rcx), %r14w
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'58': 30}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
