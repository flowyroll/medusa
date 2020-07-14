.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_PSE+0x119dc, %r9
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, (%r9)
and %rbx, %rbx

// Store
lea addresses_A+0x15cbc, %rcx
nop
nop
nop
nop
xor $23263, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
sub $3918, %rax

// Store
lea addresses_D+0x191bc, %rbx
nop
inc %r14
movb $0x51, (%rbx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
xor $8854, %rcx

// Store
lea addresses_RW+0x64bc, %rax
nop
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovaps %ymm4, (%rax)
nop
nop
nop
nop
nop
dec %r14

// Load
lea addresses_WT+0x1d4bc, %rbx
nop
sub $20174, %rdi
mov (%rbx), %rax
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0x50bc, %rax
nop
nop
nop
nop
and %r14, %r14
movl $0x51525354, (%rax)
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_A+0x15cbc, %rdi
nop
dec %r15
vmovaps (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
