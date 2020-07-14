.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rcx
lea addresses_normal_ht+0x1acd8, %r11
nop
nop
nop
nop
add $606, %r9
mov (%r11), %r14
nop
nop
nop
nop
cmp $40783, %rcx
pop %rcx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x6e2c, %r14
and $11022, %r13
movl $0x51525354, (%r14)
nop
nop
cmp $33656, %r13

// Store
lea addresses_D+0x262c, %r12
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
inc %rax

// REPMOV
mov $0x92c, %rsi
mov $0x476, %rdi
dec %r13
mov $96, %rcx
rep movsl
nop
nop
add $36237, %r13

// Store
lea addresses_D+0x1422c, %r12
nop
nop
nop
nop
and $18016, %r10
movb $0x51, (%r12)
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_D+0x262c, %r10
nop
nop
sub %rsi, %rsi
movups (%r10), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'58': 3}
58 58 58
*/
