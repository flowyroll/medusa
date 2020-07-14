.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x1c2d4, %rcx
clflush (%rcx)
cmp $30753, %rdx
movl $0x51525354, (%rcx)
nop
nop
xor $33377, %rdi

// Load
lea addresses_WT+0x44d4, %r12
sub %r9, %r9
movb (%r12), %r10b
nop
nop
nop
nop
cmp $9905, %r9

// Load
lea addresses_WC+0x1a594, %r14
nop
nop
nop
nop
xor $13728, %r12
movups (%r14), %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
add %r14, %r14

// Store
lea addresses_PSE+0x1f994, %r10
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%r10)
nop
nop
add %r12, %r12

// Store
lea addresses_PSE+0x579c, %r10
nop
nop
nop
dec %r12
movb $0x51, (%r10)
nop
nop
nop
nop
nop
cmp $48542, %r12

// Faulty Load
mov $0x5bd6670000000cd4, %r9
nop
nop
xor $55190, %r12
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 64}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
