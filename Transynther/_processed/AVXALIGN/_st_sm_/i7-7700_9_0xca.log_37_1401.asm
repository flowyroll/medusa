.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rsi
lea addresses_D_ht+0x109, %rcx
nop
nop
nop
nop
mfence
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0xdf1f, %rbp
clflush (%rbp)
nop
nop
inc %r11
movl $0x61626364, (%rbp)
add $46130, %r10
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x147b, %r13
clflush (%r13)
nop
sub $30363, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r13)
add %r13, %r13

// Faulty Load
lea addresses_UC+0x147b, %rdi
nop
nop
nop
nop
nop
xor $36858, %rdx
mov (%rdi), %r15d
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'58': 37}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
