.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rdx

// Store
lea addresses_PSE+0x1121e, %r13
clflush (%r13)
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r13)
inc %rdx

// Store
lea addresses_US+0xc8be, %r13
dec %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r13)
nop
xor %rax, %rax

// Store
lea addresses_UC+0x63e, %r10
nop
and $7802, %r8
movl $0x51525354, (%r10)
nop
dec %r11

// Faulty Load
lea addresses_PSE+0x127fe, %rbp
nop
nop
nop
nop
add %r10, %r10
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'33': 1}
33
*/
