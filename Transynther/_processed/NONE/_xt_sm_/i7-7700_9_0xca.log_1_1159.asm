.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdx
push %rsi
lea addresses_WC_ht+0x15106, %rax
xor $46324, %rdx
mov (%rax), %r14w
nop
and %rsi, %rsi
lea addresses_A_ht+0xb306, %rcx
nop
nop
nop
nop
nop
cmp $7674, %r11
mov (%rcx), %r9w
nop
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x11a06, %rdi
clflush (%rdi)
nop
nop
dec %rax
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_UC+0xab06, %rsi
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
sub $25069, %rbp

// Load
lea addresses_WT+0xfb06, %r15
nop
add $35576, %rdi
movups (%r15), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_UC+0xab06, %rax
nop
nop
nop
sub %rcx, %rcx
movb $0x51, (%rax)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_UC+0xab06, %rbp
nop
nop
nop
add $1362, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
add $5172, %rbp

// Load
lea addresses_normal+0x13e46, %r8
nop
nop
nop
and $57259, %rcx
mov (%r8), %rbp
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_normal+0x15146, %rbp
nop
nop
nop
cmp $26428, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rbp)
sub $25733, %rcx

// Load
lea addresses_D+0x1e973, %rbp
inc %rax
movb (%rbp), %r8b
sub %rbp, %rbp

// Load
lea addresses_RW+0x161a6, %rcx
nop
nop
cmp $11926, %rbp
movb (%rcx), %al
nop
xor %rax, %rax

// Store
lea addresses_WC+0xd7c2, %rbp
nop
nop
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%rbp)
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_UC+0xab06, %rcx
nop
nop
and %rsi, %rsi
mov (%rcx), %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 1, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'58': 1}
58
*/
