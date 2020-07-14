.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc0b3, %rsi
lea addresses_D_ht+0x1c2d3, %rdi
nop
nop
xor %r14, %r14
mov $94, %rcx
rep movsb
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x19173, %rsi
nop
nop
cmp %r9, %r9
mov (%rsi), %r12d
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x1553b, %rsi
lea addresses_A_ht+0x9bd7, %rdi
nop
nop
and $40088, %r15
mov $22, %rcx
rep movsq
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x17cd3, %rsi
lea addresses_WT_ht+0x9f4f, %rdi
cmp $24521, %r11
mov $98, %rcx
rep movsb
nop
nop
nop
nop
sub $27608, %r12
lea addresses_D_ht+0x1c7b3, %r14
nop
cmp %r11, %r11
movl $0x61626364, (%r14)
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x1f6eb, %r14
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovaps %ymm0, (%r14)
nop
nop
nop
nop
dec %r12

// Load
lea addresses_RW+0x7db3, %rcx
nop
nop
nop
nop
and %rax, %rax
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r12
nop
add $33214, %rdi

// Store
lea addresses_PSE+0x16669, %rax
nop
sub %rcx, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_RW+0x1692b, %r9
nop
sub %r12, %r12
movw $0x5152, (%r9)
sub %rbx, %rbx

// Faulty Load
lea addresses_RW+0xbed3, %rcx
nop
nop
nop
nop
add $29160, %r12
mov (%rcx), %bx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'32': 2}
32 32
*/
