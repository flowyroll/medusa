.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x71cf, %rsi
add %r11, %r11
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x1229f, %r13
nop
nop
nop
add $24981, %rcx
movb (%r13), %dl
nop
nop
nop
nop
nop
cmp $51670, %rdx
lea addresses_WT_ht+0xbb8f, %rsi
lea addresses_WT_ht+0x1ca45, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $18766, %r13
mov $45, %rcx
rep movsw
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x933f, %rbp
nop
nop
nop
cmp $63308, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
and $0xffffffffffffffc0, %rbp
movaps %xmm0, (%rbp)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x2967, %rsi
lea addresses_UC_ht+0xacf7, %rdi
nop
nop
nop
nop
nop
xor $65254, %r13
mov $29, %rcx
rep movsl
nop
nop
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_RW+0xfb8f, %r14
nop
cmp $26131, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
nop
and $2566, %r14

// Store
mov $0xc57, %rax
nop
nop
add $35716, %r15
movl $0x51525354, (%rax)
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x16e61f000000078f, %rax
and $6636, %r15
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_RW+0xfb8f, %r14
clflush (%r14)
nop
nop
nop
and %rax, %rax
mov (%r14), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
