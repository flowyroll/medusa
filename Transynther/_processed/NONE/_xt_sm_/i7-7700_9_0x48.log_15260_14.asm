.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1432f, %rbx
nop
nop
nop
cmp $59523, %rbp
movb $0x61, (%rbx)
nop
add $58310, %rdi
lea addresses_UC_ht+0xa9b, %r14
nop
nop
nop
nop
nop
sub $23350, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
nop
sub $9882, %r14
lea addresses_D_ht+0xf11b, %rax
sub $7160, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rax)
dec %rbx
lea addresses_A_ht+0x1239b, %r14
nop
xor %rbx, %rbx
movb $0x61, (%r14)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x1319b, %rax
nop
nop
cmp %rdi, %rdi
mov (%rax), %r8d
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0xad5b, %rax
xor %rbp, %rbp
mov (%rax), %r8w
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x6ff1, %rsi
lea addresses_normal_ht+0x1619b, %rdi
nop
nop
nop
sub $23860, %rbp
mov $49, %rcx
rep movsw
nop
nop
nop
nop
add $32155, %rbx
lea addresses_UC_ht+0xad1b, %r8
add %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r8)
inc %rcx
lea addresses_A_ht+0xc0db, %rbp
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rbp)
nop
xor %rdi, %rdi
lea addresses_D_ht+0x419b, %rsi
lea addresses_normal_ht+0x1d99b, %rdi
nop
nop
nop
add %rax, %rax
mov $124, %rcx
rep movsb
nop
nop
cmp $37110, %rax
lea addresses_WC_ht+0x13c9b, %rdi
nop
nop
nop
add $45480, %r14
movb (%rdi), %cl
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0x19b, %r13
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r13)
nop
and %rbp, %rbp

// Store
lea addresses_D+0x1a47, %r13
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r13)
nop
cmp $4910, %rsi

// Store
lea addresses_UC+0x999b, %r10
nop
nop
sub $34251, %r12
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WC+0x133e3, %r12
and $15970, %r10
movw $0x5152, (%r12)
nop
sub $30198, %rsi

// Store
lea addresses_UC+0x9933, %rbx
nop
nop
nop
nop
and $43213, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_D+0x1a5a3, %rbx
xor %rsi, %rsi
movw $0x5152, (%rbx)
nop
nop
nop
nop
xor $41546, %r13

// Store
lea addresses_PSE+0x811b, %rbx
nop
sub %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rbx)

// Exception!!!
mov (0), %r12
nop
nop
nop
cmp $53211, %rbp

// Store
lea addresses_PSE+0x1bf49, %rsi
nop
nop
and $37246, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
cmp $12567, %r12

// Faulty Load
lea addresses_UC+0x999b, %r10
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%r10), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'52': 15260}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
