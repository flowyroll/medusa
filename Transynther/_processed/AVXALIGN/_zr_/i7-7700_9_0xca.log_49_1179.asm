.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdx
lea addresses_WC_ht+0xbd13, %r10
nop
nop
nop
dec %r11
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm1
vpextrq $1, %xmm1, %rdx
add %r9, %r9
lea addresses_normal_ht+0xaf13, %r10
nop
nop
nop
nop
nop
add $24016, %rcx
movb (%r10), %r15b
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x2c13, %r11
nop
nop
add $42976, %rax
mov $0x6162636465666768, %r9
movq %r9, (%r11)
nop
inc %r10
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
mov $0x573, %rbp
nop
nop
xor $9726, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
nop
nop
nop
nop
cmp $14643, %r10

// Store
lea addresses_PSE+0x812c, %rbx
nop
add $5132, %rdx
movw $0x5152, (%rbx)
nop
nop
xor %r10, %r10

// Load
lea addresses_US+0xf313, %rdi
add %rdx, %rdx
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
nop
nop
add $46129, %r10

// Faulty Load
lea addresses_US+0xf313, %r9
nop
nop
xor %r10, %r10
mov (%r9), %ebp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
