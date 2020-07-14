.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rdi
push %rsi
lea addresses_UC_ht+0x70f7, %rdi
nop
nop
nop
nop
nop
sub $62672, %r15
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x547, %r11
nop
nop
and $51412, %rsi
movl $0x61626364, (%r11)
nop
nop
nop
add $65479, %rdi
pop %rsi
pop %rdi
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rdx

// Load
lea addresses_WT+0xd7c7, %r10
nop
nop
nop
nop
sub $7702, %r11
mov (%r10), %r8
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_A+0x17477, %r8
nop
nop
nop
nop
add $30473, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
add $65492, %rbx

// Store
lea addresses_UC+0x1f689, %rbx
nop
nop
and $3160, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovaps %ymm7, (%rbx)
nop
sub %rdx, %rdx

// Load
lea addresses_normal+0x291b, %rdx
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rdx), %r12w
nop
nop
nop
add $27350, %r8

// Store
lea addresses_RW+0xbc77, %r10
dec %r9
movl $0x51525354, (%r10)
nop
nop
nop
nop
and %r10, %r10

// Faulty Load
mov $0x25c8240000000477, %rdx
add %r11, %r11
mov (%rdx), %r10d
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'51': 372, '00': 11}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
