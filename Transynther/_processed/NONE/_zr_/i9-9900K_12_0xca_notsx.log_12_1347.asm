.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Load
mov $0x927, %r8
nop
and %rdi, %rdi
mov (%r8), %bx
nop
nop
nop
nop
cmp %r9, %r9

// Store
mov $0x267, %r15
nop
cmp $23340, %rbx
movb $0x51, (%r15)
nop
sub %rax, %rax

// Load
lea addresses_US+0xb4a7, %rax
and $24699, %r14
movb (%rax), %r9b
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_PSE+0x192c7, %r15
clflush (%r15)
nop
nop
xor $51702, %r8
movb $0x51, (%r15)
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_A+0xcca7, %rdi
sub %rax, %rax
mov (%rdi), %r9w
cmp $64104, %rax

// Faulty Load
lea addresses_A+0xcca7, %r15
nop
nop
nop
add $25048, %r14
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
