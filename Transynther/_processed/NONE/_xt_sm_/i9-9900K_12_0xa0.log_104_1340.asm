.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rcx
lea addresses_UC_ht+0x15eff, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add %r11, %r11
movb (%r12), %r13b
nop
nop
nop
nop
nop
sub $30829, %r14
lea addresses_WC_ht+0x14327, %r8
nop
nop
and $5786, %r13
mov (%r8), %ecx
nop
nop
nop
nop
nop
add %r12, %r12
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rdi
push %rdx

// Store
lea addresses_PSE+0x64ff, %rdx
nop
cmp $21012, %r8
movw $0x5152, (%rdx)
nop
nop
add %r10, %r10

// Store
lea addresses_WC+0x7aff, %rdx
xor $6380, %r13
movl $0x51525354, (%rdx)
add $29159, %r13

// Load
lea addresses_A+0x442f, %r14
nop
nop
nop
inc %rdi
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_RW+0x11eff, %rdi
nop
nop
nop
nop
add %r15, %r15
mov (%rdi), %r13
nop
dec %r14

// Store
lea addresses_WC+0xeb27, %r10
clflush (%r10)
nop
sub %rdx, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_PSE+0x64ff, %r8
nop
nop
nop
nop
add %r13, %r13
mov (%r8), %r14w
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'52': 104}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
