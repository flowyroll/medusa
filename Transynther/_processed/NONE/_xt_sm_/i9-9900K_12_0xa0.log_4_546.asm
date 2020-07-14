.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc39c, %rbx
nop
cmp $54382, %rsi
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x41d0, %rax
nop
nop
nop
add %r10, %r10
movb (%rax), %dl
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x1a364, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0xa99c, %rbx
inc %r14
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
and $27220, %r14

// Store
lea addresses_PSE+0x8ac0, %rcx
nop
nop
nop
nop
cmp $60232, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rcx)
cmp %r9, %r9

// Store
lea addresses_normal+0x1a19c, %r14
nop
nop
cmp %rcx, %rcx
movb $0x51, (%r14)
nop
and %rbx, %rbx

// Store
lea addresses_normal+0xf4ae, %r15
nop
and %r9, %r9
movl $0x51525354, (%r15)
nop
nop
nop
nop
cmp $30947, %r14

// Faulty Load
lea addresses_A+0xa99c, %r9
and %rbx, %rbx
mov (%r9), %r14w
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'54': 4}
54 54 54 54
*/
