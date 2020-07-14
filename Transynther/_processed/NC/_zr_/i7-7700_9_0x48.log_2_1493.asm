.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rdi
push %rsi
lea addresses_normal_ht+0x646a, %r9
nop
nop
nop
nop
nop
xor %r10, %r10
movb (%r9), %r11b
nop
dec %rbp
lea addresses_UC_ht+0xdb5a, %rdi
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x981a, %rsi
lea addresses_normal+0x345a, %rdi
add %rbx, %rbx
mov $81, %rcx
rep movsl
nop
and $27471, %r14

// Store
lea addresses_A+0x1b745, %rcx
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
inc %r14

// Store
lea addresses_UC+0x14f9a, %r14
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
sub $35377, %r12

// Store
lea addresses_A+0x15d9a, %rbx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%rbx)
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x6da2, %rbx
sub $36186, %r9
movl $0x51525354, (%rbx)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_PSE+0xe19a, %r12
sub $18193, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movaps %xmm3, (%r12)
nop
nop
nop
inc %rdi

// Store
mov $0x1b2fe1000000019a, %r14
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r14)
nop
xor $63523, %r12

// Faulty Load
mov $0x502c16000000019a, %rcx
nop
nop
add $45668, %rsi
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'00': 2}
00 00
*/
