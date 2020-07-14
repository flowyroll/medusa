.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe2a8, %rax
clflush (%rax)
nop
sub %r13, %r13
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0xf78a, %rsi
nop
nop
dec %rax
movw $0x6162, (%rsi)
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xc6a8, %rsi
nop
nop
and %r15, %r15
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x103c8, %r13
nop
nop
nop
and $60245, %rcx
mov (%r13), %r15
nop
nop
nop
nop
nop
xor $57993, %rcx
lea addresses_WT_ht+0x25e8, %rax
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
nop
add $13489, %r15
lea addresses_D_ht+0x174a8, %r13
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1bf70, %rsi
lea addresses_UC_ht+0x18016, %rdi
nop
nop
nop
nop
nop
add $33872, %rbx
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $63348, %rbx
lea addresses_normal_ht+0x186a8, %r15
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x30a8, %r9
nop
nop
nop
nop
nop
xor $61943, %r15
mov (%r9), %di
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax

// Store
lea addresses_A+0xfe78, %r10
and %r9, %r9
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
xor %r12, %r12

// Load
lea addresses_PSE+0x75ec, %r13
nop
nop
nop
add %r12, %r12
mov (%r13), %r10

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r13
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0xdaa0, %r9
nop
nop
nop
nop
xor $55026, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r9)
nop
xor $28616, %r9

// Store
lea addresses_US+0x1c4a8, %r10
sub $63725, %r15
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
xor %r15, %r15

// Store
lea addresses_PSE+0x68a8, %r9
dec %r12
movw $0x5152, (%r9)
nop
nop
nop
inc %r12

// Store
lea addresses_normal+0x1c8a8, %r8
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, (%r8)
nop
nop
nop
nop
nop
add $11629, %rax

// Store
mov $0x6b1a560000000500, %r9
nop
nop
xor $31612, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovaps %ymm0, (%r9)
nop
and $42977, %r12

// Load
lea addresses_A+0x11688, %r8
nop
nop
cmp $16215, %r13
mov (%r8), %r15w
nop
nop
and %r8, %r8

// Store
lea addresses_A+0x12968, %rax
nop
nop
nop
nop
sub $51809, %r15
movb $0x51, (%rax)
nop
nop
and $36359, %r8

// Load
lea addresses_WC+0x192a8, %r13
nop
sub %r8, %r8
movb (%r13), %r10b
nop
xor $52397, %r15

// Faulty Load
lea addresses_PSE+0x68a8, %r15
and $59844, %r10
movb (%r15), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'52': 27}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
