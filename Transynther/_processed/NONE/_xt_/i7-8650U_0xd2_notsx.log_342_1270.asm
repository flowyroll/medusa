.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2226, %rsi
lea addresses_UC_ht+0x11e56, %rdi
nop
nop
nop
add %r12, %r12
mov $86, %rcx
rep movsq
nop
and $20192, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x16126, %rdi
clflush (%rdi)
nop
nop
inc %rsi
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_PSE+0x1f066, %rbx
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
inc %rax

// Store
lea addresses_UC+0x9a1f, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $30568, %rdx
movl $0x51525354, (%rsi)
nop
nop
nop
dec %rsi

// Store
mov $0x32, %r10
nop
nop
nop
nop
xor $56501, %rsi
movw $0x5152, (%r10)
nop
xor %rdi, %rdi

// Store
mov $0x5429010000000c66, %rbx
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rbx)
sub %r10, %r10

// Load
lea addresses_RW+0xaefe, %rsi
clflush (%rsi)
nop
nop
xor %rdx, %rdx
movb (%rsi), %r10b
nop
nop
nop
add $60907, %rdx

// Store
lea addresses_normal+0x1866, %rbx
nop
cmp $56351, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_normal+0x4e6, %r10
inc %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovaps %ymm4, (%r10)
nop
add $3341, %r12

// Store
lea addresses_normal+0x1e066, %rax
nop
nop
nop
nop
xor $41744, %r12
movl $0x51525354, (%rax)
nop
nop
add $41066, %rdx

// Faulty Load
lea addresses_PSE+0x3066, %r12
nop
nop
nop
nop
nop
inc %r10
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'33': 342}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
