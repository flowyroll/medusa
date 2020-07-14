.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xc8c3, %rsi
lea addresses_normal_ht+0x1290b, %rdi
clflush (%rdi)
dec %rbp
mov $22, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x2dc3, %rdx
nop
nop
add $44076, %r10
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
and $58534, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Store
lea addresses_UC+0x1fcc3, %r8
nop
cmp %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
inc %rax

// Load
mov $0x66f06600000004c3, %r12
nop
nop
nop
xor %rcx, %rcx
mov (%r12), %rax
nop
nop
nop
nop
cmp $49693, %rcx

// Store
lea addresses_US+0x198c3, %r13
and $31854, %r15
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_US+0x198c3, %rcx
nop
nop
dec %r8
mov (%rcx), %r15d
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'52': 96}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
