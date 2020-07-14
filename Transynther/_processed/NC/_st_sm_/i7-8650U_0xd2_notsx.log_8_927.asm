.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rdi
push %rdx
lea addresses_A_ht+0xeb1a, %rdx
xor %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
lfence
lea addresses_A_ht+0x9cdd, %r13
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0xee3a, %r14
nop
nop
nop
nop
nop
sub $39751, %rdi
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
xor $24677, %r9
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_UC+0x627a, %rbx
nop
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%rbx)
nop
dec %r10

// Store
mov $0x753ee2000000089a, %r10
inc %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
nop
xor $37371, %rcx

// Store
mov $0x6936f9000000011a, %r14
nop
nop
nop
nop
nop
xor $23578, %r13
movw $0x5152, (%r14)
nop
nop
add %rdx, %rdx

// Load
lea addresses_A+0x17dc2, %r14
clflush (%r14)
nop
nop
and $19427, %rbp
mov (%r14), %rcx
nop
nop
nop
nop
and %r14, %r14

// Faulty Load
mov $0x6936f9000000011a, %r14
nop
add %rbp, %rbp
movb (%r14), %dl
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'52': 8}
52 52 52 52 52 52 52 52
*/
