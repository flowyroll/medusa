.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rbx
push %rdi
lea addresses_WT_ht+0x17aa, %r14
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r14)
nop
nop
sub $42784, %r11
pop %rdi
pop %rbx
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x266a, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rdi
vmovaps %ymm4, (%rdi)
nop
nop
nop
nop
nop
add $14951, %rdi

// Store
lea addresses_US+0x17118, %r14
dec %rax
movl $0x51525354, (%r14)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0xd7ca, %rcx
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0xeaca, %rdi
inc %rcx
movl $0x51525354, (%rdi)
xor $37818, %rsi

// Faulty Load
lea addresses_RW+0x658a, %r11
nop
nop
nop
nop
nop
dec %rax
mov (%r11), %r15w
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'32': 19}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
