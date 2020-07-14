.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rcx
lea addresses_normal_ht+0x1e81e, %r9
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm7
and $0xffffffffffffffc0, %r9
vmovaps %ymm7, (%r9)
nop
and %rcx, %rcx
pop %rcx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Load
lea addresses_normal+0x1021e, %rax
nop
xor $64971, %r10
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
nop
sub %rax, %rax

// Store
lea addresses_PSE+0x15ede, %r10
and %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
nop
dec %rax

// Store
lea addresses_A+0x221e, %r9
clflush (%r9)
nop
nop
dec %r10
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_D+0x14788, %r9
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r9)
nop
sub %rax, %rax

// Store
lea addresses_UC+0x10306, %rbp
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
sub %r9, %r9

// Store
mov $0x77d887000000021e, %rax
nop
nop
nop
nop
nop
and $5895, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rax)
xor %rax, %rax

// Load
mov $0x91e, %r8
nop
nop
nop
add %r9, %r9
movups (%r8), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
add %r8, %r8

// Store
lea addresses_US+0x1233e, %rcx
nop
nop
nop
nop
nop
add %r8, %r8
movb $0x51, (%rcx)
nop
cmp %r9, %r9

// Faulty Load
lea addresses_A+0xf21e, %r10
nop
nop
nop
nop
add %rbp, %rbp
movb (%r10), %r9b
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'58': 156}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
