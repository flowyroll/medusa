.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x1c311, %r13
nop
nop
xor $63431, %r14
movb $0x51, (%r13)

// Exception!!!
nop
mov (0), %r14
nop
nop
add $32000, %r13

// Load
lea addresses_US+0x21cd, %rdx
nop
sub $13931, %rcx
mov (%rdx), %r14w
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_normal+0xeacd, %r14
nop
nop
nop
nop
nop
and %rbx, %rbx
movb $0x51, (%r14)
nop
nop
xor %rbx, %rbx

// Store
mov $0x2c83100000000ed1, %r10
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r10)
nop
nop
nop
nop
nop
add $32772, %rbx

// Load
mov $0x68f27800000000cd, %r10
nop
nop
dec %rdx
movb (%r10), %r14b
nop
nop
nop
nop
nop
add $297, %rdx

// Faulty Load
lea addresses_RW+0xa0cd, %r13
nop
nop
inc %r10
mov (%r13), %ecx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'32': 5}
32 32 32 32 32
*/
