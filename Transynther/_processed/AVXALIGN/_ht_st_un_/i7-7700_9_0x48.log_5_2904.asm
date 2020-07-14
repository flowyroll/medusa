.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
lea addresses_WC_ht+0x65e0, %rbp
nop
nop
xor %rdx, %rdx
mov (%rbp), %cx
nop
nop
nop
nop
cmp $65168, %rdi
lea addresses_A_ht+0x11a34, %r9
clflush (%r9)
nop
xor $20570, %rdx
movups (%r9), %xmm4
vpextrq $1, %xmm4, %r11
xor $64213, %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x1e674, %r9
nop
nop
and %r14, %r14
movl $0x51525354, (%r9)
nop
nop
and $61669, %rcx

// Load
lea addresses_A+0x8af4, %rdx
nop
nop
nop
nop
nop
sub $42084, %rbp
mov (%rdx), %r9d
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_normal+0x6756, %r12
clflush (%r12)
nop
add %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r12)
sub $64566, %rcx

// Store
mov $0xfa4, %r9
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Load
lea addresses_A+0x14e74, %r14
nop
and %rbp, %rbp
mov (%r14), %r9d
nop
cmp $32168, %rdi

// Faulty Load
lea addresses_A+0x14e74, %rcx
xor $26680, %rbp
vmovaps (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'4b': 2, '3b': 2, 'de': 1}
4b 4b 3b 3b de
*/
