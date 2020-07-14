.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x151d6, %r15
nop
nop
nop
xor $62450, %rdx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
sub $47187, %rcx
lea addresses_UC_ht+0x1234, %rsi
lea addresses_WC_ht+0x1828f, %rdi
nop
nop
nop
xor $11397, %rbx
mov $80, %rcx
rep movsl
xor %r13, %r13
lea addresses_D_ht+0x1efc1, %r15
nop
nop
nop
nop
nop
and $45436, %rsi
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x1218f, %rsi
lea addresses_D_ht+0xbc0f, %rdi
and %rbx, %rbx
mov $66, %rcx
rep movsq
nop
nop
nop
nop
nop
and $34324, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0x18f, %rdi
nop
nop
nop
nop
nop
xor $30886, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
add $13151, %r14

// Store
lea addresses_RW+0x1398f, %rcx
nop
add %rbx, %rbx
movw $0x5152, (%rcx)
nop
add $23758, %rcx

// Store
lea addresses_A+0xa03f, %rcx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_A+0x198f, %rcx
nop
xor $31628, %rbp
movb (%rcx), %bl
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}}
{'52': 7}
52 52 52 52 52 52 52
*/
