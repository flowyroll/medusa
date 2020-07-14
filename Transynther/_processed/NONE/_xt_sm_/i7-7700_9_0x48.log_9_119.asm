.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WC+0x22f2, %r8
nop
nop
nop
nop
nop
dec %r10
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
add %rbx, %rbx

// Store
mov $0x2a1, %rbx
nop
nop
nop
nop
nop
and $43894, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0x12cb2, %r10
nop
cmp $52601, %rcx
movb $0x51, (%r10)
nop
xor $15866, %r8

// Store
lea addresses_WC+0x22f2, %rcx
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
xor $8111, %r9

// Faulty Load
lea addresses_WC+0x22f2, %r10
clflush (%r10)
nop
nop
nop
nop
sub %rbx, %rbx
movb (%r10), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
