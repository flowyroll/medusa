.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xc901, %rcx
nop
nop
nop
nop
nop
inc %rbp
movb $0x51, (%rcx)
nop
nop
nop
nop
sub $65460, %r12

// REPMOV
lea addresses_D+0xd505, %rsi
lea addresses_A+0x14da5, %rdi
cmp $44116, %rbp
mov $11, %rcx
rep movsb
nop
nop
nop
nop
and $37508, %rbp

// Load
mov $0x29e84c00000001a5, %r12
nop
dec %rbp
mov (%r12), %si
xor $42921, %r13

// Load
lea addresses_normal+0x1973d, %r12
nop
nop
nop
cmp $26856, %rbp
movb (%r12), %cl
add $51020, %r12

// Store
lea addresses_D+0x54e5, %r12
nop
nop
nop
nop
nop
sub $16491, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
nop
nop
nop
sub $30677, %rbp

// Store
lea addresses_A+0x1da5, %r15
nop
nop
cmp $61852, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
and %r13, %r13

// Load
lea addresses_PSE+0x14325, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0xa29d, %rbp
nop
nop
cmp $15741, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
sub $36849, %rdi

// Load
lea addresses_WC+0x1c1a5, %rbp
nop
nop
sub %rdi, %rdi
mov (%rbp), %r13d
nop
nop
nop
nop
nop
inc %r12

// Load
mov $0x19d61a0000000e85, %rcx
nop
nop
dec %r12
mov (%rcx), %ebp
nop
nop
cmp $36016, %rdi

// Faulty Load
lea addresses_WT+0x65a5, %rbp
clflush (%rbp)
nop
nop
nop
nop
dec %r12
mov (%rbp), %edx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'39': 1}
39
*/
