.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbx
push %rcx
lea addresses_WT_ht+0x110d1, %r12
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%r12)
nop
nop
nop
nop
inc %rbx
pop %rcx
pop %rbx
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx

// Store
mov $0x131fdc00000005d1, %r9
add %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
nop
and $51108, %r15

// Store
mov $0x628ff80000000361, %r12
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_US+0x59d1, %r13
nop
nop
nop
nop
sub $57807, %r9
movw $0x5152, (%r13)
nop
nop
cmp $1024, %r14

// Faulty Load
lea addresses_PSE+0x12dd1, %r15
nop
nop
inc %r13
mov (%r15), %ebp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'33': 6}
33 33 33 33 33 33
*/
