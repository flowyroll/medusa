.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xc9f, %rsi
lea addresses_PSE+0x1cf9f, %rdi
nop
cmp $54145, %rax
mov $35, %rcx
rep movsb
nop
xor $43631, %r14

// Store
lea addresses_normal+0xce5f, %rcx
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%rcx)
cmp %r14, %r14

// Store
lea addresses_normal+0xf69f, %rax
nop
sub $38371, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x1ca9f, %rax
nop
nop
dec %rsi
movups (%rax), %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'33': 16}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
